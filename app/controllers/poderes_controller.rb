class PoderesController < ApplicationController
    def index
        @poderes = Poder.all
    end
    def new
        @poder = Poder.new
        @personagens = Personagem.all
    end
    def show
        @poder = Poder.find(params[:id])

    end
    def create
        @poder = Poder.new(poder_params)
        if @poder.save
            redirect_to @poder, :notice => 'Poder registrado para o personagem'
        else
            render :new
        end

    end

    def poder_params
        params.
            require(:poder).
            permit(:nome, :tipo, :personagem_id)
    end

    def edit
        @poder = Poder.find(params[:id])
    end

    def update
        @poder = Poder.find(params[:id])
        if @poder.update(poder_params)
            redirect_to @poder,
                notice:'Poder atualizado!!!'
        else
            render action: :edit
        end
    end

    def destroy
        @poder = Poder.find(params[:id])
        @poder.destroy
        redirect_to poderes_url
    end


end
