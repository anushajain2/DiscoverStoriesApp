class ProblemsController < ApplicationController
  def index
    @new_problem = Problem.new
    @all_problems = Problem.all
    @all_matters = Matter.all
  end
  
  def create 
      @new_problem = Problem.new(post_params)
      if @new_problem.save
        redirect_to(:action => 'index')
      else 
        render new
      end
  end
  
  private
  def post_params
    params.require(:problem).permit(:tag)
  end
end
