﻿<%@ Page Title="Client FollowUp" Async="true"  Language="C#" MasterPageFile="~/AKodam_Management/AKSS_Management.Master" 
         AutoEventWireup="true" CodeBehind="ClientFollowUpMaster.aspx.cs"
         Inherits="AKSS_Management.AKodam_Management.ClientFollowUpMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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

     <asp:Panel ID="Panel1" runat="server" class="card"  >
         <div class="pagetitle my-3 mx-3">
             <h1>Client Follow Up Master</h1>
         </div>
      <div class="row">
        
        <div class="col-lg-6">
 
          <div class="card ">
            <div class="card-body">
              <h5 class="card-title">Client Personal Info</h5>              
              <div class="row g-3 ">
                  <div class="col-md-6 mb-3">
                  <div class="form-floating">
                    <asp:TextBox id="txtClientId" runat="server" class="form-control"   AutoPostBack="true" placeholder="Client Id"></asp:TextBox> <%--OnTextChanged="txtUserId_TextChanged"--%>
                    <label for="txtClientId">Client Id</label>
                  </div>
                </div>
                <div class="col-md-6 mb-3">
                  <div class="form-floating">
                     <asp:TextBox id="txtClientName" runat="server" class="form-control"   placeholder="Client Name" ></asp:TextBox>                    
                    <label for="txtClientName">Client Name</label>
                  </div>
                </div>               
              </div>
             <div class="row g-3">
              <div class="col-md-6 mb-3">
               <div class="form-floating">
                  <asp:TextBox id="txtAge" runat="server" class="form-control" placeholder="Age" ></asp:TextBox>                                        
                 <label for="txtAge">Age</label>
               </div>
             </div>
               <div class="col-md-6 mb-3">
                <%-- <div class="">                 
                     <label for="RdlGendeer">Gender</label>
                    <asp:RadioButtonList ID="RdlGendeer"  runat="server" RepeatDirection="Horizontal" CssClass="form-control" >
                        <asp:ListItem Text="Male" Value="Male" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="Female" Value="Female" ></asp:ListItem>
                        <asp:ListItem Text="Other" Value="Other" ></asp:ListItem>
                    </asp:RadioButtonList>                   
                 </div>--%>
                    <div class="form-floating mb-3">
                    <asp:DropDownList id="DdlGender" runat="server" class="form-select"  aria-label="State" >
                       <asp:ListItem Text="Male" Value="Male" Selected="True"></asp:ListItem>
                       <asp:ListItem Text="Female" Value="Female" ></asp:ListItem>
                       <asp:ListItem Text="Other" Value="Other" ></asp:ListItem>
                    </asp:DropDownList>
                    <label for="DdlGender">Gender</label>
                  </div>
               </div>
             </div>
              <div class="row g-3">
                <div class="col-md-6 mb-3">
                  <div class="form-floating">
                    <asp:TextBox id="txtDOB" runat="server" class="form-control"   placeholder="DOB" ></asp:TextBox>                                        
                    <label for="txtDOB">DOB</label>
                  </div>
                </div>
                <div class="col-6 mb-3">
                     <div class="form-floating">
                       <asp:TextBox id="txtDescription" runat="server" class="form-control" TextMode="MultiLine" Height="100px" Width="100%" placeholder="Description" ></asp:TextBox>                                        
                       <label for="txtDescription">Description</label>
                     </div>
                </div>
              </div>
              <div class="row g-3">
                <div class="col-md-6 mb-3">                
                    <div class="form-floating">
                      <asp:TextBox id="txtCategory" runat="server"  class="form-control"   placeholder="Category" ></asp:TextBox>                                        
                      <label for="txtCategory">Category</label>
                    </div>                 
                </div>
               
             </div>
                       
            </div>
          </div>

        </div>

          <div class="col-lg-6">
              <div class="card ">
                  <div class="card-body">
                       <h5 class="card-title">Client Address Info</h5>  
                       <div class="row g-3 ">
                         <div class="col-md-6 mb-3">
                           <div class="form-floating mb-3">
                           <asp:DropDownList id="DdlCountry" runat="server" class="form-select"  aria-label="Country" >
                             <asp:ListItem Value="Select" Text="Select" selected="True">Select</asp:ListItem>
                             <asp:ListItem Value="India" Text="India" >India</asp:ListItem>
                             <asp:ListItem value="US"  Text="US" >US</asp:ListItem>
                             <asp:ListItem value="UK"  Text="UK" >UK</asp:ListItem>
                           </asp:DropDownList>
                           <label for="DdlCountry">Country</label>
                         </div>
                       </div>
                       <div class="col-md-6 mb-3">
                           <div class="form-floating mb-3">
                           <asp:DropDownList id="DdlState" runat="server" class="form-select"  aria-label="State" >
                             <asp:ListItem Value="Select" Text="Select" selected="True">Select</asp:ListItem>
                             <asp:ListItem Value="Maharashtra" Text="Maharashtra">Maharashtra</asp:ListItem>
                             <asp:ListItem value="Pune"  Text="Pune" >Pune</asp:ListItem>
                             <asp:ListItem value="Noida" Text="Noida" >Noida</asp:ListItem>
                           </asp:DropDownList>
                           <label for="DdlState">State</label>
                         </div>
                       </div>               
                     </div>
                    <div class="row g-3">
                     <div class="col-md-6 mb-3">
                           <div class="form-floating mb-3">
                           <asp:DropDownList id="DdlCity" runat="server" class="form-select"  aria-label="City" >
                             <asp:ListItem Value="Select" Text="Select" selected="True">Select</asp:ListItem>
                             <asp:ListItem Value="Bhiwandi" Text="Bhiwandi">Bhiwandi</asp:ListItem>
                             <asp:ListItem value="Kalyan"  Text="Kalyan" >Kalyan</asp:ListItem>
                             <asp:ListItem value="Thane" Text="Thane" >Thane</asp:ListItem>
                           </asp:DropDownList>
                           <label for="DdlCity">City</label>
                         </div>
                    </div>
                      <div class="col-md-6 mb-3">
                        <div class="form-floating">
                           <asp:TextBox id="txtAddress1" runat="server" class="form-control" TextMode="MultiLine" Rows="3" Height="100px" Width="100%" placeholder="Address1"></asp:TextBox>                                                 
                          <label for="txtAddress1">Address1</label>
                        </div>
                      </div>
                    </div>
                     <div class="row g-3">
                       <div class="col-md-6 mb-3">
                         <div class="form-floating">
                           <asp:TextBox id="txtAddress2" runat="server" class="form-control" TextMode="MultiLine" Rows="3" Height="100px" Width="100%" placeholder="Address2"></asp:TextBox>                                                 
                          <label for="txtAddress2">Address2</label>
                         </div>
                       </div>
                       <div class="col-6 mb-3">
                         <div class="form-floating">
                           <asp:TextBox id="txtOpenHours" runat="server" class="form-control" TextMode="MultiLine" Rows="3" Height="100px" Width="100%" placeholder="Open Hours"></asp:TextBox>                                                 
                          <label for="txtOpenHours">Open Hours</label>
                         </div>
                       </div>
                     </div>
                  </div>
              </div>
          </div>

             <div class="col-lg-6">
             <div class="card ">
           <div class="card-body">
                <h5 class="card-title">Client Contact Info</h5>  
                <div class="row g-3 ">
                  <div class="col-md-6 mb-3">
                  <div class="form-floating">
                    <asp:TextBox id="txtWebsite" runat="server" class="form-control" placeholder="Website"></asp:TextBox> <%--OnTextChanged="txtUserId_TextChanged"--%>
                    <label for="txtWebsite">Website</label>
                  </div>
                </div>
                <div class="col-md-6 mb-3">
                  <div class="form-floating">
                     <asp:TextBox id="txtDirection" runat="server" class="form-control"   placeholder="Direction" ></asp:TextBox>                    
                    <label for="txtDirection">Direction</label>
                  </div>
                </div>               
              </div>
             <div class="row g-3">
              <div class="col-md-6 mb-3">
               <div class="form-floating">
                  <asp:TextBox id="txtRating" runat="server" class="form-control" placeholder="Rating" ></asp:TextBox>                                        
                 <label for="txtRating">Rating</label>
               </div>
             </div>
               <div class="col-md-6 mb-3">
                 <div class="form-floating">
                    <asp:TextBox id="txtMobileNumber" runat="server" class="form-control"  placeholder="Mobile Number"></asp:TextBox>                                          
                   <label for="txtMobileNumber">Mobile Number</label>
                 </div>
               </div>
             </div>
              <div class="row g-3">
                <div class="col-md-6 mb-3">
                  <div class="form-floating">
                    <asp:TextBox id="txtTelephoneNumber" runat="server" class="form-control"   placeholder="Telephone Number" ></asp:TextBox>                                        
                    <label for="txtTelephoneNumber">Telephone Number</label>
                  </div>
                </div>
                <div class="col-6 mb-3">
                     <div class="form-floating">
                     <asp:TextBox id="txtEmailId" runat="server" class="form-control" TextMode="Email" placeholder="Email" ></asp:TextBox>                                        
                     <label for="txtEmailId">Email</label>
                     </div>
                </div>
              </div>
               <div class="row g-3">
                   <div class="col-md-6 mb-3">
                     <div class="form-floating">
                       <asp:TextBox id="txtTwitter" runat="server" class="form-control" placeholder="Twitter" ></asp:TextBox>                                        
                       <label for="txtTwitter">Twitter</label>
                     </div>
                   </div>
                   <div class="col-6 mb-3">
                        <div class="form-floating">
                        <asp:TextBox id="txtFacebook" runat="server" class="form-control" TextMode="Email"  placeholder="Facebook" ></asp:TextBox>                                        
                        <label for="txtFacebook">Facebook</label>
                        </div>
                   </div>
                 </div>
                  <div class="row g-3">
                   <div class="col-md-6 mb-3">
                     <div class="form-floating">
                       <asp:TextBox id="txtInstagram" runat="server" class="form-control" placeholder="Instagram" ></asp:TextBox>                                        
                       <label for="txtInstagram">Instagram</label>
                     </div>
                   </div>
                   <div class="col-6 mb-3">
                        <div class="form-floating">
                        <asp:TextBox id="txtLinkedin" runat="server" class="form-control" placeholder="Linkedin" ></asp:TextBox>                                        
                        <label for="txtLinkedin">Linkedin</label>
                        </div>
                   </div>
                 </div>
           </div>
       </div>
   </div>

           <div class="col-lg-6">
             <div class="card ">
           <div class="card-body">
                <h5 class="card-title">Client Follow Up Info</h5>  
                <div class="row g-3 ">
                  <div class="col-md-6 mb-3">
                    <div class="form-floating mb-3">
                    <asp:DropDownList id="DdlCallReceived" runat="server" class="form-select"  aria-label="CallReceived" >
                        <asp:ListItem Value="Select" Text="Select" selected="True">Select</asp:ListItem>
                        <asp:ListItem Value="Yes" Text="Yes">Yes</asp:ListItem>
                        <asp:ListItem value="No"  Text="No" >No</asp:ListItem>
                        <asp:ListItem value="Swith Off" Text="Swith Off" >Swith Off</asp:ListItem>
                        <asp:ListItem value="Out Of Range" Text="Out Of Range" >Out Of Range</asp:ListItem>
                        <asp:ListItem value="Network Problem" Text="Network Problem" >Network Problem</asp:ListItem>
                        <asp:ListItem value="Wrong Number" Text="Wrong Number" >Wrong Number</asp:ListItem>
                        <asp:ListItem value="Number Not Present" Text="Number Not Present" >Number Not Present</asp:ListItem>
                    </asp:DropDownList>
                    <label for="DdlCallReceived">Call Received</label>
                    </div>
                </div>
                <div class="col-md-6 mb-3">
                    <div class="form-floating mb-3">
                    <asp:DropDownList id="DdlWhatsApp" runat="server" class="form-select"  aria-label="WhatsApp" >
                        <asp:ListItem Value="Select" Text="Select" selected="True">Select</asp:ListItem>
                        <asp:ListItem Value="Yes" Text="Yes">Yes</asp:ListItem>
                        <asp:ListItem value="No"  Text="No" >No</asp:ListItem>
                        <asp:ListItem value="WhatsApp Not Present" Text="WhatsApp Not Present" >WhatsApp Not Present</asp:ListItem>
                    </asp:DropDownList>
                    <label for="DdlWhatsApp">WhatsApp</label>
                    </div>
                </div>               
              </div>
             <div class="row g-3">
              <div class="col-md-6 mb-3">
               <div class="form-floating">
                  <asp:TextBox id="txtFollowUpDateTime" runat="server" class="form-control" TextMode="DateTimeLocal" placeholder="Follow Up Date Time" ></asp:TextBox>                                        
                 <label for="txtFollowUpDateTime">Follow Up Date Time</label>
               </div>
             </div>
               <div class="col-md-6 mb-3">
                 <div class="form-floating">
                    <asp:TextBox id="txtFollowUpReason" runat="server" class="form-control"  TextMode="MultiLine" Rows="3" Height="100px" Width="100%"  placeholder="Follow Up Reason"></asp:TextBox>                                          
                   <label for="txtFollowUpReason">Follow Up Reason</label>
                 </div>
               </div>
             </div>
              <div class="row g-3">
                <div class="col-md-6 mb-3">
                  <div class="form-floating">
                  <asp:TextBox id="txtNewFollowUpDateTime" runat="server" class="form-control"  TextMode="DateTimeLocal"  placeholder="New Follow Up Date Time" ></asp:TextBox>                                        
                 <label for="txtNewFollowUpDateTime">New Follow Up Date Time</label>
                  </div>
                </div>
                <div class="col-6 mb-3">
                 <div class="form-floating">
                    <asp:TextBox id="txtNewFollowUpReason" runat="server" class="form-control"  TextMode="MultiLine" Rows="3" Height="100px" Width="100%"  placeholder="New Follow Up Reason"></asp:TextBox>                                          
                   <label for="txtNewFollowUpReason">New Follow Up Reason</label>
                 </div>
                </div>
              </div>
              <div class="row g-3">
                <div class="col-md-6 mb-3">
                  <div class="form-floating">
                  <asp:TextBox id="txtNotes" runat="server" class="form-control" TextMode="MultiLine" Rows="3" Height="100px" Width="100%"  placeholder="Notes" ></asp:TextBox>                                        
                 <label for="txtNotes">Notes</label>
                  </div>
                </div>
                <div class="col-6 mb-3">
                 <div class="form-check">
                    <asp:CheckBox id="ChkActive" runat="server" Checked="true" class="form-check-input" />
                   <label for="ChkActive" class="form-check-label">Active</label>
                 </div>
                </div>
              </div>
           </div>
       </div>
   </div>

              <div class="row g-3 mb-3">
    
       <div class="text-center">
         <%--<button type="submit" class="btn btn-primary">Submit</button>
         <button type="reset" class="btn btn-secondary">Reset</button>--%>

           <asp:Button ID="BtnSave" runat="server" Text="Submit"  class="btn btn-primary"/> <%--OnClick="BtnSave_Click"--%>
           <%--<asp:Button ID="btnUpdate" runat="server" Text="Modify" OnClick="BtnUpdate_Click" class="btn btn-primary"/>--%>
            <asp:Button ID="BtnDelete" runat="server" Text="Delete"  type="reset" class="btn btn-danger"/> <%--OnClick="BtnDelete_Click"--%>
           <asp:Button ID="BtnReset" runat="server" Text="Reset" type="reset" class="btn btn-secondary"/>  <%--OnClick="BtnReset_Click" --%>
           <asp:Button ID="BtnExportToExcel" runat="server" Text="Export To Excel" class="btn btn-primary"/> <%-- OnClick="BtnExportToExcel_Click"--%>
           
       </div>
     </div>

      </div>

     </asp:Panel>

     <asp:Panel ID="PnlGV" runat="server" class="card" ScrollBars="Auto" Width="100%" >
        <%-- <div class="pagetitle">
          <h3 class="mb-3">User Master List</h3>
         </div>--%>

         <div class="row">
             <div class="col-lg-12">
                 <div class="card-body">
                     <h5 class="card-title">User Master List</h5>

                     <asp:GridView ID="gvUserMaster" runat="server" AutoGenerateColumns="false" CssClass="table datatable" 
                          ShowHeader="true">
                         <Columns>
                             <asp:BoundField DataField="UserId" HeaderText="User Id" />
                             <asp:BoundField DataField="UserName" HeaderText="User Name" />
                             <asp:BoundField DataField="Email" HeaderText="Email" />
                             <%-- <asp:BoundField DataField="PasswordHash" HeaderText="Password" />--%>
                             <asp:BoundField DataField="FullName" HeaderText="FullName" />
                             <asp:BoundField DataField="Role" HeaderText="Role" />
                             <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" />
                             <asp:BoundField DataField="IsActive" HeaderText="Active" />

                         </Columns>
                     </asp:GridView>
                 </div>
             </div>
         </div>

     </asp:Panel>
    </section>

  </main><!-- End #main -->



</asp:Content>