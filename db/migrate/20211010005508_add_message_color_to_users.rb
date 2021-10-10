class AddMessageColorToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :message_color, :string
  end
end
