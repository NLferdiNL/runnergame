package gameobjects {
	import flash.automation.MouseAutomationAction;
	import flash.events.Event;
	import flash.display.MovieClip;
	/**
	 * ...
	 * @author Ferdi Alleman
	 */
	//The ground will be pure cosmetic, collisions are handled by CharacterControl.
	
	public class Ground extends MovieClip
	{
		
		public function Ground(X:int = 0,Y:int = 0,Width:int = 50,Height:int = 50) 
		{
			this.graphics.beginFill(0, 1);
			this.graphics.drawRect(0, 0, Width, Height);
			this.graphics.endFill();
			this.x = X;
			this.y = Y;
		}
	}

}