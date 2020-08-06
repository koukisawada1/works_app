class ImagesController < ApplicationController
	before_action :authenticate_user!

	def new
		@image = Image.new
	end

	def create
		@post = Post.find(params[:post_id])
		@image = Image.new(image_params)
		@image.post_id = @post.id
		if @image.save
			redirect_to post_path(@post)
		else
			render 'posts/new'
		end
	end

	def destroy
	end

	private

  	def image_params
    	params.require(:image).permit(:image)
  	end
end
