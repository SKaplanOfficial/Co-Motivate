class DropChallenges < ActiveRecord::Migration[6.1]
  def change
    drop_table :challenges

    create_table :challenges do |t|
      t.text :body
      t.integer :category_seed
      t.integer :topic_seed
      t.integer :type_seed
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
