class Star < ApplicationRecord
  belongs_to :user
  has_many :missions, dependent: :destroy
  has_one_attached :photo

  validates :first_name, :last_name, :address, :email_address, presence: true
  validates :performer_name, :email_address, uniqueness: true
  validates :email_address, format: { with: /\A[^@\s]+@[^@\s]+\z/ }
end
