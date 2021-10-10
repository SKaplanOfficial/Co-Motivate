class CreatePolicies < ActiveRecord::Migration[6.1]
  def change
    create_table :policies do |t|

      t.timestamps
    end
  end
end
