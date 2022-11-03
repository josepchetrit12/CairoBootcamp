// Implement a funcion that returns:
// - 1 when magnitudes of inputs are equal
// - 0 otherwise

// Import from the math cairo library the function abs_value
from starkware.cairo.common.math import abs_value
// In order to use the function abs_value we need to use the implicit argument range_check_ptr
func abs_eq{range_check_ptr}(x: felt, y: felt) -> (bit: felt) {
    // Calculate the absolute value of the two inputs
    let temp = abs_value(x);
    let temp2 = abs_value(y);
    // Check if the absolute values are equals
    if (temp == temp2) {
        return (bit=1);
    } else {
        // If are different return 0
        return (bit=0);
    }
    
}
