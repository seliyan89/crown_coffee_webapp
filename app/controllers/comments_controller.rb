class CommentsController < ApplicationController

	def create
		@comment = Comment.new(comment_params)
		@comment.save
		# flash[:notice] = "Thanks! We will be in touch soon!"
		redirect_to URI(request.referer).path, flash: {notice: "Thanks, we will get back to you shortly"}

	end

	private

	def comment_params
		params.require(:comment).permit(:name, :email, :mobile_number, :message)
	end

end
