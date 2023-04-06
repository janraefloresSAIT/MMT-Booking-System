<!-- <%-- 
    Document   : PatientAccount-Info
    Created on : 6-Feb-2023, 5:48:21 PM
    Author     : janraeSAIT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> -->
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>MMT - Account</title>

        <!-- Stylesheet -->
        <link rel="stylesheet" type="text/css" href="Assets/Styles/PatientAccount.css">
    </head>

    <body>
        <header>
            <div class="mmt-logo">
                <img src="./Assets/Images/white-logo-tp.png" alt="">
            </div>
            <h1>Massage Master Therapy</h1>

            <input type="checkbox" id="active">
            <label for="active" class="menu-btn"><span></span></label>
            <label for="active" class="close"></label>
            <div class="wrapper">
                <ul>
                    <li><a href="MMT">HOME</a></li>
                    <li><a href="account">ACCOUNT</a></li>
                    <li><a href="#">SERVICES</a></li>
                    <li><a href="reservation">RESERVATION</a></li>
                    <li><a href="contact">CONTACT</a></li>
                    <li><a href="login?logout">LOGOUT</a></li>
                </ul>
            </div>
        </header>

        <main>
            <div class="title-container">
                <h2 id="title">ACCOUNT DETAILS</h2>
            </div>
            <div class="line"></div>

            <div class="flex-container">
                <div class="left-column">
                    <p><a href="booking">BOOKINGS</a></p>
                    <p><a href="account">PERSONAL INFO</a></p>
                </div>
                <form action="" method="POST">
                    <div class="right-column">
                        <p>PROFILE</p>
                        <div class="line"></div>

                        <table>
                            <tbody>
                                <tr>
                                    <td class="left-table">FULL NAME</td>
                                    <td class="right-table">
                                        <input type="text" class="right-table-input" name="full_name" value="${account.fullName}">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="left-table">EMAIL</td>
                                    <td class="right-table">
                                        <input type="text" class="right-table-input" name="email" value="${account.email}">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="left-table">PHONE NUMBER</td>
                                    <td class="right-table">

                                        <input type="text" class="right-table-input" name="phone" 
                                               value="<fmt:formatNumber pattern='###-###-####' type='number' value='${account.phone}'/>">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="left-table">ADDRESS</td>
                                    <td class="right-table">
                                        <input type="text" class="right-table-input" name="address" value="${account.address}">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="left-table">USERNAME</td>
                                    <td class="right-table">
                                        <input type="text" class="right-table-input" name="username" value="${account.username}" readonly>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="left-table">PASSWORD</td>
                                    <td class="right-table">
                                        <input type="password" class="right-table-input" name="password" value="${account.password}">
                                    </td>
                                </tr>
                            <br>
                            <tr>
                                <td class="left-table">EMERGENCY CONTACT</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td class="left-table-sub">Full Name:</td>
                                <td class="right-table">
                                    <input type="text" name="ec_name" value="${ec.ecName}">
                                </td>
                            </tr>
                            <tr>
                                <td class="left-table-sub">Phone Number:</td>
                                <td class="right-table">
                                    <input type="text" name="ec_phone" value="${ec.ecPhone}">
                                </td>
                            </tr>
                            <tr>
                                <td class="left-table-sub">Email:</td>
                                <td class="right-table">
                                    <input type="text" name="ec_email" value="${ec.ecEmail}">
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <div id="message">${message}</div>
                        <div class="save-container">
                            <button class="save">SAVE</button>
                            <input type="hidden" name="action" value="updateAccount">
                        </div>
                        
                    </div>
                </form>
            </div>
        </main>

        <div class="footer-basic">
            <footer>
                <ul class="list-inline">
                    <li class="list-inline-item"><a href="MMT">Home</a></li>
                    <li class="list-inline-item"><a href="#">Services</a></li>
                    <li class="list-inline-item"><a href="reservation">Reservations</a></li>
                    <li class="list-inline-item"><a href="contact">Contact</a></li>
                </ul>
                <p class="copyright">Massage Master Therapy © ?YEAR?</p>
            </footer>
        </div>
    </body>

</html>
