define [
    "corejs"
], (Core) ->
    Core.register "ref2", (sandbox) ->
        init: ->
            console.log "Hello, world!"
            @talk()
        talk: ->
            sandbox.notify
                type: "new-message"
                data:
                    name: "anonymous"
                    text: "who am i?"
        destroy: ->
            console.log "Farewell, world."
