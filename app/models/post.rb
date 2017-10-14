class Post < ApplicationRecord
  resourcify
  include Authority::Abilities
  belongs_to :author, class_name: :user
end
