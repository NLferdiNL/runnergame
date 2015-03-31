package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.geom.ColorTransform;
	import gamecontrol.GameController;
	import gameobjects.Ground;
	import gameobjects.Player;
	import level.level01;
	
	/**
	 * ...
	 * @author Ferdi Alleman
	 */
	public class Main extends Sprite 
	{
		
		public function Main():void 
		{
			var lvl:level01 = new level01();
			var gamecontroller:GameController = new GameController();
			
			addChild(gamecontroller.renderLevel(lvl.level));
			
		}
		
	}
	
}