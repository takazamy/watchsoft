package  
{
	import flash.utils.getTimer;
	/**
	 * ...
	 * @author Nguyễn Đoàn Phú
	 */
	public class Global 
	{
		/**
		 * Nếu giá trị nhỏ hơn 10 thì tự thêm số 0
		 * phía trước
		 * @return
		 */
		public static function getFullNumber(num:Number):String
		{
			var newNum:String = "0" + num;
			return num < 10 ? newNum: num.toString();
		}
	}

}