<?php
namespace app\controllers;
use yii\web\Controller;
use app\models\ContactForm;
use app\models\Categories;

class PizzaController extends Controller
{

	 //public $enableCsrfValidation = false;
	 public $data;
 	
 	    public function beforeAction($action)
   		 {
        if (in_array($action->id, ['me'])) {
            $this->enableCsrfValidation = false;
        }
        return parent::beforeAction($action);
   	 	}

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
				return $categories;	 /*              This code is meant for accessing the database                     */
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
    	$model=new ContactForm();
    	$datas=$model->get_name($data);

		\Yii::$app->response->format = 'json';

			return $datas;
	}

	public function actionMe()	
	{
		echo "OK";
	}
}
?>