class AddUserIdToMemogakis < ActiveRecord::Migration[6.0]
  def change
    add_column :memogakis, :user_id, :integer
  end
end
