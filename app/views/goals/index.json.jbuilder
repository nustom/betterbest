json.draw params[:draw].to_i
json.recordsTotal @goals.total_count
json.recordsFiltered @goals.total_count
json.data @goals do |goal|
  json.extract! goal, :name, :unit_of_measurement, :count
end
