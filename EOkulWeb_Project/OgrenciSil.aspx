<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="OgrenciSil.aspx.cs" Inherits="EOkulWeb_Project.OgrenciSil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    
        <form id="Form1" runat="server">

    <div class="form-group">

        <div>
            <asp:Label for="TxtOgrAd" runat="server">Öğrenci Ad:</asp:Label>
            <asp:TextBox ID="TxtOgrAd" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <br />

        <div>
            <asp:Label for="TxtOgrSoyad" runat="server">Öğrenci Soyad:</asp:Label>
            <asp:TextBox ID="TxtOgrSoyad" runat="server" CssClass="form-control"></asp:TextBox>

        </div>

        <br />

        <div>
            <asp:Label for="TxtOgrTel" runat="server">Öğrenci Telefon:</asp:Label>
            <asp:TextBox ID="TxtOgrTel" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <br />

        <div>
            <asp:Label for="TxtOgrMail" runat="server">Öğrenci Mail:</asp:Label>
            <asp:TextBox ID="TxtOgrMail" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <br />

        <div>
            <asp:Label for="TxtOgrSifre" runat="server">Öğrenci Şifre:</asp:Label>
            <asp:TextBox ID="TxtOgrSifre" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <br />

        <div>
            <asp:Label for="TxtOgrFoto" runat="server">Öğrenci Fotoğraf Linki:</asp:Label>
            <asp:TextBox ID="TxtOgrFoto" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

    </div>

    <asp:Button ID="Button1" runat="server" Text="Öğrenciyi Sil" CssClass="btn btn-info"/>

</form>
  

</asp:Content>
