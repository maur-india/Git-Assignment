<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="viewresult.aspx.cs" Inherits="ppsclasses.viewresult" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="assets/css/grid.css" rel="stylesheet" />
    <style> 
        #result{
        background-image: url('http://getwallpapers.com/wallpaper/full/a/5/d/544750.jpg');
        background-size: cover;
        background-repeat: no-repeat;
        height: 100%;
        font-family: 'Numans', sans-serif;
        padding-top: 80px;
        padding-bottom: 100px;
        position: relative;
        align-content: center;  
    }

    .container{
        height: 100%;
         
    }
    .card{
        height: 400px;
        margin-top: auto;
        margin-bottom: auto;
        width: 405px;
        background-color: rgba(0,0,0,0.5) !important;
        padding-left: 4px;
        padding-top: 12px;
        padding-bottom: 5px;
	    position: relative;
	    box-shadow: 10px 10px 42px 0 rgba(0,0,0,0.75);
        align-items: center;
    }
    .card:hover{
        border: 2px dashed #f0a591;
    }
    .txt{
  width: 80px;
  height: 40px;
  box-sizing: border-box;
  border: 2px solid #ccc;
  border-radius: 4px;
  font-size: 16px;
  font-weight: bold;
  font-stretch: expanded;
  background-color: white;
  background-repeat: no-repeat;
  padding: 12px 5px 12px 45px;
  transition: width 0.4s ease-in-out;
  padding-right: 5px;
  background-image: url('assets/img/search.png');
}
.txt:focus{
    width: 70%;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CP1" runat="server">
    <div id="result"> 
        <div class="container"> 
           <div class="d-flex justify-content-center h-100">
            <div class="card">
                <asp:Label ID="Label1" runat="server" Text="Enter Class & Topic" ForeColor="White" ></asp:Label>
                <asp:TextBox ID="TBox1" runat="server" CssClass="txt" AutoPostBack="true"></asp:TextBox>
            <br />
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Sid" DataSourceID="SqlDataSource1" EmptyDataText = "No files uploaded" CellPadding="4" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" PageSize="7" Width="388px">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="Sid" HeaderText="SID" SortExpression="Sid" />
                        <asp:BoundField DataField="ename" HeaderText="Exam" SortExpression="ename" />
                        <asp:BoundField DataField="class" HeaderText="Full Marks" SortExpression="class" />
                        <asp:BoundField DataField="marks" HeaderText="Marks" SortExpression="marks" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:dc1 %>" DeleteCommand="DELETE FROM [result] WHERE [id] = @original_id AND [Sid] = @original_Sid AND [class] = @original_class AND [ename] = @original_ename AND [marks] = @original_marks" InsertCommand="INSERT INTO [result] ([Sid], [class], [ename], [marks]) VALUES (@Sid, @class, @ename, @marks)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [result] ORDER BY [Sid]" UpdateCommand="UPDATE [result] SET [Sid] = @Sid, [class] = @class, [ename] = @ename, [marks] = @marks WHERE [id] = @original_id AND [Sid] = @original_Sid AND [class] = @original_class AND [ename] = @original_ename AND [marks] = @original_marks">
                    <DeleteParameters>
                        <asp:Parameter Name="original_id" Type="Int32" />
                        <asp:Parameter Name="original_Sid" Type="String" />
                        <asp:Parameter Name="original_class" Type="String" />
                        <asp:Parameter Name="original_ename" Type="String" />
                        <asp:Parameter Name="original_marks" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Sid" Type="String" />
                        <asp:Parameter Name="class" Type="String" />
                        <asp:Parameter Name="ename" Type="String" />
                        <asp:Parameter Name="marks" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Sid" Type="String" />
                        <asp:Parameter Name="class" Type="String" />
                        <asp:Parameter Name="ename" Type="String" />
                        <asp:Parameter Name="marks" Type="Int32" />
                        <asp:Parameter Name="original_id" Type="Int32" />
                        <asp:Parameter Name="original_Sid" Type="String" />
                        <asp:Parameter Name="original_class" Type="String" />
                        <asp:Parameter Name="original_ename" Type="String" />
                        <asp:Parameter Name="original_marks" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
   </div>
  </div>
 </div>
</asp:Content>
