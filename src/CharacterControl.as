package  
{
	import flash.events.Event;
	
	/**
	 * ...
	 * @author Ferdi Alleman
	 */
	
	public class CharacterControl extends Body
	{
		private var gravity:int = 0;
		private var floor:int = 600;
		
		public function CharacterControl() 
		{
		}
		
		public function GravityControl():void
		{
			this.y += gravity;
			if (this.y + this.height / 2 < floor)
				gravity++;
			else
			{
				gravity = 0;
				this.y = floor - this.height / 2;
			}
		}
	}
		
}

