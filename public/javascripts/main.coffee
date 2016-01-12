require.config
    urlArgs: "nocache=" + (new Date).getTime()
    paths:
        "jquery": "../vendor/jquery/dist/jquery.min"
        "corejs": "../vendor/core_js/dist/core.min"
        "firebase": "../vendor/firebase"
    shim:
        "firebase":
            exports: "Firebase"

require [
    "jquery",
    "corejs",
    "firebase"
], (jQuery, Core, Firebase) ->
    Core.extend("$", jQuery)
    Core.extend("fb", Firebase)
    Core.register "main", (sandbox) ->
        init: ->
            console.log "Starting main..."
            self = @
            sandbox.use("$")(document).ready ->
                console.log "Document ready..."
                # Put cores here
        destroy: ->
            console.log "Stopping main..."

    Core.start("main")
