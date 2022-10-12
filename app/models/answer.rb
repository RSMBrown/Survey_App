class Answer < ApplicationRecord
    has_many :answer_responses, dependent: :destroy
    has_many :response_surveys, through: :answer_responses, dependent: :destroy
end
