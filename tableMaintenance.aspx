<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tableMaintenance.aspx.cs" Inherits="CS458_TableMaintenanceV2.tableMaintenance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Product maintenance</h1>

            <p>Please Choose a category: 
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" AutoPostBack="True" DataTextField="Name" DataValueField="CategoryID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT ProductID, Name, CategoryID FROM Products"></asp:SqlDataSource>
            </p>
         </div>

        <div class="table-responsive">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None" Width="409px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="ShortDescription" HeaderText="ShortDescription" SortExpression="ShortDescription" />
                <asp:BoundField DataField="OnHand" HeaderText="OnHand" SortExpression="OnHand" />
                <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice" />
                <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" SortExpression="CategoryID" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
            </div>
                            
        
        <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource3" DataKeyNames="ProductID" Width="287px" CellPadding="4" ForeColor="#333333">
            <EditItemTemplate>
                ProductID:
                <asp:Label ID="ProductIDLabel1" runat="server" Text='<%# Eval("ProductID") %>' />
                <br />
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                ShortDescription:
                <asp:TextBox ID="ShortDescriptionTextBox" runat="server" Text='<%# Bind("ShortDescription") %>' />
                <br />
                LongDescription:
                <asp:TextBox ID="LongDescriptionTextBox" runat="server" Text='<%# Bind("LongDescription") %>' />
                <br />
                CategoryID:
                <asp:TextBox ID="CategoryIDTextBox" runat="server" Text='<%# Bind("CategoryID") %>' />
                <br />
                ImageFile:
                <asp:TextBox ID="ImageFileTextBox" runat="server" Text='<%# Bind("ImageFile") %>' />
                <br />
                UnitPrice:
                <asp:TextBox ID="UnitPriceTextBox" runat="server" Text='<%# Bind("UnitPrice") %>' />
                <br />
                OnHand:
                <asp:TextBox ID="OnHandTextBox" runat="server" Text='<%# Bind("OnHand") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                ProductID:
                <asp:TextBox ID="ProductIDTextBox" runat="server" Text='<%# Bind("ProductID") %>' />
                <br />
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                ShortDescription:
                <asp:TextBox ID="ShortDescriptionTextBox" runat="server" Text='<%# Bind("ShortDescription") %>' />
                <br />
                LongDescription:
                <asp:TextBox ID="LongDescriptionTextBox" runat="server" Text='<%# Bind("LongDescription") %>' />
                <br />
                CategoryID:
                <asp:TextBox ID="CategoryIDTextBox" runat="server" Text='<%# Bind("CategoryID") %>' />
                <br />
                ImageFile:
                <asp:TextBox ID="ImageFileTextBox" runat="server" Text='<%# Bind("ImageFile") %>' />
                <br />
                UnitPrice:
                <asp:TextBox ID="UnitPriceTextBox" runat="server" Text='<%# Bind("UnitPrice") %>' />
                <br />
                OnHand:
                <asp:TextBox ID="OnHandTextBox" runat="server" Text='<%# Bind("OnHand") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                ProductID:
                <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
                <br />
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                ShortDescription:
                <asp:Label ID="ShortDescriptionLabel" runat="server" Text='<%# Bind("ShortDescription") %>' />
                <br />
                LongDescription:
                <asp:Label ID="LongDescriptionLabel" runat="server" Text='<%# Bind("LongDescription") %>' />
                <br />
                CategoryID:
                <asp:Label ID="CategoryIDLabel" runat="server" Text='<%# Bind("CategoryID") %>' />
                <br />
                ImageFile:
                <asp:Label ID="ImageFileLabel" runat="server" Text='<%# Bind("ImageFile") %>' />
                <br />
                UnitPrice:
                <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Bind("UnitPrice") %>' />
                <br />
                OnHand:
                <asp:Label ID="OnHandLabel" runat="server" Text='<%# Bind("OnHand") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        </asp:FormView>
                            
        
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT ProductID, Name, ShortDescription, OnHand, UnitPrice, CategoryID FROM Products WHERE (CategoryID = @CategoryID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" DefaultValue="fx" Name="CategoryID" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM Products WHERE  (ProductID = @ProductID)" InsertCommand="INSERT INTO Products(ProductID, Name, ShortDescription, LongDescription, CategoryID, ImageFile, UnitPrice, OnHand) VALUES (@ProductID, @Name, @ShortDescription, @LongDescription, @CategoryID, @ImageFile, @UnitPrice, @OnHand)" SelectCommand="SELECT ProductID, Name, ShortDescription, LongDescription, CategoryID, ImageFile, UnitPrice, OnHand FROM Products WHERE (ProductID = @ProductID)" UpdateCommand="UPDATE Products SET ProductID = @ProductID, Name = @Name, ShortDescription = @ShortDescription, LongDescription = @LongDescription, CategoryID = @CategoryID, ImageFile = @ImageFile, UnitPrice = @UnitPrice, OnHand = @OnHand WHERE (ProductID = @ProductID)">
            <DeleteParameters>
                <asp:Parameter Name="ProductID" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProductID" />
                <asp:Parameter Name="Name" />
                <asp:Parameter Name="ShortDescription" />
                <asp:Parameter Name="LongDescription" />
                <asp:Parameter Name="CategoryID" />
                <asp:Parameter Name="ImageFile" />
                <asp:Parameter Name="UnitPrice" />
                <asp:Parameter Name="OnHand" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" DefaultValue="arm01" Name="ProductID" PropertyName="SelectedValue" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="ProductID" />
                <asp:Parameter Name="Name" />
                <asp:Parameter Name="ShortDescription" />
                <asp:Parameter Name="LongDescription" />
                <asp:Parameter Name="CategoryID" />
                <asp:Parameter Name="ImageFile" />
                <asp:Parameter Name="UnitPrice" />
                <asp:Parameter Name="OnHand" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
