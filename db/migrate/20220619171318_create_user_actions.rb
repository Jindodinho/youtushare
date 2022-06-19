class CreateUserActions < ActiveRecord::Migration[6.0]
  def change
    create_table :user_actions do |t|
      t.references :user
      t.integer :action, null: false, default: 0
      t.references :movie
      t.timestamps
    end
    add_index :user_actions, [:user_id, :movie_id, :action], unique: true
  end
end
