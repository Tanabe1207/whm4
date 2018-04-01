class CreateFavorites < ActiveRecord::Migration[5.1]
  def change
    create_table :favorites do |t|
      t.integer :user_id, null: false
      t.integer :offer_id, null: false

      t.timestamps

      t.index :user_id
      t.index :offer_id
      t.index [:user_id. :offer_id], unique: true

    end
  end
end
