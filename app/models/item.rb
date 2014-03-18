class Item < ActiveRecord::Base
	has_many :reviews
	belongs_to :restaurant
	belongs_to :category

	default_scope -> { order('name ASC') }
	validates :name, presence: true
	validates :restaurant_id, presence: true
	validates :category_id, presence: true
end
