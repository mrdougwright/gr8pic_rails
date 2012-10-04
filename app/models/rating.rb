class Rating < ActiveRecord::Base
  belongs_to :photo
  # attr_accessible :title, :body
end
