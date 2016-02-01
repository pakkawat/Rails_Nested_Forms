class AddPriorityToRoomCategories < ActiveRecord::Migration
  def change
    add_column :room_categories, :priority, :integer
  end
end
