class ArtistInstrumentsController < ApplicationController
    def new
         @ai = ArtistInstrument.new
         @artists =Artist.all
         @instruments = Instrument.all
    end 

    def create
        @ai = ArtistInstrument.create(ai_params)

        redirect_to artist_path(@ai.artist)
    end 

private 

def ai_params
    params.require(:artist_instrument).permit(:artist_id,:instrument_id)
end 
        
end
