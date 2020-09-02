class Appearance < ApplicationRecord
    belongs_to :episode
    belongs_to :guest


    validates :rating, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
    validates :guest, uniqueness: { scope: :episode, message: "already appears in this episode" }


end #end of class



