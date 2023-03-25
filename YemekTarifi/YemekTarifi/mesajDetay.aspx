<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="mesajDetay.aspx.cs" Inherits="YemekTarifi.mesajDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            text-align: right;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Gönderen :</strong></td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Başlık :</strong></td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Mail : </strong></td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox3" runat="server" Height="25px" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>İçerik :</strong></td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox4" runat="server" Height="250px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>
