function agregarLogro() {
    addLogro();
}

function asignar_Logro_Servicio(){
    alert($("#id_servicio").val()+" "+$("#id_logro").val()+" "+$("#nombre_empresa")  );
    
    $.ajax({
        // La URL de la petición
        url: "proceso/asignarLogro_Servicio.jsp",
        // la información a enviar
        data: {
            id_servicio: $("#id_servicio").val(),
            id_logro: $("#id_logro").val(),
            nombre_empresa: $("#nombre_empresa").val()
        },
        // especifica si será una petición POST o GET
        type: 'POST',
        // código a ejecutar si la petición es satisfactoria;
        // la respuesta es pasada como argumento a la función
        success: function (respuesta) {
            //recargar pagina
            alert("Se agrego este Servicio con exito");
            location.reload();
        },
        // código a ejecutar si la petición falla;
        // son pasados como argumentos a la función
        // el objeto de la petición en crudo y código de estatus de la petición
        error: function (xhr, status) {
            alert('Disculpe, No se pudo realizar la operacion en la base de datos');
        },

        // código a ejecutar sin importar si la petición falló o no
        complete: function (xhr, status) {
            //alert('Petición realizada');
        }
    });
}

function agregarServicio(){
    $.ajax({
        // La URL de la petición
        url: "proceso/addServicio.jsp",
        // la información a enviar
        data: {
            servicio: $('#s1').val()
        },
        // especifica si será una petición POST o GET
        type: 'POST',
        // código a ejecutar si la petición es satisfactoria;
        // la respuesta es pasada como argumento a la función
        success: function (respuesta) {
            //recargar pagina
            alert("Se agrego este Servicio con exito");
            location.reload();
        },
        // código a ejecutar si la petición falla;
        // son pasados como argumentos a la función
        // el objeto de la petición en crudo y código de estatus de la petición
        error: function (xhr, status) {
            alert('Disculpe, No se pudo realizar la operacion en la base de datos');
        },

        // código a ejecutar sin importar si la petición falló o no
        complete: function (xhr, status) {
            //alert('Petición realizada');
        }
    });
}

function addLogro() {

    $.ajax({
        // La URL de la petición
        url: "proceso/addLogro.jsp",
        // la información a enviar
        data: {
            logro: $('#l1').val()
        },
        // especifica si será una petición POST o GET
        type: 'POST',
        // código a ejecutar si la petición es satisfactoria;
        // la respuesta es pasada como argumento a la función
        success: function (respuesta) {
            //recargar pagina
            alert("Se agrego este Logro con exito");
            location.reload();
        },
        // código a ejecutar si la petición falla;
        // son pasados como argumentos a la función
        // el objeto de la petición en crudo y código de estatus de la petición
        error: function (xhr, status) {
            alert('Disculpe, No se pudo realizar la operacion en la base de datos');
        },

        // código a ejecutar sin importar si la petición falló o no
        complete: function (xhr, status) {
            //alert('Petición realizada');
        }
    });
}