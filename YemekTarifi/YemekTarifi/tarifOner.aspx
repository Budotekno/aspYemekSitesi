<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="tarifOner.aspx.cs" Inherits="YemekTarifi.tarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            text-align: right;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">Tarif Ad :</td>
            <td class="auto-style3" style="margin-left: 80px">
                <asp:TextBox ID="txtTarifAd" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Tarif Malzeme : </td>
            <td class="auto-style3" style="text-align: center; margin-left: 80px">
                <asp:TextBox ID="txtTarifMal" runat="server" Height="80px" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Tarif Yapışı : </td>
            <td class="auto-style3" style="margin-left: 80px">
                <asp:TextBox ID="txtTarifYapilis" runat="server" Height="120px" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Fotoğrafı :</td>
            <td class="auto-style3" style="margin-left: 80px">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="200px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Tarif Öneren :</td>
            <td class="auto-style3" style="margin-left: 80px">
                <asp:TextBox ID="txtTarifOneren" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Tarif Mail : </td>
            <td class="auto-style3" style="margin-left: 80px">
                <asp:TextBox ID="txtTarifMail" runat="server" TextMode="Email" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td style="text-align: center; margin-left: 80px">
                <asp:Button ID="btnGonder" runat="server" style="text-align: center" Text="Gönder" Width="150px" OnClick="btnGonder_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
