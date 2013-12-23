$(document).ready(function(){

  var headerHeight = $(".chat-header").height();
  var windowHeight = $(window).height() > 640 ? $(window).height() : 640;
  var textHeight = windowHeight - (headerHeight + 250);
  $(".messages-box").height(textHeight);

  $(window).load(function(){

    $(".loading-box").fadeOut('slow');
    $(".main-area").fadeIn('slow');

    $(".alert-whatevs-im-tired").delay(2500).fadeOut('slow');


    $(".board").mousedown(function(){
      return false;
    });

    $(".token").draggable({ containment: ".tabletop", grid: [ 10, 10 ] });

    $(".token").on("dragstop", function(event, ui){
      var x = $(this).position().left;
      var y = $(this).position().top;
      var tokenId = $(this).data("id");
      var valuesToSubmit = "x_coordinate=" + x + "&y_coordinate="+ y;
      $.post("tokens/"+tokenId+"/move", valuesToSubmit, function(){});
    });


    $(function(){
      //get size of image
      var boardHeight = $('.board img').height();
      var boardWidth = $('.board img').width();
      var centerWidth = (boardWidth / 2);
      var centerHeight = (boardHeight / 2);
      var mainWidth = boardWidth + 250;
      //set size of board div
      $(".board").height(boardHeight);
      $(".board").width(boardWidth);
      $(".board").css({"top": centerHeight * -1});
      $(".board").css({"left": centerWidth * -1});
      $(".main-area").css({"min-width": mainWidth});

    });

    $(window).resize(function(){
      var headerHeight = $(".chat-header").height();
      var windowHeight = $(window).height() > 640 ? $(window).height() : 640;
      var textHeight = windowHeight - (headerHeight + 220);
      $(".messages-box").height(textHeight);
    });


    $(".dice-roll").click(function(){
      var name = $("#message_name").val();

      $.post($(".dice-roll").attr("href"), "name="+name, function(){
        $(".messages-box").scrollTop($(".messages-box")[0].scrollHeight);
      });
    return false;
    });

    $(".message-input form").submit(function(){
      var formData = $(".new_message").serialize();

      $.post($(".new_message").attr("action"), formData, function(){
        $("#message_content").val("");
        $(".messages-box").scrollTop($(".messages-box")[0].scrollHeight);
      });
    return false;
    });

    $(".messages-box").scrollTop($(".messages-box")[0].scrollHeight);

    $('#message_content').keypress(function(e){
      if(e.keyCode == 13) {
       e.preventDefault();
       $("form").submit();
      }
    });

    $(".token").on("dblclick", function(){
      if($(this).data("flip") === true) {
        console.log($(this).data("flip"));
        var tokenId = $(this).data("id");
        $.post("tokens/"+tokenId+"/flip", function(){});
      }
    });

  });
});
