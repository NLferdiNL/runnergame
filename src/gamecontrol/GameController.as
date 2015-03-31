package gamecontrol {
	/**
	 * ...
	 * @author Ferdi Alleman
	 */
	import flash.display.Sprite;
	import flash.geom.Point;
	import gameobjects.Ground;
	import gameobjects.Player;
		
	public class GameController extends Sprite
	{
		
		public function GameController() 
		{
			
		}
		
		private function getPos(colums:int,i:int,width:int):Point
		{
			var x = (i % colums) * width;
			var y = (Math.floor(i / colums)) * width;
			var p:Point = new Point(x, y);
			return p;
		}
		
		public function renderLevel(level:Array):Sprite {
			for (var i:int = 0; level.length > i; i++ )
			{
				if (level[i] == 0)
				{
					//air
				}
				if (level[i] == 1)
				{
					//ground
					level[i] = new Ground(getPos(24, i, 50).x,getPos(24, i, 50).y);
					addChild(level[i]);
				}
				if (level[i] == 2)
				{
					//player
					level[i] = new Player();
					var p:Point = getPos(24, i, 50);
					level[i].x = p.x;
					level[i].y = p.y; 
					addChild(level[i]);
				}
				if (level[i] == 3)
				{
					//ai -- unused
				}
			}
			return this;
		}
	}

}