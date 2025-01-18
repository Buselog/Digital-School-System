<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DuyuruGuncelle.aspx.cs" Inherits="EOkulWeb_Project.DuyuruGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <form id="Form1" runat="server">

        <div class="form-group">

            <div>
                <asp:Label for="TxtDuyuruId" runat="server">DuyuruId</asp:Label>
                <asp:TextBox ID="TxtDuyuruId" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
            </div>


            <br />

            <div>
                <asp:Label for="TxtDuyuruBaslik" runat="server">Duyuru Başlığı</asp:Label>
                <asp:TextBox ID="TxtDuyuruBaslik" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <br />

            <div>
                <asp:Label for="TextAreaDuyuruIcerik" runat="server">Duyuru İçeriği</asp:Label>
                <textarea id="TextAreaDuyuruIcerik" rows="5" runat="server" class="form-control"></textarea>
            </div>

        </div>

         <asp:Button ID="Button1" runat="server" Text="Duyuruyu Güncelle" CssClass="btn btn-info" OnClick="Button1_Click"/>

    </form>

   
</asp:Content>
