class User < ApplicationRecord
    has_secure_password
    has_one_attached :avatar
    
    has_many :users_meals
    has_many :meals, through: :users_meals

    validates :name, presence: true
    validates :password, presence: true
    validates :password_confirmation, presence: true
    # # validates :password, uniqueness: true

    # def self.allergens
    #     [GF, V, VEG, NUT, FRUIT]
    # end

    ALLERGEN = ['Vegetarian', 'Vegan', 'Gluten Free', 'Nut Allergies', 'Fruit Allergies'].freeze
end