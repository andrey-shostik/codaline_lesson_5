class PostsController < ApplicationController
	
	def show
		@post = Post.where(id: params[:id]).first
	end
  
	def index
		@posts = Post.all
	end

  def new
		@post = Post.new
  end

	def edit
		@post = Post.find(params[:id])
	end
  
	def create
		@post = Post.new(post_params)
		if @post.save
			redirect_to root_path
		else
			render text: 'ERROR'
		end
	end

	def update 	
		@post = Post.find(params[:id])
		if @post.update(post_params)
			redirect_to root_path
		else
			render text: 'ERROR'
		end
	end

	def destroy
		@post = Post.find(params[:id])
		if @post.destroy
			redirect_to root_path
		else
			redirect_to 'posts/index', error:'не получлось'
		end
	end

  private 
		def post_params	
			params.require(:post).permit(:title, :body)		
		end	
end
