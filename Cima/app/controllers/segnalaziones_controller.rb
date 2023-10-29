class SegnalazionesController < ApplicationController

    def new
        @segnalazione = Segnalazione.new(post_id: params[:post_id])
    end

      
    def create
        @segnalazione = Segnalazione.new(segnalazione_params)
        if @segnalazione.save
            redirect_to @segnalazione.post
        else
            render :new
        end
    end
    
    private
    
    def segnalazione_params
    params.require(:segnalazione).permit(:post_id, :motivo)
    end
      
end
