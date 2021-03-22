<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="uview.aspx.cs" Inherits="ppsclasses.uview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cp10" runat="server">
    <link href="assets/css/grid.css" rel="stylesheet" />
    <style>
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
  background-image: url('assets/img/arrow.gif');
}
.txt:focus{
    width: 50%;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="colorlib-about">
				<div class="colorlib-narrow-content">
					<div class="row">
						<div class="col-md-4 animate-box" data-animate-effect="fadeInLeft">
							<h2 class="colorlib-heading">Notice</h2>
							<p>"Life is Chemistry, Dilute your sorrow, Evaporate your worries, Filter Your mistake, Boil your Ego, You will get the 'Crystal of happiness'. "  </p>
						</div>
						<div class="col-md-8 animate-box" data-animate-effect="fadeInRight">
							<div class="fancy-collapse-panel">
								<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
									<div class="panel panel-default">
									    <div class="panel-heading" role="tab" id="headingTwo">
									        <h4 class="panel-title">
									            <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo"># View Notice
									            </a>
									        </h4>
									    </div>
									    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
									        <div class="panel-body">
                                                <asp:Label ID="clenter2" runat="server" Text="Course: " ForeColor="Black" Font-Bold="true"></asp:Label>
                                                <asp:Label ID="Labelclass1" runat="server" Text="Label"></asp:Label>
                                                <asp:Label ID="Labelcourse1" runat="server" Text="Label"></asp:Label>
                                                <br />
                                                <asp:Label ID="clenter" runat="server" Text="Enter Class To view Notice" ForeColor="Black" ></asp:Label>
                                                <asp:TextBox ID="classenter" runat="server" CssClass="txt" OnTextChanged="Searchcl" AutoPostBack="true"></asp:TextBox>
                                                <br />
                                                <br />
									            <asp:GridView ID="notice" runat="server" AutoGenerateColumns="False" AllowPaging="true"
                                                EmptyDataText = "No files uploaded" CellPadding="4" PagerStyle-CssClass="pager" 
                                                HeaderStyle-CssClass="header" RowStyle-CssClass="rows"
                                                EnableModelValidation="True" ForeColor="#333333" GridLines="None"
                                                DataKeyNames="Id,f2" OnRowDataBound="notice_RowDataBound"
                                                onpageindexchanging="grdImages_PageIndexChanging" PageSize="5" Width="388px">
                                                    <Columns>
            <asp:TemplateField HeaderText = "Sl. No." HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Left" ControlStyle-Width="80px">
                <ItemTemplate>
                    <asp:Label ID="lblRowNumber" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Topic" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Left" ControlStyle-Width="300px">
                <ItemTemplate>
                    <asp:Label ID="lbl11" runat="server" Text='<%# Eval("topic") %>'></asp:Label>           
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Class" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Left" ControlStyle-Width="150px">
                <ItemTemplate>
                    <asp:Label ID="lbl12" runat="server" Text='<%# Eval("class") %>'></asp:Label>           
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Download" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:ImageButton ID="imgDownload1" runat="server" ImageUrl="~/assets/img/down.png" OnClick="imgDownload1_Click" ToolTip="Download Image" CausesValidation="false" />
                </ItemTemplate>
            </asp:TemplateField> 
         </Columns>
									            </asp:GridView>
									        </div>
									    </div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div id="get-in-touch" class="colorlib-bg-color">
				<div class="colorlib-narrow-content">
					<div class="row">
						<div class="col-md-6 animate-box" data-animate-effect="fadeInLeft">
							<h2>Get in Touch!</h2>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 col-md-offset-3 col-md-pull-3 animate-box" data-animate-effect="fadeInLeft">
							<p class="colorlib-lead">Have you Any Queries Regarding Study? You Can contact us.</p>
							<p><a href="#" class="btn btn-primary btn-learn">Contact Us!</a></p>
						</div>
					</div>
				</div>
			</div>
</asp:Content>
