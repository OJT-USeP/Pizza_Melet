<?php
namespace app\controllers;
use yii\web\Controller;
use app\models\CategoriesForm;


class PizzaController extends Controller
{

	 //public $enableCsrfValidation = false;
	 public $data;
 	
 	    public function beforeAction($action)
   		{
        if (in_array($action->id, ['categories'])) {
            $this->enableCsrfValidation = false;
        }
        return parent::beforeAction($action);
   	 	}

	 public function actionIndex()
		{

			return $this->render('index');
		}
		
	/*public function actionCategories()
		{
			/*
			$model=new ContactForm();
			\Yii::$app->response->format = 'json';
			return $model->get_name("Justin");            ***** This code is meant for accessing the Model Class ***
 		
				$categories=Categories::find()->orderBy('name')->all();
				\Yii::$app->response->format = 'json';
				
				return $categories;	
				return $this->render('try');
				               This code is meant for accessing the database                     

				
		}*/

	public function actionView()
		{
			return $this->renderAjax('pizza1');
		}


	/*public function actionTrial($e)
		{
			 	\Yii::$app->response->format = 'json';
			 	$data=$e;
				return $data;
		}	*/

	/*public function actionRequest() 
	{
    	$request = \Yii::$app->request;
    	$data=$request->get('id');
    	$model=new ContactForm();
    	$datas=$model->get_name($data);

		\Yii::$app->response->format = 'json';

			return $datas;
	}*/

	public function actionCategories()	
	{
		$model=new CategoriesForm();
		$data=$model->get_categories();
		\Yii::$app->response->format = 'json';
		return $data;
	}

	public function actionItem($e)
	{
		$model=new CategoriesForm();
		$data=$model->get_categories_item($e);
		\Yii::$app->response->format='json';
	
		return $data;
	}
}
?>