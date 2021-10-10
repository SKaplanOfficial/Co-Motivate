class CreateMatchmakers < ActiveRecord::Migration[6.1]
  def change
    create_table :matchmakers do |t|

      t.timestamps
    end
  end
end
