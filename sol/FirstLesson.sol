import './Lesson.sol';
import '../dao/Core.sol';

contract FirstLesson is Lesson {
    function FirstLesson(address _emissionRegulator)
             Lesson(_emissionRegulator)
    {}
	
    function execute(address _dao, address _shares, string _shares_name) {
		if (accountOf[msg.sender]) throw;
		// проверяем что дао созданно
		if (Core(_dao).getModule(_shares_name) == _shares) {
			emissionRegulator.deal(msg.sender, 50);
			accountOf[msg.sender] = true;
		}
    }
}