class DocenteController < ApplicationController
  
  def new
 
   @persona=Persona.new
  

  end

  def create

  @persona=Persona.new
  @docente=Docente.new
  @docente_estudio=Docente_estudio.new

  @persona.Primernombre=param[:Primernombre]
  @persona.Segundonombre=param[:Segundonombre]
  @persona.Primerapellido=param[:Primerapellido]
  @persona.Segundoapellido=param[:Segundoapellido]
  @persona.Edad=param[:Edad]
  @persona.Tiposanguineo=param[:Tiposanguineo]
  @persona.Foto=param[:Foto]
  @persona.Cedula=param[:Cedula]
  @persona.Direccion=param[:Direccion]
  @persona.Estadocivil=param[:Estadocivil]
  @persona.Celular=param[:Celular]
  @persona.Telefono=param[:Telefono]
  @persona.Genero=param[:Genero]
  @persona.Estadocivil=param[:Estadocivil]
  @persona.Municipio_id=param[:municipios_attributes]['0'][:id]

  @docente.persona=@persona
  
  @docente_estudio.docente=@docente
  @docente_estudio.Estudio=param[:docente_estudios_attributes]['0'][:Estudio]
  @docente_estudio.Ano=param[:docente_estudios_attributes]['0'][:Ano]

  puts "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
  puts "Primernombre: "+@persona.Primernombre.to_s
  

  #@persona.save
  #@docente.save
  #@docente_estudio.save

  end


  def param

    params.require(:persona).permit(:Primernombre,:Segundonombre,:Primerapellido,
    :Segundoapellido,:Edad,:Tiposanguineo,:Foto,:Cedula,:Direccion,:Estadocivil,:Celular,:Telefono,:Genero,
    :Estadocivil,:municipios_attributes => [:id],:docente_estudios_attributes =>[:Estudio,:Ano])

  end

end
