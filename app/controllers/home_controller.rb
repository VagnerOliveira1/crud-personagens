class HomeController < ApplicationController
  # def index
  #     @consulta = Poder.all
  # end
  def index
      @personagens = Personagem.all
  end
end
