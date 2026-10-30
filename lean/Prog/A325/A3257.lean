import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A325700: Numbers with as many distinct even as distinct odd prime indices.

The programs for A325700, there is no canonical definition to state claims against.
-/

/-! ## A325700.P1396438085122245511

`∪[A000156(n), A360551(n+1)]`
-/

namespace A325700.P1396438085122245511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000156 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325700.P1396438085122245511

/-! ## A325700.P13876346128894713913

`∪[A360551(n+1), A001496(n)]`
-/

namespace A325700.P13876346128894713913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001496 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325700.P13876346128894713913

/-! ## A325700.P2549285119068345398

`∪[A002409(n), A360551(n+1)]`
-/

namespace A325700.P2549285119068345398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002409 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325700.P2549285119068345398

/-! ## A325700.P10650855695392606939

`∪[A003486(n), A360551(n+1)]`
-/

namespace A325700.P10650855695392606939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003486 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325700.P10650855695392606939

/-! ## A325700.P6372246849365097965

`∪[A360551(n+1), A005912(n)]`
-/

namespace A325700.P6372246849365097965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005912 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325700.P6372246849365097965

/-! ## A325700.P6028432545142123094

`∪[A007245(n), A360551(n+1)]`
-/

namespace A325700.P6028432545142123094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007245 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325700.P6028432545142123094

/-! ## A325700.P11521075654483986781

`∪[A007247(n), A360551(n+1)]`
-/

namespace A325700.P11521075654483986781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007247 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325700.P11521075654483986781

/-! ## A325700.P11520842250325542412

`∪[A360551(n+1), A007900(n)]`
-/

namespace A325700.P11520842250325542412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007900 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325700.P11520842250325542412

/-! ## A325700.P16766823267606371517

`∪[A360551(n+1), A008340(n)]`
-/

namespace A325700.P16766823267606371517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008340 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325700.P16766823267606371517

/-! ## A325700.P13759301381597472814

`∪[A360551(n+1), A008349(n)]`
-/

namespace A325700.P13759301381597472814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008349 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325700.P13759301381597472814

/-!
# A325701: Nonprime Heinz numbers of integer partitions whose reciprocal factorial sum is the reciprocal of an integer.

The programs for A325701, there is no canonical definition to state claims against.
-/

/-! ## A325701.P17940894162030738637

`filter[A325623(n+1), A005171(#)]`
-/

namespace A325701.P17940894162030738637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A325701.P17940894162030738637

/-! ## A325701.P495361321260972857

`filter[A325623(n+1), A292438(#)]`
-/

namespace A325701.P495361321260972857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A325701.P495361321260972857

/-! ## A325701.P6915284814168717130

`filter[A325623(n+1), A353380(#)]`
-/

namespace A325701.P6915284814168717130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353380 (f1 j).toNat = 1) n)

end

end A325701.P6915284814168717130

/-! ## A325701.P16447166296554661194

`filter[A325623(n+1), A373481(#)]`
-/

namespace A325701.P16447166296554661194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373481 (f1 j).toNat = 1) n)

end

end A325701.P16447166296554661194

/-! ## A325701.P458807010566663242

`filter[A325623(n+1), A373978(#)]`
-/

namespace A325701.P458807010566663242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A325701.P458807010566663242

/-!
# A325703: If n = prime(i_1)^j_1 * ... * prime(i_k)^j_k, then a(n) is the denominator of the reciprocal factorial sum j_1/i_1! + ... + j_k/i_k!.

The programs for A325703, there is no canonical definition to state claims against.
-/

/-! ## A325703.P5655446505250490500

`A318574(A325709(n+1))`
-/

namespace A325703.P5655446505250490500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318574 (A325709 (n + 1)).toNat

end

end A325703.P5655446505250490500

/-! ## A325703.P6377744141557813475

`A325704(2*(n+1))-A325704(n+1)`
-/

namespace A325703.P6377744141557813475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325704 (2 * (n + 1)) - A325704 (n + 1)

end

end A325703.P6377744141557813475

/-! ## A325703.P7263093616959218711

`gcd(A182938(A321898(n+1)), A321898(n+1))`
-/

namespace A325703.P7263093616959218711
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A182938 (A321898 (n + 1)).toNat) (A321898 (n + 1))

end

end A325703.P7263093616959218711

/-! ## A325703.P14369556823514471306

`A318574(A077168(n))!`
-/

namespace A325703.P14369556823514471306
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A318574 (A077168 n).toNat).toNat

end

end A325703.P14369556823514471306

/-! ## A325703.P10290279445858934797

`A289508(A329044(n+1)²)!`
-/

namespace A325703.P10290279445858934797
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A289508 (A329044 (n + 1) ^ 2).toNat).toNat

end

end A325703.P10290279445858934797

/-!
# A325704: If n = prime(i_1)^j_1 * ... * prime(i_k)^j_k, then a(n) is the numerator of the reciprocal factorial sum j_1/i_1! + ... + j_k/i_k!.

The programs for A325704, there is no canonical definition to state claims against.
-/

/-! ## A325704.P1054229812099810279

`A318573(A325709(n+1))`
-/

namespace A325704.P1054229812099810279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318573 (A325709 (n + 1)).toNat

end

end A325704.P1054229812099810279

/-! ## A325704.P5602170687506932538

`A318573(∏{e}[A181821(n+1), A062439(#)])`
-/

namespace A325704.P5602170687506932538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318573 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A062439 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A325704.P5602170687506932538

/-! ## A325704.P10125384995552555245

`A318573(∏{e}[A304660(n+1), A062439(#)])`
-/

namespace A325704.P10125384995552555245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318573 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A062439 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A325704.P10125384995552555245

/-! ## A325704.P13878654532643462902

`A318573(∏{e}[A181821(n+1), A000040(#!)])`
-/

namespace A325704.P13878654532643462902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318573 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorial (Nat.factorization (f1 n).natAbs p))).toNat

end

end A325704.P13878654532643462902

/-! ## A325704.P14921867067875291507

`A342507(A197929(n+1)^A003963(n+1))`
-/

namespace A325704.P14921867067875291507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342507 (SequenceMachineLib.roundAway ((A197929 (n + 1) : ℚ) ^ (A003963 (n + 1) : ℤ))).toNat

end

end A325704.P14921867067875291507

/-!
# A325706: Heinz numbers of integer partitions containing all of their distinct multiplicities.

The programs for A325706, there is no canonical definition to state claims against.
-/

/-! ## A325706.P14401596784374498866

`eq[n+1, lcm(n+1, A329601(n+1))]+1`
-/

namespace A325706.P14401596784374498866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A329601 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A325706.P14401596784374498866

/-! ## A325706.P1326362167212902880

`∪[A349020(n+1), A367683(n+1)]`
-/

namespace A325706.P1326362167212902880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325706.P1326362167212902880

/-! ## A325706.P17396003903114302014

`A010051(A164423(n+4))+A001281(A081693(n))+n`
-/

namespace A325706.P17396003903114302014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A164423 (n + 4)).toNat + (A001281 (A081693 n).toNat + (n : ℤ))

end

end A325706.P17396003903114302014

/-! ## A325706.P16660003347443423613

`eq[A010894(n), A108352(n+1)]+1`
-/

namespace A325706.P16660003347443423613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010894 (n + 21)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108352 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A325706.P16660003347443423613

/-! ## A325706.P10508706823164004752

`∪[A108370(n+1), A109297(n+1)]%A109299(2*n+3)`
-/

namespace A325706.P10508706823164004752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109297 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A109299 (2 * n + 3))

end

end A325706.P10508706823164004752

/-!
# A325707: Number of integer partitions of n covering an initial interval of positive integers and containing all of their distinct multiplicities.

The programs for A325707, there is no canonical definition to state claims against.
-/

/-! ## A325707.P6211704394471263257

`A029042(n)-A284248(A136417(n))`
-/

namespace A325707.P6211704394471263257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029042 n - A284248 (A136417 n).toNat

end

end A325707.P6211704394471263257

/-! ## A325707.P7665729610539664967

`A339276(A005195(n))-A141169(n)`
-/

namespace A325707.P7665729610539664967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339276 (A005195 n).toNat - A141169 n

end

end A325707.P7665729610539664967

/-!
# A325708: Numbers n whose prime indices cover an initial interval of positive integers and include all prime exponents of n.

The programs for A325708, there is no canonical definition to state claims against.
-/

/-! ## A325708.P16163803286118573134

`filter[A212167(n+1), A341629(#)]`
-/

namespace A325708.P16163803286118573134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341629 (f1 j).toNat = 1) n)

end

end A325708.P16163803286118573134

/-! ## A325708.P13612964284924519642

`∩[A055932(n+1), A212167(n+1)]`
-/

namespace A325708.P13612964284924519642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325708.P13612964284924519642

/-! ## A325708.P16713459694031279297

`eq[A001221(n+1), A263323(n+1)]+1`
-/

namespace A325708.P16713459694031279297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263323 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A325708.P16713459694031279297

/-! ## A325708.P3525824393433185109

`record[A003963(A340018(n+1))]`
-/

namespace A325708.P3525824393433185109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A340018 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325708.P3525824393433185109

/-! ## A325708.P3553807178802207336

`filter[A325706(n+1), A341629(#)]`
-/

namespace A325708.P3553807178802207336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341629 (f1 j).toNat = 1) n)

end

end A325708.P3553807178802207336

/-!
# A325709: Replace k with k! in the prime indices of n.

The programs for A325709, there is no canonical definition to state claims against.
-/

/-! ## A325709.P12015240677736045165

`∏{e}[A181821(n+1), A062439(#)]`
-/

namespace A325709.P12015240677736045165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A062439 (Nat.factorization (f1 n).natAbs p)

end

end A325709.P12015240677736045165

/-! ## A325709.P15341796623834117221

`∏{e}[A304660(n+1), A062439(#)]`
-/

namespace A325709.P15341796623834117221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A062439 (Nat.factorization (f1 n).natAbs p)

end

end A325709.P15341796623834117221

/-! ## A325709.P1685337155278745304

`∏{e}[A181821(n+1), A000040(#!)]`
-/

namespace A325709.P1685337155278745304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorial (Nat.factorization (f1 n).natAbs p))

end

end A325709.P1685337155278745304

/-! ## A325709.P1434296173542332191

`∏{e}[A304660(n+1), A000040(#!)]`
-/

namespace A325709.P1434296173542332191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorial (Nat.factorization (f1 n).natAbs p))

end

end A325709.P1434296173542332191

/-! ## A325709.P15039518165422378676

`∏{e}[A181821(n+1), A000040(A000142(#))]`
-/

namespace A325709.P15039518165422378676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (A000142 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A325709.P15039518165422378676

/-!
# A325711: Number of separable partitions of n in which the number of distinct (repeatable) parts <= 2.

The programs for A325711, there is no canonical definition to state claims against.
-/

/-! ## A325711.P2645566966146245169

`A325646(n+1)+1`
-/

namespace A325711.P2645566966146245169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325646 (n + 1) + 1

end

end A325711.P2645566966146245169

/-! ## A325711.P1859728880565520887

`A325712(n+1)-A325647(n+1)`
-/

namespace A325711.P1859728880565520887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325712 (n + 1) - A325647 (n + 1)

end

end A325711.P1859728880565520887

/-! ## A325711.P16495951605824949571

`A325713(n+1)-(A325648(n+1)+A325647(n+1))`
-/

namespace A325711.P16495951605824949571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325713 (n + 1) - (A325648 (n + 1) + A325647 (n + 1))

end

end A325711.P16495951605824949571

/-! ## A325711.P2425227980134211356

`A325719(n+1)+A325713(n+1)-(A325718(n+1)+A325647(n+1))`
-/

namespace A325711.P2425227980134211356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325719 (n + 1) + A325713 (n + 1) - (A325718 (n + 1) + A325647 (n + 1))

end

end A325711.P2425227980134211356

/-! ## A325711.P15433387472184455739

`A325724(n+1)+A325723(n+1)-(A325718(n+1)+A325647(n+1))`
-/

namespace A325711.P15433387472184455739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325724 (n + 1) + A325723 (n + 1) - (A325718 (n + 1) + A325647 (n + 1))

end

end A325711.P15433387472184455739

/-!
# A325712: Number of separable partitions of n in which the number of distinct (repeatable) parts <= 3.

The programs for A325712, there is no canonical definition to state claims against.
-/

/-! ## A325712.P7583580406946473357

`A325711(n+1)+A325647(n+1)`
-/

namespace A325712.P7583580406946473357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325711 (n + 1) + A325647 (n + 1)

end

end A325712.P7583580406946473357

/-! ## A325712.P13090703066143547350

`A325646(n+1)+A325647(n+1)+1`
-/

namespace A325712.P13090703066143547350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325646 (n + 1) + (A325647 (n + 1) + 1)

end

end A325712.P13090703066143547350

/-! ## A325712.P11270886117456450015

`A000041(n+1)-A325535(n+1)-(A325719(n+1)+A325648(n+1))`
-/

namespace A325712.P11270886117456450015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A325535 (n + 1) - (A325719 (n + 1) + A325648 (n + 1))

end

end A325712.P11270886117456450015

/-! ## A325712.P12936956910631254878

`A238590(n+1)+A187219(n+2)-(A325719(n+1)+A325648(n+1))`
-/

namespace A325712.P12936956910631254878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238590 (n + 1) + A187219 (n + 2) - (A325719 (n + 1) + A325648 (n + 1))

end

end A325712.P12936956910631254878

/-! ## A325712.P13803742677805868113

`A325534(n+1)-A325718(n+1)`
-/

namespace A325712.P13803742677805868113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325534 (n + 1) - A325718 (n + 1)

end

end A325712.P13803742677805868113

/-!
# A325713: Number of separable partitions of n in which the number of distinct (repeatable) parts <= 4.

The programs for A325713, there is no canonical definition to state claims against.
-/

/-! ## A325713.P2873565714033291146

`A325712(n+1)+A325648(n+1)`
-/

namespace A325713.P2873565714033291146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325712 (n + 1) + A325648 (n + 1)

end

end A325713.P2873565714033291146

/-! ## A325713.P13451127687922305963

`A325534(n+1)-A325719(n+1)`
-/

namespace A325713.P13451127687922305963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325534 (n + 1) - A325719 (n + 1)

end

end A325713.P13451127687922305963

/-! ## A325713.P593424470410961907

`A238590(n+1)+∑[A053445(n)]-A325719(n+1)`
-/

namespace A325713.P593424470410961907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053445 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238590 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - A325719 (n + 1))

end

end A325713.P593424470410961907

/-! ## A325713.P826716923923855583

`Δ[A000070(n)]-(A325719(n+1)+A325535(n+1))`
-/

namespace A325713.P826716923923855583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A325719 (n + 1) + A325535 (n + 1))

end

end A325713.P826716923923855583

/-! ## A325713.P10767243433796955823

`record[A035363(n)]-(A325719(n+1)+A325535(n+1))`
-/

namespace A325713.P10767243433796955823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A325719 (n + 1) + A325535 (n + 1))

end

end A325713.P10767243433796955823

/-!
# A325714: Number of separable partitions of n in which the number of distinct (repeatable) parts <= 5.

The programs for A325714, there is no canonical definition to state claims against.
-/

/-! ## A325714.P8040921401530869517

`A325713(n+1)+A325649(n+1)`
-/

namespace A325714.P8040921401530869517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325713 (n + 1) + A325649 (n + 1)

end

end A325714.P8040921401530869517

/-! ## A325714.P6775894454547045331

`A325534(n+1)-A325720(n+1)`
-/

namespace A325714.P6775894454547045331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325534 (n + 1) - A325720 (n + 1)

end

end A325714.P6775894454547045331

/-! ## A325714.P5502715754483941550

`A325715(n+1)-A325650(n+1)`
-/

namespace A325714.P5502715754483941550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325715 (n + 1) - A325650 (n + 1)

end

end A325714.P5502715754483941550

/-! ## A325714.P13169588975529283080

`A325716(n+1)+1-A325720(n+1)`
-/

namespace A325714.P13169588975529283080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325716 (n + 1) + (1 - A325720 (n + 1))

end

end A325714.P13169588975529283080

/-! ## A325714.P13476575558410770231

`A238590(n+1)+∑[A053445(n)]-A325720(n+1)`
-/

namespace A325714.P13476575558410770231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053445 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238590 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - A325720 (n + 1))

end

end A325714.P13476575558410770231

/-!
# A325715: Number of separable partitions of n in which the number of distinct (repeatable) parts <= 6.

The programs for A325715, there is no canonical definition to state claims against.
-/

/-! ## A325715.P730206734091746356

`A325714(n+1)+A325650(n+1)`
-/

namespace A325715.P730206734091746356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325714 (n + 1) + A325650 (n + 1)

end

end A325715.P730206734091746356

/-! ## A325715.P3755888772958417050

`A325649(n+1)+A325713(n+1)+A325650(n+1)`
-/

namespace A325715.P3755888772958417050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325649 (n + 1) + (A325713 (n + 1) + A325650 (n + 1))

end

end A325715.P3755888772958417050

/-! ## A325715.P7593531748103049423

`A325534(n+1)+A325650(n+1)-A325720(n+1)`
-/

namespace A325715.P7593531748103049423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325534 (n + 1) + (A325650 (n + 1) - A325720 (n + 1))

end

end A325715.P7593531748103049423

/-! ## A325715.P15824518349954469520

`A325650(n+1)+A325716(n+1)+1-A325720(n+1)`
-/

namespace A325715.P15824518349954469520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325650 (n + 1) + (A325716 (n + 1) + (1 - A325720 (n + 1)))

end

end A325715.P15824518349954469520

/-! ## A325715.P17957061348130156888

`A325650(n+1)+A325649(n+1)+A325712(n+1)+A325648(n+1)`
-/

namespace A325715.P17957061348130156888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325650 (n + 1) + (A325649 (n + 1) + (A325712 (n + 1) + A325648 (n + 1)))

end

end A325715.P17957061348130156888

/-!
# A325716: Number of separable partitions of n in which the number of distinct (repeatable) parts is > 1.

The programs for A325716, there is no canonical definition to state claims against.
-/

/-! ## A325716.P3691013697524183136

`∑[abs(Δ[A325534(n)])]`
-/

namespace A325716.P3691013697524183136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325534 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325716.P3691013697524183136

/-! ## A325716.P6624030350102757191

`A325534(n+1)-1`
-/

namespace A325716.P6624030350102757191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325534 (n + 1) - 1

end

end A325716.P6624030350102757191

/-! ## A325716.P3276637509893021212

`abs(1-A325534(-xor(n, -1)))`
-/

namespace A325716.P3276637509893021212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A325534 (-Int.xor (n : ℤ) (-1)).toNat|

end

end A325716.P3276637509893021212

/-! ## A325716.P6486953323518112138

`Δ[A058682(n)]-A325535(n+1)`
-/

namespace A325716.P6486953323518112138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A325535 (n + 1)

end

end A325716.P6486953323518112138

/-! ## A325716.P9900234031790934115

`A325717(n+1)+A325646(n+1)`
-/

namespace A325716.P9900234031790934115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325717 (n + 1) + A325646 (n + 1)

end

end A325716.P9900234031790934115

/-!
# A325717: Number of separable partitions of n in which the number of distinct (repeatable) parts is > 2.

The programs for A325717, there is no canonical definition to state claims against.
-/

/-! ## A325717.P5106199926157593825

`A325534(n+1)-A325711(n+1)`
-/

namespace A325717.P5106199926157593825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325534 (n + 1) - A325711 (n + 1)

end

end A325717.P5106199926157593825

/-! ## A325717.P2080938802835032603

`A325718(n+1)+A325647(n+1)`
-/

namespace A325717.P2080938802835032603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325718 (n + 1) + A325647 (n + 1)

end

end A325717.P2080938802835032603

/-! ## A325717.P11642644170244789529

`A325716(n+1)-A325646(n+1)`
-/

namespace A325717.P11642644170244789529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325716 (n + 1) - A325646 (n + 1)

end

end A325717.P11642644170244789529

/-! ## A325717.P3344539895960153430

`A325534(n+1)-(A325646(n+1)+1)`
-/

namespace A325717.P3344539895960153430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325534 (n + 1) - (A325646 (n + 1) + 1)

end

end A325717.P3344539895960153430

/-! ## A325717.P6710522193044384740

`A325716(n+1)+1-A325711(n+1)`
-/

namespace A325717.P6710522193044384740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325716 (n + 1) + (1 - A325711 (n + 1))

end

end A325717.P6710522193044384740

/-!
# A325718: Number of separable partitions of n in which the number of distinct (repeatable) parts is > 3.

The programs for A325718, there is no canonical definition to state claims against.
-/

/-! ## A325718.P395508511198035800

`A325534(n+1)-A325712(n+1)`
-/

namespace A325718.P395508511198035800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325534 (n + 1) - A325712 (n + 1)

end

end A325718.P395508511198035800

/-! ## A325718.P10168200722951016700

`A325719(n+1)+A325648(n+1)`
-/

namespace A325718.P10168200722951016700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325719 (n + 1) + A325648 (n + 1)

end

end A325718.P10168200722951016700

/-! ## A325718.P3571369350353331462

`A238590(n+1)+∑[A053445(n)]-A325712(n+1)`
-/

namespace A325718.P3571369350353331462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053445 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238590 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j - A325712 (n + 1)

end

end A325718.P3571369350353331462

/-! ## A325718.P462469015632531367

`record[A035377(n)]-A325535(n+1)-A325712(n+1)`
-/

namespace A325718.P462469015632531367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A325535 (n + 1) - A325712 (n + 1)

end

end A325718.P462469015632531367

/-! ## A325718.P1878180105391130468

`record[A035444(n)]-A325535(n+1)-A325712(n+1)`
-/

namespace A325718.P1878180105391130468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A325535 (n + 1) - A325712 (n + 1)

end

end A325718.P1878180105391130468

/-!
# A325719: Number of separable partitions of n in which the number of distinct (repeatable) parts is > 4.

The programs for A325719, there is no canonical definition to state claims against.
-/

/-! ## A325719.P14630226516998287666

`A325534(n+1)-A325713(n+1)`
-/

namespace A325719.P14630226516998287666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325534 (n + 1) - A325713 (n + 1)

end

end A325719.P14630226516998287666

/-! ## A325719.P6546361319453542012

`A325720(n+1)+A325649(n+1)`
-/

namespace A325719.P6546361319453542012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325720 (n + 1) + A325649 (n + 1)

end

end A325719.P6546361319453542012

/-! ## A325719.P11007206610271727871

`A000041(n+1)-A325535(n+1)-(A325712(n+1)+A325648(n+1))`
-/

namespace A325719.P11007206610271727871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A325535 (n + 1) - (A325712 (n + 1) + A325648 (n + 1))

end

end A325719.P11007206610271727871

/-! ## A325719.P15982497747056302707

`A325718(n+1)-A325648(n+1)`
-/

namespace A325719.P15982497747056302707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325718 (n + 1) - A325648 (n + 1)

end

end A325719.P15982497747056302707

/-! ## A325719.P806592030782887576

`A238590(n+1)+∑[A053445(n)]-A325713(n+1)`
-/

namespace A325719.P806592030782887576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053445 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238590 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - A325713 (n + 1))

end

end A325719.P806592030782887576

/-!
# A325720: Number of separable partitions of n in which the number of distinct (repeatable) parts is > 5.

The programs for A325720, there is no canonical definition to state claims against.
-/

/-! ## A325720.P6388975520300083317

`A325534(n+1)-A325714(n+1)`
-/

namespace A325720.P6388975520300083317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325534 (n + 1) - A325714 (n + 1)

end

end A325720.P6388975520300083317

/-! ## A325720.P10010082674701766504

`A325719(n+1)-A325649(n+1)`
-/

namespace A325720.P10010082674701766504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325719 (n + 1) - A325649 (n + 1)

end

end A325720.P10010082674701766504

/-! ## A325720.P6934098935340830755

`A325718(n+1)-(A325649(n+1)+A325648(n+1))`
-/

namespace A325720.P6934098935340830755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325718 (n + 1) - (A325649 (n + 1) + A325648 (n + 1))

end

end A325720.P6934098935340830755

/-! ## A325720.P7340595805174929419

`Δ[A000070(n)]-A325535(n+1)-(A325713(n+1)+A325649(n+1))`
-/

namespace A325720.P7340595805174929419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A325535 (n + 1) - (A325713 (n + 1) + A325649 (n + 1))

end

end A325720.P7340595805174929419

/-! ## A325720.P3968336832932707386

`A325718(n+1)+A325712(n+1)-(A325713(n+1)+A325649(n+1))`
-/

namespace A325720.P3968336832932707386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325718 (n + 1) + A325712 (n + 1) - (A325713 (n + 1) + A325649 (n + 1))

end

end A325720.P3968336832932707386

/-!
# A325723: Number of separable partitions of n that consist of an even number of parts.

The programs for A325723, there is no canonical definition to state claims against.
-/

/-! ## A325723.P11049392030898456527

`A325534(n+1)-A325724(n+1)`
-/

namespace A325723.P11049392030898456527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325534 (n + 1) - A325724 (n + 1)

end

end A325723.P11049392030898456527

/-! ## A325723.P16770238591385206117

`A238590(n+1)+∑[A053445(n)]-A325724(n+1)`
-/

namespace A325723.P16770238591385206117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053445 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238590 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - A325724 (n + 1))

end

end A325723.P16770238591385206117

/-! ## A325723.P27630063001878380

`Δ[A000070(n)]-(A325724(n+1)+A325535(n+1))`
-/

namespace A325723.P27630063001878380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A325724 (n + 1) + A325535 (n + 1))

end

end A325723.P27630063001878380

/-! ## A325723.P845750491137352027

`record[A035363(n)]-(A325724(n+1)+A325535(n+1))`
-/

namespace A325723.P845750491137352027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A325724 (n + 1) + A325535 (n + 1))

end

end A325723.P845750491137352027

/-! ## A325723.P3557830509007054452

`record[A035377(n)]-A325535(n+1)-A325724(n+1)`
-/

namespace A325723.P3557830509007054452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A325535 (n + 1) - A325724 (n + 1)

end

end A325723.P3557830509007054452

/-!
# A325724: Number of separable partitions of n that consist of an odd number of parts.

The programs for A325724, there is no canonical definition to state claims against.
-/

/-! ## A325724.P2484871819403024981

`A325534(n+1)-A325723(n+1)`
-/

namespace A325724.P2484871819403024981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325534 (n + 1) - A325723 (n + 1)

end

end A325724.P2484871819403024981

/-! ## A325724.P5341676012514654998

`A238590(n+1)+∑[A053445(n)]-A325723(n+1)`
-/

namespace A325724.P5341676012514654998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053445 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238590 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - A325723 (n + 1))

end

end A325724.P5341676012514654998

/-! ## A325724.P4227448849904028983

`Δ[A000070(n)]-(A325723(n+1)+A325535(n+1))`
-/

namespace A325724.P4227448849904028983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A325723 (n + 1) + A325535 (n + 1))

end

end A325724.P4227448849904028983

/-! ## A325724.P8763101337920821699

`record[A035363(n)]-(A325723(n+1)+A325535(n+1))`
-/

namespace A325724.P8763101337920821699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A325723 (n + 1) + A325535 (n + 1))

end

end A325724.P8763101337920821699

/-! ## A325724.P64425763340646856

`record[A035444(n)]-A325535(n+1)-A325723(n+1)`
-/

namespace A325724.P64425763340646856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A325535 (n + 1) - A325723 (n + 1)

end

end A325724.P64425763340646856

/-!
# A325729: First term of n-th difference sequence of (floor(k*r)), r = sqrt(1/2), k >= 0.

The programs for A325729, the canonical program `A325729.P10885023936334201544` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325729 has offset 1).

The definition of A325729 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325729.P10885023936334201544

`∑{#}[n, (-1)^(n-#)*C(n, #)*A188295(#+1)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A325729

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A188295(#+1)]` -/
def P10885023936334201544.Spec : Prop :=
  ∀ n, P10885023936334201544.a n = (A325729 (n + 1) : ℚ)

end A325729

/-! ## A325729.P15913308973822268661

`∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A049472(#)]`
-/

namespace A325729.P15913308973822268661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n + 1 : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (n + 1) k : ℚ) * (A049472 k : ℚ)

end

end A325729.P15913308973822268661

namespace A325729

/-- `∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A049472(#)]` -/
def P15913308973822268661.Spec : Prop :=
  ∀ n, P15913308973822268661.a n = (A325729 (n + 1) : ℚ)

end A325729

/-! ## A325729.P10164283374836094391

`A325752(A187829(n+2))+A325751(n+1)`
-/

namespace A325729.P10164283374836094391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325752 (A187829 (n + 2)).toNat + A325751 (n + 1)

end

end A325729.P10164283374836094391

namespace A325729

/-- `A325752(A187829(n+2))+A325751(n+1)` -/
def P10164283374836094391.Spec : Prop :=
  ∀ n, P10164283374836094391.a n = A325729 (n + 1)

end A325729

/-!
# A325730: First term of n-th difference sequence of (floor(k*r)), r = sqrt(1/3), k >= 0.

The programs for A325730, there is no canonical definition to state claims against.
-/

/-! ## A325730.P8966379036742870091

`A325749(n+1)-A000007(A022089(n))`
-/

namespace A325730.P8966379036742870091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325749 (n + 1) - A000007 (A022089 n).toNat

end

end A325730.P8966379036742870091

/-! ## A325730.P17144178014337362781

`A325749(n+1)-A004530(A022363(n))`
-/

namespace A325730.P17144178014337362781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325749 (n + 1) - A004530 (A022363 n).toNat

end

end A325730.P17144178014337362781

/-! ## A325730.P3006032189993564158

`A325749(n+1)%A334034(A301686(n))`
-/

namespace A325730.P3006032189993564158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325749 (n + 1)) (A334034 (A301686 n).toNat)

end

end A325730.P3006032189993564158

/-! ## A325730.P16859135089585889840

`A325749(n+1)+A010815(A027895(n+1))`
-/

namespace A325730.P16859135089585889840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325749 (n + 1) + A010815 (A027895 (n + 1)).toNat

end

end A325730.P16859135089585889840

/-! ## A325730.P18148231471337422271

`A325749(n+1)-A007814(A124001(2*n))`
-/

namespace A325730.P18148231471337422271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325749 (n + 1) - A007814 (A124001 (2 * n)).toNat

end

end A325730.P18148231471337422271

/-!
# A325731: First term of n-th difference sequence of (floor(k*r)), r = sqrt(2/3), k >= 0.

The programs for A325731, there is no canonical definition to state claims against.
-/

/-! ## A325731.P15549158258778879421

`A325674(n+1)%A057575(n)`
-/

namespace A325731.P15549158258778879421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325674 (n + 1)) (A057575 n)

end

end A325731.P15549158258778879421

/-! ## A325731.P18083718703487427654

`A289306(n)*A330025(n^4)`
-/

namespace A325731.P18083718703487427654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289306 n * A330025 (n ^ 4)

end

end A325731.P18083718703487427654

/-! ## A325731.P3734618897564656592

`-(A366057(n)%A019473(3*n+5))`
-/

namespace A325731.P3734618897564656592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A366057 n) (A019473 (3 * n + 5))

end

end A325731.P3734618897564656592

/-! ## A325731.P3475756587597462624

`A010054(A005904(n))-A366057(n)`
-/

namespace A325731.P3475756587597462624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A005904 n).toNat - A366057 n

end

end A325731.P3475756587597462624

/-! ## A325731.P14786526059267533808

`A359792(A001780(n))-A292950(n)`
-/

namespace A325731.P14786526059267533808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359792 (A001780 n).toNat - A292950 n

end

end A325731.P14786526059267533808

/-!
# A325732: First term of n-th difference sequence of (floor(k*r)), r = sqrt(3/4), k >= 0.

The programs for A325732, the canonical program `A325732.P12818335351362565461` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325732 has offset 1).

The definition of A325732 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325732.P12818335351362565461

`∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A172475(#)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A325732

/-- `∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A172475(#)]` -/
def P12818335351362565461.Spec : Prop :=
  ∀ n, P12818335351362565461.a n = (A325732 (n + 1) : ℚ)

end A325732

/-! ## A325732.P6843429346645780236

`A062157(A307034(n))*A307041(n)`
-/

namespace A325732.P6843429346645780236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A307034 n).toNat * A307041 n

end

end A325732.P6843429346645780236

namespace A325732

/-- `A062157(A307034(n))*A307041(n)` -/
def P6843429346645780236.Spec : Prop :=
  ∀ n, P6843429346645780236.a n = A325732 (n + 1)

end A325732

/-! ## A325732.P695097725381026683

`A062157(n²²)*A307041(n)`
-/

namespace A325732.P695097725381026683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 ((n ^ 2) ^ 2) * A307041 n

end

end A325732.P695097725381026683

namespace A325732

/-- `A062157(n²²)*A307041(n)` -/
def P695097725381026683.Spec : Prop :=
  ∀ n, P695097725381026683.a n = A325732 (n + 1)

end A325732

/-!
# A325733: First term of n-th difference sequence of (floor(k*r)), r = 1/2 + sqrt(2), k >= 0.

The programs for A325733, there is no canonical definition to state claims against.
-/

/-! ## A325733.P8295893341323554224

`(C(n, 11)-1)^A033286(n+1)`
-/

namespace A325733.P8295893341323554224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose n 11 : ℤ) - 1 : ℚ) ^ (A033286 (n + 1) : ℤ)

end

end A325733.P8295893341323554224

/-! ## A325733.P13023157694719774223

`Δ[Δ[A362692(ceil(2*(2^n-1)/3))]]`
-/

namespace A325733.P13023157694719774223
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362692 ⌈2 * (((2 ^ n : ℤ) - 1 : ℚ) / 3)⌉.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325733.P13023157694719774223

/-! ## A325733.P4347899995259888827

`A353459(8*(3*2^n-2*(n+1)))`
-/

namespace A325733.P4347899995259888827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353459 (8 * ((3 * 2 ^ n : ℤ) - (2 * (n + 1) : ℤ))).toNat

end

end A325733.P4347899995259888827

/-! ## A325733.P7433288388823891323

`A112690(A126087(n))`
-/

namespace A325733.P7433288388823891323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112690 (A126087 n).toNat

end

end A325733.P7433288388823891323

/-! ## A325733.P12400799615987197228

`A131720(A148008(n))`
-/

namespace A325733.P12400799615987197228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131720 (A148008 n).toNat

end

end A325733.P12400799615987197228

/-!
# A325734: First term of n-th difference sequence of (floor(k*e)), k >= 0.

The programs for A325734, the canonical program `A325734.P3067547037199599621` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325734 has offset 1).

The definition of A325734 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325734.P3067547037199599621

`∑{#}[n, (-1)^(n-#)*C(n, #)*A276859(#+1)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A325734

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A276859(#+1)]` -/
def P3067547037199599621.Spec : Prop :=
  ∀ n, P3067547037199599621.a n = (A325734 (n + 1) : ℚ)

end A325734

/-! ## A325734.P10924191696973029447

`∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A022843(#)]`
-/

namespace A325734.P10924191696973029447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n + 1 : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (n + 1) k : ℚ) * (A022843 k : ℚ)

end

end A325734.P10924191696973029447

namespace A325734

/-- `∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A022843(#)]` -/
def P10924191696973029447.Spec : Prop :=
  ∀ n, P10924191696973029447.a n = (A325734 (n + 1) : ℚ)

end A325734

/-! ## A325734.P6701503941488219874

`-(A325735(n+1)+A033999(n))`
-/

namespace A325734.P6701503941488219874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A325735 (n + 1) + A033999 n)

end

end A325734.P6701503941488219874

namespace A325734

/-- `-(A325735(n+1)+A033999(n))` -/
def P6701503941488219874.Spec : Prop :=
  ∀ n, P6701503941488219874.a n = A325734 (n + 1)

end A325734

/-! ## A325734.P4380907232866739576

`A033999(n+1)-A325735(n+1)`
-/

namespace A325734.P4380907232866739576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) - A325735 (n + 1)

end

end A325734.P4380907232866739576

namespace A325734

/-- `A033999(n+1)-A325735(n+1)` -/
def P4380907232866739576.Spec : Prop :=
  ∀ n, P4380907232866739576.a n = A325734 (n + 1)

end A325734

/-! ## A325734.P3475431930882573274

`A325736(n+1)-A325845(n+1)`
-/

namespace A325734.P3475431930882573274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325736 (n + 1) - A325845 (n + 1)

end

end A325734.P3475431930882573274

namespace A325734

/-- `A325736(n+1)-A325845(n+1)` -/
def P3475431930882573274.Spec : Prop :=
  ∀ n, P3475431930882573274.a n = A325734 (n + 1)

end A325734

/-! ## A325734.P14055118500577740417

`A325664(n+1)+A325665(n+1)-A325735(n+1)`
-/

namespace A325734.P14055118500577740417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325664 (n + 1) + (A325665 (n + 1) - A325735 (n + 1))

end

end A325734.P14055118500577740417

namespace A325734

/-- `A325664(n+1)+A325665(n+1)-A325735(n+1)` -/
def P14055118500577740417.Spec : Prop :=
  ∀ n, P14055118500577740417.a n = A325734 (n + 1)

end A325734

/-! ## A325734.P12713804585329323497

`A325666(n+1)+A325667(n+1)-A325735(n+1)`
-/

namespace A325734.P12713804585329323497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325666 (n + 1) + (A325667 (n + 1) - A325735 (n + 1))

end

end A325734.P12713804585329323497

namespace A325734

/-- `A325666(n+1)+A325667(n+1)-A325735(n+1)` -/
def P12713804585329323497.Spec : Prop :=
  ∀ n, P12713804585329323497.a n = A325734 (n + 1)

end A325734

/-! ## A325734.P12633433606123777396

`A325668(n+1)+A325669(n+1)-A325735(n+1)`
-/

namespace A325734.P12633433606123777396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325668 (n + 1) + (A325669 (n + 1) - A325735 (n + 1))

end

end A325734.P12633433606123777396

namespace A325734

/-- `A325668(n+1)+A325669(n+1)-A325735(n+1)` -/
def P12633433606123777396.Spec : Prop :=
  ∀ n, P12633433606123777396.a n = A325734 (n + 1)

end A325734

/-!
# A325735: First term of n-th difference sequence of (floor(-k*e)), k >= 0.

The programs for A325735, the canonical program `A325735.P5522167531649896352` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325735 has offset 1).

The definition of A325735 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325735.P5522167531649896352

`A010673(n)-(A325734(n+1)+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A325735

/-- `A010673(n)-(A325734(n+1)+1)` -/
def P5522167531649896352.Spec : Prop :=
  ∀ n, P5522167531649896352.a n = A325735 (n + 1)

theorem P5522167531649896352.correct : P5522167531649896352.Spec := by
  intro n
  simp only [A325735, Nat.add_sub_cancel]

end A325735

/-! ## A325735.P11010034086444548416

`A033999(n+1)-A325734(n+1)`
-/

namespace A325735.P11010034086444548416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) - A325734 (n + 1)

end

end A325735.P11010034086444548416

namespace A325735

/-- `A033999(n+1)-A325734(n+1)` -/
def P11010034086444548416.Spec : Prop :=
  ∀ n, P11010034086444548416.a n = A325735 (n + 1)

end A325735

/-! ## A325735.P13808622011903798856

`n-(A325734(n+1)+A004442(n))`
-/

namespace A325735.P13808622011903798856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A325734 (n + 1) + A004442 n)

end

end A325735.P13808622011903798856

namespace A325735

/-- `n-(A325734(n+1)+A004442(n))` -/
def P13808622011903798856.Spec : Prop :=
  ∀ n, P13808622011903798856.a n = A325735 (n + 1)

end A325735

/-! ## A325735.P13491099770819376646

`A325734(A020639(3*(n+1)))-A325734(n+1)`
-/

namespace A325735.P13491099770819376646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325734 (A020639 (3 * (n + 1))).toNat - A325734 (n + 1)

end

end A325735.P13491099770819376646

namespace A325735

/-- `A325734(A020639(3*(n+1)))-A325734(n+1)` -/
def P13491099770819376646.Spec : Prop :=
  ∀ n, P13491099770819376646.a n = A325735 (n + 1)

end A325735

/-! ## A325735.P3884570410362613478

`A000035(n)-(A325734(n+1)+A000035(n+1))`
-/

namespace A325735.P3884570410362613478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n - (A325734 (n + 1) + A000035 (n + 1))

end

end A325735.P3884570410362613478

namespace A325735

/-- `A000035(n)-(A325734(n+1)+A000035(n+1))` -/
def P3884570410362613478.Spec : Prop :=
  ∀ n, P3884570410362613478.a n = A325735 (n + 1)

end A325735

/-! ## A325735.P1389408084885265164

`A325664(n+1)+A325665(n+1)-A325734(n+1)`
-/

namespace A325735.P1389408084885265164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325664 (n + 1) + (A325665 (n + 1) - A325734 (n + 1))

end

end A325735.P1389408084885265164

namespace A325735

/-- `A325664(n+1)+A325665(n+1)-A325734(n+1)` -/
def P1389408084885265164.Spec : Prop :=
  ∀ n, P1389408084885265164.a n = A325735 (n + 1)

end A325735

/-! ## A325735.P14779451194858837922

`A325666(n+1)+A325667(n+1)-A325734(n+1)`
-/

namespace A325735.P14779451194858837922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325666 (n + 1) + (A325667 (n + 1) - A325734 (n + 1))

end

end A325735.P14779451194858837922

namespace A325735

/-- `A325666(n+1)+A325667(n+1)-A325734(n+1)` -/
def P14779451194858837922.Spec : Prop :=
  ∀ n, P14779451194858837922.a n = A325735 (n + 1)

end A325735

/-! ## A325735.P6892895256075144314

`A325668(n+1)+A325669(n+1)-A325734(n+1)`
-/

namespace A325735.P6892895256075144314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325668 (n + 1) + (A325669 (n + 1) - A325734 (n + 1))

end

end A325735.P6892895256075144314

namespace A325735

/-- `A325668(n+1)+A325669(n+1)-A325734(n+1)` -/
def P6892895256075144314.Spec : Prop :=
  ∀ n, P6892895256075144314.a n = A325735 (n + 1)

end A325735

/-! ## A325735.P14099255716699087945

`A325670(n+1)+A325671(n+1)-A325734(n+1)`
-/

namespace A325735.P14099255716699087945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325670 (n + 1) + (A325671 (n + 1) - A325734 (n + 1))

end

end A325735.P14099255716699087945

namespace A325735

/-- `A325670(n+1)+A325671(n+1)-A325734(n+1)` -/
def P14099255716699087945.Spec : Prop :=
  ∀ n, P14099255716699087945.a n = A325735 (n + 1)

end A325735

/-! ## A325735.P15240023012733003076

`A325672(n+1)+A325673(n+1)-A325734(n+1)`
-/

namespace A325735.P15240023012733003076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325672 (n + 1) + (A325673 (n + 1) - A325734 (n + 1))

end

end A325735.P15240023012733003076

namespace A325735

/-- `A325672(n+1)+A325673(n+1)-A325734(n+1)` -/
def P15240023012733003076.Spec : Prop :=
  ∀ n, P15240023012733003076.a n = A325735 (n + 1)

end A325735

/-!
# A325736: First term of n-th difference sequence of (floor(2e*k)), k >= 0.

The programs for A325736, the canonical program `A325736.P9446005474037578402` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325736 has offset 1).

The definition of A325736 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325736.P9446005474037578402

`∑{#}[n, (-1)^(n-#)*C(n, #)*A276860(#+1)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A325736

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A276860(#+1)]` -/
def P9446005474037578402.Spec : Prop :=
  ∀ n, P9446005474037578402.a n = (A325736 (n + 1) : ℚ)

end A325736

/-! ## A325736.P16065980153390579316

`∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A276853(#)]`
-/

namespace A325736.P16065980153390579316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n + 1 : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (n + 1) k : ℚ) * (A276853 k : ℚ)

end

end A325736.P16065980153390579316

namespace A325736

/-- `∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A276853(#)]` -/
def P16065980153390579316.Spec : Prop :=
  ∀ n, P16065980153390579316.a n = (A325736 (n + 1) : ℚ)

end A325736

/-! ## A325736.P13476994631876969303

`A325845(n+1)+A325734(n+1)`
-/

namespace A325736.P13476994631876969303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325845 (n + 1) + A325734 (n + 1)

end

end A325736.P13476994631876969303

namespace A325736

/-- `A325845(n+1)+A325734(n+1)` -/
def P13476994631876969303.Spec : Prop :=
  ∀ n, P13476994631876969303.a n = A325736 (n + 1)

end A325736

/-! ## A325736.P9333295104175848117

`A325845(n+1)-(A325735(n+1)+A033999(n))`
-/

namespace A325736.P9333295104175848117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325845 (n + 1) - (A325735 (n + 1) + A033999 n)

end

end A325736.P9333295104175848117

namespace A325736

/-- `A325845(n+1)-(A325735(n+1)+A033999(n))` -/
def P9333295104175848117.Spec : Prop :=
  ∀ n, P9333295104175848117.a n = A325736 (n + 1)

end A325736

/-! ## A325736.P2704058922758846483

`A325845(n+1)+A325664(n+1)+A325665(n+1)-A325735(n+1)`
-/

namespace A325736.P2704058922758846483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325845 (n + 1) + (A325664 (n + 1) + (A325665 (n + 1) - A325735 (n + 1)))

end

end A325736.P2704058922758846483

namespace A325736

/-- `A325845(n+1)+A325664(n+1)+A325665(n+1)-A325735(n+1)` -/
def P2704058922758846483.Spec : Prop :=
  ∀ n, P2704058922758846483.a n = A325736 (n + 1)

end A325736

/-! ## A325736.P10030131108903026093

`A325845(n+1)+A325666(n+1)+A325667(n+1)-A325735(n+1)`
-/

namespace A325736.P10030131108903026093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325845 (n + 1) + (A325666 (n + 1) + (A325667 (n + 1) - A325735 (n + 1)))

end

end A325736.P10030131108903026093

namespace A325736

/-- `A325845(n+1)+A325666(n+1)+A325667(n+1)-A325735(n+1)` -/
def P10030131108903026093.Spec : Prop :=
  ∀ n, P10030131108903026093.a n = A325736 (n + 1)

end A325736

/-!
# A325738: First term of n-th difference sequence of (floor(e*k/2)), k >= 0.

The programs for A325738, there is no canonical definition to state claims against.
-/

/-! ## A325738.P17561231862612330963

`A325673(n+1)^A005131(A003945(n))`
-/

namespace A325738.P17561231862612330963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325673 (n + 1) : ℚ) ^ (A005131 (A003945 n).toNat : ℤ)

end

end A325738.P17561231862612330963

/-! ## A325738.P1715980732444874454

`A325673(n+1)^A276689(A126646(n))`
-/

namespace A325738.P1715980732444874454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325673 (n + 1) : ℚ) ^ (A276689 (A126646 n).toNat : ℤ)

end

end A325738.P1715980732444874454

/-! ## A325738.P10495386528696158549

`and(A055975(A083329(n)), A325673(n+1))`
-/

namespace A325738.P10495386528696158549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055975 (A083329 n).toNat) (A325673 (n + 1))

end

end A325738.P10495386528696158549

/-! ## A325738.P16875759137176103448

`and(A008683(A144293(n)), A325673(n+1))`
-/

namespace A325738.P16875759137176103448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008683 (A144293 n).toNat) (A325673 (n + 1))

end

end A325738.P16875759137176103448

/-! ## A325738.P7309559620032230986

`A325673(n+1)^A124010(A304662(n))`
-/

namespace A325738.P7309559620032230986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325673 (n + 1) : ℚ) ^ (A124010 (A304662 n).toNat : ℤ)

end

end A325738.P7309559620032230986

/-!
# A325739: First term of n-th difference sequence of (floor(Pi*k)), k >= 0.

The programs for A325739, the canonical program `A325739.P16619809019071974333` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325739 has offset 1).

The definition of A325739 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325739.P16619809019071974333

`∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A022844(#)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A325739

/-- `∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A022844(#)]` -/
def P16619809019071974333.Spec : Prop :=
  ∀ n, P16619809019071974333.a n = (A325739 (n + 1) : ℚ)

end A325739

/-! ## A325739.P18058105828718570586

`∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A004084(#+1)]`
-/

namespace A325739.P18058105828718570586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n + 1 : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (n + 1) k : ℚ) * (A004084 (k + 1) : ℚ)

end

end A325739.P18058105828718570586

namespace A325739

/-- `∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A004084(#+1)]` -/
def P18058105828718570586.Spec : Prop :=
  ∀ n, P18058105828718570586.a n = (A325739 (n + 1) : ℚ)

end A325739

/-! ## A325739.P12174369555410038299

`A325740(n+1)-A325846(n+1)`
-/

namespace A325739.P12174369555410038299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325740 (n + 1) - A325846 (n + 1)

end

end A325739.P12174369555410038299

namespace A325739

/-- `A325740(n+1)-A325846(n+1)` -/
def P12174369555410038299.Spec : Prop :=
  ∀ n, P12174369555410038299.a n = A325739 (n + 1)

end A325739

/-! ## A325739.P535290196582756868

`A325735(n+1)-A078042(A111332(n))*A325846(n+1)`
-/

namespace A325739.P535290196582756868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325735 (n + 1) - A078042 (A111332 n).toNat * A325846 (n + 1)

end

end A325739.P535290196582756868

namespace A325739

/-- `A325735(n+1)-A078042(A111332(n))*A325846(n+1)` -/
def P535290196582756868.Spec : Prop :=
  ∀ n, P535290196582756868.a n = A325739 (n + 1)

end A325739

/-! ## A325739.P14206439555953577951

`A325735(n+1)-A317503(A072189(n))*A325846(n+1)`
-/

namespace A325739.P14206439555953577951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325735 (n + 1) - A317503 (A072189 n).toNat * A325846 (n + 1)

end

end A325739.P14206439555953577951

namespace A325739

/-- `A325735(n+1)-A317503(A072189(n))*A325846(n+1)` -/
def P14206439555953577951.Spec : Prop :=
  ∀ n, P14206439555953577951.a n = A325739 (n + 1)

end A325739

/-!
# A325740: First term of n-th difference sequence of (floor(2*Pi*k)), k >= 0.

The programs for A325740, the canonical program `A325740.P7805137328812836510` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325740 has offset 1).

The definition of A325740 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325740.P7805137328812836510

`∑{#}[n, (-1)^(n-#)*C(n, #)*A276861(#+1)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A325740

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A276861(#+1)]` -/
def P7805137328812836510.Spec : Prop :=
  ∀ n, P7805137328812836510.a n = (A325740 (n + 1) : ℚ)

end A325740

/-! ## A325740.P16916684096700021691

`∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A038130(#)]`
-/

namespace A325740.P16916684096700021691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n + 1 : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (n + 1) k : ℚ) * (A038130 k : ℚ)

end

end A325740.P16916684096700021691

namespace A325740

/-- `∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A038130(#)]` -/
def P16916684096700021691.Spec : Prop :=
  ∀ n, P16916684096700021691.a n = (A325740 (n + 1) : ℚ)

end A325740

/-! ## A325740.P1591627899527821547

`∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A004082(#+1)]`
-/

namespace A325740.P1591627899527821547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n + 1 : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (n + 1) k : ℚ) * (A004082 (k + 1) : ℚ)

end

end A325740.P1591627899527821547

namespace A325740

/-- `∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A004082(#+1)]` -/
def P1591627899527821547.Spec : Prop :=
  ∀ n, P1591627899527821547.a n = (A325740 (n + 1) : ℚ)

end A325740

/-! ## A325740.P6305876156670125674

`A325846(n+1)+A325739(n+1)`
-/

namespace A325740.P6305876156670125674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325846 (n + 1) + A325739 (n + 1)

end

end A325740.P6305876156670125674

namespace A325740

/-- `A325846(n+1)+A325739(n+1)` -/
def P6305876156670125674.Spec : Prop :=
  ∀ n, P6305876156670125674.a n = A325740 (n + 1)

end A325740

/-! ## A325740.P2340091098432291157

`A078042(A111332(n))*A325735(n+1)`
-/

namespace A325740.P2340091098432291157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078042 (A111332 n).toNat * A325735 (n + 1)

end

end A325740.P2340091098432291157

namespace A325740

/-- `A078042(A111332(n))*A325735(n+1)` -/
def P2340091098432291157.Spec : Prop :=
  ∀ n, P2340091098432291157.a n = A325740 (n + 1)

end A325740

/-!
# A325741: First term of n-th difference sequence of (floor(Pi*k/2)), k >= 0.

The programs for A325741, the canonical program `A325741.P5643646184438527015` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325741 has offset 1).

The definition of A325741 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325741.P5643646184438527015

`∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A140758(#)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A325741

/-- `∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A140758(#)]` -/
def P5643646184438527015.Spec : Prop :=
  ∀ n, P5643646184438527015.a n = (A325741 (n + 1) : ℚ)

end A325741

/-! ## A325741.P13737347908642816587

`A325749(n+1)-A325739(A151764(n+1)+1)`
-/

namespace A325741.P13737347908642816587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325749 (n + 1) - A325739 (A151764 (n + 1) + 1).toNat

end

end A325741.P13737347908642816587

namespace A325741

/-- `A325749(n+1)-A325739(A151764(n+1)+1)` -/
def P13737347908642816587.Spec : Prop :=
  ∀ n, P13737347908642816587.a n = A325741 (n + 1)

end A325741

/-! ## A325741.P5277298290438918225

`A325749(n+1)-A325739(A151764(n+2))`
-/

namespace A325741.P5277298290438918225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325749 (n + 1) - A325739 (A151764 (n + 2)).toNat

end

end A325741.P5277298290438918225

namespace A325741

/-- `A325749(n+1)-A325739(A151764(n+2))` -/
def P5277298290438918225.Spec : Prop :=
  ∀ n, P5277298290438918225.a n = A325741 (n + 1)

end A325741

/-! ## A325741.P16335757658641566553

`A123344(n)+A025466(A000110(n))`
-/

namespace A325741.P16335757658641566553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123344 n + A025466 (A000110 n).toNat

end

end A325741.P16335757658641566553

namespace A325741

/-- `A123344(n)+A025466(A000110(n))` -/
def P16335757658641566553.Spec : Prop :=
  ∀ n, P16335757658641566553.a n = A325741 (n + 1)

end A325741

/-! ## A325741.P2083675819493099700

`A124763(A022087(n))+A123344(n)`
-/

namespace A325741.P2083675819493099700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124763 (A022087 n).toNat + A123344 n

end

end A325741.P2083675819493099700

namespace A325741

/-- `A124763(A022087(n))+A123344(n)` -/
def P2083675819493099700.Spec : Prop :=
  ∀ n, P2083675819493099700.a n = A325741 (n + 1)

end A325741

/-!
# A325742: First term of n-th difference sequence of (floor(Pi*k/3)), k >= 0.

The programs for A325742, the canonical program `A325742.P689544651269639015` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325742 has offset 1).

The definition of A325742 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325742.P689544651269639015

`∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A274399(#)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A325742

/-- `∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A274399(#)]` -/
def P689544651269639015.Spec : Prop :=
  ∀ n, P689544651269639015.a n = (A325742 (n + 1) : ℚ)

end A325742

/-!
# A325744: First term of n-th difference sequence of (floor(Pi*k/6)), k >= 0.

The programs for A325744, there is no canonical definition to state claims against.
-/

/-! ## A325744.P16639080384272079511

`2^(n-1)*A062157(n^3)`
-/

namespace A325744.P16639080384272079511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A062157 (n ^ 3) : ℚ)

end

end A325744.P16639080384272079511

/-! ## A325744.P14895851296946647338

`ceil((-(2/A033999(n^3)))^(n-1))`
-/

namespace A325744.P14895851296946647338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(-(2 / (A033999 (n ^ 3) : ℚ))) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A325744.P14895851296946647338

/-! ## A325744.P13356332860706443426

`ceil((2/A033999(n^3+1))^(n-1))`
-/

namespace A325744.P13356332860706443426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 / (A033999 (n ^ 3 + 1) : ℚ)) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A325744.P13356332860706443426

/-! ## A325744.P5230842640889197526

`A123344(n)%A124542(n)`
-/

namespace A325744.P5230842640889197526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123344 n) (A124542 n)

end

end A325744.P5230842640889197526

/-! ## A325744.P12828043258007470058

`(A374413(A002182(n+1))-(-2)^n)/2`
-/

namespace A325744.P12828043258007470058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374413 (A002182 (n + 1)).toNat - (-2) ^ n : ℚ) / 2

end

end A325744.P12828043258007470058

/-!
# A325745: First term of n-th difference sequence of (floor(r*k)), r = (1+sqrt(5))/2, k >= 0.

The programs for A325745, the canonical program `A325745.P14230244834708689632` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325745 has offset 1).

The definition of A325745 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325745.P9489868694187597672

`A325747(ceil(acot(n)+n))`
-/

namespace A325745.P9489868694187597672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325747 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat

end

end A325745.P9489868694187597672

namespace A325745

/-- `A325747(ceil(acot(n)+n))` -/
def P9489868694187597672.Spec : Prop :=
  ∀ n, P9489868694187597672.a n = A325745 (n + 1)

end A325745

/-! ## A325745.P676596790574396342

`A325747(round(sqrt(n²+1))+1)`
-/

namespace A325745.P676596790574396342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325747 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat

end

end A325745.P676596790574396342

namespace A325745

/-- `A325747(round(sqrt(n²+1))+1)` -/
def P676596790574396342.Spec : Prop :=
  ∀ n, P676596790574396342.a n = A325745 (n + 1)

end A325745

/-! ## A325745.P14230244834708689632

`A124841(n-1)-a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A325745

/-- `A124841(n-1)-a(n-1)` -/
def P14230244834708689632.Spec : Prop :=
  ∀ n, P14230244834708689632.a n = A325745 (n + 1)

theorem P14230244834708689632.correct : P14230244834708689632.Spec := by
  intro n
  simp only [A325745, Nat.add_sub_cancel]

end A325745

/-! ## A325745.P10299475590104422672

`∑{#}[n, (-1)^(n-#)*C(n, #)*A001468(#)]`
-/

namespace A325745.P10299475590104422672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A001468 k : ℚ)

end

end A325745.P10299475590104422672

namespace A325745

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A001468(#)]` -/
def P10299475590104422672.Spec : Prop :=
  ∀ n, P10299475590104422672.a n = (A325745 (n + 1) : ℚ)

end A325745

/-! ## A325745.P16089825322696777521

`∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A026351(#)]`
-/

namespace A325745.P16089825322696777521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n + 1 : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (n + 1) k : ℚ) * (A026351 k : ℚ)

end

end A325745.P16089825322696777521

namespace A325745

/-- `∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A026351(#)]` -/
def P16089825322696777521.Spec : Prop :=
  ∀ n, P16089825322696777521.a n = (A325745 (n + 1) : ℚ)

end A325745

/-! ## A325745.P6297706332935575690

`∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A066096(#)]`
-/

namespace A325745.P6297706332935575690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n + 1 : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (n + 1) k : ℚ) * (A066096 k : ℚ)

end

end A325745.P6297706332935575690

namespace A325745

/-- `∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A066096(#)]` -/
def P6297706332935575690.Spec : Prop :=
  ∀ n, P6297706332935575690.a n = (A325745 (n + 1) : ℚ)

end A325745

/-! ## A325745.P9874244148569179753

`∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A099267(#+1)]`
-/

namespace A325745.P9874244148569179753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n + 1 : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (n + 1) k : ℚ) * (A099267 (k + 1) : ℚ)

end

end A325745.P9874244148569179753

namespace A325745

/-- `∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A099267(#+1)]` -/
def P9874244148569179753.Spec : Prop :=
  ∀ n, P9874244148569179753.a n = (A325745 (n + 1) : ℚ)

end A325745

/-! ## A325745.P14859187547920640819

`A325747(n+1)-A000007(n)`
-/

namespace A325745.P14859187547920640819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325747 (n + 1) - A000007 n

end

end A325745.P14859187547920640819

namespace A325745

/-- `A325747(n+1)-A000007(n)` -/
def P14859187547920640819.Spec : Prop :=
  ∀ n, P14859187547920640819.a n = A325745 (n + 1)

end A325745

/-! ## A325745.P13466131012996080837

`A325747(n+1)/A054977(n)`
-/

namespace A325745.P13466131012996080837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325747 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A325745.P13466131012996080837

namespace A325745

/-- `A325747(n+1)/A054977(n)` -/
def P13466131012996080837.Spec : Prop :=
  ∀ n, P13466131012996080837.a n = (A325745 (n + 1) : ℚ)

end A325745

/-! ## A325745.P5975012630315331219

`A325747(n+1)/A000038(n)!`
-/

namespace A325745.P5975012630315331219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325747 (n + 1) : ℚ) / (Nat.factorial (A000038 n).toNat : ℚ)

end

end A325745.P5975012630315331219

namespace A325745

/-- `A325747(n+1)/A000038(n)!` -/
def P5975012630315331219.Spec : Prop :=
  ∀ n, P5975012630315331219.a n = (A325745 (n + 1) : ℚ)

end A325745

/-! ## A325745.P6451063747036310740

`A325747(n+1)-char[A115802(n)]`
-/

namespace A325745.P6451063747036310740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115802 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325747 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A325745.P6451063747036310740

namespace A325745

/-- `A325747(n+1)-char[A115802(n)]` -/
def P6451063747036310740.Spec : Prop :=
  ∀ n, P6451063747036310740.a n = A325745 (n + 1)

end A325745

/-! ## A325745.P16462082312825646550

`A062157(n+2)-A325746(n+1)`
-/

namespace A325745.P16462082312825646550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 2) - A325746 (n + 1)

end

end A325745.P16462082312825646550

namespace A325745

/-- `A062157(n+2)-A325746(n+1)` -/
def P16462082312825646550.Spec : Prop :=
  ∀ n, P16462082312825646550.a n = A325745 (n + 1)

theorem P16462082312825646550.correct : P16462082312825646550.Spec := by
  intro n
  simp only [A325745, Nat.add_sub_cancel, A325745.P16462082312825646550.a, A325745.P14230244834708689632.a, A062157, A062157.P13834877263571195293.a, A124841, A124841.P1775165306399297179.f1, A124841.P1775165306399297179.a, A325746, A325746.P16902506273313495506.a, A005614, A005614.P5927283876123815402.a, A033999, A033999.P17703899380244199787.a, A005206, A005206.P7910201692454662432.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A325745

/-! ## A325745.P16510837130912086411

`A325747(n+1)+A073097(2*n)`
-/

namespace A325745.P16510837130912086411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325747 (n + 1) + A073097 (2 * n)

end

end A325745.P16510837130912086411

namespace A325745

/-- `A325747(n+1)+A073097(2*n)` -/
def P16510837130912086411.Spec : Prop :=
  ∀ n, P16510837130912086411.a n = A325745 (n + 1)

end A325745

/-! ## A325745.P5001212139775677628

`A325747(n+1)+A062157(n)²-1`
-/

namespace A325745.P5001212139775677628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325747 (n + 1) + (A062157 n ^ 2 - 1)

end

end A325745.P5001212139775677628

namespace A325745

/-- `A325747(n+1)+A062157(n)²-1` -/
def P5001212139775677628.Spec : Prop :=
  ∀ n, P5001212139775677628.a n = A325745 (n + 1)

end A325745

/-! ## A325745.P17339532097430113397

`A325747(n+1)-floor(1/A173725(n))`
-/

namespace A325745.P17339532097430113397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325747 (n + 1) - ⌊1 / (A173725 (n + 15) : ℚ)⌋

end

end A325745.P17339532097430113397

namespace A325745

/-- `A325747(n+1)-floor(1/A173725(n))` -/
def P17339532097430113397.Spec : Prop :=
  ∀ n, P17339532097430113397.a n = A325745 (n + 1)

end A325745

/-! ## A325745.P4858355864743421112

`A325747(n+1)/A003842(floor(1/(n+1)))`
-/

namespace A325745.P4858355864743421112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325747 (n + 1) : ℚ) / (A003842 ⌊1 / (n + 1 : ℚ)⌋.toNat : ℚ)

end

end A325745.P4858355864743421112

namespace A325745

/-- `A325747(n+1)/A003842(floor(1/(n+1)))` -/
def P4858355864743421112.Spec : Prop :=
  ∀ n, P4858355864743421112.a n = (A325745 (n + 1) : ℚ)

end A325745

/-! ## A325745.P13597172341892876486

`A325747(n+1)/A014963(A016825(n))`
-/

namespace A325745.P13597172341892876486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325747 (n + 1) : ℚ) / (A014963 (A016825 n).toNat : ℚ)

end

end A325745.P13597172341892876486

namespace A325745

/-- `A325747(n+1)/A014963(A016825(n))` -/
def P13597172341892876486.Spec : Prop :=
  ∀ n, P13597172341892876486.a n = (A325745 (n + 1) : ℚ)

end A325745

/-! ## A325745.P13443880123421869122

`A325747(n+1)-A073097(A008594(n))²`
-/

namespace A325745.P13443880123421869122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325747 (n + 1) - A073097 (A008594 n).toNat ^ 2

end

end A325745.P13443880123421869122

namespace A325745

/-- `A325747(n+1)-A073097(A008594(n))²` -/
def P13443880123421869122.Spec : Prop :=
  ∀ n, P13443880123421869122.a n = A325745 (n + 1)

end A325745

/-! ## A325745.P9947217021067396360

`A325747(n+1)-A073097(A103517(n))²`
-/

namespace A325745.P9947217021067396360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325747 (n + 1) - A073097 (A103517 n).toNat ^ 2

end

end A325745.P9947217021067396360

namespace A325745

/-- `A325747(n+1)-A073097(A103517(n))²` -/
def P9947217021067396360.Spec : Prop :=
  ∀ n, P9947217021067396360.a n = A325745 (n + 1)

end A325745

/-! ## A325745.P17320447114817676481

`A325747(n+1)/A173725(floor(1/A173725(n)))`
-/

namespace A325745.P17320447114817676481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325747 (n + 1) : ℚ) / (A173725 (⌊1 / (A173725 (n + 15) : ℚ)⌋.toNat + 15) : ℚ)

end

end A325745.P17320447114817676481

namespace A325745

/-- `A325747(n+1)/A173725(floor(1/A173725(n)))` -/
def P17320447114817676481.Spec : Prop :=
  ∀ n, P17320447114817676481.a n = (A325745 (n + 1) : ℚ)

end A325745

/-!
# A325746: First term of n-th difference sequence of (floor(r*k)), r = -(1+sqrt(5))/2, k >= 0.

The programs for A325746, the canonical program `A325746.P16902506273313495506` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325746 has offset 1).

The definition of A325746 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325746.P5488220572916713865

`A062157(n)-A325747(n+1)`
-/

namespace A325746.P5488220572916713865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n - A325747 (n + 1)

end

end A325746.P5488220572916713865

namespace A325746

/-- `A062157(n)-A325747(n+1)` -/
def P5488220572916713865.Spec : Prop :=
  ∀ n, P5488220572916713865.a n = A325746 (n + 1)

end A325746

/-! ## A325746.P16902506273313495506

`-(A325745(n+1)+A033999(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A325746

/-- `-(A325745(n+1)+A033999(n))` -/
def P16902506273313495506.Spec : Prop :=
  ∀ n, P16902506273313495506.a n = A325746 (n + 1)

theorem P16902506273313495506.correct : P16902506273313495506.Spec := by
  intro n
  simp only [A325746, Nat.add_sub_cancel]

end A325746

/-! ## A325746.P8424235400520699987

`A033999(n+1)-A325745(n+1)`
-/

namespace A325746.P8424235400520699987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) - A325745 (n + 1)

end

end A325746.P8424235400520699987

namespace A325746

/-- `A033999(n+1)-A325745(n+1)` -/
def P8424235400520699987.Spec : Prop :=
  ∀ n, P8424235400520699987.a n = A325746 (n + 1)

theorem P8424235400520699987.correct : P8424235400520699987.Spec := by
  intro n
  simp only [A325746, Nat.add_sub_cancel, A325746.P8424235400520699987.a, A325746.P16902506273313495506.a, A033999, A033999.P17703899380244199787.a, A325745, A325745.P14230244834708689632.a, A124841, A124841.P1775165306399297179.f1, A124841.P1775165306399297179.a, A005614, A005614.P5927283876123815402.a, A005206, A005206.P7910201692454662432.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A325746

/-! ## A325746.P16824522462467114275

`A062157(n+2)-A325745(n+1)`
-/

namespace A325746.P16824522462467114275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 2) - A325745 (n + 1)

end

end A325746.P16824522462467114275

namespace A325746

/-- `A062157(n+2)-A325745(n+1)` -/
def P16824522462467114275.Spec : Prop :=
  ∀ n, P16824522462467114275.a n = A325746 (n + 1)

theorem P16824522462467114275.correct : P16824522462467114275.Spec := by
  intro n
  simp only [A325746, Nat.add_sub_cancel, A325746.P16824522462467114275.a, A325746.P16902506273313495506.a, A033999, A033999.P17703899380244199787.a, A062157, A062157.P13834877263571195293.a, A325745, A325745.P14230244834708689632.a, A124841, A124841.P1775165306399297179.f1, A124841.P1775165306399297179.a, A005614, A005614.P5927283876123815402.a, A005206, A005206.P7910201692454662432.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A325746

/-! ## A325746.P691789667379166323

`A157128(A016789(n))-A325745(n+1)`
-/

namespace A325746.P691789667379166323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157128 (A016789 n).toNat - A325745 (n + 1)

end

end A325746.P691789667379166323

namespace A325746

/-- `A157128(A016789(n))-A325745(n+1)` -/
def P691789667379166323.Spec : Prop :=
  ∀ n, P691789667379166323.a n = A325746 (n + 1)

end A325746

/-! ## A325746.P8337625600043317736

`A325664(n+1)+A325665(n+1)-A325745(n+1)`
-/

namespace A325746.P8337625600043317736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325664 (n + 1) + (A325665 (n + 1) - A325745 (n + 1))

end

end A325746.P8337625600043317736

namespace A325746

/-- `A325664(n+1)+A325665(n+1)-A325745(n+1)` -/
def P8337625600043317736.Spec : Prop :=
  ∀ n, P8337625600043317736.a n = A325746 (n + 1)

theorem P8337625600043317736.correct : P8337625600043317736.Spec := by
  intro n
  simp only [A325746, Nat.add_sub_cancel, A325746.P8337625600043317736.a, A325746.P16902506273313495506.a, A033999, A033999.P17703899380244199787.a, A325664, A325664.P11682768259019606822.f1, A325664.P11682768259019606822.a, A325665, A325665.P14972648515377972069.a, A325745, A325745.P14230244834708689632.a, A001951, A001951.P3206377842744091648.a, A124841, A124841.P1775165306399297179.f1, A124841.P1775165306399297179.a, A000196, A000196.P15434771586934192083.a, A005614, A005614.P5927283876123815402.a, A005206, A005206.P7910201692454662432.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A325746

/-! ## A325746.P12855397299844472155

`A325666(n+1)+A325667(n+1)-A325745(n+1)`
-/

namespace A325746.P12855397299844472155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325666 (n + 1) + (A325667 (n + 1) - A325745 (n + 1))

end

end A325746.P12855397299844472155

namespace A325746

/-- `A325666(n+1)+A325667(n+1)-A325745(n+1)` -/
def P12855397299844472155.Spec : Prop :=
  ∀ n, P12855397299844472155.a n = A325746 (n + 1)

theorem P12855397299844472155.correct : P12855397299844472155.Spec := by
  intro n
  simp only [A325746, Nat.add_sub_cancel, A325746.P12855397299844472155.a, A325746.P16902506273313495506.a, A033999, A033999.P17703899380244199787.a, A325666, A325666.P4265698659280649992.f1, A325666.P4265698659280649992.a, A325667, A325667.P160312565313601383.a, A325745, A325745.P14230244834708689632.a, A080757, A080757.P8773996114739454746.a, A124841, A124841.P1775165306399297179.f1, A124841.P1775165306399297179.a, A005614, A005614.P5927283876123815402.a, A007538, A007538.P444732654204593279.a, A005206, A005206.P7910201692454662432.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A325746

/-!
# A325747: First term of n-th difference sequence of (floor(r*k)), r = (3+sqrt(5))/2, k >= 0.

The programs for A325747, the canonical program `A325747.P16175884392057217623` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325747 has offset 1).

The definition of A325747 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325747.P2302518813602865704

`ceil(acot(n))*A325745(n+1)`
-/

namespace A325747.P2302518813602865704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ * A325745 (n + 1)

end

end A325747.P2302518813602865704

namespace A325747

/-- `ceil(acot(n))*A325745(n+1)` -/
def P2302518813602865704.Spec : Prop :=
  ∀ n, P2302518813602865704.a n = A325747 (n + 1)

end A325747

/-! ## A325747.P16175884392057217623

`A124841(n-1)-a(n-1)` with `a(0)=2, a(1)=1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A325747

/-- `A124841(n-1)-a(n-1)` -/
def P16175884392057217623.Spec : Prop :=
  ∀ n, P16175884392057217623.a n = A325747 (n + 1)

theorem P16175884392057217623.correct : P16175884392057217623.Spec := by
  intro n
  simp only [A325747, Nat.add_sub_cancel]

end A325747

/-! ## A325747.P1617803824515518499

`∑{#}[n, (-1)^(n-#)*C(n, #)*A282162(#)]`
-/

namespace A325747.P1617803824515518499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A282162 k : ℚ)

end

end A325747.P1617803824515518499

namespace A325747

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A282162(#)]` -/
def P1617803824515518499.Spec : Prop :=
  ∀ n, P1617803824515518499.a n = (A325747 (n + 1) : ℚ)

end A325747

/-! ## A325747.P17671877267990038191

`∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A026352(#)]`
-/

namespace A325747.P17671877267990038191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n + 1 : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (n + 1) k : ℚ) * (A026352 k : ℚ)

end

end A325747.P17671877267990038191

namespace A325747

/-- `∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A026352(#)]` -/
def P17671877267990038191.Spec : Prop :=
  ∀ n, P17671877267990038191.a n = (A325747 (n + 1) : ℚ)

end A325747

/-! ## A325747.P16934053712767230107

`∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A026356(#+1)]`
-/

namespace A325747.P16934053712767230107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n + 1 : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (n + 1) k : ℚ) * (A026356 (k + 1) : ℚ)

end

end A325747.P16934053712767230107

namespace A325747

/-- `∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A026356(#+1)]` -/
def P16934053712767230107.Spec : Prop :=
  ∀ n, P16934053712767230107.a n = (A325747 (n + 1) : ℚ)

end A325747

/-! ## A325747.P201146759441299310

`A325745(n+1)+A000007(n)`
-/

namespace A325747.P201146759441299310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325745 (n + 1) + A000007 n

end

end A325747.P201146759441299310

namespace A325747

/-- `A325745(n+1)+A000007(n)` -/
def P201146759441299310.Spec : Prop :=
  ∀ n, P201146759441299310.a n = A325747 (n + 1)

end A325747

/-! ## A325747.P16594499277653160934

`A062157(n)-A325746(n+1)`
-/

namespace A325747.P16594499277653160934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n - A325746 (n + 1)

end

end A325747.P16594499277653160934

namespace A325747

/-- `A062157(n)-A325746(n+1)` -/
def P16594499277653160934.Spec : Prop :=
  ∀ n, P16594499277653160934.a n = A325747 (n + 1)

end A325747

/-! ## A325747.P6849326442110999459

`A054977(n)*A325745(n+1)`
-/

namespace A325747.P6849326442110999459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A325745 (n + 1)

end

end A325747.P6849326442110999459

namespace A325747

/-- `A054977(n)*A325745(n+1)` -/
def P6849326442110999459.Spec : Prop :=
  ∀ n, P6849326442110999459.a n = A325747 (n + 1)

end A325747

/-! ## A325747.P14770473624316247

`A325745(n+1)+char[A115802(n)]`
-/

namespace A325747.P14770473624316247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115802 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325745 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A325747.P14770473624316247

namespace A325747

/-- `A325745(n+1)+char[A115802(n)]` -/
def P14770473624316247.Spec : Prop :=
  ∀ n, P14770473624316247.a n = A325747 (n + 1)

end A325747

/-! ## A325747.P2213855777840969210

`A325745(n+1)+C(A023416(n), n)`
-/

namespace A325747.P2213855777840969210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325745 (n + 1) + (Nat.choose (A023416 n).toNat n : ℤ)

end

end A325747.P2213855777840969210

namespace A325747

/-- `A325745(n+1)+C(A023416(n), n)` -/
def P2213855777840969210.Spec : Prop :=
  ∀ n, P2213855777840969210.a n = A325747 (n + 1)

end A325747

/-! ## A325747.P8606511143278559824

`A325745(n+1)+1-A062157(n)²`
-/

namespace A325747.P8606511143278559824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325745 (n + 1) + (1 - A062157 n ^ 2)

end

end A325747.P8606511143278559824

namespace A325747

/-- `A325745(n+1)+1-A062157(n)²` -/
def P8606511143278559824.Spec : Prop :=
  ∀ n, P8606511143278559824.a n = A325747 (n + 1)

end A325747

/-! ## A325747.P3102142379722490873

`floor(A325745(n+1)+2/A001966(n))`
-/

namespace A325747.P3102142379722490873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A325745 (n + 1) : ℚ) + 2 / (A001966 n : ℚ)⌋

end

end A325747.P3102142379722490873

namespace A325747

/-- `floor(A325745(n+1)+2/A001966(n))` -/
def P3102142379722490873.Spec : Prop :=
  ∀ n, P3102142379722490873.a n = A325747 (n + 1)

end A325747

/-! ## A325747.P2456834010302457521

`floor(A325745(n+1)+1/A000201(n+1))`
-/

namespace A325747.P2456834010302457521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A325745 (n + 1) : ℚ) + 1 / (A000201 (n + 1) : ℚ)⌋

end

end A325747.P2456834010302457521

namespace A325747

/-- `floor(A325745(n+1)+1/A000201(n+1))` -/
def P2456834010302457521.Spec : Prop :=
  ∀ n, P2456834010302457521.a n = A325747 (n + 1)

end A325747

/-! ## A325747.P15621517971689736882

`floor(A325745(n+1)+1/A003622(n+1))`
-/

namespace A325747.P15621517971689736882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A325745 (n + 1) : ℚ) + 1 / (A003622 (n + 1) : ℚ)⌋

end

end A325747.P15621517971689736882

namespace A325747

/-- `floor(A325745(n+1)+1/A003622(n+1))` -/
def P15621517971689736882.Spec : Prop :=
  ∀ n, P15621517971689736882.a n = A325747 (n + 1)

end A325747

/-! ## A325747.P3319750822002682467

`floor(A325745(n+1)+2/A001950(n+1))`
-/

namespace A325747.P3319750822002682467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A325745 (n + 1) : ℚ) + 2 / (A001950 (n + 1) : ℚ)⌋

end

end A325747.P3319750822002682467

namespace A325747

/-- `floor(A325745(n+1)+2/A001950(n+1))` -/
def P3319750822002682467.Spec : Prop :=
  ∀ n, P3319750822002682467.a n = A325747 (n + 1)

end A325747

/-! ## A325747.P1498906579315485703

`A001030(floor(root(7, n+1))+1)*A325745(n+1)`
-/

namespace A325747.P1498906579315485703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001030 (⌊(7 : ℝ) ^ (1 / (n + 1 : ℝ))⌋ + 1).toNat * A325745 (n + 1)

end

end A325747.P1498906579315485703

namespace A325747

/-- `A001030(floor(root(7, n+1))+1)*A325745(n+1)` -/
def P1498906579315485703.Spec : Prop :=
  ∀ n, P1498906579315485703.a n = A325747 (n + 1)

end A325747

/-! ## A325747.P4910754842960615230

`A325745(n+1)+A089798(A110185(n))`
-/

namespace A325747.P4910754842960615230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325745 (n + 1) + A089798 (A110185 n).toNat

end

end A325747.P4910754842960615230

namespace A325747

/-- `A325745(n+1)+A089798(A110185(n))` -/
def P4910754842960615230.Spec : Prop :=
  ∀ n, P4910754842960615230.a n = A325747 (n + 1)

end A325747

/-! ## A325747.P5145441558421167437

`A000034(A001316(n))*A325745(n+1)`
-/

namespace A325747.P5145441558421167437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A001316 n).toNat * A325745 (n + 1)

end

end A325747.P5145441558421167437

namespace A325747

/-- `A000034(A001316(n))*A325745(n+1)` -/
def P5145441558421167437.Spec : Prop :=
  ∀ n, P5145441558421167437.a n = A325747 (n + 1)

end A325747

/-! ## A325747.P16378929604237300856

`A000034(A008458(n))*A325745(n+1)`
-/

namespace A325747.P16378929604237300856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A008458 n).toNat * A325745 (n + 1)

end

end A325747.P16378929604237300856

namespace A325747

/-- `A000034(A008458(n))*A325745(n+1)` -/
def P16378929604237300856.Spec : Prop :=
  ∀ n, P16378929604237300856.a n = A325747 (n + 1)

end A325747

/-! ## A325747.P14807542313661285917

`A014963(A016825(n))*A325745(n+1)`
-/

namespace A325747.P14807542313661285917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A016825 n).toNat * A325745 (n + 1)

end

end A325747.P14807542313661285917

namespace A325747

/-- `A014963(A016825(n))*A325745(n+1)` -/
def P14807542313661285917.Spec : Prop :=
  ∀ n, P14807542313661285917.a n = A325747 (n + 1)

end A325747

/-!
# A325748: First term of n-th difference sequence of (floor(k/e)), k >= 0.

The programs for A325748, the canonical program `A325748.P14482845730569794889` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325748 has offset 1).

The definition of A325748 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325748.P14482845730569794889

`∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A032634(#)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A325748

/-- `∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A032634(#)]` -/
def P14482845730569794889.Spec : Prop :=
  ∀ n, P14482845730569794889.a n = (A325748 (n + 1) : ℚ)

end A325748

/-! ## A325748.P11590937219872196352

`A325750(n+1)%∑[A046887(n+1)]`
-/

namespace A325748.P11590937219872196352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325750 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A325748.P11590937219872196352

namespace A325748

/-- `A325750(n+1)%∑[A046887(n+1)]` -/
def P11590937219872196352.Spec : Prop :=
  ∀ n, P11590937219872196352.a n = A325748 (n + 1)

end A325748

/-! ## A325748.P17529577408638558615

`A325750(n+1)-A000007(A022283(n))`
-/

namespace A325748.P17529577408638558615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325750 (n + 1) - A000007 (A022283 n).toNat

end

end A325748.P17529577408638558615

namespace A325748

/-- `A325750(n+1)-A000007(A022283(n))` -/
def P17529577408638558615.Spec : Prop :=
  ∀ n, P17529577408638558615.a n = A325748 (n + 1)

end A325748

/-! ## A325748.P14469121978266194346

`A325750(n+1)-A000007(A060354(n))`
-/

namespace A325748.P14469121978266194346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325750 (n + 1) - A000007 (A060354 n).toNat

end

end A325748.P14469121978266194346

namespace A325748

/-- `A325750(n+1)-A000007(A060354(n))` -/
def P14469121978266194346.Spec : Prop :=
  ∀ n, P14469121978266194346.a n = A325748 (n + 1)

end A325748

/-! ## A325748.P622205737799990943

`A325750(n+1)-A000007(A078184(n))`
-/

namespace A325748.P622205737799990943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325750 (n + 1) - A000007 (A078184 n).toNat

end

end A325748.P622205737799990943

namespace A325748

/-- `A325750(n+1)-A000007(A078184(n))` -/
def P622205737799990943.Spec : Prop :=
  ∀ n, P622205737799990943.a n = A325748 (n + 1)

end A325748

/-!
# A325749: First term of n-th difference sequence of (floor(e*k/(e-1))), k >= 0.

The programs for A325749, there is no canonical definition to state claims against.
-/

/-! ## A325749.P15759384817254138464

`A352567(A006955(n))+A325730(n+1)`
-/

namespace A325749.P15759384817254138464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352567 (A006955 n).toNat + A325730 (n + 1)

end

end A325749.P15759384817254138464

/-! ## A325749.P16593729520650599166

`A325730(n+1)+A053866(A046528(n+1))`
-/

namespace A325749.P16593729520650599166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325730 (n + 1) + A053866 (A046528 (n + 1)).toNat

end

end A325749.P16593729520650599166

/-! ## A325749.P2194683149497423732

`A325730(n+1)+A010051(A223975(n+1))`
-/

namespace A325749.P2194683149497423732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325730 (n + 1) + A010051 (A223975 (n + 1)).toNat

end

end A325749.P2194683149497423732

/-! ## A325749.P17948390673467236264

`A325730(n+1)+A323513(A068970(n+1))`
-/

namespace A325749.P17948390673467236264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325730 (n + 1) + A323513 (A068970 (n + 1)).toNat

end

end A325749.P17948390673467236264

/-! ## A325749.P308758790743462503

`A325730(n+1)-A008683(A325760(3*(n+1)))`
-/

namespace A325749.P308758790743462503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325730 (n + 1) - A008683 (A325760 (3 * (n + 1))).toNat

end

end A325749.P308758790743462503

/-!
# A325750: First term of n-th difference sequence of (floor(r*k)), r = (1+sqrt(3))/2, k >= 0.

The programs for A325750, there is no canonical definition to state claims against.
-/

/-! ## A325750.P10527486358801389853

`A325748(n+1)+A036987((9*n)²)`
-/

namespace A325750.P10527486358801389853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325748 (n + 1) + A036987 ((9 * n) ^ 2)

end

end A325750.P10527486358801389853

/-! ## A325750.P14172737600934090437

`A325748(n+1)+A000007(A022283(n))`
-/

namespace A325750.P14172737600934090437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325748 (n + 1) + A000007 (A022283 n).toNat

end

end A325750.P14172737600934090437

/-! ## A325750.P2872451225639755942

`A325748(n+1)+A000007(A060354(n))`
-/

namespace A325750.P2872451225639755942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325748 (n + 1) + A000007 (A060354 n).toNat

end

end A325750.P2872451225639755942

/-! ## A325750.P5329477495261187389

`A325748(n+1)+A000007(A078184(n))`
-/

namespace A325750.P5329477495261187389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325748 (n + 1) + A000007 (A078184 n).toNat

end

end A325750.P5329477495261187389

/-! ## A325750.P11783231008736600437

`A325748(n+1)+A000007(A135453(n))`
-/

namespace A325750.P11783231008736600437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325748 (n + 1) + A000007 (A135453 n).toNat

end

end A325750.P11783231008736600437

/-!
# A325751: First term of n-th difference sequence of (floor(r*k)), r = log(2), k >= 0.

The programs for A325751, the canonical program `A325751.P98631536868525293` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325751 has offset 1).

The definition of A325751 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325751.P98631536868525293

`∑{#}[n, (-1)^(n-#)*C(n, #)*A022933(#)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A325751

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A022933(#)]` -/
def P98631536868525293.Spec : Prop :=
  ∀ n, P98631536868525293.a n = (A325751 (n + 1) : ℚ)

end A325751

/-! ## A325751.P17271256524836044751

`A325729(n+1)-A325752(A187829(n+2))`
-/

namespace A325751.P17271256524836044751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325729 (n + 1) - A325752 (A187829 (n + 2)).toNat

end

end A325751.P17271256524836044751

namespace A325751

/-- `A325729(n+1)-A325752(A187829(n+2))` -/
def P17271256524836044751.Spec : Prop :=
  ∀ n, P17271256524836044751.a n = A325751 (n + 1)

end A325751

/-! ## A325751.P8250236718488837403

`A034699(A133494(n))-A334656(n)`
-/

namespace A325751.P8250236718488837403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A133494 n).toNat - A334656 n

end

end A325751.P8250236718488837403

namespace A325751

/-- `A034699(A133494(n))-A334656(n)` -/
def P8250236718488837403.Spec : Prop :=
  ∀ n, P8250236718488837403.a n = A325751 (n + 1)

end A325751

/-! ## A325751.P7210591365504604793

`A057681(n)*A062157(A000129(n))`
-/

namespace A325751.P7210591365504604793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057681 n * A062157 (A000129 n).toNat

end

end A325751.P7210591365504604793

namespace A325751

/-- `A057681(n)*A062157(A000129(n))` -/
def P7210591365504604793.Spec : Prop :=
  ∀ n, P7210591365504604793.a n = A325751 (n + 1)

end A325751

/-! ## A325751.P5135314962143033294

`A057681(n)*A062157(A093835(n))`
-/

namespace A325751.P5135314962143033294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057681 n * A062157 (A093835 n).toNat

end

end A325751.P5135314962143033294

namespace A325751

/-- `A057681(n)*A062157(A093835(n))` -/
def P5135314962143033294.Spec : Prop :=
  ∀ n, P5135314962143033294.a n = A325751 (n + 1)

end A325751

/-!
# A325752: First term of n-th difference sequence of (floor(r*k)), r = log(3), k >= 0.

The programs for A325752, there is no canonical definition to state claims against.
-/

/-! ## A325752.P5494096808361706903

`A110555(∑[A020753(n+1)]-1)`
-/

namespace A325752.P5494096808361706903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110555 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A325752.P5494096808361706903

/-! ## A325752.P18412761694772141969

`A033999(A272153(3*n+1))*A243745(n)`
-/

namespace A325752.P18412761694772141969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A272153 (3 * n + 1)).toNat * A243745 (n + 10)

end

end A325752.P18412761694772141969

/-! ## A325752.P12275596014400276406

`(-1)^n*A222244(A243745(n))`
-/

namespace A325752.P12275596014400276406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A222244 (A243745 (n + 10)).toNat

end

end A325752.P12275596014400276406

/-! ## A325752.P13474748526903123129

`A020985(A243745(n))*A243745(n)`
-/

namespace A325752.P13474748526903123129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A243745 (n + 10)).toNat * A243745 (n + 10)

end

end A325752.P13474748526903123129

/-! ## A325752.P2002492290731828715

`A222244(A243745(n))/A033999(n)`
-/

namespace A325752.P2002492290731828715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222244 (A243745 (n + 10)).toNat : ℚ) / (A033999 n : ℚ)

end

end A325752.P2002492290731828715

/-!
# A325754: Triangle read by rows giving the number of configurations of n indistinguishable pairs placed on the vertices of the ladder graph P_2 X P_n such that exactly k such pairs are joined by a horizontal edge.

The programs for A325754, there is no canonical definition to state claims against.
-/

/-! ## A325754.P8551474210268165498

`A079267(n)-(T(n-1,k-1)-T(n-1,k))` with `a(0)=1`
-/

namespace A325754.P8551474210268165498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A079267 n - (SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp a n)

end

end A325754.P8551474210268165498

/-!
# A325755: Numbers n divisible by their prime shadow A181819(n).

The programs for A325755, the canonical program `A325755.P16934232408235927233` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325755 has offset 1).

The definition of A325755 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2394 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325755.P16934232408235927233

`record[(n+1)*A353566(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A325755

/-- `record[(n+1)*A353566(n+1)]` -/
def P16934232408235927233.Spec : Prop :=
  ∀ n, P16934232408235927233.a n = A325755 (n + 1)

theorem P16934232408235927233.correct : P16934232408235927233.Spec := by
  intro n
  simp only [A325755, Nat.add_sub_cancel]

end A325755

/-! ## A325755.P13009124115827883508

`filter[A305801(n+1), A353566(#)]`
-/

namespace A325755.P13009124115827883508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353566 (f1 j).toNat = 1) n)

end

end A325755.P13009124115827883508

namespace A325755

/-- `filter[A305801(n+1), A353566(#)]` -/
def P13009124115827883508.Spec : Prop :=
  ∀ n, P13009124115827883508.a n = A325755 (n + 1)

end A325755

/-! ## A325755.P18442373110123019241

`filter[A305810(n+1), A353566(#)]`
-/

namespace A325755.P18442373110123019241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353566 (f1 j).toNat = 1) n)

end

end A325755.P18442373110123019241

namespace A325755

/-- `filter[A305810(n+1), A353566(#)]` -/
def P18442373110123019241.Spec : Prop :=
  ∀ n, P18442373110123019241.a n = A325755 (n + 1)

end A325755

/-! ## A325755.P9901016080054749942

`filter[A305890(n+1), A353566(#)]`
-/

namespace A325755.P9901016080054749942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353566 (f1 j).toNat = 1) n)

end

end A325755.P9901016080054749942

namespace A325755

/-- `filter[A305890(n+1), A353566(#)]` -/
def P9901016080054749942.Spec : Prop :=
  ∀ n, P9901016080054749942.a n = A325755 (n + 1)

end A325755

/-! ## A325755.P7698071905845728966

`filter[A305900(n+1), A353566(#)]`
-/

namespace A325755.P7698071905845728966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353566 (f1 j).toNat = 1) n)

end

end A325755.P7698071905845728966

namespace A325755

/-- `filter[A305900(n+1), A353566(#)]` -/
def P7698071905845728966.Spec : Prop :=
  ∀ n, P7698071905845728966.a n = A325755 (n + 1)

end A325755

/-! ## A325755.P14269862613564893408

`filter[A305901(n+1), A353566(#)]`
-/

namespace A325755.P14269862613564893408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353566 (f1 j).toNat = 1) n)

end

end A325755.P14269862613564893408

namespace A325755

/-- `filter[A305901(n+1), A353566(#)]` -/
def P14269862613564893408.Spec : Prop :=
  ∀ n, P14269862613564893408.a n = A325755 (n + 1)

end A325755

/-! ## A325755.P3495829671394655012

`filter[A305903(n+1), A353566(#)]`
-/

namespace A325755.P3495829671394655012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353566 (f1 j).toNat = 1) n)

end

end A325755.P3495829671394655012

namespace A325755

/-- `filter[A305903(n+1), A353566(#)]` -/
def P3495829671394655012.Spec : Prop :=
  ∀ n, P3495829671394655012.a n = A325755 (n + 1)

end A325755

/-! ## A325755.P11579633163532805997

`filter[A305904(n+1), A353566(#)]`
-/

namespace A325755.P11579633163532805997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353566 (f1 j).toNat = 1) n)

end

end A325755.P11579633163532805997

namespace A325755

/-- `filter[A305904(n+1), A353566(#)]` -/
def P11579633163532805997.Spec : Prop :=
  ∀ n, P11579633163532805997.a n = A325755 (n + 1)

end A325755

/-! ## A325755.P15482359200315098868

`filter[A319704(n+1), A353566(#)]`
-/

namespace A325755.P15482359200315098868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353566 (f1 j).toNat = 1) n)

end

end A325755.P15482359200315098868

namespace A325755

/-- `filter[A319704(n+1), A353566(#)]` -/
def P15482359200315098868.Spec : Prop :=
  ∀ n, P15482359200315098868.a n = A325755 (n + 1)

end A325755

/-! ## A325755.P8730010224364173673

`filter[A319707(n+1), A353566(#)]`
-/

namespace A325755.P8730010224364173673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353566 (f1 j).toNat = 1) n)

end

end A325755.P8730010224364173673

namespace A325755

/-- `filter[A319707(n+1), A353566(#)]` -/
def P8730010224364173673.Spec : Prop :=
  ∀ n, P8730010224364173673.a n = A325755 (n + 1)

end A325755

/-! ## A325755.P9043048098140337644

`filter[A331304(n+1), A353566(#)]`
-/

namespace A325755.P9043048098140337644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353566 (f1 j).toNat = 1) n)

end

end A325755.P9043048098140337644

namespace A325755

/-- `filter[A331304(n+1), A353566(#)]` -/
def P9043048098140337644.Spec : Prop :=
  ∀ n, P9043048098140337644.a n = A325755 (n + 1)

end A325755

/-! ## A325755.P11391244167394625585

`filter[A379000(n+1), A353566(#)]`
-/

namespace A325755.P11391244167394625585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353566 (f1 j).toNat = 1) n)

end

end A325755.P11391244167394625585

namespace A325755

/-- `filter[A379000(n+1), A353566(#)]` -/
def P11391244167394625585.Spec : Prop :=
  ∀ n, P11391244167394625585.a n = A325755 (n + 1)

end A325755

/-! ## A325755.P16029520821787427461

`filter[A324401(n+1), A353566(#)]`
-/

namespace A325755.P16029520821787427461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353566 (f1 j).toNat = 1) n)

end

end A325755.P16029520821787427461

namespace A325755

/-- `filter[A324401(n+1), A353566(#)]` -/
def P16029520821787427461.Spec : Prop :=
  ∀ n, P16029520821787427461.a n = A325755 (n + 1)

end A325755

/-! ## A325755.P12008641207701063044

`filter[A305902(n+1), A353566(#)]`
-/

namespace A325755.P12008641207701063044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353566 (f1 j).toNat = 1) n)

end

end A325755.P12008641207701063044

namespace A325755

/-- `filter[A305902(n+1), A353566(#)]` -/
def P12008641207701063044.Spec : Prop :=
  ∀ n, P12008641207701063044.a n = A325755 (n + 1)

end A325755

/-! ## A325755.P9911535638058709500

`eq[1, A353566(n+1)]+1`
-/

namespace A325755.P9911535638058709500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353566 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325755.P9911535638058709500

namespace A325755

/-- `eq[1, A353566(n+1)]+1` -/
def P9911535638058709500.Spec : Prop :=
  ∀ n, (P9911535638058709500.a n : ℤ) = A325755 (n + 1)

end A325755

/-! ## A325755.P5165182563868419502

`filter[A319701(n+1), A353566(#)]`
-/

namespace A325755.P5165182563868419502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353566 (f1 j).toNat = 1) n)

end

end A325755.P5165182563868419502

namespace A325755

/-- `filter[A319701(n+1), A353566(#)]` -/
def P5165182563868419502.Spec : Prop :=
  ∀ n, P5165182563868419502.a n = A325755 (n + 1)

end A325755

/-! ## A325755.P1496727764025849398

`filter[A326203(n+1), A353566(#)]`
-/

namespace A325755.P1496727764025849398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353566 (f1 j).toNat = 1) n)

end

end A325755.P1496727764025849398

namespace A325755

/-- `filter[A326203(n+1), A353566(#)]` -/
def P1496727764025849398.Spec : Prop :=
  ∀ n, P1496727764025849398.a n = A325755 (n + 1)

end A325755

/-! ## A325755.P15769381486274959659

`filter[A326202(n+1), A353566(#)]`
-/

namespace A325755.P15769381486274959659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353566 (f1 j).toNat = 1) n)

end

end A325755.P15769381486274959659

namespace A325755

/-- `filter[A326202(n+1), A353566(#)]` -/
def P15769381486274959659.Spec : Prop :=
  ∀ n, P15769381486274959659.a n = A325755 (n + 1)

end A325755

/-! ## A325755.P16826262687891551721

`filter[A322810(n+1), A353566(#)]`
-/

namespace A325755.P16826262687891551721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353566 (f1 j).toNat = 1) n)

end

end A325755.P16826262687891551721

namespace A325755

/-- `filter[A322810(n+1), A353566(#)]` -/
def P16826262687891551721.Spec : Prop :=
  ∀ n, P16826262687891551721.a n = A325755 (n + 1)

end A325755

/-! ## A325755.P10932144363960948334

`filter[A326201(n+1), A353566(#)]`
-/

namespace A325755.P10932144363960948334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353566 (f1 j).toNat = 1) n)

end

end A325755.P10932144363960948334

namespace A325755

/-- `filter[A326201(n+1), A353566(#)]` -/
def P10932144363960948334.Spec : Prop :=
  ∀ n, P10932144363960948334.a n = A325755 (n + 1)

end A325755

/-!
# A325756: A number k belongs to the sequence if k = 1 or k is divisible by its prime shadow A181819(k) and the quotient k/A181819(k) also belongs to the sequence.

The programs for A325756, there is no canonical definition to state claims against.
-/

/-! ## A325756.P13219564423752038860

`∑[A275504(a(n-2)+11)]` with `a(0)=1, a(1)=1, a(2)=10`
-/

namespace A325756.P13219564423752038860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 10] fun n f1 =>
  A275504 (f1 (n - 2) + 11).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325756.P13219564423752038860

/-!
# A325757: Irregular triangle read by rows giving the frequency span of n.

The programs for A325757, there is no canonical definition to state claims against.
-/

/-! ## A325757.P10926192113898588727

`A038374(record[(A156251(n+1)+1)/A164719(n+1)])`
-/

namespace A325757.P10926192113898588727
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156251 (n + 1) + 1 : ℚ) / (A164719 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038374 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A325757.P10926192113898588727

/-! ## A325757.P8195388454934004138

`A384890(lt[A327125(n+2), A177789(n)])`
-/

namespace A325757.P8195388454934004138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327125 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384890 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A325757.P8195388454934004138

/-! ## A325757.P9605598861442062609

`A031346((6*n)²+16)`
-/

namespace A325757.P9605598861442062609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 ((6 * n) ^ 2 + 16)

end

end A325757.P9605598861442062609

/-! ## A325757.P2080449206542095074

`A261794(A002476(n+1)*A076641(n))`
-/

namespace A325757.P2080449206542095074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261794 (A002476 (n + 1) * A076641 n).toNat

end

end A325757.P2080449206542095074

/-! ## A325757.P8738389282348363929

`A261794(lcm(A002476(n+1), A076641(n)))`
-/

namespace A325757.P8738389282348363929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261794 (Int.lcm (A002476 (n + 1)) (A076641 n))

end

end A325757.P8738389282348363929

/-!
# A325758: Irregular triangle read by rows giving the frequency span signature of n.

The programs for A325758, there is no canonical definition to state claims against.
-/

/-! ## A325758.P9820550123508019677

`runs[A325757(n+1)]`
-/

namespace A325758.P9820550123508019677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325757 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A325758.P9820550123508019677

/-! ## A325758.P6984074574799276521

`gcd(3*n, A106487(A008762(n)))`
-/

namespace A325758.P6984074574799276521
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (3 * n : ℤ) (A106487 (A008762 n).toNat)

end

end A325758.P6984074574799276521

/-! ## A325758.P9425086209783740831

`A058400(A077196(∑[2^n]))`
-/

namespace A325758.P9425086209783740831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058400 (A077196 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A325758.P9425086209783740831

/-! ## A325758.P3028994918059013677

`A007302(A331598(∑[n+2])²)`
-/

namespace A325758.P3028994918059013677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (A331598 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A325758.P3028994918059013677

/-! ## A325758.P12308851563861640148

`A265332(Δ[A237830(n+1)²])`
-/

namespace A325758.P12308851563861640148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237830 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265332 (f1 (n + 1) - f1 n).toNat

end

end A325758.P12308851563861640148

/-!
# A325759: Number of distinct frequencies in the frequency span of n.

The programs for A325759, there is no canonical definition to state claims against.
-/

/-! ## A325759.P8526414952468472106

`∑{p}[(n+1)*A026741(A320118(n+1)), A069513(#)]`
-/

namespace A325759.P8526414952468472106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A026741 (A320118 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A069513 p

end

end A325759.P8526414952468472106

/-! ## A325759.P799171704228169625

`∑{p}[(n+1)*A026741(A320118(n+1)), A071625(#)]`
-/

namespace A325759.P799171704228169625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A026741 (A320118 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A071625 p

end

end A325759.P799171704228169625

/-! ## A325759.P4180503249039958722

`∑{p}[(n+1)*A026741(A320118(n+1)), A157928(#)]`
-/

namespace A325759.P4180503249039958722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A026741 (A320118 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A157928 p

end

end A325759.P4180503249039958722

/-! ## A325759.P12140574709830615331

`∑{p}[(n+1)*A026741(A320118(n+1)), A316436(#)]`
-/

namespace A325759.P12140574709830615331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A026741 (A320118 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A316436 p

end

end A325759.P12140574709830615331

/-! ## A325759.P1733680070941796511

`A001221(A325760(n+1))`
-/

namespace A325759.P1733680070941796511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A325760 (n + 1)).toNat

end

end A325759.P1733680070941796511

/-! ## A325759.P17834661348969738209

`∑{p}[A325760(n+1), A001222(#)]`
-/

namespace A325759.P17834661348969738209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A325759.P17834661348969738209

/-! ## A325759.P15951228287041316132

`A001222(∏{p}[A325760(n+1), #])`
-/

namespace A325759.P15951228287041316132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A325759.P15951228287041316132

/-! ## A325759.P9444800352516885036

`val(∏{p}[A325760(n+1), A000005(#)], 2)`
-/

namespace A325759.P9444800352516885036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325760 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000005 p).toNat 2

end

end A325759.P9444800352516885036

/-! ## A325759.P14908370725602299659

`∑{e}[A325760(n+1), A005117(ceil(#/9))]`
-/

namespace A325759.P14908370725602299659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A005117 ⌈(Nat.factorization (f1 n).natAbs p : ℚ) / 9⌉.toNat

end

end A325759.P14908370725602299659

/-! ## A325759.P1812744444611306945

`A001222(∏{e}[A325760(n+1), A000040(#)])`
-/

namespace A325759.P1812744444611306945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A325759.P1812744444611306945

/-!
# A325760: Heinz number of the frequency span of n.

The programs for A325760, there is no canonical definition to state claims against.
-/

/-! ## A325760.P7060345619956323330

`(n+1)*ceil(A320118(n+1)/2)`
-/

namespace A325760.P7060345619956323330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌈(A320118 (n + 1) : ℚ) / 2⌉

end

end A325760.P7060345619956323330

/-! ## A325760.P2865443634825781230

`(n+1)*A004525(A320118(n+1))`
-/

namespace A325760.P2865443634825781230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004525 (A320118 (n + 1)).toNat

end

end A325760.P2865443634825781230

/-! ## A325760.P2870109908629507557

`(n+1)*A004526(A320118(n+1)+1)`
-/

namespace A325760.P2870109908629507557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004526 (A320118 (n + 1) + 1).toNat

end

end A325760.P2870109908629507557

/-! ## A325760.P10151122226350897271

`(n+1)*A026741(A320118(C(n+1, n)))`
-/

namespace A325760.P10151122226350897271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A026741 (A320118 (Nat.choose (n + 1) n)).toNat

end

end A325760.P10151122226350897271

/-! ## A325760.P7866732289921770724

`(n+1)*A026741(A320118(Δ[n²]-n))`
-/

namespace A325760.P7866732289921770724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A026741 (A320118 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A325760.P7866732289921770724

/-! ## A325760.P460126588887615876

`(n+1)*a(A181819(n+1)-1-A010051(n+1))` with `a(0)=1`
-/

namespace A325760.P460126588887615876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * a (A181819 (n + 1) - 1 - A010051 (n + 1)).toNat

end

end A325760.P460126588887615876

/-! ## A325760.P18401329405444072650

`A026741(A320118(n+1))*A069782(n+1)`
-/

namespace A325760.P18401329405444072650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A320118 (n + 1)).toNat * A069782 (n + 1)

end

end A325760.P18401329405444072650

/-! ## A325760.P4231241975210033218

`A026741(A320118(n+1))*A090108(n+1)`
-/

namespace A325760.P4231241975210033218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A320118 (n + 1)).toNat * A090108 (n + 1)

end

end A325760.P4231241975210033218

/-! ## A325760.P1307461017085476924

`A026741(A320118(n+1))*A052938(2*n)`
-/

namespace A325760.P1307461017085476924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A320118 (n + 1)).toNat * A052938 (2 * n)

end

end A325760.P1307461017085476924

/-! ## A325760.P10661771584123182539

`(n+1)*(A320118(n+1)+char[1])/A014963(A137688(n))`
-/

namespace A325760.P10661771584123182539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A320118 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℚ) / (A014963 (A137688 n).toNat : ℚ))

end

end A325760.P10661771584123182539

/-!
# A325761: Heinz numbers of integer partitions whose length is itself a part.

The programs for A325761, there is no canonical definition to state claims against.
-/

/-! ## A325761.P7171157981932165431

`eq[n+1, lcm(n+1, A105560(n+1))]+1`
-/

namespace A325761.P7171157981932165431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A105560 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A325761.P7171157981932165431

/-! ## A325761.P2022354047316034008

`record[A127446(A105560(n+1)+A000217(n))]`
-/

namespace A325761.P2022354047316034008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127446 (A105560 (n + 1) + A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325761.P2022354047316034008

/-! ## A325761.P7426960764898531334

`record[gcd(A096667(n+1), A218411(n+1))]`
-/

namespace A325761.P7426960764898531334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A096667 (n + 1)) (A218411 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325761.P7426960764898531334

/-! ## A325761.P11198462788784622101

`eq[A143773(2*n+1), A292505(A092541(n+1))]`
-/

namespace A325761.P11198462788784622101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143773 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292505 (A092541 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A325761.P11198462788784622101

/-! ## A325761.P8673192660191573688

`eq[A122383(2*n+1), A334368(A124332(2*(n+1)))]`
-/

namespace A325761.P8673192660191573688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122383 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334368 (A124332 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A325761.P8673192660191573688

/-!
# A325762: Heinz numbers of integer partitions with no part greater than the number of ones.

The programs for A325762, there is no canonical definition to state claims against.
-/

/-! ## A325762.P16126732614958355052

`∪[2*A325763(n+1), A325763(n+1)²]`
-/

namespace A325762.P16126732614958355052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A325763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325763 (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325762.P16126732614958355052

/-! ## A325762.P6214496659114664245

`lt[n-A243291(n+1), A007814(n+1)]+1`
-/

namespace A325762.P6214496659114664245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A243291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A325762.P6214496659114664245

/-! ## A325762.P15143934887099650019

`A040000(n)*A325763(A028310(n))`
-/

namespace A325762.P15143934887099650019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n * A325763 (A028310 n).toNat

end

end A325762.P15143934887099650019

/-! ## A325762.P15874556108505690953

`A000122(n²)*A325763(A028310(n))`
-/

namespace A325762.P15874556108505690953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2) * A325763 (A028310 n).toNat

end

end A325762.P15874556108505690953

/-! ## A325762.P1750746640630000947

`A000032(C(2, n+2))*A325763(A028310(n))`
-/

namespace A325762.P1750746640630000947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose 2 (n + 2)) * A325763 (A028310 n).toNat

end

end A325762.P1750746640630000947

/-! ## A325762.P14314909856192370859

`A020639(a(n-1))*A325763(A028310(n))` with `a(0)=1, a(1)=2`
-/

namespace A325762.P14314909856192370859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A020639 (a (n - 1)).toNat * A325763 (A028310 n).toNat

end

end A325762.P14314909856192370859

/-! ## A325762.P15470232376822841596

`A020639(A000132(n))*A325763(A028310(n))`
-/

namespace A325762.P15470232376822841596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000132 n).toNat * A325763 (A028310 n).toNat

end

end A325762.P15470232376822841596

/-! ## A325762.P10766152740356365626

`A020639(A004277(n))*A325763(A028310(n))`
-/

namespace A325762.P10766152740356365626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat * A325763 (A028310 n).toNat

end

end A325762.P10766152740356365626

/-! ## A325762.P5507125032264601322

`A020639(A008574(n))*A325763(A028310(n))`
-/

namespace A325762.P5507125032264601322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008574 n).toNat * A325763 (A028310 n).toNat

end

end A325762.P5507125032264601322

/-! ## A325762.P13118772547071377630

`A020639(A325763(n+1))*A325763(A028310(n))`
-/

namespace A325762.P13118772547071377630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A325763 (n + 1)).toNat * A325763 (A028310 n).toNat

end

end A325762.P13118772547071377630

/-!
# A325763: Heinz numbers of integer partitions whose consecutive subsequence-sums cover an initial interval of positive integers.

The programs for A325763, there is no canonical definition to state claims against.
-/

/-! ## A325763.P9204398185067519474

`∪[A325762(n+1), A372438(n+1)]`
-/

namespace A325763.P9204398185067519474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325763.P9204398185067519474

/-! ## A325763.P7805188002633006029

`A325762(n+2)/2`
-/

namespace A325763.P7805188002633006029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325762 (n + 2) : ℚ) / 2

end

end A325763.P7805188002633006029

/-! ## A325763.P1921830929377146010

`A001281(A325762(n+2))`
-/

namespace A325763.P1921830929377146010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A325762 (n + 2)).toNat

end

end A325763.P1921830929377146010

/-! ## A325763.P9120746425548703441

`A008619(A325762(n+2)-1)`
-/

namespace A325763.P9120746425548703441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A325762 (n + 2) - 1).toNat

end

end A325763.P9120746425548703441

/-! ## A325763.P12143071869737513329

`A065033(A325762(n+2)-1)`
-/

namespace A325763.P12143071869737513329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A325762 (n + 2) - 1).toNat

end

end A325763.P12143071869737513329

/-! ## A325763.P8200957068025523628

`∑[A026741(Δ[A325762(n+1)])]`
-/

namespace A325763.P8200957068025523628
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325762 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325763.P8200957068025523628

/-! ## A325763.P8355472012746040485

`A026741(A325762(n+1)+Δ[A325762(n+1)])`
-/

namespace A325763.P8355472012746040485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A325762 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A325763.P8355472012746040485

/-!
# A325764: Heinz numbers of integer partitions whose distinct consecutive subsequences have distinct sums that cover an initial interval of positive integers.

The programs for A325764, there is no canonical definition to state claims against.
-/

/-! ## A325764.P8586365847950045387

`filter[A325780(n+1), A340363(#)]`
-/

namespace A325764.P8586365847950045387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A325764.P8586365847950045387

/-! ## A325764.P6219462691042611841

`∩[A070915(n+1), A325780(n+1)]`
-/

namespace A325764.P6219462691042611841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325764.P6219462691042611841

/-! ## A325764.P14457769298599036767

`∩[A324109(n+1), A325780(n+1)]`
-/

namespace A325764.P14457769298599036767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325764.P14457769298599036767

/-! ## A325764.P15040959727146667862

`filter[A325792(n+1), A340363(#)]`
-/

namespace A325764.P15040959727146667862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325792 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A325764.P15040959727146667862

/-! ## A325764.P16344185680918715847

`∩[A299702(n+1), A325763(n+1)]`
-/

namespace A325764.P16344185680918715847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325764.P16344185680918715847

/-!
# A325765: Number of integer partitions of n with a unique consecutive subsequence summing to every positive integer from 1 to n.

The programs for A325765, the canonical program `A325765.P343892359448822889` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325765 has offset 0).

The definition of A325765 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325765.P343892359448822889

`floor(∏{e}[n+1, n/(n+1)+#])`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A325765

/-- `floor(∏{e}[n+1, n/(n+1)+#])` -/
def P343892359448822889.Spec : Prop :=
  ∀ n, P343892359448822889.a n = A325765 n

theorem P343892359448822889.correct : P343892359448822889.Spec := by
  intro n
  simp only [A325765]

end A325765

/-! ## A325765.P1751734107534642727

`∏{e}[n+1, #+1]-ceil(abs(sin(n)))`
-/

namespace A325765.P1751734107534642727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - ⌈|Real.sin (n : ℝ)|⌉

end

end A325765.P1751734107534642727

namespace A325765

/-- `∏{e}[n+1, #+1]-ceil(abs(sin(n)))` -/
def P1751734107534642727.Spec : Prop :=
  ∀ n, P1751734107534642727.a n = A325765 n

end A325765

/-! ## A325765.P18124089032029327237

`∑{d}[1+n, n²%#]+C(2, n+2)`
-/

namespace A325765.P18124089032029327237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), n ^ 2 % d + Nat.choose 2 (n + 2)

end

end A325765.P18124089032029327237

namespace A325765

/-- `∑{d}[1+n, n²%#]+C(2, n+2)` -/
def P18124089032029327237.Spec : Prop :=
  ∀ n, (P18124089032029327237.a n : ℤ) = A325765 n

end A325765

/-! ## A325765.P5973593829563069952

`n%(2-∏{e}[n+1, #+1]+n)+1`
-/

namespace A325765.P5973593829563069952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (2 - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) + (n : ℤ)) + 1

end

end A325765.P5973593829563069952

namespace A325765

/-- `n%(2-∏{e}[n+1, #+1]+n)+1` -/
def P5973593829563069952.Spec : Prop :=
  ∀ n, P5973593829563069952.a n = A325765 n

end A325765

/-! ## A325765.P10769801298736249441

`Δ[A325459(n)]+1`
-/

namespace A325765.P10769801298736249441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325459 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A325765.P10769801298736249441

namespace A325765

/-- `Δ[A325459(n)]+1` -/
def P10769801298736249441.Spec : Prop :=
  ∀ n, P10769801298736249441.a n = A325765 n

end A325765

/-! ## A325765.P9778880109707084692

`A070824(n+1)+1`
-/

namespace A325765.P9778880109707084692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (n + 1) + 1

end

end A325765.P9778880109707084692

namespace A325765

/-- `A070824(n+1)+1` -/
def P9778880109707084692.Spec : Prop :=
  ∀ n, P9778880109707084692.a n = A325765 n

end A325765

/-! ## A325765.P6008634330495337163

`A134871(n+1)-n`
-/

namespace A325765.P6008634330495337163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134871 (n + 1) - (n : ℤ)

end

end A325765.P6008634330495337163

namespace A325765

/-- `A134871(n+1)-n` -/
def P6008634330495337163.Spec : Prop :=
  ∀ n, P6008634330495337163.a n = A325765 n

end A325765

/-! ## A325765.P8742676288505204789

`floor(log2(A069626(n+1)))+1`
-/

namespace A325765.P8742676288505204789
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A069626 (n + 1)).toNat + 1

end

end A325765.P8742676288505204789

namespace A325765

/-- `floor(log2(A069626(n+1)))+1` -/
def P8742676288505204789.Spec : Prop :=
  ∀ n, (P8742676288505204789.a n : ℤ) = A325765 n

end A325765

/-! ## A325765.P11125706441203227848

`A000005(abs(1-n)+2)-1`
-/

namespace A325765.P11125706441203227848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (|1 - (n : ℤ)| + 2).toNat - 1

end

end A325765.P11125706441203227848

namespace A325765

/-- `A000005(abs(1-n)+2)-1` -/
def P11125706441203227848.Spec : Prop :=
  ∀ n, P11125706441203227848.a n = A325765 n

end A325765

/-! ## A325765.P12040678350244511507

`A175454(n)/a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A325765.P12040678350244511507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (A175454 n : ℚ) / a (n - 1)

end

end A325765.P12040678350244511507

namespace A325765

/-- `A175454(n)/a(n-1)` -/
def P12040678350244511507.Spec : Prop :=
  ∀ n, P12040678350244511507.a n = (A325765 n : ℚ)

end A325765

/-! ## A325765.P7143529248871530085

`∑{d}[n+1, A008683(#)+1]-1`
-/

namespace A325765.P7143529248871530085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A008683 d + 1) - 1

end

end A325765.P7143529248871530085

namespace A325765

/-- `∑{d}[n+1, A008683(#)+1]-1` -/
def P7143529248871530085.Spec : Prop :=
  ∀ n, P7143529248871530085.a n = A325765 n

end A325765

/-! ## A325765.P14944646133776683319

`A051950(n+1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A325765.P14944646133776683319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A051950 (n + 1) + a (n - 1)

end

end A325765.P14944646133776683319

namespace A325765

/-- `A051950(n+1)+a(n-1)` -/
def P14944646133776683319.Spec : Prop :=
  ∀ n, P14944646133776683319.a n = A325765 n

end A325765

/-! ## A325765.P1270975663633621098

`A341062(n+1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A325765.P1270975663633621098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A341062 (n + 1) + a (n - 1)

end

end A325765.P1270975663633621098

namespace A325765

/-- `A341062(n+1)+a(n-1)` -/
def P1270975663633621098.Spec : Prop :=
  ∀ n, P1270975663633621098.a n = A325765 n

end A325765

/-! ## A325765.P17715433137574171737

`A274010(n+1)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A325765.P17715433137574171737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A274010 (n + 1) - a (n - 1)

end

end A325765.P17715433137574171737

namespace A325765

/-- `A274010(n+1)-a(n-1)` -/
def P17715433137574171737.Spec : Prop :=
  ∀ n, P17715433137574171737.a n = A325765 n

end A325765

/-! ## A325765.P1770809524414275214

`floor(A000005(n+1)-n/(n+1))`
-/

namespace A325765.P1770809524414275214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000005 (n + 1) : ℚ) - (n : ℚ) / (n + 1 : ℚ)⌋

end

end A325765.P1770809524414275214

namespace A325765

/-- `floor(A000005(n+1)-n/(n+1))` -/
def P1770809524414275214.Spec : Prop :=
  ∀ n, P1770809524414275214.a n = A325765 n

end A325765

/-! ## A325765.P15807023197640375025

`Δ[a(n-1)+A000005(n)-1]` with `a(0)=0, a(1)=1`
-/

namespace A325765.P15807023197640375025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + (A000005 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325765.P15807023197640375025

namespace A325765

/-- `Δ[a(n-1)+A000005(n)-1]` -/
def P15807023197640375025.Spec : Prop :=
  ∀ n, P15807023197640375025.a n = A325765 n

end A325765

/-! ## A325765.P2419827026046527024

`A028310(A032741(n+1))`
-/

namespace A325765.P2419827026046527024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A032741 (n + 1)).toNat

end

end A325765.P2419827026046527024

namespace A325765

/-- `A028310(A032741(n+1))` -/
def P2419827026046527024.Spec : Prop :=
  ∀ n, P2419827026046527024.a n = A325765 n

end A325765

/-! ## A325765.P12633104985862343453

`A057036(A035116(n+1))`
-/

namespace A325765.P12633104985862343453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057036 (A035116 (n + 1)).toNat

end

end A325765.P12633104985862343453

namespace A325765

/-- `A057036(A035116(n+1))` -/
def P12633104985862343453.Spec : Prop :=
  ∀ n, P12633104985862343453.a n = A325765 n

end A325765

/-! ## A325765.P8247540948243434458

`A076984(A046523(n+1))`
-/

namespace A325765.P8247540948243434458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076984 (A046523 (n + 1)).toNat

end

end A325765.P8247540948243434458

namespace A325765

/-- `A076984(A046523(n+1))` -/
def P8247540948243434458.Spec : Prop :=
  ∀ n, P8247540948243434458.a n = A325765 n

end A325765

/-!
# A325767: Heinz numbers of integer partitions covering an initial interval of positive integers and containing their own multiset of multiplicities (as a submultiset).

The programs for A325767, there is no canonical definition to state claims against.
-/

/-! ## A325767.P10531009167615880704

`filter[A055932(n+1), A353566(#)]`
-/

namespace A325767.P10531009167615880704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353566 (f1 j).toNat = 1) n)

end

end A325767.P10531009167615880704

/-! ## A325767.P3044977666539590711

`filter[A325755(n+1), A341629(#)]`
-/

namespace A325767.P3044977666539590711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341629 (f1 j).toNat = 1) n)

end

end A325767.P3044977666539590711

/-! ## A325767.P4279695049996577214

`∩[A055932(n+1), A325755(n+1)]`
-/

namespace A325767.P4279695049996577214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325767.P4279695049996577214

/-! ## A325767.P6719065367965538423

`lt[A079067(n+1), A353566(n+1)]+1`
-/

namespace A325767.P6719065367965538423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353566 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A325767.P6719065367965538423

/-! ## A325767.P6385705549868384222

`record[A083259(A325755(n+1))]`
-/

namespace A325767.P6385705549868384222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083259 (A325755 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325767.P6385705549868384222

/-!
# A325768: Number of integer partitions of n for which every restriction to a subinterval has a different sum.

The programs for A325768, there is no canonical definition to state claims against.
-/

/-! ## A325768.P15361857982629282105

`A347245(A004135(n+1))+A119620(n+1)`
-/

namespace A325768.P15361857982629282105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347245 (A004135 (n + 1)).toNat + A119620 (n + 1)

end

end A325768.P15361857982629282105

/-!
# A325769: Number of integer partitions of n whose distinct consecutive subsequences have different sums.

The programs for A325769, there is no canonical definition to state claims against.
-/

/-! ## A325769.P127281243103293011

`A237667(n)+A185284(A109289(n+1))`
-/

namespace A325769.P127281243103293011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237667 n + A185284 (A109289 (n + 1)).toNat

end

end A325769.P127281243103293011

/-! ## A325769.P6290552934156955665

`A237667(n)+A025469(A277793(n+1))`
-/

namespace A325769.P6290552934156955665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237667 n + A025469 (A277793 (n + 1)).toNat

end

end A325769.P6290552934156955665

/-! ## A325769.P14011146349743174853

`A237667(n)+A089806(A325932(n+1))`
-/

namespace A325769.P14011146349743174853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237667 n + A089806 (A325932 (n + 1)).toNat

end

end A325769.P14011146349743174853

/-! ## A325769.P11043813109884968841

`A369034(A370440(n+1))+A237667(n)`
-/

namespace A325769.P11043813109884968841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369034 (A370440 (n + 1)).toNat + A237667 n

end

end A325769.P11043813109884968841

/-! ## A325769.P11521948125174825344

`A237667(n)+A188086(A095062(n+2))`
-/

namespace A325769.P11521948125174825344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237667 n + A188086 (A095062 (n + 2)).toNat

end

end A325769.P11521948125174825344

/-!
# A325770: Number of distinct nonempty contiguous subsequences of the integer partition with Heinz number n.

The programs for A325770, there is no canonical definition to state claims against.
-/

/-! ## A325770.P124046131547705168

`A335519(n+1)-1`
-/

namespace A325770.P124046131547705168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335519 (n + 1) - 1

end

end A325770.P124046131547705168

/-! ## A325770.P1859155463022908741

`ceil(∏{e}[n+1, 6/7+#])-1`
-/

namespace A325770.P1859155463022908741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ p ∈ Nat.primeFactors (f1 n), ((6 : ℚ) / 7 + (Nat.factorization (f1 n) p : ℚ))⌉ - 1

end

end A325770.P1859155463022908741

/-! ## A325770.P3263904302568404641

`xor(-ceil(∏{e}[n+1, 6/7+#]), -1)`
-/

namespace A325770.P3263904302568404641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-⌈∏ p ∈ Nat.primeFactors (f1 n), ((6 : ℚ) / 7 + (Nat.factorization (f1 n) p : ℚ))⌉) (-1)

end

end A325770.P3263904302568404641

/-! ## A325770.P339491954392405827

`floor(∏{e}[n+1, 6/7+#])%(n+1)`
-/

namespace A325770.P339491954392405827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊∏ p ∈ Nat.primeFactors (f1 n), ((6 : ℚ) / 7 + (Nat.factorization (f1 n) p : ℚ))⌋ (n + 1 : ℤ)

end

end A325770.P339491954392405827

/-! ## A325770.P13933619944952807905

`∑{d}[n+1, round(sin(A001221(#)))]`
-/

namespace A325770.P13933619944952807905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.roundAway (Real.sin (A001221 d : ℝ))

end

end A325770.P13933619944952807905

/-! ## A325770.P18436146592049907826

`A023443(ceil(∏{e}[n+1, 6/7+#]))`
-/

namespace A325770.P18436146592049907826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ⌈∏ p ∈ Nat.primeFactors (f1 n), ((6 : ℚ) / 7 + (Nat.factorization (f1 n) p : ℚ))⌉.toNat

end

end A325770.P18436146592049907826

/-! ## A325770.P7175916511039265479

`A072543(ceil(∏{e}[n+1, 6/7+#]))`
-/

namespace A325770.P7175916511039265479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072543 ⌈∏ p ∈ Nat.primeFactors (f1 n), ((6 : ℚ) / 7 + (Nat.factorization (f1 n) p : ℚ))⌉.toNat

end

end A325770.P7175916511039265479

/-! ## A325770.P6477722068893994308

`A335522(ceil(∏{e}[n+1, 6/7+#]))`
-/

namespace A325770.P6477722068893994308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335522 ⌈∏ p ∈ Nat.primeFactors (f1 n), ((6 : ℚ) / 7 + (Nat.factorization (f1 n) p : ℚ))⌉.toNat

end

end A325770.P6477722068893994308

/-! ## A325770.P6311354410625042161

`∏{e}[n+1, #+1]-A294333(∏{e}[n+1, C(#+2, 2)])`
-/

namespace A325770.P6311354410625042161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A294333 (∏ p ∈ Nat.primeFactors (f2 n), Nat.choose (Nat.factorization (f2 n) p + 2) 2)

end

end A325770.P6311354410625042161

/-!
# A325777: Heinz numbers of integer partitions whose distinct consecutive subsequences do not have different sums.

The programs for A325777, there is no canonical definition to state claims against.
-/

/-! ## A325777.P14687028754191949057

`row(∑{digits}[n, 10^#]%9)*A299729(n+1)`
-/

namespace A325777.P14687028754191949057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum % 9) : ℤ) * A299729 (n + 1)

end

end A325777.P14687028754191949057

/-! ## A325777.P10884608833391541785

`A299729(A055643(n)+1)`
-/

namespace A325777.P10884608833391541785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299729 (A055643 n + 1).toNat

end

end A325777.P10884608833391541785

/-! ## A325777.P12777889118240234511

`A299729(A090107(n+1))`
-/

namespace A325777.P12777889118240234511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299729 (A090107 (n + 1)).toNat

end

end A325777.P12777889118240234511

/-! ## A325777.P3072118279703412458

`A299729(A118759(n)+1)`
-/

namespace A325777.P3072118279703412458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299729 (A118759 n + 1).toNat

end

end A325777.P3072118279703412458

/-! ## A325777.P14011075660913676350

`A299729(A122079(n+1))`
-/

namespace A325777.P14011075660913676350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299729 (A122079 (n + 1)).toNat

end

end A325777.P14011075660913676350

/-! ## A325777.P10132268631365103897

`A299729(A296882(n+1))`
-/

namespace A325777.P10132268631365103897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299729 (A296882 (n + 1)).toNat

end

end A325777.P10132268631365103897

/-! ## A325777.P4914782047318579297

`A299729(A361338(n)+n)`
-/

namespace A325777.P4914782047318579297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299729 (A361338 n + (n : ℤ)).toNat

end

end A325777.P4914782047318579297

/-! ## A325777.P13364434811126874258

`A178334(n)!*A299729(n+1)`
-/

namespace A325777.P13364434811126874258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A178334 n).toNat : ℤ) * A299729 (n + 1)

end

end A325777.P13364434811126874258

/-! ## A325777.P7158224882748380033

`A299729(n+1)%A296895(n+1)`
-/

namespace A325777.P7158224882748380033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299729 (n + 1)) (A296895 (n + 1))

end

end A325777.P7158224882748380033

/-! ## A325777.P8786817136015455017

`and(-A160094(n+1), A299729(n+1))`
-/

namespace A325777.P8786817136015455017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A160094 (n + 1)) (A299729 (n + 1))

end

end A325777.P8786817136015455017

/-!
# A325778: Heinz numbers of integer partitions whose distinct consecutive subsequences have different sums.

The programs for A325778, there is no canonical definition to state claims against.
-/

/-! ## A325778.P2014621360140845431

`A299702(n+1)%78`
-/

namespace A325778.P2014621360140845431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299702 (n + 1)) 78

end

end A325778.P2014621360140845431

/-! ## A325778.P13514351695598350173

`A299702((n+1)^ceil(n/98))`
-/

namespace A325778.P13514351695598350173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299702 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (⌈(n : ℚ) / 98⌉ : ℤ))).toNat

end

end A325778.P13514351695598350173

/-! ## A325778.P15895753560801227624

`eq[0, A325801(or(n, a(n-1)))]` with `a(0)=1`
-/

namespace A325778.P15895753560801227624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A325801 (Int.lor (n : ℤ) (f2 (n - 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325778.P15895753560801227624

/-! ## A325778.P4215909881891374929

`lt[A325801(3*a(n-1)+n), 1]` with `a(0)=1`
-/

namespace A325778.P4215909881891374929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A325801 (3 * f1 (n - 1) + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A325778.P4215909881891374929

/-! ## A325778.P8509460742918329127

`A254109(A299702(n+1))`
-/

namespace A325778.P8509460742918329127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254109 (A299702 (n + 1)).toNat

end

end A325778.P8509460742918329127

/-! ## A325778.P576401617101704860

`A364461(A273058(n+1))`
-/

namespace A325778.P576401617101704860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364461 (A273058 (n + 1)).toNat

end

end A325778.P576401617101704860

/-! ## A325778.P11254381667961288023

`A299702(n+1)*A304042(n)`
-/

namespace A325778.P11254381667961288023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299702 (n + 1) * A304042 n

end

end A325778.P11254381667961288023

/-! ## A325778.P8476065480351998459

`∪[A027855(n+1), A009854(n)]`
-/

namespace A325778.P8476065480351998459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009854 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325778.P8476065480351998459

/-! ## A325778.P14148522971447611429

`∪[A027855(n+1), A022429(n)]`
-/

namespace A325778.P14148522971447611429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022429 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325778.P14148522971447611429

/-! ## A325778.P639223833855950868

`∪[A027855(n+1), A042521(n)]`
-/

namespace A325778.P639223833855950868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042521 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325778.P639223833855950868

/-!
# A325779: Heinz numbers of integer partitions for which every restriction to a subinterval has a different sum.

The programs for A325779, there is no canonical definition to state claims against.
-/

/-! ## A325779.P14177803751231197363

`A301899(n+1)+char[64*n+65]`
-/

namespace A325779.P14177803751231197363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64 * n + 65

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301899 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A325779.P14177803751231197363

/-! ## A325779.P8962442387377577677

`lcm(A025441(n)!, A301899(n+1))`
-/

namespace A325779.P8962442387377577677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (A025441 n).toNat : ℤ) (A301899 (n + 1))

end

end A325779.P8962442387377577677

/-! ## A325779.P9704171712024202531

`A007318(A033461(n))*A301899(n+1)`
-/

namespace A325779.P9704171712024202531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A033461 n).toNat * A301899 (n + 1)

end

end A325779.P9704171712024202531

/-! ## A325779.P3417953409788771482

`A007318(A063725(n))*A301899(n+1)`
-/

namespace A325779.P3417953409788771482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A063725 n).toNat * A301899 (n + 1)

end

end A325779.P3417953409788771482

/-! ## A325779.P18320150067393187612

`A301899(n+1)%A017329(A085207(n))`
-/

namespace A325779.P18320150067393187612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301899 (n + 1)) (A017329 (A085207 n).toNat)

end

end A325779.P18320150067393187612

/-!
# A325780: Heinz numbers of perfect integer partitions.

The programs for A325780, there is no canonical definition to state claims against.
-/

/-! ## A325780.P3297198801385963943

`eq[A301855(n+1), A304793(2*(n+1))]+1`
-/

namespace A325780.P3297198801385963943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304793 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A325780.P3297198801385963943

/-! ## A325780.P14605568728014848005

`eq[A056239(n+1), A304795(n+1)]+1`
-/

namespace A325780.P14605568728014848005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304795 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A325780.P14605568728014848005

/-! ## A325780.P11987970859872906191

`lt[A056239(n+1), A301855(n+1)]+1`
-/

namespace A325780.P11987970859872906191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301855 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A325780.P11987970859872906191

/-! ## A325780.P2959267313362349768

`eq[A056239(2*(n+1)), A301855(n+1)]+1`
-/

namespace A325780.P2959267313362349768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301855 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A325780.P2959267313362349768

/-! ## A325780.P11047232226344251915

`∩[A299702(n+1), A325792(n+1)]`
-/

namespace A325780.P11047232226344251915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325780.P11047232226344251915

/-!
# A325781: Heinz numbers of complete integer partitions.

The programs for A325781, there is no canonical definition to state claims against.
-/

/-! ## A325781.P974091293620432741

`eq[A056239(n+1), A304793(n+1)]+1`
-/

namespace A325781.P974091293620432741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304793 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A325781.P974091293620432741

/-! ## A325781.P3270462746303019111

`filter[A335127(n+1), A322860(#)]`
-/

namespace A325781.P3270462746303019111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322860 (f1 j).toNat = 1) n)

end

end A325781.P3270462746303019111

/-! ## A325781.P12351786024951070249

`filter[A335127(n+1), A365429(#)]`
-/

namespace A325781.P12351786024951070249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A325781.P12351786024951070249

/-! ## A325781.P5578741738920912879

`filter[A335127(n+1), A379968(#)]`
-/

namespace A325781.P5578741738920912879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379968 (f1 j).toNat = 1) n)

end

end A325781.P5578741738920912879

/-! ## A325781.P3619206041612100078

`∩[A005153(n+1), A335127(n+1)]`
-/

namespace A325781.P3619206041612100078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A325781.P3619206041612100078

/-!
# A325782: Heinz numbers of strict perfect integer partitions.

The programs for A325782, there is no canonical definition to state claims against.
-/

/-! ## A325782.P16925271323203830301

`A353743(n+1)/2`
-/

namespace A325782.P16925271323203830301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353743 (n + 1) : ℚ) / 2

end

end A325782.P16925271323203830301

/-! ## A325782.P1029914709812627027

`A033844(n-1)*a(n-1)` with `a(0)=1`
-/

namespace A325782.P1029914709812627027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A033844 (n - 1) * a (n - 1)

end

end A325782.P1029914709812627027

/-! ## A325782.P7893302782353705801

`∏[A033844(n)]/A033844(n)`
-/

namespace A325782.P7893302782353705801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033844 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A033844 n : ℚ)

end

end A325782.P7893302782353705801

/-! ## A325782.P2377854143609156949

`∏{d}[floor(2^(n-1)), A000040(#)]`
-/

namespace A325782.P2377854143609156949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A000040 d

end

end A325782.P2377854143609156949

/-! ## A325782.P2200241683039938123

`∏[A000040(ceil(2^(n-1)))]/2`
-/

namespace A325782.P2200241683039938123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A325782.P2200241683039938123

/-!
# A325783: Reading the first row of this array, or the first column, or the successive antidiagonals is the same as reading this sequence.

The programs for A325783, there is no canonical definition to state claims against.
-/

/-! ## A325783.P3363941730076805972

`A048881(A287982(n)+A272738(n))`
-/

namespace A325783.P3363941730076805972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A287982 n + A272738 n).toNat

end

end A325783.P3363941730076805972

/-! ## A325783.P18257224394089843254

`A333805(A099472(n+1))+A007318(n)`
-/

namespace A325783.P18257224394089843254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333805 (A099472 (n + 1)).toNat + A007318 n

end

end A325783.P18257224394089843254

/-! ## A325783.P11050103972816453869

`A068063(A184271(n+1)*A274835(n))`
-/

namespace A325783.P11050103972816453869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (A184271 (n + 1) * A274835 n).toNat

end

end A325783.P11050103972816453869

/-! ## A325783.P3585406852976452694

`A082892(xor(A000009(n), A262759(n+1)))`
-/

namespace A325783.P3585406852976452694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082892 (Int.xor (A000009 n) (A262759 (n + 1))).toNat

end

end A325783.P3585406852976452694

/-! ## A325783.P5117911204764410871

`A071625(A317153(3*n+1))+A007318(n)`
-/

namespace A325783.P5117911204764410871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (A317153 (3 * n + 1)).toNat + A007318 n

end

end A325783.P5117911204764410871

/-!
# A325784: Reading the first row of this array or its successive antidiagonals is the same as reading this sequence.

The programs for A325784, there is no canonical definition to state claims against.
-/

/-! ## A325784.P15098562949282563783

`A325785(n)+a(floor(sin(n)²))` with `a(0)=1`
-/

namespace A325784.P15098562949282563783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A325785 n + a ⌊Real.sin (n : ℝ) ^ 2⌋.toNat

end

end A325784.P15098562949282563783

/-! ## A325784.P13864928867534518768

`A325785(abs(1-n)+1)%(n+1)+1`
-/

namespace A325784.P13864928867534518768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325785 (|1 - (n : ℤ)| + 1).toNat) (n + 1 : ℤ) + 1

end

end A325784.P13864928867534518768

/-! ## A325784.P11002501362225600083

`A325785(n)+a(A084904(n)!-1)` with `a(0)=1`
-/

namespace A325784.P11002501362225600083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A325785 n + a (Nat.factorial (A084904 n).toNat - 1)

end

end A325784.P11002501362225600083

/-! ## A325784.P6719944927080657492

`ceil(A325785(A065033(2*n))+sin(n)²)`
-/

namespace A325784.P6719944927080657492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A325785 (A065033 (2 * n)).toNat : ℝ) + Real.sin (n : ℝ) ^ 2⌉

end

end A325784.P6719944927080657492

/-! ## A325784.P3284429290416018597

`A325785(abs(1-n)+1)-A153881(n+1)`
-/

namespace A325784.P3284429290416018597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325785 (|1 - (n : ℤ)| + 1).toNat - A153881 (n + 1)

end

end A325784.P3284429290416018597

/-! ## A325784.P14732003733148533763

`A325785(n)+a(A000040(n+1)%2-1)` with `a(0)=1`
-/

namespace A325784.P14732003733148533763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A325785 n + a (Int.tmod (A000040 (n + 1)) 2 - 1).toNat

end

end A325784.P14732003733148533763

/-! ## A325784.P4187146071078657523

`A325785(A028310(n))+A000040(n+1)%2`
-/

namespace A325784.P4187146071078657523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325785 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

end

end A325784.P4187146071078657523

/-! ## A325784.P11980714752649562055

`A325785(n)+a(A001222(A239700(n+1)))` with `a(0)=1`
-/

namespace A325784.P11980714752649562055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A325785 n + a (A001222 (A239700 (n + 1)).toNat).toNat

end

end A325784.P11980714752649562055

/-! ## A325784.P13373170252648285937

`A325785(A065033(2*n))+and(1, A000040(n+1))`
-/

namespace A325784.P13373170252648285937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325785 (A065033 (2 * n)).toNat + Int.land 1 (A000040 (n + 1))

end

end A325784.P13373170252648285937

/-!
# A325785: Reading the first column of this array or its successive antidiagonals is the same as reading this sequence.

The programs for A325785, there is no canonical definition to state claims against.
-/

/-! ## A325785.P1172995826877209936

`A325784(n+2)-1`
-/

namespace A325785.P1172995826877209936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325784 (n + 2) - 1

end

end A325785.P1172995826877209936

/-! ## A325785.P1084829682987306599

`∑[Δ[A325784(n+1)]%82]`
-/

namespace A325785.P1084829682987306599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325784 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 82

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325785.P1084829682987306599

/-! ## A325785.P14988010798502833832

`A023443(A325784(n+2))`
-/

namespace A325785.P14988010798502833832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A325784 (n + 2)).toNat

end

end A325785.P14988010798502833832

/-! ## A325785.P15610758262557037462

`A088226(A325784(n+2)²)`
-/

namespace A325785.P15610758262557037462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (A325784 (n + 2) ^ 2).toNat

end

end A325785.P15610758262557037462

/-! ## A325785.P13496445287009045893

`A259361(A325784(n+2)²)`
-/

namespace A325785.P13496445287009045893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A325784 (n + 2) ^ 2).toNat

end

end A325785.P13496445287009045893

/-! ## A325785.P12781754553538363231

`∑[Δ[A325784(n+1)]^A007318(n)]`
-/

namespace A325785.P12781754553538363231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325784 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) ^ (A007318 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325785.P12781754553538363231

/-! ## A325785.P15705581697897218174

`∑[Δ[A325784(n+1)]^A008459(n)]`
-/

namespace A325785.P15705581697897218174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325784 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) ^ (A008459 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325785.P15705581697897218174

/-! ## A325785.P7858039911415309407

`∑[Δ[A325784(n+1)]^A009998(n)]`
-/

namespace A325785.P7858039911415309407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325784 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) ^ (A009998 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325785.P7858039911415309407

/-! ## A325785.P13833798419920134816

`∑[Δ[A325784(n+1)]^A117401(n)]`
-/

namespace A325785.P13833798419920134816
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325784 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) ^ (A117401 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325785.P13833798419920134816

/-! ## A325785.P12641180968149580591

`A001489(n+1)+A325784(n+2)+n`
-/

namespace A325785.P12641180968149580591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (n + 1) + (A325784 (n + 2) + (n : ℤ))

end

end A325785.P12641180968149580591

/-!
# A325786: Number of complete necklace compositions of n.

The programs for A325786, there is no canonical definition to state claims against.
-/

/-! ## A325786.P4610921104199701478

`A383112(A050194(n+1))`
-/

namespace A325786.P4610921104199701478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383112 (A050194 (n + 1)).toNat

end

end A325786.P4610921104199701478

/-! ## A325786.P2768522498579845706

`A325368(A000031(n))-A003056(n)`
-/

namespace A325786.P2768522498579845706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325368 (A000031 n).toNat - A003056 n

end

end A325786.P2768522498579845706

/-! ## A325786.P16021769345744562657

`A225859(A053637(n+1))`
-/

namespace A325786.P16021769345744562657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225859 (A053637 (n + 1)).toNat

end

end A325786.P16021769345744562657

/-! ## A325786.P11772269381656169065

`A256707(A003449(n+4))`
-/

namespace A325786.P11772269381656169065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256707 (A003449 (n + 4)).toNat

end

end A325786.P11772269381656169065

/-!
# A325787: Number of perfect strict necklace compositions of n.

The programs for A325787, there is no canonical definition to state claims against.
-/

/-! ## A325787.P17306081320919780786

`A005369(n)*A048766(A207752(n+1))`
-/

namespace A325787.P17306081320919780786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 n * A048766 (A207752 (n + 1)).toNat

end

end A325787.P17306081320919780786

/-! ## A325787.P10791506302248933109

`A325789(abs(1-n)+2)-1`
-/

namespace A325787.P10791506302248933109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325789 (|1 - (n : ℤ)| + 2).toNat - 1

end

end A325787.P10791506302248933109

/-! ## A325787.P1475893882287201935

`A325789(n+1)+floor(acot(n))-1`
-/

namespace A325787.P1475893882287201935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325789 (n + 1) + ⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1

end

end A325787.P1475893882287201935

/-! ## A325787.P18165633287348423293

`abs(A325789(n+1)+A057428(n))`
-/

namespace A325787.P18165633287348423293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A325789 (n + 1) + A057428 n|

end

end A325787.P18165633287348423293

/-! ## A325787.P9618713837829555196

`abs(A325789(n+1)-A054977(n))`
-/

namespace A325787.P9618713837829555196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A325789 (n + 1) - A054977 n|

end

end A325787.P9618713837829555196

/-!
# A325789: Number of perfect necklace compositions of n.

The programs for A325789, there is no canonical definition to state claims against.
-/

/-! ## A325789.P10508696877237230640

`ceil(A325787(n+1)+abs(sin(n)))`
-/

namespace A325789.P10508696877237230640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A325787 (n + 1) : ℝ) + |Real.sin (n : ℝ)|⌉

end

end A325789.P10508696877237230640

/-! ## A325789.P7814360662237477219

`A325787(a(n-1)+n)+1` with `a(0)=1`
-/

namespace A325789.P7814360662237477219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A325787 (a (n - 1) + (n : ℤ)).toNat + 1

end

end A325789.P7814360662237477219

/-! ## A325789.P16731783332575412661

`A260758(A245552(n+1))`
-/

namespace A325789.P16731783332575412661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260758 (A245552 (n + 1)).toNat

end

end A325789.P16731783332575412661

/-! ## A325789.P15303724178208104449

`A325787(A028310(n)+1)+1`
-/

namespace A325789.P15303724178208104449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325787 (A028310 n + 1).toNat + 1

end

end A325789.P15303724178208104449

/-! ## A325789.P14227355016583303917

`A325787(n+1)+A057427(n)`
-/

namespace A325789.P14227355016583303917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325787 (n + 1) + A057427 n

end

end A325789.P14227355016583303917

/-!
# A325790: Number of permutations of {1..n} such that every positive integer from 1 to n * (n + 1)/2 is the sum of some circular subsequence.

The programs for A325790, there is no canonical definition to state claims against.
-/

/-! ## A325790.P7501650927313707674

`round(1/acot(n))*A325791(n)`
-/

namespace A325790.P7501650927313707674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) * A325791 n

end

end A325790.P7501650927313707674

/-! ## A325790.P14618894021118580889

`A028310(n)*A325791(n)`
-/

namespace A325790.P14618894021118580889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A325791 n

end

end A325790.P14618894021118580889

/-! ## A325790.P491330853794518633

`A134478(∑[n])*A325791(n)`
-/

namespace A325790.P491330853794518633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (∑ j ∈ Finset.range (n + 1), f1 j) * A325791 n

end

end A325790.P491330853794518633

/-! ## A325790.P7571071913044123888

`A193739(∑[n])*A325791(n)`
-/

namespace A325790.P7571071913044123888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (∑ j ∈ Finset.range (n + 1), f1 j) * A325791 n

end

end A325790.P7571071913044123888

/-! ## A325790.P10888092625784711435

`A000005(ceil(2^(n-1)))*A325791(n)`
-/

namespace A325790.P10888092625784711435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat * A325791 n

end

end A325790.P10888092625784711435

/-!
# A325791: Number of necklace permutations of {1..n} such that every positive integer from 1 to n * (n + 1)/2 is the sum of some circular subsequence.

The programs for A325791, there is no canonical definition to state claims against.
-/

/-! ## A325791.P11625878532652670789

`A325790(n)/round(1/acot(n))`
-/

namespace A325791.P11625878532652670789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325790 n : ℚ) / (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) : ℚ)

end

end A325791.P11625878532652670789

/-! ## A325791.P18387434919417647587

`A325790(abs(1-n)+1)/(abs(1-n)+1)`
-/

namespace A325791.P18387434919417647587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325790 (|1 - (n : ℤ)| + 1).toNat : ℚ) / (|1 - (n : ℤ)| + 1 : ℚ)

end

end A325791.P18387434919417647587

/-! ## A325791.P17532747351749037778

`A272135(n)*A329683(n)`
-/

namespace A325791.P17532747351749037778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272135 n * A329683 n

end

end A325791.P17532747351749037778

/-! ## A325791.P11636867526710316915

`floor(A325790(n)/A028310(n))`
-/

namespace A325791.P11636867526710316915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A325790 n : ℚ) / (A028310 n : ℚ)⌋

end

end A325791.P11636867526710316915

/-! ## A325791.P6958276138704428456

`A055642(A097057(n))*A272135(n)`
-/

namespace A325791.P6958276138704428456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A097057 n).toNat * A272135 n

end

end A325791.P6958276138704428456

/-!
# A325792: Positive integers with as many proper divisors as the sum of their prime indices.

The programs for A325792, there is no canonical definition to state claims against.
-/

/-! ## A325792.P18099939734914292965

`eq[1, A325794(n+1)]+1`
-/

namespace A325792.P18099939734914292965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325794 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325792.P18099939734914292965

/-! ## A325792.P14306465549161409938

`eq[A032741(n), A056239(abs(1-n)+1)]`
-/

namespace A325792.P14306465549161409938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A325792.P14306465549161409938

/-! ## A325792.P3437566422429145166

`eq[A032741(n+1), A056239(n+1)]+1`
-/

namespace A325792.P3437566422429145166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A325792.P3437566422429145166

/-! ## A325792.P14580638110928478907

`eq[A054977(n), A325794(A028310(n))]`
-/

namespace A325792.P14580638110928478907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325794 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A325792.P14580638110928478907

/-! ## A325792.P13413972436651362897

`eq[A057427(n), A325794(A028310(n))]`
-/

namespace A325792.P13413972436651362897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325794 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A325792.P13413972436651362897

/-! ## A325792.P17813570640823118301

`eq[A057428(n)², A325794(A028310(n))]`
-/

namespace A325792.P17813570640823118301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325794 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A325792.P17813570640823118301

/-!
# A325793: Positive integers whose number of divisors is equal to their sum of prime indices.

The programs for A325793, there is no canonical definition to state claims against.
-/

/-! ## A325793.P1223721177292602970

`eq[0, A325794(n+1)]+1`
-/

namespace A325793.P1223721177292602970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325794 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325793.P1223721177292602970

/-! ## A325793.P5451631236029339472

`eq[0, A325794(A028310(n))]`
-/

namespace A325793.P5451631236029339472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325794 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325793.P5451631236029339472

/-! ## A325793.P5958775404646240514

`A020725(eq[0, A325794(n+1)])`
-/

namespace A325793.P5958775404646240514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A325793.P5958775404646240514

/-! ## A325793.P11636836601331950163

`A262564(eq[0, A325794(n+1)])`
-/

namespace A325793.P11636836601331950163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262564 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A325793.P11636836601331950163

/-! ## A325793.P13951126673847749321

`eq[A000005(n+1), A056239(n+1)]+1`
-/

namespace A325793.P13951126673847749321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A325793.P13951126673847749321

/-!
# A325794: Number of divisors of n minus the sum of prime indices of n.

The programs for A325794, the canonical program `A325794.P1593222624152160603` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325794 has offset 1).

The definition of A325794 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056239, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A325794.P1593222624152160603

`A000005(n+1)-A056239(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A325794

/-- `A000005(n+1)-A056239(n+1)` -/
def P1593222624152160603.Spec : Prop :=
  ∀ n, P1593222624152160603.a n = A325794 (n + 1)

theorem P1593222624152160603.correct : P1593222624152160603.Spec := by
  intro n
  simp only [A325794, Nat.add_sub_cancel]

end A325794

/-! ## A325794.P1548802322851418731

`∏{e}[n+1, #+1]-A056239(n+1)`
-/

namespace A325794.P1548802322851418731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A056239 (n + 1)

end

end A325794.P1548802322851418731

namespace A325794

/-- `∏{e}[n+1, #+1]-A056239(n+1)` -/
def P1548802322851418731.Spec : Prop :=
  ∀ n, P1548802322851418731.a n = A325794 (n + 1)

end A325794

/-! ## A325794.P8716919754792912742

`Δ[A006218(n)]-A056239(n+1)`
-/

namespace A325794.P8716919754792912742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A056239 (n + 1)

end

end A325794.P8716919754792912742

namespace A325794

/-- `Δ[A006218(n)]-A056239(n+1)` -/
def P8716919754792912742.Spec : Prop :=
  ∀ n, P8716919754792912742.a n = A325794 (n + 1)

end A325794

/-! ## A325794.P12479812858004314571

`Δ[A054519(n)]-A056239(n+1)`
-/

namespace A325794.P12479812858004314571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A056239 (n + 1)

end

end A325794.P12479812858004314571

namespace A325794

/-- `Δ[A054519(n)]-A056239(n+1)` -/
def P12479812858004314571.Spec : Prop :=
  ∀ n, P12479812858004314571.a n = A325794 (n + 1)

end A325794

/-! ## A325794.P6282323289640878642

`A178503(n+1)-A049820(n+1)`
-/

namespace A325794.P6282323289640878642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178503 (n + 1) - A049820 (n + 1)

end

end A325794.P6282323289640878642

namespace A325794

/-- `A178503(n+1)-A049820(n+1)` -/
def P6282323289640878642.Spec : Prop :=
  ∀ n, P6282323289640878642.a n = A325794 (n + 1)

theorem P6282323289640878642.correct : P6282323289640878642.Spec := by
  intro n
  simp only [A325794, Nat.add_sub_cancel, A325794.P6282323289640878642.a, A325794.P1593222624152160603.a, A000005, A000005.P16091521709108585461.a, A049820, A049820.P9428372222244335888.a, A056239, A056239.P11316688788989965672.a, A178503, A178503.P4821530667985743072.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A048896, A048896.P6461019053085857547.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, A048881, A048881.P16567064232951496228.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A325794

/-! ## A325794.P13081570844476243211

`A081707(n+1)-A318995(n+1)`
-/

namespace A325794.P13081570844476243211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081707 (n + 1) - A318995 (n + 1)

end

end A325794.P13081570844476243211

namespace A325794

/-- `A081707(n+1)-A318995(n+1)` -/
def P13081570844476243211.Spec : Prop :=
  ∀ n, P13081570844476243211.a n = A325794 (n + 1)

theorem P13081570844476243211.correct : P13081570844476243211.Spec := by
  intro n
  simp only [A325794, Nat.add_sub_cancel, A325794.P13081570844476243211.a, A325794.P1593222624152160603.a, A000005, A000005.P16091521709108585461.a, A056239, A056239.P11316688788989965672.a, A081707, A081707.P11488317504414789232.a, A318995, A318995.P10479870511311284550.f1, A318995.P10479870511311284550.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A048896, A048896.P6461019053085857547.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, A048881, A048881.P16567064232951496228.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A325794

/-! ## A325794.P10629619916065698848

`A062249(n+1)-A380345(n+1)`
-/

namespace A325794.P10629619916065698848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062249 (n + 1) - A380345 (n + 1)

end

end A325794.P10629619916065698848

namespace A325794

/-- `A062249(n+1)-A380345(n+1)` -/
def P10629619916065698848.Spec : Prop :=
  ∀ n, P10629619916065698848.a n = A325794 (n + 1)

theorem P10629619916065698848.correct : P10629619916065698848.Spec := by
  intro n
  simp only [A325794, Nat.add_sub_cancel, A325794.P10629619916065698848.a, A325794.P1593222624152160603.a, A000005, A000005.P16091521709108585461.a, A056239, A056239.P11316688788989965672.a, A062249, A062249.P5473932307129171226.a, A380345, A380345.P3416860299638001481.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A048896, A048896.P6461019053085857547.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, A048881, A048881.P16567064232951496228.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A325794

/-! ## A325794.P11399068341699071460

`∑[A341062(n+1)]-A056239(n+1)`
-/

namespace A325794.P11399068341699071460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A056239 (n + 1)

end

end A325794.P11399068341699071460

namespace A325794

/-- `∑[A341062(n+1)]-A056239(n+1)` -/
def P11399068341699071460.Spec : Prop :=
  ∀ n, P11399068341699071460.a n = A325794 (n + 1)

end A325794

/-! ## A325794.P10437637337160131913

`A334954(n+1)-(A056239(n+1)+1)`
-/

namespace A325794.P10437637337160131913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) - (A056239 (n + 1) + 1)

end

end A325794.P10437637337160131913

namespace A325794

/-- `A334954(n+1)-(A056239(n+1)+1)` -/
def P10437637337160131913.Spec : Prop :=
  ∀ n, P10437637337160131913.a n = A325794 (n + 1)

end A325794

/-! ## A325794.P4054002548152743398

`A056239(A105555(n+1))-A056239(n+1)`
-/

namespace A325794.P4054002548152743398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A105555 (n + 1)).toNat - A056239 (n + 1)

end

end A325794.P4054002548152743398

namespace A325794

/-- `A056239(A105555(n+1))-A056239(n+1)` -/
def P4054002548152743398.Spec : Prop :=
  ∀ n, P4054002548152743398.a n = A325794 (n + 1)

end A325794

/-! ## A325794.P1899866367471823985

`A006218(n+1)-(A056239(n+1)+A006218(n))`
-/

namespace A325794.P1899866367471823985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) - (A056239 (n + 1) + A006218 n)

end

end A325794.P1899866367471823985

namespace A325794

/-- `A006218(n+1)-(A056239(n+1)+A006218(n))` -/
def P1899866367471823985.Spec : Prop :=
  ∀ n, P1899866367471823985.a n = A325794 (n + 1)

end A325794

/-! ## A325794.P10805146786808578625

`A038548(n+1)+A056924(n+1)-A056239(n+1)`
-/

namespace A325794.P10805146786808578625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1) + (A056924 (n + 1) - A056239 (n + 1))

end

end A325794.P10805146786808578625

namespace A325794

/-- `A038548(n+1)+A056924(n+1)-A056239(n+1)` -/
def P10805146786808578625.Spec : Prop :=
  ∀ n, P10805146786808578625.a n = A325794 (n + 1)

theorem P10805146786808578625.correct : P10805146786808578625.Spec := by
  intro n
  simp only [A325794, Nat.add_sub_cancel, A325794.P10805146786808578625.a, A325794.P1593222624152160603.a, A000005, A000005.P16091521709108585461.a, A038548, A038548.P12593795823109361725.a, A056239, A056239.P11316688788989965672.a, A056924, A056924.P8846060015044098494.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A048896, A048896.P6461019053085857547.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, A048881, A048881.P16567064232951496228.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A325794

/-! ## A325794.P14942280990841801988

`A000005(n+1)-(A334201(n+1)+A061395(n+1))`
-/

namespace A325794.P14942280990841801988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A334201 (n + 1) + A061395 (n + 1))

end

end A325794.P14942280990841801988

namespace A325794

/-- `A000005(n+1)-(A334201(n+1)+A061395(n+1))` -/
def P14942280990841801988.Spec : Prop :=
  ∀ n, P14942280990841801988.a n = A325794 (n + 1)

theorem P14942280990841801988.correct : P14942280990841801988.Spec := by
  intro n
  simp only [A325794, Nat.add_sub_cancel, A325794.P14942280990841801988.a, A325794.P1593222624152160603.a, A000005, A000005.P16091521709108585461.a, A056239, A056239.P11316688788989965672.a, A061395, A061395.P8431317036300486107.a, A334201, A334201.P4094470148935734367.a, A029837, A029837.P1050578713049589.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A087207, A087207.P12536008426233777954.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A048896, A048896.P6461019053085857547.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, A048881, A048881.P16567064232951496228.a, A297108, A297108.P15990807296291497671.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A325794

/-! ## A325794.P9083912961096739469

`A000005(n+1)+A278510(n+1)-A258851(n+1)`
-/

namespace A325794.P9083912961096739469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A278510 (n + 1) - A258851 (n + 1))

end

end A325794.P9083912961096739469

namespace A325794

/-- `A000005(n+1)+A278510(n+1)-A258851(n+1)` -/
def P9083912961096739469.Spec : Prop :=
  ∀ n, P9083912961096739469.a n = A325794 (n + 1)

end A325794

/-! ## A325794.P11757421047828077679

`A000005(n+1)-(A339896(n+1)+A339894(n+1))`
-/

namespace A325794.P11757421047828077679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A339896 (n + 1) + A339894 (n + 1))

end

end A325794.P11757421047828077679

namespace A325794

/-- `A000005(n+1)-(A339896(n+1)+A339894(n+1))` -/
def P11757421047828077679.Spec : Prop :=
  ∀ n, P11757421047828077679.a n = A325794 (n + 1)

theorem P11757421047828077679.correct : P11757421047828077679.Spec := by
  intro n
  simp only [A325794, Nat.add_sub_cancel, A325794.P11757421047828077679.a, A325794.P1593222624152160603.a, A000005, A000005.P16091521709108585461.a, A056239, A056239.P11316688788989965672.a, A339894, A339894.P9202660857362270704.a, A339896, A339896.P16852048549527834821.a, A000523, A000523.P3314682526375882520.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A122111, A122111.P18124015185857335041.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A048896, A048896.P6461019053085857547.a, A051731, A051731.P11318043630102858095.a, A064989, A064989.P13349672914146769936.a, A105560, A105560.P10934841406439867276.a, A000007, A000007.P6599383543502402472.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A008578, A008578.P3639467937083264764.a, A048158, A048158.P1757030368331788429.a, A048881, A048881.P16567064232951496228.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A325794

/-! ## A325794.P593740626210050240

`A299701(n+1)+A325801(n+1)-A056239(n+1)`
-/

namespace A325794.P593740626210050240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299701 (n + 1) + (A325801 (n + 1) - A056239 (n + 1))

end

end A325794.P593740626210050240

namespace A325794

/-- `A299701(n+1)+A325801(n+1)-A056239(n+1)` -/
def P593740626210050240.Spec : Prop :=
  ∀ n, P593740626210050240.a n = A325794 (n + 1)

end A325794

/-! ## A325794.P12733187218361444753

`A318979(n+1)+A327657(n+1)-A056239(n+1)`
-/

namespace A325794.P12733187218361444753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318979 (n + 1) + (A327657 (n + 1) - A056239 (n + 1))

end

end A325794.P12733187218361444753

namespace A325794

/-- `A318979(n+1)+A327657(n+1)-A056239(n+1)` -/
def P12733187218361444753.Spec : Prop :=
  ∀ n, P12733187218361444753.a n = A325794 (n + 1)

end A325794

/-! ## A325794.P11164947111005961371

`A353351(n+1)+A353352(n+1)-A056239(n+1)`
-/

namespace A325794.P11164947111005961371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353351 (n + 1) + (A353352 (n + 1) - A056239 (n + 1))

end

end A325794.P11164947111005961371

namespace A325794

/-- `A353351(n+1)+A353352(n+1)-A056239(n+1)` -/
def P11164947111005961371.Spec : Prop :=
  ∀ n, P11164947111005961371.a n = A325794 (n + 1)

theorem P11164947111005961371.correct : P11164947111005961371.Spec := by
  intro n
  simp only [A325794, Nat.add_sub_cancel, A325794.P11164947111005961371.a, A325794.P1593222624152160603.a, A000005, A000005.P16091521709108585461.a, A056239, A056239.P11316688788989965672.a, A353351, A353351.P1500515307686791628.a, A353352, A353352.P1673129124953599033.f1, A353352.P1673129124953599033.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A353350, A353350.P17688933372676458567.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A048896, A048896.P6461019053085857547.a, A051731, A051731.P11318043630102858095.a, A079978, A079978.P10382542118278163374.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, A048881, A048881.P16567064232951496228.a, A297108, A297108.P15990807296291497671.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A325794

/-! ## A325794.P6031894203295450278

`A353381(n+1)+A353382(n+1)-A056239(n+1)`
-/

namespace A325794.P6031894203295450278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353381 (n + 1) + (A353382 (n + 1) - A056239 (n + 1))

end

end A325794.P6031894203295450278

namespace A325794

/-- `A353381(n+1)+A353382(n+1)-A056239(n+1)` -/
def P6031894203295450278.Spec : Prop :=
  ∀ n, P6031894203295450278.a n = A325794 (n + 1)

theorem P6031894203295450278.correct : P6031894203295450278.Spec := by
  intro n
  simp only [A325794, Nat.add_sub_cancel, A325794.P6031894203295450278.a, A325794.P1593222624152160603.a, A000005, A000005.P16091521709108585461.a, A056239, A056239.P11316688788989965672.a, A353381, A353381.P1479749927883815012.f1, A353381.P1479749927883815012.a, A353382, A353382.P5318746231564784083.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A353380, A353380.P4494603947515544979.f1, A353380.P4494603947515544979.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A048896, A048896.P6461019053085857547.a, A051731, A051731.P11318043630102858095.a, A332823, A332823.P6707942267644391447.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A048881, A048881.P16567064232951496228.a, A102283, A102283.P18218274576938374007.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A325794

/-! ## A325794.P16981597768745989867

`A032741(n+1)+2-A056239(2*(n+1))`
-/

namespace A325794.P16981597768745989867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + (2 - A056239 (2 * (n + 1)))

end

end A325794.P16981597768745989867

namespace A325794

/-- `A032741(n+1)+2-A056239(2*(n+1))` -/
def P16981597768745989867.Spec : Prop :=
  ∀ n, P16981597768745989867.a n = A325794 (n + 1)

end A325794

/-!
# A325795: Numbers with more divisors than the sum of their prime indices.

The programs for A325795, there is no canonical definition to state claims against.
-/

/-! ## A325795.P9139555043986721176

`lt[0, A325794(n+1)]+1`
-/

namespace A325795.P9139555043986721176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325794 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A325795.P9139555043986721176

/-! ## A325795.P15058566848359339085

`∪[A052477(n+1), A325781(n+1)]`
-/

namespace A325795.P15058566848359339085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325795.P15058566848359339085

/-! ## A325795.P11846247402688828115

`∪[A055712(n+1), A325781(n+1)]`
-/

namespace A325795.P11846247402688828115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325795.P11846247402688828115

/-! ## A325795.P15321268316972958102

`∪[A325781(n+1), A376003(n+1)]`
-/

namespace A325795.P15321268316972958102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325795.P15321268316972958102

/-! ## A325795.P15759401382082848884

`∪[A325781(n+1), A392559(n+1)]`
-/

namespace A325795.P15759401382082848884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325795.P15759401382082848884

/-! ## A325795.P3448510048895997059

`∪[A325781(n+1), A396060(n+1)]`
-/

namespace A325795.P3448510048895997059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325795.P3448510048895997059

/-! ## A325795.P8182552768145632074

`lt[A056239(n+1), A000005(n+1)]+1`
-/

namespace A325795.P8182552768145632074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A325795.P8182552768145632074

/-! ## A325795.P10325218421966456015

`lt[A056239(n+1), A161841(n+1)]+1`
-/

namespace A325795.P10325218421966456015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161841 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A325795.P10325218421966456015

/-! ## A325795.P11754774732763039346

`lt[A056239(n+1)-1, A243982(n+1)]+1`
-/

namespace A325795.P11754774732763039346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243982 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A325795.P11754774732763039346

/-! ## A325795.P8694070051765738212

`A106247(lt[A056239(n+1), A000005(n+1)])`
-/

namespace A325795.P8694070051765738212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106247 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A325795.P8694070051765738212

/-!
# A325796: Numbers with at least as many divisors as the sum of their prime indices.

The programs for A325796, there is no canonical definition to state claims against.
-/

/-! ## A325796.P6285901499241257148

`lt[-1, A325794(1+n)]+1`
-/

namespace A325796.P6285901499241257148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325794 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A325796.P6285901499241257148

/-! ## A325796.P16268770949439601709

`∪[A325793(n+1), A325795(n+1)]`
-/

namespace A325796.P16268770949439601709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A325796.P16268770949439601709

/-! ## A325796.P1678302388721510855

`lt[A056239(n+1), A334954(n+1)]+1`
-/

namespace A325796.P1678302388721510855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A325796.P1678302388721510855

/-! ## A325796.P2019911883820688565

`lt[A056239(n+1), A000005(n+1)+1]+1`
-/

namespace A325796.P2019911883820688565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A325796.P2019911883820688565

/-! ## A325796.P15762400487095238418

`lt[A002265(n), A104725(A118759(n))]`
-/

namespace A325796.P15762400487095238418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 (A118759 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325796.P15762400487095238418

/-!
# A325797: Numbers with fewer divisors than the sum of their prime indices.

The programs for A325797, there is no canonical definition to state claims against.
-/

/-! ## A325797.P15707492792003511119

`lt[A325794(n+1), 0]+1`
-/

namespace A325797.P15707492792003511119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325794 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A325797.P15707492792003511119

/-! ## A325797.P8163691774120198704

`lt[A107505(n)/4, n-1]`
-/

namespace A325797.P8163691774120198704
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107505 n : ℚ) / 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A325797.P8163691774120198704

/-! ## A325797.P15751231253466449271

`lt[A117621(17*n+1), n]`
-/

namespace A325797.P15751231253466449271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117621 (17 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A325797.P15751231253466449271

/-! ## A325797.P17864483238881224590

`comp[A325796(n+1)-1]+1`
-/

namespace A325797.P17864483238881224590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325796 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A325797.P17864483238881224590

/-! ## A325797.P9560841760195673811

`lt[A050356(n+1)+2, n]+1`
-/

namespace A325797.P9560841760195673811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050356 (n + 1) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A325797.P9560841760195673811

/-! ## A325797.P5400609201112369447

`lt[A034695(n+1), 3*n]+1`
-/

namespace A325797.P5400609201112369447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034695 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A325797.P5400609201112369447

/-! ## A325797.P4910369234910539801

`lt[2*A050349(n+2), n]+2`
-/

namespace A325797.P4910369234910539801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050349 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A325797.P4910369234910539801

/-! ## A325797.P9482963510388072604

`lt[A050354(round(acot(n)+n)), floor(n/2)]`
-/

namespace A325797.P9482963510388072604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050354 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325797.P9482963510388072604

/-! ## A325797.P2383330070918650080

`lt[A325794(A028310(n)), 0]`
-/

namespace A325797.P2383330070918650080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325794 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A325797.P2383330070918650080

/-! ## A325797.P16929438872263296363

`comp[A325796(n-a(2%n))]` with `a(0)=0`
-/

namespace A325797.P16929438872263296363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A325796 ((n : ℤ) - f1 (2 % n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A325797.P16929438872263296363

/-!
# A325798: Numbers with at most as many divisors as the sum of their prime indices.

The programs for A325798, there is no canonical definition to state claims against.
-/

/-! ## A325798.P12437704122948904034

`comp[A258118(n)-1]+1`
-/

namespace A325798.P12437704122948904034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258118 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A325798.P12437704122948904034

/-! ## A325798.P4889434470073911139

`lt[A325794(n+1), 1]+1`
-/

namespace A325798.P4889434470073911139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325794 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A325798.P4889434470073911139

/-! ## A325798.P16969538799573683817

`lt[A095112(n+1), n]+1`
-/

namespace A325798.P16969538799573683817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095112 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A325798.P16969538799573683817

/-! ## A325798.P11379972975015746126

`lt[A304442(11*n), 2*n]`
-/

namespace A325798.P11379972975015746126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304442 (11 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A325798.P11379972975015746126

/-! ## A325798.P13218893680518765992

`lt[A143112(round(acot(n)+n)), n]`
-/

namespace A325798.P13218893680518765992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143112 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A325798.P13218893680518765992

/-! ## A325798.P16239669033920291199

`comp[A325781(n+1)-1]+1`
-/

namespace A325798.P16239669033920291199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325781 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A325798.P16239669033920291199

/-! ## A325798.P6879045926072940625

`lt[A193267(n+1)², n]+1`
-/

namespace A325798.P6879045926072940625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193267 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A325798.P6879045926072940625

/-! ## A325798.P8646524454384137514

`lt[A143112(n+1), n+1]+1`
-/

namespace A325798.P8646524454384137514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143112 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A325798.P8646524454384137514

/-! ## A325798.P9527091107434952907

`lt[A061200(n+1), 3*n]+1`
-/

namespace A325798.P9527091107434952907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061200 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A325798.P9527091107434952907

/-! ## A325798.P8524002824898695154

`lt[A325794(A028310(n)), 1]`
-/

namespace A325798.P8524002824898695154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325794 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A325798.P8524002824898695154

/-!
# A325799: Sum of the prime indices of n minus the number of distinct positive subset-sums of the prime indices of n.

The programs for A325799, there is no canonical definition to state claims against.
-/

/-! ## A325799.P15372161027566091388

`A056239(n+1)-A304793(n+1)`
-/

namespace A325799.P15372161027566091388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A304793 (n + 1)

end

end A325799.P15372161027566091388

/-! ## A325799.P1560537507416571044

`A346698((n+1)²)-A304793(n+1)`
-/

namespace A325799.P1560537507416571044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346698 ((n + 1) ^ 2) - A304793 (n + 1)

end

end A325799.P1560537507416571044

/-! ## A325799.P2080643269014364138

`log2(A248692(n+1))-A304793(n+1)`
-/

namespace A325799.P2080643269014364138
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A248692 (n + 1) : ℝ) - (A304793 (n + 1) : ℝ)

end

end A325799.P2080643269014364138

/-! ## A325799.P8604277419460309141

`A056239(n+1)+1-A299701(n+1)`
-/

namespace A325799.P8604277419460309141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) + (1 - A299701 (n + 1))

end

end A325799.P8604277419460309141

/-! ## A325799.P17480200252542559414

`A325801(n+1)+1-A325794(n+1)`
-/

namespace A325799.P17480200252542559414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325801 (n + 1) + (1 - A325794 (n + 1))

end

end A325799.P17480200252542559414

/-! ## A325799.P17188235773171536783

`A056239(n+1)-A000401(A299701(n+1))`
-/

namespace A325799.P17188235773171536783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A000401 (A299701 (n + 1)).toNat

end

end A325799.P17188235773171536783

/-! ## A325799.P8777507610903021412

`A318995(A003961(n+1))-A304793(n+1)`
-/

namespace A325799.P8777507610903021412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (A003961 (n + 1)).toNat - A304793 (n + 1)

end

end A325799.P8777507610903021412

/-! ## A325799.P228248292566341934

`A005496(A325801(n+1))-A325794(n+1)`
-/

namespace A325799.P228248292566341934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A325801 (n + 1)).toNat - A325794 (n + 1)

end

end A325799.P228248292566341934

/-! ## A325799.P5037806062846969716

`A334201(A020338(n+1))-A304793(n+1)`
-/

namespace A325799.P5037806062846969716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334201 (A020338 (n + 1)).toNat - A304793 (n + 1)

end

end A325799.P5037806062846969716

/-! ## A325799.P6642701958789322155

`A318995(A045965(n+1))-A304793(n+1)`
-/

namespace A325799.P6642701958789322155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (A045965 (n + 1)).toNat - A304793 (n + 1)

end

end A325799.P6642701958789322155

