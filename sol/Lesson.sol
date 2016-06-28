import './OwnerAir.sol';

contract Lesson {
    
    OwnerAir public ownerAir;
    
    function Lesson(address _ownerAir) {
        ownerAir = OwnerAir(_ownerAir);
    }
}