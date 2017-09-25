# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
    $('#tag').autocomplete
        source: $('#tag').data('autocomplete-source')
    $( "#s-h-comments" ).click ->
        $("#comments").toggle()
    
    #AJAX comments
    $("#mojButton").on "click", ->
        $.ajax $(this).attr('href'),
            type: 'GET'
            dataType: 'html'
            error: (jqXHR, textStatus, errorThrown) ->
                console.log "AJAX Error: #{textStatus}"
            success: (data, textStatus, jqXHR) ->
                $("#s-h-comments").after(data)
        