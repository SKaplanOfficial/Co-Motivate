class AddTypePrefsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :pref_short_challenges, :boolean
    add_column :users, :pref_long_challenges, :boolean
    add_column :users, :pref_topic_challenges, :boolean
    add_column :users, :pref_category_challenges, :boolean
  end
end
