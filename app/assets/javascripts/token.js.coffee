class Sync.Token extends Sync.View

  afterUpdate: ->
    console.log("it's working")
    @$el.draggable({ containment: ".tabletop", grid: [ 10, 10 ] })
    thisToken = ".token" + @$el.data("id")

  $(thisToken).on "dragstop", (event, ui) ->
    x = $(this).position().left
    y = $(this).position().top
    tokenId = $(this).data("id")
    valuesToSubmit = "x_coordinate=" + x + "&y_coordinate=" + y
    $.post "tokens/" + tokenId + "/move", valuesToSubmit, ->


  $(thisToken).on "dblclick", ->
    tokenId = $(this).data("id")
    $.post "tokens/" + tokenId + "/flip", ->

    # `$(thisToken).on("dragstop", function(event, ui){
    #   var x = $(this).position().left;
    #   var y = $(this).position().top;
    #   var tokenId = $(this).data("id");
    #   var valuesToSubmit = "x_coordinate=" + x + "&y_coordinate="+ y
    #   $.post("tokens/"+tokenId+"/move", valuesToSubmit, function(){})
    # })`

    # `$(thisToken).on("dblclick", function(){
    #   var tokenId = $(this).data("id");
    #   $.post("tokens/"+tokenId+"/flip", function(){});
    # })`

