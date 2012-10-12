class Rating < ActiveRecord::Base
  attr_accessible :value

  belongs_to :photo
  belongs_to :user
  # attr_accessible :title, :body

  def self.winner
  	ratingsArray = [[1,1]]
  	photoArray = []

  	#loop through every rating and put count of photo and sum ratings
  	#in their own size 2 array, at the index value matching the photo_id
  	for rate in Rating.all
  		if ratingsArray[rate.photo_id].nil? 
  			ratingsArray[rate.photo_id] = [0,0]
  		end
  		ratingsArray[rate.photo_id][1] += rate.value 	#total
  		ratingsArray[rate.photo_id][0] += 1						#count
		end

		for photo in ratingsArray
				#puts the average into photoArray (total / count) 
				photoArray << photo[1] / photo[0].to_f
		end
		Photo.find(photoArray.index(photoArray.max))
	end

	
end
