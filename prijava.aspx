<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="prijava.aspx.cs" Inherits="rad_za_ocenu.prijava" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Prezime i ime:  
            <asp:TextBox ID="txtImeiPrezime"
                ValidationGroup="Group1"
                runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="txtImeiPrezimeValidator"
                ErrorMessage="Prezime i ime je obavezno!"
                ControlToValidate="txtImeiPrezime"
                Display="Static"
                ForeColor="Red"
                SetFocusOnError="True"
                ValidationGroup="Group1"
                EnableClientScript="False"
                runat="server"></asp:RequiredFieldValidator>
            <br />

            Email: 
            <asp:TextBox ID="txtEmail"
                ValidationGroup="Group1"
                runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="txtEmailValidator"
                ErrorMessage="Email je obavezan!"
                ControlToValidate="txtEmail"
                Display="Static"
                ForeColor="Red"
                SetFocusOnError="True"
                ValidationGroup="Group1"
                EnableClientScript="False"
                runat="server"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="txtEmailExpression"
                ErrorMessage="Email nije u ispravnom formatu"
                ControlToValidate="txtEmail"               
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                Display="Static"
                ForeColor="Red"
                SetFocusOnError="True"
                ValidationGroup="Group1"
                EnableClientScript="False"
                runat="server"></asp:RegularExpressionValidator>
            <br />
            
            Potvrdi Email:
            <asp:TextBox ID="txtConfirm"
                ValidationGroup="Group1"
                runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="txtEmailConfirm"
                ErrorMessage="Obavezno je ponovno ukucati Email!"
                ControlToValidate="txtConfirm"
                Display="Static"
                ForeColor="Red"
                SetFocusOnError="True"
                ValidationGroup="Group1"
                EnableClientScript="False"
                runat="server"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="PorediEmailValidator"
                ErrorMessage="Email se ne poklapa!"
                ControlToCompare="txtConfirm"
                ControlToValidate="txtEmail"
                Display="Static"
                ForeColor="Red"
                SetFocusOnError="True"
                ValidationGroup="Group1"
                EnableClientScript="False"
                runat="server" ></asp:CompareValidator>
            <br />

            Godina rodjenja:
            <asp:TextBox ID="txtAge"
                ValidationGroup="Group1"
                runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                ErrorMessage="Obavezno je uneti godiste rodjenja!"
                ControlToValidate="txtAge"
                Display="Static"
                ForeColor="Red"
                SetFocusOnError="True"
                ValidationGroup="Group1"
                EnableClientScript="False"
                runat="server"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1"
                ErrorMessage="Nedozvoljen broj godina!"
                ControlToValidate="txtAge"
                Display="Static"
                ForeColor="Red"
                SetFocusOnError="True"
                ValidationGroup="Group1"
                EnableClientScript="False"
                MinimumValue="2003"
                MaximumValue="2010"
                Type="Integer"
                runat="server"></asp:RangeValidator>
            <br />

             Razred:
            <asp:RadioButtonList ID="RadioButtonList1" 
                ValidationGroup="Group1" 
                runat="server">
            <asp:ListItem>I</asp:ListItem>
            <asp:ListItem>II</asp:ListItem>
            <asp:ListItem>III</asp:ListItem>
            <asp:ListItem>IV</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                ErrorMessage="Obavezno je izabrati jedno polje!"
                ControlToValidate="RadioButtonList1"
                Display="Static"
                ForeColor="Red"
                SetFocusOnError="True"
                ValidationGroup="Group1"
                EnableClientScript="False"
                runat="server"></asp:RequiredFieldValidator>
            <br />

           
            <asp:Button ID="btnPosalji"
                ValidationGroup="Group1"
                CausesValidation="true"
                OnClick="btnPosalji_Click"
                Text="Prijavi se"
                runat="server"/>
            <br />
            <asp:Label ID="lblPoruka"
                runat="server"></asp:Label>
            <br />
            
        </div>
    </form>
</body>
</html>