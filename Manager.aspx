<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Manager.aspx.cs" Inherits="Manager" %>


<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <article>
        <h1>Quản Lý Hóa Đơn:</h1>
        </br>
        </br>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="244px" Width="652px" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="MaHD" DataSourceID="SqlDataSource2" GridLines="Horizontal">
            <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="MaHD" HeaderText="MaHD" ReadOnly="True" SortExpression="MaHD" />
                <asp:BoundField DataField="NgayLap" HeaderText="NgayLap" SortExpression="NgayLap" />
                <asp:BoundField DataField="MaHK" HeaderText="MaHK" SortExpression="MaHK" />
                <asp:BoundField DataField="KhanhHang_MaKH" HeaderText="KhanhHang_MaKH" SortExpression="KhanhHang_MaKH" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString5 %>" DeleteCommand="DELETE FROM [HoaDon] WHERE [MaHD] = @MaHD" InsertCommand="INSERT INTO [HoaDon] ([MaHD], [NgayLap], [MaHK], [KhanhHang_MaKH]) VALUES (@MaHD, @NgayLap, @MaHK, @KhanhHang_MaKH)" SelectCommand="SELECT [MaHD], [NgayLap], [MaHK], [KhanhHang_MaKH] FROM [HoaDon]" UpdateCommand="UPDATE [HoaDon] SET [NgayLap] = @NgayLap, [MaHK] = @MaHK, [KhanhHang_MaKH] = @KhanhHang_MaKH WHERE [MaHD] = @MaHD">
            <DeleteParameters>
                <asp:Parameter Name="MaHD" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaHD" Type="String" />
                <asp:Parameter Name="NgayLap" Type="DateTime" />
                <asp:Parameter Name="MaHK" Type="String" />
                <asp:Parameter Name="KhanhHang_MaKH" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="NgayLap" Type="DateTime" />
                <asp:Parameter Name="MaHK" Type="String" />
                <asp:Parameter Name="KhanhHang_MaKH" Type="String" />
                <asp:Parameter Name="MaHD" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </article>

        <aside>
        </br>
        </br>
        </br>
        </br>
            <img src="Images/hoadon.jpg" />
    </aside>
</asp:Content>

