<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="www.intelligentpeople.ch.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-49262703-2"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        gtag('js', new Date());

        gtag('config', 'UA-49262703-2');
    </script>
    <title>Intelligent People - Your private IT Service Provider</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
    <link rel="stylesheet" href="assets/css/main.css" />
    <!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
    <!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
    <!-- Header Scripts -->
    <script>
        var counter = 0;

        function changeText() {
            var quotes = new Array();

            quotes[0] = "HOSTING";
            quotes[1] = "CONSULTING";
            quotes[2] = "TECHNOLOGY";
            quotes[3] = "SENSORS & IoT";
            quotes[4] = "INSTALLATION";
            quotes[5] = "MAINTENANCE";
            quotes[6] = "CONNECTING";
            quotes[7] = "INNOVATION";
            quotes[8] = "EXPERIENCE";
            quotes[9] = "WORKSHOP";
            quotes[10] = "PROFESSIONALS";
            quotes[11] = "NETWORK";
            quotes[12] = "CLOUD SERVICES";

            if (counter > 12) {
                counter = 0;
            }

            document.getElementById("textslide").innerHTML = quotes[counter];

            setTimeout(function () {
                changeText();
            }, 1200);
            counter++;
        }

        function fixForm() {
            document.getElementsByName("txtMessage").tag = "Foo";
        }
    </script>
    <style>
        #textslide {
            position: absolute;
            right: 0;
            left: 0;
            text-align: center;
            font-family: 'Source Sans Pro', sans-serif;
            line-height: normal;
            font-weight: bold;
            font-size: 60pt;
            color: #64a0a3;
            opacity: 0.6;
            margin: auto;
            text-align: center;
        }

        @media screen and (max-width: 1680px) {
            #textslide {
                position: absolute;
                font-size: 48pt;
            }
        }

        @media screen and (max-width: 1280px) {
            #textslide {
                position: absolute;
                font-size: 40pt;
            }
        }

        @media screen and (max-width: 980px) {
            #textslide {
                position: absolute;
                font-size: 32pt;
            }
        }

        @media screen and (max-width: 736px) {
            #textslide {
                position: absolute;
                font-size: 24pt;
            }
        }

        @media screen and (max-width: 480px) {
            #textslide {
                position: absolute;
                font-size: 16pt;
            }
        }
    </style>
</head>

<body class="landing" onload="changeText();fixForm();">

    <!-- Page Wrapper -->
    <div id="page-wrapper">
        <!-- Banner -->
        <section id="banner">
            <div class="inner">
                <h2>Intelligent People</h2>
                <h3>Ihr persönlicher IT Dienstleister</h3>
                <div id="textslide"></div>
            </div>
            <a href="#contact" class="more scrolly">Kontakt<br />
                <br />
                <span class="icon fa-arrow-down fa-2x"></span>
            </a>
            <p>&nbsp;</p>
        </section>

        <!-- Kontaktformular -->
        <section id="contact" class="wrapper style5" runat="server">
            <div class="inner">
                <h4>Kontaktformular</h4>
                <form id="form1" runat="server">
                    <div class="row uniform" runat="server">
                        <div class="6u 12u$(xsmall)">
                            <input type="text" name="txtName" id="txtName" value="" placeholder="Name" runat="server" />
                        </div>
                        <div class="6u$ 12u$(xsmall)">
                            <input type="email" name="txtSubject" id="txtSubject" value="" placeholder="Email" runat="server" />
                        </div>
                        <div class="12u$">
                            <textarea name="txtMessage" id="txtMessage" placeholder="Ihre Mitteilung" rows="6" runat="server"></textarea>
                        </div>

                        <!-- honeypot field -->
                        <div style="position: absolute; left: -5000px;" aria-hidden="true">
                            <input
                                type="email"
                                name="txtEmail"
                                id="txtEmail"
                                tabindex="-1"
                                value=""
                                autocomplete="off"
                                runat="server" />
                        </div>

                        <div class="12u$" runat="server">
                            <ul class="actions">
                                <li>
                                    <asp:Button ID="cmdSend" runat="server" Text="Senden" OnClick="SendButton_Click" />
                                </li>
                                <li>
                                    <asp:Button ID="cmdReset" runat="server" Text="Löschen" OnClick="ResetButton_Click" />
                                </li>
                            </ul>
                        </div>
                    </div>
                </form>
            </div>
        </section>

        <!-- Footer -->
        <footer id="footer">
            <ul class="icons">
                <li><a href="#" class="icon fa-facebook" target="_blank"><span class="label">Facebook</span></a></li>
                <li><a href="#" class="icon fa-instagram" target="_blank"><span class="label">Instagram</span></a></li>
                <li><a href="#" class="icon fa-twitter" target="_blank"><span class="label">Twitter</span></a></li>
                <li><a href="#" class="icon fa-whatsapp"><span class="label">Whatsapp</span></a></li>
            </ul>
            <ul class="copyright">
                <li>&copy; 2017 - 2020 Intelligent People</li>
                <li></li>
            </ul>
        </footer>
    </div>

    <!-- Scripts -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/jquery.scrollex.min.js"></script>
    <script src="assets/js/jquery.scrolly.min.js"></script>
    <script src="assets/js/skel.min.js"></script>
    <script src="assets/js/util.js"></script>
    <!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
    <script src="assets/js/main.js"></script>
</body>

</html>
