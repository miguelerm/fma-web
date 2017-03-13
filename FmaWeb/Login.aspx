<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Fma.Web.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-sm-8 col-sm-offset-1 col-md-6 col-md-offset-3">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Iniciar Sesi&oacute;n
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-sm-12">

                                <asp:Login
                                    ID="LoginControl"
                                    runat="server"
                                    FailureText="Usuario o contrase&ntilde;a incorrectos. Intente de nuevo."
                                    RenderOuterTable="false"
                                    OnAuthenticate="LoginControl_Authenticate"
                                    >
                                    <LayoutTemplate>
                                        <div class="form-horizontal">
                                            <div class="form-group has-feedback">
                                                <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-sm-3 control-label">Usuario:</asp:Label>
                                                <div class="col-sm-9">
                                                    <asp:TextBox ID="UserName" runat="server" CssClass="form-control"></asp:TextBox>
                                                    <asp:requiredfieldvalidator id="UserNameRequired" runat="server" ControlToValidate="UserName" Text="" ToolTip="Este campo es requerido" CssClass="text-danger form-control-feedback glyphicon glyphicon-asterisk"></asp:requiredfieldvalidator>
                                                </div>
                                            </div>
                                            <div class="form-group has-feedback">
                                                <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-sm-3 control-label">Contrase&ntilde;a:</asp:Label>
                                                <div class="col-sm-9">
                                                    <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                                                    <asp:requiredfieldvalidator id="PasswordRequired" runat="server" ControlToValidate="Password" Text="" ToolTip="Este campo es requerido" CssClass="text-danger form-control-feedback glyphicon glyphicon-asterisk"></asp:requiredfieldvalidator>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-sm-offset-3 col-sm-9">
                                                    <div class="checkbox">
                                                        <label>
                                                            <asp:CheckBox ID="RememberMe" runat="server" />
                                                            Recordarme
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group text-danger">
                                                <div class="col-sm-offset-3 col-sm-9">
                                                    <asp:Literal id="FailureText" runat="server"></asp:Literal>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-sm-9">

                                                </div>
                                                <div class="col-sm-3">
                                                    <asp:Button ID="Login" CommandName="Login" runat="server" Text="Ingresar" CssClass="btn btn-primary btn-block"></asp:Button>
                                                </div>
                                            </div>
                                        </div>
                                    </LayoutTemplate>
                                </asp:Login>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</asp:Content>
