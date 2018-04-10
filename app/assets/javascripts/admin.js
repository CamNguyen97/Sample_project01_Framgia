$(document).ready(function(){
  $(".btn-schedules").click(function() {
    window.location.href = "/admin/schedules/new";
  });
  $(".btn-schedules-update").click(function() {
    data = $(this).attr("data")
    window.location.href = "/page_admin/schedules/" +data + "/edit";
  });
});
