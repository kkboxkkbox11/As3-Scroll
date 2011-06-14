package 
{
	//Flash
	import com.facebook.data.events.EventCategoriesValues;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.display.Stage;
	import flash.display.StageScaleMode;
	import flash.display.StageAlign;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.filters.DropShadowFilter;
	import flash.system.fscommand;
    import flash.net.*;
	import flash.text.TextField;
	import flash.ui.Mouse;
	import flash.display.BlendMode;
	import flash.display.*;
	import flash.net.URLLoader;
    import flash.net.URLLoaderDataFormat;
    import flash.net.URLRequest;
	
	//imports da scroll box
	import com.scrollclass.ScrollBar
	
	[SWF(width="1000", height="560", frameRate="30", backgroundColor="#EEEEEE")]
	
	public class Controller extends MovieClip
	{
		public var sc_box:AScrollbox = new AScrollbox;
		
		public function Controller():void
		{
			this.addEventListener(Event.ADDED_TO_STAGE, initStage, false, 0, true);
		}
		
		private function initStage(evt:Event):void 
		{
			this.removeEventListener(Event.ADDED_TO_STAGE, initStage);
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.addEventListener(Event.RESIZE, position);
			
			init();
		}
		
		private function init(evt:Event= null):void
		{
			addChild(sc_box);
			var sc_box_bar:ScrollBar = new ScrollBar(stage, sc_box, { _x_y:"y", _speed:0.6, _roll_on:false, _sb_visible:true } );
		}
		
		public function position(e:Event):void
		{
			
		}
	}
}