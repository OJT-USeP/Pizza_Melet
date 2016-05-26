function display()
	{
		$.get(
			"index.php?r=pizza/categories",
			function success(data)
				{
					$.each(data,function(key,value){
						$('#list-selection-container').append('<li onclick="btn_cat(this)" class="sel">'+value.name+'</li>');
					});
					
				}
			);

	}
function btn_cat()
	{

	}	