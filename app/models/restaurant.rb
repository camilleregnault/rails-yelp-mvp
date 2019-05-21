class Restaurant < ApplicationRecord
  CATEGORY = %w(chinese italian japanese french belgian)

  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORY }
  has_many :reviews, dependent: :destroy
end
