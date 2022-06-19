class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.string :youtube_id
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
    add_index :movies, :youtube_id, unique: true
  end
end
