class Spent < ApplicationRecord
  belongs_to :category
  belongs_to :wallet

  validates :name, presence: true
end