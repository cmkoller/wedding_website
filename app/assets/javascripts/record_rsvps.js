var setUpRecord;
var setUpUnrecord;

setUpUnrecord = function() {
  $(".unrecord-button").click(function(e) {
    e.preventDefault();

    var record_url = $(this).attr("href");
    var tr = $(this).parent().parent();
    var button = $(this);

    $.ajax({
      method: "GET",
      url: record_url
    }).success(function() {
      tr.addClass("unrecorded");
      tr.removeClass("recorded");
      button.addClass("record-button");
      button.removeClass("unrecord-button");
      button.text("Record");
    });
  });
}

setUpRecord = function() {
  $(".record-button").click(function(e) {
    e.preventDefault();

    var record_url = $(this).attr("href");
    var tr = $(this).parent().parent();
    var button = $(this);

    $.ajax({
      method: "GET",
      url: record_url
    }).success(function() {
      tr.addClass("recorded");
      tr.removeClass("unrecorded");
      button.addClass("unrecord-button");
      button.removeClass("record-button");
      button.text("Unrecord");
    });
  });
}

$(document).ready(function() {
  setUpRecord();
  setUpUnrecord();
});
