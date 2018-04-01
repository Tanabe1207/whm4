class AddFavoriteCountToOffer < ActiveRecord::Migration[5.1]
  class MigrationUser < ApplicationRecord
  self.table_name = :offers
end

def up
  _up
rescue => e
  _down
  raise e
end

def down
  _down
end

private

def _up
  MigrationUser.reset_column_information

  add_column :offers, :favorite_count, :integer, null: false, default: 0 unless column_exists? :offers, :favorite_count
end

def _down
  MigrationUser.reset_column_information

  remove_column :offers, :favorite_count if column_exists? :offers, :favorite_count
end
  def change
    add_column :offers, :favorite_count, :integer
  end
end
