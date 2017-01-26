class RemoveUserNameFromUsers < ActiveRecord::Migration[5.0]
  def self.up
  	remove_column :users, :user_name
  end
  def self.down
  	add_column :users, :user_name
  end
end
