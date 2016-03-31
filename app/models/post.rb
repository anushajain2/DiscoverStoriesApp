class Post < ActiveRecord::Base
  has_many :matters
  acts_as_votable
end
