<?php
use yii\helpers\Html;
use yii\helpers\Url;
/* @var $this yii\web\View */
/* @var $content string */
$this->registerJsFile('@web/js/jquery.js');
$this->registerJsFile('@web/js/script1.js');
$this->registerCssFile('@web/css/style.css');
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
<body >
<?php $this->beginBody() ?>

    <?= $content ?>	
 
<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>