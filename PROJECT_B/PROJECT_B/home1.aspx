
<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master"
    AutoEventWireup="true" CodeBehind="home1.aspx.cs"
    Inherits="PROJECT_B.home1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2>Registration Form</h2>

    <p>
        Name:
        <asp:TextBox ID="nameTXT" runat="server"></asp:TextBox>

        <asp:RequiredFieldValidator ID="nameR" runat="server"
            ControlToValidate="nameTXT"
            ErrorMessage="Name is required!"
            ForeColor="Red">
        </asp:RequiredFieldValidator>
    </p>

    <p>
        Email:
        <asp:TextBox ID="emailtxt" runat="server"></asp:TextBox>

        <asp:RequiredFieldValidator ID="emailR" runat="server"
            ControlToValidate="emailtxt"
            ErrorMessage="Email is required!"
            ForeColor="Red">
        </asp:RequiredFieldValidator>

        <asp:RegularExpressionValidator ID="emailValidator" runat="server"
            ControlToValidate="emailtxt"
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
            ErrorMessage="Enter a valid email!"
            ForeColor="Red">
        </asp:RegularExpressionValidator>
    </p>

    <p>
        Password:
        <asp:TextBox ID="passtxt" runat="server"
            TextMode="Password"></asp:TextBox>

        <asp:RequiredFieldValidator ID="passR" runat="server"
            ControlToValidate="passtxt"
            ErrorMessage="Password is required!"
            ForeColor="Red">
        </asp:RequiredFieldValidator>
    </p>

    <p>
        Confirm Password:
        <asp:TextBox ID="cpasstxt" runat="server"
            TextMode="Password"></asp:TextBox>

        <asp:RequiredFieldValidator ID="confirmR" runat="server"
            ControlToValidate="cpasstxt"
            ErrorMessage="Confirm password is required!"
            ForeColor="Red">
        </asp:RequiredFieldValidator>

        <asp:CompareValidator ID="CompareValidator1" runat="server"
            ControlToCompare="passtxt"
            ControlToValidate="cpasstxt"
            ErrorMessage="Passwords must be same!"
            ForeColor="Red">
        </asp:CompareValidator>
    </p>

    <p>
        Gender:

        <asp:RadioButton ID="male" runat="server"
            Text="Male" GroupName="Gender" />

        <asp:RadioButton ID="female" runat="server"
            Text="Female" GroupName="Gender" />

        <asp:RadioButton ID="other" runat="server"
            Text="Other" GroupName="Gender" />
    </p>

    <p>
        Contact:
        <asp:TextBox ID="contacttxt" runat="server"></asp:TextBox>

        <asp:RequiredFieldValidator ID="contactR" runat="server"
            ControlToValidate="contacttxt"
            ErrorMessage="Contact is required!"
            ForeColor="Red">
        </asp:RequiredFieldValidator>

        <asp:RegularExpressionValidator ID="contactValidator" runat="server"
            ControlToValidate="contacttxt"
            ValidationExpression="^\d{10}$"
            ErrorMessage="Enter a valid 10-digit contact!"
            ForeColor="Red">
        </asp:RegularExpressionValidator>
    </p>

    <p>
        <asp:Button ID="register" runat="server"
            Text="Register"
            OnClick="register_Click" />

        <asp:Button ID="clear" runat="server"
            Text="Clear"
            CausesValidation="false"
            OnClick="clear_Click" />
    </p>

</asp:Content>