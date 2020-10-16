<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyIp.aspx.cs" Inherits="www.intelligentpeople.ch.MyIp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title></title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet" />
    <style>
        body {
            font-family: 'Open Sans', sans-serif;
            font-size: 48px;
        }

        div {
            text-align: center;
        }

        .centerDiv {
            width: 600px;
            border-radius: 5px;
            background: #ccc;
            padding: 10px;
            height: 80px;
            position: absolute;
            margin-top: -25px;
            margin-left: -300px;
            top: 50%;
            left: 50%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="centerDiv" id="IpAddress">
            <%
                Response.Write(GetIpAddress());
            %>
        </div>
    </form>
</body>
</html>
