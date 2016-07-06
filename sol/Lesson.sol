import './EmissionRegulator.sol';

contract Lesson {
    
    EmissionRegulator public emissionRegulator;
    mapping(address => bool) public accountOf;
    
    function Lesson(address _emissionRegulator) {
        emissionRegulator = EmissionRegulator(_emissionRegulator);
    }
}