let a = 1::(-2)::5::[];;
let b = 3::4::[];;
let c = Word.insert b 2 a;;
Word.println c;;
let d = Word.delete 1 4 c;;
let e = Word.subword 1 4 c;;
Word.println d;;
Word.println e;;