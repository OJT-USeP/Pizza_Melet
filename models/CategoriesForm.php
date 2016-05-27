<?php
namespace app\models;
use yii\base\Model;
use app\models\Categories;
use app\models\Item;
use app\models\Pictures;
use app\models\Detail;
use app\models\Orders;

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
			$categories_img=Pictures::find()->where(['category_id'=>$e])->all();
			$merge=array_merge($categories_item,$categories_img);
			return $merge;
		}
	
	public function add_item($e)
		{
			$total_quantity=0;
			$total_amount=0;
			$total_tax=0;

			foreach($e as $value)
			{
				$id=$value['product_id'];
				$quantity=$value['quantity'];

				$get_the_item=Item::find()->where(['id'=>$id])->one();
					$price=$get_the_item->price;
					$tax=$get_the_item->tax;
						$temp_amount=($price+$tax)*($quantity);
							$total_amount+=$temp_amount;
							$total_quantity+=$quantity;
							$total_tax+=$tax*$quantity;	
			}
								$order=new Orders();	
									$order->total_amount=$total_amount;
									$order->total_quantity=$total_quantity;
									$order->total_tax=$total_tax;
										$order->save();	

										//orderBy(['sort' => SORT_DESC]);
							$order_id=Orders::find()->orderBy(['id'=>SORT_DESC])->one();
							$record_id=$order_id->id;

							foreach ($e as $value)
							 {
									$id=$value['product_id'];
									$quantity=$value['quantity'];									

									$get_name=Item::find()->where(['id'=>$id])->one();
										$name=$get_name->name;
										$price=$get_name->price;
										$tax=$get_name->tax;

												$detail=new Detail();
												$detail->order_id=$record_id;
												$detail->food_item=$id;
												$detail->tax=$tax;                      
												$detail->price=$price;
												$detail->name=$name;
												$detail->quantity=$quantity;
													$detail->save();
							 }
							 	return $order_id;
		}	
}
?>