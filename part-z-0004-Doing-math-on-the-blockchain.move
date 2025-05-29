/*
To make sure our Spider's DNA is only 10 digits, let's make another u64 value equal to 10^10. 
That way we can later use the modulus operator % to create valid DNA codes from any randomly generated numbers. 
Create another integer value named dna_modulus in the SpiderDna struct, and set it equal to 10 to the power of dna_digits.

*/

module 0xcafe::spider_nest {
    struct SpiderDna has key {
        dna_digits: u64,
        dna_modulus: u64,
    }

    fun init_module(cafe_signer: &signer) {
        move_to(cafe_signer, SpiderDna {
            dna_digits: 10,
            dna_modulus: 10 ^ dna_digits,
        });
    }
}

/*
Doing math in Move is easy and very similar to other programming languages:

Add: x + y
Subtract: x - y
Multiply: x * y
Divide: x / y
Mod: x % y
Exponential: x ^ y

*/
