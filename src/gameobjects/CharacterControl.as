package gameobjects {
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import gameobjects.Body;
	
	/**
	 * ...
	 * @author Ferdi Alleman
	 */
	
	public class CharacterControl extends Body
	{
		public var gravity:int = 0; //variable that will be used to store the down- or upwards force applied to the body
		public var ceiling:int = 100; //100 for now, might be changed during play later on
		private var defaultCeiling:int = 100; //this is the default value of ceiling
		public var floor:int = 590; //stage size for now, might be useful and due to change duing play later on
		private var defaultFloor:int = 590; //this is the default value of floor
		public var touchingGround:Boolean = false; //Is the body touching the ground, used by the player or ai to make sure they cant switch mid-air
		protected var normalGravity:Boolean = true; //false = gravity down, true = gravity up
		
		public function CharacterControl(){}
		
		public function GravityControl(event:Event):void
		{
			var bodyPosition:Number = this.y + this.height / 2;
			
			if (this.y < defaultCeiling || this.y > defaultFloor)
			{
				//death by falling occured
			}
			
			this.y += gravity;
			if (normalGravity && bodyPosition < floor) {
				//normalGravity = false so fall down
				gravity++;
				touchingGround = false;
			} else if (!normalGravity && bodyPosition > ceiling ) {
				//normalGravity == true so "fall" up
				gravity--;
				touchingGround = false;
			} else if (normalGravity && bodyPosition >= floor) {
				//normalGravity == false and is touching the floor
				gravity = 0;
				this.y = floor - this.height / 2;
				touchingGround = true;
			} else if (!normalGravity && bodyPosition <= ceiling ) {
				//normalGravity == true, check if on the ceiling				
				gravity = 0;
				touchingGround = true;
			}
			if(normalGravity){changeColor(0xff0000)}else{changeColor(0x00ff00)}
		}
	}
		
}

