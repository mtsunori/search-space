json.array!(@events) do |event|
  json.extract! event, :id, :title
  json.start event.start
  json.end event.end
  json.color event.color
  json.allday event.allday
  json.shop_id event.shop_id



  json.url event_url(event, format: :html) 
end