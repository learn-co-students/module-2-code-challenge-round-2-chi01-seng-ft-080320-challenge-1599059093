class Guest < ApplicationRecord
    has_many :episodes 
    has_many :episodes, through: :appearances 
    
end
