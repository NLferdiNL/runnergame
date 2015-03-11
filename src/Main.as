package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author Ferdi Alleman
	 */
	public class Main extends Sprite 
	{
		
		public function Main():void 
		{
			var player:Player = new Player;
			player.x = 400;
			player.y = 300;
			addChild(player);
			stage.addEventListener(Event.ENTER_FRAME, player.GravityControl);
		}
		
	}
	
}