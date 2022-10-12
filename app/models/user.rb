class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  enum roles: { admin: 0, designer: 1, taker: 2 }
end
