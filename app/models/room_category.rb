class RoomCategory < ActiveRecord::Base
  belongs_to :hotel
  validates :name, presence: true
  has_many :chef_att_debs, dependent: :destroy
  accepts_nested_attributes_for :chef_att_debs, reject_if: proc { |attributes| attributes['name'].blank? }, allow_destroy: true
  has_many :chef_att_repositories, dependent: :destroy
  accepts_nested_attributes_for :chef_att_repositories, reject_if: proc { |attributes| attributes['name'].blank? }, allow_destroy: true
  has_many :chef_att_sources, dependent: :destroy
  accepts_nested_attributes_for :chef_att_sources, reject_if: proc { |attributes| attributes['name'].blank? }, allow_destroy: true

  def to_s
    name
  end
end
