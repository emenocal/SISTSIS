
$(document).ready(function(){


$('#add_estudio').click(function(){

var est= $('#Estudio_doncente').val();
var ano= $('#Ano_estudio_doc').val();

if(est==""){

  return;

}else if(ano==""){


	return;
}



$('#tabla_estudio tr:last').after('<tr><td>'+est+'</td> <td width="100px;">'+ano+'</td> <td width="10px;"><i id="delete_estudio" class="fa fa-times cursor_hand" aria-hidden="true"></i></td></tr>');
$('#Estudio_doncente').val("");
$('#Ano_estudio_doc').val("");
});


$('#delete_estudio').click(function(){

alert("entro");

});

});
