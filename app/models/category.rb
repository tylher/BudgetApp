class Category < ApplicationRecord
    has_many :category_deals
    has_many :deals,class_name: 'Deal',foreign_key: 'deal_id', through: :category_deals
    validates :name, presence: true
    validates :icon, presence: true
    mount_uploader :icon, IconUploader
end
