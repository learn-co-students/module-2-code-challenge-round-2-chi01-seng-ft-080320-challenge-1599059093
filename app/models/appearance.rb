class Appearance < ApplicationRecord
    belongs_to :episode
    belongs_to :guest

    validates :rating, numericality: {is_equal_to_or_greater_than: 1, is_equal_to_or_less_than: 5}
    validates :guest, uniqueness: {scope: :episode, message: "can only appear once per episode"}
end