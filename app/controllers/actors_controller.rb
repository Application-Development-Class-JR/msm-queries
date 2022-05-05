class ActorsController < ApplicationController
  
  def index
    @list_of_actors = Actor.all
    render({ :template => "actors_templates/index.html.erb"})
  end
    
end
