package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.geom.ColorTransform;
	import gameobjects.Ground;
	import gameobjects.Player;
	
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
			player.x = 425;
			player.y = 300;
			addChild(player);
			stage.addEventListener(Event.ENTER_FRAME, player.GravityControl);
			//For now it'll have to work like this. Will work on a better way.
			
			var ground:Ground = new Ground(400,350,100);
			var ground2:Ground = new Ground(400,20,100);
			player.floor = 350;
			player.ceiling = 130;
			addChild(ground);
			addChild(ground2);
		}
		
	}
	
}