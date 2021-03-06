﻿package com.scrollclass
{
	import flash.events.*;
	
	public class ScrollBarEvent extends Event
	{
		public static const VALUE_CHANGED = "valueChanged";
		public var scrollPercent:Number;
		
		public function ScrollBarEvent(sp:Number):void
		{
			super(VALUE_CHANGED);
			scrollPercent = sp;
		}
	}
}

/*
import caurina.transitions.*;

var yOffset:Number;
var yMin:Number = 0;
var yMax:Number = sb.track.height - sb.thumb.height;

sb.thumb.addEventListener(MouseEvent.MOUSE_DOWN, thumbDown);
stage.addEventListener(MouseEvent.MOUSE_UP, thumbUp);

function thumbDown(e:MouseEvent):void
{
	stage.addEventListener(MouseEvent.MOUSE_MOVE, thumbMove);
	yOffset = mouseY - sb.thumb.y;
}

function thumbUp(e:MouseEvent):void
{
	stage.removeEventListener(MouseEvent.MOUSE_MOVE, thumbMove);
}

function thumbMove(e:MouseEvent):void
{
	sb.thumb.y = mouseY - yOffset;
	if(sb.thumb.y <= yMin)
		sb.thumb.y = yMin;
	if(sb.thumb.y >= yMax)
		sb.thumb.y = yMax;
	var sp:Number = sb.thumb.y/yMax;
	Tweener.addTween(content, {y:(-sp*(content.height - masker.height)),
								time:1});
	
	e.updateAfterEvent();
}*/