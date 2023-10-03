<%-- 
    Document   : index
    Created on : 2/10/2023, 19:46:14
    Author     : José Arévalo
--%>
<!-- https://www.w3schools.com/bootstrap4/default.asp -->
<!--IMPORTANDO PARA SQL-->
<%@page import = "modelo.Empleado" %>
<%@page import = "java.util.HashMap" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Empleados</title><!--1DEFINIENDO TITULO-->
        <!--2PEGANDO LINK BOOTSTRAP V4.5-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    </head>
    <body>
        <h1>Formulario Empleados</h1><!--4 CAMBIANDO NOMBRES A FORMULARIO EMPLEADOS-->
        <!--1DEFINIENDO DISEÑO-->
        <div class="container">
            <form action="" method="post" class="form-group">
                <!--1DEFINIENDO CONTROLES-->
                <label for="lbl_codigo"><b>Codigo:</b></label>
              <input type="text" name="txt_codigo" id="txt_codigo" class="form-control" placeholder="Ej: 001" required=""><!-- placeholder para sugerir texto -->
              <label for="lbl_nombres">Nombres:</label>
              <input type="text" name="txt_nombres" id="txt_nombres" class="form-control" placeholder="Ej: Nombre1 Nombre2" required="">
              <label for="lbl_apellidos">Apellidos:</label>
              <input type="text" name="txt_apellidos" id="txt_apellidos" class="form-control" placeholder="Ej: Apellido1 Apelllido2" required="">
              <label for="lbl_direccion">Direccion:</label>
              <input type="text" name="txt_numero" id="txt_direccion" class="form-control" placeholder="Ej: Calle,Avenida,numeral,colonia,zona,municipio,departamento,pais " required="">
              <label for="lbl_telefono">Telefono:</label>
              <input type="number" name="txt_telefono" id="txt_telefono" class="form-control" placeholder="Ej: 5555-5555" required="">
              <label for="lbl_fechadenacimieto">Fecha de Nacimiento:</label>
              <input type="date" name="txt_fechadenacimieto" id="txt_fechadenacimieto" class="form-control" required="">
              <!-- OPCIONES LISTA DESPLEGABLE -->
              <label for="lbl_sangre">Tipo de Sangre:</label>
              <!--<input type="txt" name="txt_sangre" id="txt_sangre" class="form-control">-->
              <select name="drop_sangre" id="drop_sangre" class="form-control" >
                  <!--INGRESANDO CODIGO JAVA-->
                      <%
                          Empleado empleado = new Empleado();
                          HashMap<String,String> drop = empleado.drop_sangre();
                          for (String i: drop.keySet()){
                          out.println("<option value='" + i + "'>" + drop.get(i) + " <Opcion 1</option>");
                          }
                      %>
              </select>
              <!--SALTO DE LINEA-->
              <BR>
              <!--AGREGANDO BOTON-->
              <button type="button" name="btn_agregar" id="btn_agregar" class="btn btn-primary">Agregar</button>
            </form>
        </div>
        <!--3PEGANDO LINK BOOTSTRAP V4.5 separate#-->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    </body>
</html>
