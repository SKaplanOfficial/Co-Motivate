class CreateChallenges < ActiveRecord::Migration[6.1]
  def change
    create_table :challenges do |t|
      t.text :body
      t.integer :category_seed
      t.integer :topic_seed
      t.integer :type_seed

      t.timestamps
    end
  end
end
