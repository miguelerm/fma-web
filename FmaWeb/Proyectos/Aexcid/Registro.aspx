<%@ Page Title="" Language="C#" MasterPageFile="~/AppLayout.master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Fma.Web.Proyectos.Aexcid.Registro" %>

<%@ Register Src="~/Proyectos/Aexcid/Paso01.ascx" TagPrefix="uc1" TagName="Paso01" %>
<%@ Register Src="~/Proyectos/Aexcid/Paso02.ascx" TagPrefix="uc1" TagName="Paso02" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <asp:Wizard ID="Wizard1" runat="server">
        
        <WizardSteps>
            <asp:WizardStep ID="WizardStep1" runat="server" Title="Resultado">
                <uc1:Paso01 runat="server" id="Paso01" />
            </asp:WizardStep>
            <asp:WizardStep ID="WizardStep2" runat="server" Title="Actividad">
                <uc1:Paso02 runat="server" id="Paso02" />
            </asp:WizardStep>
        </WizardSteps>
        <StartNextButtonStyle CssClass="btn btn-primary" />
        <FinishPreviousButtonStyle CssClass="btn btn-default" />
        <StepNextButtonStyle CssClass="btn btn-primary" />
        <StepPreviousButtonStyle CssClass="btn btn-default" />
        <FinishCompleteButtonStyle CssClass="btn btn-success" />
        <NavigationStyle CssClass="pull-right" />
        <StartNavigationTemplate>
            <div class="row text-right">
                <asp:Button ID="NextButton" runat="server" Text="Continuar" CommandName="MoveNext" CssClass="btn btn-primary" />
            </div>
        </StartNavigationTemplate>
        <StepNavigationTemplate>
            <div class="row text-right">
                <asp:Button ID="PreviousButton" runat="server" Text="Regresar" CommandName="MovePrevious" CssClass="btn btn-default" />
                <asp:Button ID="NextButton" runat="server" Text="Continuar" CommandName="MoveNext" CssClass="btn btn-default" />
            </div>
        </StepNavigationTemplate>
        <FinishNavigationTemplate>
            <div class="row text-right">
                <asp:Button ID="PreviousButton" runat="server" Text="Regresar" CommandName="MovePrevious" CssClass="btn btn-default" />
                <asp:Button ID="CompleteButton" runat="server" Text="Continuar" CommandName="MoveComplete" CssClass="btn btn-success" />
            </div>
        </FinishNavigationTemplate>
        <SideBarTemplate>
            <asp:ListView ID="SideBarList" runat="server">
                <LayoutTemplate>
                    <ul class="nav nav-pills nav-stacked">
                        <li id="ItemPlaceHolder" runat="server"></li>
                    </ul>
                </LayoutTemplate>
                <ItemTemplate>
                    <li class="<%# Container.DataItemIndex == Wizard1.ActiveStepIndex ? "active" : "" %>">
                        <asp:LinkButton ID="sideBarButton" runat="server" Text="Button" />
                    </li>
                </ItemTemplate>
            </asp:ListView>
        </SideBarTemplate>
        <LayoutTemplate>
            <div class="row">
                <div class="col-md-2">
                    <asp:PlaceHolder ID="SideBarPlaceholder" runat="server"></asp:PlaceHolder>
                </div>
                <div class="col-md-10">
                    <asp:PlaceHolder id="WizardStepPlaceholder" runat="server"></asp:PlaceHolder>
                    <asp:PlaceHolder id="NavigationPlaceholder" runat="server"></asp:PlaceHolder>
                </div>
            </div>
            
            
        </LayoutTemplate>
    </asp:Wizard>
</asp:Content>
