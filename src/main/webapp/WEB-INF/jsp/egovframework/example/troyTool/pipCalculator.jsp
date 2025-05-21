<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html data-wf-page="673af67d6ae3deba73656006" data-wf-site="66fa23fa604f581407c85fa7">
<head>
  <meta charset="utf-8">
  <jsp:include page="../frame/header.jsp"></jsp:include>
</head>
<body>
  <div class="bg-frame page2">
    <div class="form-block w-form">
      <form id="email-form" name="email-form" data-name="Email Form" method="get" class="form" data-wf-page-id="673af67d6ae3deba73656006" data-wf-element-id="af3e75c5-9f77-7b8a-5191-5d4cabea0504">
        <jsp:include page="../frame/FixMenu.jsp"></jsp:include>
        <section class="main-section calculator">
          <div data-w-id="af3e75c5-9f77-7b8a-5191-5d4cabea052f" style="-webkit-transform:translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-moz-transform:translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-ms-transform:translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);transform:translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);opacity:0" class="frame-2">
            <h1 class="heading"><spring:message code="pipCalculator.mainSe-head"/></h1>
            <div class="sub-txt"><spring:message code="pipCalculator.mainSe-stxt"/></div>
            <a href="#pip" class="button w-button"><spring:message code="pipCalculator.mainSe-btn"/></a>
            <a href="#" class="button _2 w-inline-block">
              <div class="btn-txt"><spring:message code="pipCalculator.mainSe-btn2"/></div>
            </a>
          </div>
        </section>
				<section class="section-pip">
					<div data-w-id="dfdb6878-96be-2b4a-0e1e-1f614eaf4ff6"
						style="-webkit-transform: translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); -moz-transform: translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); -ms-transform: translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); transform: translate3d(0, 150px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); opacity: 0"
						class="frame-2 black">
						<h1 id="pip" class="heading4 _2">
							<spring:message code="pipCalculator.pipSe-head" />
						</h1>
						<div class="pipvalue-box">
							<div class="pvc-box">
								<div class="pvc-txt">
									<spring:message code="pipCalculator.pipSe-pvc" />
								</div>
								<select class="select-pvc w-select" id="account-currency">
									<option value="AUD" selected>AUD</option>
									<option value="USD">USD</option>
									<option value="EUR">EUR</option>
								</select>
								<div class="pvc-txt">
									<spring:message code="pipCalculator.pipSe-pvc3" />
								</div>
								<input class="text-field-44 w-input" id="trade-lots-pip" type="number" value="100000">
							</div>
							<div class="pvc-box">
								<div class="pvc-txt">
									<spring:message code="pipCalculator.pipSe-pvc2" />									
								</div>
								<select id="currency-pair" class="select-pvc w-select">
									<option value="">AUD/CAD</option>
								</select>
								<div class="pip-bold-txt">
									<spring:message code="pipCalculator.pipSe-btxt" /> (<span id="account-currency-label">AUD</span>): <span id="pip-value"></span>
								</div>
							</div>
						</div>
					</div>
				</section>
				<div class="understanding-section">
          <div class="frame-8 black">
            <div class="txt-sub-title"><spring:message code="pipCalculator.usSe-title"/></div>
            <h1 class="heading4"><spring:message code="pipCalculator.usSe-head"/></h1>
            <div class="num-box">
              <div class="pip-num-wrap">
                <h1 class="big-txt-pip">1</h1>
                <div class="stickarrow-box">
                  <div class="stick-num"></div>
                  <div class="arrow-block"></div>
                </div>
                <div class="sub-pip-txt">10.000<br><spring:message code="pipCalculator.usSe-pips"/></div>
              </div>
              <div class="pip-num-wrap">
                <h1 class="big-txt-pip">.</h1>
              </div>
              <div class="pip-num-wrap">
                <h1 class="big-txt-pip">1</h1>
                <div class="stickarrow-box">
                  <div class="stick-num"></div>
                  <div class="arrow-block"></div>
                </div>
                <div class="sub-pip-txt">1.000<br><spring:message code="pipCalculator.usSe-pips"/></div>
              </div>
              <div class="pip-num-wrap">
                <h1 class="big-txt-pip">6</h1>
                <div class="stickarrow-box">
                  <div class="stick-num"></div>
                  <div class="arrow-block"></div>
                </div>
                <div class="sub-pip-txt">600<br><spring:message code="pipCalculator.usSe-pips"/></div>
              </div>
           	  <div class="pip-num-wrap">
                <h1 class="big-txt-pip">1</h1>
                <div class="stickarrow-box">
                  <div class="stick-num"></div>
                  <div class="arrow-block"></div>
                </div>
                <div class="sub-pip-txt">10<br><spring:message code="pipCalculator.usSe-pips"/></div>
              </div>
           	 <div class="pip-num-wrap">
                <h1 class="big-txt-pip mc">2</h1>
                <div class="stickarrow-box">
                  <div class="stick-num"></div>
                  <div class="arrow-block"></div>
                </div>
                <div class="sub-pip-txt">2<br><spring:message code="pipCalculator.usSe-pips"/></div>
              </div>
          	  <div class="pip-num-wrap">
                <h1 class="big-txt-pip small">5</h1>
                <div class="stickarrow-box">
                  <div class="stick-num"></div>
                  <div class="arrow-block"></div>
                  <div class="sub-pip-txt">0<br>‍<spring:message code="pipCalculator.usSe-pips"/></div>
                </div>
              </div>
            </div>
            <div class="pips-txt"><spring:message code="pipCalculator.usSe-ptxt"/></div>
          </div>
        </div>
        <section class="txt-section special">
          <div class="frame-3">
            <h1 class="heading4 center"><spring:message code="pipCalculator.txtSe-head"/></h1>
            <div class="flex-g">
              <div class="commodities-div-box">
                <div class="title-txt-pip on"><spring:message code="pipCalculator.txtSe-title"/></div>
                <div class="txt-sub spacing"><spring:message code="pipCalculator.txtSe-detail"/></div>
                <div class="title-txt-pip on"><spring:message code="pipCalculator.txtSe-title2"/></div>
                <div class="txt-sub spacing"><spring:message code="pipCalculator.txtSe-detail2"/></div>
                <div class="title-txt-pip on"><spring:message code="pipCalculator.txtSe-title3"/></div>
                <div class="txt-sub spacing"><spring:message code="pipCalculator.txtSe-detail3"/></div>
              </div>
              <div class="commodities-div-box">
                <div class="title-txt-pip on"><spring:message code="pipCalculator.txtSe-title4"/></div>
                <div class="txt-sub spacing"><spring:message code="pipCalculator.txtSe-detail4"/></div>
              </div>
            </div>
          </div>
        </section>
        <jsp:include page="../frame/successSection.jsp"></jsp:include>
        <jsp:include page="../frame/serviceSection.jsp"></jsp:include>
      </form>
    </div>
  </div>
  <jsp:include page="../frame/riskfooter.jsp"></jsp:include>
  <jsp:include page="../frame/footer.jsp"></jsp:include>
</body>
<script>
$(document).ready(function() {
	  var rates = {}; // Object to store the rates
	  var currencies={};
	  function sortObj(obj) {
	  return Object.keys(obj).sort().reduce(function (result, key) {
	    result[key] = obj[key];
	    return result;
	  }, {});
	}

	function pipCalc(){
	    // Function to update the currency pair label and value
	  function updateCurrencyPair() {
	    var selectedPair = $('#currency-pair').val().replace('/', '').toUpperCase();

	    var conversionRate = rates[selectedPair];
	    if (conversionRate) {
	      $('#currency-pair-value').text(conversionRate);
	    } else {
	      $('#currency-pair-value').text('N/A');
	    }
	    $('#currency-pair-label').text($('#currency-pair').val());
	  }

	  // Function to update the account currency label
	  function updateAccountCurrencyLabel() {
	    $('#account-currency-label').text($('#account-currency').val());
	  }

	 // Function to calculate and update the pip value
	function calculateAndUpdatePipValue() {
	  var accountCurrency = $('#account-currency').val();
	  var tradeSize = $('#trade-lots-pip').val();
	  var selectedPair = $('#currency-pair').val().replace('/', '').toUpperCase();
	  var baseCurrency = selectedPair.substring(0, 3);
	  var quoteCurrency = selectedPair.substring(4, 7);
	  var pipSize = selectedPair.endsWith('JPY') ? 0.01 : 0.0001;
	  var exchangeRate = rates[selectedPair];
	  var conversionRate = 1; // Default conversion rate

	  // Convert exchangeRate to a float
	  exchangeRate = parseFloat(exchangeRate);

	  // Determine if conversion is needed
	  if (accountCurrency !== baseCurrency) {
	    // Find the conversion pair
	    var conversionPair = (accountCurrency + baseCurrency).toUpperCase();
	    conversionRate = parseFloat(rates[conversionPair]);
	    if (isNaN(conversionRate)) {
	      conversionPair = (baseCurrency + accountCurrency).toUpperCase();
	      conversionRate = 1 / parseFloat(rates[conversionPair]);
	    }
	  }

	  // Ensure all values are valid numbers
	  if (!isNaN(tradeSize) && !isNaN(exchangeRate) && !isNaN(conversionRate)) {
	    var pipValue = (pipSize / exchangeRate) * tradeSize;
	    pipValue = pipValue / conversionRate; // Convert the pip value to the account currency

	    $('#currency-pair-value').text(exchangeRate.toFixed(5));
	    $('#pip-value').text(pipValue.toFixed(2));
	  } else {
	    $('#pip-value').text('N/A');
	    $('#currency-pair-value').text('N/A');
	  }
	  
	  // Update the account currency label
	  updateAccountCurrencyLabel();
	}

	// Event handlers for dropdown changes and input field changes
	  $('#currency-pair, #account-currency').change(function() {
	    updateCurrencyPair();
	    updateAccountCurrencyLabel();
	    calculateAndUpdatePipValue();
	  });

	  $('#trade-lots-pip').on('input', function() {
	    calculateAndUpdatePipValue();
	  });

	 // Set initial values for the labels and currency pair value
	      updateCurrencyPair();
	      updateAccountCurrencyLabel();
	      calculateAndUpdatePipValue();

	}
	  

	function currConverter(){
	  var rates=currencies;
	   var uniqueCurrencies = new Set();

	  // Extract unique currencies from the rates
	  Object.keys(rates).forEach(function(pair) {
	    var currencies = pair.split('/');
	    uniqueCurrencies.add(currencies[0]);
	    uniqueCurrencies.add(currencies[1]);
	  });

	   // Convert Set to Array and sort it alphabetically
	  var sortedCurrencies = Array.from(uniqueCurrencies).sort();

	  // Populate the currency dropdowns
	  sortedCurrencies.forEach(function(currency) {
	    $('#currency-from, #currency-to').append($('<option>', {
	      value: currency,
	      text: currency
	    }));
	  });

	function convertCurrency() {
	  var fromCurrency = $('#currency-from').val();
	  var toCurrency = $('#currency-to').val();
	  var amount = parseFloat($('#currency-convertor-amount').val());

	  // Check if from and to currencies are the same
	  if (fromCurrency === toCurrency) {
	    updateConversionDisplay(1, fromCurrency + '/' + toCurrency); // Rate is 1 for same currency
	    updateConversionResult(amount, toCurrency); // The amount remains the same
	  } else {
	    // Try direct conversion
	    var directRate = getDirectOrInverseRate(fromCurrency, toCurrency);
	    if (directRate !== null) {
	      var convertedAmount = amount * directRate;
	      updateConversionDisplay(directRate, fromCurrency + '/' + toCurrency);
	      updateConversionResult(convertedAmount, toCurrency);
	    } else {
	      // Attempt indirect conversion
	      performIndirectConversion(fromCurrency, toCurrency, amount);
	    }
	  }
	}

	function getDirectOrInverseRate(fromCurrency, toCurrency) {
	  var directRate = parseFloat(rates[fromCurrency + '/' + toCurrency]);
	  if (!isNaN(directRate)) {
	    return directRate;
	  } else {
	    var inverseRate = parseFloat(rates[toCurrency + '/' + fromCurrency]);
	    if (!isNaN(inverseRate)) {
	      return 1 / inverseRate;
	    }
	  }
	  return null;
	}

	function performIndirectConversion(fromCurrency, toCurrency, amount) {
	  var indirectRateFound = false;
	  for (var intermediary of uniqueCurrencies) {
	    if (intermediary !== fromCurrency && intermediary !== toCurrency) {
	      var rate1 = getDirectOrInverseRate(fromCurrency, intermediary);
	      var rate2 = getDirectOrInverseRate(intermediary, toCurrency);
	      if (rate1 !== null && rate2 !== null) {
	        indirectRateFound = true;
	        var indirectRate = rate1 * rate2;
	        var convertedAmount = amount * indirectRate;
	        updateConversionDisplay(indirectRate, fromCurrency + '/' + intermediary + '/' + toCurrency);
	        updateConversionResult(convertedAmount, toCurrency);
	        break;
	      }
	    }
	  }
	  if (!indirectRateFound) {
	    $('#currency-exchange-price').text('Conversion not possible');
	    $('#conversion-value').text('N/A');
	  }
	}

	function updateConversionDisplay(rate, label) {
	  $('#currency-exchange-price').text(rate.toFixed(6));
	  $('#currency-conversion-label').text(label);
	}

	function updateConversionResult(convertedAmount, toCurrency) {
	  if (!isNaN(convertedAmount)) {
	    $('#conversion-value').text(convertedAmount.toFixed(2));
	    $('#conversion-currency-label').text(toCurrency);
	  } else {
	    $('#conversion-value').text('N/A');
	  }
	}

	$('#currency-from, #currency-to, #currency-convertor-amount').on('change input', convertCurrency);
	convertCurrency();


	}

	  // Load currency pairs and rates from the backend
	  $.ajax({
	    // url: 'dat/exchange-rate.json',//原本
	    //url:'https://www.zeromarkets.com/portal/calc/dat/exchange-rate.json',//跨域
	    url:'/dist/rate.json',//跨域
	    type: 'GET',
	    dataType: 'json',
	    success: function(data) {
	      data=sortObj(data);
	      rates = data; // Store the rates in the variable


	      var currencyPairSelect = $('#currency-pair');
	      currencyPairSelect.empty(); // Clear any existing options

	      
	      for (var key in data){
	        if (!/\d/.test(key)&&key.indexOf('X')!==0)
	           if (key.indexOf('AUD')>=0||key.indexOf('USD')>=0||key.indexOf('EUR')>=0||key.indexOf('CAD')>=0||key.indexOf('GBP')>=0){
	                 let pair=key.replace(/([A-Z]+)([A-Z]{3})$/, "$1/$2");
	                 currencyPairSelect.append($('<option>', {
	                  value: pair,
	                  text: pair
	                }));
	                 currencies[pair]=data[key];
	              
	           }
	      }

	      pipCalc();
	      currConverter();
	     
	    }
	  });

	  $('#calctype').change(function(){
	       var type=$(this).val();
	       var calculators=$('.calculator');
	       calculators.addClass('d-none');
	       console.log('[data-type="'+type+'"]');
	       calculators.filter('[data-type="'+type+'"]').removeClass('d-none');
	  });
	$('#calctype').change();
	  
	});

</script>
</html>