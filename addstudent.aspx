<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="addstudent.aspx.cs" Inherits="ppsclasses.addstudent" %>
<asp:Content ID="C2" ContentPlaceHolderID="head" runat="server">
    <link href="assets/css/grid.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <style>
    .register{
    background: -webkit-linear-gradient(left, #3931af, #00c6ff);
    margin-top: 3%;
    padding: 3%;
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
.register-left{
    text-align: center;
    color: #fff;
    margin-top: 4%;
}
.register-left input{
    border: none;
    border-radius: 1.5rem;
    padding: 2%;
    width: 60%;
    background: #f8f9fa;
    font-weight: bold;
    color: #383d41;
    margin-top: 30%;
    margin-bottom: 3%;
    cursor: pointer;
}
.register-right{
    background: #f8f9fa;
    border-top-left-radius: 10% 20%;
    border-bottom-left-radius: 10% 20%;
}
.register-left img{
    margin-top: 15%;
    margin-bottom: 5%;
    width: 25%;
    -webkit-animation: mover 2s infinite  alternate;
    animation: mover 1s infinite  alternate;
}
@-webkit-keyframes mover {
    0% { transform: translateY(0); }
    100% { transform: translateY(-20px); }
}
@keyframes mover {
    0% { transform: translateY(0); }
    100% { transform: translateY(-20px); }
}
.register-left p{
    font-weight: lighter;
    padding: 12%;
    margin-top: -9%;
}
.register .register-form{
    padding: 10%;
    margin-top: 10%;
}
.register .register-form1{
    padding: 10%;
    margin-top: 10%;
    align-content:center;
}
.btnRegister{
    float: right;
    margin-top: 10%;
    border: none;
    border-radius: 1.5rem;
    padding: 2%;
    background: #0062cc;
    color: #fff;
    font-weight: 600;
    width: 50%;
    cursor: pointer;
    transition: 0.5s;
    background-image: linear-gradient(to right, #fbc2eb 0%, #a6c1ee 51%, #fbc2eb 100%);
}
.btnRegister:hover{
    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
    background-image: linear-gradient(to right, #f6d365 0%, #fda085 51%, #f6d365 100%);
}
.register .nav-tabs{
    margin-top: 3%;
    border: none;
    background: #0062cc;
    border-radius: 1.5rem;
    width: 28%;
    float: right;
}
.register .nav-tabs .nav-link{
    padding: 2%;
    height: 34px;
    font-weight: 600;
    color: #fff;
    border-top-right-radius: 1.5rem;
    border-bottom-right-radius: 1.5rem;
}
.register .nav-tabs .nav-link:hover{
    border: none;
}
.register .nav-tabs .nav-link.active{
    width: 100px;
    color: #0062cc;
    border: 2px solid #0062cc;
    border-top-left-radius: 1.5rem;
    border-bottom-left-radius: 1.5rem;
}
.register-heading{
    text-align: center;
    margin-top: 8%;
    margin-bottom: -15%;
    color: #495057;
}</style>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="server">
    <div class="container register">
                <div class="row">
                    <div class="col-md-3 register-left">
                        <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt="">
                        <h3>Admin</h3>
                        <p>To add newly admitted student to database and provide login details to them</p>
                        <asp:Label ID="L1" runat="server" ForeColor="White"></asp:Label>
                    </div>
                    <div class="col-md-9 register-right">
                        <ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">View</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Add</a>
                            </li>
                        </ul>
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade active show" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <h3 class="register-heading">View Student &nbsp &nbsp<asp:TextBox ID="txtSearch" runat="server" OnTextChanged="Search" AutoPostBack="true" placeholder="Enter Name or Code" ></asp:TextBox></h3>
                                <br /><br />
                                <br /><br />
                                <br />
                                <br />
                                <center>
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" AllowPaging="true"
                                PageSize="5" CssClass="mydatagrid" PagerStyle-CssClass="pager" 
                                HeaderStyle-CssClass="header" RowStyle-CssClass="rows" OnPageIndexChanging="OnPaging" HorizontalAlign="Center" DataKeyNames="sid"
                                OnRowDataBound="OnRowDataBound" OnRowEditing="OnRowEditing" OnRowCancelingEdit="OnRowCancelingEdit" OnRowUpdating="OnRowUpdating" OnRowDeleting="OnRowDeleting" EmptyDataText="No records has been added.">
                                <Columns>
                                <asp:TemplateField HeaderText="Student Code">
                                    <ItemTemplate>
                                        <asp:Label ID="lblName" runat="server" Text='<%# Eval("sid") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Name">
                                    <ItemTemplate>
                                        <asp:Label ID="lblfname" runat="server" Text='<%# Eval("fname") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtname" runat="server" Text='<%# Eval("fname") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Class">
                                    <ItemTemplate>
                                        <asp:Label ID="lblClass" runat="server" Text='<%# Eval("cl") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtclass" runat="server" Text='<%# Eval("cl") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Competetive">
                                    <ItemTemplate>
                                        <asp:Label ID="lblanswer" runat="server" Text='<%# Eval("cl2") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Date">
                                    <ItemTemplate>
                                        <asp:Label ID="lblDate" runat="server" Text='<%# Eval("date") %>'></asp:Label>
                                    </ItemTemplate> 
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Password">
                                    <ItemTemplate>
                                        <asp:Label ID="lblpass" runat="server" Text='<%# Eval("pwd") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:CommandField ShowEditButton="true" ShowDeleteButton="true" HeaderText="Edit"/>
                                </Columns>
                                </asp:GridView>
                                </center>
                            </div>
                             <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                <h3 class="register-heading">Add Student</h3>
                                <div class="row register-form">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:TextBox ID="TB1" CssClass="form-control" placeholder="Student code*" runat="server" required=""></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="Re5" runat="server" ForeColor="Red" ErrorMessage="Invalid Mobile No" ControlToValidate="TB1" ValidationExpression="^[0-9]{7}$" Display="Dynamic"></asp:RegularExpressionValidator>
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox ID="TB2" CssClass="form-control" placeholder="Full Name*" runat="server" required=""></asp:TextBox>
                                            
                                            <asp:RegularExpressionValidator ID="Re1" runat="server" ErrorMessage="Invalid name" ForeColor="Red" ControlToValidate="TB2" ValidationExpression="^[a-zA-Z'.\s]{1,30}" Display="Dynamic"></asp:RegularExpressionValidator>
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox ID="TB5" CssClass="form-control" ForeColor="Red" placeholder="Password*" runat="server" required="" TextMode="Password"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox ID="TB6" CssClass="form-control" placeholder="Confirm Password*" runat="server" required="" TextMode="Password"></asp:TextBox>
                                            <asp:CompareValidator ID="CompareValidator1" ErrorMessage="Passwords do not match." 
                                            ForeColor="Red" ControlToCompare="TB5" ControlToValidate="TB6" runat="server" Display="Dynamic" />
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:TextBox ID="TB3" CssClass="form-control" placeholder="Student Mobile*" runat="server" required=""></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="Re3" runat="server" ForeColor="Red" ErrorMessage="Invalid Mobile No" ControlToValidate="TB3" ValidationExpression="^[0-9]{10}$" Display="Dynamic"></asp:RegularExpressionValidator>
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox ID="TB8" CssClass="form-control" runat="server" placeholder="Class* (e.g 11)"></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="Re6" runat="server" ForeColor="Red" ErrorMessage="Invalid Entry" ControlToValidate="TB8" ValidationExpression="^[0-9]{2}$" Display="Dynamic"></asp:RegularExpressionValidator>
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox ID="TB7" runat="server" CssClass="form-control" placeholder="Competetive Course"></asp:TextBox>
                                            
                                            <asp:RegularExpressionValidator ID="Re4" runat="server" ErrorMessage="Invalid" ControlToValidate="TB7" ValidationExpression="^[a-zA-Z'.\s]{1,30}" Display="Dynamic"></asp:RegularExpressionValidator>
                                        </div>
                                        <div class="form-group">
                                            
                                        </div>
                                        <asp:Button ID="Bu2" runat="server" Text="ADD STUDENT" CssClass="btnRegister" OnClick="b1_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    <br /><br />                           
    <script type="text/javascript"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript" src="scripts/jquery.blockUI.js"></script>
<script type="text/javascript">
    $(function () {
        BlockUI("GridView1");
        $.blockUI.defaults.css = {};
    });
    function BlockUI(elementID) {
        var prm = Sys.WebForms.PageRequestManager.getInstance();
        prm.add_beginRequest(function () {
            $("#" + elementID).block({ message: '<div align = "center">' + '<img src="images/loadingAnim.gif"/></div>',
                css: {},
                overlayCSS: { backgroundColor: '#000000', opacity: 0.6, border: '3px solid #63B2EB' }
            });
        });
        prm.add_endRequest(function () {
            $("#" + elementID).unblock();
        });
    };
</script>
</asp:Content>
