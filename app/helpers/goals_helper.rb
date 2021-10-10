module GoalsHelper

    def master_goal_list
        {
            'Programming' => {
                'Web Development' => {
                    'Improve web UI/UX design skills' => {
                        'cat_seed' => 00000,
                        'topic_seed' => 00000,
                        'type_seed' => 1110,
                    },
                    'Develop websites more quickly' => {
                        'cat_seed' => 00000,
                        'topic_seed' => 00000,
                        'type_seed' => 0110,
                    },
                    'Learn a new frontend web development framework' => {
                        'cat_seed' => 00000,
                        'topic_seed' => 00010,
                        'type_seed' => 0110,
                    },
                    'Learn about web accessibility standards' => {
                        'cat_seed' => 00000,
                        'topic_seed' => 00020,
                        'type_seed' => 1110,
                    },
                },
                'Mobile App Development' => {
                    'Improve mobile app UI/UX design skills' => {
                        'cat_seed' => 00010,
                        'topic_seed' => 00000,
                        'type_seed' => 1110,
                    },
                    'Develop mobile apps more quickly' => {
                        'cat_seed' => 00010,
                        'topic_seed' => 00000,
                        'type_seed' => 0110,
                    },
                    'Learn a new mobile app development framework' => {
                        'cat_seed' => 00010,
                        'topic_seed' => 00010,
                        'type_seed' => 0110,
                    },
                    'Learn about mobile accessibility standards' => {
                        'cat_seed' => 00010,
                        'topic_seed' => 00020,
                        'type_seed' => 1110,
                    },
                },
            },
            'Gardening' => {

            },
        }
    end
    
    def category_list
        master_goal_list.keys
    end

    def topic_list(category)
        master_goal_list[category].keys()
    end

    def goal_list(category, topic)
        master_goal_list[category][topic].keys()
    end
end
