/**
 * User: John Lindquist
 * Date: 1/4/11
 * Time: 12:08 PM
 */
package game
{
	public class NormalRollBehavior implements AddPinsBehavior
	{

		protected var bowlingFrame:BowlingFrame;
		protected var numOfBonusRolls:int;

		public function addPins(bowlingFrame:BowlingFrame, pins:int):void
		{
			this.bowlingFrame = bowlingFrame;
			bowlingFrame.nextRoll();
		}

		public function addBonusPins(pins:int):void
		{
			if (numOfBonusRolls > 0)
			{
				bowlingFrame.frameScore += pins;
				bowlingFrame.addBonusPinsToPreviousFrame(pins);
				numOfBonusRolls--;
			}
		}
	}
}