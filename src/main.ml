let a = 1::2::5::[];;
let b = 3::4::[];;
let c = Elem.insert b 2 a;;
Elem.println c;;
let d = Elem.delete 1 4 c;;
let e = Elem.subword 1 4 c;;
Elem.println d;;
Elem.println e;;