package  
{	
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	/**
	 * ...
	 * @author Ferdi Alleman
	 */
	public class Player extends CharacterControl
	{
		public function Player() 
		{
			//Setting up for keyevents
			addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		private function onAddedToStage(event:Event):void {
			stage.addEventListener(KeyboardEvent.KEY_DOWN, keyPress);
		}
		
		public function keyPress(event:KeyboardEvent):void {
			if (event.charCode == 32/*&& touchingground == true*/) { //uncomment the &&.. in the if condition to make you only able
				if (state == false) {//switch gravity when on the ground, upwards gravity doesn't work fully yet so keep it off
					state = true;
					gravity = 0; //this is here until gravity towards the ceiling is fixed, same goes for the one in the else section
				} else {
					state = false;
					gravity = 0;
				}
			}
		}
	}

}