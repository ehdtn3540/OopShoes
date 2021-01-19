<%@page import="com.cart.dto.CartDTO"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<c:import url="../menu.jsp" />
</script>

   <div class="basket" id="basket">
      <h2>BASKET</h2>
<!-- 상품 총 수량 -->
      <div data-text-content="true" style="font-size: 14px; color: #999" class="cart-num" align = "center">
      <span class ="cart-num">
      </span>${fn:length(list)}개 상품</div>   
   <c:choose>   
      <c:when test="${empty list}"> <!-- 카트에 제품 없을 때 -->
      <div class = "product-select-all">
      <div class="cart-empty">
         <img src="img/basket.png">
         <p id="cart_none">장바구니에 담긴 상품이 없습니다.</p>
         <button id="btn_home" onclick="location.href='/oop/index.jsp'">계속 쇼핑하기</button>
      </div></div>
      <div class = "product-select-all"></div>
      </c:when>
   <c:otherwise><!-- 카트에 제품 있을 때 -->   
<!-- 전체 삭제 버튼    -->
      <div class = "product-select-all">
      <c:if test="${!empty list}">
         <c:forEach items="${list}" var="ob">
         <c:set var ="all" scope="session" value="${ob.getMid()}"/>
         </c:forEach></c:if>
         <input type="hidden" name="mid" value="${ob.getMid()}">
         <input id="btn_deleteAll" type="button" value="전체삭제" onclick="if(confirm('장바구니를 비우시겠습니까?')){location.href='cartDeleteAll.do?id=${all}'}">
      </div>
<!-- 상품목록 -->
   <c:if test="${!empty list}">
      <c:forEach items="${list}" var="ob">
      
      <div class = "item-cart" >
         <div class="item-info">
            <div class = "item-wrap">
            <!-- 이미지 -->
               <span class="img-wrap"><img src="/oop/img/shoes/${ob.getPimage1() }" ></span>
               <div class="info-wrap">
                  <div class ="pName">
                     ${ob.getPname()}
                  </div>
                  <div >
                     사이즈 : ${ob.getOdsize()}
                  <div>
                     수량 : ${ob. getOdqty()}
                  </div>
                  <div style="font-size: 16px; color: rgb(243, 156, 18); id="price">
                     <span style="background-color: rgb(255, 255, 255); font-size: large;">
                     <fmt:formatNumber type="number" maxFractionDigits="3" value="${ob.getOdqty()*ob.getPprice()}"/>원</span>
                  </div>
                  </div>
               </div>
               <div class = "btn-cancel">
                  <input id="btn_cancel" type="button" value="삭제" onclick="if(confirm('삭제하시겠습니까?')){location.href='cartDeleteEach.do?id=${ob.getCid()}'}">
               </div>
            </div>
         </div>
      </div>            
      </c:forEach>
      <div class="item-line">
      </div>
   </c:if>
               
         <!-- 주문 check란-->
         <div class="product-checkout">
               <div class =tit>주문예정금액</div>
               <div class = "checkout-container">
                  <div class = "info-price">
                     <!-- 상품금액 -->
                     <div class ="item-price">
                        <div class="label">상품금액</div>   
                        <div class = "price">
                           <c:if test="${!empty list}">
                              <c:set var ="sum" value="0"/>
                              <c:forEach var="ob" items="${list}">
                              <c:set var="sum" value="${sum+ob.pprice*ob.odqty}"/>
                              <c:set var="dis" value="${ob.getPdiscount()}"/>
                              </c:forEach>
                              <strong><fmt:formatNumber type="number" maxFractionDigits="3" value="${sum}" />원</strong>
                           </c:if>
                        </div>
                     </div>
                          <!-- 예상배송비 -->               
                          <div class ="item-price">
                             <div class="label">예상배송비</div>
                             <div class = "price">
                                <c:choose>
                                   <c:when test = "${sum<100000}">
                                      <c:set var="odel" value="3000"/>
                                      <fmt:formatNumber type="number" maxFractionDigits="3" value="${odel}" />원
                                   </c:when>
                                   <c:otherwise>
                                      <c:set var="odel" value="0"/>
                                      <fmt:formatNumber type="number" maxFractionDigits="3" value="${odel}" />원
                                   </c:otherwise>
                                </c:choose>
                             </div>
                          </div>
                     <!-- 상품 할인 금액 -->
                     <div class = "item-price">
                        <div class="label">상품 할인 금액</div>
                        <div class="price sale">
                           <strong><fmt:formatNumber type="number" maxFractionDigits="3" value="${sum*dis*0.01}" />원</strong>
                        </div>
                     </div>
                     <!-- 주문 할인 금액 -->
                     <div class = "item-price">
                        <span class="label">주문 할인 금액</span>
                        <span class="price sale">
                           <strong>원</strong>
                        </span>
                     </div>
                  </div>
                  <!-- 총 결제 예정 금액    -->                     
                  <div class="total-price ">
                     <strong class ="label" >총 결제 예정 금액</strong>
                     <div class ="price sale total">
                        <strong>
                        <fmt:formatNumber type="number" maxFractionDigits="3" value="${sum-sum*dis/100+odel}" />원
                        </strong>
                     </div>
                  </div>
                  <!-- 주문하기 버튼 -->
                   <form action="/oop/payList.do" method="post">
                     <c:if test="${!empty list}">
                     <c:forEach items="${list}" var="ob">
                     <c:set var ="all" scope="session" value="${ob.getMid()}"/>
                     <input type="hidden" name="mid" value="${all}">
                     </c:forEach></c:if>
                  <button type="submit" class="btn-order" value="ORDER">ORDER</button></form>
               </div>
            </div>
         </c:otherwise>
         </c:choose>
         </div>
<c:import url="../footer.jsp" />