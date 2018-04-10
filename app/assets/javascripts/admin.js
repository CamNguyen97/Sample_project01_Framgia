$(document).ready(function(){
  $(".btn-seat").click(function() {
    window.location.href = "/admin/seats/new";
  });
  $(".btn-seat-update").click(function() {
    data = $(this).attr("data")
    window.location.href = "/page_admin/seats/"+ data + "/edit";
  });
});
