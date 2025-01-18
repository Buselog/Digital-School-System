<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrenciPanelGuncelle.aspx.cs" Inherits="EOkulWeb_Project.OgrenciPanelGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">

        <div class="form-group">

            <div>
                <asp:Label ID="OgrenciNumara" runat="server" Text="Label">Öğrenci Numara</asp:Label>
                <asp:TextBox ID="TxtOgrenciNumara" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
            </div>

            <br />

            <div>
                <asp:Label ID="OgrenciAd" runat="server" Text="Label">Öğrenci Ad</asp:Label>
                <asp:TextBox ID="TxtOgrenciAd" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <br />

            <div>
                <asp:Label ID="OgrenciSoyad" runat="server" Text="Label">Öğrenci Soyad</asp:Label>
                <asp:TextBox ID="TxtOgrenciSoyad" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <br />

            <div>
                <asp:Label ID="OgrenciMail" runat="server" Text="Label">Öğrenci Mail</asp:Label>
                <asp:TextBox ID="TxtOgrenciMail" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <br />

            <div>
                <asp:Label ID="OgrenciTelefon" runat="server" Text="Label">Öğrenci Telefon</asp:Label>
                <asp:TextBox ID="TxtOgrenciTel" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <br />

            <div>
                <asp:Label ID="OgrenciSifre" runat="server" Text="Label">Öğrenci Şifre</asp:Label>
                <asp:TextBox ID="TxtOgrenciSifre" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <br />


        </div>

        <asp:Button ID="BtnBilgileriKaydet" runat="server" Text="Bilgileri Kaydet" CssClass="btn btn-info" OnClick="BtnBilgileriKaydet_Click" />
    </form>

</asp:Content>
