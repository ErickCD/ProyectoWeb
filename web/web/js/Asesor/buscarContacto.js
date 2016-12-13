function verPanelDeBusqueda() {
    $("#opc").removeClass("hide");
    $("#respuesta").removeClass("hide");
    $("#respuesta").empty();
}
function ocultarPanelDeBusqueda() {
    $("#opc").addClass("hide");
    $("#respuesta").addClass("hide");

}
function buscar() {

    $.ajax({
        // La URL de la petición
        url: "proceso/consultarContacto.jsp",
        // la información a enviar
        data: {
            busqueda: $("#busqueda").val(),
            parametro: $("#parametro").val()
        },
        // especifica si será una petición POST o GET
        type: 'POST',
        // el tipo de información que se espera de respuesta
        dataType: 'html',
        // código a ejecutar si la petición es satisfactoria;
        // la respuesta es pasada como argumento a la función
        success: function (respuesta) {
            $("#respuesta").html(respuesta);
            //dashboard();
        },
        // código a ejecutar si la petición falla;
        // son pasados como argumentos a la función
        // el objeto de la petición en crudo y código de estatus de la petición
        error: function (xhr, status) {
            alert('Disculpe, No coincide esta consulta en la base de datos');
        },

        // código a ejecutar sin importar si la petición falló o no
        complete: function (xhr, status) {
            //alert('Petición realizada');
        }
    });
}

