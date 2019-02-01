class PostsController < ApplicationController

	before_action :get_post, only: [:show, :edit, :update]

	def index
		@posts = Post.all
	end

	def show
	end

	def new
		@post = Post.new
	end

	def create
	  @post = Post.create(title: params[:title], description: params[:description])
	  redirect_to post_path(@post)
	end

	def edit
	end

	def update
	  @post.update(title: params[:post][:title], description: params[:post][:description])
	  redirect_to post_path(@post)
	end

	private

	def get_post
		@post = Post.find(params[:id])
	end

	# def post_params
	# 	params.permit(:data)
	# end

end
