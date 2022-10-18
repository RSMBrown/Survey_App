class Question < ApplicationRecord
    belongs_to :survey
    has_many :options, dependent: :destroy 

    enum question_type: { multi_choice: 0, selected_choice: 1, open_ended: 2 }
end
