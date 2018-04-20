$(document).ready(function() {
  $(".btn-stdio").click(function() {
    window.location.href = "/admin/studio/new";
  });
  $(".btn-studio-update").click(function() {
    data = $(this).attr("data")
    window.location.href = "/page_admin/studios/" + data + "/edit";
  });
  $(".btn-seat").click(function() {
    window.location.href = "/admin/seats/new";
  });
  $(".btn-seat-update").click(function() {
    data = $(this).attr("data")
    window.location.href = "/page_admin/seats/"+ data + "/edit";
  });
  $(".btn-schedules").click(function() {
    window.location.href = "/admin/schedules/new";
  });
  $(".btn-schedules-update").click(function() {
    data = $(this).attr("data")
    window.location.href = "/page_admin/schedules/" +data + "/edit";
  });
  $(".btn-movies").click(function() {
    window.location.href = "/admin/movies/new";
  });
  $(".btn-movie-type").click(function() {
    window.location.href = "/page_admin/movietypes/new";
  });
  $(".btn-ticket").click(function() {
    window.location.href = "/admin/tickets/new";
  });
  $(".btn-users").click(function() {
    window.location.href = "#";
  });
  $(".btn-movie-update").click(function() {
    data = $(this).attr("data")
    //console.log(data);
    window.location.href = "/page_admin/movies/" + data + "/edit";
  });
  $(".btn-movie-type-update").click(function() {
    data = $(this).attr("data")
    //console.log(data);
    window.location.href = "/page_admin/movietypes/"+ data + "/edit";
  });
  //  $(".btn-movie-type-delete").click(function() {
  //   data = $(this).attr("data")
  //   //console.log(data);
  //   $.ajax({
  //       url: "<%=  %>",
  //       type: "delete",
  //       data: data ,
  //       success: function (response) {
  //         console.console.log(response);
  //         window.location.href = "/page_admin/movietypes";
  //       },
  //       error: function(jqXHR, textStatus, errorThrown) {
  //          console.log(textStatus, errorThrown);
  //       }
  //   });
  // });
  $(".btn-ticket-update").click(function() {
    data = $(this).attr("data")
    //console.log(data);
    window.location.href = "/page_admin/tickets/" + data + "/edit";
>>>>>>> 76b13a03bd5b297a09b8faf0a3618e141578a136
  });
});
