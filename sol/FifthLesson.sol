import './Lesson.sol';
import '../dao/Core.sol';

contract FifthLesson is Lesson {	
	function FifthLesson(address _emissionRegulator) 
		     Lesson(_emissionRegulator)
	{}
	
    function execute(string _token_name, address _dao) {
		if (accountOf[msg.sender]) throw;
		Core core = Core(_dao);
		var token = core.getModule(_token_name);
		if (token > 0) {			
			emissionRegulator.deal(msg.sender, 50);
			accountOf[msg.sender] = true;
		}
    }
}