class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.integer :user_id
      t.integer :memogaki_id
      t.text :text
      t.timestamps
    end
  end
end
