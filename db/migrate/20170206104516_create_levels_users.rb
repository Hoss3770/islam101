class CreateLevelsUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :levels_users, id: false do |t|
    	t.belongs_to :level
    	t.belongs_to :user
    end
  end
end
