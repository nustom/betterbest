$(document).ready ->
  $('.date-picker').datepicker({
    format: "mm-yyyy",
    viewMode: "months",
    minViewMode: "months"
  })
  return