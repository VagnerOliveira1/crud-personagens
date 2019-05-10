class PoderesController < ApplicationController
    def new
        @poder = Poder.new
    end
    def show
        @poder = Poder.find(params[:id])
    end
    def create
        @poder = Poder.new(params[:user])
        if @poder.save
            redirect_to @user, :notice => 'Poder registrado para o personagem'
        else
            render :new
        end

    end
end
