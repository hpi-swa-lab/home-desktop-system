construction
remoteMenu
        "Build the Telemorphic menu for the world."

        ^self fillIn: (self menu: 'Telemorphic') from: {
                { 'local host address' . { #myWorld . #reportLocalAddress } }.
                { 'connect remote user' . { #myWorld . #connectRemoteUser } }.
                { 'disconnect remote user' . { #myWorld . #disconnectRemoteUser } }.
                { 'disconnect all remote users' . { #myWorld . #disconnectAllRemoteUsers } }.
        }