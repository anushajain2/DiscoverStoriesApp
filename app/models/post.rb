class Post < ActiveRecord::Base
  has_many :stories
  has_many :matters, through: :stories
end
