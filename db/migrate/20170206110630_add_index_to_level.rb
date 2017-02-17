class AddIndexToLevel < ActiveRecord::Migration[5.0]
  def change
    add_column :levels, :index, :integer
  end
end
