$(document).ready(function(){
	   $(".check").click(function(){
		if ($(this).is(":checked"))
		{
			$(this).parent().next().show("slow");
		}
		else
		{
			$(this).parent().next().hide("slow");
		}
	  });
	});
	 
	 
	 
	
	$(document).ready(function(){
	$('#date').datepicker({  });
	});
	
	
	$(document).ready(function(){
	$('#date').datepicker({  });
	});
	
	
	//this is a trial 
	
	function checkCheckBoxes(EmpExpForm) {
	if (
	EmpExpForm.fare.checked == false) 
	{
		alert ('You didn\'t choose any of the checkboxes!');
		return false;
	} else { 	
		return true;
	}
}
	
	