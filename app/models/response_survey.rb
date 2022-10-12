class ResponseSurvey < ApplicationRecord
    belongs_to :question
    has_many :answer_responses, dependent: :destroy
    has_many :answers, through: :answer_responses, dependent: :destroy
end
