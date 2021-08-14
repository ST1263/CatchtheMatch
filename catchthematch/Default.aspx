<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
    <center><asp:Panel ID="Panel1" runat="server"   Height="263px" Width="941px">
        <div class="d" style="height: 231px">
            <br /> 
            <h1 style="color: #0000CC">&nbsp;&nbsp;SEARCH</h1>
            <p style="color: #0000CC">
                &nbsp;</p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Size="Large" style="font-weight: 700" Text="I am Lokong For"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Font-Size="Large" style="font-weight: 700" Text="Age For"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Font-Size="Large" style="font-weight: 700" Text="Religon For"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Font-Size="Large" style="font-weight: 700" Text="Caste Category For"></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:DropDownList ID="dd1" runat="server" Height="27px" Width="76px" OnSelectedIndexChanged="DropDownList6_SelectedIndexChanged">
                <asp:ListItem>Slect</asp:ListItem>
                <asp:ListItem Value="MALE">Groom</asp:ListItem>
                <asp:ListItem Value="FEMALE">bride</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:DropDownList ID="age1" runat="server" Height="27px" Width="55px" style="margin-left: 0px">
            <asp:ListItem>18</asp:ListItem>
            <asp:ListItem>19</asp:ListItem>
              <asp:ListItem>20</asp:ListItem>
              <asp:ListItem>21</asp:ListItem>
              <asp:ListItem>22</asp:ListItem>
              <asp:ListItem>23</asp:ListItem>
              <asp:ListItem>24</asp:ListItem>
              <asp:ListItem>25</asp:ListItem>
              <asp:ListItem>26</asp:ListItem>
              <asp:ListItem>27</asp:ListItem>
              <asp:ListItem>28</asp:ListItem>
              <asp:ListItem>29</asp:ListItem>
              <asp:ListItem>30</asp:ListItem>
        </asp:DropDownList>&nbsp;<strong>To</strong> &nbsp;<asp:DropDownList ID="age2" runat="server" Height="27px" Width="56px">
            <asp:ListItem>18</asp:ListItem>
            <asp:ListItem>19</asp:ListItem>
            <asp:ListItem>20</asp:ListItem>
            <asp:ListItem>21</asp:ListItem>
            <asp:ListItem>22</asp:ListItem>
            <asp:ListItem>23</asp:ListItem>
            <asp:ListItem>24</asp:ListItem>
            <asp:ListItem>25</asp:ListItem>
            <asp:ListItem>26</asp:ListItem>
            <asp:ListItem>27</asp:ListItem>
            <asp:ListItem>28</asp:ListItem>
            <asp:ListItem>29</asp:ListItem>
            <asp:ListItem>30</asp:ListItem>
        </asp:DropDownList>  
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;   
            <asp:DropDownList ID="dd3" runat="server" Height="29px" Width="89px">
                <asp:ListItem>Hindu</asp:ListItem>
                <asp:ListItem>Muslim</asp:ListItem>
                <asp:ListItem>Christian</asp:ListItem>
                <asp:ListItem>Shikh</asp:ListItem>
                <asp:ListItem>Buddhist</asp:ListItem>
                <asp:ListItem>Jain</asp:ListItem>
            </asp:DropDownList> 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;   
            <asp:DropDownList ID="dd4" runat="server" Height="27px" Width="92px">
                <asp:ListItem>SC</asp:ListItem>
                <asp:ListItem>ST</asp:ListItem>
                <asp:ListItem>VJ/DT-NT(A)</asp:ListItem>
                <asp:ListItem>NT(B)</asp:ListItem>
                <asp:ListItem>NT(C)</asp:ListItem>
                <asp:ListItem>NT(D)</asp:ListItem>
                  <asp:ListItem>OBC</asp:ListItem>
                <asp:ListItem>SBC</asp:ListItem>
                  <asp:ListItem>SEBC</asp:ListItem>
                <asp:ListItem>OPEN</asp:ListItem>
            </asp:DropDownList> 

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 

            <asp:Button ID="Button1" runat="server" Height="37px" Text="Search" Width="90px" OnClick="Button1_Click"/>

            <table style="width: 100%">
                <tr>
                    <td>
                        <asp:GridView ID="gv1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:ImageField DataImageUrlField="photo" HeaderText="Photo">
                                    <ControlStyle Height="100px" Width="100px" />
                                </asp:ImageField>
                                <asp:BoundField DataField="Fullname" HeaderText="Full name" >
                                <ControlStyle Height="100px" Width="50px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Mobileno" HeaderText="Mobile No">
                                <ControlStyle Height="50px" Width="50px" />
                                </asp:BoundField>
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
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
    </asp:Panel></center>


</asp:Content>

