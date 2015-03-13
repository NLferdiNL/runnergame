package  
{
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	
	/**
	 * ...
	 * @author Ferdi Alleman
	 */
	
	public class CharacterControl extends Body
	{
		public var gravity:int = 0; //variable that will be used to store the down- or upwards force applied to the body
		public var ceiling:int = 100; //0 for now, might be changed during play later on
		public var floor:int = 600; //stage size for now, might be useful and due to change duing play later on
		public var state:Boolean = false; //false = gravity down, true = gravity up
		public var touchingground = false;
		
		public function CharacterControl() 
		{
			
		}
		
		public function GravityControl(event:Event):void
		{
			this.y += gravity;
			if (state == false && this.y + this.height / 2 < floor) {
				//state = false so fall down
				gravity++;
				touchingground = false;
			} else if (state == true && this.height / 2 < this.y + this.height / 2) {
				//state == true so "fall" up
				gravity--;
				touchingground = false;
			} else if (state == false) {
				//state == false and is touching the floor
				gravity = 0;
				this.y = floor - this.height / 2;
				touchingground = true;
			} else if (this.y + this.height / 2 < ceiling + this.height / 2) {
				//state == true, check if on the ceiling
				gravity = 0;
				this.y = ceiling + this.height / 2;
				touchingground = true;
			} else { 
				//for the switch gravity only on the ground
				touchingground = false;
			}
		}
	}
		
}

