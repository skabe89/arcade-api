class CreateScores < ActiveRecord::Migration[6.1]
  def change
    create_table :scores do |t|
      t.integer :score
      t.integer :user_id
      t.string :user_name
      t.integer :game_id

      t.timestamps
    end
  end
end
