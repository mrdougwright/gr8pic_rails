class Photo < ActiveRecord::Base
  belongs_to :user
  # attr_accessible :title, :body

  has_many :ratings
end
