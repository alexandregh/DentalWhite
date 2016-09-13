﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Template/Pages.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Dental_White.UI.Pages.RecuperacaoUsuario.Default" Buffer="true" Trace="false" EnableTheming="false" %>

<%@ Register Src="~/WUC/WUCBemVindo.ascx" TagPrefix="uc1" TagName="WUCBemVindo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../../../../Recursos/css/cssreset/cssreset.css" media="screen" />
    <link rel="stylesheet" href="../../../../Recursos/css/DentalWhite/DentalWhite.css" media="screen" />
    <link rel="stylesheet" href="../../../../Recursos/css/bodyPrincipal/bodyPrincipal.css" media="screen" />
    <link rel="stylesheet" href="../../../../Recursos/css/textos/textos.css" media="screen" />
    <link rel="stylesheet" href="../../../../Recursos/jq/coin-slider-footer/coin-slider-styles-footer.css" media="screen" />
    <link rel="stylesheet" href="../../../../Recursos/jq/SimplejQueryDropdowns/css/style.css" media="screen" />
    <link rel="stylesheet" href="../../../../Recursos/css/formularios/formularios.css" media="screen" />
    <script src="../../../../Recursos/jq/jquery-2.1.4.min.js" type="text/javascript"></script>
    <script src="../../../../Recursos/jq/coin-slider-footer/coin-slider-footer.js" type="text/javascript"></script>
    <script src="../../../../Recursos/jq/coin-slider-footer/scriptcoin-slider-footer.js" type="text/javascript"></script>
    <script src="../../../../Recursos/jq/SimplejQueryDropdowns/js/jquery.dropdownPlain.js" type="text/javascript"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderSectionBody" runat="server">
    <section id="sectionBody">
        <section id="contentBody">
            <uc1:WUCBemVindo runat="server" ID="WUCBemVindo" />
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
            <article>
                <asp:Panel ID="pnlMensagemErro" runat="server" Visible="false">
                    <article class="boxContainnerMensagem">
                        <h2 class="txtTituloMensagemErro">Ocorreram os seguintes erros:</h2><br />
                        <asp:Label ID="lblMensagemErro" runat="server" CssClass="txtItensMensagemErro"></asp:Label>
                        <asp:ValidationSummary ID="SummarioErro" runat="server" ShowSummary="true" DisplayMode="BulletList" CssClass="txtItensMensagemErro" EnableClientScript="False" />
                    </article>
                </asp:Panel>
            </article>
            <article>
                <asp:Panel ID="pnlMensagemSucesso" runat="server" Visible="false">
                    <article class="boxContainnerMensagem">
                        <h2 class="txtTituloMensagemSucesso">Recuperação do usuário cadastrado realizado com sucesso.</h2><br />
                    </article>
                </asp:Panel>
            </article>
            <article>
                <fieldset id="fieldsetRecuperarUsuario">
                    <h1>Recuperação do Usuário Cadastrado</h1><br />
                    <a href="../AreaRestrita/Default.aspx">Voltar</a><hr /><br />
                    <legend>Recuperação do Usuário:</legend>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmailCPF" runat="server" Display="Dynamic" ControlToValidate="txtEmailCPF" Text="*" EnableClientScript="False" ForeColor="Red"></asp:RequiredFieldValidator>
                        <label>Digite seu Email ou CPF:</label><br />
                        <asp:TextBox ID="txtEmailCPF" runat="server" Width="99%" CssClass="textbox" TabIndex="1"></asp:TextBox><br /><br />
                        <asp:Label ID="lblMeuUsuario" runat="server" Visible="false" Font-Bold="true" PlaceHolder="Digite seu Email ou CPF..."></asp:Label><br /><br />
                        <asp:Button ID="btnRecuperarUsuario" runat="server" Text="Recuperar Usuário" CssClass="buttonMiddle" TabIndex="5" OnClick="btnRecuperarUsuario_Click" />
                        <asp:Button ID="btnLimparTela" runat="server" Text="Limpar Tela" CssClass="buttonMiddle" TabIndex="10" OnClick="btnLimparTela_Click" />
                </fieldset>
            </article>
            </ContentTemplate>
            </asp:UpdatePanel>
        </section>
    </section>
</asp:Content>
