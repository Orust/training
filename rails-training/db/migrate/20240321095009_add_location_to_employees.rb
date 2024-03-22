class AddLocationToEmployees < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :location, :string
  end
end
