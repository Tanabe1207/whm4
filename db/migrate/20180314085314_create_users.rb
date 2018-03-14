class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :nickname
      t.string :mail
      t.string :password
      # t.string :my_image
      # t.string :gender
      # t.string :age
      # t.string :nationality
      # t.string :languages
      # t.string :offers
      # t.string :favorites

      t.timestamps
    end
  end
end
