<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="yemekler.aspx.cs" Inherits="YemekTarifi.yemekler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
        height: 26px;
        width: 135px;
    }
    .auto-style7 {
        height: 26px;
        text-align: right;
    }
    .auto-style8 {
        font-size: large;
    }
        .auto-style9 {
            width: 384px;
            font-size: x-large;
        }
        .auto-style10 {
            text-align: center;
        }
        .auto-style11 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style4">
            <tr>
                <td class="auto-style9"><strong>Yemek Listesi</strong></td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="+" Height="40px"  Width="40px" OnClick="Button1_Click1" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="-" Height="40px"  Width="40px" OnClick="Button2_Click" />
                </td>
                
            </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="447px"   >
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style6"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text='<%# Eval("yemekAd")%>'></asp:Label>
                            </strong></td>
                        <td class="auto-style7">
                           <a href="yemekDuzenle.aspx?yemekId=<%#Eval("yemekId")%>"> <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/NewFolder1/update.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style7">
                           <a href="yemekler.aspx?yemekId=<%#Eval("yemekId") %>&islem=sil"> <asp:Image ID="Image3" runat="server" Height="20px" ImageUrl="~/NewFolder1/delete.png" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>

    <div style=" 
        
        width: 450px;
        height:5px;
        background-color:white;
        margin: 10px 0 5px 0;
        "></div>
    <asp:Panel ID="Panel3" runat="server" style="margin-top:0px;">

         <table class="auto-style4">
            <tr>
                <td class="auto-style9"><strong>Yemek Ekleme</strong></td>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="+" Height="40px"  Width="40px" OnClick="Button3_Click"  />
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" Text="-" Height="40px"  Width="40px" OnClick="Button4_Click"  />
                </td>
                
            </tr>
        </table>

    </asp:Panel>

    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style4">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              
            </tr>
            <tr>
                <td class="auto-style11"><em><strong>Yemek Ad :</strong></em></td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtYemekAd" runat="server" Width="270px"></asp:TextBox>
                </td>
               
            </tr>
            <tr>
                <td class="auto-style11"><em><strong>Malzemeler :</strong></em></td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtMal" runat="server" Height="200px" TextMode="MultiLine" Width="270px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11"><em><strong>Yemek Tarifi :</strong></em></td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtTarif" runat="server" Height="300px" TextMode="MultiLine" Width="270px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11"><em><strong>Kategori :</strong></em></td>
                <td class="auto-style10">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="270px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style10">
                    <asp:Button ID="Button6" runat="server" Text="Ekle" OnClick="Button6_Click" Width="150px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
