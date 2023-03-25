<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="yemekDetay.aspx.cs" Inherits="YemekTarifi.yemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            font-size: x-large;
        }
        .auto-style8 {
            width: 139px;
        }
        .auto-style9 {
            text-align: right;
            font-weight: bold;
            width: 139px;
        }
        .auto-style10 {
            font-size: medium;
        }
        .auto-style11 {
            font-size: small;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style5">
        <tr>
            <td class="auto-style3">
    <asp:Label ID="Label3" runat="server" Text="Label" style="font-weight: 700; font-size: xx-large; color: #FFFFFF; background-color: #BFBFBF"></asp:Label>
            </td>
        </tr>
    </table>
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style5">
                <tr>
                    <td>
                        <strong>Ad Soyad : </strong>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("yorumAdSoyad") %>' CssClass="auto-style4"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: inset; border-bottom-width: thin">
                        <strong>Yorum : </strong>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("yorumIcerik") %>' CssClass="auto-style10"></asp:Label>
                        &nbsp;-
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("yorumTarih") %>' CssClass="auto-style11"></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>

    <div style="background-color:#C0C0C0" class="auto-style3">
        <br />
        <br />
        <strong><span class="auto-style6">Yorum Yapma Paneli</span></strong></div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style5">
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">Ad Soyad :</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Mail :</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Yorumunuz :</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td style="text-align: center">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Yorum Yap" />
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td style="text-align: center">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td style="text-align: center">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
