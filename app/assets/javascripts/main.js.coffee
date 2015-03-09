$(document).ready ->
  $('.date-picker-month').datepicker({
    format: "mm-yyyy",
    viewMode: "months",
    minViewMode: "months"
  })

  $('.date-picker').datepicker({
    format: "yyyy-mm-dd",
    viewMode: "months"
  })

  return