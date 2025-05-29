// Write the init_module function to create and store the SpiderDna resource at the address 0xcafe with dna_digits set to 10.

module 0xcafe::spider_nest {
    struct SpiderDna has key {
        dna_digits: u64,
    }

    fun init_module(cafe_signer: &signer) {
        move_to(cafe_signer, SpiderDna {
            dna_digits: 10,
        });
    }
}


/*
Now that we have defined the SpiderDna struct, we need to set its initial value. 
We can’t set the initial value directly when defining a struct, so we'll need to create a function to do that. 
Recall that structs can be stored directly into global storage on Aptos. Structs stored in global storage are called Resources. 
Each Resource needs to be stored at a specific address. This can be the same address where the module is deployed or any other user address. 
This is different from other blockchains - code and data can coexist at the same address on Aptos. 
For our spider_nest module, we'll keep it simple and store the SpiderDna resource at the same address as the module. 
Let’s initialize it by writing the init_module function, where we get access to the signer of the address we're deploying to. 
init_module is called when the module is deployed to the blockchain and is the perfect place for initializing data. 
Signer is required to create and store a new resource at an address the first time.



*/
