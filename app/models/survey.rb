class Survey < ApplicationRecord
    before_save :cap_create
    has_many :questions, dependent: :destroy 
    has_many :response_surveys, dependent: :destroy 

    private 
    def cap_create
        self.title = title.capitalize
    end 
end
