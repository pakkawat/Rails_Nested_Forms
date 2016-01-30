json.array!(@chef_att_debs) do |chef_att_deb|
  json.extract! chef_att_deb, :id, :room_category_id
  json.url chef_att_deb_url(chef_att_deb, format: :json)
end
