class CreateChefAttDebs < ActiveRecord::Migration
  def change
    create_table :chef_att_debs do |t|
      t.references :room_category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
