<%-- 
    Document   : viewcart
    Created on : Dec 23, 2023, 11:45:00 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
        <style>
            body {
                color: #000;
                overflow-x: hidden;
                height: 100%;
                background-color: #fff;
                background-repeat: no-repeat;
            }

            .plus-minus {
                position: relative;
            }

            .plus {
                position: absolute;
                top: -4px;
                left: 2px;
                cursor: pointer;
            }

            .minus {
                position: absolute;
                top: 8px;
                left: 5px;
                cursor: pointer;
            }

            .vsm-text:hover {
                color: #FF5252;
            }

            .book, .book-img {
                width: 120px;
                height: 180px;
                border-radius: 5px;
            }

            .book {
                margin: 20px 15px 5px 15px;
            }

            .border-top {
                border-top: 1px solid #EEEEEE !important;
                margin-top: 20px;
                padding-top: 15px;
            }

            .card {
                margin: 40px 0px;
                padding: 40px 50px;
                border-radius: 20px;
                border: none;
                box-shadow: 1px 5px 10px 1px rgba(0,0,0,0.2);
            }

            input, textarea {
                background-color: #F3E5F5;
                padding: 8px 15px 8px 15px;
                width: 100%;
                border-radius: 5px !important;
                box-sizing: border-box;
                border: 1px solid #F3E5F5;
                font-size: 15px !important;
                color: #000 !important;
                font-weight: 300;
            }

            input:focus, textarea:focus {
                -moz-box-shadow: none !important;
                -webkit-box-shadow: none !important;
                box-shadow: none !important;
                border: 1px solid #9FA8DA;
                outline-width: 0;
                font-weight: 400;
            }

            button:focus {
                -moz-box-shadow: none !important;
                -webkit-box-shadow: none !important;
                box-shadow: none !important;
                outline-width: 0;
            }

            .pay {
                width: 80px;
                height: 40px;
                border-radius: 5px;
                border: 1px solid #673AB7;
                margin: 10px 20px 10px 0px;
                cursor: pointer;
                box-shadow: 1px 5px 10px 1px rgba(0,0,0,0.2);
            }

            .gray {
                -webkit-filter: grayscale(100%);
                -moz-filter: grayscale(100%);
                -o-filter: grayscale(100%);
                -ms-filter: grayscale(100%);
                filter: grayscale(100%);
                color: #E0E0E0;
            }

            .gray .pay {
                box-shadow: none;
            }

            #tax {
                border-top: 1px lightgray solid;
                margin-top: 10px;
                padding-top: 10px;
            }

            .btn-blue {
                border: none;
                border-radius: 10px;
                background-color: #673AB7;
                color: #fff;
                padding: 8px 15px;
                margin: 20px 0px;
                cursor: pointer;
            }

            .btn-blue:hover {
                background-color: #311B92;
                color: #fff;
            }

            #checkout {
                float: left;
            }

            #check-amt {
                float: right;
            }

            .btnAdd, .btnSub {
                padding: 5px 10px;
                margin-left: 7px;
                margin-right: 7px;
                border: none;
            }

            @media screen and (max-width: 768px) {
                .book, .book-img {
                    width: 100px;
                    height: 150px;
                }

                .card {
                    padding-left: 15px;
                    padding-right: 15px;
                }

                .mob-text {
                    font-size: 13px;
                }

                .pad-left {
                    padding-left: 20px;
                }
            }
        </style>
    </head>
    <body>
        <header style="background-color: black; padding: 15px 40px; display: flex; justify-content: space-between; align-items: center">
            <div class="col-lg-2">
                <div class="logo">
                    <a href="home"><img src="images/logo.png" alt=""></a>
                </div>
            </div>
            <jsp:include page="header_right.jsp"></jsp:include>
        </header>
        <div class="container px-4 py-5 mx-auto">
            <div class="row d-flex justify-content-center">
                <div class="col-4">
                    <h4 class="heading">Shopping Bag</h4>
                </div>
                <div class="col-8">
                    <div class="row text-right">
                        <div class="col-3">
                            <h6 class="mt-2">Format</h6>
                        </div>
                        <div class="col-3">
                            <h6 class="mt-2">Quantity</h6>
                        </div>
                        <div class="col-3">
                            <h6 class="mt-2">Price</h6>
                        </div>
                        <div class="col-3" style="padding-right: 30px">
                            <h6 class="mt-2">Delete</h6>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row d-flex justify-content-center border-top">
                <div class="col-4">
                    <div class="row d-flex">
                        <div class="book" style="margin-right: 30px; flex: 1">
                            <img src="images/products/Kids/2-1.png" style="width: 170px; height: 150px" class="book-img">
                        </div>
                        <div class="my-auto flex-column d-flex pad-left">
                            <h6 class="mob-text">Thinking, Fast and Slow</h6>
                            <p class="mob-text">Daniel Kahneman</p>
                        </div>
                    </div>
                </div>
                <div class="my-auto col-8 ">
                    <div class="row text-right">
                        <div class="col-3">
                            <p class="mob-text">Digital</p>
                        </div>
                        <div class="col-3">
                            <div class="">
<!--                                 href="subAmountCart?productID=21&amp;amount=6"-->
                                <a><button class="btnSub">-</button></a> 
                                <strong>6</strong>
                                <a><button class="btnAdd">+</button></a>
                            </div>
                        </div>
                        <div class="col-3">
                            <h6 class="mob-text">$9.99</h6>
                        </div>
                        <div class="col-3" style="margin-top: -15px">
                            <button style="padding: 7px 15px; border: none; border-radius: 5px; background-color: red; color: white">Delete</button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row d-flex justify-content-center border-top">
                <div class="col-4">
                    <div class="row d-flex">
                        <div class="book" style="margin-right: 30px; flex: 1">
                            <img src="images/products/Kids/1-1.png" style="width: 170px; height: 150px"  class="book-img">
                        </div>
                        <div class="my-auto flex-column d-flex pad-left">
                            <h6 class="mob-text">Homo Deus: A Brief<br>History of Tomorrow</h6>
                            <p class="mob-text">Yuval Noah Harari</p>
                        </div>
                    </div>
                </div>
                <div class="my-auto col-8">
                    <div class="row text-right">
                        <div class="col-3">
                            <p class="mob-text">Paperback</p>
                        </div>
                        <div class="col-3">
                            <a href="subAmountCart?productID=21&amp;amount=6"><button class="btnSub">-</button></a> 
                            <strong>6</strong>
                            <a href="addAmountCart?productID=21&amp;amount=6"><button class="btnAdd">+</button></a>
                        </div>
                        <div class="col-3">
                            <h6 class="mob-text">$13.50</h6>
                        </div>                       
                        <div class="col-3" style="margin-top: -15px">
                            <button style="padding: 7px 15px; border: none; border-radius: 5px; background-color: red; color: white">Delete</button>
                        </div>
                    </div>

                </div>

            </div>

            <div class="row justify-content-center">
                <div class="col-lg-12" style="padding: 0">
                    <div class="card">
                        <div class="row">
                            <div class="col-lg-4 radio-group">
                                <div class="row d-flex px-3 radio">
                                    <img class="pay" src="https://i.imgur.com/WIAP9Ku.jpg">
                                    <p class="my-auto">Credit Card</p>
                                </div>
                                <div class="row d-flex px-3 radio gray">
                                    <img class="pay" src="https://i.imgur.com/OdxcctP.jpg">
                                    <p class="my-auto">Debit Card</p>
                                </div>
                                <div class="row d-flex px-3 radio gray mb-3">
                                    <img class="pay" src="https://i.imgur.com/cMk1MtK.jpg">
                                    <p class="my-auto">PayPal</p>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="row px-2">
                                    <div class="form-group col-md-6">
                                        <label class="form-control-label">Name on Card</label>
                                        <input type="text" id="cname" name="cname" placeholder="Johnny Doe">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label class="form-control-label">Card Number</label>
                                        <input type="text" id="cnum" name="cnum" placeholder="1111 2222 3333 4444">
                                    </div>
                                </div>
                                <div class="row px-2">
                                    <div class="form-group col-md-6">
                                        <label class="form-control-label">Expiration Date</label>
                                        <input type="text" id="exp" name="exp" placeholder="MM/YYYY">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label class="form-control-label">CVV</label>
                                        <input type="text" id="cvv" name="cvv" placeholder="***">
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 mt-2">
                                <div class="row d-flex justify-content-between px-4">
                                    <p class="mb-1 text-left">Subtotal</p>
                                    <h6 class="mb-1 text-right">$23.49</h6>
                                </div>
                                <div class="row d-flex justify-content-between px-4">
                                    <p class="mb-1 text-left">Shipping</p>
                                    <h6 class="mb-1 text-right">$2.99</h6>
                                </div>
                                <div class="row d-flex justify-content-between px-4" id="tax">
                                    <p class="mb-1 text-left">Total (tax included)</p>
                                    <h6 class="mb-1 text-right">$26.48</h6>
                                </div>
                                <button class="btn-block btn-blue">
                                    <span>
                                        <span id="checkout">Checkout</span>
                                        <span id="check-amt">$26.48</span>
                                    </span>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            $(document).ready(function () {
                $('.radio-group .radio').click(function () {
                    $('.radio').addClass('gray');
                    $(this).removeClass('gray');
                });

                $('.plus-minus .plus').click(function () {
                    var count = $(this).parent().prev().text();
                    $(this).parent().prev().html(Number(count) + 1);
                });

                $('.plus-minus .minus').click(function () {
                    var count = $(this).parent().prev().text();
                    $(this).parent().prev().html(Number(count) - 1);
                });

            });
        </script>
    </body>
</html>