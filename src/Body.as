package  
{
	import flash.display.MovieClip;
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
			this.graphics.drawCircle(this.x, this.y, 25);
			this.graphics.endFill();
		}
		
	}

}