class Dish < ApplicationRecord
    belongs_to :meal
    belongs_to :cuisine
end
