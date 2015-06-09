class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :moment
      t.text :data
      t.integer :user_id
      t.timestamps
    end
  end
end
