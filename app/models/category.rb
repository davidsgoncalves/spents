class Category < ApplicationRecord
  has_many :spent

  validates :name, presence: true
end