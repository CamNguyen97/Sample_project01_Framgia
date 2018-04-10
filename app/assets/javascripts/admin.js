$(document).ready(function() {
  $(".btn-stdio").click(function() {
    window.location.href = "/admin/studio/new";
  });
  $(".btn-studio-update").click(function() {
    data = $(this).attr("data")
    window.location.href = "/page_admin/studios/" + data + "/edit";
  });
});
