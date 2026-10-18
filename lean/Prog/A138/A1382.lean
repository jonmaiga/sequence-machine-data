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
import Seq.B000.C016
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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A138200: a(n) = (14^(2*n+1) + 3^(2*n+1)) / 17.

The programs for A138200, the canonical program `A138200.P17649471565326741356` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138200 has offset 0).

The definition of A138200 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138200.P17649471565326741356

`(14^(2*n+1)+3^(2*n+1))/17`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A138200

/-- `(14^(2*n+1)+3^(2*n+1))/17` -/
def P17649471565326741356.Spec : Prop :=
  ∀ n, P17649471565326741356.a n = (A138200 n : ℚ)

end A138200

/-! ## A138200.P9272674632358967320

`floor(A138199(n)/17)`
-/

namespace A138200.P9272674632358967320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A138199 n : ℚ) / 17⌋

end

end A138200.P9272674632358967320

namespace A138200

/-- `floor(A138199(n)/17)` -/
def P9272674632358967320.Spec : Prop :=
  ∀ n, P9272674632358967320.a n = A138200 n

end A138200

/-! ## A138200.P14350374988921285982

`A138199(n)/17*A007318(∑[n])`
-/

namespace A138200.P14350374988921285982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138199 n : ℚ) / 17 * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A138200.P14350374988921285982

namespace A138200

/-- `A138199(n)/17*A007318(∑[n])` -/
def P14350374988921285982.Spec : Prop :=
  ∀ n, P14350374988921285982.a n = (A138200 n : ℚ)

end A138200

/-! ## A138200.P4686818099176570187

`or(A138199(n)/17, char[A000040(n+1)])`
-/

namespace A138200.P4686818099176570187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A138199 n : ℚ) / 17)) ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A138200.P4686818099176570187

namespace A138200

/-- `or(A138199(n)/17, char[A000040(n+1)])` -/
def P4686818099176570187.Spec : Prop :=
  ∀ n, P4686818099176570187.a n = A138200 n

end A138200

/-! ## A138200.P11956232352987162131

`or(A138199(n)/17, char[A014963(n+1)])`
-/

namespace A138200.P11956232352987162131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A138199 n : ℚ) / 17)) ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A138200.P11956232352987162131

namespace A138200

/-- `or(A138199(n)/17, char[A014963(n+1)])` -/
def P11956232352987162131.Spec : Prop :=
  ∀ n, P11956232352987162131.a n = A138200 n

end A138200

/-!
# A138201: A nonsense sequence.

The programs for A138201, there is no canonical definition to state claims against.
-/

/-! ## A138201.P9219448442182543260

`or(round(A259100(n)/A200370(n+1)), A000005(3^A174802(n+2)/3))`
-/

namespace A138201.P9219448442182543260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A259100 n : ℚ) / (A200370 (n + 1) : ℚ))) (A000005 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A174802 (n + 2) : ℤ) / 3)).toNat)

end

end A138201.P9219448442182543260

/-!
# A138202: a(n) = A005875(n)^2.

The programs for A138202, there is no canonical definition to state claims against.
-/

/-! ## A138202.P1008788832147162513

`A005875(n)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A138202.P1008788832147162513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 n ^ 2

end

end A138202.P1008788832147162513

/-! ## A138202.P6258285510955615388

`A213384(n)²`
-/

namespace A138202.P6258285510955615388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213384 n ^ 2

end

end A138202.P6258285510955615388

/-! ## A138202.P12870937648943614912

`A000290(abs(A213384(n)))`
-/

namespace A138202.P12870937648943614912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 |A213384 n|.toNat

end

end A138202.P12870937648943614912

/-! ## A138202.P10467416640653365202

`A002620(2*A005875(n))`
-/

namespace A138202.P10467416640653365202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A005875 n).toNat

end

end A138202.P10467416640653365202

/-! ## A138202.P13854910738834470944

`A008794(2*A005875(n))`
-/

namespace A138202.P13854910738834470944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (2 * A005875 n).toNat

end

end A138202.P13854910738834470944

/-! ## A138202.P15898126667621879678

`A211547(3*A005875(n))`
-/

namespace A138202.P15898126667621879678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211547 (3 * A005875 n).toNat

end

end A138202.P15898126667621879678

/-! ## A138202.P15949069493375185208

`(A084101(n)*A212885(n))²`
-/

namespace A138202.P15949069493375185208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A084101 n * A212885 n) ^ 2

end

end A138202.P15949069493375185208

/-! ## A138202.P11676754874135691749

`(A084101(n)*A246631(n))²`
-/

namespace A138202.P11676754874135691749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A084101 n * A246631 n) ^ 2

end

end A138202.P11676754874135691749

/-! ## A138202.P15009271728805755012

`A005875(n)^abs(A280560(n))`
-/

namespace A138202.P15009271728805755012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005875 n : ℚ) ^ (|A280560 n| : ℤ)

end

end A138202.P15009271728805755012

/-! ## A138202.P7773168844146554913

`((2-A087960(n))*A212885(n))²`
-/

namespace A138202.P7773168844146554913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - A087960 n) * A212885 n) ^ 2

end

end A138202.P7773168844146554913

/-! ## A138202.P4237253531154518934

`((2-A087960(n))*A246631(n))²`
-/

namespace A138202.P4237253531154518934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - A087960 n) * A246631 n) ^ 2

end

end A138202.P4237253531154518934

/-! ## A138202.P17637962264613243398

`A005875(n)^A020639(A074400(n+1))`
-/

namespace A138202.P17637962264613243398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005875 n : ℚ) ^ (A020639 (A074400 (n + 1)).toNat : ℤ)

end

end A138202.P17637962264613243398

/-! ## A138202.P16557552546507290193

`(A387658(n)-A004018(n))*A005875(n)`
-/

namespace A138202.P16557552546507290193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A387658 n - A004018 n) * A005875 n

end

end A138202.P16557552546507290193

/-! ## A138202.P9540213242121088632

`A005875(n)^A000005(A025473(n+1))`
-/

namespace A138202.P9540213242121088632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005875 n : ℚ) ^ (A000005 (A025473 (n + 1)).toNat : ℤ)

end

end A138202.P9540213242121088632

/-! ## A138202.P329666065395102312

`A014455(2*n)²`
-/

namespace A138202.P329666065395102312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014455 (2 * n) ^ 2

end

end A138202.P329666065395102312

/-! ## A138202.P17510124062612251443

`A004015(A064680(n))²`
-/

namespace A138202.P17510124062612251443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004015 (A064680 n).toNat ^ 2

end

end A138202.P17510124062612251443

/-! ## A138202.P1782828048658656334

`A005875(n)*A014455(2*n)`
-/

namespace A138202.P1782828048658656334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 n * A014455 (2 * n)

end

end A138202.P1782828048658656334

/-! ## A138202.P15879545125609176078

`A004015(2*n)²`
-/

namespace A138202.P15879545125609176078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004015 (2 * n) ^ 2

end

end A138202.P15879545125609176078

/-! ## A138202.P6536136449921097761

`A004015(2*n)*A005875(n)`
-/

namespace A138202.P6536136449921097761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004015 (2 * n) * A005875 n

end

end A138202.P6536136449921097761

/-!
# A138203: Sieve: start with the natural numbers; at the n-th step in the sieve remove every A138204(n)-th term from the sequence remaining in the prior step, where A138204 is the complement to this sequence starting with A138204(1)=2.

The programs for A138203, there is no canonical definition to state claims against.
-/

/-! ## A138203.P4871155266347922314

`eq[char[A138204(n+1)], A151933(n)]`
-/

namespace A138203.P4871155266347922314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138204 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A138203.P4871155266347922314

/-! ## A138203.P14762668765125809752

`A382019(A112714(n+1))`
-/

namespace A138203.P14762668765125809752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382019 (A112714 (n + 1)).toNat

end

end A138203.P14762668765125809752

/-! ## A138203.P844424399527291719

`A382019(A309274(n+2))`
-/

namespace A138203.P844424399527291719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382019 (A309274 (n + 2)).toNat

end

end A138203.P844424399527291719

/-! ## A138203.P300506620071752337

`∑[A318048(record[A353589(n)])]`
-/

namespace A138203.P300506620071752337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353589 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318048 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138203.P300506620071752337

/-! ## A138203.P12397881724181469292

`record[A008611(4*A295653(n))]`
-/

namespace A138203.P12397881724181469292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (4 * A295653 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138203.P12397881724181469292

/-!
# A138204: Complement of sieve A138203 such that the n-th step of the sieve removes every a(n)-th term from the sequence remaining in the prior step, starting with a(1)=2.

The programs for A138204, there is no canonical definition to state claims against.
-/

/-! ## A138204.P16136360842126825694

`comp[A138203(n+1)-1]+1`
-/

namespace A138204.P16136360842126825694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138203 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A138204.P16136360842126825694

/-! ## A138204.P4985221063603872595

`eq[char[A138203(n+1)], A151909(n)]`
-/

namespace A138204.P4985221063603872595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138203 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151909 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A138204.P4985221063603872595

/-! ## A138204.P11697464995579723160

`comp[A138203(n+1)*A194285(n+1)]`
-/

namespace A138204.P11697464995579723160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138203 (n + 1) * A194285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138204.P11697464995579723160

/-! ## A138204.P1848501285271664993

`comp[A138203(n+1)%A267124(n+1)]`
-/

namespace A138204.P1848501285271664993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138203 (n + 1)) (A267124 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138204.P1848501285271664993

/-! ## A138204.P9812849113253762195

`eq[char[A138203(n+1)], A063667(2*n)]`
-/

namespace A138204.P9812849113253762195
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138203 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063667 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A138204.P9812849113253762195

/-! ## A138204.P8677782345604871716

`record[A233583(n+1)-char[A138203(n+1)]]`
-/

namespace A138204.P8677782345604871716
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138203 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138204.P8677782345604871716

/-! ## A138204.P13658613308161619544

`eq[char[A138203(n+1)], A151933(n)]`
-/

namespace A138204.P13658613308161619544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138203 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A138204.P13658613308161619544

/-!
# A138210: G.f.: A(x) = 1 + x*(1 + x*(1 + x*(...(1 + x*(...)^(-2n) )...)^-6)^-4)^-2.

The programs for A138210, there is no canonical definition to state claims against.
-/

/-! ## A138210.P14294754156073979086

`A099254(∑[lcm(n, (-n)^n)]-A140200(n))`
-/

namespace A138210.P14294754156073979086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((-(n : ℤ)) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099254 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A140200 n).toNat

end

end A138210.P14294754156073979086

/-! ## A138210.P3170313745033393087

`A076118(A062970(n)-A086246(n))`
-/

namespace A138210.P3170313745033393087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076118 (A062970 n - A086246 n).toNat

end

end A138210.P3170313745033393087

/-!
# A138211: G.f.: A(x) = 1 + x*(1 + x*(1 + x*(...(1 + x*(...)^(2n-1))...)^5)^3)^1.

The programs for A138211, there is no canonical definition to state claims against.
-/

/-! ## A138211.P11832348685651871878

`A323903(C(∑[n], n))`
-/

namespace A138211.P11832348685651871878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323903 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) n)

end

end A138211.P11832348685651871878

/-! ## A138211.P17840321706850079050

`∑[A243148(((n+5)*(n+1)*n²/12)²)]`
-/

namespace A138211.P17840321706850079050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (SequenceMachineLib.roundAway ((((n + 5) * ((n + 1) * n ^ 2) : ℚ) / 12) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138211.P17840321706850079050

/-!
# A138212: G.f.: A(x) = 1 + x*(1 + x*(1 + x*(...(1 + x*(...)^(2n))...)^6)^4)^2.

The programs for A138212, there is no canonical definition to state claims against.
-/

/-! ## A138212.P11048715000380233165

`Δ[A033865(a(n-1)+3*a(n-2))]+1` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=10`
-/

namespace A138212.P11048715000380233165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 10] fun n f1 =>
  A033865 (f1 (n - 1) + 3 * f1 (n - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A138212.P11048715000380233165

/-! ## A138212.P3825564316284633228

`A004001(A305819(n))`
-/

namespace A138212.P3825564316284633228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A305819 n).toNat

end

end A138212.P3825564316284633228

/-!
# A138213: G.f.: A(x) = 1 + x*(1 + x*(1 + x*(...(1 + x*(...)^(3n))...)^9)^6)^3.

The programs for A138213, there is no canonical definition to state claims against.
-/

/-! ## A138213.P10478502671373690631

`xor(A054900(A258620(n+1)), A234303(n))`
-/

namespace A138213.P10478502671373690631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A054900 (A258620 (n + 1)).toNat) (A234303 n)

end

end A138213.P10478502671373690631

/-!
# A138214: G.f.: A(x) = 1 + x*(1 + x*(1 + x*(...(1 + x*(...)^(4n))...)^12)^8)^4.

The programs for A138214, there is no canonical definition to state claims against.
-/

/-! ## A138214.P3594107953194081828

`A275119(n!²)`
-/

namespace A138214.P3594107953194081828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275119 (Nat.factorial n ^ 2)

end

end A138214.P3594107953194081828

/-!
# A138215: G.f.: A(x) = 1 + x*(1 + x*(1 + x*(...(1 + x*(...)^(5n))...)^15)^10)^5.

The programs for A138215, there is no canonical definition to state claims against.
-/

/-! ## A138215.P4456338445930945900

`5*(n-1)*A141204(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A138215.P4456338445930945900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  5 * (((n : ℤ) - 1) * A141204 (a (n - 1)).toNat)

end

end A138215.P4456338445930945900

/-!
# A138216: G.f.: A(x) = 1 + x*(1 + x*(1 + x*(...(1 + x*(...)^(6n))...)^18)^12)^6.

The programs for A138216, there is no canonical definition to state claims against.
-/

/-! ## A138216.P1578394676741377201

`A004449(A239749(n)+8)`
-/

namespace A138216.P1578394676741377201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004449 (A239749 n + 8).toNat

end

end A138216.P1578394676741377201

/-!
# A138217: Odd numbers n for which A137576((n-1)/2)-1 is a multiple of A000010(n).

The programs for A138217, there is no canonical definition to state claims against.
-/

/-! ## A138217.P14294583815594731928

`eq[n%2, A159631(A143862(n))]`
-/

namespace A138217.P14294583815594731928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159631 (A143862 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138217.P14294583815594731928

/-! ## A138217.P967676257123321977

`eq[A000035(n), A159631(A143862(n))]`
-/

namespace A138217.P967676257123321977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159631 (A143862 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138217.P967676257123321977

/-! ## A138217.P11490258940117425648

`eq[A010146(n), A159631(A143862(n))]`
-/

namespace A138217.P11490258940117425648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010146 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159631 (A143862 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138217.P11490258940117425648

/-! ## A138217.P8267237580292069577

`eq[A009531(n²), A159631(A143862(n))]`
-/

namespace A138217.P8267237580292069577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159631 (A143862 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138217.P8267237580292069577

/-! ## A138217.P17046335374726959606

`eq[A159631(A143862(n))+1, A000034(n)]`
-/

namespace A138217.P17046335374726959606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159631 (A143862 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138217.P17046335374726959606

/-!
# A138218: Numbers k such that 180k^2 + 1 is prime.

The programs for A138218, there is no canonical definition to state claims against.
-/

/-! ## A138218.P7272531562967505312

`sqrt((A137530(n+1)-1)/180)`
-/

namespace A138218.P7272531562967505312
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A137530 (n + 1) - 1 : ℚ) / 180 : ℝ)

end

end A138218.P7272531562967505312

/-! ## A138218.P9803228604231187189

`A111147(n+1)/6`
-/

namespace A138218.P9803228604231187189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111147 (n + 1) : ℚ) / 6

end

end A138218.P9803228604231187189

/-! ## A138218.P2722705958639667964

`A004525(A111147(abs(xor(n, -1)))/3)`
-/

namespace A138218.P2722705958639667964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.roundAway ((A111147 |Int.xor (n : ℤ) (-1)|.toNat : ℚ) / 3)).toNat

end

end A138218.P2722705958639667964

/-! ## A138218.P6107955611824787585

`A004526(A111147(abs(xor(n, -1)))/3)`
-/

namespace A138218.P6107955611824787585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway ((A111147 |Int.xor (n : ℤ) (-1)|.toNat : ℚ) / 3)).toNat

end

end A138218.P6107955611824787585

/-! ## A138218.P17672181186140304503

`A008615(A111147(n+1))`
-/

namespace A138218.P17672181186140304503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A111147 (n + 1)).toNat

end

end A138218.P17672181186140304503

/-! ## A138218.P16164126612635468357

`A154958(A111147(n+1)-1)`
-/

namespace A138218.P16164126612635468357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154958 (A111147 (n + 1) - 1).toNat

end

end A138218.P16164126612635468357

/-! ## A138218.P12013767505521679859

`A078898(A111147(n+1)-3)`
-/

namespace A138218.P12013767505521679859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A111147 (n + 1) - 3).toNat

end

end A138218.P12013767505521679859

/-!
# A138219: Integers related to the volume k(n) of a unit hypersphere in n dimensions.

The programs for A138219, the canonical program `A138219.P16765504810279522428` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138219 has offset 0).

The definition of A138219 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138219.P16765504810279522428

`a(n-2)+gcd(a((n+1)%2), a(n-2))` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A138219

/-- `a(n-2)+gcd(a((n+1)%2), a(n-2))` -/
def P16765504810279522428.Spec : Prop :=
  ∀ n, (P16765504810279522428.a n : ℤ) = A138219 n

theorem P16765504810279522428.correct : P16765504810279522428.Spec := by
  intro n
  simp only [A138219]

end A138219

/-! ## A138219.P13857100943321690216

`2*A390532(n)`
-/

namespace A138219.P13857100943321690216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A390532 n

end

end A138219.P13857100943321690216

namespace A138219

/-- `2*A390532(n)` -/
def P13857100943321690216.Spec : Prop :=
  ∀ n, P13857100943321690216.a n = A138219 n

end A138219

/-! ## A138219.P14076567143337110973

`A077957(n+1)+2*n-lcm(2, n)`
-/

namespace A138219.P14076567143337110973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (n + 1) + (2 * n : ℤ) - (Nat.lcm 2 n : ℤ)

end

end A138219.P14076567143337110973

namespace A138219

/-- `A077957(n+1)+2*n-lcm(2, n)` -/
def P14076567143337110973.Spec : Prop :=
  ∀ n, P14076567143337110973.a n = A138219 n

end A138219

/-! ## A138219.P3247884506246810148

`gcd(n*(n+1)%2, A077966(n+1))`
-/

namespace A138219.P3247884506246810148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n * ((n + 1) % 2) : ℕ) : ℤ) (A077966 (n + 1))

end

end A138219.P3247884506246810148

namespace A138219

/-- `gcd(n*(n+1)%2, A077966(n+1))` -/
def P3247884506246810148.Spec : Prop :=
  ∀ n, (P3247884506246810148.a n : ℤ) = A138219 n

end A138219

/-! ## A138219.P17173819963313333780

`lcm(A009531(n), A072345(n))`
-/

namespace A138219.P17173819963313333780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A009531 n) (A072345 n)

end

end A138219.P17173819963313333780

namespace A138219

/-- `lcm(A009531(n), A072345(n))` -/
def P17173819963313333780.Spec : Prop :=
  ∀ n, (P17173819963313333780.a n : ℤ) = A138219 n

end A138219

/-! ## A138219.P11935551185199662093

`xor(A072345(n), A193356(n+1))`
-/

namespace A138219.P11935551185199662093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A072345 n) (A193356 (n + 1))

end

end A138219.P11935551185199662093

namespace A138219

/-- `xor(A072345(n), A193356(n+1))` -/
def P11935551185199662093.Spec : Prop :=
  ∀ n, P11935551185199662093.a n = A138219 n

end A138219

/-! ## A138219.P6965426955361684869

`A077957(n+1)+A022998(n)-n`
-/

namespace A138219.P6965426955361684869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (n + 1) + (A022998 n - (n : ℤ))

end

end A138219.P6965426955361684869

namespace A138219

/-- `A077957(n+1)+A022998(n)-n` -/
def P6965426955361684869.Spec : Prop :=
  ∀ n, P6965426955361684869.a n = A138219 n

end A138219

/-! ## A138219.P330520885110302762

`A077957(n+1)+n%Δ[A059029(n)]`
-/

namespace A138219.P330520885110302762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (n + 1) + Int.tmod (n : ℤ) (f1 (n + 1) - f1 n)

end

end A138219.P330520885110302762

namespace A138219

/-- `A077957(n+1)+n%Δ[A059029(n)]` -/
def P330520885110302762.Spec : Prop :=
  ∀ n, P330520885110302762.a n = A138219 n

end A138219

/-! ## A138219.P3804803779234595874

`A077957(n+1)+A093178(n+1)-1`
-/

namespace A138219.P3804803779234595874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (n + 1) + (A093178 (n + 1) - 1)

end

end A138219.P3804803779234595874

namespace A138219

/-- `A077957(n+1)+A093178(n+1)-1` -/
def P3804803779234595874.Spec : Prop :=
  ∀ n, P3804803779234595874.a n = A138219 n

end A138219

/-! ## A138219.P1215703774966526138

`A052552(n+1)+A022998(n)-(n+1)`
-/

namespace A138219.P1215703774966526138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 (n + 1) + (A022998 n - (n + 1 : ℤ))

end

end A138219.P1215703774966526138

namespace A138219

/-- `A052552(n+1)+A022998(n)-(n+1)` -/
def P1215703774966526138.Spec : Prop :=
  ∀ n, P1215703774966526138.a n = A138219 n

end A138219

/-! ## A138219.P11554896633955146432

`A077957(n+1)+n*A000035(n+1)`
-/

namespace A138219.P11554896633955146432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (n + 1) + (n : ℤ) * A000035 (n + 1)

end

end A138219.P11554896633955146432

namespace A138219

/-- `A077957(n+1)+n*A000035(n+1)` -/
def P11554896633955146432.Spec : Prop :=
  ∀ n, P11554896633955146432.a n = A138219 n

end A138219

/-! ## A138219.P16564269513300822950

`A077957(n+1)+n-Δ[A004526(n)²]`
-/

namespace A138219.P16564269513300822950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (n + 1) + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A138219.P16564269513300822950

namespace A138219

/-- `A077957(n+1)+n-Δ[A004526(n)²]` -/
def P16564269513300822950.Spec : Prop :=
  ∀ n, P16564269513300822950.a n = A138219 n

end A138219

/-! ## A138219.P18417088493053648755

`A124625(n+1)*A135530(A124625(n))`
-/

namespace A138219.P18417088493053648755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 (n + 1) * A135530 (A124625 n).toNat

end

end A138219.P18417088493053648755

namespace A138219

/-- `A124625(n+1)*A135530(A124625(n))` -/
def P18417088493053648755.Spec : Prop :=
  ∀ n, P18417088493053648755.a n = A138219 n

end A138219

/-! ## A138219.P2134452204300731588

`and(A038608(n), A097110(n))`
-/

namespace A138219.P2134452204300731588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038608 n) (A097110 n)

end

end A138219.P2134452204300731588

namespace A138219

/-- `and(A038608(n), A097110(n))` -/
def P2134452204300731588.Spec : Prop :=
  ∀ n, P2134452204300731588.a n = A138219 n

end A138219

/-! ## A138219.P1671170103303746218

`or(n, A279879(n+1))-A288663(n+1)`
-/

namespace A138219.P1671170103303746218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A279879 (n + 1)) - A288663 (n + 1)

end

end A138219.P1671170103303746218

namespace A138219

/-- `or(n, A279879(n+1))-A288663(n+1)` -/
def P1671170103303746218.Spec : Prop :=
  ∀ n, P1671170103303746218.a n = A138219 n

end A138219

/-!
# A138220: Numbers k such that 900*k^2 + 1 is prime.

The programs for A138220, there is no canonical definition to state claims against.
-/

/-! ## A138220.P4028124073047751505

`lt[A121594(n+1), A256970(A008706(3*n))]`
-/

namespace A138220.P4028124073047751505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256970 (A008706 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A138220.P4028124073047751505

/-! ## A138220.P14727186179131919586

`lt[A154617(n+1), A256970(A008706(3*n))]`
-/

namespace A138220.P14727186179131919586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256970 (A008706 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A138220.P14727186179131919586

/-! ## A138220.P10844251647183993866

`lt[A243451(n+1), A256970(A008706(3*n))]`
-/

namespace A138220.P10844251647183993866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256970 (A008706 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A138220.P10844251647183993866

/-! ## A138220.P3482899856536845649

`lt[A017461(3*n), A256970(A008706(3*n))]`
-/

namespace A138220.P3482899856536845649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017461 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256970 (A008706 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A138220.P3482899856536845649

/-! ## A138220.P11948219221643703699

`lt[A178339(n+5), A256970(A008706(3*n))]`
-/

namespace A138220.P11948219221643703699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178339 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256970 (A008706 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A138220.P11948219221643703699

/-! ## A138220.P1191613708262419731

`lt[A017449(3*n+2), A256970(A008706(3*n))]`
-/

namespace A138220.P1191613708262419731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017449 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256970 (A008706 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A138220.P1191613708262419731

/-! ## A138220.P6867837187411669623

`eq[1, A053000(30*n)]`
-/

namespace A138220.P6867837187411669623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (30 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138220.P6867837187411669623

/-! ## A138220.P947631893806467345

`eq[2, A278162(30*n)]`
-/

namespace A138220.P947631893806467345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278162 (30 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138220.P947631893806467345

/-! ## A138220.P1585369056784185158

`lt[A000040(A053000(30*n)+1), 4]`
-/

namespace A138220.P1585369056784185158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A053000 (30 * n) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A138220.P1585369056784185158

/-! ## A138220.P3047424336290388655

`lt[A053000(30*n), A000032(C(n, n²))]`
-/

namespace A138220.P3047424336290388655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (30 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose n (n ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A138220.P3047424336290388655

/-!
# A138221: a(n) = the smallest divisor of n that is >= the number of positive divisors of n.

The programs for A138221, there is no canonical definition to state claims against.
-/

/-! ## A138221.P15590716011894801368

`A345931(A007947(n+1)^A338094(n+1))`
-/

namespace A138221.P15590716011894801368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345931 (SequenceMachineLib.roundAway ((A007947 (n + 1) : ℚ) ^ (A338094 (n + 1) : ℤ))).toNat

end

end A138221.P15590716011894801368

/-! ## A138221.P8714089314311072691

`A345931(A088835(n+1)^A338094(n+1))`
-/

namespace A138221.P8714089314311072691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345931 (SequenceMachineLib.roundAway ((A088835 (n + 1) : ℚ) ^ (A338094 (n + 1) : ℤ))).toNat

end

end A138221.P8714089314311072691

/-!
# A138222: a(n) = the largest divisor of n that is <= the number of positive divisors of n.

The programs for A138222, the canonical program `A138222.P16088204697107012078` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138222 has offset 1).

The definition of A138222 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138222.P16088204697107012078

`A070939(and(A034729(n+1), A100587(n+1)))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A138222

/-- `A070939(and(A034729(n+1), A100587(n+1)))` -/
def P16088204697107012078.Spec : Prop :=
  ∀ n, P16088204697107012078.a n = A138222 (n + 1)

theorem P16088204697107012078.correct : P16088204697107012078.Spec := by
  intro n
  simp only [A138222, Nat.add_sub_cancel]

end A138222

/-! ## A138222.P12213124479900719083

`A138224(n+1)%A107709(A007948(n+1))`
-/

namespace A138222.P12213124479900719083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138224 (n + 1)) (A107709 (A007948 (n + 1)).toNat)

end

end A138222.P12213124479900719083

namespace A138222

/-- `A138224(n+1)%A107709(A007948(n+1))` -/
def P12213124479900719083.Spec : Prop :=
  ∀ n, P12213124479900719083.a n = A138222 (n + 1)

end A138222

/-! ## A138222.P11700662857558149488

`A138224(n+1)%A107709(n+1)`
-/

namespace A138222.P11700662857558149488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138224 (n + 1)) (A107709 (n + 1))

end

end A138222.P11700662857558149488

namespace A138222

/-- `A138224(n+1)%A107709(n+1)` -/
def P11700662857558149488.Spec : Prop :=
  ∀ n, P11700662857558149488.a n = A138222 (n + 1)

end A138222

/-! ## A138222.P11599389587390925486

`A086471(n+1)/A086571(A086471(n+1))`
-/

namespace A138222.P11599389587390925486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086471 (n + 1) : ℚ) / (A086571 (A086471 (n + 1)).toNat : ℚ)

end

end A138222.P11599389587390925486

namespace A138222

/-- `A086471(n+1)/A086571(A086471(n+1))` -/
def P11599389587390925486.Spec : Prop :=
  ∀ n, P11599389587390925486.a n = (A138222 (n + 1) : ℚ)

end A138222

/-! ## A138222.P2926340968006335844

`A138234(A138224(n+1))%A138252(A138263(n+1))`
-/

namespace A138222.P2926340968006335844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138234 (A138224 (n + 1)).toNat) (A138252 (A138263 (n + 1)).toNat)

end

end A138222.P2926340968006335844

namespace A138222

/-- `A138234(A138224(n+1))%A138252(A138263(n+1))` -/
def P2926340968006335844.Spec : Prop :=
  ∀ n, P2926340968006335844.a n = A138222 (n + 1)

end A138222

/-!
# A138223: a(n) = the nearest divisor of n to the number of positive divisors of n. In case of tie, round up.

The programs for A138223, there is no canonical definition to state claims against.
-/

/-! ## A138223.P12747707933437864592

`(A086957(n+1)/(n+1))%A097824(n+4)`
-/

namespace A138223.P12747707933437864592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A086957 (n + 1) : ℚ) / (n + 1 : ℚ))) (A097824 (n + 4))

end

end A138223.P12747707933437864592

/-! ## A138223.P5629146514133235508

`A086957(n+1)/A086961(A086962(A086963(n+1)))`
-/

namespace A138223.P5629146514133235508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086957 (n + 1) : ℚ) / (A086961 (A086962 (A086963 (n + 1)).toNat).toNat : ℚ)

end

end A138223.P5629146514133235508

/-! ## A138223.P8364678822555368797

`A086957(n+1)/A086710(A002252(n+1))`
-/

namespace A138223.P8364678822555368797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086957 (n + 1) : ℚ) / (A086710 (A002252 (n + 1)).toNat : ℚ)

end

end A138223.P8364678822555368797

/-! ## A138223.P8223684754106413

`A086957(n+1)/A120236(A120235(n+1))`
-/

namespace A138223.P8223684754106413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086957 (n + 1) : ℚ) / (A120236 (A120235 (n + 1)).toNat : ℚ)

end

end A138223.P8223684754106413

/-! ## A138223.P13059656447939537161

`A086957(n+1)/A055396(A001248(n+1))`
-/

namespace A138223.P13059656447939537161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086957 (n + 1) : ℚ) / (A055396 (A001248 (n + 1)).toNat : ℚ)

end

end A138223.P13059656447939537161

/-!
# A138224: a(n) is the divisor of n that is nearest to tau(n), the number of divisors of n. In case of a tie, take the smaller of those two divisors.

The programs for A138224, there is no canonical definition to state claims against.
-/

/-! ## A138224.P842760831338949935

`gcd(n+1, A128998(A269619(n+1)))`
-/

namespace A138224.P842760831338949935
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A128998 (A269619 (n + 1)).toNat)

end

end A138224.P842760831338949935

/-! ## A138224.P15433443353695331650

`gcd(A001222(A056040(n)), A322629(n))`
-/

namespace A138224.P15433443353695331650
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (A056040 n).toNat) (A322629 (n + 100))

end

end A138224.P15433443353695331650

/-! ## A138224.P124964514199286007

`gcd(A128998(A269619(n+1)), A348553(n))`
-/

namespace A138224.P124964514199286007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A128998 (A269619 (n + 1)).toNat) (A348553 n)

end

end A138224.P124964514199286007

/-! ## A138224.P5976446668621580734

`A138223(gcd(A097212(n+1), A323857(n+1)))`
-/

namespace A138224.P5976446668621580734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138223 (Int.gcd (A097212 (n + 1)) (A323857 (n + 1)))

end

end A138224.P5976446668621580734

/-! ## A138224.P4175790939348593817

`A138222((n+1)^A288003(n+1))`
-/

namespace A138224.P4175790939348593817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A288003 (n + 1) : ℤ))).toNat

end

end A138224.P4175790939348593817

/-!
# A138225: Number of pairs (p,q) of primes with p < q < prime(n), p + q > prime(n), q + prime(n) > p and prime(n) + p > q.

The programs for A138225, there is no canonical definition to state claims against.
-/

/-! ## A138225.P4647182601079600226

`Δ[A138226(round(acot(n)+n))]`
-/

namespace A138225.P4647182601079600226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138226 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138225.P4647182601079600226

/-! ## A138225.P3283223058434984128

`Δ[A138226(abs(1-n)+1)]`
-/

namespace A138225.P3283223058434984128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138226 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138225.P3283223058434984128

/-! ## A138225.P3960458384290352364

`A138226(n+1)-A138226(round(acot(n)+n))`
-/

namespace A138225.P3960458384290352364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138226 (n + 1) - A138226 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A138225.P3960458384290352364

/-! ## A138225.P8566523323045032652

`A138226(n+1)-A138226(round(sqrt(n²+1)))`
-/

namespace A138225.P8566523323045032652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138226 (n + 1) - A138226 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A138225.P8566523323045032652

/-!
# A138226: Number of triples (p,q,r) of primes with pr, q+r>p and r+p>q.

The programs for A138226, there is no canonical definition to state claims against.
-/

/-! ## A138226.P6639253910225146957

`∑[A138225(n+1)]`
-/

namespace A138226.P6639253910225146957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138226.P6639253910225146957

/-! ## A138226.P6672660128288560854

`∑[A003434(A138802(n+1))]`
-/

namespace A138226.P6672660128288560854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (A138802 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138226.P6672660128288560854

/-! ## A138226.P13292841795924844902

`∑[∑[A219052(A008792(2*(n+1)))]]`
-/

namespace A138226.P13292841795924844902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219052 (A008792 (2 * (n + 1))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138226.P13292841795924844902

/-!
# A138229: Expansion of (1-x)/(1-2x+6x^2).

The programs for A138229, the canonical program `A138229.P16015630380948494032` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138229 has offset 0).

The definition of A138229 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-2x+6x^2))` (program `A138229.P16015630380948494032`, by `A138229.P16015630380948494032.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A138229.P16015630380948494032

`ogf((1-x)/(1-2x+6x^2))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A138229

/-- `ogf((1-x)/(1-2x+6x^2))` -/
def P16015630380948494032.Spec : Prop :=
  ∀ n, P16015630380948494032.a n = A138229 n

theorem P16015630380948494032.correct : P16015630380948494032.Spec := by
  intro n
  simp only [A138229]

end A138229

/-! ## A138229.P15498636692554185058

`2*a(n-1)-6*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A138229.P15498636692554185058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * a (n - 1) - 6 * a (n - 2)

end

end A138229.P15498636692554185058

namespace A138229

/-- `2*a(n-1)-6*a(n-2)` -/
def P15498636692554185058.Spec : Prop :=
  ∀ n, P15498636692554185058.a n = A138229 n

end A138229

/-! ## A138229.P4310910120723274278

`Δ[A088139(n)]`
-/

namespace A138229.P4310910120723274278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088139 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138229.P4310910120723274278

namespace A138229

/-- `Δ[A088139(n)]` -/
def P4310910120723274278.Spec : Prop :=
  ∀ n, P4310910120723274278.a n = A138229 n

end A138229

/-! ## A138229.P8278999899112123117

`A088139(n+1)-A088139(n)`
-/

namespace A138229.P8278999899112123117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088139 (n + 1) - A088139 n

end

end A138229.P8278999899112123117

namespace A138229

/-- `A088139(n+1)-A088139(n)` -/
def P8278999899112123117.Spec : Prop :=
  ∀ n, P8278999899112123117.a n = A138229 n

end A138229

/-!
# A138230: Expansion of (1-x)/(1 - 2*x + 4*x^2).

The programs for A138230, the canonical program `A138230.P16312591151011006764` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138230 has offset 0).

The definition of A138230 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-2x+4x^2))` (program `A138230.P16312591151011006764`, by `A138230.P16312591151011006764.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A138230.P16312591151011006764

`ogf((1-x)/(1-2x+4x^2))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A138230

/-- `ogf((1-x)/(1-2x+4x^2))` -/
def P16312591151011006764.Spec : Prop :=
  ∀ n, P16312591151011006764.a n = A138230 n

theorem P16312591151011006764.correct : P16312591151011006764.Spec := by
  intro n
  simp only [A138230]

end A138230

/-! ## A138230.P6664432030391895127

`2*a(n-1)-4*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A138230.P6664432030391895127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * a (n - 1) - 4 * a (n - 2)

end

end A138230.P6664432030391895127

namespace A138230

/-- `2*a(n-1)-4*a(n-2)` -/
def P6664432030391895127.Spec : Prop :=
  ∀ n, P6664432030391895127.a n = A138230 n

end A138230

/-! ## A138230.P7330510924030394936

`2^(n-1)*A087204(n)`
-/

namespace A138230.P7330510924030394936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A087204 n : ℚ)

end

end A138230.P7330510924030394936

namespace A138230

/-- `2^(n-1)*A087204(n)` -/
def P7330510924030394936.Spec : Prop :=
  ∀ n, P7330510924030394936.a n = (A138230 n : ℚ)

end A138230

/-! ## A138230.P7918012094381936462

`A088138(n+1)-A088138(n)`
-/

namespace A138230.P7918012094381936462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088138 (n + 1) - A088138 n

end

end A138230.P7918012094381936462

namespace A138230

/-- `A088138(n+1)-A088138(n)` -/
def P7918012094381936462.Spec : Prop :=
  ∀ n, P7918012094381936462.a n = A138230 n

end A138230

/-! ## A138230.P1759760351784316105

`(-1)^n*A104537(n)`
-/

namespace A138230.P1759760351784316105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A104537 n

end

end A138230.P1759760351784316105

namespace A138230

/-- `(-1)^n*A104537(n)` -/
def P1759760351784316105.Spec : Prop :=
  ∀ n, P1759760351784316105.a n = A138230 n

end A138230

/-! ## A138230.P7564956846702539393

`2^n*cos(π*n/3)`
-/

namespace A138230.P7564956846702539393
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℝ) * Real.cos (Real.pi * ((n : ℚ) / 3 : ℝ))

end

end A138230.P7564956846702539393

namespace A138230

/-- `2^n*cos(π*n/3)` -/
def P7564956846702539393.Spec : Prop :=
  ∀ n, P7564956846702539393.a n = (A138230 n : ℝ)

end A138230

/-! ## A138230.P5793482984080802227

`∏[2-4/a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A138230.P5793482984080802227
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 - 4 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A138230.P5793482984080802227

namespace A138230

/-- `∏[2-4/a(n-1)]` -/
def P5793482984080802227.Spec : Prop :=
  ∀ n, P5793482984080802227.a n = (A138230 n : ℚ)

end A138230

/-! ## A138230.P13780782489828947715

`Δ[-8*a(n-3)]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A138230.P13780782489828947715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  -(8 * f1 (n - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138230.P13780782489828947715

namespace A138230

/-- `Δ[-8*a(n-3)]` -/
def P13780782489828947715.Spec : Prop :=
  ∀ n, P13780782489828947715.a n = A138230 n

end A138230

/-! ## A138230.P12728646185510916573

`(-2)^∑[floor(a(n-3))]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A138230.P12728646185510916573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A138230.P12728646185510916573

namespace A138230

/-- `(-2)^∑[floor(a(n-3))]` -/
def P12728646185510916573.Spec : Prop :=
  ∀ n, P12728646185510916573.a n = A138230 n

end A138230

/-! ## A138230.P840978994063683633

`(4-3*n%3)*a(n-1)` with `a(0)=1`
-/

namespace A138230.P840978994063683633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (4 - ((3 * (n % 3) : ℕ) : ℤ)) * a (n - 1)

end

end A138230.P840978994063683633

namespace A138230

/-- `(4-3*n%3)*a(n-1)` -/
def P840978994063683633.Spec : Prop :=
  ∀ n, P840978994063683633.a n = A138230 n

end A138230

/-! ## A138230.P16147169175300334539

`(-2)^∑[a(n-3)^a(n-1)]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A138230.P16147169175300334539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 2] fun n f1 =>
  f1 (n - 3) ^ f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A138230.P16147169175300334539

namespace A138230

/-- `(-2)^∑[a(n-3)^a(n-1)]` -/
def P16147169175300334539.Spec : Prop :=
  ∀ n, P16147169175300334539.a n = A138230 n

end A138230

/-! ## A138230.P5499697839077093023

`(-2)^floor(n-a(n-2)/a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A138230.P5499697839077093023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (-2 : ℚ) ^ (⌊(n : ℚ) - a (n - 2) / a (n - 1)⌋ : ℤ)

end

end A138230.P5499697839077093023

namespace A138230

/-- `(-2)^floor(n-a(n-2)/a(n-1))` -/
def P5499697839077093023.Spec : Prop :=
  ∀ n, P5499697839077093023.a n = (A138230 n : ℚ)

end A138230

/-! ## A138230.P3924960296640472071

`Δ[A088138(n)]`
-/

namespace A138230.P3924960296640472071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138230.P3924960296640472071

namespace A138230

/-- `Δ[A088138(n)]` -/
def P3924960296640472071.Spec : Prop :=
  ∀ n, P3924960296640472071.a n = A138230 n

end A138230

/-! ## A138230.P14538332470693689308

`A128018((n-1)%(n+1))`
-/

namespace A138230.P14538332470693689308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128018 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A138230.P14538332470693689308

namespace A138230

/-- `A128018((n-1)%(n+1))` -/
def P14538332470693689308.Spec : Prop :=
  ∀ n, P14538332470693689308.a n = A138230 n

end A138230

/-! ## A138230.P5596526952594288603

`Δ[2^(n-1)*A128834(n)]`
-/

namespace A138230.P5596526952594288603
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A128834 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138230.P5596526952594288603

namespace A138230

/-- `Δ[2^(n-1)*A128834(n)]` -/
def P5596526952594288603.Spec : Prop :=
  ∀ n, P5596526952594288603.a n = (A138230 n : ℚ)

end A138230

/-! ## A138230.P14900115833141295671

`2^(n-1)*A057079(n+1)`
-/

namespace A138230.P14900115833141295671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A057079 (n + 1) : ℚ)

end

end A138230.P14900115833141295671

namespace A138230

/-- `2^(n-1)*A057079(n+1)` -/
def P14900115833141295671.Spec : Prop :=
  ∀ n, P14900115833141295671.a n = (A138230 n : ℚ)

end A138230

/-! ## A138230.P72073270527427172

`2^(n-1)*A122876(n+2)`
-/

namespace A138230.P72073270527427172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A122876 (n + 2) : ℚ)

end

end A138230.P72073270527427172

namespace A138230

/-- `2^(n-1)*A122876(n+2)` -/
def P72073270527427172.Spec : Prop :=
  ∀ n, P72073270527427172.a n = (A138230 n : ℚ)

end A138230

/-! ## A138230.P12119942093438783638

`a(n-1)*A132708(2*n)` with `a(0)=1`
-/

namespace A138230.P12119942093438783638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A132708 (2 * n)

end

end A138230.P12119942093438783638

namespace A138230

/-- `a(n-1)*A132708(2*n)` -/
def P12119942093438783638.Spec : Prop :=
  ∀ n, P12119942093438783638.a n = A138230 n

end A138230

/-! ## A138230.P15172101870165701849

`A123344(A147534(n+1))`
-/

namespace A138230.P15172101870165701849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123344 (A147534 (n + 1)).toNat

end

end A138230.P15172101870165701849

namespace A138230

/-- `A123344(A147534(n+1))` -/
def P15172101870165701849.Spec : Prop :=
  ∀ n, P15172101870165701849.a n = A138230 n

end A138230

/-!
# A138231: A009545 alternated with its first differences.

The programs for A138231, the canonical program `A138231.P7497834536378262550` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138231 has offset 0).

The definition of A138231 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138231.P7497834536378262550

`2*a(n-2)-2*a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A138231

/-- `2*a(n-2)-2*a(n-4)` -/
def P7497834536378262550.Spec : Prop :=
  ∀ n, P7497834536378262550.a n = A138231 n

theorem P7497834536378262550.correct : P7497834536378262550.Spec := by
  intro n
  simp only [A138231]

end A138231

/-! ## A138231.P6381291625006691471

`ogf((x+x^2-x^3)/(1-2x^2+2x^4))`
-/

namespace A138231.P6381291625006691471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, -1] [1, 0, -2, 0, 2] n

end

end A138231.P6381291625006691471

namespace A138231

/-- `ogf((x+x^2-x^3)/(1-2x^2+2x^4))` -/
def P6381291625006691471.Spec : Prop :=
  ∀ n, P6381291625006691471.a n = A138231 n

end A138231

/-! ## A138231.P14452666773753294107

`2*(a(n-2)-a(n-4))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A138231.P14452666773753294107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1] fun n a =>
  2 * (a (n - 2) - a (n - 4))

end

end A138231.P14452666773753294107

namespace A138231

/-- `2*(a(n-2)-a(n-4))` -/
def P14452666773753294107.Spec : Prop :=
  ∀ n, P14452666773753294107.a n = A138231 n

theorem P14452666773753294107.correct : P14452666773753294107.Spec := by
  intro n
  simp only [A138231, Nat.add_sub_cancel, A138231.P14452666773753294107.a, A138231.P7497834536378262550.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A138231

/-! ## A138231.P16117568234865092816

`a(n-2)+a(n-2)-(a(n-4)+a(n-4))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A138231.P16117568234865092816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1] fun n a =>
  a (n - 2) + (a (n - 2) - (a (n - 4) + a (n - 4)))

end

end A138231.P16117568234865092816

namespace A138231

/-- `a(n-2)+a(n-2)-(a(n-4)+a(n-4))` -/
def P16117568234865092816.Spec : Prop :=
  ∀ n, P16117568234865092816.a n = A138231 n

theorem P16117568234865092816.correct : P16117568234865092816.Spec := by
  intro n
  simp only [A138231, Nat.add_sub_cancel, A138231.P16117568234865092816.a, A138231.P7497834536378262550.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A138231

/-! ## A138231.P9897220229140502779

`A009545(A030451(n))/A000034(n)`
-/

namespace A138231.P9897220229140502779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009545 (A030451 n).toNat : ℚ) / (A000034 n : ℚ)

end

end A138231.P9897220229140502779

namespace A138231

/-- `A009545(A030451(n))/A000034(n)` -/
def P9897220229140502779.Spec : Prop :=
  ∀ n, P9897220229140502779.a n = (A138231 n : ℚ)

end A138231

/-! ## A138231.P17544865388220006694

`∑[A138232(abs(1-n))]`
-/

namespace A138231.P17544865388220006694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138232 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138231.P17544865388220006694

namespace A138231

/-- `∑[A138232(abs(1-n))]` -/
def P17544865388220006694.Spec : Prop :=
  ∀ n, P17544865388220006694.a n = A138231 n

end A138231

/-! ## A138231.P17959378233220885590

`A138232(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A138231.P17959378233220885590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A138232 (n - 1) + a (n - 1)

end

end A138231.P17959378233220885590

namespace A138231

/-- `A138232(n-1)+a(n-1)` -/
def P17959378233220885590.Spec : Prop :=
  ∀ n, P17959378233220885590.a n = A138231 n

end A138231

/-! ## A138231.P10524359700013341560

`A138232(n)-A138614(n)`
-/

namespace A138231.P10524359700013341560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138232 n - A138614 n

end

end A138231.P10524359700013341560

namespace A138231

/-- `A138232(n)-A138614(n)` -/
def P10524359700013341560.Spec : Prop :=
  ∀ n, P10524359700013341560.a n = A138231 n

end A138231

/-!
# A138232: First differences of A138231.

The programs for A138232, the canonical program `A138232.P12341274772574374079` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138232 has offset 0).

The definition of A138232 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138232.P12341274772574374079

`2*a(n-2)-2*a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A138232

/-- `2*a(n-2)-2*a(n-4)` -/
def P12341274772574374079.Spec : Prop :=
  ∀ n, P12341274772574374079.a n = A138232 n

theorem P12341274772574374079.correct : P12341274772574374079.Spec := by
  intro n
  simp only [A138232]

end A138232

/-! ## A138232.P7855438101762266378

`ogf((1-2x^2+x^3)/(1-2x^2+2x^4))`
-/

namespace A138232.P7855438101762266378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2, 1] [1, 0, -2, 0, 2] n

end

end A138232.P7855438101762266378

namespace A138232

/-- `ogf((1-2x^2+x^3)/(1-2x^2+2x^4))` -/
def P7855438101762266378.Spec : Prop :=
  ∀ n, P7855438101762266378.a n = A138232 n

end A138232

/-! ## A138232.P8362694594006115666

`2*(a(n-2)-a(n-4))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A138232.P8362694594006115666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1] fun n a =>
  2 * (a (n - 2) - a (n - 4))

end

end A138232.P8362694594006115666

namespace A138232

/-- `2*(a(n-2)-a(n-4))` -/
def P8362694594006115666.Spec : Prop :=
  ∀ n, P8362694594006115666.a n = A138232 n

theorem P8362694594006115666.correct : P8362694594006115666.Spec := by
  intro n
  simp only [A138232, Nat.add_sub_cancel, A138232.P8362694594006115666.a, A138232.P12341274772574374079.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A138232

/-! ## A138232.P12708396063527728519

`a(n-2)+a(n-2)-(a(n-4)+a(n-4))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A138232.P12708396063527728519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1] fun n a =>
  a (n - 2) + (a (n - 2) - (a (n - 4) + a (n - 4)))

end

end A138232.P12708396063527728519

namespace A138232

/-- `a(n-2)+a(n-2)-(a(n-4)+a(n-4))` -/
def P12708396063527728519.Spec : Prop :=
  ∀ n, P12708396063527728519.a n = A138232 n

theorem P12708396063527728519.correct : P12708396063527728519.Spec := by
  intro n
  simp only [A138232, Nat.add_sub_cancel, A138232.P12708396063527728519.a, A138232.P12341274772574374079.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A138232

/-! ## A138232.P7304993501001115044

`Δ[A138231(n)]`
-/

namespace A138232.P7304993501001115044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138231 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138232.P7304993501001115044

namespace A138232

/-- `Δ[A138231(n)]` -/
def P7304993501001115044.Spec : Prop :=
  ∀ n, P7304993501001115044.a n = A138232 n

end A138232

/-! ## A138232.P13500922054416206015

`A138231(xor(1, xor(1, n)+1))`
-/

namespace A138232.P13500922054416206015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138231 (Nat.xor 1 (Nat.xor 1 n + 1))

end

end A138232.P13500922054416206015

namespace A138232

/-- `A138231(xor(1, xor(1, n)+1))` -/
def P13500922054416206015.Spec : Prop :=
  ∀ n, P13500922054416206015.a n = A138232 n

end A138232

/-! ## A138232.P10622854890964855354

`A138231(A165754(n))`
-/

namespace A138232.P10622854890964855354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138231 (A165754 n).toNat

end

end A138232.P10622854890964855354

namespace A138232

/-- `A138231(A165754(n))` -/
def P10622854890964855354.Spec : Prop :=
  ∀ n, P10622854890964855354.a n = A138232 n

end A138232

/-! ## A138232.P105103842690931930

`A138614(n)+A138231(n)`
-/

namespace A138232.P105103842690931930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138614 n + A138231 n

end

end A138232.P105103842690931930

namespace A138232

/-- `A138614(n)+A138231(n)` -/
def P105103842690931930.Spec : Prop :=
  ∀ n, P105103842690931930.a n = A138232 n

end A138232

/-! ## A138232.P10172627781077486229

`A138231(n+1)-A138231(n)`
-/

namespace A138232.P10172627781077486229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138231 (n + 1) - A138231 n

end

end A138232.P10172627781077486229

namespace A138232

/-- `A138231(n+1)-A138231(n)` -/
def P10172627781077486229.Spec : Prop :=
  ∀ n, P10172627781077486229.a n = A138232 n

end A138232

/-!
# A138233: a(n) = 2^(2*n+1) + 3^(2*n+1).

The programs for A138233, the canonical program `A138233.P5550320243302702201` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138233 has offset 0).

The definition of A138233 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(2*n+1)+3^(2*n+1)` (program `A138233.P5550320243302702201`, by `A138233.P5550320243302702201.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A138233.P1836413225261052554

`2*4^n+3*9^n`
-/

namespace A138233.P1836413225261052554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 4 ^ n + 3 * 9 ^ n

end

end A138233.P1836413225261052554

namespace A138233

/-- `2*4^n+3*9^n` -/
def P1836413225261052554.Spec : Prop :=
  ∀ n, (P1836413225261052554.a n : ℤ) = A138233 n

end A138233

/-! ## A138233.P5550320243302702201

`2^(2*n+1)+3^(2*n+1)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A138233

/-- `2^(2*n+1)+3^(2*n+1)` -/
def P5550320243302702201.Spec : Prop :=
  ∀ n, (P5550320243302702201.a n : ℤ) = A138233 n

theorem P5550320243302702201.correct : P5550320243302702201.Spec := by
  intro n
  simp only [A138233]

end A138233

/-! ## A138233.P2401947118868879865

`5*A096951(n)`
-/

namespace A138233.P2401947118868879865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A096951 n

end

end A138233.P2401947118868879865

namespace A138233

/-- `5*A096951(n)` -/
def P2401947118868879865.Spec : Prop :=
  ∀ n, P2401947118868879865.a n = A138233 n

end A138233

/-! ## A138233.P1959766777102940308

`A007689(Δ[n²])`
-/

namespace A138233.P1959766777102940308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007689 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A138233.P1959766777102940308

namespace A138233

/-- `A007689(Δ[n²])` -/
def P1959766777102940308.Spec : Prop :=
  ∀ n, P1959766777102940308.a n = A138233 n

end A138233

/-! ## A138233.P15740180829422854732

`A085281(2*(n+1))`
-/

namespace A138233.P15740180829422854732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085281 (2 * (n + 1))

end

end A138233.P15740180829422854732

namespace A138233

/-- `A085281(2*(n+1))` -/
def P15740180829422854732.Spec : Prop :=
  ∀ n, P15740180829422854732.a n = A138233 n

end A138233

/-! ## A138233.P11559406497099155438

`A229194(4*(n+1)+1)`
-/

namespace A138233.P11559406497099155438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229194 (4 * (n + 1) + 1)

end

end A138233.P11559406497099155438

namespace A138233

/-- `A229194(4*(n+1)+1)` -/
def P11559406497099155438.Spec : Prop :=
  ∀ n, P11559406497099155438.a n = A138233 n

end A138233

/-! ## A138233.P783380855057993318

`5*A015441(2*n+1)`
-/

namespace A138233.P783380855057993318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A015441 (2 * n + 1)

end

end A138233.P783380855057993318

namespace A138233

/-- `5*A015441(2*n+1)` -/
def P783380855057993318.Spec : Prop :=
  ∀ n, P783380855057993318.a n = A138233 n

end A138233

/-! ## A138233.P6259391832838162105

`lcm(5, A007689(2*n+1))`
-/

namespace A138233.P6259391832838162105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (A007689 (2 * n + 1))

end

end A138233.P6259391832838162105

namespace A138233

/-- `lcm(5, A007689(2*n+1))` -/
def P6259391832838162105.Spec : Prop :=
  ∀ n, (P6259391832838162105.a n : ℤ) = A138233 n

end A138233

/-! ## A138233.P1604299683716456750

`or(1, A005056(2*n+1))`
-/

namespace A138233.P1604299683716456750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A005056 (2 * n + 1))

end

end A138233.P1604299683716456750

namespace A138233

/-- `or(1, A005056(2*n+1))` -/
def P1604299683716456750.Spec : Prop :=
  ∀ n, P1604299683716456750.a n = A138233 n

end A138233

/-! ## A138233.P15165954367298963430

`abs(1-A001550(2*n+1))`
-/

namespace A138233.P15165954367298963430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A001550 (2 * n + 1)|

end

end A138233.P15165954367298963430

namespace A138233

/-- `abs(1-A001550(2*n+1))` -/
def P15165954367298963430.Spec : Prop :=
  ∀ n, P15165954367298963430.a n = A138233 n

end A138233

/-! ## A138233.P14325259326210455934

`(A020707(2*n)+A008776(2*n+1))/2`
-/

namespace A138233.P14325259326210455934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020707 (2 * n) + A008776 (2 * n + 1) : ℚ) / 2

end

end A138233.P14325259326210455934

namespace A138233

/-- `(A020707(2*n)+A008776(2*n+1))/2` -/
def P14325259326210455934.Spec : Prop :=
  ∀ n, P14325259326210455934.a n = (A138233 n : ℚ)

end A138233

/-! ## A138233.P6754045948197829082

`2*A007689(2*n+1)/A020639(2*(n+1))`
-/

namespace A138233.P6754045948197829082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A007689 (2 * n + 1) : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A138233.P6754045948197829082

namespace A138233

/-- `2*A007689(2*n+1)/A020639(2*(n+1))` -/
def P6754045948197829082.Spec : Prop :=
  ∀ n, P6754045948197829082.a n = (A138233 n : ℚ)

end A138233

/-!
# A138234: Integers which land on a free spot on the plane, according to the compass method described below.

The programs for A138234, there is no canonical definition to state claims against.
-/

/-! ## A138234.P7990624857936872278

`lt[A111596(A032766(n)), A106280(n+1)]`
-/

namespace A138234.P7990624857936872278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111596 (A032766 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106280 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A138234.P7990624857936872278

/-! ## A138234.P3407035844377466175

`lt[A117109(A027907(n)), A220010(2*n+3)]`
-/

namespace A138234.P3407035844377466175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117109 (A027907 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220010 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A138234.P3407035844377466175

/-! ## A138234.P10660592436422684018

`lt[A024996(n), A242031(A263799(2*n+3))]`
-/

namespace A138234.P10660592436422684018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024996 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242031 (A263799 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A138234.P10660592436422684018

/-! ## A138234.P14107478563032651642

`lt[A106448(n+1), A083348(A333737(2*(n+1)))]`
-/

namespace A138234.P14107478563032651642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083348 (A333737 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A138234.P14107478563032651642

/-! ## A138234.P13278739316262101917

`lt[A051709(A204713(n+1)), A141617(n)]`
-/

namespace A138234.P13278739316262101917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051709 (A204713 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141617 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A138234.P13278739316262101917

/-!
# A138235: a(n) = floor(n*(6 + sqrt(6))/5).

The programs for A138235, the canonical program `A138235.P15829743484125370864` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138235 has offset 1).

The definition of A138235 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)*(6+sqrt(6))/5)` (program `A138235.P15829743484125370864`, by `A138235.P15829743484125370864.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A138235.P15829743484125370864

`floor((n+1)*(6+sqrt(6))/5)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A138235

/-- `floor((n+1)*(6+sqrt(6))/5)` -/
def P15829743484125370864.Spec : Prop :=
  ∀ n, P15829743484125370864.a n = A138235 (n + 1)

theorem P15829743484125370864.correct : P15829743484125370864.Spec := by
  intro n
  simp only [A138235, Nat.add_sub_cancel]

end A138235

/-! ## A138235.P2776850877195148012

`comp[A198083(n)-2]+1`
-/

namespace A138235.P2776850877195148012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198083 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A138235.P2776850877195148012

namespace A138235

/-- `comp[A198083(n)-2]+1` -/
def P2776850877195148012.Spec : Prop :=
  ∀ n, (P2776850877195148012.a n : ℤ) = A138235 (n + 1)

end A138235

/-! ## A138235.P16771494496343987232

`∑[char[A194145(n+1)]+1]`
-/

namespace A138235.P16771494496343987232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194145 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138235.P16771494496343987232

namespace A138235

/-- `∑[char[A194145(n+1)]+1]` -/
def P16771494496343987232.Spec : Prop :=
  ∀ n, (P16771494496343987232.a n : ℤ) = A138235 (n + 1)

end A138235

/-! ## A138235.P14009034301350510489

`comp[A022840(n+1)-1]+1`
-/

namespace A138235.P14009034301350510489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022840 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A138235.P14009034301350510489

namespace A138235

/-- `comp[A022840(n+1)-1]+1` -/
def P14009034301350510489.Spec : Prop :=
  ∀ n, (P14009034301350510489.a n : ℤ) = A138235 (n + 1)

end A138235

/-! ## A138235.P12877317558330987560

`∪[A198083(n+1)-2, A198083(n+1)]`
-/

namespace A138235.P12877317558330987560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198083 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A138235.P12877317558330987560

namespace A138235

/-- `∪[A198083(n+1)-2, A198083(n+1)]` -/
def P12877317558330987560.Spec : Prop :=
  ∀ n, (P12877317558330987560.a n : ℤ) = A138235 (n + 1)

end A138235

/-! ## A138235.P853421883218471200

`lt[n, A138236(n+1)]+1`
-/

namespace A138235.P853421883218471200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138236 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A138235.P853421883218471200

namespace A138235

/-- `lt[n, A138236(n+1)]+1` -/
def P853421883218471200.Spec : Prop :=
  ∀ n, (P853421883218471200.a n : ℤ) = A138235 (n + 1)

end A138235

/-! ## A138235.P18207968315190118955

`record[n+1-2*A285686(n+1)]`
-/

namespace A138235.P18207968315190118955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - 2 * A285686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138235.P18207968315190118955

namespace A138235

/-- `record[n+1-2*A285686(n+1)]` -/
def P18207968315190118955.Spec : Prop :=
  ∀ n, P18207968315190118955.a n = A138235 (n + 1)

end A138235

/-! ## A138235.P14236690885140865468

`A194986(a(n-1)+2)+n` with `a(0)=1`
-/

namespace A138235.P14236690885140865468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A194986 (a (n - 1) + 2).toNat + (n : ℤ)

end

end A138235.P14236690885140865468

namespace A138235

/-- `A194986(a(n-1)+2)+n` -/
def P14236690885140865468.Spec : Prop :=
  ∀ n, P14236690885140865468.a n = A138235 (n + 1)

end A138235

/-! ## A138235.P1697204551252901140

`A172476(a(n-1)+2)+n+1` with `a(0)=1`
-/

namespace A138235.P1697204551252901140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A172476 (a (n - 1) + 2).toNat + (n + 1 : ℤ)

end

end A138235.P1697204551252901140

namespace A138235

/-- `A172476(a(n-1)+2)+n+1` -/
def P1697204551252901140.Spec : Prop :=
  ∀ n, P1697204551252901140.a n = A138235 (n + 1)

end A138235

/-! ## A138235.P459837568089792485

`A138236(A022840(n+1))`
-/

namespace A138235.P459837568089792485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138236 (A022840 (n + 1)).toNat

end

end A138235.P459837568089792485

namespace A138235

/-- `A138236(A022840(n+1))` -/
def P459837568089792485.Spec : Prop :=
  ∀ n, P459837568089792485.a n = A138235 (n + 1)

end A138235

/-! ## A138235.P10082049364963053496

`A138236(∑[A276856(n+1)])`
-/

namespace A138235.P10082049364963053496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138236 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A138235.P10082049364963053496

namespace A138235

/-- `A138236(∑[A276856(n+1)])` -/
def P10082049364963053496.Spec : Prop :=
  ∀ n, P10082049364963053496.a n = A138235 (n + 1)

end A138235

/-! ## A138235.P16793466957388116102

`A138236(record[A138236(n+1)])`
-/

namespace A138235.P16793466957388116102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138236 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A138235.P16793466957388116102

namespace A138235

/-- `A138236(record[A138236(n+1)])` -/
def P16793466957388116102.Spec : Prop :=
  ∀ n, P16793466957388116102.a n = A138235 (n + 1)

end A138235

/-! ## A138235.P10857925436530566772

`A138236(A277644(2*(n+1)))`
-/

namespace A138235.P10857925436530566772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138236 (A277644 (2 * (n + 1))).toNat

end

end A138235.P10857925436530566772

namespace A138235

/-- `A138236(A277644(2*(n+1)))` -/
def P10857925436530566772.Spec : Prop :=
  ∀ n, P10857925436530566772.a n = A138235 (n + 1)

end A138235

/-! ## A138235.P2905131863592936215

`A138236(A171974(3*(n+1)))`
-/

namespace A138235.P2905131863592936215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138236 (A171974 (3 * (n + 1))).toNat

end

end A138235.P2905131863592936215

namespace A138235

/-- `A138236(A171974(3*(n+1)))` -/
def P2905131863592936215.Spec : Prop :=
  ∀ n, P2905131863592936215.a n = A138235 (n + 1)

end A138235

/-!
# A138236: Self-inverse integer permutation induced by Beatty sequences for Sqrt(6) and (6+Sqrt(6))/5.

The programs for A138236, there is no canonical definition to state claims against.
-/

/-! ## A138236.P2540015443723087858

`or(A109250(n+1), A353495(A152225(n)))`
-/

namespace A138236.P2540015443723087858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A109250 (n + 1)) (A353495 (A152225 n).toNat)

end

end A138236.P2540015443723087858

/-! ## A138236.P8818304548926334698

`A353495(A152225(n)+2)+A109250(n+1)`
-/

namespace A138236.P8818304548926334698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353495 (A152225 n + 2).toNat + A109250 (n + 1)

end

end A138236.P8818304548926334698

/-! ## A138236.P15690272163666417607

`or(A069851(A288010(n)), A109250(n+1))`
-/

namespace A138236.P15690272163666417607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A069851 (A288010 n).toNat) (A109250 (n + 1))

end

end A138236.P15690272163666417607

/-! ## A138236.P8420460721975503892

`A109250(n+1)+A010054(A087481(n+1))`
-/

namespace A138236.P8420460721975503892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109250 (n + 1) + A010054 (A087481 (n + 1)).toNat

end

end A138236.P8420460721975503892

/-!
# A138237: Number of unlabeled graphs with at least one cycle in which every connected component has at most one cycle.

The programs for A138237, there is no canonical definition to state claims against.
-/

/-! ## A138237.P7157085933836207136

`A134964(n+3)-A005195(n+3)`
-/

namespace A138237.P7157085933836207136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134964 (n + 3) - A005195 (n + 3)

end

end A138237.P7157085933836207136

/-! ## A138237.P7971503825331739534

`A286743(n+3)-A140637(n+3)`
-/

namespace A138237.P7971503825331739534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286743 (n + 3) - A140637 (n + 3)

end

end A138237.P7971503825331739534

/-!
# A138238: Alternating sum of the squares of the first n Jacobsthal numbers.

The programs for A138238, the canonical program `A138238.P5979147474928506645` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138238 has offset 0).

The definition of A138238 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138238.P5979147474928506645

`A084639(n)-4*a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A138238

/-- `A084639(n)-4*a(n-1)` -/
def P5979147474928506645.Spec : Prop :=
  ∀ n, P5979147474928506645.a n = A138238 n

theorem P5979147474928506645.correct : P5979147474928506645.Spec := by
  intro n
  simp only [A138238]

end A138238

/-! ## A138238.P15844687451783861671

`∑[A062157(n)*A139818(n)]`
-/

namespace A138238.P15844687451783861671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A139818 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138238.P15844687451783861671

namespace A138238

/-- `∑[A062157(n)*A139818(n)]` -/
def P15844687451783861671.Spec : Prop :=
  ∀ n, P15844687451783861671.a n = A138238 n

end A138238

/-! ## A138238.P1135489373868113799

`∑[A139818(n)*A165326(n)]`
-/

namespace A138238.P1135489373868113799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139818 n * A165326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138238.P1135489373868113799

namespace A138238

/-- `∑[A139818(n)*A165326(n)]` -/
def P1135489373868113799.Spec : Prop :=
  ∀ n, P1135489373868113799.a n = A138238 n

end A138238

/-! ## A138238.P9112256579989230622

`∑[A001045(n)²*A062157(n)]`
-/

namespace A138238.P9112256579989230622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n ^ 2 * A062157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138238.P9112256579989230622

namespace A138238

/-- `∑[A001045(n)²*A062157(n)]` -/
def P9112256579989230622.Spec : Prop :=
  ∀ n, P9112256579989230622.a n = A138238 n

end A138238

/-! ## A138238.P16540187785964989736

`∑[A001045(n)²*A165326(n)]`
-/

namespace A138238.P16540187785964989736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n ^ 2 * A165326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138238.P16540187785964989736

namespace A138238

/-- `∑[A001045(n)²*A165326(n)]` -/
def P16540187785964989736.Spec : Prop :=
  ∀ n, P16540187785964989736.a n = A138238 n

end A138238

/-! ## A138238.P17282547003888266160

`∑[A033999(n+1)*A139818(n)]`
-/

namespace A138238.P17282547003888266160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A139818 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138238.P17282547003888266160

namespace A138238

/-- `∑[A033999(n+1)*A139818(n)]` -/
def P17282547003888266160.Spec : Prop :=
  ∀ n, P17282547003888266160.a n = A138238 n

end A138238

/-! ## A138238.P1068355549743396433

`∑[(A084247(n)-1)*A001045(n)]`
-/

namespace A138238.P1068355549743396433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A084247 n - 1) * A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138238.P1068355549743396433

namespace A138238

/-- `∑[(A084247(n)-1)*A001045(n)]` -/
def P1068355549743396433.Spec : Prop :=
  ∀ n, P1068355549743396433.a n = A138238 n

end A138238

/-! ## A138238.P2588000654136969001

`∑[Δ[A005578(n)]²*A062157(n)]`
-/

namespace A138238.P2588000654136969001
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2 * A062157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138238.P2588000654136969001

namespace A138238

/-- `∑[Δ[A005578(n)]²*A062157(n)]` -/
def P2588000654136969001.Spec : Prop :=
  ∀ n, P2588000654136969001.a n = A138238 n

end A138238

/-! ## A138238.P17547458446853330848

`∑[(2*A000034(n)-3)*A001045(n)²]`
-/

namespace A138238.P17547458446853330848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A000034 n - 3) * A001045 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138238.P17547458446853330848

namespace A138238

/-- `∑[(2*A000034(n)-3)*A001045(n)²]` -/
def P17547458446853330848.Spec : Prop :=
  ∀ n, P17547458446853330848.a n = A138238 n

end A138238

/-! ## A138238.P2083490639606682790

`∑[A084241(n)+A014113(n)]/3`
-/

namespace A138238.P2083490639606682790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084241 n + A014113 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3

end

end A138238.P2083490639606682790

namespace A138238

/-- `∑[A084241(n)+A014113(n)]/3` -/
def P2083490639606682790.Spec : Prop :=
  ∀ n, P2083490639606682790.a n = (A138238 n : ℚ)

end A138238

/-!
# A138239: Triangle read by rows: T(n,k) = A000040(k) if A002445(n) mod A000040(k) = 0, otherwise 1.

The programs for A138239, the canonical program `A138239.P3329285066775299196` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138239 has offset 0).

The definition of A138239 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138239.P3329285066775299196

`gcd(A002445(A003056(n)), A037126(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A138239

/-- `gcd(A002445(A003056(n)), A037126(n+1))` -/
def P3329285066775299196.Spec : Prop :=
  ∀ n, (P3329285066775299196.a n : ℤ) = A138239 n

theorem P3329285066775299196.correct : P3329285066775299196.Spec := by
  intro n
  simp only [A138239]

end A138239

/-! ## A138239.P3170607025668125415

`A138243(A292564(n))`
-/

namespace A138239.P3170607025668125415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138243 (A292564 n).toNat

end

end A138239.P3170607025668125415

namespace A138239

/-- `A138243(A292564(n))` -/
def P3170607025668125415.Spec : Prop :=
  ∀ n, P3170607025668125415.a n = A138239 n

end A138239

/-! ## A138239.P2516234210315918427

`gcd(A000043(A213999(n)), A107761(n+1))`
-/

namespace A138239.P2516234210315918427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000043 (A213999 n).toNat) (A107761 (n + 1))

end

end A138239.P2516234210315918427

namespace A138239

/-- `gcd(A000043(A213999(n)), A107761(n+1))` -/
def P2516234210315918427.Spec : Prop :=
  ∀ n, (P2516234210315918427.a n : ℤ) = A138239 n

end A138239

/-! ## A138239.P11727016903335364386

`gcd(A000010(A092342(n)), A339116(n+2))`
-/

namespace A138239.P11727016903335364386
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (A092342 n).toNat) (A339116 (n + 2))

end

end A138239.P11727016903335364386

namespace A138239

/-- `gcd(A000010(A092342(n)), A339116(n+2))` -/
def P11727016903335364386.Spec : Prop :=
  ∀ n, (P11727016903335364386.a n : ℤ) = A138239 n

end A138239

/-!
# A138240: Expansion of (1/4)(1-sqrt(1-12x)/sqrt(1-4x)).

The programs for A138240, there is no canonical definition to state claims against.
-/

/-! ## A138240.P471458007930412893

`2^(n-1)*Δ[A140980(n)]`
-/

namespace A138240.P471458007930412893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140980 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (f1 (n + 1) - f1 n : ℚ)

end

end A138240.P471458007930412893

/-! ## A138240.P6922479555460732110

`Δ[A140980(n)]*A011782(n)`
-/

namespace A138240.P6922479555460732110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A011782 n

end

end A138240.P6922479555460732110

/-!
# A138241: Number of squares of primes between cubes of successive primes.

The programs for A138241, the canonical program `A138241.P9154013233846997930` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138241 has offset 1).

The definition of A138241 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138241.P15776983323649439368

`Δ[A000720(floor(A000040(n+1)^(3/2)))]`
-/

namespace A138241.P15776983323649439368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ⌊(A000040 (n + 1) : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138241.P15776983323649439368

namespace A138241

/-- `Δ[A000720(floor(A000040(n+1)^(3/2)))]` -/
def P15776983323649439368.Spec : Prop :=
  ∀ n, P15776983323649439368.a n = A138241 (n + 1)

end A138241

/-! ## A138241.P9154013233846997930

`Δ[A000720(A000093(A000040(n+1)))]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A138241

/-- `Δ[A000720(A000093(A000040(n+1)))]` -/
def P9154013233846997930.Spec : Prop :=
  ∀ n, P9154013233846997930.a n = A138241 (n + 1)

theorem P9154013233846997930.correct : P9154013233846997930.Spec := by
  intro n
  simp only [A138241, Nat.add_sub_cancel]

end A138241

/-!
# A138242: Prime numbers k such that 12*k - 1, 12*k + 1 are twin primes.

The programs for A138242, the canonical program `A138242.P9271491672774814996` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138242 has offset 1).

The definition of A138242 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 649 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138242.P9271491672774814996

`p?[A124519(n+1)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A138242

/-- `p?[A124519(n+1)]` -/
def P9271491672774814996.Spec : Prop :=
  ∀ n, P9271491672774814996.a n = A138242 (n + 1)

theorem P9271491672774814996.correct : P9271491672774814996.Spec := by
  intro n
  simp only [A138242, Nat.add_sub_cancel]

end A138242

/-! ## A138242.P12427835606611055342

`p?[ceil(A071698(n+1)/12)]`
-/

namespace A138242.P12427835606611055342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A071698 (n + 1) : ℚ) / 12⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138242.P12427835606611055342

namespace A138242

/-- `p?[ceil(A071698(n+1)/12)]` -/
def P12427835606611055342.Spec : Prop :=
  ∀ n, P12427835606611055342.a n = A138242 (n + 1)

end A138242

/-! ## A138242.P2690125620509976513

`∩[A124519(n+1), A075704(n)]`
-/

namespace A138242.P2690125620509976513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075704 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138242.P2690125620509976513

namespace A138242

/-- `∩[A124519(n+1), A075704(n)]` -/
def P2690125620509976513.Spec : Prop :=
  ∀ n, (P2690125620509976513.a n : ℤ) = A138242 (n + 1)

end A138242

/-! ## A138242.P3348860589762578556

`∩[A038872(n+1), A124519(n+1)]`
-/

namespace A138242.P3348860589762578556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124519 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138242.P3348860589762578556

namespace A138242

/-- `∩[A038872(n+1), A124519(n+1)]` -/
def P3348860589762578556.Spec : Prop :=
  ∀ n, (P3348860589762578556.a n : ℤ) = A138242 (n + 1)

end A138242

/-! ## A138242.P8942916448095723053

`∩[A045353(n+1), A124519(n+1)]`
-/

namespace A138242.P8942916448095723053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124519 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138242.P8942916448095723053

namespace A138242

/-- `∩[A045353(n+1), A124519(n+1)]` -/
def P8942916448095723053.Spec : Prop :=
  ∀ n, (P8942916448095723053.a n : ℤ) = A138242 (n + 1)

end A138242

/-! ## A138242.P14643899191199064886

`∩[A045364(n+1), A124519(n+1)]`
-/

namespace A138242.P14643899191199064886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124519 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138242.P14643899191199064886

namespace A138242

/-- `∩[A045364(n+1), A124519(n+1)]` -/
def P14643899191199064886.Spec : Prop :=
  ∀ n, (P14643899191199064886.a n : ℤ) = A138242 (n + 1)

end A138242

/-! ## A138242.P4116925285888737552

`∩[A045405(n+1), A124519(n+1)]`
-/

namespace A138242.P4116925285888737552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124519 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138242.P4116925285888737552

namespace A138242

/-- `∩[A045405(n+1), A124519(n+1)]` -/
def P4116925285888737552.Spec : Prop :=
  ∀ n, (P4116925285888737552.a n : ℤ) = A138242 (n + 1)

end A138242

/-! ## A138242.P5212284914675609181

`∩[A045348(n+1), A124519(n+1)]`
-/

namespace A138242.P5212284914675609181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124519 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138242.P5212284914675609181

namespace A138242

/-- `∩[A045348(n+1), A124519(n+1)]` -/
def P5212284914675609181.Spec : Prop :=
  ∀ n, (P5212284914675609181.a n : ℤ) = A138242 (n + 1)

end A138242

/-! ## A138242.P6037145177053558464

`∩[A124519(n+1), A230359(n+1)]`
-/

namespace A138242.P6037145177053558464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138242.P6037145177053558464

namespace A138242

/-- `∩[A124519(n+1), A230359(n+1)]` -/
def P6037145177053558464.Spec : Prop :=
  ∀ n, (P6037145177053558464.a n : ℤ) = A138242 (n + 1)

end A138242

/-! ## A138242.P17213492177263509687

`∩[A124519(n+1), A042990(n)]`
-/

namespace A138242.P17213492177263509687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138242.P17213492177263509687

namespace A138242

/-- `∩[A124519(n+1), A042990(n)]` -/
def P17213492177263509687.Spec : Prop :=
  ∀ n, (P17213492177263509687.a n : ℤ) = A138242 (n + 1)

end A138242

/-! ## A138242.P10942390416789524313

`∩[A045311(n+1), A124519(n+1)]`
-/

namespace A138242.P10942390416789524313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124519 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138242.P10942390416789524313

namespace A138242

/-- `∩[A045311(n+1), A124519(n+1)]` -/
def P10942390416789524313.Spec : Prop :=
  ∀ n, (P10942390416789524313.a n : ℤ) = A138242 (n + 1)

end A138242

/-! ## A138242.P2953499999722755085

`∩[A045346(n+1), A124519(n+1)]`
-/

namespace A138242.P2953499999722755085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124519 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138242.P2953499999722755085

namespace A138242

/-- `∩[A045346(n+1), A124519(n+1)]` -/
def P2953499999722755085.Spec : Prop :=
  ∀ n, (P2953499999722755085.a n : ℤ) = A138242 (n + 1)

end A138242

/-! ## A138242.P11743729170276345850

`∩[A045360(n+1), A124519(n+1)]`
-/

namespace A138242.P11743729170276345850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124519 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138242.P11743729170276345850

namespace A138242

/-- `∩[A045360(n+1), A124519(n+1)]` -/
def P11743729170276345850.Spec : Prop :=
  ∀ n, (P11743729170276345850.a n : ℤ) = A138242 (n + 1)

end A138242

/-! ## A138242.P1479967453684881282

`∩[A124519(n+1), A132143(n+1)]`
-/

namespace A138242.P1479967453684881282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138242.P1479967453684881282

namespace A138242

/-- `∩[A124519(n+1), A132143(n+1)]` -/
def P1479967453684881282.Spec : Prop :=
  ∀ n, (P1479967453684881282.a n : ℤ) = A138242 (n + 1)

end A138242

/-! ## A138242.P14446282128198161777

`∩[A049545(n+1), A124519(n+1)]`
-/

namespace A138242.P14446282128198161777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124519 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138242.P14446282128198161777

namespace A138242

/-- `∩[A049545(n+1), A124519(n+1)]` -/
def P14446282128198161777.Spec : Prop :=
  ∀ n, (P14446282128198161777.a n : ℤ) = A138242 (n + 1)

end A138242

/-! ## A138242.P12867273512974552411

`∩[A124519(n+1), A165666(n+1)]`
-/

namespace A138242.P12867273512974552411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138242.P12867273512974552411

namespace A138242

/-- `∩[A124519(n+1), A165666(n+1)]` -/
def P12867273512974552411.Spec : Prop :=
  ∀ n, (P12867273512974552411.a n : ℤ) = A138242 (n + 1)

end A138242

/-! ## A138242.P1872371929246128521

`∩[A000040(n+1), A124519(n+1)]`
-/

namespace A138242.P1872371929246128521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124519 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138242.P1872371929246128521

namespace A138242

/-- `∩[A000040(n+1), A124519(n+1)]` -/
def P1872371929246128521.Spec : Prop :=
  ∀ n, (P1872371929246128521.a n : ℤ) = A138242 (n + 1)

end A138242

/-! ## A138242.P10652357567489889826

`∩[A045344(n+1), A124519(n+1)]`
-/

namespace A138242.P10652357567489889826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124519 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138242.P10652357567489889826

namespace A138242

/-- `∩[A045344(n+1), A124519(n+1)]` -/
def P10652357567489889826.Spec : Prop :=
  ∀ n, (P10652357567489889826.a n : ℤ) = A138242 (n + 1)

end A138242

/-! ## A138242.P4678255892407040310

`∩[A065091(n+1), A124519(n+1)]`
-/

namespace A138242.P4678255892407040310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124519 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138242.P4678255892407040310

namespace A138242

/-- `∩[A065091(n+1), A124519(n+1)]` -/
def P4678255892407040310.Spec : Prop :=
  ∀ n, (P4678255892407040310.a n : ℤ) = A138242 (n + 1)

end A138242

/-!
# A138243: Triangle read by rows: Row products give A027642.

The programs for A138243, the canonical program `A138243.P5727277130700304771` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138243 has offset 0).

The definition of A138243 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138243.P5727277130700304771

`gcd(A027642(A003056(n)), A138239(n))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A138243

/-- `gcd(A027642(A003056(n)), A138239(n))` -/
def P5727277130700304771.Spec : Prop :=
  ∀ n, (P5727277130700304771.a n : ℤ) = A138243 n

theorem P5727277130700304771.correct : P5727277130700304771.Spec := by
  intro n
  simp only [A138243]

end A138243

/-! ## A138243.P13748897730747115906

`gcd(A037126(n+1), A172282(A003056(n)))`
-/

namespace A138243.P13748897730747115906
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037126 (n + 1)) (A172282 (A003056 n).toNat)

end

end A138243.P13748897730747115906

namespace A138243

/-- `gcd(A037126(n+1), A172282(A003056(n)))` -/
def P13748897730747115906.Spec : Prop :=
  ∀ n, (P13748897730747115906.a n : ℤ) = A138243 n

end A138243

/-! ## A138243.P18006071278563371181

`A143343(∑[A347621(n)])`
-/

namespace A138243.P18006071278563371181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347621 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143343 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A138243.P18006071278563371181

namespace A138243

/-- `A143343(∑[A347621(n)])` -/
def P18006071278563371181.Spec : Prop :=
  ∀ n, P18006071278563371181.a n = A138243 n

end A138243

/-! ## A138243.P18124652742249315338

`gcd(A062571(A305482(n+1)), A255127(n+2))`
-/

namespace A138243.P18124652742249315338
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062571 (A305482 (n + 1)).toNat) (A255127 (n + 2))

end

end A138243.P18124652742249315338

namespace A138243

/-- `gcd(A062571(A305482(n+1)), A255127(n+2))` -/
def P18124652742249315338.Spec : Prop :=
  ∀ n, (P18124652742249315338.a n : ℤ) = A138243 n

end A138243

/-!
# A138244: a(1)=1; for n>1, a(n) = smallest integer > a(n-1) such that a(n) is coprime to (a(k) - a(k-1)) for all k, 2 <= k <= n and such that (a(n) - a(n-1)) doesn't equal (a(k) - a(k-1)) for any k, 2 <= k <= n-1.

The programs for A138244, there is no canonical definition to state claims against.
-/

/-! ## A138244.P10268224812999156119

`A138245(n)+a(n-1)` with `a(0)=1`
-/

namespace A138244.P10268224812999156119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A138245 n + a (n - 1)

end

end A138244.P10268224812999156119

/-!
# A138245: a(n) = A138244(n+1) - A138244(n).

The programs for A138245, there is no canonical definition to state claims against.
-/

/-! ## A138245.P11566369580297571961

`A138244(n+2)-A138244(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A138245.P11566369580297571961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138244 (n + 2) - A138244 (n + 1)

end

end A138245.P11566369580297571961

/-! ## A138245.P17307320878859566873

`Δ[A138244(n+1)]`
-/

namespace A138245.P17307320878859566873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138244 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138245.P17307320878859566873

/-! ## A138245.P7336608337640679503

`Δ[record[A138244(A133310(n))]]`
-/

namespace A138245.P7336608337640679503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138244 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138245.P7336608337640679503

/-! ## A138245.P5166265624820386004

`Δ[record[A138244(A152271(n))]]`
-/

namespace A138245.P5166265624820386004
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138244 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138245.P5166265624820386004

/-! ## A138245.P8985560623818448449

`Δ[record[A138244(A344180(n))]]`
-/

namespace A138245.P8985560623818448449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138244 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138245.P8985560623818448449

/-! ## A138245.P11894615528245732087

`abs(Δ[A138244(A029579(2*n))])`
-/

namespace A138245.P11894615528245732087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138244 (A029579 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A138245.P11894615528245732087

/-! ## A138245.P564379021165900355

`Δ[record[A138244(A065648(n))]]`
-/

namespace A138245.P564379021165900355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138244 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138245.P564379021165900355

/-!
# A138246: Composite members of sequence A138244.

The programs for A138246, there is no canonical definition to state claims against.
-/

/-! ## A138246.P5694040796869196674

`∩[A138244(n+1), A078972(A141819(n+1))]`
-/

namespace A138246.P5694040796869196674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138244 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (A141819 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138246.P5694040796869196674

/-!
# A138248: Prime numbers k such that 18*k - 1 and 18*k + 1 are twin primes.

The programs for A138248, the canonical program `A138248.P2969581266609767893` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138248 has offset 1).

The definition of A138248 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 672 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138248.P2969581266609767893

`p?[A137877(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A138248

/-- `p?[A137877(n+1)]` -/
def P2969581266609767893.Spec : Prop :=
  ∀ n, P2969581266609767893.a n = A138248 (n + 1)

theorem P2969581266609767893.correct : P2969581266609767893.Spec := by
  intro n
  simp only [A138248, Nat.add_sub_cancel]

end A138248

/-! ## A138248.P3061324770650763987

`p?[record[A137877(A324347(n))]]`
-/

namespace A138248.P3061324770650763987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137877 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138248.P3061324770650763987

namespace A138248

/-- `p?[record[A137877(A324347(n))]]` -/
def P3061324770650763987.Spec : Prop :=
  ∀ n, P3061324770650763987.a n = A138248 (n + 1)

end A138248

/-! ## A138248.P15746654557654822596

`∩[A137877(n+1), A165810(n+1)]`
-/

namespace A138248.P15746654557654822596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138248.P15746654557654822596

namespace A138248

/-- `∩[A137877(n+1), A165810(n+1)]` -/
def P15746654557654822596.Spec : Prop :=
  ∀ n, (P15746654557654822596.a n : ℤ) = A138248 (n + 1)

end A138248

/-! ## A138248.P13760999004687978580

`∩[A038872(n+1), A137877(n+1)]`
-/

namespace A138248.P13760999004687978580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138248.P13760999004687978580

namespace A138248

/-- `∩[A038872(n+1), A137877(n+1)]` -/
def P13760999004687978580.Spec : Prop :=
  ∀ n, (P13760999004687978580.a n : ℤ) = A138248 (n + 1)

end A138248

/-! ## A138248.P2011452031706362557

`∩[A045468(n+1), A137877(n+1)]`
-/

namespace A138248.P2011452031706362557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138248.P2011452031706362557

namespace A138248

/-- `∩[A045468(n+1), A137877(n+1)]` -/
def P2011452031706362557.Spec : Prop :=
  ∀ n, (P2011452031706362557.a n : ℤ) = A138248 (n + 1)

end A138248

/-! ## A138248.P8697204338994538150

`∩[A064739(n+1), A137877(n+1)]`
-/

namespace A138248.P8697204338994538150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138248.P8697204338994538150

namespace A138248

/-- `∩[A064739(n+1), A137877(n+1)]` -/
def P8697204338994538150.Spec : Prop :=
  ∀ n, (P8697204338994538150.a n : ℤ) = A138248 (n + 1)

end A138248

/-! ## A138248.P6967635003317570509

`∩[A137877(n+1), A328896(n+1)]`
-/

namespace A138248.P6967635003317570509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138248.P6967635003317570509

namespace A138248

/-- `∩[A137877(n+1), A328896(n+1)]` -/
def P6967635003317570509.Spec : Prop :=
  ∀ n, (P6967635003317570509.a n : ℤ) = A138248 (n + 1)

end A138248

/-! ## A138248.P16058072626743403594

`∩[A045417(n+1), A137877(n+1)]`
-/

namespace A138248.P16058072626743403594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138248.P16058072626743403594

namespace A138248

/-- `∩[A045417(n+1), A137877(n+1)]` -/
def P16058072626743403594.Spec : Prop :=
  ∀ n, (P16058072626743403594.a n : ℤ) = A138248 (n + 1)

end A138248

/-! ## A138248.P2197280021434736435

`∩[A045426(n+1), A137877(n+1)]`
-/

namespace A138248.P2197280021434736435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045426 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138248.P2197280021434736435

namespace A138248

/-- `∩[A045426(n+1), A137877(n+1)]` -/
def P2197280021434736435.Spec : Prop :=
  ∀ n, (P2197280021434736435.a n : ℤ) = A138248 (n + 1)

end A138248

/-! ## A138248.P16532032151331879157

`∩[A137877(n+1), A229947(n+1)]`
-/

namespace A138248.P16532032151331879157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138248.P16532032151331879157

namespace A138248

/-- `∩[A137877(n+1), A229947(n+1)]` -/
def P16532032151331879157.Spec : Prop :=
  ∀ n, (P16532032151331879157.a n : ℤ) = A138248 (n + 1)

end A138248

/-! ## A138248.P1619016919846318565

`∩[A045348(n+1), A137877(n+1)]`
-/

namespace A138248.P1619016919846318565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138248.P1619016919846318565

namespace A138248

/-- `∩[A045348(n+1), A137877(n+1)]` -/
def P1619016919846318565.Spec : Prop :=
  ∀ n, (P1619016919846318565.a n : ℤ) = A138248 (n + 1)

end A138248

/-! ## A138248.P12612528227256127125

`∩[A045371(n+1), A137877(n+1)]`
-/

namespace A138248.P12612528227256127125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138248.P12612528227256127125

namespace A138248

/-- `∩[A045371(n+1), A137877(n+1)]` -/
def P12612528227256127125.Spec : Prop :=
  ∀ n, (P12612528227256127125.a n : ℤ) = A138248 (n + 1)

end A138248

/-! ## A138248.P5533350769404193004

`∩[A045405(n+1), A137877(n+1)]`
-/

namespace A138248.P5533350769404193004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138248.P5533350769404193004

namespace A138248

/-- `∩[A045405(n+1), A137877(n+1)]` -/
def P5533350769404193004.Spec : Prop :=
  ∀ n, (P5533350769404193004.a n : ℤ) = A138248 (n + 1)

end A138248

/-! ## A138248.P9706936739350306677

`∩[A045428(n+1), A137877(n+1)]`
-/

namespace A138248.P9706936739350306677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138248.P9706936739350306677

namespace A138248

/-- `∩[A045428(n+1), A137877(n+1)]` -/
def P9706936739350306677.Spec : Prop :=
  ∀ n, (P9706936739350306677.a n : ℤ) = A138248 (n + 1)

end A138248

/-! ## A138248.P9803973856948197029

`∩[A137877(n+1), A230359(n+1)]`
-/

namespace A138248.P9803973856948197029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138248.P9803973856948197029

namespace A138248

/-- `∩[A137877(n+1), A230359(n+1)]` -/
def P9803973856948197029.Spec : Prop :=
  ∀ n, (P9803973856948197029.a n : ℤ) = A138248 (n + 1)

end A138248

/-! ## A138248.P7770241036729985872

`∩[A045320(n+1), A137877(n+1)]`
-/

namespace A138248.P7770241036729985872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138248.P7770241036729985872

namespace A138248

/-- `∩[A045320(n+1), A137877(n+1)]` -/
def P7770241036729985872.Spec : Prop :=
  ∀ n, (P7770241036729985872.a n : ℤ) = A138248 (n + 1)

end A138248

/-! ## A138248.P5796805776556556160

`∩[A045334(n+1), A137877(n+1)]`
-/

namespace A138248.P5796805776556556160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138248.P5796805776556556160

namespace A138248

/-- `∩[A045334(n+1), A137877(n+1)]` -/
def P5796805776556556160.Spec : Prop :=
  ∀ n, (P5796805776556556160.a n : ℤ) = A138248 (n + 1)

end A138248

/-! ## A138248.P1062151738010509068

`∩[A045393(n+1), A137877(n+1)]`
-/

namespace A138248.P1062151738010509068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138248.P1062151738010509068

namespace A138248

/-- `∩[A045393(n+1), A137877(n+1)]` -/
def P1062151738010509068.Spec : Prop :=
  ∀ n, (P1062151738010509068.a n : ℤ) = A138248 (n + 1)

end A138248

/-! ## A138248.P12600685765593614474

`∩[A045402(n+1), A137877(n+1)]`
-/

namespace A138248.P12600685765593614474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138248.P12600685765593614474

namespace A138248

/-- `∩[A045402(n+1), A137877(n+1)]` -/
def P12600685765593614474.Spec : Prop :=
  ∀ n, (P12600685765593614474.a n : ℤ) = A138248 (n + 1)

end A138248

/-! ## A138248.P11295173078722162390

`∩[A132143(n+1), A137877(n+1)]`
-/

namespace A138248.P11295173078722162390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138248.P11295173078722162390

namespace A138248

/-- `∩[A132143(n+1), A137877(n+1)]` -/
def P11295173078722162390.Spec : Prop :=
  ∀ n, (P11295173078722162390.a n : ℤ) = A138248 (n + 1)

end A138248

/-!
# A138249: Prime numbers k such that 24*k - 1, 24*k + 1 are twin primes.

The programs for A138249, there is no canonical definition to state claims against.
-/

/-! ## A138249.P6780771308385692988

`p?[A137920(n+1)]`
-/

namespace A138249.P6780771308385692988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138249.P6780771308385692988

/-! ## A138249.P4047307556555187482

`∩[A003631(n+1), A137920(n+1)]`
-/

namespace A138249.P4047307556555187482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138249.P4047307556555187482

/-! ## A138249.P750621185861667248

`∩[A042993(n+1), A137920(n+1)]`
-/

namespace A138249.P750621185861667248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138249.P750621185861667248

/-! ## A138249.P5094510169030702890

`∩[A097957(n+1), A137920(n+1)]`
-/

namespace A138249.P5094510169030702890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138249.P5094510169030702890

/-! ## A138249.P3012676286818193337

`∩[A040106(n+1), A137920(n+1)]`
-/

namespace A138249.P3012676286818193337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138249.P3012676286818193337

/-! ## A138249.P10377466997033693453

`∩[A040148(n+1), A137920(n+1)]`
-/

namespace A138249.P10377466997033693453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138249.P10377466997033693453

/-! ## A138249.P13311409365779201959

`∩[A040999(n+1), A137920(n+1)]`
-/

namespace A138249.P13311409365779201959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138249.P13311409365779201959

/-! ## A138249.P6089746113011819823

`∩[A045417(n+1), A137920(n+1)]`
-/

namespace A138249.P6089746113011819823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138249.P6089746113011819823

/-! ## A138249.P2985474731624598720

`∩[A045426(n+1), A137920(n+1)]`
-/

namespace A138249.P2985474731624598720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045426 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138249.P2985474731624598720

/-! ## A138249.P16993258071697475852

`∩[A042986(n+1), A137920(n+1)]`
-/

namespace A138249.P16993258071697475852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138249.P16993258071697475852

/-! ## A138249.P16413563551768544978

`∩[A042991(n+1), A137920(n+1)]`
-/

namespace A138249.P16413563551768544978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138249.P16413563551768544978

/-! ## A138249.P15661224539269018561

`∩[A045321(n+1), A137920(n+1)]`
-/

namespace A138249.P15661224539269018561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138249.P15661224539269018561

/-! ## A138249.P6543566262569964005

`∩[A045327(n+1), A137920(n+1)]`
-/

namespace A138249.P6543566262569964005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138249.P6543566262569964005

/-! ## A138249.P10809645400936993924

`∩[A137920(n+1), A216277(n+1)]`
-/

namespace A138249.P10809645400936993924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138249.P10809645400936993924

/-! ## A138249.P13073534926545663415

`∩[A137920(n+1), A216286(n+1)]`
-/

namespace A138249.P13073534926545663415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216286 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138249.P13073534926545663415

/-! ## A138249.P13044913028785493066

`∩[A023162(n+1), A137920(n+1)]`
-/

namespace A138249.P13044913028785493066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138249.P13044913028785493066

/-! ## A138249.P10699052656513900652

`∩[A049557(n+1), A137920(n+1)]`
-/

namespace A138249.P10699052656513900652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138249.P10699052656513900652

/-! ## A138249.P15231840249836771181

`∩[A040159(n+1), A137920(n+1)]`
-/

namespace A138249.P15231840249836771181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138249.P15231840249836771181

/-! ## A138249.P13265360933490127399

`∩[A040161(n+1), A137920(n+1)]`
-/

namespace A138249.P13265360933490127399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138249.P13265360933490127399

/-!
# A138250: Prime numbers k such that 30*k - 1, 30*k + 1 are twin primes.

The programs for A138250, the canonical program `A138250.P13717186710602461343` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138250 has offset 1).

The definition of A138250 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 799 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138250.P13717186710602461343

`p?[A176114(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A138250

/-- `p?[A176114(n+1)]` -/
def P13717186710602461343.Spec : Prop :=
  ∀ n, P13717186710602461343.a n = A138250 (n + 1)

theorem P13717186710602461343.correct : P13717186710602461343.Spec := by
  intro n
  simp only [A138250, Nat.add_sub_cancel]

end A138250

/-! ## A138250.P12229928575479323249

`p?[floor(A282326(n+1)/30)]`
-/

namespace A138250.P12229928575479323249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A282326 (n + 1) : ℚ) / 30⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138250.P12229928575479323249

namespace A138250

/-- `p?[floor(A282326(n+1)/30)]` -/
def P12229928575479323249.Spec : Prop :=
  ∀ n, P12229928575479323249.a n = A138250 (n + 1)

end A138250

/-! ## A138250.P6186287517669226034

`∩[A045353(n+1), A176114(n+1)]`
-/

namespace A138250.P6186287517669226034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138250.P6186287517669226034

namespace A138250

/-- `∩[A045353(n+1), A176114(n+1)]` -/
def P6186287517669226034.Spec : Prop :=
  ∀ n, (P6186287517669226034.a n : ℤ) = A138250 (n + 1)

end A138250

/-! ## A138250.P13398215998348384442

`∩[A045364(n+1), A176114(n+1)]`
-/

namespace A138250.P13398215998348384442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138250.P13398215998348384442

namespace A138250

/-- `∩[A045364(n+1), A176114(n+1)]` -/
def P13398215998348384442.Spec : Prop :=
  ∀ n, (P13398215998348384442.a n : ℤ) = A138250 (n + 1)

end A138250

/-! ## A138250.P3619019266312611620

`∩[A051645(n+1), A176114(n+1)]`
-/

namespace A138250.P3619019266312611620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138250.P3619019266312611620

namespace A138250

/-- `∩[A051645(n+1), A176114(n+1)]` -/
def P3619019266312611620.Spec : Prop :=
  ∀ n, (P3619019266312611620.a n : ℤ) = A138250 (n + 1)

end A138250

/-! ## A138250.P33666313857126518

`∩[A176114(n+1), A042990(n)]`
-/

namespace A138250.P33666313857126518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138250.P33666313857126518

namespace A138250

/-- `∩[A176114(n+1), A042990(n)]` -/
def P33666313857126518.Spec : Prop :=
  ∀ n, (P33666313857126518.a n : ℤ) = A138250 (n + 1)

end A138250

/-! ## A138250.P4699938547967001764

`∩[A045311(n+1), A176114(n+1)]`
-/

namespace A138250.P4699938547967001764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138250.P4699938547967001764

namespace A138250

/-- `∩[A045311(n+1), A176114(n+1)]` -/
def P4699938547967001764.Spec : Prop :=
  ∀ n, (P4699938547967001764.a n : ℤ) = A138250 (n + 1)

end A138250

/-! ## A138250.P10429031428439387322

`∩[A045346(n+1), A176114(n+1)]`
-/

namespace A138250.P10429031428439387322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138250.P10429031428439387322

namespace A138250

/-- `∩[A045346(n+1), A176114(n+1)]` -/
def P10429031428439387322.Spec : Prop :=
  ∀ n, (P10429031428439387322.a n : ℤ) = A138250 (n + 1)

end A138250

/-! ## A138250.P9339511761658367995

`∩[A045360(n+1), A176114(n+1)]`
-/

namespace A138250.P9339511761658367995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138250.P9339511761658367995

namespace A138250

/-- `∩[A045360(n+1), A176114(n+1)]` -/
def P9339511761658367995.Spec : Prop :=
  ∀ n, (P9339511761658367995.a n : ℤ) = A138250 (n + 1)

end A138250

/-! ## A138250.P14962467253606923418

`∩[A165666(n+1), A176114(n+1)]`
-/

namespace A138250.P14962467253606923418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138250.P14962467253606923418

namespace A138250

/-- `∩[A165666(n+1), A176114(n+1)]` -/
def P14962467253606923418.Spec : Prop :=
  ∀ n, (P14962467253606923418.a n : ℤ) = A138250 (n + 1)

end A138250

/-! ## A138250.P9747835025905387360

`∩[A049561(n+1), A176114(n+1)]`
-/

namespace A138250.P9747835025905387360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138250.P9747835025905387360

namespace A138250

/-- `∩[A049561(n+1), A176114(n+1)]` -/
def P9747835025905387360.Spec : Prop :=
  ∀ n, (P9747835025905387360.a n : ℤ) = A138250 (n + 1)

end A138250

/-! ## A138250.P5452918167313157719

`∩[A176114(n+1), A216883(n+1)]`
-/

namespace A138250.P5452918167313157719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138250.P5452918167313157719

namespace A138250

/-- `∩[A176114(n+1), A216883(n+1)]` -/
def P5452918167313157719.Spec : Prop :=
  ∀ n, (P5452918167313157719.a n : ℤ) = A138250 (n + 1)

end A138250

/-! ## A138250.P11978383297598703303

`∩[A070957(n+1), A176114(n+1)]`
-/

namespace A138250.P11978383297598703303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138250.P11978383297598703303

namespace A138250

/-- `∩[A070957(n+1), A176114(n+1)]` -/
def P11978383297598703303.Spec : Prop :=
  ∀ n, (P11978383297598703303.a n : ℤ) = A138250 (n + 1)

end A138250

/-! ## A138250.P1092755216802750296

`∩[A106118(n+1), A176114(n+1)]`
-/

namespace A138250.P1092755216802750296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138250.P1092755216802750296

namespace A138250

/-- `∩[A106118(n+1), A176114(n+1)]` -/
def P1092755216802750296.Spec : Prop :=
  ∀ n, (P1092755216802750296.a n : ℤ) = A138250 (n + 1)

end A138250

/-! ## A138250.P13381712410188065291

`∩[A138837(n+1), A176114(n+1)]`
-/

namespace A138250.P13381712410188065291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138250.P13381712410188065291

namespace A138250

/-- `∩[A138837(n+1), A176114(n+1)]` -/
def P13381712410188065291.Spec : Prop :=
  ∀ n, (P13381712410188065291.a n : ℤ) = A138250 (n + 1)

end A138250

/-! ## A138250.P3371558883336579342

`∩[A000040(n+1), A176114(n+1)]`
-/

namespace A138250.P3371558883336579342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138250.P3371558883336579342

namespace A138250

/-- `∩[A000040(n+1), A176114(n+1)]` -/
def P3371558883336579342.Spec : Prop :=
  ∀ n, (P3371558883336579342.a n : ℤ) = A138250 (n + 1)

end A138250

/-! ## A138250.P5784313291260766846

`∩[A045344(n+1), A176114(n+1)]`
-/

namespace A138250.P5784313291260766846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138250.P5784313291260766846

namespace A138250

/-- `∩[A045344(n+1), A176114(n+1)]` -/
def P5784313291260766846.Spec : Prop :=
  ∀ n, (P5784313291260766846.a n : ℤ) = A138250 (n + 1)

end A138250

/-! ## A138250.P8363325942978987006

`∩[A175787(n+1), A176114(n+1)]`
-/

namespace A138250.P8363325942978987006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138250.P8363325942978987006

namespace A138250

/-- `∩[A175787(n+1), A176114(n+1)]` -/
def P8363325942978987006.Spec : Prop :=
  ∀ n, (P8363325942978987006.a n : ℤ) = A138250 (n + 1)

end A138250

/-! ## A138250.P13357371402149329756

`∩[A176114(n+1), A182986(n+1)]`
-/

namespace A138250.P13357371402149329756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138250.P13357371402149329756

namespace A138250

/-- `∩[A176114(n+1), A182986(n+1)]` -/
def P13357371402149329756.Spec : Prop :=
  ∀ n, (P13357371402149329756.a n : ℤ) = A138250 (n + 1)

end A138250

/-!
# A138251: Beatty sequence of the positive root of x^3 - x^2 - 1.

The programs for A138251, there is no canonical definition to state claims against.
-/

/-! ## A138251.P6829092999344772196

`lt[tan(n-8), γ]`
-/

namespace A138251.P6829092999344772196
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan ((n : ℤ) - 8 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.eulerMascheroniConstant

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A138251.P6829092999344772196

/-! ## A138251.P5709913247521109270

`comp[floor(22*n/7)]`
-/

namespace A138251.P5709913247521109270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊22 * ((n : ℚ) / 7)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138251.P5709913247521109270

/-! ## A138251.P7867626525855699054

`lt[tan(n+2)², 3]`
-/

namespace A138251.P7867626525855699054
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (n + 2 : ℝ) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A138251.P7867626525855699054

/-! ## A138251.P1619287863256469633

`lt[0, ratio[sin(n+3)]]`
-/

namespace A138251.P1619287863256469633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n + 3 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) / f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A138251.P1619287863256469633

/-! ## A138251.P7035839856481363427

`lt[Δ[cot(n+3)], 0]`
-/

namespace A138251.P7035839856481363427
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (n + 3 : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n

end

end A138251.P7035839856481363427

/-! ## A138251.P391125054052940245

`lt[cos(4), cot(n+3)]`
-/

namespace A138251.P391125054052940245
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (4 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (n + 3 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A138251.P391125054052940245

/-! ## A138251.P657219351214212604

`lt[sin(10), cot(n+3)]`
-/

namespace A138251.P657219351214212604
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (10 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (n + 3 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A138251.P657219351214212604

/-! ## A138251.P1228354917319380286

`lt[cot(n+4), cot(1)]`
-/

namespace A138251.P1228354917319380286
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (n + 4 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A138251.P1228354917319380286

/-! ## A138251.P16703730107091921238

`lt[sin(7-2*n), γ]`
-/

namespace A138251.P16703730107091921238
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (7 - (2 * n : ℤ) : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.eulerMascheroniConstant

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A138251.P16703730107091921238

/-! ## A138251.P14891603516590781706

`lt[sin(n+2)^4, γ]`
-/

namespace A138251.P14891603516590781706
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n + 2 : ℝ) ^ 4

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.eulerMascheroniConstant

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A138251.P14891603516590781706

/-!
# A138252: Beatty sequence of the number t satisfying 1/s + 1/t = 1, where s is the positive root of x^3 - x^2 - 1.

The programs for A138252, there is no canonical definition to state claims against.
-/

/-! ## A138252.P14223266621463937305

`round(∑[sqrt(10-char[n²])])`
-/

namespace A138252.P14223266621463937305
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (10 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A138252.P14223266621463937305

/-! ## A138252.P14049091200949502156

`floor((cot(7)+2)*(n+1))`
-/

namespace A138252.P14049091200949502156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.cot (7 : ℝ) + 2) * (n + 1 : ℝ)⌋

end

end A138252.P14049091200949502156

/-! ## A138252.P15359468822672839724

`comp[floor(n*sqrt(2)/cos(50))]`
-/

namespace A138252.P15359468822672839724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ) / Real.cos (50 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138252.P15359468822672839724

/-! ## A138252.P5148448412620781644

`floor((n+1)*sinh(sinh(sinh(1)²)))`
-/

namespace A138252.P5148448412620781644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sinh (Real.sinh (Real.sinh (1 : ℝ) ^ 2))⌋

end

end A138252.P5148448412620781644

/-! ## A138252.P7070877929181262430

`ceil((n+1)*sinh(sinh(sinh(1)²)))-1`
-/

namespace A138252.P7070877929181262430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.sinh (Real.sinh (Real.sinh (1 : ℝ) ^ 2))⌉ - 1

end

end A138252.P7070877929181262430

/-! ## A138252.P18165940013952975782

`ceil((n+1)/tan(7)+2*n+1)`
-/

namespace A138252.P18165940013952975782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.tan (7 : ℝ) + (2 * n + 1 : ℝ)⌉

end

end A138252.P18165940013952975782

/-! ## A138252.P6519505787764335842

`ceil((n+1)*cot(7)+2*n+1)`
-/

namespace A138252.P6519505787764335842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.cot (7 : ℝ) + (2 * n + 1 : ℝ)⌉

end

end A138252.P6519505787764335842

/-! ## A138252.P10931158511008238461

`∑[A276870(n+15)]`
-/

namespace A138252.P10931158511008238461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276870 (n + 15)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138252.P10931158511008238461

/-! ## A138252.P13123739729657712181

`floor(log2(A209239(n+1)²))`
-/

namespace A138252.P13123739729657712181
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A209239 (n + 1) ^ 2).toNat

end

end A138252.P13123739729657712181

/-! ## A138252.P4174187130764940918

`A195174(n+15)+3*n`
-/

namespace A138252.P4174187130764940918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (n + 15) + (3 * n : ℤ)

end

end A138252.P4174187130764940918

/-!
# A138253: Beatty discrepancy of the complementary equation b(n) = a(a(n)) + n.

The programs for A138253, there is no canonical definition to state claims against.
-/

/-! ## A138253.P2638796216571761741

`A060950(A162854(n+1)*A318545(n+1))`
-/

namespace A138253.P2638796216571761741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060950 (A162854 (n + 1) * A318545 (n + 1)).toNat

end

end A138253.P2638796216571761741

/-! ## A138253.P2795806114098367611

`A287341(Δ[A192167(n+3)])`
-/

namespace A138253.P2795806114098367611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192167 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287341 (f1 (n + 1) - f1 n).toNat

end

end A138253.P2795806114098367611

/-! ## A138253.P13653081196448212850

`A346100(A000788(n)+p?[A131732(n)])`
-/

namespace A138253.P13653081196448212850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346100 (A000788 n + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A138253.P13653081196448212850

/-! ## A138253.P5068074865645653820

`A080843(A325781(3*n+4))^A080843(n+4)`
-/

namespace A138253.P5068074865645653820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080843 (A325781 (3 * n + 4)).toNat : ℚ) ^ (A080843 (n + 4) : ℤ)

end

end A138253.P5068074865645653820

/-! ## A138253.P13216441238661171966

`val(A329953(n+1), A232932(A329954(n+2)))`
-/

namespace A138253.P13216441238661171966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A329953 (n + 1)).toNat (A232932 (A329954 (n + 2)).toNat).toNat

end

end A138253.P13216441238661171966

/-!
# A138265: Number of upper triangular zero-one matrices with n ones and no zero rows or columns.

The programs for A138265, there is no canonical definition to state claims against.
-/

/-! ## A138265.P4928393592951433540

`A242153(∑[n])`
-/

namespace A138265.P4928393592951433540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242153 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A138265.P4928393592951433540

/-! ## A138265.P11926343994143982266

`A264909(∑[n+2]-1)`
-/

namespace A138265.P11926343994143982266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264909 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A138265.P11926343994143982266

/-! ## A138265.P3695789009658770977

`lcm(A033999(n), A242153(A000217(n)))`
-/

namespace A138265.P3695789009658770977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A242153 (A000217 n).toNat)

end

end A138265.P3695789009658770977

/-! ## A138265.P13396849169080453345

`or(A000007(n), A242153(A000217(n)))`
-/

namespace A138265.P13396849169080453345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A242153 (A000217 n).toNat)

end

end A138265.P13396849169080453345

/-! ## A138265.P6675968627061867448

`or(A094497(n), A242153(A000217(n)))`
-/

namespace A138265.P6675968627061867448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A094497 n) (A242153 (A000217 n).toNat)

end

end A138265.P6675968627061867448

/-! ## A138265.P8122067585309969674

`A218757(∑[n+1]+1)`
-/

namespace A138265.P8122067585309969674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218757 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A138265.P8122067585309969674

/-! ## A138265.P5582582306512776410

`A193344(∑[n])`
-/

namespace A138265.P5582582306512776410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193344 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A138265.P5582582306512776410

/-!
# A138268: Negative of the Hankel transform of C(n) - C(n+2), where C = A000108.

The programs for A138268, the canonical program `A138268.P13452783451208394077` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138268 has offset 0).

The definition of A138268 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138268.P13452783451208394077

`-A275858(2*(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A138268

/-- `-A275858(2*(n+1))` -/
def P13452783451208394077.Spec : Prop :=
  ∀ n, P13452783451208394077.a n = A138268 n

theorem P13452783451208394077.correct : P13452783451208394077.Spec := by
  intro n
  simp only [A138268]

end A138268

/-! ## A138268.P10573456864876772026

`A128834(3*n)-A275858(2*n+2)`
-/

namespace A138268.P10573456864876772026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (3 * n) - A275858 (2 * n + 2)

end

end A138268.P10573456864876772026

namespace A138268

/-- `A128834(3*n)-A275858(2*n+2)` -/
def P10573456864876772026.Spec : Prop :=
  ∀ n, P10573456864876772026.a n = A138268 n

end A138268

/-! ## A138268.P13433736153214578483

`A275858(2*n)-A306637(2*n+3)`
-/

namespace A138268.P13433736153214578483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275858 (2 * n) - A306637 (2 * n + 3)

end

end A138268.P13433736153214578483

namespace A138268

/-- `A275858(2*n)-A306637(2*n+3)` -/
def P13433736153214578483.Spec : Prop :=
  ∀ n, P13433736153214578483.a n = A138268 n

end A138268

/-! ## A138268.P8803332431787547789

`n*A036987(2*n)-A275858(2*(n+1))`
-/

namespace A138268.P8803332431787547789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A036987 (2 * n) - A275858 (2 * (n + 1))

end

end A138268.P8803332431787547789

namespace A138268

/-- `n*A036987(2*n)-A275858(2*(n+1))` -/
def P8803332431787547789.Spec : Prop :=
  ∀ n, P8803332431787547789.a n = A138268 n

end A138268

/-! ## A138268.P6515283225033699081

`A007814(A014491(n+1))-A275858(2*(n+1))`
-/

namespace A138268.P6515283225033699081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A014491 (n + 1)).toNat - A275858 (2 * (n + 1))

end

end A138268.P6515283225033699081

namespace A138268

/-- `A007814(A014491(n+1))-A275858(2*(n+1))` -/
def P6515283225033699081.Spec : Prop :=
  ∀ n, P6515283225033699081.a n = A138268 n

end A138268

/-! ## A138268.P2301815687568160081

`A007814(A026139(n+1))-A275858(2*(n+1))`
-/

namespace A138268.P2301815687568160081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A026139 (n + 1)).toNat - A275858 (2 * (n + 1))

end

end A138268.P2301815687568160081

namespace A138268

/-- `A007814(A026139(n+1))-A275858(2*(n+1))` -/
def P2301815687568160081.Spec : Prop :=
  ∀ n, P2301815687568160081.a n = A138268 n

end A138268

/-! ## A138268.P5096781841856537559

`A083918(A000040(n+1))-A275858(2*(n+1))`
-/

namespace A138268.P5096781841856537559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083918 (A000040 (n + 1)).toNat - A275858 (2 * (n + 1))

end

end A138268.P5096781841856537559

namespace A138268

/-- `A083918(A000040(n+1))-A275858(2*(n+1))` -/
def P5096781841856537559.Spec : Prop :=
  ∀ n, P5096781841856537559.a n = A138268 n

end A138268

/-! ## A138268.P3192710624938231167

`A007814(A134454(n+1))-A275858(2*(n+1))`
-/

namespace A138268.P3192710624938231167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A134454 (n + 1)).toNat - A275858 (2 * (n + 1))

end

end A138268.P3192710624938231167

namespace A138268

/-- `A007814(A134454(n+1))-A275858(2*(n+1))` -/
def P3192710624938231167.Spec : Prop :=
  ∀ n, P3192710624938231167.a n = A138268 n

end A138268

/-! ## A138268.P11754526112541413280

`A007814(A024896(n+2))-A275858(2*(n+1))`
-/

namespace A138268.P11754526112541413280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A024896 (n + 2)).toNat - A275858 (2 * (n + 1))

end

end A138268.P11754526112541413280

namespace A138268

/-- `A007814(A024896(n+2))-A275858(2*(n+1))` -/
def P11754526112541413280.Spec : Prop :=
  ∀ n, P11754526112541413280.a n = A138268 n

end A138268

/-! ## A138268.P12292610407580117724

`A300130(and(2, A255723(n)))-A275858(2*(n+1))`
-/

namespace A138268.P12292610407580117724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300130 (Int.land 2 (A255723 n)).toNat - A275858 (2 * (n + 1))

end

end A138268.P12292610407580117724

namespace A138268

/-- `A300130(and(2, A255723(n)))-A275858(2*(n+1))` -/
def P12292610407580117724.Spec : Prop :=
  ∀ n, P12292610407580117724.a n = A138268 n

end A138268

/-!
# A138269: a(n+1) is the Hankel transform of C(n)+C(n+2), where C(n) = A000108(n).

The programs for A138269, the canonical program `A138269.P7545573085128954422` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138269 has offset 0).

The definition of A138269 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138269.P7545573085128954422

`5*a(n-1)-4*a(n-2)+5*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=12, a(3)=53`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A138269

/-- `5*a(n-1)-4*a(n-2)+5*a(n-3)-a(n-4)` -/
def P7545573085128954422.Spec : Prop :=
  ∀ n, P7545573085128954422.a n = A138269 n

theorem P7545573085128954422.correct : P7545573085128954422.Spec := by
  intro n
  simp only [A138269]

end A138269

/-! ## A138269.P318751150035251910

`ogf((1-2x+x^2)/(1-5x+4x^2-5x^3+x^4))`
-/

namespace A138269.P318751150035251910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1] [1, -5, 4, -5, 1] n

end

end A138269.P318751150035251910

namespace A138269

/-- `ogf((1-2x+x^2)/(1-5x+4x^2-5x^3+x^4))` -/
def P318751150035251910.Spec : Prop :=
  ∀ n, P318751150035251910.a n = A138269 n

end A138269

/-! ## A138269.P3289612459350831589

`A092886(Δ[n²])`
-/

namespace A138269.P3289612459350831589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092886 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A138269.P3289612459350831589

namespace A138269

/-- `A092886(Δ[n²])` -/
def P3289612459350831589.Spec : Prop :=
  ∀ n, P3289612459350831589.a n = A138269 n

end A138269

/-! ## A138269.P6747184026336481928

`∑[A105309(2*n)]`
-/

namespace A138269.P6747184026336481928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105309 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138269.P6747184026336481928

namespace A138269

/-- `∑[A105309(2*n)]` -/
def P6747184026336481928.Spec : Prop :=
  ∀ n, P6747184026336481928.a n = A138269 n

end A138269

/-! ## A138269.P2354563298144244423

`∑[A240513(A004277(n))-1]`
-/

namespace A138269.P2354563298144244423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240513 (A004277 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138269.P2354563298144244423

namespace A138269

/-- `∑[A240513(A004277(n))-1]` -/
def P2354563298144244423.Spec : Prop :=
  ∀ n, P2354563298144244423.a n = A138269 n

end A138269

/-! ## A138269.P15491868451361907036

`record[A092886(A000265(n+1))]`
-/

namespace A138269.P15491868451361907036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092886 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138269.P15491868451361907036

namespace A138269

/-- `record[A092886(A000265(n+1))]` -/
def P15491868451361907036.Spec : Prop :=
  ∀ n, P15491868451361907036.a n = A138269 n

end A138269

/-! ## A138269.P17505409199244947785

`record[A092886(2*A025480(n)+1)]`
-/

namespace A138269.P17505409199244947785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092886 (2 * A025480 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138269.P17505409199244947785

namespace A138269

/-- `record[A092886(2*A025480(n)+1)]` -/
def P17505409199244947785.Spec : Prop :=
  ∀ n, P17505409199244947785.a n = A138269 n

end A138269

/-! ## A138269.P1396544384038019253

`A092886(2*n+1)*A318658(2*(n+2))`
-/

namespace A138269.P1396544384038019253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092886 (2 * n + 1) * A318658 (2 * (n + 2))

end

end A138269.P1396544384038019253

namespace A138269

/-- `A092886(2*n+1)*A318658(2*(n+2))` -/
def P1396544384038019253.Spec : Prop :=
  ∀ n, P1396544384038019253.a n = A138269 n

end A138269

/-! ## A138269.P11034742195520128038

`A101400(2*n+1)-Δ[A105309(2*n)]`
-/

namespace A138269.P11034742195520128038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105309 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101400 (2 * n + 1) - (f1 (n + 1) - f1 n)

end

end A138269.P11034742195520128038

namespace A138269

/-- `A101400(2*n+1)-Δ[A105309(2*n)]` -/
def P11034742195520128038.Spec : Prop :=
  ∀ n, P11034742195520128038.a n = A138269 n

end A138269

/-! ## A138269.P10109485915687885325

`A101400(2*n+1)-A119749(2*(n+1))`
-/

namespace A138269.P10109485915687885325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101400 (2 * n + 1) - A119749 (2 * (n + 1))

end

end A138269.P10109485915687885325

namespace A138269

/-- `A101400(2*n+1)-A119749(2*(n+1))` -/
def P10109485915687885325.Spec : Prop :=
  ∀ n, P10109485915687885325.a n = A138269 n

end A138269

/-! ## A138269.P17647733775356715443

`A242510(2*n+1)-A105309(2*n+1)`
-/

namespace A138269.P17647733775356715443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242510 (2 * n + 1) - A105309 (2 * n + 1)

end

end A138269.P17647733775356715443

namespace A138269

/-- `A242510(2*n+1)-A105309(2*n+1)` -/
def P17647733775356715443.Spec : Prop :=
  ∀ n, P17647733775356715443.a n = A138269 n

end A138269

/-! ## A138269.P9710171090817907504

`A092886(2*n+3)-A105309(2*(n+1))`
-/

namespace A138269.P9710171090817907504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092886 (2 * n + 3) - A105309 (2 * (n + 1))

end

end A138269.P9710171090817907504

namespace A138269

/-- `A092886(2*n+3)-A105309(2*(n+1))` -/
def P9710171090817907504.Spec : Prop :=
  ∀ n, P9710171090817907504.a n = A138269 n

end A138269

/-! ## A138269.P6268922847641234799

`(A119749(2*n+1)+A105309(2*n))/2`
-/

namespace A138269.P6268922847641234799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119749 (2 * n + 1) + A105309 (2 * n) : ℚ) / 2

end

end A138269.P6268922847641234799

namespace A138269

/-- `(A119749(2*n+1)+A105309(2*n))/2` -/
def P6268922847641234799.Spec : Prop :=
  ∀ n, P6268922847641234799.a n = (A138269 n : ℚ)

end A138269

/-! ## A138269.P14710731365848328864

`A119749(2*n+3)-A092886(2*n+3)`
-/

namespace A138269.P14710731365848328864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119749 (2 * n + 3) - A092886 (2 * n + 3)

end

end A138269.P14710731365848328864

namespace A138269

/-- `A119749(2*n+3)-A092886(2*n+3)` -/
def P14710731365848328864.Spec : Prop :=
  ∀ n, P14710731365848328864.a n = A138269 n

end A138269

/-! ## A138269.P14460093416388083704

`A242510(2*n+1)+1-A240513(2*n+1)`
-/

namespace A138269.P14460093416388083704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242510 (2 * n + 1) + (1 - A240513 (2 * n + 1))

end

end A138269.P14460093416388083704

namespace A138269

/-- `A242510(2*n+1)+1-A240513(2*n+1)` -/
def P14460093416388083704.Spec : Prop :=
  ∀ n, P14460093416388083704.a n = A138269 n

end A138269

/-! ## A138269.P16912855238879881406

`gcd(A092886(2*n+1)*A092886(n+1), A092886(2*n+1))`
-/

namespace A138269.P16912855238879881406
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A092886 (2 * n + 1) * A092886 (n + 1)) (A092886 (2 * n + 1))

end

end A138269.P16912855238879881406

namespace A138269

/-- `gcd(A092886(2*n+1)*A092886(n+1), A092886(2*n+1))` -/
def P16912855238879881406.Spec : Prop :=
  ∀ n, (P16912855238879881406.a n : ℤ) = A138269 n

end A138269

/-!
# A138272: Column 0 of triangle A138271; also, column 3 of A138271 shift left; also, column 0 of matrix power A138271^4 shift right.

The programs for A138272, there is no canonical definition to state claims against.
-/

/-! ## A138272.P4814671738348951317

`A138271(∑[n])`
-/

namespace A138272.P4814671738348951317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138271 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A138272.P4814671738348951317

/-! ## A138272.P14214589399589916794

`and(-1, A138271(A000217(n)))`
-/

namespace A138272.P14214589399589916794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A138271 (A000217 n).toNat)

end

end A138272.P14214589399589916794

/-! ## A138272.P14991951701849835216

`A138271(A000217(n))+A045887(n)`
-/

namespace A138272.P14991951701849835216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138271 (A000217 n).toNat + A045887 n

end

end A138272.P14991951701849835216

/-! ## A138272.P11402296028363491026

`A184945(n)+A138271(A000217(n))`
-/

namespace A138272.P11402296028363491026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184945 n + A138271 (A000217 n).toNat

end

end A138272.P11402296028363491026

/-! ## A138272.P4902419209270892268

`A185213(n)+A138271(A000217(n))`
-/

namespace A138272.P4902419209270892268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185213 n + A138271 (A000217 n).toNat

end

end A138272.P4902419209270892268

/-!
# A138273: Column 1 of triangle A138271; also, column 0 of matrix power A138271^2.

The programs for A138273, there is no canonical definition to state claims against.
-/

/-! ## A138273.P34223387959186282

`record[A138271(comp[∑[n]])]`
-/

namespace A138273.P34223387959186282
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138271 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138273.P34223387959186282

/-! ## A138273.P18026652422527818251

`A138271(∑[n+1]+1)`
-/

namespace A138273.P18026652422527818251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138271 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A138273.P18026652422527818251

/-! ## A138273.P11727848732282237648

`record[gcd(A052173(n), A138271(n))]`
-/

namespace A138273.P11727848732282237648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052173 n) (A138271 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138273.P11727848732282237648

/-! ## A138273.P10198878697911589738

`record[and(A108299(n), A138271(n))]`
-/

namespace A138273.P10198878697911589738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108299 n) (A138271 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138273.P10198878697911589738

/-! ## A138273.P15016618132107255022

`record[A138271(n)*A214568(n+1)]`
-/

namespace A138273.P15016618132107255022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138271 n * A214568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138273.P15016618132107255022

/-!
# A138274: Column 2 of triangle A138271; also, column 0 of matrix power A138271^3.

The programs for A138274, there is no canonical definition to state claims against.
-/

/-! ## A138274.P10315811462158361897

`A138271(∑[n+2]+3)`
-/

namespace A138274.P10315811462158361897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138271 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A138274.P10315811462158361897

/-!
# A138275: Central terms of triangle A138271.

The programs for A138275, there is no canonical definition to state claims against.
-/

/-! ## A138275.P15015221528207351731

`A138271(∑[4*n])`
-/

namespace A138275.P15015221528207351731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138271 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A138275.P15015221528207351731

/-!
# A138276: Total number of active nodes of the Rule 150 cellular automaton on an infinite Bethe lattice with coordination number 3 (with a single 1 as initial condition).

The programs for A138276, there is no canonical definition to state claims against.
-/

/-! ## A138276.P10597022776942585406

`A053456(n)+A001650(A090896(n+1))`
-/

namespace A138276.P10597022776942585406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053456 n + A001650 (A090896 (n + 1)).toNat

end

end A138276.P10597022776942585406

/-!
# A138277: Total number of active nodes of the Rule 150 cellular automaton on an infinite Bethe lattice with coordination number 4 (with a single 1 as initial condition).

The programs for A138277, there is no canonical definition to state claims against.
-/

/-! ## A138277.P4424296277302773251

`A308000(A000322(2*n+3))+A078588(n)`
-/

namespace A138277.P4424296277302773251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308000 (A000322 (2 * n + 3)).toNat + A078588 n

end

end A138277.P4424296277302773251

/-!
# A138278: Sequence identical to its third differences in absolute values.

The programs for A138278, the canonical program `A138278.P13145717482943158225` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138278 has offset 0).

The definition of A138278 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138278.P13145717482943158225

`5*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16, a(5)=24`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A138278

/-- `5*a(n-3)` -/
def P13145717482943158225.Spec : Prop :=
  ∀ n, (P13145717482943158225.a n : ℤ) = A138278 n

theorem P13145717482943158225.correct : P13145717482943158225.Spec := by
  intro n
  simp only [A138278]

end A138278

/-! ## A138278.P18394048659594149144

`a(n-1)+a(n-gcd(2, n%3))` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`
-/

namespace A138278.P18394048659594149144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 8] fun n a =>
  a (n - 1) + a (n - Nat.gcd 2 (n % 3))

end

end A138278.P18394048659594149144

namespace A138278

/-- `a(n-1)+a(n-gcd(2, n%3))` -/
def P18394048659594149144.Spec : Prop :=
  ∀ n, (P18394048659594149144.a n : ℤ) = A138278 n

end A138278

/-! ## A138278.P15230349165792725799

`A132158(n)+A133335(n)-A131761(n)`
-/

namespace A138278.P15230349165792725799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132158 n + (A133335 n - A131761 n)

end

end A138278.P15230349165792725799

namespace A138278

/-- `A132158(n)+A133335(n)-A131761(n)` -/
def P15230349165792725799.Spec : Prop :=
  ∀ n, P15230349165792725799.a n = A138278 n

end A138278

/-! ## A138278.P6096170882635012590

`record[Δ[A045965(A246080(n+1))]]`
-/

namespace A138278.P6096170882635012590
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (A246080 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138278.P6096170882635012590

namespace A138278

/-- `record[Δ[A045965(A246080(n+1))]]` -/
def P6096170882635012590.Spec : Prop :=
  ∀ n, P6096170882635012590.a n = A138278 n

end A138278

/-! ## A138278.P4806018793771707699

`record[Δ[A048673(A246081(n+1))]]`
-/

namespace A138278.P4806018793771707699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (A246081 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138278.P4806018793771707699

namespace A138278

/-- `record[Δ[A048673(A246081(n+1))]]` -/
def P4806018793771707699.Spec : Prop :=
  ∀ n, P4806018793771707699.a n = A138278 n

end A138278

/-!
# A138279: Last digit of A136324. After 0, 1, period 4: repeat [1, 2, 5, 6] = A131800.

The programs for A138279, the canonical program `A138279.P17793872054523664091` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138279 has offset 0).

The definition of A138279 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138279.P17793872054523664091

`a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=5, a(5)=6`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A138279

/-- `a(n-4)` -/
def P17793872054523664091.Spec : Prop :=
  ∀ n, (P17793872054523664091.a n : ℤ) = A138279 n

theorem P17793872054523664091.correct : P17793872054523664091.Spec := by
  intro n
  simp only [A138279]

end A138279

/-!
# A138281: a(n) = floor((sqrt(2) + sqrt(3))^n).

The programs for A138281, the canonical program `A138281.P1518828751251360841` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138281 has offset 0).

The definition of A138281 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138281.P1518828751251360841

`floor((sqrt(2)+sqrt(3))^n)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A138281

/-- `floor((sqrt(2)+sqrt(3))^n)` -/
def P1518828751251360841.Spec : Prop :=
  ∀ n, P1518828751251360841.a n = A138281 n

theorem P1518828751251360841.correct : P1518828751251360841.Spec := by
  intro n
  simp only [A138281]

end A138281

/-! ## A138281.P8374241561381956676

`ceil(sqrt(A087799(n)))-1`
-/

namespace A138281.P8374241561381956676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A087799 n : ℝ)⌉ - 1

end

end A138281.P8374241561381956676

namespace A138281

/-- `ceil(sqrt(A087799(n)))-1` -/
def P8374241561381956676.Spec : Prop :=
  ∀ n, P8374241561381956676.a n = A138281 n

end A138281

/-! ## A138281.P856025066931551578

`A264668(n)+floor(sqrt(A087799(n)))`
-/

namespace A138281.P856025066931551578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n + Int.sqrt (A087799 n)

end

end A138281.P856025066931551578

namespace A138281

/-- `A264668(n)+floor(sqrt(A087799(n)))` -/
def P856025066931551578.Spec : Prop :=
  ∀ n, P856025066931551578.a n = A138281 n

end A138281

/-! ## A138281.P8908770608194935158

`floor(sqrt(A087799(n)))^A000038(n)!`
-/

namespace A138281.P8908770608194935158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A087799 n) ^ Nat.factorial (A000038 n).toNat

end

end A138281.P8908770608194935158

namespace A138281

/-- `floor(sqrt(A087799(n)))^A000038(n)!` -/
def P8908770608194935158.Spec : Prop :=
  ∀ n, P8908770608194935158.a n = A138281 n

end A138281

/-! ## A138281.P941892418968093990

`A000007(n+1)+floor(sqrt(A087799(n)))`
-/

namespace A138281.P941892418968093990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + Int.sqrt (A087799 n)

end

end A138281.P941892418968093990

namespace A138281

/-- `A000007(n+1)+floor(sqrt(A087799(n)))` -/
def P941892418968093990.Spec : Prop :=
  ∀ n, P941892418968093990.a n = A138281 n

end A138281

/-! ## A138281.P7449696502012199832

`A033999(n)^2*floor(sqrt(A087799(n)))`
-/

namespace A138281.P7449696502012199832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * Int.sqrt (A087799 n)

end

end A138281.P7449696502012199832

namespace A138281

/-- `A033999(n)^2*floor(sqrt(A087799(n)))` -/
def P7449696502012199832.Spec : Prop :=
  ∀ n, P7449696502012199832.a n = A138281 n

end A138281

/-!
# A138286: a(n) = A058162(n) / A000688(n).

The programs for A138286, there is no canonical definition to state claims against.
-/

/-! ## A138286.P4001566827890670070

`A058162(n+1)/A000688(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A138286.P4001566827890670070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058162 (n + 1) : ℚ) / (A000688 (n + 1) : ℚ)

end

end A138286.P4001566827890670070

/-! ## A138286.P1906798164867884276

`A058162(n+1)/A238877(2*n+1)`
-/

namespace A138286.P1906798164867884276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058162 (n + 1) : ℚ) / (A238877 (2 * n + 1) : ℚ)

end

end A138286.P1906798164867884276

/-! ## A138286.P9149015794276043618

`A058162(n+1)/∏{e}[n+1, A000041(#)]`
-/

namespace A138286.P9149015794276043618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058162 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), A000041 (Nat.factorization (f1 n) p) : ℤ) : ℚ)

end

end A138286.P9149015794276043618

/-! ## A138286.P7831330935480122203

`round(A034382(n+1)/(n+1))/A000688(n+1)`
-/

namespace A138286.P7831330935480122203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A034382 (n + 1) : ℚ) / (n + 1 : ℚ)) : ℚ) / (A000688 (n + 1) : ℚ)

end

end A138286.P7831330935480122203

/-! ## A138286.P1995627399480691930

`round(A034382(n+1)/(n+1))/A295879(n+1)`
-/

namespace A138286.P1995627399480691930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A034382 (n + 1) : ℚ) / (n + 1 : ℚ)) : ℚ) / (A295879 (n + 1) : ℚ)

end

end A138286.P1995627399480691930

/-!
# A138287: Palindromic period 10: repeat [0, 2, 8, 4, 6, 6, 4, 8, 2, 0].

The programs for A138287, there is no canonical definition to state claims against.
-/

/-! ## A138287.P14641766321131495710

`8-A156551(n)`
-/

namespace A138287.P14641766321131495710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 - A156551 n

end

end A138287.P14641766321131495710

/-!
# A138288: a(n) = A054320(n) - A001078(n).

The programs for A138288, the canonical program `A138288.P14569179554426450410` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138288 has offset 0).

The definition of A138288 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A054320(n)-A001078(n)` (program `A138288.P14569179554426450410`, by `A138288.P14569179554426450410.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A138288.P5027813148387733185

`10*a(n-1)-a(n-2)` with `a(0)=1, a(1)=9`
-/

namespace A138288.P5027813148387733185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9] fun n a =>
  10 * a (n - 1) - a (n - 2)

end

end A138288.P5027813148387733185

namespace A138288

/-- `10*a(n-1)-a(n-2)` -/
def P5027813148387733185.Spec : Prop :=
  ∀ n, P5027813148387733185.a n = A138288 n

end A138288

/-! ## A138288.P5264134963050490827

`A072256(n+1)`
-/

namespace A138288.P5264134963050490827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072256 (n + 1)

end

end A138288.P5264134963050490827

namespace A138288

/-- `A072256(n+1)` -/
def P5264134963050490827.Spec : Prop :=
  ∀ n, P5264134963050490827.a n = A138288 n

end A138288

/-! ## A138288.P14569179554426450410

`A054320(n)-A001078(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A138288

/-- `A054320(n)-A001078(n)` -/
def P14569179554426450410.Spec : Prop :=
  ∀ n, P14569179554426450410.a n = A138288 n

theorem P14569179554426450410.correct : P14569179554426450410.Spec := by
  intro n
  simp only [A138288]

end A138288

/-! ## A138288.P3349642505719825958

`A001079(n)+2*A001078(n)`
-/

namespace A138288.P3349642505719825958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001079 n + 2 * A001078 n

end

end A138288.P3349642505719825958

namespace A138288

/-- `A001079(n)+2*A001078(n)` -/
def P3349642505719825958.Spec : Prop :=
  ∀ n, P3349642505719825958.a n = A138288 n

end A138288

/-! ## A138288.P13436960301463937112

`ogf((1-x)/(1-10x+x^2))`
-/

namespace A138288.P13436960301463937112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -10, 1] n

end

end A138288.P13436960301463937112

namespace A138288

/-- `ogf((1-x)/(1-10x+x^2))` -/
def P13436960301463937112.Spec : Prop :=
  ∀ n, P13436960301463937112.a n = A138288 n

end A138288

/-! ## A138288.P5308238168640034446

`lcm(10, a(n-1))-a(n-2)` with `a(0)=1, a(1)=9`
-/

namespace A138288.P5308238168640034446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9] fun n a =>
  (Int.lcm 10 (a (n - 1)) : ℤ) - a (n - 2)

end

end A138288.P5308238168640034446

namespace A138288

/-- `lcm(10, a(n-1))-a(n-2)` -/
def P5308238168640034446.Spec : Prop :=
  ∀ n, P5308238168640034446.a n = A138288 n

end A138288

/-! ## A138288.P17315801677459701396

`Δ[A004189(n)]`
-/

namespace A138288.P17315801677459701396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138288.P17315801677459701396

namespace A138288

/-- `Δ[A004189(n)]` -/
def P17315801677459701396.Spec : Prop :=
  ∀ n, P17315801677459701396.a n = A138288 n

end A138288

/-! ## A138288.P3586640018727750246

`A041007(2*n)`
-/

namespace A138288.P3586640018727750246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041007 (2 * n)

end

end A138288.P3586640018727750246

namespace A138288

/-- `A041007(2*n)` -/
def P3586640018727750246.Spec : Prop :=
  ∀ n, P3586640018727750246.a n = A138288 n

end A138288

/-! ## A138288.P4379424662803219827

`A041039(2*n)`
-/

namespace A138288.P4379424662803219827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041039 (2 * n)

end

end A138288.P4379424662803219827

namespace A138288

/-- `A041039(2*n)` -/
def P4379424662803219827.Spec : Prop :=
  ∀ n, P4379424662803219827.a n = A138288 n

end A138288

/-! ## A138288.P11348295430686328000

`A142239(2*n)`
-/

namespace A138288.P11348295430686328000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142239 (2 * n)

end

end A138288.P11348295430686328000

namespace A138288

/-- `A142239(2*n)` -/
def P11348295430686328000.Spec : Prop :=
  ∀ n, P11348295430686328000.a n = A138288 n

end A138288

/-! ## A138288.P2683734922833578534

`A080872(Δ[n²])`
-/

namespace A138288.P2683734922833578534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080872 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A138288.P2683734922833578534

namespace A138288

/-- `A080872(Δ[n²])` -/
def P2683734922833578534.Spec : Prop :=
  ∀ n, P2683734922833578534.a n = A138288 n

end A138288

/-! ## A138288.P4752255362368144710

`2*A105038(n)+1`
-/

namespace A138288.P4752255362368144710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A105038 n + 1

end

end A138288.P4752255362368144710

namespace A138288

/-- `2*A105038(n)+1` -/
def P4752255362368144710.Spec : Prop :=
  ∀ n, P4752255362368144710.a n = A138288 n

end A138288

/-! ## A138288.P10084322064613650747

`A259595(2*n)/3`
-/

namespace A138288.P10084322064613650747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259595 (2 * n) : ℚ) / 3

end

end A138288.P10084322064613650747

namespace A138288

/-- `A259595(2*n)/3` -/
def P10084322064613650747.Spec : Prop :=
  ∀ n, P10084322064613650747.a n = (A138288 n : ℚ)

end A138288

/-! ## A138288.P2452103754076204137

`∑[2*A122652(n)]+1`
-/

namespace A138288.P2452103754076204137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122652 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A138288.P2452103754076204137

namespace A138288

/-- `∑[2*A122652(n)]+1` -/
def P2452103754076204137.Spec : Prop :=
  ∀ n, P2452103754076204137.a n = A138288 n

end A138288

/-! ## A138288.P15291659362418947378

`2*A054318(n+1)-1`
-/

namespace A138288.P15291659362418947378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054318 (n + 1) - 1

end

end A138288.P15291659362418947378

namespace A138288

/-- `2*A054318(n+1)-1` -/
def P15291659362418947378.Spec : Prop :=
  ∀ n, P15291659362418947378.a n = A138288 n

end A138288

/-! ## A138288.P11468790992651958409

`(2*A031138(n+1)+1)/3`
-/

namespace A138288.P11468790992651958409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A031138 (n + 1) + 1 : ℚ) / 3

end

end A138288.P11468790992651958409

namespace A138288

/-- `(2*A031138(n+1)+1)/3` -/
def P11468790992651958409.Spec : Prop :=
  ∀ n, P11468790992651958409.a n = (A138288 n : ℚ)

end A138288

/-! ## A138288.P15580154820232712194

`xor(1, A080872(2*n+1))+1`
-/

namespace A138288.P15580154820232712194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A080872 (2 * n + 1)) + 1

end

end A138288.P15580154820232712194

namespace A138288

/-- `xor(1, A080872(2*n+1))+1` -/
def P15580154820232712194.Spec : Prop :=
  ∀ n, P15580154820232712194.a n = A138288 n

end A138288

/-! ## A138288.P2388880418616859033

`A131093(A016789(n))/2`
-/

namespace A138288.P2388880418616859033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131093 (A016789 n).toNat : ℚ) / 2

end

end A138288.P2388880418616859033

namespace A138288

/-- `A131093(A016789(n))/2` -/
def P2388880418616859033.Spec : Prop :=
  ∀ n, P2388880418616859033.a n = (A138288 n : ℚ)

end A138288

/-! ## A138288.P7038635723059828534

`A122652(n)+A001079(n)`
-/

namespace A138288.P7038635723059828534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122652 n + A001079 n

end

end A138288.P7038635723059828534

namespace A138288

/-- `A122652(n)+A001079(n)` -/
def P7038635723059828534.Spec : Prop :=
  ∀ n, P7038635723059828534.a n = A138288 n

end A138288

/-! ## A138288.P4052865266161729441

`A140780(n)+A122653(n)`
-/

namespace A138288.P4052865266161729441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140780 n + A122653 n

end

end A138288.P4052865266161729441

namespace A138288

/-- `A140780(n)+A122653(n)` -/
def P4052865266161729441.Spec : Prop :=
  ∀ n, P4052865266161729441.a n = A138288 n

end A138288

/-!
# A138289: Row sums of A138060.

The programs for A138289, the canonical program `A138289.P7504803877068324242` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138289 has offset 1).

The definition of A138289 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 712 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138289.P8131281034117119412

`ogf((1+2x+3x^2+4x^3)/(1-x-x^4))`
-/

namespace A138289.P8131281034117119412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 3, 4] [1, -1, 0, 0, -1] n

end

end A138289.P8131281034117119412

namespace A138289

/-- `ogf((1+2x+3x^2+4x^3)/(1-x-x^4))` -/
def P8131281034117119412.Spec : Prop :=
  ∀ n, P8131281034117119412.a n = A138289 (n + 1)

end A138289

/-! ## A138289.P7504803877068324242

`a(n-1)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=10`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A138289

/-- `a(n-1)+a(n-4)` -/
def P7504803877068324242.Spec : Prop :=
  ∀ n, (P7504803877068324242.a n : ℤ) = A138289 (n + 1)

theorem P7504803877068324242.correct : P7504803877068324242.Spec := by
  intro n
  simp only [A138289, Nat.add_sub_cancel]

end A138289

/-! ## A138289.P3982797938172297097

`A003269(n+8)-4*A003269(n+1)`
-/

namespace A138289.P3982797938172297097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (n + 8) - 4 * A003269 (n + 1)

end

end A138289.P3982797938172297097

namespace A138289

/-- `A003269(n+8)-4*A003269(n+1)` -/
def P3982797938172297097.Spec : Prop :=
  ∀ n, P3982797938172297097.a n = A138289 (n + 1)

end A138289

/-! ## A138289.P10665626937338814945

`A003269(n+8)-A008574(A003269(n+1))`
-/

namespace A138289.P10665626937338814945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (n + 8) - A008574 (A003269 (n + 1)).toNat

end

end A138289.P10665626937338814945

namespace A138289

/-- `A003269(n+8)-A008574(A003269(n+1))` -/
def P10665626937338814945.Spec : Prop :=
  ∀ n, P10665626937338814945.a n = A138289 (n + 1)

end A138289

/-! ## A138289.P12592691834597771894

`A017898(n+11)-A008586(A017898(n+4))`
-/

namespace A138289.P12592691834597771894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (n + 11) - A008586 (A017898 (n + 4)).toNat

end

end A138289.P12592691834597771894

namespace A138289

/-- `A017898(n+11)-A008586(A017898(n+4))` -/
def P12592691834597771894.Spec : Prop :=
  ∀ n, P12592691834597771894.a n = A138289 (n + 1)

end A138289

/-!
# A138290: Numbers m such that 2^(m+1) - 2^k - 1 is composite for all 0 <= k < m.

The programs for A138290, there is no canonical definition to state claims against.
-/

/-! ## A138290.P11110933758154460108

`A369375(n+2)-1`
-/

namespace A138290.P11110933758154460108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369375 (n + 2) - 1

end

end A138290.P11110933758154460108

/-! ## A138290.P15118016299870224166

`lt[n*A272143(n+1), n]`
-/

namespace A138290.P15118016299870224166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A272143 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A138290.P15118016299870224166

/-! ## A138290.P16484478538780947895

`eq[A010057(n), A106821(n+1)]`
-/

namespace A138290.P16484478538780947895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138290.P16484478538780947895

/-! ## A138290.P5060373838183911302

`eq[A036987(n), A106821(n+1)]`
-/

namespace A138290.P5060373838183911302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138290.P5060373838183911302

/-! ## A138290.P14647355706190024044

`eq[A099894(n), A106821(n+1)]`
-/

namespace A138290.P14647355706190024044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138290.P14647355706190024044

/-! ## A138290.P11572350063516593084

`eq[A106821(n+1), A113047(n)]`
-/

namespace A138290.P11572350063516593084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113047 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138290.P11572350063516593084

/-! ## A138290.P13334389792557811980

`eq[A106821(n+1), A130706(n)]`
-/

namespace A138290.P13334389792557811980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138290.P13334389792557811980

/-! ## A138290.P6173530800833098484

`eq[A106821(n+1), A130713(n)]`
-/

namespace A138290.P6173530800833098484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130713 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138290.P6173530800833098484

/-! ## A138290.P4125420483313408464

`eq[A106821(n+1), A130716(n)]`
-/

namespace A138290.P4125420483313408464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130716 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138290.P4125420483313408464

/-! ## A138290.P14173905087750907927

`eq[A106821(n+1), A143645(n)]`
-/

namespace A138290.P14173905087750907927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143645 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138290.P14173905087750907927

/-! ## A138290.P14951518036122270593

`eq[A106821(n+1), A143722(n)]`
-/

namespace A138290.P14951518036122270593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143722 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138290.P14951518036122270593

/-! ## A138290.P9726842885431431002

`eq[A106821(n+1), A143737(n)]`
-/

namespace A138290.P9726842885431431002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143737 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138290.P9726842885431431002

/-! ## A138290.P12337218942824757578

`eq[A106821(n+1), A143754(n)]`
-/

namespace A138290.P12337218942824757578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143754 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138290.P12337218942824757578

/-! ## A138290.P15584298658269026240

`eq[A106821(n+1), A143756(n)]`
-/

namespace A138290.P15584298658269026240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143756 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138290.P15584298658269026240

/-! ## A138290.P12503883969093577236

`eq[A000007(n), A272143(n+1)]`
-/

namespace A138290.P12503883969093577236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272143 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138290.P12503883969093577236

/-! ## A138290.P18446600184327779160

`eq[A000038(n), A272143(n+1)]`
-/

namespace A138290.P18446600184327779160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272143 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138290.P18446600184327779160

/-! ## A138290.P14744715448862175497

`eq[A106821(n+1), A197183(n)]`
-/

namespace A138290.P14744715448862175497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197183 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138290.P14744715448862175497

/-! ## A138290.P5864406843433481059

`eq[A012245(n+1), A106821(n+1)]`
-/

namespace A138290.P5864406843433481059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138290.P5864406843433481059

/-! ## A138290.P4723184080609075318

`eq[A019590(n+1), A106821(n+1)]`
-/

namespace A138290.P4723184080609075318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138290.P4723184080609075318

/-! ## A138290.P15603056983490309082

`eq[A033322(n+1), A106821(n+1)]`
-/

namespace A138290.P15603056983490309082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138290.P15603056983490309082

/-!
# A138291: Number of primes of the form prime(n)+g, where g is a primitive root of prime(n).

The programs for A138291, there is no canonical definition to state claims against.
-/

/-! ## A138291.P2093978856885703688

`A088670(A091584(n+1))%A307313(n+1)`
-/

namespace A138291.P2093978856885703688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088670 (A091584 (n + 1)).toNat) (A307313 (n + 1))

end

end A138291.P2093978856885703688

/-! ## A138291.P2715018113481969283

`A341594(A303802(n+4)+A001051(3*n+2))`
-/

namespace A138291.P2715018113481969283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341594 (A303802 (n + 4) + A001051 (3 * n + 2)).toNat

end

end A138291.P2715018113481969283

/-! ## A138291.P10549055791073079163

`A121373(3*(n+1))+A001221(A077419(2*n+3))`
-/

namespace A138291.P10549055791073079163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (3 * (n + 1)) + A001221 (A077419 (2 * n + 3)).toNat

end

end A138291.P10549055791073079163

/-!
# A138293: E.g.f. satisfies: A(x) = x + exp(x*A(x)).

The programs for A138293, there is no canonical definition to state claims against.
-/

/-! ## A138293.P7662846903903106938

`A362690(n)+char[1]`
-/

namespace A138293.P7662846903903106938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362690 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A138293.P7662846903903106938

/-! ## A138293.P3599260823878268797

`lcm(Δ[A008619(3*n+4)], A362690(n))`
-/

namespace A138293.P3599260823878268797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A362690 n)

end

end A138293.P3599260823878268797

/-! ## A138293.P2581865415258134852

`A055457(A038950(n+1))*A362690(n)`
-/

namespace A138293.P2581865415258134852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055457 (A038950 (n + 1)).toNat * A362690 n

end

end A138293.P2581865415258134852

/-! ## A138293.P1246784531282812375

`lcm(A001316(A007814(n+1)), A362690(n))`
-/

namespace A138293.P1246784531282812375
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001316 (A007814 (n + 1)).toNat) (A362690 n)

end

end A138293.P1246784531282812375

/-! ## A138293.P17646414481929619329

`A194285(A270339(n+5))*A362690(n)`
-/

namespace A138293.P17646414481929619329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194285 (A270339 (n + 5)).toNat * A362690 n

end

end A138293.P17646414481929619329

/-!
# A138294: G.f.: A(x) = 1 + x*A_1(x)^2; A_1(x) = (1+x) + x*A_2(x)^2; A_2(x) = (1+x)^2 + x*A_3(x)^2; ...; A_{n}(x) = (1+x)^n + x*A_{n+1}(x)^2 for n>=0 with A(x) = A_0(x).

The programs for A138294, there is no canonical definition to state claims against.
-/

/-! ## A138294.P13413141390967363554

`A117553(∑{d}[n!, #])`
-/

namespace A138294.P13413141390967363554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117553 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A138294.P13413141390967363554

/-! ## A138294.P7542419652661553360

`A117553(A000203(n!))`
-/

namespace A138294.P7542419652661553360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117553 (A000203 (Nat.factorial n)).toNat

end

end A138294.P7542419652661553360

/-!
# A138295: G.f.: A(x) = (1+x) + x*A_2(x)^2; A_2(x) = (1+x)^2 + x*A_3(x)^2; ...; A_{n}(x) = (1+x)^n + x*A_{n+1}(x)^2 for n>=1 with A(x) = A_1(x).

The programs for A138295, there is no canonical definition to state claims against.
-/

/-! ## A138295.P5217569733961204982

`A110655(A325297(n+2))`
-/

namespace A138295.P5217569733961204982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A325297 (n + 2)).toNat

end

end A138295.P5217569733961204982

/-! ## A138295.P10044295122650009606

`A194990(ceil(sqrt(A051689(n))))`
-/

namespace A138295.P10044295122650009606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194990 ⌈Real.sqrt (A051689 n : ℝ)⌉.toNat

end

end A138295.P10044295122650009606

/-!
# A138297: Rows of triangle A138060 converge to this sequence.

The programs for A138297, the canonical program `A138297.P9504987651790712023` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138297 has offset 1).

The definition of A138297 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138297.P9504987651790712023

`A030241(A048718(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A138297

/-- `A030241(A048718(n))` -/
def P9504987651790712023.Spec : Prop :=
  ∀ n, P9504987651790712023.a n = A138297 (n + 1)

theorem P9504987651790712023.correct : P9504987651790712023.Spec := by
  intro n
  simp only [A138297, Nat.add_sub_cancel]

end A138297

/-! ## A138297.P17462369871151132904

`A138060(eq[2, A138060(n+2)])`
-/

namespace A138297.P17462369871151132904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138060 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138060 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A138297.P17462369871151132904

namespace A138297

/-- `A138060(eq[2, A138060(n+2)])` -/
def P17462369871151132904.Spec : Prop :=
  ∀ n, P17462369871151132904.a n = A138297 (n + 1)

end A138297

/-! ## A138297.P9186464967483757159

`A143488(A048719(n)+6)`
-/

namespace A138297.P9186464967483757159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143488 (A048719 n + 6).toNat

end

end A138297.P9186464967483757159

namespace A138297

/-- `A143488(A048719(n)+6)` -/
def P9186464967483757159.Spec : Prop :=
  ∀ n, P9186464967483757159.a n = A138297 (n + 1)

end A138297

/-!
# A138298: First differences of A137976 after having added two leading ones.

The programs for A138298, there is no canonical definition to state claims against.
-/

/-! ## A138298.P3500897404990479555

`Δ[A212804(ceil(5*n/2))]`
-/

namespace A138298.P3500897404990479555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 ⌈5 * ((n : ℚ) / 2)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138298.P3500897404990479555

/-! ## A138298.P6283426236916270

`gcd(2, n)*A000045(ceil(5*n/2))`
-/

namespace A138298.P6283426236916270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A000045 ⌈5 * ((n : ℚ) / 2)⌉.toNat

end

end A138298.P6283426236916270

/-! ## A138298.P14842759660306340662

`Δ[A000045(∑[5-a(n-1)])]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A138298.P14842759660306340662
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f2 =>
  5 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138298.P14842759660306340662

/-! ## A138298.P13297182510875641136

`Δ[A000045(∑[(n-2)%2+1]+n)]`
-/

namespace A138298.P13297182510875641136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 2) 2 + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138298.P13297182510875641136

/-! ## A138298.P14259749722290435764

`Δ[A000045(abs(2-ceil((10*n+3)/4)))]`
-/

namespace A138298.P14259749722290435764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |2 - ⌈(10 * n + 3 : ℚ) / 4⌉|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138298.P14259749722290435764

/-!
# A138299: For number bases b (2 <= b <= 10) consider numbers that can be written as repdigits with at least two digits: the sequence gives products of such numbers also having this property (the number bases are not necessarily distinct).

The programs for A138299, there is no canonical definition to state claims against.
-/

/-! ## A138299.P8260835844010577757

`lt[A034444(A028611(n)), A117621(2*n+1)]`
-/

namespace A138299.P8260835844010577757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A028611 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117621 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A138299.P8260835844010577757

/-! ## A138299.P17967452882066846177

`lt[A070112(A347369(n+4)), A308951(n)]`
-/

namespace A138299.P17967452882066846177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070112 (A347369 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308951 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A138299.P17967452882066846177

/-! ## A138299.P15491973368314529899

`lt[A000720(A024796(2*(n+1))), A390031(2*n)]`
-/

namespace A138299.P15491973368314529899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A024796 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390031 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A138299.P15491973368314529899

/-! ## A138299.P15637126786614328119

`lt[A086532(n+1), A011782(A326152(2*n))]`
-/

namespace A138299.P15637126786614328119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A326152 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A138299.P15637126786614328119

/-! ## A138299.P3945919643664784382

`lt[A302057(n+1), A008414(A326152(2*n))]`
-/

namespace A138299.P3945919643664784382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008414 (A326152 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A138299.P3945919643664784382

