class CommentsController < ApplicationController

	def create
	
		@comment = Comment.new(comment_params)
		if( @comment.save )
			redirect_to "#{URI(request.referer).path}%{subject}"% { subject: '#note' }, flash: {note: "Thanks, we will get back to you shortly"}
		else
			render "welcomes/index"
		end
	end

	private

	def comment_params
		params.require(:comment).permit(:name, :email, :mobile_number, :message)
	end

end
