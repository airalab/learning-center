import './OwnerAir.sol';

contract Lesson {
    
    OwnerAir public ownerAir;
    mapping(address => bool) public accountOf;
    
    function Lesson(address _ownerAir) {
        ownerAir = OwnerAir(_ownerAir);
    }
}