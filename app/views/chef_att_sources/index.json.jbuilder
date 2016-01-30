json.array!(@chef_att_sources) do |chef_att_source|
  json.extract! chef_att_source, :id, :room_category_id
  json.url chef_att_source_url(chef_att_source, format: :json)
end
