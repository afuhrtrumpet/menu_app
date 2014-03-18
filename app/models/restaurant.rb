class Restaurant < ActiveRecord::Base
	has_many :items
	has_many :categories

	default_scope -> { order('name ASC') }
	validates :name, presence: true
end
