<%@ Page Title="AKSS Code"  Async="true" Language="C#" MasterPageFile="~/AKodam_Management/AKSS_Management.Master" AutoEventWireup="true" 
    CodeBehind="AKSS_Code.aspx.cs" Inherits="AKSS_Management.AKodam_Management.AKSS_Code" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">
    function printDiv() 
    {

     console.log(" printDiv called " );
        var divToPrint = document.getElementById('<%= DivResult.ClientID %>');

      var newWin=window.open('','Print-Window');

      newWin.document.open();

        newWin.document.write('<html><body onload="window.print()">'+divToPrint.innerHTML+'</body></html>');

      newWin.document.close();

      setTimeout(function(){newWin.close();},10);

    }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
  <main id="main" class="main">

<%--    <div class="pagetitle">
      <h1>User Master</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="/DefaultAKSS.aspx">Home</a></li>
          <li class="breadcrumb-item">Admin Panel</li>
          <li class="breadcrumb-item active">User Master</li>
        </ol>
      </nav>
    </div>--%>
    <!-- End Page Title -->

    <section class="section">

     <asp:Panel ID="PnlAkssCode" runat="server" class="card"  >
         
      <div class="row">
        
        <div class="col-lg-12">
       
            <div class="card-body">
              <h5 class="card-title">AKSS ShortCut Code</h5>
              
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>

                <ajaxToolkit:TabContainer id="TabContUserMasterList" runat="server" ActiveTabIndex="1" CssClass="card-body">

                     <ajaxToolkit:TabPanel ID="TabPanel1" runat="server" TabIndex="0" HeaderText="Developer" CssClass="mb-3">
                         <ContentTemplate></ContentTemplate>
                    </ajaxToolkit:TabPanel>

                    <ajaxToolkit:TabPanel ID="TabPanelDeveloper" runat="server" TabIndex="1" HeaderText="DBA" CssClass="mb-3">
                        <ContentTemplate>
                          <div class="row g-3 my-3">
                                <div class="col-md-4 mb-3">
                                <div class="form-floating mb-3">
                                <asp:TextBox id="TxtTableName" runat="server" class="form-control" TextMode="SingleLine" 
                                             ToolTip="Enter Table Name" aria-label="TxtTableName" >                                   
                                </asp:TextBox>
                                <label for="TxtTableName">Table Name</label>
                              </div>
                              </div>
                            <div class="col-md-4 mb-3">
                              <div class="form-floating mb-3">
                              <asp:DropDownList id="DdlCategory" runat="server" class="form-select"  aria-label="Category" >
                                <asp:ListItem Value="SP" Text="SP" selected="True">SP</asp:ListItem>
                                <asp:ListItem value="Function"  Text="Function" >Function</asp:ListItem>
                                <asp:ListItem value="View"  Text="View" >View</asp:ListItem>
                              </asp:DropDownList>
                              <label for="DdlCategory">Role</label>
                            </div>
                            </div>
                            <div class="col-4 mb-3">
                                <div class="form-floating mb-3">
                                <asp:DropDownList id="DdlSubCategory" runat="server" class="form-select"  aria-label="Sub Category" >
                                  <asp:ListItem Value="Select" Text="Select" selected="True">Select</asp:ListItem>
                                  <asp:ListItem value="value1"  Text="Text1" >Text1</asp:ListItem>
                                  <asp:ListItem value="value2"  Text="Text2" >Text2</asp:ListItem>
                                </asp:DropDownList>
                                <label for="DdlSubCategory">Sub Category</label>
                              </div>
                            </div>
                          </div>
                        
                         <div class="row g-3 mb-3">
 
                            <div class="text-center">
                            
                                <asp:Button ID="BtnSave" runat="server" Text="Submit" OnClick="BtnSave_Click" class="btn btn-primary"/>                                
                                <asp:Button ID="BtnReset" runat="server" Text="Reset" OnClick="BtnReset_Click" type="reset" class="btn btn-secondary"/>
                                <asp:Button ID="BtnPrint" runat="server" Text="Print" OnClientClick="printDiv();" class="btn btn-primary"/>
        
                            </div>
                          </div>
                           <div class="row g-3">
                             <div class="col-md-12 mb-3">
                             <div class="mb-3">
                             O/P :
                             <asp:TextBox id="TxtResult" runat="server" class="form-control" 
                                          TextMode="MultiLine" Height="700px" Width="100%"
                                          ToolTip="Out Put" aria-label="TxtTableName" >                                   
                             </asp:TextBox>
                           
                           </div>
                           </div>
                            </div>
                            <%--<div class="row g-3">
                                <div class="row g-3" id="DivResult" runat="server" style="display: block;">
                                    <table>
                                        <tr>
                                            <td style="width:700px">
                                                 <pre id="PResult" runat="server" >

                                                  </pre>
                                            </td>
                                        </tr>
                                    </table>
                                   
                                </div>
                            </div>--%>
                    

                            </ContentTemplate>
                    </ajaxToolkit:TabPanel>                   

                    <ajaxToolkit:TabPanel ID="TabPanel2" runat="server" TabIndex="2" HeaderText="Designer" CssClass="mb-3">
                        <ContentTemplate></ContentTemplate>
                    </ajaxToolkit:TabPanel>

                </ajaxToolkit:TabContainer>

                    <div class="row g-3">
                        <div class="row g-3" id="DivResult" runat="server" style="display: block;">
                            <table>
                                <tr>
                                    <td style="width: 700px">
                                        <pre id="PResult" runat="server">

                                        </pre>
                                    </td>
                                </tr>
                            </table>

                        </div>
                    </div>

                </ContentTemplate>
                </asp:UpdatePanel>               

            </div>
         
        </div>
      </div>

    </asp:Panel>
   
    </section>

  </main>
    <!-- End #main -->
</asp:Content>
