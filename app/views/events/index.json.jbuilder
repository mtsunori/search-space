json.array!(@events) do |event|
  json.extract! event, :id, :title
  json.start event.start_at
  json.end event.end_at
  # json.shop_id event.shop_id



  json.url shop_event_url(event.id, event.shop_id, format: :html) 
end