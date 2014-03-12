class ReplaceDescriptionWithLocation < ActiveRecord::Migration
  def change
	remove_column :restaurants, :description
	add_column :restaurants, :location, :string
  end
end
