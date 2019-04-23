#!/bin/bash
# Copyright (c) 2014-2018 Software Architecture Group (Hasso Plattner Institute)
# Copyright (c) 2015 Fabio Niephaus, Google Inc.
# Copyright (c) 2018 Patrick Rein

set -e

function print_info {
    printf "\e[0;34m$1\e[0m\n"
}

if [[ "${TRAVIS}" ]]; then
    # Check required arguments
    # ==============================================================================
    if [[ "${TRAVIS_TAG}" != "v"* ]]; then
        print_info "Nothing to do, because this is not a version tag."
        exit 0
    elif [[ "${TRAVIS_OS_NAME}" != "linux" ]]; then
        print_info "Nothing to do, because this is not a Linux build."
        exit 0
    elif [[ -z "${TRAVIS_BUILD_DIR}" ]]; then
        print_info "\$TRAVIS_BUILD_DIR is not defined!"
        exit 1
    elif [[ -z "${SMALLTALK_CI_HOME}" ]]; then
        print_info "\$SMALLTALK_CI_HOME is not defined!"
        exit 1
    elif [[ -z "${TRAVIS_SMALLTALK_VERSION}" ]]; then
        print_info "\$TRAVIS_SMALLTALK_VERSION is not defined!"
        exit 1
    fi
    # ==============================================================================
    
    # Set paths and files
    # ==============================================================================
    DEPLOY_PATH="${SMALLTALK_CI_HOME}/deploy"
    BUILD_DIR=$TRAVIS_BUILD_DIR
    SMALLTALK_VERSION=$TRAVIS_SMALLTALK_VERSION
    VM=$SMALLTALK_CI_VM
else
    DEPLOY_PATH="build/deploy"
    BUILD_DIR="."
    SMALLTALK_VERSION=$1
    VM=$2
fi
# ==============================================================================

# Set paths and files
# ==============================================================================
DEPLOY_IMAGE="Home-${SMALLTALK_VERSION}.image"
DEPLOY_CHANGES="Home-${SMALLTALK_VERSION}.changes"
COG_VM_PARAM=""
if [[ "$(uname -s)" == "Linux" ]]; then
    COG_VM_PARAM="-nosound -nodisplay"
fi
# ==============================================================================

mkdir "${DEPLOY_PATH}" && cd "${DEPLOY_PATH}"

if [[ "${SMALLTALK_VERSION}" == "Squeak-5.1" ]]; then
    print_info "Downloading Squeak-5.1 image..."
    wget http://files.squeak.org/5.1/Squeak5.1-16548-32bit/Squeak5.1-16548-32bit.zip
    unzip Squeak5.1-16548-32bit.zip
    wget http://files.squeak.org/sources_files/SqueakV50.sources.gz
    gunzip SqueakV50.sources.gz
else
    print_info "Downloading Squeak-trunk image..."
    wget http://files.squeak.org/6.0alpha/Squeak6.0alpha-17873-32bit/Squeak6.0alpha-17873-32bit.zip
    unzip Squeak6.0alpha-17873-32bit.zip
    wget http://files.squeak.org/sources_files/SqueakV50.sources.gz
    gunzip SqueakV50.sources.gz
fi

mv *.image "${DEPLOY_IMAGE}"
mv *.changes "${DEPLOY_CHANGES}"
cp "${BUILD_DIR}/scripts/ProvideAnswerNotification.1.cs" ProvideAnswerNotification.1.cs

print_info "Preparing ${SMALLTALK_VERSION} image..."
EXIT_STATUS=0
"${VM}" $COG_VM_PARAM "${DEPLOY_IMAGE}" "${BUILD_DIR}/scripts/prepare_image.st" || EXIT_STATUS=$?

if [[ $EXIT_STATUS -eq 0 ]]; then
    zip "Home-${SMALLTALK_VERSION}.zip" *.image *.changes *.sources
    cp Home-*.zip "${BUILD_DIR}/"
else
    print_info "Preparation of image file failed."
fi

exit $EXIT_STATUS
