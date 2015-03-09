$(document).ready ->
  $('#goals-table').dataTable
    'responsive': true
    'processing': true
    'serverSide': true
    'ajax': $('#goals-table').data('source')
    'columns': [
      { 'data': 'name'}
      { 'data': 'unit_of_measurement' }
      { 'data': 'count'}
    ]
  return