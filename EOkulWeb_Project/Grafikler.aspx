<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="Grafikler.aspx.cs" Inherits="EOkulWeb_Project.Grafikler" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="form1" runat="server">


        <table class="table table-bordered table-hover">
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Chart ID="Chart3" runat="server" Width="460px">
                        <Series>
                            <asp:Series Name="Dersler" ChartArea="ChartArea1"></asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                    <asp:Chart ID="Chart4" runat="server" Width="460px">
                        <Series>
                            <asp:Series Name="Cinsiyet" ChartType="Pie" ChartArea="ChartArea1" LegendText="#LABEL#LEGENDTEXT">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Chart ID="Chart5" runat="server" Width="460px">
                        <Series>
                            <asp:Series Name="Ogretmen" ChartType="Bar">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                    <asp:Chart ID="Chart6" runat="server" Width="460px">
                        <Series>
                            <asp:Series Name="NotOrtalamaDurumu">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                </td>
            </tr>
        </table>
    </form>
</asp:Content>
