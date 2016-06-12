class PaisController < ApplicationController
  def new
  	@pais=Country.new
  	
  end
  def create

    @pais=Country.new
    @pais.Pais=param[:Pais]
    @pais.Descripcion=param[:Descripcion]

  if  @pais.save

	redirect_to :controller=>"pais", :action=>"new"

  else render :new

  end	

  end

  def param
  	params.require(:pais).permit(:Pais,:Descripcion)
  end
end
