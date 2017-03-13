<%@ Page Title="" Language="C#" MasterPageFile="~/AppLayout.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Fma.Web.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <h1>Bienvenida / Bienvenido</h1>
    <p>Base de datos de PROGOCI - Fundaci&oacute;n Machaqa Amawta.</p>
    <p>Accede a uno de los proyectos pulsando sobre la imagen del mismo.</p>

    <div class="row">
        <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
                <asp:HyperLink runat="server" NavigateUrl="~/Default.aspx">
                    <asp:Image runat="server" ImageUrl="~/Content/Logos/aexcid.png" Height="80px" />
                </asp:HyperLink>
                <div class="caption">
                    <h3>AEXID</h3>
                    <p class="fixed-caption-text">Implementaci&oacute;n de un modelo de Prevenci&oacute;n y atenci&oacute;n integral a la violencia intrafamiliar en 3 municipios ind&iacute;genas orginarios de la Provincia Mu&ntilde;ecas, 2016-2018.</p>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
                <asp:HyperLink runat="server" NavigateUrl="~/Default.aspx">
                    <asp:Image runat="server" ImageUrl="~/Content/Logos/mission21.png" Height="80px" />
                </asp:HyperLink>
                <div class="caption">
                    <h3>Mission 21</h3>
                    <p class="fixed-caption-text">Mujeres construyen sus proyectos de vida como promotoras en sus respectivas comunidades campesinas, 2014-2017.</p>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
                <asp:HyperLink runat="server" NavigateUrl="~/Default.aspx">
                    <asp:Image runat="server" ImageUrl="~/Content/Logos/christianaid.png" Height="80px" />
                </asp:HyperLink>
                <div class="caption">
                    <h3>Christian AID</h3>
                    <p class="fixed-caption-text">Fortalecimiento de las organizaciones ind&iacute;genas del Norte Amaz&oacute;nico de Bolivia, 2017-2019.</p>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
                <asp:HyperLink runat="server" NavigateUrl="~/Default.aspx">
                    <asp:Image runat="server" ImageUrl="~/Content/Logos/misereor.png" Height="80px" />
                </asp:HyperLink>
                <div class="caption">
                    <h3>MISEREOR Ihr Hilfswerk</h3>
                    <p class="fixed-caption-text">Construyendo gesti&oacute;n municipal intercultural desde pr&aacute;cticas comunitarias ind&iacute;genas (municipio de Ayata y San Andr&eacute;s de Machaca), hasta junio 2017.</p>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
                <asp:HyperLink runat="server" NavigateUrl="~/Default.aspx">
                    <asp:Image runat="server" ImageUrl="~/Content/Logos/fma.png" />
                </asp:HyperLink>
                <div class="caption">
                    <h3>Fundaci&oacute;n Machaqa Amawta</h3>
                    <p class="fixed-caption-text">Otro proyecto.</p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
