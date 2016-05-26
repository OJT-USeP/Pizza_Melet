<?php
namespace app\models;
use yii\base\Model;
use app\models\Categories;

class CategoriesForm extends Model
{
	public function get_categories()
		{
			$categories=Categories::find()->orderBy('name')->all();
			return $categories;
		}

}
?>