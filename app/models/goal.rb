class Goal < ApplicationRecord
    has_many :custom_goal_names
    accepts_nested_attributes_for :custom_goal_names
end
