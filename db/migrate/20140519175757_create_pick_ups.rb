class CreatePickUps < ActiveRecord::Migration
  def change
    create_table :pick_ups do |t|
      t.integer :user_id
      t.float :weight

      t.timestamps
    end
  end
end
