class PersonagensController < ApplicationController
    def index
        @personagens = Personagem.all
    end
    def new
        @personagem = Personagem.new
    end

    def show
        @personagem = Personagem.find(params[:id])
    end

    def create
        @personagem = Personagem.new(personagem_params)
        if @personagem.save
            redirect_to @personagem, :notice =>' Personagem cadastrado com sucesso!!!'
        else
            render :new
        end
    end

    def personagem_params
        params.
            require(:personagem).
            permit(:nome, :forca, :resistencia, :agilidade,
                 :destreza)
    end

    def edit
        @personagem = Personagem.find(params[:id])
    end

    def update
        @personagem = Personagem.find(params[:id])
        if @personagem.update(personagem_params)
            redirect_to @personagem,
                notice:'Personagem atualizado!!!'
        else
            render action: :edit
        end
    end

end
