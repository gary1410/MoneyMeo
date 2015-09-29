$(document).ready(function(){
	// $('#debt_amount').on('change', function() {
	// 	var amount = parseFloat($('#debt_amount').val())

	// 	if (typeof(amount) == 'number'){
	// 		var monthly_payment = parseFloat($('#debt_monthly_payment').val());
	// 		console.log(monthly_payment)
	// 		$('#rate').val(monthly_payment/amount);
	// 	}
	// })
// debtAmount()
// monthlyPayment()
// determineValue()

  $("#debts_entry").on("ajax:success", function(e, data, status, xhr){
  	$("#debts_table").remove();
  	debugger
  	// console.log(data)
    $("#debts_append").append(data.debt_list)
  }
  ).on("ajax:error", function(e, xhr, status, error){
    $("#debts_table").append("<p>ERROR</p>")
  })

	$('#debt_amount').on('change', function() {
		calcRate();
	});

	$('#debt_monthly_payment').on('change', function(){
		calcRate();
	});

});

	// function debtAmount(){
	// 		$('#debt_amount').on('change', function() {
	// 			calcRate();
	// 		})
	// }

	// function monthlyPayment(){
	// 		$('#debt_monthly_payment').on('change', function(){
	// 		if (amount !== '' && monthlyPayment !== ''){
	// 			calcRate();
	// 		}
	// 		})
	// }

	function calcRate(){
			var amount = determineValue($('#debt_amount'))
			var monthlyPayment = determineValue($('#debt_monthly_payment'))
			var rate = $('#rate').val(monthlyPayment/amount);
			return rate
		}

	function determineValue(selector){
		if (parseFloat(selector.val()) !== ''){
			return parseFloat(selector.val());
		}
	}


// 	function calcRate(){
// 			var amount = parseFloat($('#debt_amount').val());
// 			var monthlyPayment = parseFloat($('#debt_monthly_payment').val());
// 			return amount
// 			console.log(amount)
// 	}

// 	console.log(calcRate())
// 	$('#debt_monthly_payment').on('change', function(){
// 		var amount = parseFloat($('#debt_amount').val());
// 		var monthly_payment = parseFloat($('#debt_monthly_payment').val());
// 		$('#rate').val(monthly_payment/amount);
// 	});
// });

// debt_amount on change
// 	calcRate

// monthly_pathment on change
// 	calcRate

// calcRate
// 	var amount = determineValue($('#debt_amount'))
// 	var monthlyPayment = determineValue($('#debt_monthly_payment'))


// determineValue(selector)
// 	if (parseInt(selector) is a number){
// 		return parseInt(selector)
// 	} else {
// 		return 0
// 	}
