<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Product" %>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="Server">
    <article>

        <h1>Sản Phẩm:</h1>
        <ol class="round">
            <li class="one">
                <h3>Khoai Tây Chiên</h3>
                </br>
            <center><asp:Image ID="Image2" Width="450px" Height="250"  ImageUrl="~/Images/Khoai.jpg" runat="server"/></center>
            </li>
            <li class="two">
                <h3>Xúc Xích</h3>
                </br>
            <center><asp:Image ID="Image3" Width="450px" Height="250"  ImageUrl="~/Images/xucxich.jpg" runat="server"/></center>
            </li>
            <li class="three">
                <h3>Pizza</h3>
                </br>
            <center><asp:Image ID="Image4" Width="450px" Height="250"  ImageUrl="~/Images/pizza.jpg" runat="server"/></center>
            </li>
        </ol>
    </article>
    <aside>
        </br>
        </br>
        </br>
        </br>
        </br>
        </br>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="145px" Width="285px" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="MaSP" DataSourceID="SqlDataSource1" GridLines="Horizontal">
            <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="MaSP" HeaderText="MaSP" ReadOnly="True" SortExpression="MaSP" />
                <asp:BoundField DataField="TenSP" HeaderText="TenSP" SortExpression="TenSP" />
                <asp:BoundField DataField="MoTa" HeaderText="MoTa" SortExpression="MoTa" />
                <asp:BoundField DataField="MaLSP" HeaderText="MaLSP" SortExpression="MaLSP" />
                <asp:BoundField DataField="LoaiSamPham_MaLSP" HeaderText="LoaiSamPham_MaLSP" SortExpression="LoaiSamPham_MaLSP" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
        </asp:DetailsView>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [SamPham] WHERE [MaSP] = @MaSP" InsertCommand="INSERT INTO [SamPham] ([MaSP], [TenSP], [MoTa], [MaLSP], [LoaiSamPham_MaLSP]) VALUES (@MaSP, @TenSP, @MoTa, @MaLSP, @LoaiSamPham_MaLSP)" SelectCommand="SELECT [MaSP], [TenSP], [MoTa], [MaLSP], [LoaiSamPham_MaLSP] FROM [SamPham]" UpdateCommand="UPDATE [SamPham] SET [TenSP] = @TenSP, [MoTa] = @MoTa, [MaLSP] = @MaLSP, [LoaiSamPham_MaLSP] = @LoaiSamPham_MaLSP WHERE [MaSP] = @MaSP">
            <DeleteParameters>
                <asp:Parameter Name="MaSP" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaSP" Type="String" />
                <asp:Parameter Name="TenSP" Type="String" />
                <asp:Parameter Name="MoTa" Type="String" />
                <asp:Parameter Name="MaLSP" Type="String" />
                <asp:Parameter Name="LoaiSamPham_MaLSP" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TenSP" Type="String" />
                <asp:Parameter Name="MoTa" Type="String" />
                <asp:Parameter Name="MaLSP" Type="String" />
                <asp:Parameter Name="LoaiSamPham_MaLSP" Type="String" />
                <asp:Parameter Name="MaSP" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
        </br>
        </br>
        </br>

        <asp:DetailsView ID="DetailsView2" runat="server" Height="180px" Width="288px" AutoGenerateRows="False" DataKeyNames="MaLSP" DataSourceID="SqlDataSource2" AllowPaging="True" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
            <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="MaLSP" HeaderText="MaLSP" ReadOnly="True" SortExpression="MaLSP" />
                <asp:BoundField DataField="TenLSP" HeaderText="TenLSP" SortExpression="TenLSP" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString9 %>" DeleteCommand="DELETE FROM [LoaiSamPham] WHERE [MaLSP] = @MaLSP" InsertCommand="INSERT INTO [LoaiSamPham] ([MaLSP], [TenLSP]) VALUES (@MaLSP, @TenLSP)" SelectCommand="SELECT [MaLSP], [TenLSP] FROM [LoaiSamPham]" UpdateCommand="UPDATE [LoaiSamPham] SET [TenLSP] = @TenLSP WHERE [MaLSP] = @MaLSP">
            <DeleteParameters>
                <asp:Parameter Name="MaLSP" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaLSP" Type="String" />
                <asp:Parameter Name="TenLSP" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TenLSP" Type="String" />
                <asp:Parameter Name="MaLSP" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </aside>

</asp:Content>


