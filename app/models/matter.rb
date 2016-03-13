class Matter < ActiveRecord::Base
  has_many :stories
  has_many :posts, through: :stories
end
