class MiscController < ApplicationController
 
  def homepage
    render({ :template => "misc_templates/home"})
  end

  def movie_logic
  end

  def actor_logic
  end

end
