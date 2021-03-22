<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="viewadlist.aspx.cs" Inherits="ppsclasses.viewadlist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="assets/css/grid.css" rel="stylesheet" />
 <style>
       *{
  margin:0;
  padding:0;
}

.container{  padding-top: 20px;
  padding-bottom: 20px;}
body{
  background-color: #111845;
}

.background-img{
  background-image: url("https://3.bp.blogspot.com/-piZWCW2uUbg/W2fPXxkWZgI/AAAAAAAAOu0/eydmMjTIqcwLMHEEr2H7imqoRTxMw4o9QCLcBGAs/s1600/among_trees_night_dribbble.png");
height: 400px;
  width: 800px;
  background-repeat: no-repeat;
  background-size: cover;
  margin: 5% auto;
  padding:20px;
  border: 1px solid #2a3cad;
  border-radius: 4px;
  box-shadow: 0px 0px 5px #2a3cad;
  position: relative;
  overflow: hidden;
}

.box .content{
  position:absolute;
  top:15px;
  left:15px;
  right:15px;
  bottom:15px;
  border:1px solid #f0a591;
  padding:20px;
  text-align:center;
  box-shadow: 0 5px 10px rgba(9,0,0,0.5);
  
}

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CP1" runat="server">
  <section>
  <div class="container">
    <div class="background-img">
        <center>
        <asp:Label ID="Ll1" runat="server" Text="View New Addmission List" ForeColor="LightSkyBlue" ></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" 
            EmptyDataText = "No files uploaded" CellPadding="4" PagerStyle-CssClass="pager" 
            HeaderStyle-CssClass="header" RowStyle-CssClass="rows" PageSize="10" GridLines="None" DataKeyNames="sid" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="sid" HeaderText="SID" InsertVisible="False" ReadOnly="True" SortExpression="sid" HeaderStyle-Width="50px" >
<HeaderStyle Width="50px"></HeaderStyle>
                </asp:BoundField>
                <asp:BoundField DataField="fname" HeaderText="Fname" SortExpression="fname" HeaderStyle-Width="100px" >
<HeaderStyle Width="100px"></HeaderStyle>
                </asp:BoundField>
                <asp:BoundField DataField="lname" HeaderText="Lname" SortExpression="lname" HeaderStyle-Width="100px" >
<HeaderStyle Width="100px"></HeaderStyle>
                </asp:BoundField>
                <asp:BoundField DataField="course" HeaderText="Course" SortExpression="course" HeaderStyle-Width="250px" >
<HeaderStyle Width="250px"></HeaderStyle>
                </asp:BoundField>
                <asp:BoundField DataField="mobile" HeaderText="Mobile" SortExpression="mobile" HeaderStyle-Width="100px" >
<HeaderStyle Width="100px"></HeaderStyle>
                </asp:BoundField>
                <asp:BoundField DataField="tid" HeaderText="TID" SortExpression="tid" HeaderStyle-Width="190px" >
<HeaderStyle Width="190px"></HeaderStyle>
                </asp:BoundField>
            </Columns>
<HeaderStyle CssClass="header"></HeaderStyle>

<PagerStyle CssClass="pager"></PagerStyle>

<RowStyle CssClass="rows"></RowStyle>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:dc1 %>" DeleteCommand="DELETE FROM [student] WHERE [sid] = @original_sid AND [fname] = @original_fname AND [lname] = @original_lname AND [course] = @original_course AND [mobile] = @original_mobile AND [tid] = @original_tid" InsertCommand="INSERT INTO [student] ([fname], [lname], [course], [mobile], [tid]) VALUES (@fname, @lname, @course, @mobile, @tid)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [sid], [fname], [lname], [course], [mobile], [tid] FROM [student] ORDER BY [sid]" UpdateCommand="UPDATE [student] SET [fname] = @fname, [lname] = @lname, [course] = @course, [mobile] = @mobile, [tid] = @tid WHERE [sid] = @original_sid AND [fname] = @original_fname AND [lname] = @original_lname AND [course] = @original_course AND [mobile] = @original_mobile AND [tid] = @original_tid">
                <DeleteParameters>
                    <asp:Parameter Name="original_sid" Type="Int32" />
                    <asp:Parameter Name="original_fname" Type="String" />
                    <asp:Parameter Name="original_lname" Type="String" />
                    <asp:Parameter Name="original_course" Type="String" />
                    <asp:Parameter Name="original_mobile" Type="String" />
                    <asp:Parameter Name="original_tid" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="fname" Type="String" />
                    <asp:Parameter Name="lname" Type="String" />
                    <asp:Parameter Name="course" Type="String" />
                    <asp:Parameter Name="mobile" Type="String" />
                    <asp:Parameter Name="tid" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="fname" Type="String" />
                    <asp:Parameter Name="lname" Type="String" />
                    <asp:Parameter Name="course" Type="String" />
                    <asp:Parameter Name="mobile" Type="String" />
                    <asp:Parameter Name="tid" Type="String" />
                    <asp:Parameter Name="original_sid" Type="Int32" />
                    <asp:Parameter Name="original_fname" Type="String" />
                    <asp:Parameter Name="original_lname" Type="String" />
                    <asp:Parameter Name="original_course" Type="String" />
                    <asp:Parameter Name="original_mobile" Type="String" />
                    <asp:Parameter Name="original_tid" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </center>
    </div>
  </div>
</section>
</asp:Content>
