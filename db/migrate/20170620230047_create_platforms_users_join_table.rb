class CreatePlatformsUsersJoinTable < ActiveRecord::Migration[5.1]
  def self.up
    create_table :platforms_users, :id => false do |t|
      t.integer :platform_id
      t.integer :user_id
    end

    add_index :platforms_users, [:platform_id, :user_id]
  end

  def self.down
    drop_table :platforms_users
  end
end
