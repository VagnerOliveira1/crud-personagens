class PersonagensController < ApplicationController
    def new
        @personagem = Personagem.new
    end

    def show
        @personagem = Personagem.find(params[:id])
    end

    def create
        @personagem = Personagem.new(params[:peesonagem])
        if @personagem.save
            redirect_to @personagem, :notice =>' Personagem cadastrado com sucesso!!!'
        else
            render :new
        end
    end
end
