class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :company_id

      t.timestamps
    end
    add_index :employees, :company_id
  end
end
