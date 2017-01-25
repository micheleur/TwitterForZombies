class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :status
      t.integer :zombie_id

      t.timestamps null: false
    end
    add_index :tweets, :zombie_id
  end
end
