class RemoveNameFromMemogakis < ActiveRecord::Migration[6.0]
  def change
    remove_column :memogakis, :name, :string
  end
end
