class DirectorsController < ApplicationController
  
  def index
    @list_of_directors = Director.all
    render({ :template => "directors_templates/index.html.erb"})
  end


  def list_the_youngest
    @youngest = Director.order({ :dob => :desc}).at(0)
    render({ :template => "directors_templates/youngest.html.erb"})
  end

  def list_the_eldest
    @oldest = Director.order({ :dob => :asc}).where.not({ :dob =>nil }).at(0)
    render({ :template => "directors_templates/eldest.html.erb"})
  end

  def directors_details
# params look like {"an_id" => "42"}
    the_id = params.fetch("an_id")
    @the_director = Director.where({:id => the_id }).at(0)
    @filmography = Movie.where({:director_id => @the_director.id})

    render({ :template => "directors_templates/show_details.html.erb"})
  end

end
