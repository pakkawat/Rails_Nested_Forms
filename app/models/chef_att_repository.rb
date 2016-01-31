class ChefAttRepository < ActiveRecord::Base
  belongs_to :room_category
  validates :name, presence: true

  def to_s
    name
  end
end
