class AppareilsController < ApplicationController

    def index
        @appareils = Appareil.all
    end

    def show
        @appareil = Appareil.find(params[:id])
    end

    def new
        @appareil = Appareil.new
    end
    
    def create
        @appareil = Appareil.new(appareil_params)
        
        if @appareil.save
            redirect_to appareils_path
        else
            render :new  
        end

    end

    private

    def appareil_params
        params.require(:appareil).permit(:nom, :caracteristiques, :auteur)
    end

   
end