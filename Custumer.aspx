<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Custumer.aspx.cs" Inherits="Custumer" %>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <article>
        <h1>Khách Hàng </h1>
         </br>
         </br>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="111px" Width="629px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaKH" DataSourceID="SqlDataSource10" CellPadding="4" GridLines="Horizontal" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px">
            <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="MaKH" HeaderText="MaKH" ReadOnly="True" SortExpression="MaKH" />
                <asp:BoundField DataField="TenKH" HeaderText="TenKH" SortExpression="TenKH" />
                <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi" />
                <asp:BoundField DataField="SDT" HeaderText="SDT" SortExpression="SDT" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString8 %>" DeleteCommand="DELETE FROM [KhanhHang] WHERE [MaKH] = @MaKH" InsertCommand="INSERT INTO [KhanhHang] ([MaKH], [TenKH], [DiaChi], [SDT]) VALUES (@MaKH, @TenKH, @DiaChi, @SDT)" SelectCommand="SELECT [MaKH], [TenKH], [DiaChi], [SDT] FROM [KhanhHang]" UpdateCommand="UPDATE [KhanhHang] SET [TenKH] = @TenKH, [DiaChi] = @DiaChi, [SDT] = @SDT WHERE [MaKH] = @MaKH">
            <DeleteParameters>
                <asp:Parameter Name="MaKH" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaKH" Type="String" />
                <asp:Parameter Name="TenKH" Type="String" />
                <asp:Parameter Name="DiaChi" Type="String" />
                <asp:Parameter Name="SDT" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TenKH" Type="String" />
                <asp:Parameter Name="DiaChi" Type="String" />
                <asp:Parameter Name="SDT" Type="String" />
                <asp:Parameter Name="MaKH" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </article>
    <aside>
        <img src="Images/custumer.jpg" />
    </aside>
</asp:Content>

