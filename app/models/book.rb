class Book < ApplicationRecord
  has_many :authors_books, dependent: :destroy
  has_many :authors, through: :authors_books

  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
end
