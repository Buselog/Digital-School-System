<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrenciPanelNotListesi.aspx.cs" Inherits="EOkulWeb_Project.OgrenciPanelNotListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

        <table class="table table-bordered table-hover">

    <%--tablonun başlık kısmı--%>

    <tr>
        <th scope="col">Öğrenci Id</th>
        <th scope="col">Öğrenci Ad Soyad</th>
        <th scope="col">Ders Ad</th>
        <th scope="col">Sınav 1</th>
        <th scope="col">Sınav 2</th>
        <th scope="col">Sınav 3</th>
        <th scope="col">Ortalama</th>
        <th scope="col">Durum</th>
    </tr>


    <%--tablounun içerik kısmı, veri bulunan kısım--%>

    <tbody>


        <%-- Databaseden veri çekmek için kullanılan araç: repeater--%>

        <%--Öğeler ItemTemplate içerisine eklenir--%>
        <%--İlgili satırın sütununu çekmeye yarayan komut: Eval--%>

        <%--Bunu yazmak yetmez, bu sadece ön yüzde veriyi göstermeye yarayan görsel bir kodlama,
  Veriyi çekmek için backend kısmını da Default.aspx.cs içine yazmamız gerekir.--%>

        <asp:Repeater ID="Repeater1" runat="server">

            <ItemTemplate>
                <%--birinci satıra veri çekme, repeater ile ne kadar satır varsa o kadar bu satır repeat edilerek doldurulacak--%>
                <tr>
                    <td><%#Eval("OgrenciID") %></td>
                    <td><%#Eval("OgrenciAdSoyad") %></td>
                    <td><%#Eval("DersAd") %></td>
                    <td><%#Eval("Sinav1")%></td>
                    <td><%#Eval("Sinav2") %></td>
                    <td><%#Eval("Sinav3") %></td>
                    <td><%#Eval("Ortalama") %></td>
                    <td><%#Eval("Durum") %></td>
                </tr>
            </ItemTemplate>

        </asp:Repeater>

    </tbody>

</table>


</asp:Content>
