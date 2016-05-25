var data=[{product:"shampoo",quantity:100},
		  {product:"conditioner",quantity:200}
		];
		data.push({product:"candy",quantity:200});

function btn_click()
	{
			$.getJSON(
		"index.php?r=pizza/try",
		{param:'Hello'},
		function success(data)
			{
				$.each(data,function(key,value){
					console.log(value.id+" "+value.name);
				});
				
			}
		
		);
	}

/*
function btn_click2()
	{
		$.getJSON(
			"index.php?r=pizza/trial",
			{e:2},
			function success(data)
				{
					console.log(data);
				}
			);
	}	
*/

function btn_click2()
	{
		$.get(
			"index.php?r=pizza/request",
			{id:data},
			function success(data)
				{
					$.each(data ,function(key,value){
						console.log(value.product+" "+value.quantity);

					});
				}
			);
	}	
	

