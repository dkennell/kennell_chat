class GuestSessionsController < ApplicationController
    def new
        @room_id = params[:room_id]
    end

    def create
        room_id = params[:room_id]
        username = params[:username]
        redirect_to "/rooms/#{room_id}?username=#{username}"
    end
end
