<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="anasayfa.aspx.cs" Inherits="YemekTarifi.anasayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style5">
                <tr>
                    <td>

                        <a href="yemekDetay.aspx?yemekId= <%#Eval("yemekId") %>">
                            <asp:Label ID="Label3" runat="server" style="font-weight: 700; font-size: x-large" Text='<%# Eval("yemekAd") %>'></asp:Label>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td><span class="auto-style4"><strong>Malzemeler :</strong></span>
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("yemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><span class="auto-style4"><strong>Yemek Tarifi :</strong></span>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("yemekTarifi") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><span class="auto-style4"><strong>Eklenme Tarihi :</strong></span>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("yemekTarih") %>'></asp:Label>
                        &nbsp;- <span class="auto-style4"><strong>Puan :</strong> </span>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("yemekPuan") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: solid; border-width: inherit; border-color: #000000">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
   
</asp:Content>
