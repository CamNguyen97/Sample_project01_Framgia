$(document).ready(function() {
  $(".btn-ticket").click(function() {
    window.location.href = "/admin/tickets/new";
  });
  $(".btn-users").click(function() {
    window.location.href = "#";
  });
  $(".btn-ticket-update").click(function() {
    data = $(this).attr("data")
    //console.log(data);
    window.location.href = "/page_admin/tickets/" + data + "/edit";
  });
});
