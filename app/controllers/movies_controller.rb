class MoviesController < ApplicationController
  require 'csv'

  def create_from_csv
    csv_file = params[:file]
    csv_text = csv_file.read
    csv = CSV.parse(csv_text, headers: true)
    csv.each do |row|
      Movie.create!(category: row['category'], title: row['title'], director: row['director'],
        cast: row['cast'], country: row['country'], date_added: row['date_added'],
        release_year: row['release_year'], rating: row['rating'], duration: row['duration'], 
        listed_in: row['listed_in'], description: row['description'])
    end
    head :ok
  end

  def index
    movies = Movie.ordered_by_release_year.all
    render json: movies
  end
end
