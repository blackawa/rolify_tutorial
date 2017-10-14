class User < ApplicationRecord
  include Authority::UserAbilities
  rolify
  # Include default devise modules. Others available are:
  # :timeoutable, :omniauthable and :registerable
  devise :confirmable, :database_authenticatable, :lockable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts, foreign_key: :author_id
end
