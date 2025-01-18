<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DuyuruListele.aspx.cs" Inherits="EOkulWeb_Project.DuyuruListele" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-bordered table-hover">

        <%--tablonun başlık kısmı--%>

        <tr>
            <th scope="col">Duyuru Id</th>
            <th scope="col">Duyuru Başlığı</th>
            <th scope="col">Duyuru İçeriği</th>
            <th scope="col">Duyuru Gönderen Öğretmen</th>
            <% if (Session["Role"].ToString() == "Ogretmen")
                { %>
            <th scope="col">İşlemler</th>
            <%} %>
        </tr>


        <%--tablounun içerik kısmı, veri bulunan kısım--%>

        <tbody>


            <%-- Databaseden veri çekmek için kullanılan araç: repeater--%>

            <%--Öğeler ItemTemplate içerisine eklenir--%>
            <%--İlgili satırın sütununu çekmeye yarayan komut: Eval--%>

            <%--Bunu yazmak yetmez, bu sadece ön yüzde veriyi göstermeye yarayan görsel bir kodlama,
   Veriyi çekmek için backend kısmını da DuyuruListesi.aspx.cs içine yazmamız gerekir.--%>

            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>

                    <tr>
                        <td><b><%#Eval("DuyuruId") %></b></td>
                        <td><%#Eval("DuyuruBaslik")%></td>
                        <td><%#Eval("DuyuruIcerik") %></td>
                        <td><%#Eval("Duyuru_Gonderen") %></td>
                        <% if (Session["Role"].ToString() == "Ogretmen")
                            { %>
                        <td style="text-align: center">

                            <!-- Öğretmenler için "Güncelle" ve "Sil" butonları -->
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"~/DuyuruSil.aspx?DuyuruId="+Eval("DuyuruId")%>' CssClass="btn btn-danger btn-sm">Sil</asp:HyperLink>
                            <br />
                            <br />
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"~/DuyuruGuncelle.aspx?DuyuruId="+Eval("DuyuruId")%>' CssClass="btn btn-success btn-sm">Güncelle</asp:HyperLink>
                            <% } %>
                    </td>
                    </tr>
                </ItemTemplate>

            </asp:Repeater>

        </tbody>

    </table>



</asp:Content>
