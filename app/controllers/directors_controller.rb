# /app/controllers/directors_controller.rb
class DirectorsController < ApplicationController

  def index
    render({ :template => "director_templates/list"})
  end

  def show

    the_id = params.fetch("the_id")
    matching_records = Director.where({:id=>the_id})
    @the_director = matching_records.at(0)

    render({ :template => "director_templates/details"})
  end

  def youngest
    matching_records = Director.where.not({ :dob => nil }).order({ :dob => :desc })
    @the_youngest_director = matching_records.at(0)
    render({ :template => "director_templates/youngest"})
  end

  def oldest
    matching_records = Director.where.not({ :dob => nil }).order({ :dob => :asc })
    @the_oldest_director = matching_records.at(0)
    render({ :template => "director_templates/oldest"})
  end

end
