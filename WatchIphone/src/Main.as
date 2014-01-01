package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author Nguyễn Đoàn Phú
	 */
	//[SWF(width="1024", height="768", backgroundColor="#000000", frameRate="30")]
	public class Main extends Sprite 
	{
		private var watch:Watch;
		private static var _main:Main;
		public static function getInstance():Main
		{
			return _main;
		}
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			_main = this;
			removeEventListener(Event.ADDED_TO_STAGE, init);
			watch = new Watch();
			this.addChild(watch);
			// entry point
		}
		
	}
	
}