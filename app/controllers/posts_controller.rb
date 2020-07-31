class PostsController < ApplicationController
 def index 
   @posts = Post.all
 end

 def new
 end 

<<<<<<< Updated upstream
 def create
   Post.create(content: params[:content])
=======
  def checked


    post = Post.find(params[:id])
    if post.checked then
      post.update(checked: false)  
    else
      post.update(checked: true)
    end
    
    item = Post.find(params[:id])
    render json: { post: item }
  end
 
>>>>>>> Stashed changes
 end
end

