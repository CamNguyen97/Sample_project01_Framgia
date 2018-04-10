$(document).ready(function() {
  $(".btn-movies").click(function() {
    window.location.href = "/admin/movies/new";
  });
  $(".btn-users").click(function() {
    window.location.href = "#";
  });
  $(".btn-movie-update").click(function() {
    data = $(this).attr("data")
    //console.log(data);
    window.location.href = "/page_admin/movies/" + data + "/edit";
  });
});
