class PlaysController < ApplicationController

    def new
        @play = Play.new
    end

    def create
        @play = Play.create(play_params)
        redirect_to artist_path(@play.artist.id)
end
