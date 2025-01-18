<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="Istatistikler.aspx.cs" Inherits="EOkulWeb_Project.Istatistikler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <form id="Form1" runat="server">

        <div class="form-group">

            <div>
                <asp:TextBox ID="Txt1" runat="server" CssClass="form-control" Enabled="false">Toplam Öğrenci Sayısı: </asp:TextBox>
            </div>

            <br />

            <div>
                <asp:TextBox ID="Txt2" runat="server" CssClass="form-control" Enabled="false">Toplam Öğretmen Sayısı</asp:TextBox>
            </div>

            <br />

            <div>
                <asp:TextBox ID="Txt3" runat="server" CssClass="form-control" Enabled="false">Toplam Ders Sayısı</asp:TextBox>
            </div>

            <br />

            <div>

                <h5>1. Sınavda En Yüksek Nota Sahip İlk 3 Öğrenci</h5>

                <table class="table table-bordered table-hover">
                    <thead>

                        <tr>
                            <th>Öğrenci Ad-Soyad</th>
                            <th>Sınav Notu</th>
                        </tr>
                    </thead>

                    <tbody>
                        <asp:Repeater ID="Repeater1" runat="server">

                            <ItemTemplate>

                                <tr>
                                    <td><%#Eval("Ogrenci") %></td>
                                    <td><%#Eval("Not")%></td>
                                </tr>

                            </ItemTemplate>



                        </asp:Repeater>
                    </tbody>
                </table>

            </div>

            <br />

            <div>

                <h5>2. Sınavında En Yüksek Nota Sahip İlk 3 Öğrenci</h5>

                <table class="table table-bordered table-hover">

                    <thead>

                        <tr>
                            <th>Öğrenci Ad Soyad</th>
                            <th>Sınav Notu</th>
                        </tr>

                    </thead>

                    <tbody>

                        <asp:Repeater ID="Repeater2" runat="server">

                            <ItemTemplate>

                                <tr>

                                    <td><%#Eval("Ogrenci")%></td>
                                    <td><%#Eval("Not")%></td>
                                </tr>


                            </ItemTemplate>

                        </asp:Repeater>
                    </tbody>
                </table>
            </div>

            <br />

            <div>

                <h5>3. Sınavında En Yüksek Nota Sahip İlk 3 Öğrenci</h5>

                <table class="table table-bordered table-hover">

                    <thead>

                        <tr>
                            <th>Öğrenci Ad Soyad</th>
                            <th>Sınav Notu</th>
                        </tr>

                    </thead>

                    <tbody>

                        <asp:Repeater ID="Repeater3" runat="server">

                            <ItemTemplate>

                                <tr>

                                    <td><%#Eval("Ogrenci")%></td>
                                    <td><%#Eval("Not")%></td>
                                </tr>


                            </ItemTemplate>

                        </asp:Repeater>
                    </tbody>

                </table>

            </div>

            <br />

            <div>
                <asp:TextBox ID="Txt4" runat="server" CssClass="form-control" Enabled="false">Sistemdeki Duyuru Sayısı</asp:TextBox>
            </div>

            <br />

            <div>
                <asp:TextBox ID="Txt5" runat="server" CssClass="form-control" Enabled="false">1. SInav Not Ortalaması: ___</asp:TextBox>
            </div>

            <br />

            <div>
                <asp:TextBox ID="Txt6" runat="server" CssClass="form-control" Enabled="false">2. Sınav Not Ortalaması: ___</asp:TextBox>
            </div>

            <br />

            <div>
                <asp:TextBox ID="Txt7" runat="server" CssClass="form-control" Enabled="false">3. Sınav Not Ortalaması: ___</asp:TextBox>
            </div>


        </div>

    </form>


</asp:Content>
