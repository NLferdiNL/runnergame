package level 
{
	import flash.geom.Point;
	import gameobjects.Ground;
	import gameobjects.Player;
	/**
	 * ...
	 * @author Ferdi Alleman
	 */
	public class level01 
	{
		
		private function getPos(colums:int,i:int,width:int):Point
		{
			var x = (i % colums) * width;
			var y = (Math.floor(i / colums)) * width;
			var p:Point = new Point(x, y);
			return p;
		}
		
		public function level01() 
		{
			
			/**
			 * 0 = air
			 * 1 = ground
			 * 2 = player
			 * 3 = ai
			 */
			var level:Array = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
							   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0,
							   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
							   1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
							   0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
							   1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1]
							   
							   
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
					level[i] = new Player(getPos(24, i, 50).x,getPos(24, i, 50).y);
					addChild(level[i]);
				}
				if (level[i] == 3)
				{
					//ai -- unused
				}
			}
			
		}
		
	}

}