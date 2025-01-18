<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DersGuncelle.aspx.cs" Inherits="EOkulWeb_Project.DersGuncelle" %>
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
             <asp:Label for="TxtDersAd" runat="server">Ders Ad</asp:Label>
             <asp:TextBox ID="TxtDersAd" runat="server" CssClass="form-control"></asp:TextBox>

         </div>

         </div>

     <asp:Button ID="Button1" runat="server" Text="Dersi Güncelle" CssClass="btn btn-success" OnClick="Button1_Click"/>
 </form>

</asp:Content>
