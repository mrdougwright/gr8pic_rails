class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :photos, :rating_total, :ratings_total
  end
end
