class AddPrefSeedToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :pref_seed, :int
  end
end
