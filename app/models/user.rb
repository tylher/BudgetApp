class User < ApplicationRecord
  has_many :deals
  has_many :categories, class_name: 'Category'
  # Includ"e tegory_ devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true
end
