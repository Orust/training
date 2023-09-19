class AddCategoryIdToItems < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :category_id, :integer
    add_index :items, :category_id
  end
end
