package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	
	public class Main extends MovieClip {
		
		var TheTitle:theTitle;
		var firstPage:FirstPage;
		var SecondPage:secondPage;
		var ThreePage:threePage;
		var FourPage:fourPage;
		var FivePage:fivePage;
		
		
		
		public function Main() {
			// constructor code
			
		 TheTitle=new theTitle;
		 firstPage=new FirstPage;
		 SecondPage=new secondPage;
		 ThreePage=new threePage;
		 FourPage=new fourPage;
		 FivePage=new fivePage;
			
			addChild(TheTitle);
			
			
			
			TheTitle.startButton.addEventListener(MouseEvent.CLICK,onStartButtonClick);
			firstPage.previousButton.addEventListener(MouseEvent.CLICK,onPreviousButtonClick);
			firstPage.nextButton.addEventListener(MouseEvent.CLICK,onNextButtonClick);
			SecondPage.previousButton.addEventListener(MouseEvent.CLICK,onPrevious2ButtonClick);
			SecondPage.nextButton.addEventListener(MouseEvent.CLICK,onNext2ButtonClick);
			ThreePage.previousButton.addEventListener(MouseEvent.CLICK,onPrevious3ButtonClick);
			ThreePage.nextButton.addEventListener(MouseEvent.CLICK,onNext3ButtonClick);
			FourPage.previousButton.addEventListener(MouseEvent.CLICK,onPrevious4ButtonClick);
			FourPage.nextButton.addEventListener(MouseEvent.CLICK,onNext4ButtonClick);
			FivePage.previousButton.addEventListener(MouseEvent.CLICK,onPrevious5ButtonClick);
			FivePage.backToStartButton.addEventListener(MouseEvent.CLICK,onBackToStartButtonClick);
		
		}
		
		//Event Handlers
		function onStartButtonClick(event:MouseEvent):void
		{
			addChild(firstPage);
			removeChild(TheTitle);
		}
		function onPreviousButtonClick(event:MouseEvent):void
		{
			addChild(TheTitle);
			removeChild(firstPage);
		}
		function onNextButtonClick(event:MouseEvent):void
		{
			addChild(SecondPage);
			removeChild(firstPage);
		}
		function onPrevious2ButtonClick(event:MouseEvent):void
		{
			addChild(firstPage);
			removeChild(SecondPage);
		}
		function onNext2ButtonClick(event:MouseEvent):void
		{
			addChild(ThreePage);
			removeChild(SecondPage);
		}
		function onPrevious3ButtonClick(event:MouseEvent):void
		{
			addChild(SecondPage);
			removeChild(ThreePage);
		}
		function onNext3ButtonClick(event:MouseEvent):void
		{
			addChild(FourPage);
			removeChild(ThreePage);
		}
		function onPrevious4ButtonClick(event:MouseEvent):void
		{
			addChild(ThreePage);
			removeChild(FourPage);
		}
		function onNext4ButtonClick(event:MouseEvent):void
		{
			addChild(FivePage);
			removeChild(FourPage);
		}
		function onPrevious5ButtonClick(event:MouseEvent):void
		{
			addChild(FourPage);
			removeChild(FivePage);
		}
		function onBackToStartButtonClick(event:MouseEvent):void
		{
			addChild(TheTitle);
			removeChild(FivePage);
		}
	}
	
}
