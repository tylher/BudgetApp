class Deal < ApplicationRecord
    belongs_to :author, foreign_key: "author_id"
    has_many :categories, through: :categorydeals
    validates :name, presence: true
    validates  :amount, presence: true, numericality: {greater_or_equal: 0}
    validates :category, presence: true
end
