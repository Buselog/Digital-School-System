<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DersListesi.aspx.cs" Inherits="EOkulWeb_Project.DersListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <table class="table table-bordered table-hover">

     <%--tablonun başlık kısmı--%>

     <tr>
         <th scope="col">Ders Id</th>
         <th scope="col">Ders Adı</th>
         <th scope="col">İşlemler</th>
     </tr>


     <%--tablounun içerik kısmı, veri bulunan kısım--%>

     <tbody>


         <%-- Databaseden veri çekmek için kullanılan araç: repeater--%>

         <%--Öğeler ItemTemplate içerisine eklenir--%>
         <%--İlgili satırın sütununu çekmeye yarayan komut: Eval--%>

         <%--Bunu yazmak yetmez, bu sadece ön yüzde veriyi göstermeye yarayan görsel bir kodlama,
          Veriyi çekmek için backend kısmını da DuyuruListesi.aspx.cs içine yazmamız gerekir.--%>

         <asp:Repeater ID="Repeater1" runat="server">

             <itemtemplate>

                 <tr>
                     <td><b><%#Eval("DersId")%></b></td>
                     <td><%#Eval("DersAd")%></td>
                     <td style="text-align: center">
                         <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"~/DersSil.aspx?DersId="+Eval("DersId")%>' CssClass="btn btn-danger">Sil</asp:HyperLink>
                         &nbsp
                         <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"~/DersGuncelle.aspx?DersId="+Eval("DersId")%>' CssClass="btn btn-success">Güncelle</asp:HyperLink>
                     </td>
                 </tr>
             </itemtemplate>

         </asp:Repeater>

     </tbody>

 </table>

    <%--Ders Ekle butonuna basıldığında hiçbir Id bilgisine gerek duyulmadan(herhangi bir veri ile işlem yapılmayacak) sadece sayfaya gideceği için 
    NavigateUrl='<%#"~/DersSil.aspx?DersId="+Eval("DersId")%>' tarzı uzun bir navigate kodu yazılmadı.--%>
     <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/DersEkle.aspx" CssClass="btn btn-info">Ders Ekle</asp:HyperLink>

</asp:Content>
