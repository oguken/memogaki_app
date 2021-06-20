class CreateMemogakis < ActiveRecord::Migration[6.0]
  def change
    create_table :memogakis do |t|
      t.string :year
      t.string :month
      t.string :day
      t.string :title
      t.string :name
      t.text :text
      t.text :text_two
      t.text :text_three
      t.text :text_four
      t.text :text_five
      t.text :text_six
      t.timestamps
    end
  end
end
