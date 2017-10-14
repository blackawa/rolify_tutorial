class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :timeoutable, :omniauthable and :registerable
  devise :confirmable, :database_authenticatable, :lockable,
         :recoverable, :rememberable, :trackable, :validatable
end
