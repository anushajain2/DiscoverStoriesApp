class MattersController < ApplicationController
  def index
    @new_matter = Matter.new
    @all_matters = Matter.order(created_at: :desc).all
  end
  
  def create 
      @new_matter = Matter.new(post_params)
      if @new_matter.save
        redirect_to(:action => 'index')
      else 
        render new
      end
  end
  
  private
  def post_params
    params.require(:matter).permit(:content)
  end
end
