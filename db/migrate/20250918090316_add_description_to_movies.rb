class AddDescriptionToMovies < ActiveRecord::Migration[8.0]
  def change
    add_column :movies, :description, :string
  end
end
