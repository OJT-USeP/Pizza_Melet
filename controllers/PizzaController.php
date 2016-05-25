<?php
namespace app\controllers;
use yii\web\Controller;
use app\models\ContactForm;
use app\models\Categories;

class PizzaController extends Controller
{
	 public $data;

	 public function actionIndex()
		{

			return $this->render('index');

		}
		
	public function actionTry()
		{
			/*
			$model=new ContactForm();
			\Yii::$app->response->format = 'json';
			return $model->get_name("Justin");            ***** This code is meant for accessing the Model Class *****
 			*/
				$categories=Categories::find()->orderBy('name')->all();
				\Yii::$app->response->format = 'json';
				return $categories; /*              This code is meant for accessing the database                     */
       

		}

	/*public function actionTrial($e)
		{
			 	\Yii::$app->response->format = 'json';
			 	$data=$e;
				return $data;
		}	*/

	public function actionRequest() 
	{
    	$request = \Yii::$app->request;
    	$data=$request->get('id');
		\Yii::$app->response->format = 'json';
			return $data;
	}
}
?>