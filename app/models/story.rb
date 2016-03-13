class Story < ActiveRecord::Base
  belongs_to :post
  belongs_to :matter
end
