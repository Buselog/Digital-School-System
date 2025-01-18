<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrenciDefault.aspx.cs" Inherits="EOkulWeb_Project.OgrenciDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">

        <div class="form-group">

            <div>
                <asp:TextBox ID="Txt1" runat="server" CssClass="form-control" Enabled="false">Numara</asp:TextBox>
            </div>

            <br />

            <div>
                <asp:TextBox ID="Txt2" runat="server" CssClass="form-control" Enabled="false">AdSoyad</asp:TextBox>
            </div>

            <br />

            <div>
                <asp:TextBox ID="Txt3" runat="server" CssClass="form-control" Enabled="false">Mail</asp:TextBox>
            </div>

            <br />

            <div>
                <asp:TextBox ID="Txt4" runat="server" CssClass="form-control" Enabled="false">Telefon</asp:TextBox>
            </div>

            <br />

            <div>
                <asp:TextBox ID="Txt5" runat="server" CssClass="form-control" Enabled="false">Şifre</asp:TextBox>
            </div>

            <br />


        </div>

        <asp:Button ID="BtnGuncelle" runat="server" Text="Bilgileri Düzenle" CssClass="btn btn-info" OnClick="BtnGuncelle_Click" />
    </form>

</asp:Content>
