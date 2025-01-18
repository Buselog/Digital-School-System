<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="NotListesi.aspx.cs" Inherits="EOkulWeb_Project.NotListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-bordered table-hover">

        <%--tablonun başlık kısmı--%>

        <tr>
            <th scope="col">Öğrenci Id</th>
            <th scope="col">Öğrenci Ad Soyad</th>
            <th scope="col">Ders Id</th>
            <th scope="col">Ders Ad</th>
            <th scope="col">Sınav 1</th>
            <th scope="col">Sınav 2</th>
            <th scope="col">Sınav 3</th>
            <th scope="col">Ortalama</th>
            <th scope="col">Durum</th>
            <%if (Session["Role"].ToString() == "Ogretmen")
                {%>
            <th scope="col">İşlem Yap</th>
            <% } %>
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
                        <td><b><%#Eval("OgrenciID") %></b></td>
                        <td><%#Eval("OgrenciAdSoyad") %></td>
                        <td><%#Eval("DersId")%></td>
                        <td><%#Eval("DersAd") %></td>
                        <td><%#Eval("Sinav1")%></td>
                        <td><%#Eval("Sinav2") %></td>
                        <td><%#Eval("Sinav3") %></td>
                        <td><%#Eval("Ortalama") %></td>
                        <td><b><%#Eval("Durum") %></b></td>
                        <%if (Session["Role"].ToString() == "Ogretmen")
                            { %>
                        <td style="text-align: center">
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"~/NotGuncelle.aspx?NotId="+Eval("NotId")%>' CssClass="btn btn-success btn-sm">
                                Güncelle
                            </asp:HyperLink>

                            <%} %>
                    </tr>
                </ItemTemplate>

            </asp:Repeater>

        </tbody>

    </table>


</asp:Content>
