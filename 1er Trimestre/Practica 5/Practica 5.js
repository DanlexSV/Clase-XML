function cargarDatos() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            mostrarDatos(this);
        }
    };
    xhttp.open("GET", "Practica 5.xml", true);
    xhttp.send();
}

function mostrarDatos(xml) {
    var xmlDoc = xml.responseXML;
    var contentDiv = document.getElementById("content");
    
    var fechas = xmlDoc.getElementsByTagName("fechas");
    
    for (var i = 0; i < fechas.length; i++) {
        var fecha = fechas[i];
        var dia = fecha.getElementsByTagName("dia")[0].textContent;
        var mes = fecha.getElementsByTagName("mes")[0].textContent;
        
        var div = document.createElement("div");
        var diaElement = document.createElement("dia");
        var mesElement = document.createElement("mes");
        
        diaElement.textContent = dia;
        mesElement.textContent = mes;
        
        div.appendChild(diaElement);
        div.appendChild(mesElement);
        
        contentDiv.appendChild(div);
    }
}
