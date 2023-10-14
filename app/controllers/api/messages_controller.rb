class Api::MessagesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    
		@new_message = Message.build(message_params)

		if @new_message&.save 
			render json: @new_message
    else
      render json: {errors: @new_message.errors}
		end
	end

  private

  def message_params
    params.require(:message).permit(:body, :room_id)
  end
end
