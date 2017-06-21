class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :username
      t.string :name
      t.string :document

      t.timestamps
    end

    add_index :employees, [:document]
  end

  def self.down
    drop_table :employees
  end
end
