class User < ApplicationRecord
    validates :username, presence: true, uniqueness: { case_sensitive: true }, length: {maximum: 20}
    validates :email, presence: true, uniqueness: { case_sensitive: true }, length: {maximum: 20}, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :password, presence: true, length: {minimum: 10,maximum: 50}
    
    
    
    
    
end
