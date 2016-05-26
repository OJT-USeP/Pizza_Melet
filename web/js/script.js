/*var data=[{product:"shampoo",quantity:100},
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
					$('body').append('<div>'+value.name+'</div>');
				});
				
			}
		
		);
			
	}

function view_other()
	{
		window.location="index.php?r=pizza/view";
	}	


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

function btn_click2()
	{
		$.post(
			"index.php?r=pizza/me",
			function success(data)
				{
					console.log(data);
				}
			);
	}	
*/	

function display_categories()
{
	/*$.post(
		"index.php?r=pizza/categories",
		function success(data)
			{
				$.each(data,function(key,value)
				{
					$('body').append('<div style="display:inline-block;margin-right:2px">'+value.name+'</div>');
				});
			}
		);
	*/
	window.location="index.php?r=pizza/view";
	tt();
}

function tt()
	{
		$.get(
		"index.php?r=pizza/me",
		function success(data)
			{
				console.log(data);
			}

		);
	}
window.onload = function() {
    // Check if localStorage is available (IE8+) and make sure that the visited flag is not already set.
    if(typeof window.localStorage !== "undefined" && !localStorage.getItem('visited')) {
         // Set visited flag in local storage
         localStorage.setItem('visited', true);
         // Alert the user
	window.location="index.php?r=pizza/view";	
         alert("Hello my friend. This is your first visit.");   
    }
}
