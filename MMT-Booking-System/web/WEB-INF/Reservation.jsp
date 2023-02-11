<%-- 
    Document   : Reservation
    Created on : 10-Feb-2023, 6:07:32 PM
    Author     : Flores
--%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>MMT - Reservations</title>
    <link rel="stylesheet" type="text/css" href="Assets/Styles/Reservation.css">
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
        <div class="wrapper stack-top">
            <ul>
                <li><a href="#">HOME</a></li>
                <li><a href="#">LOGIN</a></li>
                <li><a href="#">SERVICES</a></li>
                <li><a href="#">RESERVATION</a></li>
                <li><a href="#">CONTACT</a></li>
            </ul>
        </div>
    </header>

    <main>
        <div class="container">
            <div class="left">
                <div class="calendar">
                    <div class="month">
                        <i class="gg-chevron-left prev"></i>
                        <div class="date"></div>
                        <i class="gg-chevron-right next"></i>
                    </div>
                    <div class="weekdays">
                        <div>Sun</div>
                        <div>Mon</div>
                        <div>Tues</div>
                        <div>Wed</div>
                        <div>Thurs</div>
                        <div>Fri</div>
                        <div>Sat</div>
                    </div>

                    <div class="days">
                        <!-- days added with javascript -->
                    </div>

                    <div class="goto-today">
                        <div class="goto">
                            <input type="text" placeholder="MM/YYYY" class="date-input" />
                            <button class="goto-btn">GO</button>
                        </div>
                        <button class="today-btn">TODAY</button>
                    </div>
                </div>
            </div>

            <div class="right">
                <div class="today-date">
                    <div class="event-day"></div>
                    <div class="event-date"></div>

                    <div id="services" class="services hide">
                        <p>SERVICES</p>
                        <div class="service-select">
                            <select name="s-type" id="s-type">
                                <option value="">-----</option>
                                <option value="">THERAPEUTIC MASSAGE</option>
                                <option value="">RELAXATION MASSAGE</option>
                                <option value="">LYMPHATIC MASSAGE</option>
                                <option value="">DEEP TISSUE MASSAGE</option>
                                <option value="">HOT STONE MASSAGE</option>
                                <option value="">CUPPING THERAPY</option>
                                <option value="">FACIAL</option>
                                <option value="">TEETH WHITENING</option>
                            </select>
                        </div>
                        <div class="service-length">
                            <select name="s-length" id="s-length">
                                <option value="">-----</option>
                                <option value="">60 MINS (1 hour)</option>
                                <option value="">90 MINS (1.5 hours)</option>
                                <option value="">120 MINS (2 hours)</option>
                            </select>
                        </div>
                        <div class="patient-info">
                            <table>
                                <tbody>
                                    <tr>
                                        <p>INFORMATION</p>
                                    </tr>
                                    <tr>
                                        <td>NAME:</td>
                                        <td><input type="text" name="u-name" id="u-name" value=""></td>
                                    </tr>
                                    <tr>
                                        <td>PHONE:</td>
                                        <td><input type="tel" name="u-tel" id="u-tel" value=""></td>
                                    </tr>
                                    <tr>
                                        <td>EMAIL</td>
                                        <td><input type="email" name="u-email" id="u-email" value=""></td>
                                    </tr>
                                    <tr>
                                        <td>ADDRESS:</td>
                                        <td><input type="text" name="u-address" id="u-address" value=""></td>
                                    </tr>
                                </tbody>
                            </table>
                            <div class="medical-concerns">
                                <p>MEDICAL CONCERNS:</p>
                                <input type="text" name="med-concerns" id="med-concerns" value="">
                            </div>
                            <div class="reserve-container">
                                <button id="reserve" onclick="">BOOK</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <script src="/Assets/Scripts/Reservations.js"></script>
</body>

</html>
