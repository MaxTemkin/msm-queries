# /app/controllers/directors_controller.rb
class DirectorsController < ApplicationController

  def index
    render({ :template => "director_templates/list"})
  end

end
