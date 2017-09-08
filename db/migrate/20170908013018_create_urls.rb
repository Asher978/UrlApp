class CreateUrls < ActiveRecord::Migration[5.1]
  def change
    create_table :urls do |t|
      t.string :url 
      t.text :description
      t.integer :category_id

      t.timestamps
    end
    add_index :urls, :category_id
  end
end
