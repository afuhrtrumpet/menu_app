class Item < ActiveRecord::Base
	belongs_to :restaurant
	default_scope -> { order('name ASC') }
	validates :name, presence: true
end
