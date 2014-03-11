class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :content

      t.timestamps
    end
    add_index :items, [:created_at]
  end
end
