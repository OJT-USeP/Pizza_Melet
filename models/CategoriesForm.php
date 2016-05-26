<?php
namespace app\models;
use yii\base\Model;
use app\models\Categories;
use app\models\Item;

class CategoriesForm extends Model
{
	public function get_categories()
		{
			$categories=Categories::find()->all();
			return $categories;
		}

	public function get_categories_item($e)
		{
			$categories_item=Item::find()->where(['category_id'=>$e])->all();
			return $categories_item;
		}
		
}
?>