class MoviesController < ApplicationController
  
  def index
    @list_of_movies = Movie.all
    render({ :template => "movies_templates/index.html.erb"})
  end
  
end
