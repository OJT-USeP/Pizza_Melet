<?php
namespace app\models;
use yii\base\Model;

class ContactForm extends Model
{
	public $name;
	public $email;
	public $subject;
	public $body;


	public function get_name($e)
		{
			
			return $e;
		}

}
?>