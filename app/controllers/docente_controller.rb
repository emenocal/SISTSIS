class DocenteController < ApplicationController
  
  def new
 
  @persona=Persona.new
  @docente=Docente.new
 # @persona.build_docente
  @docente_estudio=DocenteEstudio.new
  
  end

  def create

  @persona=Persona.new
  @docente=Docente.new
  @docente_estudio=DocenteEstudio.new


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
  @persona.Estado=1



  @persona.Municipio_id=params[:Municipio][:id]

 

  
  
  #@docente_estudio.docentes=@docente
  #@docente_estudio.Estudio=param[:docenteestudios_attributes]['0'][:Estudio]
  #@docente_estudio.Ano=param[:docenteestudios_attributes]['0'][:Ano]

  puts "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
  puts "Primernombre: "+@persona.Primernombre.to_s
  puts "Segundonombre"+@persona.Segundonombre.to_s
  puts "Primerapellido"+@persona.Primerapellido.to_s
  puts "Segundoapellido"+@persona.Segundoapellido.to_s
  puts "Edad"+@persona.Edad.to_s
  puts "Tiposanguineo"+@persona.Tiposanguineo.to_s
  puts "Foto"+@persona.Foto.to_s
  puts "Cedula"+@persona.Cedula.to_s
  puts "Direccion"+@persona.Direccion.to_s
  puts "Estadocivil"+@persona.Estadocivil.to_s
  puts "Celular"+@persona.Celular.to_s
  puts "Telefono"+@persona.Telefono.to_s
  puts "Genero"+@persona.Genero.to_s
  puts "Municipio"+@persona.Municipio_id.to_s
  
  @persona.save

  @docente.persona=@persona
  @docente.save
  #@docente_estudio.save

  end


  def param

    params.require(:persona).permit(:Primernombre,:Segundonombre,:Primerapellido,
    :Segundoapellido,:Edad,:Tiposanguineo,:Foto,:Cedula,:Direccion,:Estadocivil,:Celular,:Telefono,:Genero,
    :Estadocivil)

  end

end
