<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FileUploadControl.ascx.cs"
    Inherits="UploadControl.FileUploadControl" %>
    <%
        
         %>
<table border="1" cellpadding="5" cellspacing="5">
    <tbody>
        <tr>
            <td> 
                Deailt 1:
            </td>
            <td>
                <asp:TextBox runat="server" ID="TextBox1"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Select a document:
            </td>
            <td>
                <asp:FileUpload ID="FileUpload"  runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                Deailt 2:
            </td>
            <td>
                <asp:TextBox runat="server" ID="Description"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>
                &nbsp;
            </td>
            <td>
                <asp:Button runat="server" OnClick="btnUpload_Click" ID="btnUpload" Text="Upload" />
            </td>
        </tr>

    </tbody>
</table>
<h3><%=this.TableName%></h3>
<asp:GridView runat="server" id="FilesList"></asp:GridView>
