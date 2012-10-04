class Rating < ActiveRecord::Base
  attr_accessible :value

  belongs_to :photo
  # attr_accessible :title, :body
end
