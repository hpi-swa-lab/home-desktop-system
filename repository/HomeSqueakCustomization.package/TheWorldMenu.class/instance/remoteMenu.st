construction
remoteMenu
        "Build the Telemorphic menu for the world."

        ^self fillIn: (self menu: 'Telemorphic' translatedNoop) from: {
                { 'local host address' translatedNoop. { #myWorld . #reportLocalAddress } }.
                { 'connect remote user' translatedNoop. { #myWorld . #connectRemoteUser } }.
                { 'disconnect remote user' translatedNoop. { #myWorld . #disconnectRemoteUser } }.
                { 'disconnect all remote users' translatedNoop. { #myWorld . #disconnectAllRemoteUsers } }.
        }