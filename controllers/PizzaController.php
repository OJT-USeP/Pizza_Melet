<?php
namespace app\controllers;
use yii\web\Controller;
use app\models\CategoriesForm;
use yii\web\Request;

class PizzaController extends Controller
{

 	    public function beforeAction($action)
   			{
       			 if (in_array($action->id, ['categories','add'])) {
            		$this->enableCsrfValidation = false;
			}
     				   return parent::beforeAction($action);
   	 		}

		 public function actionIndex()
			{
				    	return $this->render('index');
			}
		
		public function actionView()
			{
				return $this->renderAjax('pizza1');
			}

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
				$merge=$model->get_categories_item($e);
				\Yii::$app->response->format='json';

					return $merge;
			}

	public function actionAdd()
		{
		
			$request=\Yii::$app->request;
			$name=$request->post('data');
			\Yii::$app->response->format='json';
			$model=new CategoriesForm();
			$data=$model->add_item($name);

			return $data;
		}


}
?>