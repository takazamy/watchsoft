package  
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.TimerEvent;
	import flash.text.Font;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.utils.getTimer;
	import flash.utils.Timer;
	/**
	 * ...
	 * @author Nguyễn Đoàn Phú
	 */	
	
	public class Watch extends Sprite
	{
		
		private var time:Date;		
		private var time_txt:TextField;
		private var timer:Timer;
		private var gameMovie:Main = Main.getInstance();
		public function Watch() 
		{			
			time_txt = new TextField();
			time_txt.width = gameMovie.stage.stageWidth;			
			var textF:TextFormat = new TextFormat("High Speed", 80, 0x00ff33);
			textF.align = "center";
			time_txt.defaultTextFormat = textF;
			timer = new Timer(1000);
			this.addChild(time_txt);
			time = new Date();						
			timer.addEventListener(TimerEvent.TIMER, timeRun);
			timer.start();
		}
		
		private function timeRun(e:TimerEvent):void 
		{
			time = new Date();
			time_txt.text = Global.getFullNumber(time.hours) + ":" + Global.getFullNumber(time.minutes) + ":" + Global.getFullNumber(time.seconds);
		}
		
	}

}