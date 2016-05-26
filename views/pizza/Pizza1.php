<?php
use yii\helpers\Html;
$this->title="Try this 1";
$this->registerJsFile('@web/js/jquery.js');
$this->registerJsFile('@web/js/script1.js');
$this->registerCssFile('@web/css/style.css');
?>
<head>
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
</head>

<body onload="display()">
	<div id="containerss" class="container-fluid">
		<div id="container-selection" class="container">
			<ul id="list-selection-container">
			</ul>
		</div>
	</div>

	<div id="display">
		
	</div>
</body>
