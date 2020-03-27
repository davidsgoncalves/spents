class Wallet < ApplicationRecord
  has_many :spents

  validates :name, presence: true
end
