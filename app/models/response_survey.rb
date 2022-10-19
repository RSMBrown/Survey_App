class ResponseSurvey < ApplicationRecord
    belongs_to :survey
    
    has_many :answers
end
