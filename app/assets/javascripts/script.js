$(document).ready(function(){
	$('#debt_monthly_payment').on('change', function(){
		var amount = parseFloat($('#debt_amount').val());
		var monthly_payment = parseFloat($('#debt_monthly_payment').val());
		$('#rate').val(monthly_payment/amount);
	});
	$('#debt_amount').on('change', function() {
		var amount = parseFloat($('#debt_amount').val());
		var monthly_payment = parseFloat($('#debt_monthly_payment').val());
		$('#rate').val(monthly_payment/amount);
	});
});