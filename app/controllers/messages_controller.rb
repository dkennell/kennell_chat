class MessagesController < ApplicationController
    def create
        ActionCable.server.broadcast(
            "room_channel",
            content: params[:message][:body],
            user_id: params[:message][:user_id]
        )
    end
end
