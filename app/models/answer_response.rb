class AnswerResponse < ApplicationRecord
    belongs_to :response_survey
    belongs_to :answer
end
