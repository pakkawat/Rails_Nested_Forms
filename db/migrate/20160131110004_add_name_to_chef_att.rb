class AddNameToChefAtt < ActiveRecord::Migration
  def change
    add_column :chef_att_repositories, :name, :text
    add_column :chef_att_debs, :name, :text
    add_column :chef_att_sources, :name, :text
  end
end
