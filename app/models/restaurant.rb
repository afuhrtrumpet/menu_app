class Restaurant < ActiveRecord::Base
	has_many :items
	default_scope -> { order('name ASC') }
	validates :name, presence: true
end
