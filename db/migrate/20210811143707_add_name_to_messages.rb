class AddNameToMessages < ActiveRecord::Migration[6.1]
  def change
    add_column :messages, :user_name, :string
  end
end
