$ ->
    $overlay = $(".overlay")
    apiURL = "http://localhost:5000/api/v1"

    clearOverlay = ->
        setTimeout ->
            $overlay.hide().attr("class", "overlay")
        , 1000

    $(".mood").click ->
        moodLevel = $(this).data("mood-level")

        $overlay.show()

        $.ajax
            type: "POST"
            url: "#{apiURL}/moods"
            data: {level: moodLevel}
            success: (data) ->
                $overlay.addClass("success")
            error: (xhr, type) ->
                $overlay.addClass("error")
            complete: (xhr, status) ->
                clearOverlay()
