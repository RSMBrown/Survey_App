class Answer < ApplicationRecord
    has_many :answer_options, dependent: :destroy 
    has_many :options, through: :answer_options, dependent: :destroy 
end
