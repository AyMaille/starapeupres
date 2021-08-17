class Mission < ApplicationRecord
  belongs_to :user
  belongs_to :star

  validates :price, presence: true
end
