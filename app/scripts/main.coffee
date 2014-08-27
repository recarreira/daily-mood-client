$ ->
    apiURL = "http://localhost:5000/api/v1"

    $(".mood").click ->
        moodLevel = $(this).data("mood-level")

        $.post "#{apiURL}/moods", {level: moodLevel}, (response) ->
            console.log response
