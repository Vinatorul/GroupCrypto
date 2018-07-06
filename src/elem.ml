let rec print l = match l with
  | [] -> ()
  | h::t -> Printf.printf "%d " h; print t;;

let rec println l = 
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

let delete left right items =
  let mx = List.length items in
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
  delete_correct 0 items;;