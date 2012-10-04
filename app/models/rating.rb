class Rating < ActiveRecord::Base
  belongs_to :photo
  attr_accessible :value
  # attr_accessible :title, :body
end
