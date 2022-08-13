class Category < ApplicationRecord
  has_many :category_deals, dependent: :delete_all
  has_many :deals, class_name: 'Deal', foreign_key: 'deal_id', through: :category_deals
  validates :name, presence: true
  # validates :icon, presence: true
  # mount_uploader :icon, IconUploader
  has_one_attached :icon
  belongs_to :author, class_name: "User", foreign_key: "author_id"
end
