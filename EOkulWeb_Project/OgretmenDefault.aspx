<%--Web Form Page (Content Page):

Web Form Page, kullanıcıya özel içerik ve işlevsellik sağlamak için kullanılan bireysel sayfalardır.
Bir Master Page'e bağlanarak, ortak düzeni (örneğin başlık ve menüyü) miras alabilir.
İçeriği ContentPlaceholder alanlarına yerleştirilir ve sayfalar, Master Page ile bir bütün olarak çalışır.
Kullanım Amaçları:

Master Page: Sayfa tasarımında tutarlılık sağlamak ve düzenlemeleri tek bir yerden yapmak.
Web Form Page: Sayfa bazında özelleştirilmiş içerik ve işlevsellik sağlamak.--%>




<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="OgretmenDefault.aspx.cs" Inherits="EOkulWeb_Project.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
    
<%--ContentPlaceHolder, ASP.NET Master Page mimarisinde kullanılan bir kontrol olup, 
alt sayfalarda (Content Pages) dinamik içeriklerin yerleştirilebileceği alanları tanımlar.

ContentPlaceHolder'ın Amacı:
Dinamik İçerik Alanları Tanımlamak: Master Page'in genel tasarımını ve yapısını bozmadan, 
belirli alanlarda her alt sayfa için farklı içerik göstermek.
Tutarlılığı Sağlamak: Ortak şablon (Master Page) korunurken, yalnızca içeriğin değişmesini sağlar.
Neden İçeriği ContentPlaceHolder İçine Yazıyoruz?
ContentPlaceHolder, alt sayfaların Master Page üzerinde içerik ekleyebileceği bir 
"placeholder" (yer tutucu) görevi görür. İçeriğinizi bu kontrolün içine yazmazsanız:

Master Page'in sabit yapısı bozulmaz, ama sayfanıza özel içerik gösterilemez.
Alt sayfaların Master Page ile uyumlu çalışması mümkün olmaz.--%>



    <table class="table table-bordered table-hover">

        <%--tablonun başlık kısmı--%>

        <tr>
            <th scope="col">ID</th>
            <th scope="col">NUMARA</th>
            <th scope="col">AD</th>
            <th scope="col">SOYAD</th>
            <th scope="col">TELEFON</th>
            <th scope="col">MAIL</th>
            <th scope="col">SİFRE</th>
            <th scope="col">İşlemler</th>
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
                    <%--birinci satıra veri çekme--%>
                    <tr>
                        <td><b><%#Eval("OgrenciId") %> </b></td>
                        <td><%#Eval("OgrenciNumara")%></td>
                        <td><%#Eval("OgrenciAd")%></td>
                        <td><%#Eval("OgrenciSoyad") %></td>
                        <td><%#Eval("OgrenciTelefon") %></td>
                        <td><%#Eval("OgrenciMail") %></td>
                        <td><%#Eval("OgrenciSifre") %></td>
                        <td style="text-align:center">
                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"~/OgrenciSil.aspx?OgrenciId="+Eval("OgrenciId")%>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                            <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"~/OgrenciGuncelle.aspx?OgrenciId="+Eval("OgrenciId")%>' runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>

            </asp:Repeater>

        </tbody>

    </table>

</asp:Content>

