﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EliminarUsuario.aspx.cs" Inherits="Vistas.EliminarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link rel="stylesheet" type="text/css" href="Recursos\\Estilos\\Configuraciones.css" />
    <link rel="icon" type="image/png" href="Recursos\\Imagenes\\favicon.png" />

    <title>Eliminar Cuenta | DevFlix</title>
</head>
<body style="margin: 0; padding: 0;">
    <form id="form1" runat="server">

        <nav class="menu_principal">

                <a class="botonesMenu" href="Home.aspx">HOME</a>
                <a class="botonesMenu" href="Suscripciones.aspx">SUSCRIPCIONES</a>
                <a class="botonesMenu" href="Favoritos.aspx">FAVORITOS</a>
                <a class="botonesMenu" href="DescripcionPelicula.aspx">SORPRENDEME </a>
                <a class="botonesMenu" href="Reportes.aspx">REPORTES </a>
                <a class="botonesMenu" href="SeleccionarUsuario.aspx">USUARIOS </a>
                <a class="botonesMenu" href="Configuraciones.aspx">AJUSTES </a>
                <a class="botonesMenu" href="Log.aspx">CERRAR SESION </a>
                <asp:Label ID="lblBienvenidoUsuario" runat="server"></asp:Label>
        </nav>
        <section class="seccionEliminarUser">
            <article class="FlexBoxEliminarUsers">
                <div class="MarginAdministrarUsers">
                    <span>INGRESE CONTRASEÑA DE LA CUENTA PARA ELIMINAR </span>
                </div>
            </article>

            <article class="FlexBoxEliminarUsers">
                <div class="MarginAdministrarUsers">
                    <asp:TextBox ID="txtContraCuenta" runat="server" TextMode="Password"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="rfvContrasenia" runat="server" ControlToValidate="txtContraCuenta" ForeColor="#CC0000" ValidationGroup="contrasenia" Display="Dynamic">Debe completar el campo!</asp:RequiredFieldValidator>
                </div>
            </article>

            <article class="FlexBoxEliminarUsers">
                <div class="FlexBoxEliminarUsers">
                    <asp:Button ID="btnVolver" runat="server" Text="CANCELAR" CssClass="Botones" OnClick="btnVolver_Click" />
                    <asp:Button ID="btnAceptar" runat="server" Text="ACEPTAR" CssClass="Botones" OnClick="btnAceptar_Click" ValidationGroup="contrasenia" />
                </div>
            </article>
        </section>
    </form>
</body>
</html>