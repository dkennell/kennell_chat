class MessagesController < ApplicationController
    def create
        ActionCable.server.broadcast("room_channel", content: params[:message][:body])
    end
end
