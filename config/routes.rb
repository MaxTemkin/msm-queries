Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "index"})

  get("/movies", { :controller => "misc", :action => "movie_logic"})

  get("/actors", { :controller => "misc", :action => "actor_logic"})
end
