class Restaurant < ApplicationRecord
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, uniqueness: true, presence: true
  validates :address, :category, presence: true
  validates :rating, inclusion: { in: (0..5)}, numericality: { only_integer: true }
  validates :phone_number, numericality: { only_integer: true }
  validates :category, :inclusion => { :in => CATEGORIES }
  has_many :reviews, dependent: :destroy
end
