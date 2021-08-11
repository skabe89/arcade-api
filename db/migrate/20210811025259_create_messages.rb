class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.string :user_id
      t.string :integer
      t.string :content
      t.string :string

      t.timestamps
    end
  end
end
