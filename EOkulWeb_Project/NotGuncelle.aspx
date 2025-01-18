<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="NotGuncelle.aspx.cs" Inherits="EOkulWeb_Project.NotGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">

        <div class="form-group">

            
            <div>
                <asp:Label for="TxtDersId" runat="server">Ders Id</asp:Label>
                <asp:TextBox ID="TxtDersId" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
            </div>

            <br />

            <div>
                <asp:Label for="TxtDersAd" runat="server">Ders Adı</asp:Label>
                <asp:TextBox ID="TxtDersAd" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <br />

            <div>
                <asp:Label for="TxtOgrId" runat="server">Öğrenci Id</asp:Label>
                <asp:TextBox ID="TxtOgrId" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
            </div>

            <br />

            <div>
                <asp:Label for="TxtOgrAdSoyad" runat="server">Öğrenci Ad-Soyad</asp:Label>
                <asp:TextBox ID="TxtOgrAdSoyad" runat="server" CssClass="form-control"></asp:TextBox>

            </div>

            <br />

            <div>
                <asp:Label for="TxtOgrSinav1" runat="server">1. Sınav</asp:Label>
                <asp:TextBox ID="TxtOgrSinav1" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <br />

            <div>
                <asp:Label for="TxtOgrSinav2" runat="server">2. Sınav</asp:Label>
                <asp:TextBox ID="TxtOgrSinav2" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <br />

            <div>
                <asp:Label for="TxtOgrSinav3" runat="server">3. Sınav</asp:Label>
                <asp:TextBox ID="TxtOgrSinav3" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <br />

            <div>
                <asp:Label for="TxtOgrOrtalama" runat="server">Ortalama</asp:Label>
                <asp:TextBox ID="TxtOgrOrtalama" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <br />

            <div>
                <asp:Label for="TxtOgrDurum" runat="server">Durum</asp:Label>
                <asp:TextBox ID="TxtOgrDurum" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

        </div>

        <asp:Button ID="Button1" runat="server" Text="Hesapla" CssClass="btn btn-info" OnClick="Button1_Click"/>
         <asp:Button ID="Button2" runat="server" Text="Güncelle" CssClass="btn btn-primary" OnClick="Button2_Click"/>

    </form>

</asp:Content>
