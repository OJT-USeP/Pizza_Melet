<?php
use yii\helpers\Html;
use yii\helpers\Url;
/* @var $this yii\web\View */
/* @var $content string */
$this->registerJsFile('@web/js/jquery.js');
$this->registerJsFile('@web/js/script.js');
$this->registerJsFile('@web/js/script1.js');
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
</head>
<body onload="display_categories()">
<?php $this->beginBody() ?>
    <header>My Company</header>
	

    <?= $content ?>	
    <button onclick="display_categories()">Clcik</button>
    <footer>&copy; 2014 by My Company</footer>
<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>