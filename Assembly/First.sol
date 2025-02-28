assembly {
    let x := 42
    mstore(0x40, x) // মেমরিতে x স্টোর করা
    let y := mload(0x40) // মেমরি থেকে y লোড করা
}
