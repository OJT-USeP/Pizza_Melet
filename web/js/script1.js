var data_list=[];
function display()
	{
		$.get(
			"index.php?r=pizza/categories",
			function success(data)
				{
					$.each(data,function(key,value){
						$('#list-selection-container').append('<li class="sel" id="'+value.id+'">'+value.name+'</li>');
					});
					
				}
			);
	}
function submit_to_cart(e)
	{
					$.post(
						"index.php?r=pizza/add",
						{'data':data_list},
						function success(data)
							{
								console.log("Total Quantity: "+data.total_quantity);
								console.log("Total Tax: "+data.total_tax);
								console.log("Total Payment: "+data.total_amount);
							}
						);
	}

function add_to_cart(e)
	{
		var quantity=document.getElementById("input_cart_"+e);
			if(quantity.value=="")
				{
					alert("No Item Added!!");
				}
			else
				{
					data_list.push({'quantity':quantity.value,'product_id':e});
				}	
	}	
$(document).ready(function(){
	$("#list-selection-container").on(
		"click",
		".sel",
		function()
		{
			$.get(
				"index.php?r=pizza/item&e="+this.id,
				function success(data)
					{
						$("#display").html("");
						$.each(data,function(key,value){

							if(value.name_img!=null)
							{
								
								var element='<div class="display-product " id="'+value.id+'">';
									element+='<img src="'+value.name_img+'" id="img_'+value.id+'"/>';
									element+='<div class="add-to-cart" id="cart_'+value.id+'">';
				                    element+='<input type="text" placeholder="Enter a Number" class="input_cart_'+value.id+'" id="input_cart_'+value.id+'"/><br>';
									element+='<button type="button" onclick="add_to_cart('+value.id+')" class="input_cart" >Add to the Cart</button>';
									element+='</div></div>';
								$("#display").append(element);
							
							}
							else
								console.log(value.name);
						});
					}
				);
		}
		);
});

$(document).ready(function(){
	$("#display").on("mouseover",".display-product",function(){
		$("#img_"+this.id).css("display","none");
		$("#cart_"+this.id).css("display","block");
		$(".input_cart").css("display","block");
	});
	$("#display").on("mouseleave",".display-product",function(){
		$("#img_"+this.id).css("display","block");
		$("#cart_"+this.id).css("display","none");
	});
	

});

