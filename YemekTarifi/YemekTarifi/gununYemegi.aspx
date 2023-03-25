<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="gununYemegi.aspx.cs" Inherits="YemekTarifi.gununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Label ID="Label3" runat="server" style="font-weight: 700; font-size: x-large" Text='<%# Eval("yemekAd") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="margin-left: 40px"><strong>Malzemeler :</strong>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("yemekMalzeme") %>'></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="margin-left: 40px"><strong>Tarif : </strong>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("yemekTarifi") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center; margin-left: 40px">
                        <asp:Image ID="Image1" runat="server" Height="227px" style="text-align: center" Width="235px" ImageUrl='<%# Eval("yemekResim") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="margin-left: 40px">&nbsp;</td>
                </tr>
                <tr>
                    <td style="margin-left: 40px">
                        <table class="auto-style1">
                            <tr>
                                <td style="text-align: left"><strong>Puan : </strong>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("yemekPuan") %>'></asp:Label>
                                    &nbsp;</td>
                                <td style="text-align: right">&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td style="margin-left: 40px"><strong style="text-align: right">Ekleme Tarihi : </strong>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("yemekTarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    
</asp:Content>
