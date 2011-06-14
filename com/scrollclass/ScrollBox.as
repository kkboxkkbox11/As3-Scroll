package com.scrollclass
{
	import com.scrollclass.ScrollBarEvent;
	
	import flash.display.*;
	import flash.events.*;
	import caurina.transitions.*;
	
	public class ScrollBox extends MovieClip
	{
	private var box:MovieClip;
	private var _x_y:String;
	
		public function ScrollBox(_box:MovieClip, _x_y_param:String):void
		{
			box = _box;
			_x_y = _x_y_param;
			trace(box.sb.name);
			this.addEventListener(ScrollBarEvent.VALUE_CHANGED, sbChange);
		}
		private function sbChange(e:ScrollBarEvent):void
		{
		if (_x_y == 'x')
			{
			trace(box.content);
			Tweener.addTween(box.content, {x:(-e.scrollPercent*(box.content.width - box.masker.width)),
							time:1 } );
			}
			else if (_x_y == 'y')
				{
				Tweener.addTween(box.content, {y:(-e.scrollPercent*(box.content.height - box.masker.height)),
							time:1 } );
				}
		}
	}
}