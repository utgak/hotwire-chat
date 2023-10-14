class RoomsController < ApplicationController
	def index
		@new_room = Room.new
		@rooms= Room.all
	end

	def create
		@new_room = current_user&.rooms&.build(room_params)

		if @new_room&.save 
			@new_room.broadcast_append_to :rooms
		end
	end

	def show
		@room = Room.find_by(id: params[:id])
		@messages = @room.messages
		@new_message = current_user.messages&.build
	end

	private

  def room_params
    params.require(:room).permit(:title)
  end
end
