class RenameRatingToScoreinMovies < ActiveRecord::Migration[8.0]
  def change
  rename_column :movies, :rating, :score
  end
end
