

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<div class="col-md-9">
    <div class="col-md-5 single-top">	
        <ul id="etalage" class="etalage" style="display: block; width: 302px; height: 535px;">
            <li class="etalage_thumb thumb_1" style="display: none; background-image: none; opacity: 0;">
                <a href="optionallink.html">
                    <img class="etalage_thumb_image img-responsive" src="${pageContext.servletContext.contextPath }/assets/images/s1.jpg" style="display: inline; width: 300px; height: 400px; opacity: 1;">
                    <img class="etalage_source_image img-responsive" src="${pageContext.servletContext.contextPath }/assets/images/s11.jpg" alt="">
                </a>
            </li>
            <li class="etalage_thumb thumb_2" style="background-image: none; display: none; opacity: 0;">
                <img class="etalage_thumb_image img-responsive" src="${pageContext.servletContext.contextPath }/assets/images/s2.jpg" style="display: inline; width: 300px; height: 400px; opacity: 1;">
                <img class="etalage_source_image img-responsive" src="${pageContext.servletContext.contextPath }/assets/images/s12.jpg" alt="">
            </li>
            <li class="etalage_thumb thumb_3" style="background-image: none; display: none; opacity: 0;">
                <img class="etalage_thumb_image img-responsive" src="${pageContext.servletContext.contextPath }/assets/images/s3.jpg" style="display: inline; width: 300px; height: 400px; opacity: 1;">
                <img class="etalage_source_image img-responsive" src="${pageContext.servletContext.contextPath }/assets/images/s13.jpg" alt="">
            </li>
            <li class="etalage_thumb thumb_4 etalage_thumb_active" style="background-image: none; display: list-item; opacity: 1;">
                <img class="etalage_thumb_image img-responsive" src="${pageContext.servletContext.contextPath }/assets/images/s4.jpg" style="display: inline; width: 300px; height: 400px; opacity: 1;">
                <img class="etalage_source_image img-responsive" src="${pageContext.servletContext.contextPath }/assets/images/s14.jpg" alt="">
            </li>
            <li class="etalage_magnifier" style="margin: 0px; padding: 0px; left: 105px; top: 123px; display: none; opacity: 0.980973;"><div style="margin: 0px; padding: 0px; width: 195px; height: 174px;"><img src="file:///C:/Users/Ancelmo%20Ulloa/Desktop/web/${pageContext.servletContext.contextPath }/assets/images/s4.jpg" style="margin: 0px; padding: 0px; width: 300px; height: 400px; display: inline; left: -105px; top: -123px;"></div></li><li class="etalage_icon" style="display: list-item; top: 278px; left: 20px; opacity: 1;">&nbsp;</li><li class="etalage_hint" style="display: none; margin: 0px; top: -15px; right: -15px;">&nbsp;</li><li class="etalage_zoom_area" style="margin: 0px; opacity: 0; left: 312px; display: none; background-image: none;"><div class="etalage_description" style="width: 546px; bottom: 6px; left: 6px; opacity: 0.7; display: none;"></div><div style="width: 586px; height: 521px;"><img class="etalage_zoom_img" src="${pageContext.servletContext.contextPath }/assets/images/s14.jpg" style="width: 900px; height: 1200px; left: -312.677px; top: -369px;"></div></li><li class="etalage_small_thumbs" style="width: 302px; top: 412px;"><ul style="width: 724px;"><li class="etalage_smallthumb_navtoend" style="opacity: 0.4; margin: 0px 10px 0px 0px; left: -312.012px;"><img class="etalage_small_thumb" src="file:///C:/Users/Ancelmo%20Ulloa/Desktop/web/${pageContext.servletContext.contextPath }/assets/images/s4.jpg" width="86" style="width: 86px; height: 115px;"></li><li class="" style="opacity: 0.4; margin: 0px 10px 0px 0px; left: -312.012px;"><img class="etalage_small_thumb" src="file:///C:/Users/Ancelmo%20Ulloa/Desktop/web/${pageContext.servletContext.contextPath }/assets/images/s1.jpg" width="86" style="width: 86px; height: 115px;"></li><li class="" style="opacity: 0.4; margin: 0px 10px 0px 0px; left: -312.012px;"><img class="etalage_small_thumb" src="file:///C:/Users/Ancelmo%20Ulloa/Desktop/web/${pageContext.servletContext.contextPath }/assets/images/s2.jpg" width="86" style="width: 86px; height: 115px;"></li><li class="etalage_smallthumb_first" style="opacity: 0.4; margin: 0px 10px 0px 0px; left: -312.012px;"><img class="etalage_small_thumb" src="file:///C:/Users/Ancelmo%20Ulloa/Desktop/web/${pageContext.servletContext.contextPath }/assets/images/s3.jpg" width="86" style="width: 86px; height: 115px;"></li><li class="etalage_smallthumb_active" style="opacity: 1; margin: 0px 10px 0px 0px; left: -312.012px;"><img class="etalage_small_thumb" src="file:///C:/Users/Ancelmo%20Ulloa/Desktop/web/${pageContext.servletContext.contextPath }/assets/images/s4.jpg" width="86" style="width: 86px; height: 115px;"></li><li class="etalage_smallthumb_navtostart etalage_smallthumb_last" style="opacity: 0.4; margin: 0px 10px 0px 0px; left: -312.012px;"><img class="etalage_small_thumb" src="file:///C:/Users/Ancelmo%20Ulloa/Desktop/web/${pageContext.servletContext.contextPath }/assets/images/s1.jpg" width="86" style="width: 86px; height: 115px;"></li></ul></li></ul>

    </div>	
    <div class="col-md-7 single-top-in">
        <div class="single-para">
            <h4> ${product.description}</h4>
            <div class="para-grid">
                <span class="add-to">${product.price}</span>
                <a href="#" class=" cart-to">Add to Cart</a>					
                <div class="clearfix"></div>
            </div>
            <h5>100 items in stock</h5>
            <div class="available">
                <h6>Available Options :</h6>
                <ul>

                    <li>Size:<select>
                            <option>Large</option>
                            <option>Medium</option>
                            <option>small</option>
                            <option>Large</option>
                            <option>small</option>
                        </select></li>
                    <li>Cost:
                        <select>
                            <option>U.S.Dollar</option>
                            <option>Euro</option>
                        </select></li>
                </ul>
            </div>

            <a href="#" class="cart-an ">More details</a>           
            <div class="share">
                <h4>Share Product :</h4>
                <ul class="share_nav">
                    <li><a href="#"><img src="${pageContext.servletContext.contextPath }/assets/images/facebook.png" title="facebook"></a></li>
                    <li><a href="#"><img src="${pageContext.servletContext.contextPath }/assets/images/twitter.png" title="Twiiter"></a></li>
                    <li><a href="#"><img src="${pageContext.servletContext.contextPath }/assets/images/rss.png" title="Rss"></a></li>
                    <li><a href="#"><img src="${pageContext.servletContext.contextPath }/assets/images/gpluse.png" title="Google+"></a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="clearfix"> </div>
    <div class="nbs-flexisel-container"><div class="nbs-flexisel-inner"><ul id="flexiselDemo1" class="nbs-flexisel-ul" style="left: -137.6px; display: block;">





    <li class="nbs-flexisel-item" style="width: 137.6px;"><img src="${pageContext.servletContext.contextPath }/assets/images/pi2.jpg"><div class="grid-flex"><a href="#">Simple</a><p>Rs 850</p></div></li><li class="nbs-flexisel-item" style="width: 137.6px;"><img src="${pageContext.servletContext.contextPath }/assets/images/pi3.jpg"><div class="grid-flex"><a href="#">Text</a><p>Rs 850</p></div></li><li class="nbs-flexisel-item" style="width: 137.6px;"><img src="${pageContext.servletContext.contextPath }/assets/images/pi4.jpg"><div class="grid-flex"><a href="#">Sit</a><p>Rs 850</p></div></li><li class="nbs-flexisel-item" style="width: 137.6px;"><img src="${pageContext.servletContext.contextPath }/assets/images/pi.jpg"><div class="grid-flex"><a href="#">Lorem</a><p>Rs 850</p></div></li><li class="nbs-flexisel-item" style="width: 137.6px;"><img src="${pageContext.servletContext.contextPath }/assets/images/pi1.jpg"><div class="grid-flex"><a href="#">Amet</a><p>Rs 850</p></div></li><li class="nbs-flexisel-item" style="width: 137.6px;"><img src="${pageContext.servletContext.contextPath }/assets/images/pi2.jpg"><div class="grid-flex"><a href="#">Simple</a><p>Rs 850</p></div></li><li class="nbs-flexisel-item" style="width: 137.6px;"><img src="${pageContext.servletContext.contextPath }/assets/images/pi3.jpg"><div class="grid-flex"><a href="#">Text</a><p>Rs 850</p></div></li><li class="nbs-flexisel-item" style="width: 137.6px;"><img src="${pageContext.servletContext.contextPath }/assets/images/pi4.jpg"><div class="grid-flex"><a href="#">Sit</a><p>Rs 850</p></div></li><li class="nbs-flexisel-item" style="width: 137.6px;"><img src="${pageContext.servletContext.contextPath }/assets/images/pi.jpg"><div class="grid-flex"><a href="#">Lorem</a><p>Rs 850</p></div></li><li class="nbs-flexisel-item" style="width: 137.6px;"><img src="${pageContext.servletContext.contextPath }/assets/images/pi1.jpg"><div class="grid-flex"><a href="#">Amet</a><p>Rs 850</p></div></li></ul><div class="nbs-flexisel-nav-left" style="top: 74.5px;"></div><div class="nbs-flexisel-nav-right" style="top: 74.5px;"></div></div></div>
    <script type="text/javascript">
         $(window).load(function() {
                $("#flexiselDemo1").flexisel({
                        visibleItems: 5,
                        animationSpeed: 1000,
                        autoPlay: true,
                        autoPlaySpeed: 3000,    		
                        pauseOnHover: true,
                enableResponsiveBreakpoints: true,
                responsiveBreakpoints: {
                    portrait: {
                        changePoint: 480,
                        visibleItems: 1
                    },
                    landscape: {
                        changePoint: 640,
                        visibleItems: 2
                    },
                    tablet: {
                        changePoint: 768,
                        visibleItems: 3
                    }
                }
            });

        });
    </script>
    <script type="text/javascript" src="${pageContext.servletContext.contextPath }/assets/js/jquery.flexisel.js"></script>
    <!---->

    <!---->
</div>