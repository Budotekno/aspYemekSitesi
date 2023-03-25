<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="YemekTarifi.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            width: 153px;
        }
        .auto-style7 {
            width: 153px;
            text-align: right;
        }
        .auto-style8 {
            text-align: center;
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style5">
        <tr>
            <td class="auto-style8" colspan="2"><strong>İletişim</strong></td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Ad Soyad :</strong></td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox1" runat="server" EnableTheming="True" Height="27px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Mail Adresiniz :</strong></td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox2" runat="server" EnableTheming="True" Height="27px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Konu :</strong></td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox3" runat="server" EnableTheming="True" Height="27px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Mesaj :</strong></td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox4" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style3">
                <asp:Button ID="Button1" runat="server" Text="Gönder" Width="120px" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
