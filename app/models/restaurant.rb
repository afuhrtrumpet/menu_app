class Restaurant < ActiveRecord::Base
	validates :name, presence: true
	validates :description, length: { maximum: 200 }
end
