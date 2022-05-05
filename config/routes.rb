Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })
  
  get("/directors", { :controller => "directors", :action => "index" })
    get("/directors/youngest", { :controller => "directors", :action => "list_the_youngest" })
    get("/directors/eldest", { :controller => "directors", :action => "list_the_eldest" })
    get("/directors/:an_id", { :controller => "directors", :action => "directors_details" })

  get("/movies", { :controller => "movies", :action => "index" })
  get("/movies/:an_id", { :controller => "movies", :action => "movies_details" })
  
  get("/actors", { :controller => "actors", :action => "index" })
  get("/actors/:an_id", { :controller => "actors", :action => "actors_details" })
end
