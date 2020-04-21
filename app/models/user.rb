class User < ApplicationRecord
    validates :username, presence: true, uniqueness: { case_sensitive: true }, length: {maximum: 20}
    validates :email, presence: true, uniqueness: { case_sensitive: true }, length: {maximum: 50}, confirmation: true
    validates :password, presence: true, length: {minimum: 10,maximum: 50}
    
end
