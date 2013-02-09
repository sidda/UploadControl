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
                <input type="text" />
            </td>
        </tr>
        <tr>
            <td>
                Select a document:
            </td>
            <td>
                <asp:FileUpload ID="fileUpload"  runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                Deailt 2:
            </td>
            <td>
                <input type="text" />
            </td>
        </tr>
         <tr>
            <td>
                &nbsp;
            </td>
            <td>
                <asp:Button runat="server" ID="btnUpload" Text="Upload" />
            </td>
        </tr>

    </tbody>
</table>
<asp:GridView runat="server" id="FilesList"></asp:GridView>
