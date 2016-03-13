class PostsController < ApplicationController
  def index
    @new_post = Post.new
    @new_matter = Matter.new
    @all_posts = Post.order(created_at: :desc).all
    @all_matters = Matter.all
  end
  
  def create 
      @new_post = Post.new(post_params)
      if @new_post.save
        redirect_to(:action => 'index')
      else 
        render new
      end
      
      @new_matter = Matter.new(post_params)
      if @new_matter.save
        redirect_to(:action => 'index')
      else 
        render new
      end
  end
  
  private
  def post_params
    params.require(:post).permit(:story)
    params.require(:matter).permit(:content)
  end

 
end
