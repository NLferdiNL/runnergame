package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.geom.ColorTransform;
	
	/**
	 * ...
	 * @author Ferdi Alleman
	 */
	public class Main extends Sprite 
	{
		
		public function Main():void 
		{
			//Setting up the player
			var player:Player = new Player;
			player.x = 400;
			player.y = 300;
			addChild(player);
			stage.addEventListener(Event.ENTER_FRAME, player.GravityControl);
			//For now it'll have to work like this. Will work on a better way.
			
			/*
			var body:Body = new Body;
			body.y = 0 + this.height / 2;
			addChild(body);
			*/
		}
		
	}
	
}