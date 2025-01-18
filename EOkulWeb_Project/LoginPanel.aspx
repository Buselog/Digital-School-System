<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPanel.aspx.cs" Inherits="EOkulWeb_Project.LoginPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Dosyalar1/bootstrap.min.css" rel="stylesheet" />
    <title>E Okul Web</title>
    <!-- SweetAlert2 Kütüphanesi SONRADAN EKLEDİK-->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <style>
        .newStyle5 {
            font-family: "Book Antiqua";
        }

        .centered-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
        }

        .form-container {
            width: 700px;
        }

        .form-header {
            text-align: center;
        }

        .form-control {
            margin-bottom: 15px;
        }

        .btn {
            width: 100%;
            margin-bottom: 10px;
        }
    </style>
</head>



<body>
    <form id="Form1" runat="server">
        <div class="form-group">
            <div class="container centered-container form-group">
                <div class="form-container">
                    <h3 class="form-header">
                        <span class="newStyle5">E Okul Web Sistemi</span>
                    </h3>
                    <br />
                    <br />
                    <div class="text-center my-4">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/TCMeb.png" Height="150px" Width="150px" />
                    </div>
                    <asp:Label for="TxtNumara" runat="server">Kullanıcı Numarası</asp:Label>
                    &nbsp;&nbsp;
                <br />
                    <div>
                        <asp:TextBox ID="TxtNumara" runat="server" CssClass="form-control" Style="width: 100%; margin-left: 0px;" />
                    </div>
                    <div>
                        <asp:Label for="TxtSifre" runat="server">Şifre</asp:Label>
                        <asp:TextBox ID="TxtSifre" runat="server" CssClass="form-control" TextMode="Password" Style="width: 100%; margin-left: 0px;" />
                    </div>
                    <asp:Button ID="BtnOgrenciGirisi" runat="server" Text="Öğrenci Girişi" CssClass="btn btn-outline-primary" OnClick="BtnOgrenciGirisi_Click" Width="697px" BackColor="#dfe6e9" />
                    <br />
                    <asp:Button ID="BtnOgretmenGiris" runat="server" Text="Öğretmen Girişi" CssClass="btn btn-outline-secondary" OnClick="BtnOgretmenGiris_Click" Width="697px" BackColor="#b2bec3" />

                </div>
            </div>
    </form>


    </div>

</body>
</html>
