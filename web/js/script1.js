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
							$("#display").append('<img src="images/'+value.id+'.png">');
						});
					}
				);
			
		}
		);
});