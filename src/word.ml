let rec print l = match l with
  | [] -> ()
  | h::t -> let rec string_of_item = function
    | x when x < 0 -> string_of_item (-x) ^ "^{-1}"
    | x when abs(x) > 9 -> "x_{" ^ string_of_int(x) ^ "}"
    | x -> "x_" ^ string_of_int(x) in
    print_string (string_of_item h); print t;;

let println l =
  print l;
  Printf.printf "\n"

let correct idx mx =
  min (max 0 idx) mx;;

let insert source pos dest = 
  let rec insert_correct source cpos = function
    | [] -> source
    | h::t -> 
      if cpos = 0 then 
        source@(h::t) 
      else 
        h::insert_correct source (cpos-1) t
  and cpos = correct pos (List.length dest) in
  insert_correct source cpos dest;;

let delete left right word =
  let mx = List.length word in
  let cleft = correct left mx
  and cright = correct right mx in
  let rec delete_correct cur_idx = function
    | [] -> []
    | h::t -> 
      if (cleft <= cur_idx) && (cright >= cur_idx) then 
        delete_correct (cur_idx + 1) t
      else
        h::delete_correct (cur_idx + 1) t
  in
  delete_correct 0 word;;

let subword left right word =
  let mx = List.length word in
  let cleft = correct left mx
  and cright = correct right mx in
  let rec subword_correct cur_idx = function
    | [] -> []
    | h::t -> 
      if (cleft <= cur_idx) && (cright >= cur_idx) then 
        h::subword_correct (cur_idx + 1) t
      else
        subword_correct (cur_idx + 1) t
  in
  subword_correct 0 word;; 

let find_neg word =
  let rec find_neg idx = function
    | [] -> -1
    | x::_ when x < 0 -> idx
    | _::xs -> find_neg (idx+1) xs in
  find_neg 0 word;;
