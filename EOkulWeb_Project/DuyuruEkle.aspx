<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DuyuruEkle.aspx.cs" Inherits="EOkulWeb_Project.DuyuruEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">

        <div class="form-group">

            <div>
                <asp:Label for="DropDownDuyuruOgr" runat="server">Duyuruyu Yapan Öğretmen:</asp:Label>
                <asp:DropDownList ID="DropDownDuyuruOgr" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>

            <br />

            <div>
                <asp:Label for="TxtDuyuruBaslik" runat="server">Duyuru Başlığı:</asp:Label>
                <asp:TextBox ID="TxtDuyuruBaslik" runat="server" CssClass="form-control"></asp:TextBox>

            </div>

            <br />

            <div>
                <asp:Label for="TextAreaIcerik" runat="server">Duyuru İçeriği:</asp:Label>
                <textarea id="TextAreaIcerik" rows="5" class="form-control" runat="server"></textarea>
            </div>

            </div>

        <asp:Button ID="Button1" runat="server" Text="Duyuruyu Kaydet" CssClass="btn btn-info" OnClick="Button1_Click"/>
    </form>


</asp:Content>
