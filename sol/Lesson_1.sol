import './Lesson.sol';
import 'dao/Core.sol';

contract Lesson_1 is Lesson {
    function Lesson_1(address _air, uint _reward)
             Lesson(_air, _reward) {}

    function execute(Core _dao, address _shares, string _shares_name) {
        // Check when DAO is created
        if (_dao.getModule(_shares_name) == _shares && _shares != 0)
            passed(msg.sender);
    }
}
