class AddUnvotesCountToMovies < ActiveRecord::Migration[6.0]
  def self.up
    add_column :movies, :unvotes_count, :integer, null: false, default: 0
  end

  def self.down
    remove_column :movies, :unvotes_count
  end
end
