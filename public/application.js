$(document).ready(function() {
  $.ajax({
      url: "/posts",
    cache: false
  }).done(function( html ) {
      console.log($.parseJSON(html)[0]);
      $.each( $.parseJSON( html ), function(index, value) {
        var post = "<article><header><h1>" + value.title + "</h1><date pubdate='" + value.date + "'>" + value.date + "</date></header><hr><div id='post'><div>" + value.body + "</div></div></article>"
        $("#content").append(post);
      });
  });
});
