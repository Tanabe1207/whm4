class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :nickname
      t.string :mail
      t.string :my_image
      t.string :gender
      t.date :birthday
      # t.integer :age
      t.string :nationality
      t.string :hobby

      # t.string :favorites

      t.timestamps
    end
  end
end
