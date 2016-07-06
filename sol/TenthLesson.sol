import './Lesson.sol';
import '../market/Market.sol';
import '../market/Lot.sol';

contract TenthLesson is Lesson {
    function TenthLesson(address _ownerAir)
             Lesson(_ownerAir)
    {}
	
	address[] lots;
	
	function execute(address _market) {
		if (accountOf[msg.sender]) throw;
		Market market = Market(_market);
		if (market.size() < 5) throw;
		Lot lot = market.first();
		lots.push(lot.sale());
		for (var i = 1; i < market.size(); i++) {
			lot = market.next(lot);
			bool exist = false;
			for (var j = 0; j < lots.length; j++) {
				address addr = lot.sale();
			    if (lots[j] == addr && lots.length < 5) {
			        exist = true;
			    }
			}
			if (!exist) {
				lots.push(lot.sale());
			}
		}
		if (lots.length >= 5) {
			ownerAir.deal(msg.sender, 100);
			accountOf[msg.sender] = true;
		}
		delete lots;
    }
}