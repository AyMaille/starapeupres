class User < ApplicationRecord
  has_many :missions
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email_address, format: { with: /\A[^@\s]+@[^@\s]+\z/ }
  validates :first_name, :last_name, :address, :email_address, presence: true
  validates :email_address, uniqueness: true
end
