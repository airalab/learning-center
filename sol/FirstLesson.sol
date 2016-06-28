import './Lesson.sol';
import '../dao/Core.sol';

contract FirstLesson is Lesson {
    function FirstLesson(address _ownerAir)
             Lesson(_ownerAir)
    {}
	
    function execute(address _dao, address _shares) {
		// проверяем что дао созданно
		if (Core(_dao).getModule('shares') == _shares) {
			ownerAir.deal(msg.sender, 100);
		}
    }
}