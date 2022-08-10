class Category < ApplicationRecord
    has_many :deals, through: :categorydeals
    validates :name, presence: true
    validates :icon, presence: true
end
