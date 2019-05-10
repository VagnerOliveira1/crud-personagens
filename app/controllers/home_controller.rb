class HomeController < ApplicationController
  def index
      @consulta = Poder.all.count
  end
end
