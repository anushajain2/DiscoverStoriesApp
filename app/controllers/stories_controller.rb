class StoriesController < ApplicationController
  def index
    @stories = Story.all
    @all_matters = Matter.all
  end

end
