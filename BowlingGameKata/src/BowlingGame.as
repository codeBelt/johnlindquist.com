/**
 * User: John Lindquist
 * Date: 1/3/11
 * Time: 12:34 PM
 */
package
{
	import game.BowlingFrameCollection;

	public class BowlingGame
	{
		private var bowlingFrameCollection:BowlingFrameCollection;

		public function BowlingGame()
		{
			bowlingFrameCollection = new BowlingFrameCollection(10);
		}

		public function roll(pins:int):void
		{
			bowlingFrameCollection.roll(pins);
		}

		public function get score():int
		{
			return bowlingFrameCollection.getScore();
		}
	}
}