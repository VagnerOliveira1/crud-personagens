class HomeController < ApplicationController
  def index
      @consulta = Poder.all
  end
end
