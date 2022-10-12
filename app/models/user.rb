class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  enum roles: { admin: 0, desginer: 1, taker: 2 }
end
