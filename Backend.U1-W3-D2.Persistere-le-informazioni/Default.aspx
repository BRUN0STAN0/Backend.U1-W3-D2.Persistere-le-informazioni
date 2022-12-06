<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Backend.U1_W3_D2.Persistere_le_informazioni.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <section class="vh-100">
              <div class="container py-5 h-100  text-center">
                  <h1>WELCOME IN THE JUNGLE APP</h1>
                <div class="row d-flex align-items-center justify-content-center h-100">
                  <div class="col-md-8 col-lg-7 col-xl-6">
                    <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.svg"
                      class="img-fluid" alt="Phone image" />
                  </div>
                  <div class="col-md-7 col-lg-5 col-xl-5 offset-xl-1">
                    <%--<form>--%>
                      <!-- Email input -->
                      <div class="form-outline mb-4 mt-3">
                          <asp:TextBox ID="Email" runat="server" CssClass="form-control form-control-lg" placeholder="Email"></asp:TextBox>
                          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email" ForeColor="Red" ErrorMessage="Email invalida"
                              ValidationExpression="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?"></asp:RegularExpressionValidator>
                      </div>

                      <!-- Password input -->
                      <div class="form-outline mb-4">
                          <asp:TextBox TextMode="Password" ID="Password" runat="server" CssClass="form-control form-control-lg" placeholder="Password"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ErrorMessage="Password richiesta" ControlToValidate="Password"></asp:RequiredFieldValidator>
                      </div>

                      
                        <!-- Checkbox -->
                      <div class="d-flex justify-content-around align-items-center mb-4">
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" value="" id="form1Example3" />
                          <label class="form-check-label" for="form1Example3"> Remember me </label>
                        </div>
                        <a href="#!">Forgot password?</a>
                      </div>

                      <!-- Submit button -->
                      <asp:Button ID="Signin" runat="server" CssClass="btn btn-primary btn-lg btn-block w-100 mb-5" Text="Signin" OnClick="Signin_Click" />
                    <%--</form>--%>
                  </div>
                </div>
              </div>
            </section>

        </div>
    </form>
</body>
</html>
