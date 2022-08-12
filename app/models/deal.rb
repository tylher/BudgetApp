class Deal < ApplicationRecord
  has_many :category_deals, dependent: :destroy
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :categories, class_name: 'Category', foreign_key: 'category_id', through: :category_deals
  validates :name, presence: true
  validates :amount, presence: true, numericality: { greater_or_equal: 0 }
  # validates :category, presence: true
end
