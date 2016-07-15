import './Lesson.sol';
import 'dao/Core.sol';

contract Lesson_5 is Lesson {
    function Lesson_5(address _air, uint _reward)
             Lesson(_air, _reward) {}
    
    function execute(string _token_name, Core _dao) {
        if (_dao.getModule(_token_name) != 0)
            passed(msg.sender);
    }
}
