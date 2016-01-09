require.config
    urlArgs: "nocache=" + (new Date).getTime()
    paths:
        "jquery": "../vendor/jquery/dist/jquery.min"

require [
    "jquery"
], ($) ->
    $(document).ready ->
        console.log "Document ready..."
