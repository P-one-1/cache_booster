class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :full_name
      t.string :email
      t.string :gender
      t.integer :salary

      t.timestamps
    end
    add_index :employees, :email
  end
end
