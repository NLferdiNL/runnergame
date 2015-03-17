package  
{
	import flash.display.MovieClip;
	import flash.geom.ColorTransform;
	/**
	 * ...
	 * @author Ferdi Alleman
	 */
	public class Body extends MovieClip
	{
		
		public function Body() 
		{
			
			//Render the character and let control take care of gravity and death situations
			this.graphics.beginFill(0, 1);
			this.graphics.drawCircle(0, 0, 25);
			this.graphics.endFill();
		}
		
		protected function changeColor(c:uint):void
		{
			//this.graphics.clear();
			this.graphics.beginFill(c, 1);
			this.graphics.drawCircle(0, 0, 25);
			this.graphics.endFill();
			
		}
		
	}

}