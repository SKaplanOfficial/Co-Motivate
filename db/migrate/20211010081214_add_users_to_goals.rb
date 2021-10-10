class AddUsersToGoals < ActiveRecord::Migration[6.1]
  def change
    drop_table :goals

    create_table :goals do |t|
      t.text :body
      t.integer :category_seed
      t.integer :topic_seed
      t.integer :type_seed
      t.references :user, null: false, foreign_key: true
      t.references :custom_goal_name, null: false, foreign_key: true

      t.timestamps
    end
  end
end
