open Alcotest
open Groupcrypto.Word

let test_correct () =
  (* Test boundary conditions *)
  check int "min bound" 0 (correct (-1) 5);
  check int "max bound" 5 (correct 10 5);
  check int "within bounds" 3 (correct 3 5)

let test_insert () =
  (* Test empty list *)
  check (list int) "insert into empty" [1;2;3] (insert [1;2;3] 0 []);
  (* Test middle position *)
  check (list int) "insert middle" [1;2;5;6;7;3;4] 
    (insert [5;6;7] 2 [1;2;3;4]);
  (* Test out of bounds *)
  check (list int) "insert beyond end" [1;2;3;4;5;6] 
    (insert [5;6] 10 [1;2;3;4])

let test_delete () =
  (* Test full range *)
  check (list int) "delete all" [] (delete 0 5 [1;2;3;4;5]);
  (* Test partial range *)
  check (list int) "delete middle" [1;5] (delete 1 3 [1;2;3;4;5]);
  (* Test out of bounds *)
  check (list int) "delete beyond" [1;2;3] (delete 5 10 [1;2;3])

let test_subword () =
  (* Test full range *)
  check (list int) "subword all" [1;2;3] (subword 0 2 [1;2;3]);
  (* Test partial range *)
  check (list int) "subword middle" [2;3] (subword 1 2 [1;2;3;4]);
  (* Test out of bounds *)
  check (list int) "subword beyond" [] (subword 5 10 [1;2;3])

let test_find_neg () =
  (* Test no negative *)
  check int "no negative" (-1) (find_neg [1;2;3]);
  (* Test with negative *)
  check int "has negative" 2 (find_neg [1;2;(-3);4]);
  (* Test first negative *)
  check int "first negative" 0 (find_neg [(-1);2;3])

let () =
  run "Word Tests" [
    ("correct", [test_case "Boundary checks" `Quick test_correct]);
    ("insert", [test_case "Insert operations" `Quick test_insert]);
    ("delete", [test_case "Delete operations" `Quick test_delete]);
    ("subword", [test_case "Subword operations" `Quick test_subword]);
    ("find_neg", [test_case "Negative finding" `Quick test_find_neg]);
  ]