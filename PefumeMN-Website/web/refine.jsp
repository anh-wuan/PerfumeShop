<%-- 
    Document   : refine
    Created on : Dec 20, 2023, 7:55:37 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Perfume | E-Commerce</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.carousel.min.css">
        <link rel="stylesheet"
              href="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/css/nice-select.min.css">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <header>
            <div class="main_header header_transparent header-mobile-m">
                <div class="header_container sticky-header" style="padding: 0">
                    <div class="container-fluid" style="background-color: black">
                        <div class="row align-items-center" style="padding: 8px 0">
                            <div class="col-lg-3">
                                <div class="logo">
                                    <a href="home"><img src="images/logo.png" alt=""></a>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <form action="" style="display: flex; justify-content: center">
                                    <input type="text" placeholder="Search your perfume" style="width: 60%; padding: 2px 5px; border-radius: 15px">
                                    <button type="submit" style="border-radius: 17px; font-size: 18px;"><i class="fa fa-search"></i></button>
                                </form>
                            </div>
                            <div class="col-lg-3">
                                <div class="header_top_right">
                                    <div class="header_right_info">
                                        <ul>
                                            <li class="user">
                                                <a href="login" title="Add to Cart">
                                                    <i class="fa fa-user-circle"></i>
                                                </a>
                                            </li>
                                            <li class="header_wishlist">
                                                <a href="#">
                                                    <i class="fa fa-heart-o"></i>
                                                    <span class="item_count">4</span>
                                                </a>
                                            </li>
                                            <li class="mini_cart_wrapper">
                                                <a href="javascript:void(0)">
                                                    <i class="fa fa-shopping-cart"></i>
                                                    <span class="item_count">2</span>
                                                </a>

                                                <!-- mini cart  -->
                                                <div class="mini_cart mini_cart2">
                                                    <div class="cart_gallery">
                                                        <div class="cart_item">
                                                            <div class="cart_img">
                                                                <a href="#">
                                                                    <img src="images/small-product/mini1.png"
                                                                         alt="Perfume"></a>
                                                            </div>
                                                            <div class="cart_info">
                                                                <a href="#">Hugo Boss</a>
                                                                <p><span>Rs. 3640</span> X 1</p>
                                                            </div>
                                                            <div class="cart_remove">
                                                                <a href="#"><i class="fa fa-times"></i></a>
                                                            </div>
                                                        </div>
                                                        <div class="cart_item">
                                                            <div class="cart_img">
                                                                <a href="#"><img src="images/small-product/mini2.png"
                                                                                 alt="Perfume"></a>
                                                            </div>
                                                            <div class="cart_info">
                                                                <a href="#">Bvlgari</a>
                                                                <p><span>Rs. 8350</span> X 1</p>
                                                            </div>
                                                            <div class="cart_remove">
                                                                <a href="#"><i class="fa fa-times"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="mini_cart_table">
                                                        <div class="cart_table_border">
                                                            <div class="cart_total">
                                                                <span>Sub Total :</span>
                                                                <span class="price">Rs. 11990</span>
                                                            </div>

                                                            <div class="cart_total mt-10">
                                                                <span>Total :</span>
                                                                <span class="price">Rs. 11990</span>
                                                            </div>

                                                        </div>
                                                    </div>
                                                    <div class="mini_cart_footer">
                                                        <div class="cart_button">
                                                            <a href="#">View Cart</a>
                                                        </div>
                                                        <div class="cart_button">
                                                            <a href="#">Checkout</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- mini cart ends -->
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="header_account">
                                        <ul>
                                            <li class="top_links">
                                                <a href="#">
                                                    <i class="fa fa-cog"></i>
                                                </a>
                                                <ul class="dropdown_links">
                                                    <li><a href="#">Checkout</a></li>
                                                    <li><a href="#">My Account</a></li>
                                                    <li><a href="#">Shopping cart</a></li>
                                                    <li><a href="#">Wishlist</a></li>
                                                </ul>
                                            </li>
                                            <c:if test="${sessionScope.account!=null}">
                                                <li>
                                                    <a href="profile" style="color: white">Hello, ${sessionScope.account==null ? "": sessionScope.account.fullName}!</a>
                                                </li>
                                                <li>
                                                    <a id="logout" href="#" onclick="checkLogout()" style="color: white; text-decoration: underline">${sessionScope.account==null ? "": "LOGOUT"}</a>
                                                </li>
                                            </c:if>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row" style="justify-content: flex-start; padding: 10px 0"">
                            <ul style="display: flex">
                                <c:forEach items="${requestScope.category}" var="c">
                                    <li style="color: white; margin-left: 50px; font-size: 18px"><a href="#">${c.name}</a></li>
                                    </c:forEach>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <div class="home_section_two color_two mb-70" style="margin-top: 100px">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-12">
                        <div class="home_section_left">
                            <!-- testimonial section starts  -->
                            <c:set var="cat" value="${requestScope.category}"/>
                            <div class="testimonial_style_two mb-60 rightleft">
                                <div class="testimonial_container">
                                    <div class="section_title section_title_style2">
                                        <h2 style="font-size: 20px">Refine</h2>
                                    </div>
                                    <form id="f1" action="refine" method="get">
                                        <div class="section_title section_title_style2">
                                            <h2 style="font-size: 16px;">Brand</h2>
                                            <fieldset class="responsiveFacets_sectionContent " aria-hidden="false">
                                                <div class="responsiveFacets_sectionItemLabel">
                                                    <input type="checkbox" class="responsiveFacets_sectionItemCheckbox" 
                                                           ${chid[0]?"checked":""} 
                                                           id="c0" 
                                                           name="cid_refine"
                                                           value="${0}">
                                                    <label class="responsiveFacets_sectionItem" for="brand">
                                                        ALL (${productsYear.size()})
                                                    </label>
                                                </div>
                                                <c:forEach begin="0" end="${cat.size()-1}" var="i">
                                                    <div class="responsiveFacets_sectionItemLabel">
                                                        <input type="checkbox" ${cat.get(i).getId()==cid?"checked":""}
                                                               class="responsiveFacets_sectionItemCheckbox"
                                                               id="brand" 
                                                               name="cid_refine"
                                                               value="${cat.get(i).getId()}"
                                                               ${chid[i+1]?"checked":""}
                                                               onclick="setCheck(this)"/>
                                                        <label class="responsiveFacets_sectionItem" for="brand" >
                                                            ${cat.get(i).name} (${cat.get(i).getTotalProduct()})
                                                        </label>
                                                    </div>
                                                </c:forEach>
                                            </fieldset>
                                        </div>
                                        <div class="section_title section_title_style2">
                                            <h2 style="font-size: 16px">Average Reviews</h2>
                                            <fieldset class="responsiveFacets_sectionContent " aria-hidden="false">
                                                <div>
                                                    <label class="responsiveFacets_sectionItemLabel">
                                                        <input type="checkbox" class="responsiveFacets_sectionItemCheckbox" name="en_brand_content" data-facet-value="Abercrombie+%26+Fitch" aria-label="Abercrombie &amp; Fitch (6 available products)" tabindex="0">
                                                        <span class="responsiveFacets_sectionItem " data-facet-key="en_brand_content" data-facet-value="Abercrombie+%26+Fitch">
                                                            <span class="responsiveFacets_sectionItemValue " aria-hidden="true">
                                                                2-3 (6)
                                                            </span>
                                                        </span>
                                                    </label>
                                                </div>
                                                <div>
                                                    <label class="responsiveFacets_sectionItemLabel">
                                                        <input type="checkbox" class="responsiveFacets_sectionItemCheckbox" name="en_brand_content" data-facet-value="Allsaints" aria-label="Allsaints (2 available products)" tabindex="0">
                                                        <span class="responsiveFacets_sectionItem " data-facet-key="en_brand_content" data-facet-value="Allsaints">
                                                            <span class="responsiveFacets_sectionItemValue " aria-hidden="true">
                                                                3-4 (2)
                                                            </span>
                                                        </span>
                                                    </label> 
                                                </div>
                                                <div>
                                                    <label class="responsiveFacets_sectionItemLabel">
                                                        <input type="checkbox" class="responsiveFacets_sectionItemCheckbox" name="en_brand_content" data-facet-value="Allsaints" aria-label="Allsaints (2 available products)" tabindex="0">
                                                        <span class="responsiveFacets_sectionItem " data-facet-key="en_brand_content" data-facet-value="Allsaints">
                                                            <span class="responsiveFacets_sectionItemValue " aria-hidden="true">
                                                                4+ (2)
                                                            </span>
                                                        </span>
                                                    </label>
                                                </div>
                                            </fieldset>
                                        </div>
                                        <div class="section_title section_title_style2">
                                            <h2 style="font-size: 16px">Price</h2>
                                            <fieldset class="responsiveFacets_sectionContent " aria-hidden="false">
                                                <div>
                                                    <label class="responsiveFacets_sectionItemLabel">
                                                        <input type="checkbox" class="responsiveFacets_sectionItemCheckbox" name="en_brand_content" data-facet-value="Abercrombie+%26+Fitch" aria-label="Abercrombie &amp; Fitch (6 available products)" tabindex="0">
                                                        <span class="responsiveFacets_sectionItem " data-facet-key="en_brand_content" data-facet-value="Abercrombie+%26+Fitch">
                                                            <span class="responsiveFacets_sectionItemValue " aria-hidden="true">
                                                                $10 - $30 (6)
                                                            </span>
                                                        </span>
                                                    </label>
                                                </div>
                                                <div>
                                                    <label class="responsiveFacets_sectionItemLabel">
                                                        <input type="checkbox" class="responsiveFacets_sectionItemCheckbox" name="en_brand_content" data-facet-value="Allsaints" aria-label="Allsaints (2 available products)" tabindex="0">
                                                        <span class="responsiveFacets_sectionItem " data-facet-key="en_brand_content" data-facet-value="Allsaints">
                                                            <span class="responsiveFacets_sectionItemValue " aria-hidden="true">
                                                                $30 - $50 (6)
                                                            </span>
                                                        </span>
                                                    </label> 
                                                </div>
                                                <div>
                                                    <label class="responsiveFacets_sectionItemLabel">
                                                        <input type="checkbox" class="responsiveFacets_sectionItemCheckbox" name="en_brand_content" data-facet-value="Allsaints" aria-label="Allsaints (2 available products)" tabindex="0">
                                                        <span class="responsiveFacets_sectionItem " data-facet-key="en_brand_content" data-facet-value="Allsaints">
                                                            <span class="responsiveFacets_sectionItemValue " aria-hidden="true">
                                                                $50 - $100(2)
                                                            </span>
                                                        </span>
                                                    </label>
                                                </div>
                                            </fieldset>
                                        </div>
                                        <div class="section_title section_title_style2">
                                            <h2 style="font-size: 16px">Discount    </h2>
                                            <fieldset class="responsiveFacets_sectionContent " aria-hidden="false">
                                                <div>
                                                    <label class="responsiveFacets_sectionItemLabel">
                                                        <input type="checkbox" class="responsiveFacets_sectionItemCheckbox" name="en_brand_content" data-facet-value="Abercrombie+%26+Fitch" aria-label="Abercrombie &amp; Fitch (6 available products)" tabindex="0">
                                                        <span class="responsiveFacets_sectionItem " data-facet-key="en_brand_content" data-facet-value="Abercrombie+%26+Fitch">
                                                            <span class="responsiveFacets_sectionItemValue " aria-hidden="true">
                                                                Up to 25% ()
                                                            </span>
                                                        </span>
                                                    </label>
                                                </div>
                                                <div>
                                                    <label class="responsiveFacets_sectionItemLabel">
                                                        <input type="checkbox" class="responsiveFacets_sectionItemCheckbox" name="en_brand_content" data-facet-value="Allsaints" aria-label="Allsaints (2 available products)" tabindex="0">
                                                        <span class="responsiveFacets_sectionItem " data-facet-key="en_brand_content" data-facet-value="Allsaints">
                                                            <span class="responsiveFacets_sectionItemValue " aria-hidden="true">
                                                                Up to 50% ()
                                                            </span>
                                                        </span>
                                                    </label> 
                                                </div>
                                                <div>
                                                    <label class="responsiveFacets_sectionItemLabel">
                                                        <input type="checkbox" class="responsiveFacets_sectionItemCheckbox" name="en_brand_content" data-facet-value="Allsaints" aria-label="Allsaints (2 available products)" tabindex="0">
                                                        <span class="responsiveFacets_sectionItem " data-facet-key="en_brand_content" data-facet-value="Allsaints">
                                                            <span class="responsiveFacets_sectionItemValue " aria-hidden="true">
                                                                Up to 75% ()
                                                            </span>
                                                        </span>
                                                    </label>
                                                </div>
                                            </fieldset>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <!-- testimonial section ends -->



                        </div>
                    </div>

                    <div class="col-lg-9 col-md-12">
                        <div class="home_section_right">
                            <div class="product_area" >
                                <div class="section_title section_title_style2">
                                    <h2>On Sale</h2>
                                </div>
                                <c:set var="page" value="${requestScope.page}"/>
                                <div class="pagination">
                                    <c:forEach begin="${1}" end="${requestScope.numberpage}" var="i">
                                        <a href="refine?page=${i}">${i}</a>
                                    </c:forEach>
                                </div>

                                <div class="row">
                                    <c:set var="proA" value=""/>
                                    <c:forEach items="${requestScope.productPage}" var="i">
                                        <div class="product_items col-lg-3" style="margin: 30px 0">
                                            <article class="single_product">
                                                <figure>
                                                    <div class="product_thumb">
                                                        <a href="#" class="primary_img">
                                                            <img src="${i.image1}" alt="">
                                                        </a>
                                                        <a href="#" class="secondary_img">
                                                            <img src="${i.image2}" alt="">
                                                        </a>

                                                        <div class="action_links">
                                                            <ul>
                                                                <li class="add_to_cart">
                                                                    <a href="#" title="Add to Cart">
                                                                        <i class="fa fa-shopping-cart"></i>
                                                                    </a>
                                                                </li>
                                                                <li class="wishlist">
                                                                    <a href="#" title="Add to Wishlist">
                                                                        <i class="fa fa-heart-o"></i>
                                                                    </a>
                                                                </li>
                                                                <li class="compare">
                                                                    <a href="#" title="Add to Compare">
                                                                        <i class="fa fa-random"></i>
                                                                    </a>
                                                                </li>
                                                                <li class="quick_button">
                                                                    <a href="#" data-toggle="modal"
                                                                       data-target="#modal_box" title="Quick View">
                                                                        <i class="fa fa-eye"></i>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <figcaption class="product_content">
                                                        <h4 class="product_name">
                                                            <a href="#">${i.name}</a>
                                                        </h4>
                                                        <div class="product_rating">
                                                            <ul>
                                                                <c:set var="numstar" value="${i.starRating}"/>
                                                                <c:forEach begin="1" end="${numstar}" step="1">
                                                                    <li>
                                                                        <a href="#" style="color: orange">
                                                                            <i class="fa fa-star"></i>
                                                                        </a>
                                                                    </li>
                                                                </c:forEach>
                                                                <c:if test="${numstar != 5}">
                                                                    <c:forEach begin="${numstar + 1}" end="5" step="1">
                                                                        <li>
                                                                            <a href="#" style="color: black">
                                                                                <i class="fa fa-star"></i>
                                                                            </a>
                                                                        </li>
                                                                    </c:forEach>
                                                                </c:if>
                                                            </ul>
                                                        </div>
                                                        <div class="price_box">
                                                            <c:if test="${i.price != i.salePrice}">
                                                                <span class="old_price">Rs. ${i.price}</span>
                                                            </c:if>
                                                            <span class="current_price">Rs. ${i.salePrice}</span>
                                                        </div>
                                                    </figcaption>
                                                </figure>
                                            </article>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- product section ends -->
            </div>
        </div>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>   
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.min.js"></script>
        <script src="js/countdown.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/js/jquery.nice-select.min.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>