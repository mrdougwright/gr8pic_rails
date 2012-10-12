class AddRatingTotalToPhoto < ActiveRecord::Migration
  def change
  	add_column :photos, :rating_total, :integer
  end
end
