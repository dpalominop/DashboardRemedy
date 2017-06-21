class CreateConections < ActiveRecord::Migration[5.1]
  def self.up
    create_table :conections, :id => false do |t|
      t.integer :platform_id
      t.integer :employee_id
    end

    add_index :conections, [:platform_id, :employee_id]
  end

  def self.down
    drop_table :conections
  end
end
