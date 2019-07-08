class User < ApplicationRecord
    has_many :scores
    has_many :rounds 
    
end
