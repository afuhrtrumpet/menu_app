class Item < ActiveRecord::Base
	has_many :reviews

	belongs_to :restaurant
	default_scope -> { order('name ASC') }
	validates :name, presence: true
	validates :restaurant_id, presence: true
end
