class Option < ApplicationRecord
    has_many :answer_options, dependent: :destroy 
    has_many :answers, through: :answer_options, dependent: :destroy 
end
