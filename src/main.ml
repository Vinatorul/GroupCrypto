let () =
  let a = 1::(-2)::5::[] in
  let b = 3::4::[] in
  let c = Word.insert b 2 a in
  print_endline "Original word:";
  Word.println c;
  
  let d = Word.delete 1 4 c in
  print_endline "\nAfter deletion:";
  Word.println d;
  
  let e = Word.subword 1 4 c in
  print_endline "\nSubword:";
  Word.println e