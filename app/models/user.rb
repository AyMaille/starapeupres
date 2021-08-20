class User < ApplicationRecord
  has_many :missions, dependent: :destroy
  has_many :stars, through: :missions, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #validates :email, format: { with: /\A[^@\s]+@[^@\s]+\z/ }
  #validates :first_name, :last_name, :address, :email, presence: true
  #validates :email, uniqueness: true
end
