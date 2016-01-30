json.array!(@chef_att_repositories) do |chef_att_repository|
  json.extract! chef_att_repository, :id, :room_category_id
  json.url chef_att_repository_url(chef_att_repository, format: :json)
end
