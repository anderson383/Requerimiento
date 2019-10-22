<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Primero.aspx.cs" Inherits="Requerimiento.Primero" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <div class="row bg-info p-3">
                <div class="col-12">
                    <h2 class="text-white">Registro</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <asp:Label ID="Label1" runat="server" Text="Documento de identidad"></asp:Label>

                    <asp:TextBox ID="txtDocumento" runat="server" class="form-control"></asp:TextBox>
                    <asp:Label ID="Label2" runat="server" Text="Nombre"></asp:Label>
                    <asp:TextBox ID="txtNombre" runat="server" class="form-control"></asp:TextBox>
                    <asp:Label ID="Label3" runat="server" Text="Apellido"></asp:Label>
                    <asp:TextBox ID="txtApellido" runat="server" class="form-control"></asp:TextBox>
                    <asp:Label ID="Label4" runat="server" Text="Direccion"></asp:Label>
                    <asp:TextBox ID="txtDireccion" runat="server" class="form-control"></asp:TextBox>
                    <asp:RadioButton ID="rbNatural" runat="server" GroupName="caja" Text="Natural"/>
                    <asp:RadioButton ID="rbJuridica" runat="server" GroupName="caja" Text="Juridica" />
                </div>

                <div class="col-lg-6">
                    <asp:Label ID="Label12" runat="server" Text="Telefono "></asp:Label>
                    <asp:TextBox ID="txtTelefono" runat="server" class="form-control"></asp:TextBox>
                    <asp:Label ID="Label13" runat="server" Text="Correo electrónico"></asp:Label>
                    <asp:TextBox ID="txtCorreo" runat="server" class="form-control"></asp:TextBox>
                    <asp:Label ID="Label14" runat="server" Text="Fecha de nacimiento"></asp:Label>
                    <asp:Calendar ID="idCalendario" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
                        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                        <WeekendDayStyle BackColor="#CCCCFF" />
                    </asp:Calendar>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6">
                     <asp:Button ID="btnEnviar" runat="server" Text="Enviar" class="btn btn-primary m-2 btn-block" OnClick="btnEnviar_Click"/>
                     <asp:Button ID="btnLimiar" runat="server" Text="Limpiar campos" CssClass="btn btn-danger btn-block mt-2" OnClick="btnLimiar_Click" />
                </div>
            </div>
        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
