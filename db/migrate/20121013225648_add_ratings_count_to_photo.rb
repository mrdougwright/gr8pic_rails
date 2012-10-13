class AddRatingsCountToPhoto < ActiveRecord::Migration
  def change
  	add_column :photos, :ratings_count, :integer
  end
end
