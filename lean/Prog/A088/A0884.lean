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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A088400: a(n)=A069530(n)/n.

The programs for A088400, there is no canonical definition to state claims against.
-/

/-! ## A088400.P14287395231241346378

`A069530(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A088400.P14287395231241346378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069530 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A088400.P14287395231241346378

/-!
# A088404: a(n) = A069537(n)/2.

The programs for A088404, the canonical program `A088404.P14520106302720198041` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088404 has offset 1).

The definition of A088404 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069537, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A088404.P14520106302720198041

`A069537(n+1)/2`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A088404

/-- `A069537(n+1)/2` -/
def P14520106302720198041.Spec : Prop :=
  ∀ n, P14520106302720198041.a n = (A088404 (n + 1) : ℚ)

end A088404

/-! ## A088404.P8388058455011085519

`A052216(comp[∑[n+1]]+1)/2`
-/

namespace A088404.P8388058455011085519
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052216 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) : ℚ) / 2

end

end A088404.P8388058455011085519

namespace A088404

/-- `A052216(comp[∑[n+1]]+1)/2` -/
def P8388058455011085519.Spec : Prop :=
  ∀ n, P8388058455011085519.a n = (A088404 (n + 1) : ℚ)

end A088404

/-! ## A088404.P4385744175022171352

`floor(A052216(A080036(n))/2)`
-/

namespace A088404.P4385744175022171352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052216 (A080036 n).toNat : ℚ) / 2⌋

end

end A088404.P4385744175022171352

namespace A088404

/-- `floor(A052216(A080036(n))/2)` -/
def P4385744175022171352.Spec : Prop :=
  ∀ n, P4385744175022171352.a n = A088404 (n + 1)

end A088404

/-! ## A088404.P4478160766218727735

`(A052216(A080036(n))/2)^A000038(n)!`
-/

namespace A088404.P4478160766218727735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A052216 (A080036 n).toNat : ℚ) / 2) ^ Nat.factorial (A000038 n).toNat

end

end A088404.P4478160766218727735

namespace A088404

/-- `(A052216(A080036(n))/2)^A000038(n)!` -/
def P4478160766218727735.Spec : Prop :=
  ∀ n, P4478160766218727735.a n = (A088404 (n + 1) : ℚ)

end A088404

/-! ## A088404.P16355266970373980596

`A267043(2*n+3)+A052216(A080036(n))/2`
-/

namespace A088404.P16355266970373980596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267043 (2 * n + 3) : ℚ) + (A052216 (A080036 n).toNat : ℚ) / 2

end

end A088404.P16355266970373980596

namespace A088404

/-- `A267043(2*n+3)+A052216(A080036(n))/2` -/
def P16355266970373980596.Spec : Prop :=
  ∀ n, P16355266970373980596.a n = (A088404 (n + 1) : ℚ)

end A088404

/-! ## A088404.P16466827954106467574

`A189668(A189669(2*n+3))+A052216(A080036(n))/2`
-/

namespace A088404.P16466827954106467574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189668 (A189669 (2 * n + 3)).toNat : ℚ) + (A052216 (A080036 n).toNat : ℚ) / 2

end

end A088404.P16466827954106467574

namespace A088404

/-- `A189668(A189669(2*n+3))+A052216(A080036(n))/2` -/
def P16466827954106467574.Spec : Prop :=
  ∀ n, P16466827954106467574.a n = (A088404 (n + 1) : ℚ)

end A088404

/-! ## A088404.P3779084061133550299

`A245062(∑[n+2])/2`
-/

namespace A088404.P3779084061133550299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245062 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A088404.P3779084061133550299

namespace A088404

/-- `A245062(∑[n+2])/2` -/
def P3779084061133550299.Spec : Prop :=
  ∀ n, P3779084061133550299.a n = (A088404 (n + 1) : ℚ)

end A088404

/-! ## A088404.P14956155110888494617

`∩[A088406(n+1), A088408(n+1)]`
-/

namespace A088404.P14956155110888494617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088404.P14956155110888494617

namespace A088404

/-- `∩[A088406(n+1), A088408(n+1)]` -/
def P14956155110888494617.Spec : Prop :=
  ∀ n, (P14956155110888494617.a n : ℤ) = A088404 (n + 1)

end A088404

/-! ## A088404.P7144138135024171178

`∩[A088406(n+1), A136811(n+1)]`
-/

namespace A088404.P7144138135024171178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088404.P7144138135024171178

namespace A088404

/-- `∩[A088406(n+1), A136811(n+1)]` -/
def P7144138135024171178.Spec : Prop :=
  ∀ n, (P7144138135024171178.a n : ℤ) = A088404 (n + 1)

end A088404

/-! ## A088404.P15254891741578974334

`∩[A088406(n+1), A125289(n+1)]`
-/

namespace A088404.P15254891741578974334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088404.P15254891741578974334

namespace A088404

/-- `∩[A088406(n+1), A125289(n+1)]` -/
def P15254891741578974334.Spec : Prop :=
  ∀ n, (P15254891741578974334.a n : ℤ) = A088404 (n + 1)

end A088404

/-!
# A088405: a(n) = A052217(n)/3.

The programs for A088405, the canonical program `A088405.P5207061650554154256` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088405 has offset 1).

The definition of A088405 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052217, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A088405.P5207061650554154256

`A052217(n+1)/3`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A088405

/-- `A052217(n+1)/3` -/
def P5207061650554154256.Spec : Prop :=
  ∀ n, P5207061650554154256.a n = (A088405 (n + 1) : ℚ)

end A088405

/-! ## A088405.P7612927081229877416

`floor(A052217(Δ[n²]-n)/3)`
-/

namespace A088405.P7612927081229877416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052217 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 3⌋

end

end A088405.P7612927081229877416

namespace A088405

/-- `floor(A052217(Δ[n²]-n)/3)` -/
def P7612927081229877416.Spec : Prop :=
  ∀ n, P7612927081229877416.a n = A088405 (n + 1)

end A088405

/-! ## A088405.P12002859915556229990

`record[A052217(A152271(n))/3]`
-/

namespace A088405.P12002859915556229990
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052217 (A152271 n).toNat : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088405.P12002859915556229990

namespace A088405

/-- `record[A052217(A152271(n))/3]` -/
def P12002859915556229990.Spec : Prop :=
  ∀ n, P12002859915556229990.a n = (A088405 (n + 1) : ℚ)

end A088405

/-! ## A088405.P15704489736710278280

`record[A052217(A262519(n))/3]`
-/

namespace A088405.P15704489736710278280
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052217 (A262519 n).toNat : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088405.P15704489736710278280

namespace A088405

/-- `record[A052217(A262519(n))/3]` -/
def P15704489736710278280.Spec : Prop :=
  ∀ n, P15704489736710278280.a n = (A088405 (n + 1) : ℚ)

end A088405

/-! ## A088405.P3108736586012658165

`A001202(A014311(n+1)+1)/3`
-/

namespace A088405.P3108736586012658165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001202 (A014311 (n + 1) + 1).toNat : ℚ) / 3

end

end A088405.P3108736586012658165

namespace A088405

/-- `A001202(A014311(n+1)+1)/3` -/
def P3108736586012658165.Spec : Prop :=
  ∀ n, P3108736586012658165.a n = (A088405 (n + 1) : ℚ)

end A088405

/-! ## A088405.P14034992590400547408

`A245062(∑[n+3]+1)/3`
-/

namespace A088405.P14034992590400547408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245062 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 3

end

end A088405.P14034992590400547408

namespace A088405

/-- `A245062(∑[n+3]+1)/3` -/
def P14034992590400547408.Spec : Prop :=
  ∀ n, P14034992590400547408.a n = (A088405 (n + 1) : ℚ)

end A088405

/-!
# A088406: a(n) = A063997(n)/4.

The programs for A088406, there is no canonical definition to state claims against.
-/

/-! ## A088406.P8843467755570076081

`A063997(n+1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A088406.P8843467755570076081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063997 (n + 1) : ℚ) / 4

end

end A088406.P8843467755570076081

/-! ## A088406.P14256870542219827893

`record[A279772(n+1)/A020639(A279772(n+1))]`
-/

namespace A088406.P14256870542219827893
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279772 (n + 1) : ℚ) / (A020639 (A279772 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088406.P14256870542219827893

/-! ## A088406.P11172951612978703230

`A110367(A063997(n+1))`
-/

namespace A088406.P11172951612978703230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110367 (A063997 (n + 1)).toNat

end

end A088406.P11172951612978703230

/-! ## A088406.P8416149936320483703

`A339913(A063997(n+1)-2)`
-/

namespace A088406.P8416149936320483703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339913 (A063997 (n + 1) - 2).toNat

end

end A088406.P8416149936320483703

/-! ## A088406.P18007483375187501408

`A110963(A063997(n+1)-3)`
-/

namespace A088406.P18007483375187501408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110963 (A063997 (n + 1) - 3).toNat

end

end A088406.P18007483375187501408

/-!
# A088407: a(n) = A069540(n)/5.

The programs for A088407, there is no canonical definition to state claims against.
-/

/-! ## A088407.P2978930231713725335

`A069540(n+1)/5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A088407.P2978930231713725335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069540 (n + 1) : ℚ) / 5

end

end A088407.P2978930231713725335

/-! ## A088407.P123686427678113653

`floor(A069540(n-log2(1/2))/5)`
-/

namespace A088407.P123686427678113653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A069540 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat : ℚ) / 5⌋

end

end A088407.P123686427678113653

/-! ## A088407.P2447221275755409638

`5^A008683(A004139(n+1))*A069540(n+1)`
-/

namespace A088407.P2447221275755409638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A008683 (A004139 (n + 1)).toNat : ℤ) * (A069540 (n + 1) : ℚ)

end

end A088407.P2447221275755409638

/-! ## A088407.P4598726938294923542

`A052219(eq[5, gcd(5, A052219(n+1))]+1)/5`
-/

namespace A088407.P4598726938294923542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A052219 (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052219 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) : ℚ) / 5

end

end A088407.P4598726938294923542

/-! ## A088407.P13822780507720671813

`A110367(A069540(n+1))`
-/

namespace A088407.P13822780507720671813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110367 (A069540 (n + 1)).toNat

end

end A088407.P13822780507720671813

/-! ## A088407.P11117580163230109347

`A004277(eq[5*n, A057147(n)])`
-/

namespace A088407.P11117580163230109347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057147 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A088407.P11117580163230109347

/-! ## A088407.P5270780280555529669

`record[A110367(A052219(n+1))%A052219(n+1)]`
-/

namespace A088407.P5270780280555529669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110367 (A052219 (n + 1)).toNat) (A052219 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088407.P5270780280555529669

/-!
# A088408: a(n) = A062768(n)/6.

The programs for A088408, there is no canonical definition to state claims against.
-/

/-! ## A088408.P12473987465899739817

`A062768(n+1)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A088408.P12473987465899739817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062768 (n + 1) : ℚ) / 6

end

end A088408.P12473987465899739817

/-! ## A088408.P15220151742903224830

`ceil(A062768(abs(xor(n, -1)))/6)`
-/

namespace A088408.P15220151742903224830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A062768 |Int.xor (n : ℤ) (-1)|.toNat : ℚ) / 6⌉

end

end A088408.P15220151742903224830

/-! ## A088408.P1091215365449506382

`A052220(eq[2, gcd(2, A052220(n+1))]+1)/6`
-/

namespace A088408.P1091215365449506382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A052220 (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052220 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) : ℚ) / 6

end

end A088408.P1091215365449506382

/-! ## A088408.P14094624353760904063

`A110367(A062768(n+1))`
-/

namespace A088408.P14094624353760904063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110367 (A062768 (n + 1)).toNat

end

end A088408.P14094624353760904063

/-! ## A088408.P346593489979404200

`record[A110367(A052220(n+1))%A052220(n+1)]`
-/

namespace A088408.P346593489979404200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110367 (A052220 (n + 1)).toNat) (A052220 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088408.P346593489979404200

/-! ## A088408.P8393333460632830863

`record[A260739(A052220(n+1)/3)]`
-/

namespace A088408.P8393333460632830863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (SequenceMachineLib.roundAway ((A052220 (n + 1) : ℚ) / 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088408.P8393333460632830863

/-! ## A088408.P10820754405404584980

`eq[6, A004092(3*n)]`
-/

namespace A088408.P10820754405404584980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088408.P10820754405404584980

/-! ## A088408.P553369699122745459

`eq[7, A004155(3*n)]`
-/

namespace A088408.P553369699122745459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088408.P553369699122745459

/-! ## A088408.P14693130102733323080

`A008615(A062768(n+1)+1)`
-/

namespace A088408.P14693130102733323080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A062768 (n + 1) + 1).toNat

end

end A088408.P14693130102733323080

/-! ## A088408.P9984527413718864100

`eq[A008458(n+1), A062028(A008458(n))]`
-/

namespace A088408.P9984527413718864100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A088408.P9984527413718864100

/-!
# A088409: a(n) = A063416(n)/7.

The programs for A088409, there is no canonical definition to state claims against.
-/

/-! ## A088409.P17099951360541811039

`A063416(n+1)/7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A088409.P17099951360541811039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063416 (n + 1) : ℚ) / 7

end

end A088409.P17099951360541811039

/-! ## A088409.P828559779491931560

`∩[A216996(n+1), A017173(n)]`
-/

namespace A088409.P828559779491931560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088409.P828559779491931560

/-! ## A088409.P4329338679806459614

`∩[A216996(n+1), A236653(n+1)]`
-/

namespace A088409.P4329338679806459614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088409.P4329338679806459614

/-! ## A088409.P10041861406824575758

`∩[A216996(n+1), A017185(n)-1]`
-/

namespace A088409.P10041861406824575758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088409.P10041861406824575758

/-! ## A088409.P4025802494135342138

`∩[A056020(n+1), A216996(n+1)]`
-/

namespace A088409.P4025802494135342138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088409.P4025802494135342138

/-! ## A088409.P5919961586438208765

`∩[A090570(n+1), A216996(n+1)]`
-/

namespace A088409.P5919961586438208765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088409.P5919961586438208765

/-! ## A088409.P13866668781394896046

`∩[A216996(n+1), A301451(n+1)]`
-/

namespace A088409.P13866668781394896046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088409.P13866668781394896046

/-! ## A088409.P4405735662963503201

`∩[A216996(n+1), A319293(n+1)]`
-/

namespace A088409.P4405735662963503201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088409.P4405735662963503201

/-! ## A088409.P9749654677270725417

`∩[A054966(n+1), A216996(n+1)]`
-/

namespace A088409.P9749654677270725417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088409.P9749654677270725417

/-!
# A088410: a(n) = A069543(n)/8.

The programs for A088410, there is no canonical definition to state claims against.
-/

/-! ## A088410.P16293895257777389855

`A069543(n+1)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A088410.P16293895257777389855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069543 (n + 1) : ℚ) / 8

end

end A088410.P16293895257777389855

/-! ## A088410.P10618735559812093987

`record[A273943(A279774(n+1))]`
-/

namespace A088410.P10618735559812093987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A279774 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088410.P10618735559812093987

/-! ## A088410.P11669030253799389454

`A117358(A069543(n+1))`
-/

namespace A088410.P11669030253799389454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (A069543 (n + 1)).toNat

end

end A088410.P11669030253799389454

/-! ## A088410.P13074258896803586267

`record[A117358(A052222(n+1))]`
-/

namespace A088410.P13074258896803586267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (A052222 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088410.P13074258896803586267

/-! ## A088410.P10094688421175651780

`A110367(lcm(8, A069543(n+1)))`
-/

namespace A088410.P10094688421175651780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110367 (Int.lcm 8 (A069543 (n + 1)))

end

end A088410.P10094688421175651780

/-! ## A088410.P16143868949529044322

`A110367(A069543(n+1)+A000007(n))`
-/

namespace A088410.P16143868949529044322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110367 (A069543 (n + 1) + A000007 n).toNat

end

end A088410.P16143868949529044322

/-! ## A088410.P15114251814868331737

`A110367(2*A069543(n+1)-A069543(n+1))`
-/

namespace A088410.P15114251814868331737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110367 (2 * A069543 (n + 1) - A069543 (n + 1)).toNat

end

end A088410.P15114251814868331737

/-!
# A088411: A088257 indexed by A002110.

The programs for A088411, there is no canonical definition to state claims against.
-/

/-! ## A088411.P4917771649303673134

`∪[A014545(n+1), A057704(n+1)]`
-/

namespace A088411.P4917771649303673134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057704 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A088411.P4917771649303673134

/-! ## A088411.P4265569329488171452

`∪[A000720(A006794(n+1)), A014545(n+1)]`
-/

namespace A088411.P4265569329488171452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A006794 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A088411.P4265569329488171452

/-! ## A088411.P13284632916991346853

`lt[0, A333058(n)]`
-/

namespace A088411.P13284632916991346853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333058 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A088411.P13284632916991346853

/-! ## A088411.P5599493886695525923

`lt[0, A096831(round(acot(n)+n))]`
-/

namespace A088411.P5599493886695525923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096831 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A088411.P5599493886695525923

/-!
# A088412: A088258 indexed by A000142.

The programs for A088412, there is no canonical definition to state claims against.
-/

/-! ## A088412.P8644326517832240114

`eq[1, A053714(n+1)²]+1`
-/

namespace A088412.P8644326517832240114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053714 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A088412.P8644326517832240114

/-! ## A088412.P14539767600120531810

`record[3-A151800(A056752(n+1))+n]`
-/

namespace A088412.P14539767600120531810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A151800 (A056752 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088412.P14539767600120531810

/-! ## A088412.P10292172481380738002

`record[abs(A000027(n+1)/A053714(n+1))]`
-/

namespace A088412.P10292172481380738002
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A000027 (n + 1) : ℚ) / (A053714 (n + 1) : ℚ)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088412.P10292172481380738002

/-! ## A088412.P12624319011938291163

`record[A008619(2*n)/abs(A053714(n+1))]`
-/

namespace A088412.P12624319011938291163
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (|A053714 (n + 1)| : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088412.P12624319011938291163

/-! ## A088412.P8989721269302340283

`record[A008611(3*n)/abs(A053714(n+1))]`
-/

namespace A088412.P8989721269302340283
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008611 (3 * n) : ℚ) / (|A053714 (n + 1)| : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088412.P8989721269302340283

/-!
# A088413: A088259 indexed by A001597.

The programs for A088413, there is no canonical definition to state claims against.
-/

/-! ## A088413.P6233770686476731215

`A072292(A088259(n+1))`
-/

namespace A088413.P6233770686476731215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072292 (A088259 (n + 1)).toNat

end

end A088413.P6233770686476731215

/-! ## A088413.P16933677840388438118

`eq[1, A051699(A001597(n+1))]`
-/

namespace A088413.P16933677840388438118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (A001597 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088413.P16933677840388438118

/-! ## A088413.P17104332131935772189

`eq[1, A051699(abs(A157985(n+1)))]`
-/

namespace A088413.P17104332131935772189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 |A157985 (n + 1)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088413.P17104332131935772189

/-! ## A088413.P15365893278280890906

`eq[1, A051700(A001597(n-log2(1/2)))]`
-/

namespace A088413.P15365893278280890906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (A001597 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088413.P15365893278280890906

/-! ## A088413.P13271999216388653175

`eq[1, A051699(∪[(n+1)², A070265(n+1)])]`
-/

namespace A088413.P13271999216388653175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070265 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (SequenceMachineLib.nth (fun x => (∃ j, f3 j = x) ∨ ∃ j, f4 j = (x : ℤ)) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088413.P13271999216388653175

/-!
# A088415: Primes p = prime(i) such that p(i)# - p(i+1) or p(i)# + p(i+1) or both are primes.

The programs for A088415, there is no canonical definition to state claims against.
-/

/-! ## A088415.P5256558735561439939

`A000040(A088416(n+1))`
-/

namespace A088415.P5256558735561439939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A088416 (n + 1)).toNat

end

end A088415.P5256558735561439939

/-! ## A088415.P7872585542133349976

`A008578(A088416(n+1)+1)`
-/

namespace A088415.P7872585542133349976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A088416 (n + 1) + 1).toNat

end

end A088415.P7872585542133349976

/-! ## A088415.P13835351559683719499

`A055396(2*(n+1))+A006093(A088416(n+1))`
-/

namespace A088415.P13835351559683719499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (2 * (n + 1)) + A006093 (A088416 (n + 1)).toNat

end

end A088415.P13835351559683719499

/-! ## A088415.P14419850246034686140

`p?[lt[A129718(A046854(n)), 2]]`
-/

namespace A088415.P14419850246034686140
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129718 (A046854 n).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A088415.P14419850246034686140

/-! ## A088415.P2372479118673038349

`A000040(lt[A017882(n), A071625(n+4)])`
-/

namespace A088415.P2372479118673038349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017882 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A088415.P2372479118673038349

/-!
# A088416: A088415 indexed by A000040.

The programs for A088416, there is no canonical definition to state claims against.
-/

/-! ## A088416.P2571464224610677081

`A000720(A088415(n+1))`
-/

namespace A088416.P2571464224610677081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A088415 (n + 1)).toNat

end

end A088416.P2571464224610677081

/-! ## A088416.P7279962463087873343

`A003963(p?[A088415(n+1)])`
-/

namespace A088416.P7279962463087873343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A088416.P7279962463087873343

/-! ## A088416.P7774293853984462103

`A049084(p?[A088415(n+1)])`
-/

namespace A088416.P7774293853984462103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A088416.P7774293853984462103

/-! ## A088416.P15674257040543017338

`A055396(p?[A088415(n+1)])`
-/

namespace A088416.P15674257040543017338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A088416.P15674257040543017338

/-! ## A088416.P12042227523251417245

`A056239(p?[A088415(n+1)])`
-/

namespace A088416.P12042227523251417245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A088416.P12042227523251417245

/-!
# A088417: a(n) = A088339(n)/3.

The programs for A088417, there is no canonical definition to state claims against.
-/

/-! ## A088417.P2573310680505734723

`A088339(n+1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A088417.P2573310680505734723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088339 (n + 1) : ℚ) / 3

end

end A088417.P2573310680505734723

/-! ## A088417.P5905241100027639159

`A002264(A088339(n+1))`
-/

namespace A088417.P5905241100027639159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A088339 (n + 1)).toNat

end

end A088417.P5905241100027639159

/-! ## A088417.P11398377930700215857

`A008611(A088339(n+1)+1)`
-/

namespace A088417.P11398377930700215857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A088339 (n + 1) + 1).toNat

end

end A088417.P11398377930700215857

/-! ## A088417.P11106111236683479716

`A063942(A088339(n+1)+1)`
-/

namespace A088417.P11106111236683479716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063942 (A088339 (n + 1) + 1).toNat

end

end A088417.P11106111236683479716

/-! ## A088417.P2421447764005794577

`A186731(A088339(n+1)+1)`
-/

namespace A088417.P2421447764005794577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186731 (A088339 (n + 1) + 1).toNat

end

end A088417.P2421447764005794577

/-! ## A088417.P2897209467349988386

`A008620(A088339(n+1)-1)`
-/

namespace A088417.P2897209467349988386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A088339 (n + 1) - 1).toNat

end

end A088417.P2897209467349988386

/-! ## A088417.P11093398423459020211

`A087507(A088339(n+1)-1)`
-/

namespace A088417.P11093398423459020211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087507 (A088339 (n + 1) - 1).toNat

end

end A088417.P11093398423459020211

/-! ## A088417.P18133661810701205146

`A131358(A088339(n+1)-2)`
-/

namespace A088417.P18133661810701205146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131358 (A088339 (n + 1) - 2).toNat

end

end A088417.P18133661810701205146

/-! ## A088417.P4838164426880979689

`A051176(lcm(3, A088339(n+1)))`
-/

namespace A088417.P4838164426880979689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (Int.lcm 3 (A088339 (n + 1)))

end

end A088417.P4838164426880979689

/-! ## A088417.P6704273667994663834

`A008615(2*A088339(n+1))`
-/

namespace A088417.P6704273667994663834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (2 * A088339 (n + 1)).toNat

end

end A088417.P6704273667994663834

/-!
# A088419: a(n) = A088418(n+1)/A088418(n).

The programs for A088419, there is no canonical definition to state claims against.
-/

/-! ## A088419.P6209601800991699210

`A077703(A274055(n+1))`
-/

namespace A088419.P6209601800991699210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077703 (A274055 (n + 1)).toNat

end

end A088419.P6209601800991699210

/-! ## A088419.P8116154571401571182

`A077703(A318892(n+1))`
-/

namespace A088419.P8116154571401571182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077703 (A318892 (n + 1)).toNat

end

end A088419.P8116154571401571182

/-! ## A088419.P4471648756125070267

`A077703(A321993(n+1))`
-/

namespace A088419.P4471648756125070267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077703 (A321993 (n + 1)).toNat

end

end A088419.P4471648756125070267

/-! ## A088419.P13655937875287074754

`A077703(A323404(n+1))`
-/

namespace A088419.P13655937875287074754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077703 (A323404 (n + 1)).toNat

end

end A088419.P13655937875287074754

/-! ## A088419.P11729512597932064028

`A077703(A366188(n+1))`
-/

namespace A088419.P11729512597932064028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077703 (A366188 (n + 1)).toNat

end

end A088419.P11729512597932064028

/-!
# A088420: Number of primes in arithmetic progression starting with 3 and with d = 2n.

The programs for A088420, the canonical program `A088420.P1927350733136831084` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088420 has offset 1).

The definition of A088420 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088420.P1927350733136831084

`or(A101264(n+2)+1, A101264(2*n+3))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A088420

/-- `or(A101264(n+2)+1, A101264(2*n+3))` -/
def P1927350733136831084.Spec : Prop :=
  ∀ n, P1927350733136831084.a n = A088420 (n + 1)

theorem P1927350733136831084.correct : P1927350733136831084.Spec := by
  intro n
  simp only [A088420, Nat.add_sub_cancel]

end A088420

/-! ## A088420.P4526713680673358231

`A293668(A049653(n+3)*A293668(A049653(2*(n+2))))`
-/

namespace A088420.P4526713680673358231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293668 (A049653 (n + 3) * A293668 (A049653 (2 * (n + 2))).toNat).toNat

end

end A088420.P4526713680673358231

namespace A088420

/-- `A293668(A049653(n+3)*A293668(A049653(2*(n+2))))` -/
def P4526713680673358231.Spec : Prop :=
  ∀ n, P4526713680673358231.a n = A088420 (n + 1)

end A088420

/-! ## A088420.P1234386242679421383

`A123556(A350460(n+1)-1)`
-/

namespace A088420.P1234386242679421383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123556 (A350460 (n + 1) - 1).toNat

end

end A088420.P1234386242679421383

namespace A088420

/-- `A123556(A350460(n+1)-1)` -/
def P1234386242679421383.Spec : Prop :=
  ∀ n, P1234386242679421383.a n = A088420 (n + 1)

end A088420

/-! ## A088420.P8095628379633849556

`A123556(2*(n+1))^A092953(2*n+3)`
-/

namespace A088420.P8095628379633849556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123556 (2 * (n + 1)) : ℚ) ^ (A092953 (2 * n + 3) : ℤ)

end

end A088420.P8095628379633849556

namespace A088420

/-- `A123556(2*(n+1))^A092953(2*n+3)` -/
def P8095628379633849556.Spec : Prop :=
  ∀ n, P8095628379633849556.a n = (A088420 (n + 1) : ℚ)

end A088420

/-! ## A088420.P5224111519634037835

`A123556(2*(n+1))^log2(A123556(2*n+3))`
-/

namespace A088420.P5224111519634037835
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A123556 (2 * (n + 1)) : ℝ) ^ (Real.logb 2 (A123556 (2 * n + 3) : ℝ))

end

end A088420.P5224111519634037835

namespace A088420

/-- `A123556(2*(n+1))^log2(A123556(2*n+3))` -/
def P5224111519634037835.Spec : Prop :=
  ∀ n, P5224111519634037835.a n = (A088420 (n + 1) : ℝ)

end A088420

/-! ## A088420.P2461944639349227883

`A123556(eq[A066169(n+1), A204894(n+1)])`
-/

namespace A088420.P2461944639349227883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123556 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A088420.P2461944639349227883

namespace A088420

/-- `A123556(eq[A066169(n+1), A204894(n+1)])` -/
def P2461944639349227883.Spec : Prop :=
  ∀ n, P2461944639349227883.a n = A088420 (n + 1)

end A088420

/-! ## A088420.P9690499442058242479

`A007318(A087242(2*n+3)^A123556(2*(n+1)))`
-/

namespace A088420.P9690499442058242479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.roundAway ((A087242 (2 * n + 3) : ℚ) ^ (A123556 (2 * (n + 1)) : ℤ))).toNat

end

end A088420.P9690499442058242479

namespace A088420

/-- `A007318(A087242(2*n+3)^A123556(2*(n+1)))` -/
def P9690499442058242479.Spec : Prop :=
  ∀ n, P9690499442058242479.a n = A088420 (n + 1)

end A088420

/-! ## A088420.P10000708119798081044

`A123556(eq[A065559(n+1), A123317(n+1)])`
-/

namespace A088420.P10000708119798081044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065559 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123317 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123556 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A088420.P10000708119798081044

namespace A088420

/-- `A123556(eq[A065559(n+1), A123317(n+1)])` -/
def P10000708119798081044.Spec : Prop :=
  ∀ n, P10000708119798081044.a n = A088420 (n + 1)

end A088420

/-! ## A088420.P6972760092944327594

`A123556(eq[A086489(n+1), A123317(n+1)])`
-/

namespace A088420.P6972760092944327594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123317 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123556 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A088420.P6972760092944327594

namespace A088420

/-- `A123556(eq[A086489(n+1), A123317(n+1)])` -/
def P6972760092944327594.Spec : Prop :=
  ∀ n, P6972760092944327594.a n = A088420 (n + 1)

end A088420

/-!
# A088421: Number of primes in arithmetic progression starting with 5 and with d=2n.

The programs for A088421, there is no canonical definition to state claims against.
-/

/-! ## A088421.P3080355401411933771

`A110730(A074985(n+1)%A099981(2*n+3))`
-/

namespace A088421.P3080355401411933771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110730 (Int.tmod (A074985 (n + 1)) (A099981 (2 * n + 3))).toNat

end

end A088421.P3080355401411933771

/-!
# A088422: Number of primes in arithmetic progression starting with 7 and with d=2n.

The programs for A088422, there is no canonical definition to state claims against.
-/

/-! ## A088422.P8667148606319240503

`gcd(A197903(A206423(n+1)), A226340(n+1))`
-/

namespace A088422.P8667148606319240503
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A197903 (A206423 (n + 1)).toNat) (A226340 (n + 1))

end

end A088422.P8667148606319240503

/-! ## A088422.P11678969575600465869

`A241911(A000217(n+8)*A023705(n+8))`
-/

namespace A088422.P11678969575600465869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241911 (A000217 (n + 8) * A023705 (n + 8)).toNat

end

end A088422.P11678969575600465869

/-! ## A088422.P9296902061688191076

`gcd(A039132(2*(n+2)), A266729(A039086(2*(n+1))))`
-/

namespace A088422.P9296902061688191076
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A039132 (2 * (n + 2))) (A266729 (A039086 (2 * (n + 1))).toNat)

end

end A088422.P9296902061688191076

/-! ## A088422.P3144879322239675667

`Δ[lt[A329225(3*n+1), 4]]`
-/

namespace A088422.P3144879322239675667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329225 (3 * n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A088422.P3144879322239675667

/-!
# A088423: a(n) is the number of primes in arithmetic progression starting with 11 and with d = 2n.

The programs for A088423, there is no canonical definition to state claims against.
-/

/-! ## A088423.P6081809193630389620

`A088422(2*A077168(n))`
-/

namespace A088423.P6081809193630389620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088422 (2 * A077168 n).toNat

end

end A088423.P6081809193630389620

/-! ## A088423.P14588549605064841912

`A322315(A004111(n+4))%5`
-/

namespace A088423.P14588549605064841912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322315 (A004111 (n + 4)).toNat) 5

end

end A088423.P14588549605064841912

/-! ## A088423.P1473104883778251202

`gcd(A072764(2*n+3)-4, eq[2, A344618(n)])`
-/

namespace A088423.P1473104883778251202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344618 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072764 (2 * n + 3) - 4) (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A088423.P1473104883778251202

/-! ## A088423.P1305854049702275657

`A001511(A257088(n)+A094541(n))`
-/

namespace A088423.P1305854049702275657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A257088 n + A094541 n).toNat

end

end A088423.P1305854049702275657

/-! ## A088423.P11694416739818237957

`A006928(A213246(n+1))+A000122(2*n)`
-/

namespace A088423.P11694416739818237957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006928 (A213246 (n + 1)).toNat + A000122 (2 * n)

end

end A088423.P11694416739818237957

/-!
# A088424: Number of primes in arithmetic progression starting with 13 and with d=2n.

The programs for A088424, there is no canonical definition to state claims against.
-/

/-! ## A088424.P14186865679131301067

`A010553((2-char[xor(n, 2*n)])^A034460(n+1))`
-/

namespace A088424.P14186865679131301067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (SequenceMachineLib.roundAway ((2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℚ) ^ (A034460 (n + 1) : ℤ))).toNat

end

end A088424.P14186865679131301067

/-! ## A088424.P16671876398611654922

`A010553(A001285(n)^A063919(n+1))`
-/

namespace A088424.P16671876398611654922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (SequenceMachineLib.roundAway ((A001285 n : ℚ) ^ (A063919 (n + 1) : ℤ))).toNat

end

end A088424.P16671876398611654922

/-! ## A088424.P15184770936296584952

`A070878(A001285(n)^A063919(n+1))+1`
-/

namespace A088424.P15184770936296584952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070878 (SequenceMachineLib.roundAway ((A001285 n : ℚ) ^ (A063919 (n + 1) : ℤ))).toNat + 1

end

end A088424.P15184770936296584952

/-! ## A088424.P14160897708279731315

`A067581(A001285(n)^A063919(n+1))%5`
-/

namespace A088424.P14160897708279731315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067581 (SequenceMachineLib.roundAway ((A001285 n : ℚ) ^ (A063919 (n + 1) : ℤ))).toNat) 5

end

end A088424.P14160897708279731315

/-! ## A088424.P12275563906823748318

`A323023(A236104(n+1))+A010060(n)`
-/

namespace A088424.P12275563906823748318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323023 (A236104 (n + 1)).toNat + A010060 n

end

end A088424.P12275563906823748318

/-!
# A088425: Number of primes in arithmetic progression starting with 17 and with d=2n.

The programs for A088425, there is no canonical definition to state claims against.
-/

/-! ## A088425.P7387032524599752843

`ceil(ratio[A000203(A141729(4*n+5))])`
-/

namespace A088425.P7387032524599752843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A141729 (4 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A088425.P7387032524599752843

/-! ## A088425.P312611130722880228

`A276949(A056940(n)+A000285(n))`
-/

namespace A088425.P312611130722880228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276949 (A056940 n + A000285 n).toNat

end

end A088425.P312611130722880228

/-! ## A088425.P8929482162236077782

`A228350(A218084(n+1)+A060372(n))`
-/

namespace A088425.P8929482162236077782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228350 (A218084 (n + 1) + A060372 n).toNat

end

end A088425.P8929482162236077782

/-! ## A088425.P8413040050020755370

`gcd(A073293(n), A334725(A108917(n+2)))`
-/

namespace A088425.P8413040050020755370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073293 n) (A334725 (A108917 (n + 2)).toNat)

end

end A088425.P8413040050020755370

/-! ## A088425.P9153060639403400612

`A163352(gcd(A055999(n+3), A203330(n+1)))`
-/

namespace A088425.P9153060639403400612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (Int.gcd (A055999 (n + 3)) (A203330 (n + 1)))

end

end A088425.P9153060639403400612

/-!
# A088426: Number of primes in arithmetic progression starting with 19 and with d=2n.

The programs for A088426, there is no canonical definition to state claims against.
-/

/-! ## A088426.P11314824137352530936

`A026146(5*A067846(n+1))`
-/

namespace A088426.P11314824137352530936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026146 (5 * A067846 (n + 1)).toNat

end

end A088426.P11314824137352530936

/-! ## A088426.P15076122758855498658

`or(A056832(A084239(n)), A116357(n+1))`
-/

namespace A088426.P15076122758855498658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A056832 (A084239 n).toNat) (A116357 (n + 1))

end

end A088426.P15076122758855498658

/-! ## A088426.P10217343481813224554

`A331290(A215108(n+1))`
-/

namespace A088426.P10217343481813224554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331290 (A215108 (n + 1)).toNat

end

end A088426.P10217343481813224554

/-! ## A088426.P137739370190923711

`A127246(3%A213941(3*(n+1))+n)`
-/

namespace A088426.P137739370190923711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127246 (Int.tmod 3 (A213941 (3 * (n + 1))) + (n : ℤ)).toNat

end

end A088426.P137739370190923711

/-! ## A088426.P4918089499746992105

`gcd(A127246(n+3), A127257(3*n+1))`
-/

namespace A088426.P4918089499746992105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127246 (n + 3)) (A127257 (3 * n + 1))

end

end A088426.P4918089499746992105

/-!
# A088427: Number of primes in arithmetic progression starting with 23 and with d=2n.

The programs for A088427, there is no canonical definition to state claims against.
-/

/-! ## A088427.P2124479103864350049

`∏{e}[A333383(A232531(2*n+1)), #]`
-/

namespace A088427.P2124479103864350049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333383 (A232531 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A088427.P2124479103864350049

/-! ## A088427.P10845828840211288898

`A051064(A004736(n+2)*A383891(n+2))`
-/

namespace A088427.P10845828840211288898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (A004736 (n + 2) * A383891 (n + 2)).toNat

end

end A088427.P10845828840211288898

/-! ## A088427.P15529507601418053572

`A358525(A358373(n+5)-A085398(n+1))`
-/

namespace A088427.P15529507601418053572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358525 (A358373 (n + 5) - A085398 (n + 1)).toNat

end

end A088427.P15529507601418053572

/-! ## A088427.P2334158307660945191

`A344590(A166956(n)+A005235(n+1))`
-/

namespace A088427.P2334158307660945191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344590 (A166956 n + A005235 (n + 1)).toNat

end

end A088427.P2334158307660945191

/-! ## A088427.P15328313461007746340

`gcd(A007737(A294533(n)), A288601(n+1))`
-/

namespace A088427.P15328313461007746340
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007737 (A294533 n).toNat) (A288601 (n + 1))

end

end A088427.P15328313461007746340

/-!
# A088428: Number of primes in arithmetic progression starting with 29 and with d=2n.

The programs for A088428, there is no canonical definition to state claims against.
-/

/-! ## A088428.P10083184991538098141

`A088423(4*(n+1))+A003849(A208848(n))`
-/

namespace A088428.P10083184991538098141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088423 (4 * (n + 1)) + A003849 (A208848 n).toNat

end

end A088428.P10083184991538098141

/-! ## A088428.P1246591542751644121

`gcd(A014701(n+1), A337442(A035607(n)))`
-/

namespace A088428.P1246591542751644121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014701 (n + 1)) (A337442 (A035607 n).toNat)

end

end A088428.P1246591542751644121

/-! ## A088428.P4214072522325010343

`A088423(4*(n+1))+A000007(A033576(n))`
-/

namespace A088428.P4214072522325010343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088423 (4 * (n + 1)) + A000007 (A033576 n).toNat

end

end A088428.P4214072522325010343

/-! ## A088428.P3093867439618285177

`A088423(4*(n+1))+A000038(A000578(n+1))`
-/

namespace A088428.P3093867439618285177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088423 (4 * (n + 1)) + A000038 (A000578 (n + 1)).toNat

end

end A088428.P3093867439618285177

/-! ## A088428.P4006691252883435229

`A001222(A020589(n+1))*A088423(4*(n+1))`
-/

namespace A088428.P4006691252883435229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A020589 (n + 1)).toNat * A088423 (4 * (n + 1))

end

end A088428.P4006691252883435229

/-!
# A088429: Number of primes in arithmetic progression starting with 31 and with d=2n.

The programs for A088429, there is no canonical definition to state claims against.
-/

/-! ## A088429.P9080809227717809622

`A091237(A323579(∑{d}[n+1, #]))`
-/

namespace A088429.P9080809227717809622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091237 (A323579 (∑ d ∈ Nat.divisors (f1 n), d)).toNat

end

end A088429.P9080809227717809622

/-! ## A088429.P1360447892228238941

`A001511(A276299(2*n+5)+1)`
-/

namespace A088429.P1360447892228238941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A276299 (2 * n + 5) + 1).toNat

end

end A088429.P1360447892228238941

/-! ## A088429.P1256664335862444461

`A091304(xor(7, A126953(2*(n+1))))`
-/

namespace A088429.P1256664335862444461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091304 (Int.xor 7 (A126953 (2 * (n + 1)))).toNat

end

end A088429.P1256664335862444461

/-! ## A088429.P2260843553108428515

`A105083(A005823(A000041(n)))`
-/

namespace A088429.P2260843553108428515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105083 (A005823 (A000041 n).toNat).toNat

end

end A088429.P2260843553108428515

/-! ## A088429.P8697244316893364797

`A296150(gcd(A329864(n), A335273(3*n+4)))`
-/

namespace A088429.P8697244316893364797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296150 (Int.gcd (A329864 n) (A335273 (3 * n + 4)))

end

end A088429.P8697244316893364797

/-!
# A088430: a(n) = the least positive d such that for p=prime(n), the numbers p+0d, p+1d, p+2d, ..., p+(p-1)d are all primes.

The programs for A088430, there is no canonical definition to state claims against.
-/

/-! ## A088430.P14442085171405539625

`A002110(n)*A231018(n+1)`
-/

namespace A088430.P14442085171405539625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n * A231018 (n + 1)

end

end A088430.P14442085171405539625

/-! ## A088430.P1786101662022391283

`record[Δ[A231406(n+1)]]`
-/

namespace A088430.P1786101662022391283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231406 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088430.P1786101662022391283

/-! ## A088430.P11146579955715497365

`A061558(A000040(n+1))`
-/

namespace A088430.P11146579955715497365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061558 (A000040 (n + 1)).toNat

end

end A088430.P11146579955715497365

/-!
# A088431: Half of the (n+1)-st component of the continued fraction expansion of Sum_{k>=0} 1/2^(2^k).

The programs for A088431, the canonical program `A088431.P14447499120009447117` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088431 has offset 1).

The definition of A088431 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088431.P7705854924391910459

`1/2*A007400(n+2)`
-/

namespace A088431.P7705854924391910459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A007400 (n + 2) : ℚ)

end

end A088431.P7705854924391910459

namespace A088431

/-- `1/2*A007400(n+2)` -/
def P7705854924391910459.Spec : Prop :=
  ∀ n, P7705854924391910459.a n = (A088431 (n + 1) : ℚ)

end A088431

/-! ## A088431.P7911681047389317701

`5-A092910(n)`
-/

namespace A088431.P7911681047389317701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A092910 n

end

end A088431.P7911681047389317701

namespace A088431

/-- `5-A092910(n)` -/
def P7911681047389317701.Spec : Prop :=
  ∀ n, P7911681047389317701.a n = A088431 (n + 1)

end A088431

/-! ## A088431.P14840702570136329863

`A007400(n+2)/2`
-/

namespace A088431.P14840702570136329863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007400 (n + 2) : ℚ) / 2

end

end A088431.P14840702570136329863

namespace A088431

/-- `A007400(n+2)/2` -/
def P14840702570136329863.Spec : Prop :=
  ∀ n, P14840702570136329863.a n = (A088431 (n + 1) : ℚ)

end A088431

/-! ## A088431.P14447499120009447117

`2-Δ[A073089(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A088431

/-- `2-Δ[A073089(n+1)]` -/
def P14447499120009447117.Spec : Prop :=
  ∀ n, P14447499120009447117.a n = A088431 (n + 1)

theorem P14447499120009447117.correct : P14447499120009447117.Spec := by
  intro n
  simp only [A088431, Nat.add_sub_cancel]

end A088431

/-! ## A088431.P11819765515319298428

`round(exp(2/A006464(n+1)))`
-/

namespace A088431.P11819765515319298428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp (2 / (A006464 (n + 1) : ℚ) : ℝ))

end

end A088431.P11819765515319298428

namespace A088431

/-- `round(exp(2/A006464(n+1)))` -/
def P11819765515319298428.Spec : Prop :=
  ∀ n, P11819765515319298428.a n = A088431 (n + 1)

end A088431

/-! ## A088431.P9663284053049933231

`A000045(Δ[xor(1, A073089(n+1))]+3)`
-/

namespace A088431.P9663284053049933231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A073089 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (n + 1) - f1 n + 3).toNat

end

end A088431.P9663284053049933231

namespace A088431

/-- `A000045(Δ[xor(1, A073089(n+1))]+3)` -/
def P9663284053049933231.Spec : Prop :=
  ∀ n, P9663284053049933231.a n = A088431 (n + 1)

end A088431

/-! ## A088431.P11537870541771220190

`A073089(n+1)+2-A073089(n+2)`
-/

namespace A088431.P11537870541771220190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073089 (n + 1) + (2 - A073089 (n + 2))

end

end A088431.P11537870541771220190

namespace A088431

/-- `A073089(n+1)+2-A073089(n+2)` -/
def P11537870541771220190.Spec : Prop :=
  ∀ n, P11537870541771220190.a n = A088431 (n + 1)

theorem P11537870541771220190.correct : P11537870541771220190.Spec := by
  intro n
  simp only [A088431, Nat.add_sub_cancel, A088431.P11537870541771220190.a, A088431.P14447499120009447117.f1, A088431.P14447499120009447117.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A088431

/-! ## A088431.P12057291609769776075

`Δ[eq[4, A007400(n)]]`
-/

namespace A088431.P12057291609769776075
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007400 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A088431.P12057291609769776075

namespace A088431

/-- `Δ[eq[4, A007400(n)]]` -/
def P12057291609769776075.Spec : Prop :=
  ∀ n, P12057291609769776075.a n = A088431 (n + 1)

end A088431

/-! ## A088431.P5724400312931007679

`2-Δ[val(A007400(2*n+1), 4)]`
-/

namespace A088431.P5724400312931007679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007400 (2 * n + 1)).toNat 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A088431.P5724400312931007679

namespace A088431

/-- `2-Δ[val(A007400(2*n+1), 4)]` -/
def P5724400312931007679.Spec : Prop :=
  ∀ n, P5724400312931007679.a n = A088431 (n + 1)

end A088431

/-!
# A088432: Number of ways to write n as n = u*v*w with 1 <= u < v <= w.

The programs for A088432, there is no canonical definition to state claims against.
-/

/-! ## A088432.P623849288711808439

`(A140773(n+1)+A102354(n+1))%A034836(n+1)`
-/

namespace A088432.P623849288711808439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140773 (n + 1) + A102354 (n + 1)) (A034836 (n + 1))

end

end A088432.P623849288711808439

/-! ## A088432.P12527773115325109620

`A002264(A007425(n+1))-A088433(n+1)`
-/

namespace A088432.P12527773115325109620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A007425 (n + 1)).toNat - A088433 (n + 1)

end

end A088432.P12527773115325109620

/-! ## A088432.P15866769205227020769

`A140773(n+1)-(A088433(n+1)+A034836(n+1))`
-/

namespace A088432.P15866769205227020769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140773 (n + 1) - (A088433 (n + 1) + A034836 (n + 1))

end

end A088432.P15866769205227020769

/-! ## A088432.P1143237005057876494

`A007425(n+1)-(A088433(n+1)+A140773(n+1)+A088434(n+1))`
-/

namespace A088432.P1143237005057876494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (n + 1) - (A088433 (n + 1) + (A140773 (n + 1) + A088434 (n + 1)))

end

end A088432.P1143237005057876494

/-! ## A088432.P17134431457831334392

`A140773(n+1)-(A088433(n+1)+A088434(n+1)+A046951(n+1))`
-/

namespace A088432.P17134431457831334392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140773 (n + 1) - (A088433 (n + 1) + (A088434 (n + 1) + A046951 (n + 1)))

end

end A088432.P17134431457831334392

/-! ## A088432.P708709504655886504

`A140773(n+1)-(A088433(n+1)+A122179(n+1)+A038548(n+1))`
-/

namespace A088432.P708709504655886504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140773 (n + 1) - (A088433 (n + 1) + (A122179 (n + 1) + A038548 (n + 1)))

end

end A088432.P708709504655886504

/-! ## A088432.P8804924733501225803

`A140773(n+1)-(A088433(n+1)+A122179(n+1)+A072670(n)+1)`
-/

namespace A088432.P8804924733501225803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140773 (n + 1) - (A088433 (n + 1) + (A122179 (n + 1) + (A072670 n + 1)))

end

end A088432.P8804924733501225803

/-!
# A088433: Number of ways to write n as n = u*v*w with 1<=u<=v

The programs for A088433, there is no canonical definition to state claims against.
-/

/-! ## A088433.P15822440489518256932

`A034836(n+1)-A102354(n+1)`
-/

namespace A088433.P15822440489518256932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (n + 1) - A102354 (n + 1)

end

end A088433.P15822440489518256932

/-! ## A088433.P18440082423171922903

`A002264(A007425(n+1))-A088432(n+1)`
-/

namespace A088433.P18440082423171922903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A007425 (n + 1)).toNat - A088432 (n + 1)

end

end A088433.P18440082423171922903

/-! ## A088433.P2213801686015598318

`A046951(n+1)+A088434(n+1)-A102354(n+1)`
-/

namespace A088433.P2213801686015598318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1) + (A088434 (n + 1) - A102354 (n + 1))

end

end A088433.P2213801686015598318

/-! ## A088433.P15691229625293732256

`A140773(n+1)-(A088432(n+1)+A034836(n+1))`
-/

namespace A088433.P15691229625293732256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140773 (n + 1) - (A088432 (n + 1) + A034836 (n + 1))

end

end A088433.P15691229625293732256

/-! ## A088433.P9182533431702576215

`A007425(n+1)-(A088432(n+1)+A140773(n+1)+A088434(n+1))`
-/

namespace A088433.P9182533431702576215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (n + 1) - (A088432 (n + 1) + (A140773 (n + 1) + A088434 (n + 1)))

end

end A088433.P9182533431702576215

/-! ## A088433.P16091307486866511746

`A226378(A045966(n+1))-A102354(n+1)`
-/

namespace A088433.P16091307486866511746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (A045966 (n + 1)).toNat - A102354 (n + 1)

end

end A088433.P16091307486866511746

/-! ## A088433.P7658698449567787018

`A226378(A137509(n+1))-A102354(n+1)`
-/

namespace A088433.P7658698449567787018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (A137509 (n + 1)).toNat - A102354 (n + 1)

end

end A088433.P7658698449567787018

/-! ## A088433.P7846162812586377784

`A226378(A178442(n+1))-A102354(n+1)`
-/

namespace A088433.P7846162812586377784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (A178442 (n + 1)).toNat - A102354 (n + 1)

end

end A088433.P7846162812586377784

/-!
# A088434: Number of ways to write n as n = u*v*w with 1 <= u < v < w.

The programs for A088434, the canonical program `A088434.P6459778276779683770` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088434 has offset 1).

The definition of A088434 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088434.P5377521794857235335

`A262202(n+1)+A122179(n+1)`
-/

namespace A088434.P5377521794857235335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262202 (n + 1) + A122179 (n + 1)

end

end A088434.P5377521794857235335

namespace A088434

/-- `A262202(n+1)+A122179(n+1)` -/
def P5377521794857235335.Spec : Prop :=
  ∀ n, P5377521794857235335.a n = A088434 (n + 1)

end A088434

/-! ## A088434.P11048283964323617083

`A034836(n+1)-A046951(n+1)`
-/

namespace A088434.P11048283964323617083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (n + 1) - A046951 (n + 1)

end

end A088434.P11048283964323617083

namespace A088434

/-- `A034836(n+1)-A046951(n+1)` -/
def P11048283964323617083.Spec : Prop :=
  ∀ n, P11048283964323617083.a n = A088434 (n + 1)

end A088434

/-! ## A088434.P10778334066354659395

`A034836(n+1)-(A071325(n+1)+1)`
-/

namespace A088434.P10778334066354659395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (n + 1) - (A071325 (n + 1) + 1)

end

end A088434.P10778334066354659395

namespace A088434

/-- `A034836(n+1)-(A071325(n+1)+1)` -/
def P10778334066354659395.Spec : Prop :=
  ∀ n, P10778334066354659395.a n = A088434 (n + 1)

end A088434

/-! ## A088434.P7061877913179142681

`A122180(n+1)+A200213(n+1)/2`
-/

namespace A088434.P7061877913179142681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122180 (n + 1) : ℚ) + (A200213 (n + 1) : ℚ) / 2

end

end A088434.P7061877913179142681

namespace A088434

/-- `A122180(n+1)+A200213(n+1)/2` -/
def P7061877913179142681.Spec : Prop :=
  ∀ n, P7061877913179142681.a n = (A088434 (n + 1) : ℚ)

end A088434

/-! ## A088434.P6459778276779683770

`∑{d}[n+1, A152467(A014681(A000005(#)+1))]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A088434

/-- `∑{d}[n+1, A152467(A014681(A000005(#)+1))]` -/
def P6459778276779683770.Spec : Prop :=
  ∀ n, P6459778276779683770.a n = A088434 (n + 1)

theorem P6459778276779683770.correct : P6459778276779683770.Spec := by
  intro n
  simp only [A088434, Nat.add_sub_cancel]

end A088434

/-! ## A088434.P826474064821569284

`(A034836(n+1)+A007425(n+1))%A140773(n+1)`
-/

namespace A088434.P826474064821569284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034836 (n + 1) + A007425 (n + 1)) (A140773 (n + 1))

end

end A088434.P826474064821569284

namespace A088434

/-- `(A034836(n+1)+A007425(n+1))%A140773(n+1)` -/
def P826474064821569284.Spec : Prop :=
  ∀ n, P826474064821569284.a n = A088434 (n + 1)

end A088434

/-! ## A088434.P11148418794291700121

`A045778(n+1)-A045778(A006567(2*n+5))`
-/

namespace A088434.P11148418794291700121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (n + 1) - A045778 (A006567 (2 * n + 5)).toNat

end

end A088434.P11148418794291700121

namespace A088434

/-- `A045778(n+1)-A045778(A006567(2*n+5))` -/
def P11148418794291700121.Spec : Prop :=
  ∀ n, P11148418794291700121.a n = A088434 (n + 1)

end A088434

/-! ## A088434.P11027877537057446156

`A198277(n)%A045778(n+1)`
-/

namespace A088434.P11027877537057446156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A045778 (n + 1))

end

end A088434.P11027877537057446156

namespace A088434

/-- `A198277(n)%A045778(n+1)` -/
def P11027877537057446156.Spec : Prop :=
  ∀ n, P11027877537057446156.a n = A088434 (n + 1)

end A088434

/-! ## A088434.P9591806061652385108

`A318286(A181819(n+1))%A038664(n+1)-1`
-/

namespace A088434.P9591806061652385108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318286 (A181819 (n + 1)).toNat) (A038664 (n + 1)) - 1

end

end A088434.P9591806061652385108

namespace A088434

/-- `A318286(A181819(n+1))%A038664(n+1)-1` -/
def P9591806061652385108.Spec : Prop :=
  ∀ n, P9591806061652385108.a n = A088434 (n + 1)

end A088434

/-! ## A088434.P8164422280528315300

`A045778(n+1)/A176346(C(n, 2))-1`
-/

namespace A088434.P8164422280528315300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045778 (n + 1) : ℚ) / (A176346 (Nat.choose n 2) : ℚ) - 1

end

end A088434.P8164422280528315300

namespace A088434

/-- `A045778(n+1)/A176346(C(n, 2))-1` -/
def P8164422280528315300.Spec : Prop :=
  ∀ n, P8164422280528315300.a n = (A088434 (n + 1) : ℚ)

end A088434

/-! ## A088434.P11043039887432885980

`A045778(n+1)-A327537(A283466(n+1))`
-/

namespace A088434.P11043039887432885980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (n + 1) - A327537 (A283466 (n + 1)).toNat

end

end A088434.P11043039887432885980

namespace A088434

/-- `A045778(n+1)-A327537(A283466(n+1))` -/
def P11043039887432885980.Spec : Prop :=
  ∀ n, P11043039887432885980.a n = A088434 (n + 1)

end A088434

/-! ## A088434.P2342920981053056956

`A045778(n+1)-A102541(n²)`
-/

namespace A088434.P2342920981053056956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (n + 1) - A102541 (n ^ 2)

end

end A088434.P2342920981053056956

namespace A088434

/-- `A045778(n+1)-A102541(n²)` -/
def P2342920981053056956.Spec : Prop :=
  ∀ n, P2342920981053056956.a n = A088434 (n + 1)

end A088434

/-!
# A088435: 1/2 + half of the (n+1)-st component of the continued fraction expansion of sum(k>=1,1/3^(2^k)).

The programs for A088435, the canonical program `A088435.P13814468116043885168` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088435 has offset 1).

The definition of A088435 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088435.P1857905649125365414

`1/2*(1+A004200(n+2))`
-/

namespace A088435.P1857905649125365414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (1 + A004200 (n + 2) : ℚ)

end

end A088435.P1857905649125365414

namespace A088435

/-- `1/2*(1+A004200(n+2))` -/
def P1857905649125365414.Spec : Prop :=
  ∀ n, P1857905649125365414.a n = (A088435 (n + 1) : ℚ)

end A088435

/-! ## A088435.P10089156865847712315

`A006464(n+2)/2`
-/

namespace A088435.P10089156865847712315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006464 (n + 2) : ℚ) / 2

end

end A088435.P10089156865847712315

namespace A088435

/-- `A006464(n+2)/2` -/
def P10089156865847712315.Spec : Prop :=
  ∀ n, P10089156865847712315.a n = (A088435 (n + 1) : ℚ)

end A088435

/-! ## A088435.P5057375213276499502

`ceil(sqrt(A004200(n+2)))`
-/

namespace A088435.P5057375213276499502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A004200 (n + 2) : ℝ)⌉

end

end A088435.P5057375213276499502

namespace A088435

/-- `ceil(sqrt(A004200(n+2)))` -/
def P5057375213276499502.Spec : Prop :=
  ∀ n, P5057375213276499502.a n = A088435 (n + 1)

end A088435

/-! ## A088435.P923070828108744082

`ceil(6/A007400(n+3))`
-/

namespace A088435.P923070828108744082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈6 / (A007400 (n + 3) : ℚ)⌉

end

end A088435.P923070828108744082

namespace A088435

/-- `ceil(6/A007400(n+3))` -/
def P923070828108744082.Spec : Prop :=
  ∀ n, P923070828108744082.a n = A088435 (n + 1)

end A088435

/-! ## A088435.P13814468116043885168

`Δ[A073089(n+2)]+2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A088435

/-- `Δ[A073089(n+2)]+2` -/
def P13814468116043885168.Spec : Prop :=
  ∀ n, P13814468116043885168.a n = A088435 (n + 1)

theorem P13814468116043885168.correct : P13814468116043885168.Spec := by
  intro n
  simp only [A088435, Nat.add_sub_cancel]

end A088435

/-! ## A088435.P12967332390995708430

`2-Δ[gcd(2, (A014577(n)+1)²+n)]`
-/

namespace A088435.P12967332390995708430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 ((A014577 n + 1) ^ 2 + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A088435.P12967332390995708430

namespace A088435

/-- `2-Δ[gcd(2, (A014577(n)+1)²+n)]` -/
def P12967332390995708430.Spec : Prop :=
  ∀ n, P12967332390995708430.a n = A088435 (n + 1)

end A088435

/-! ## A088435.P5069817435104867429

`A092910(n+1)-1`
-/

namespace A088435.P5069817435104867429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092910 (n + 1) - 1

end

end A088435.P5069817435104867429

namespace A088435

/-- `A092910(n+1)-1` -/
def P5069817435104867429.Spec : Prop :=
  ∀ n, P5069817435104867429.a n = A088435 (n + 1)

end A088435

/-! ## A088435.P15726886924919356134

`4-A088431(n+2)`
-/

namespace A088435.P15726886924919356134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A088431 (n + 2)

end

end A088435.P15726886924919356134

namespace A088435

/-- `4-A088431(n+2)` -/
def P15726886924919356134.Spec : Prop :=
  ∀ n, P15726886924919356134.a n = A088435 (n + 1)

end A088435

/-! ## A088435.P15197592943520239373

`2-Δ[Δ[A069010(n)]²]`
-/

namespace A088435.P15197592943520239373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A088435.P15197592943520239373

namespace A088435

/-- `2-Δ[Δ[A069010(n)]²]` -/
def P15197592943520239373.Spec : Prop :=
  ∀ n, P15197592943520239373.a n = A088435 (n + 1)

end A088435

/-! ## A088435.P8406867776420125597

`Δ[and(2, A166466(n+1)+2*(n+1))!]+2`
-/

namespace A088435.P8406867776420125597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.land 2 (A166466 (n + 1) + (2 * (n + 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2

end

end A088435.P8406867776420125597

namespace A088435

/-- `Δ[and(2, A166466(n+1)+2*(n+1))!]+2` -/
def P8406867776420125597.Spec : Prop :=
  ∀ n, P8406867776420125597.a n = A088435 (n + 1)

end A088435

/-! ## A088435.P16385099227709450245

`2-A110037(n+2)`
-/

namespace A088435.P16385099227709450245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A110037 (n + 2)

end

end A088435.P16385099227709450245

namespace A088435

/-- `2-A110037(n+2)` -/
def P16385099227709450245.Spec : Prop :=
  ∀ n, P16385099227709450245.a n = A088435 (n + 1)

end A088435

/-! ## A088435.P756436033637386307

`A323191(2*n+1)+A092910(n+1)`
-/

namespace A088435.P756436033637386307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323191 (2 * n + 1) + A092910 (n + 1)

end

end A088435.P756436033637386307

namespace A088435

/-- `A323191(2*n+1)+A092910(n+1)` -/
def P756436033637386307.Spec : Prop :=
  ∀ n, P756436033637386307.a n = A088435 (n + 1)

end A088435

/-! ## A088435.P10312349708535384554

`Δ[(A014577(n)-A014577(2*n))²]+2`
-/

namespace A088435.P10312349708535384554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014577 n - A014577 (2 * n)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A088435.P10312349708535384554

namespace A088435

/-- `Δ[(A014577(n)-A014577(2*n))²]+2` -/
def P10312349708535384554.Spec : Prop :=
  ∀ n, P10312349708535384554.a n = A088435 (n + 1)

end A088435

/-! ## A088435.P16843282581239247893

`Δ[eq[A014577(n+1), A014577(n)]]`
-/

namespace A088435.P16843282581239247893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A088435.P16843282581239247893

namespace A088435

/-- `Δ[eq[A014577(n+1), A014577(n)]]` -/
def P16843282581239247893.Spec : Prop :=
  ∀ n, P16843282581239247893.a n = A088435 (n + 1)

end A088435

/-! ## A088435.P9410130184585683187

`Δ[eq[A014707(n+1), A014707(n)]]`
-/

namespace A088435.P9410130184585683187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A088435.P9410130184585683187

namespace A088435

/-- `Δ[eq[A014707(n+1), A014707(n)]]` -/
def P9410130184585683187.Spec : Prop :=
  ∀ n, P9410130184585683187.a n = A088435 (n + 1)

end A088435

/-!
# A088436: Number of permutations in the symmetric group S_n that have exactly one transposition in their cycle decomposition.

The programs for A088436, there is no canonical definition to state claims against.
-/

/-! ## A088436.P70996045735010138

`∑[n]*A114320(A002620(n))`
-/

namespace A088436.P70996045735010138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A114320 (A002620 n).toNat

end

end A088436.P70996045735010138

/-! ## A088436.P10964993413103029187

`record[A055087(n)*A114320(n)]`
-/

namespace A088436.P10964993413103029187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n * A114320 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088436.P10964993413103029187

/-! ## A088436.P10625502653551659229

`A000217(n)*A000266(A259361(n²))`
-/

namespace A088436.P10625502653551659229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A000266 (A259361 (n ^ 2)).toNat

end

end A088436.P10625502653551659229

/-! ## A088436.P17570675938691193054

`record[A002262(A091018(n))*A114320(n)]`
-/

namespace A088436.P17570675938691193054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A091018 n).toNat * A114320 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088436.P17570675938691193054

/-! ## A088436.P10979528594523768423

`record[A051777(A274427(n+1))*A114320(n)]`
-/

namespace A088436.P10979528594523768423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051777 (A274427 (n + 1)).toNat * A114320 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088436.P10979528594523768423

/-!
# A088437: Number of n X n orthogonal matrices over GF(2) modulo permutations of rows.

The programs for A088437, there is no canonical definition to state claims against.
-/

/-! ## A088437.P3494206371259274382

`A003053(n+1)/(n+1)!`
-/

namespace A088437.P3494206371259274382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003053 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A088437.P3494206371259274382

/-! ## A088437.P5417312408230312472

`a(n-1)/(n+1)*A166920(n)` with `a(0)=1`
-/

namespace A088437.P5417312408230312472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (n + 1 : ℚ) * (A166920 n : ℚ)

end

end A088437.P5417312408230312472

/-! ## A088437.P13930940048089274726

`A003053(n+1)/record[A084938(n)]`
-/

namespace A088437.P13930940048089274726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003053 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A088437.P13930940048089274726

/-! ## A088437.P18219307079211795232

`A003053(n+1)/record[A094587(n)]`
-/

namespace A088437.P18219307079211795232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003053 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A088437.P18219307079211795232

/-! ## A088437.P11167245050200883460

`A003053(n+1)/∏[A000027(n+1)]`
-/

namespace A088437.P11167245050200883460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003053 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A088437.P11167245050200883460

/-!
# A088439: a(3n) = 3n, otherwise a(n) = 1.

The programs for A088439, the canonical program `A088439.P8470955749535570929` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088439 has offset 0).

The definition of A088439 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088439.P8470955749535570929

`gcd(n, n²%3)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A088439

/-- `gcd(n, n²%3)` -/
def P8470955749535570929.Spec : Prop :=
  ∀ n, (P8470955749535570929.a n : ℤ) = A088439 n

theorem P8470955749535570929.correct : P8470955749535570929.Spec := by
  intro n
  simp only [A088439]

end A088439

/-! ## A088439.P5090403689799046045

`n^C(n, lcm(3, n))`
-/

namespace A088439.P5090403689799046045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.choose n (Nat.lcm 3 n)

end

end A088439.P5090403689799046045

namespace A088439

/-- `n^C(n, lcm(3, n))` -/
def P5090403689799046045.Spec : Prop :=
  ∀ n, (P5090403689799046045.a n : ℤ) = A088439 n

end A088439

/-! ## A088439.P2287856430792446405

`n^Δ[ceil(n/3)]`
-/

namespace A088439.P2287856430792446405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3⌉

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A088439.P2287856430792446405

namespace A088439

/-- `n^Δ[ceil(n/3)]` -/
def P2287856430792446405.Spec : Prop :=
  ∀ n, P2287856430792446405.a n = (A088439 n : ℚ)

end A088439

/-! ## A088439.P3539650180271963246

`C(n, val(n²+3, 3))`
-/

namespace A088439.P3539650180271963246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.valuation (n ^ 2 + 3) 3)

end

end A088439.P3539650180271963246

namespace A088439

/-- `C(n, val(n²+3, 3))` -/
def P3539650180271963246.Spec : Prop :=
  ∀ n, (P3539650180271963246.a n : ℤ) = A088439 n

end A088439

/-! ## A088439.P1059662382180138718

`ceil(n^(1-n%3))`
-/

namespace A088439.P1059662382180138718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) ^ (1 - ((n % 3 : ℕ) : ℤ) : ℤ)⌉

end

end A088439.P1059662382180138718

namespace A088439

/-- `ceil(n^(1-n%3))` -/
def P1059662382180138718.Spec : Prop :=
  ∀ n, P1059662382180138718.a n = A088439 n

end A088439

/-! ## A088439.P11476896251618325781

`C(n, C(gcd(3, n²), 3))`
-/

namespace A088439.P11476896251618325781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.choose (Nat.gcd 3 (n ^ 2)) 3)

end

end A088439.P11476896251618325781

namespace A088439

/-- `C(n, C(gcd(3, n²), 3))` -/
def P11476896251618325781.Spec : Prop :=
  ∀ n, (P11476896251618325781.a n : ℤ) = A088439 n

end A088439

/-! ## A088439.P9626764871207951496

`C(n, ∑[n+1]%3)`
-/

namespace A088439.P9626764871207951496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ((∑ j ∈ Finset.range (n + 1), f1 j) % 3)

end

end A088439.P9626764871207951496

namespace A088439

/-- `C(n, ∑[n+1]%3)` -/
def P9626764871207951496.Spec : Prop :=
  ∀ n, (P9626764871207951496.a n : ℤ) = A088439 n

end A088439

/-! ## A088439.P14480207078578974460

`C(n, C((n+2)%3, 2))`
-/

namespace A088439.P14480207078578974460
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.choose ((n + 2) % 3) 2)

end

end A088439.P14480207078578974460

namespace A088439

/-- `C(n, C((n+2)%3, 2))` -/
def P14480207078578974460.Spec : Prop :=
  ∀ n, (P14480207078578974460.a n : ℤ) = A088439 n

end A088439

/-! ## A088439.P15160533174208548977

`∏{p}[n+3, n^val(#, 3)]`
-/

namespace A088439.P15160533174208548977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), n ^ SequenceMachineLib.valuation p 3

end

end A088439.P15160533174208548977

namespace A088439

/-- `∏{p}[n+3, n^val(#, 3)]` -/
def P15160533174208548977.Spec : Prop :=
  ∀ n, (P15160533174208548977.a n : ℤ) = A088439 n

end A088439

/-! ## A088439.P13185994782925528117

`C(n, char[1]+char[3*n])`
-/

namespace A088439.P13185994782925528117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ((if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = n then 1 else 0))

end

end A088439.P13185994782925528117

namespace A088439

/-- `C(n, char[1]+char[3*n])` -/
def P13185994782925528117.Spec : Prop :=
  ∀ n, (P13185994782925528117.a n : ℤ) = A088439 n

end A088439

/-! ## A088439.P5912366968539769213

`ceil(n^cos((2*n)%6))`
-/

namespace A088439.P5912366968539769213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) ^ (Real.cos ((2 * n % 6 : ℕ) : ℝ))⌉

end

end A088439.P5912366968539769213

namespace A088439

/-- `ceil(n^cos((2*n)%6))` -/
def P5912366968539769213.Spec : Prop :=
  ∀ n, P5912366968539769213.a n = A088439 n

end A088439

/-! ## A088439.P2363929956821213720

`n/n^((n+3)²%3)`
-/

namespace A088439.P2363929956821213720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (n ^ ((n + 3) ^ 2 % 3) : ℚ)

end

end A088439.P2363929956821213720

namespace A088439

/-- `n/n^((n+3)²%3)` -/
def P2363929956821213720.Spec : Prop :=
  ∀ n, P2363929956821213720.a n = (A088439 n : ℚ)

end A088439

/-! ## A088439.P1362592188946848702

`ceil(n/dr((n+1)^3)!)`
-/

namespace A088439.P1362592188946848702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (Nat.factorial (SequenceMachineLib.digitalRoot ((n + 1) ^ 3 : ℤ)) : ℚ)⌉

end

end A088439.P1362592188946848702

namespace A088439

/-- `ceil(n/dr((n+1)^3)!)` -/
def P1362592188946848702.Spec : Prop :=
  ∀ n, P1362592188946848702.a n = A088439 n

end A088439

/-! ## A088439.P9487416048513374723

`ceil(n^(2-dr(∑[n+1])))`
-/

namespace A088439.P9487416048513374723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) ^ (2 - (SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ) : ℤ)⌉

end

end A088439.P9487416048513374723

namespace A088439

/-- `ceil(n^(2-dr(∑[n+1])))` -/
def P9487416048513374723.Spec : Prop :=
  ∀ n, P9487416048513374723.a n = A088439 n

end A088439

/-! ## A088439.P16747710425709093423

`(n^((n+1)%3))%(n+1)`
-/

namespace A088439.P16747710425709093423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ ((n + 1) % 3) % (n + 1)

end

end A088439.P16747710425709093423

namespace A088439

/-- `(n^((n+1)%3))%(n+1)` -/
def P16747710425709093423.Spec : Prop :=
  ∀ n, (P16747710425709093423.a n : ℤ) = A088439 n

end A088439

/-! ## A088439.P6622572399204258572

`(1-n)*(n*n)%3+n`
-/

namespace A088439.P6622572399204258572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * ((n * n % 3 : ℕ) : ℤ) + (n : ℤ)

end

end A088439.P6622572399204258572

namespace A088439

/-- `(1-n)*(n*n)%3+n` -/
def P6622572399204258572.Spec : Prop :=
  ∀ n, P6622572399204258572.a n = A088439 n

end A088439

/-! ## A088439.P7862064475755192164

`(n-1)*val(n²+3, 3)+1`
-/

namespace A088439.P7862064475755192164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (SequenceMachineLib.valuation (n ^ 2 + 3) 3 : ℤ) + 1

end

end A088439.P7862064475755192164

namespace A088439

/-- `(n-1)*val(n²+3, 3)+1` -/
def P7862064475755192164.Spec : Prop :=
  ∀ n, P7862064475755192164.a n = A088439 n

end A088439

/-! ## A088439.P8695518826826294976

`floor(n/(a(n-1)*a(n-2)))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A088439.P8695518826826294976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  ⌊(n : ℚ) / (a (n - 1) * a (n - 2) : ℚ)⌋

end

end A088439.P8695518826826294976

namespace A088439

/-- `floor(n/(a(n-1)*a(n-2)))` -/
def P8695518826826294976.Spec : Prop :=
  ∀ n, P8695518826826294976.a n = A088439 n

end A088439

/-! ## A088439.P13382693255529427930

`gcd(1-a(n-2), floor(n/a(n-1)))` with `a(0)=0, a(1)=1`
-/

namespace A088439.P13382693255529427930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.gcd (1 - (a (n - 2) : ℤ)) ⌊(n : ℚ) / (a (n - 1) : ℚ)⌋

end

end A088439.P13382693255529427930

namespace A088439

/-- `gcd(1-a(n-2), floor(n/a(n-1)))` -/
def P13382693255529427930.Spec : Prop :=
  ∀ n, (P13382693255529427930.a n : ℤ) = A088439 n

end A088439

/-! ## A088439.P10609375617656502190

`floor(floor(n/a(n-1))/a(n-2))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A088439.P10609375617656502190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  ⌊(⌊(n : ℚ) / (a (n - 1) : ℚ)⌋ : ℚ) / (a (n - 2) : ℚ)⌋

end

end A088439.P10609375617656502190

namespace A088439

/-- `floor(floor(n/a(n-1))/a(n-2))` -/
def P10609375617656502190.Spec : Prop :=
  ∀ n, P10609375617656502190.a n = A088439 n

end A088439

/-!
# A088440: a(4n) = 4n, otherwise a(n) = 1.

The programs for A088440, the canonical program `A088440.P6359028792491619128` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088440 has offset 0).

The definition of A088440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088440.P2348998252490541370

`n^val(gcd(4, n), 4)`
-/

namespace A088440.P2348998252490541370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ SequenceMachineLib.valuation (Nat.gcd 4 n) 4

end

end A088440.P2348998252490541370

namespace A088440

/-- `n^val(gcd(4, n), 4)` -/
def P2348998252490541370.Spec : Prop :=
  ∀ n, (P2348998252490541370.a n : ℤ) = A088440 n

end A088440

/-! ## A088440.P107765057020921842

`n^val(or(4, n), 4)`
-/

namespace A088440.P107765057020921842
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ SequenceMachineLib.valuation (Nat.lor 4 n) 4

end

end A088440.P107765057020921842

namespace A088440

/-- `n^val(or(4, n), 4)` -/
def P107765057020921842.Spec : Prop :=
  ∀ n, (P107765057020921842.a n : ℤ) = A088440 n

end A088440

/-! ## A088440.P12795471474199310624

`n^C(n, lcm(4, n))`
-/

namespace A088440.P12795471474199310624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.choose n (Nat.lcm 4 n)

end

end A088440.P12795471474199310624

namespace A088440

/-- `n^C(n, lcm(4, n))` -/
def P12795471474199310624.Spec : Prop :=
  ∀ n, (P12795471474199310624.a n : ℤ) = A088440 n

end A088440

/-! ## A088440.P7156482859363391992

`n^Δ[ceil(n/4)]`
-/

namespace A088440.P7156482859363391992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 4⌉

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A088440.P7156482859363391992

namespace A088440

/-- `n^Δ[ceil(n/4)]` -/
def P7156482859363391992.Spec : Prop :=
  ∀ n, P7156482859363391992.a n = (A088440 n : ℚ)

end A088440

/-! ## A088440.P6359028792491619128

`C(n, Δ[ceil(n/4)])`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A088440

/-- `C(n, Δ[ceil(n/4)])` -/
def P6359028792491619128.Spec : Prop :=
  ∀ n, (P6359028792491619128.a n : ℤ) = A088440 n

theorem P6359028792491619128.correct : P6359028792491619128.Spec := by
  intro n
  simp only [A088440]

end A088440

/-! ## A088440.P5937216392383473957

`ceil(n^(1-and(3, n)))`
-/

namespace A088440.P5937216392383473957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) ^ (1 - (Nat.land 3 n : ℤ) : ℤ)⌉

end

end A088440.P5937216392383473957

namespace A088440

/-- `ceil(n^(1-and(3, n)))` -/
def P5937216392383473957.Spec : Prop :=
  ∀ n, P5937216392383473957.a n = A088440 n

end A088440

/-! ## A088440.P2533225234593543733

`ceil(n/n^and(3, n))`
-/

namespace A088440.P2533225234593543733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (n ^ Nat.land 3 n : ℚ)⌉

end

end A088440.P2533225234593543733

namespace A088440

/-- `ceil(n/n^and(3, n))` -/
def P2533225234593543733.Spec : Prop :=
  ∀ n, P2533225234593543733.a n = A088440 n

end A088440

/-! ## A088440.P12928420720709463490

`sqrt(n^and(2, (n-1)^3))`
-/

namespace A088440.P12928420720709463490
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n : ℚ) ^ (Int.land 2 (((n : ℤ) - 1) ^ 3) : ℤ) : ℝ)

end

end A088440.P12928420720709463490

namespace A088440

/-- `sqrt(n^and(2, (n-1)^3))` -/
def P12928420720709463490.Spec : Prop :=
  ∀ n, P12928420720709463490.a n = (A088440 n : ℝ)

end A088440

/-! ## A088440.P13581076545158608905

`ceil(n^(or(3, n)-(n+2)))`
-/

namespace A088440.P13581076545158608905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) ^ ((Nat.lor 3 n : ℤ) - (n + 2 : ℤ) : ℤ)⌉

end

end A088440.P13581076545158608905

namespace A088440

/-- `ceil(n^(or(3, n)-(n+2)))` -/
def P13581076545158608905.Spec : Prop :=
  ∀ n, P13581076545158608905.a n = A088440 n

end A088440

/-! ## A088440.P3809576129703358358

`ceil(n^(n-or(3, n-1)))`
-/

namespace A088440.P3809576129703358358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) ^ ((n : ℤ) - Int.lor 3 ((n : ℤ) - 1) : ℤ)⌉

end

end A088440.P3809576129703358358

namespace A088440

/-- `ceil(n^(n-or(3, n-1)))` -/
def P3809576129703358358.Spec : Prop :=
  ∀ n, P3809576129703358358.a n = A088440 n

end A088440

/-! ## A088440.P14850912746022806696

`ceil(n^(xor(3, n)-(n+2)))`
-/

namespace A088440.P14850912746022806696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) ^ ((Nat.xor 3 n : ℤ) - (n + 2 : ℤ) : ℤ)⌉

end

end A088440.P14850912746022806696

namespace A088440

/-- `ceil(n^(xor(3, n)-(n+2)))` -/
def P14850912746022806696.Spec : Prop :=
  ∀ n, P14850912746022806696.a n = A088440 n

end A088440

/-! ## A088440.P12691144140989191646

`n-(n-1)%or(3, n-1)`
-/

namespace A088440.P12691144140989191646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod ((n : ℤ) - 1) (Int.lor 3 ((n : ℤ) - 1))

end

end A088440.P12691144140989191646

namespace A088440

/-- `n-(n-1)%or(3, n-1)` -/
def P12691144140989191646.Spec : Prop :=
  ∀ n, P12691144140989191646.a n = A088440 n

end A088440

/-! ## A088440.P9365276665956926110

`and(-5, (n+2)²)%(n+3)`
-/

namespace A088440.P9365276665956926110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (-5) ((n + 2) ^ 2 : ℤ)) (n + 3 : ℤ)

end

end A088440.P9365276665956926110

namespace A088440

/-- `and(-5, (n+2)²)%(n+3)` -/
def P9365276665956926110.Spec : Prop :=
  ∀ n, P9365276665956926110.a n = A088440 n

end A088440

/-! ## A088440.P9146617925219395364

`ceil(n^(n-3-xor(3, n-1)))`
-/

namespace A088440.P9146617925219395364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) ^ ((n : ℤ) - 3 - Int.xor 3 ((n : ℤ) - 1) : ℤ)⌉

end

end A088440.P9146617925219395364

namespace A088440

/-- `ceil(n^(n-3-xor(3, n-1)))` -/
def P9146617925219395364.Spec : Prop :=
  ∀ n, P9146617925219395364.a n = A088440 n

end A088440

/-! ## A088440.P17802112110881373447

`xor(1, (n+1)*∑[n+1])%(n+1)`
-/

namespace A088440.P17802112110881373447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)) % (n + 1)

end

end A088440.P17802112110881373447

namespace A088440

/-- `xor(1, (n+1)*∑[n+1])%(n+1)` -/
def P17802112110881373447.Spec : Prop :=
  ∀ n, (P17802112110881373447.a n : ℤ) = A088440 n

end A088440

/-! ## A088440.P8949169554000487928

`2*n/gcd(2*n, and(2, and(n+3, n+2)))`
-/

namespace A088440.P8949169554000487928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / (Nat.gcd (2 * n) (Nat.land 2 (Nat.land (n + 3) (n + 2))) : ℚ)

end

end A088440.P8949169554000487928

namespace A088440

/-- `2*n/gcd(2*n, and(2, and(n+3, n+2)))` -/
def P8949169554000487928.Spec : Prop :=
  ∀ n, P8949169554000487928.a n = (A088440 n : ℚ)

end A088440

/-! ## A088440.P12355225504716305093

`gcd(n, A046978(n))`
-/

namespace A088440.P12355225504716305093
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A046978 n)

end

end A088440.P12355225504716305093

namespace A088440

/-- `gcd(n, A046978(n))` -/
def P12355225504716305093.Spec : Prop :=
  ∀ n, (P12355225504716305093.a n : ℤ) = A088440 n

end A088440

/-! ## A088440.P13451977479647601263

`A265722(A027656(n))`
-/

namespace A088440.P13451977479647601263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265722 (A027656 n).toNat

end

end A088440.P13451977479647601263

namespace A088440

/-- `A265722(A027656(n))` -/
def P13451977479647601263.Spec : Prop :=
  ∀ n, P13451977479647601263.a n = A088440 n

end A088440

/-! ## A088440.P16362013569669480223

`A265722(A038459(n+1))`
-/

namespace A088440.P16362013569669480223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265722 (A038459 (n + 1)).toNat

end

end A088440.P16362013569669480223

namespace A088440

/-- `A265722(A038459(n+1))` -/
def P16362013569669480223.Spec : Prop :=
  ∀ n, P16362013569669480223.a n = A088440 n

end A088440

/-! ## A088440.P12822685029661615056

`A265722(A109168(n+1))`
-/

namespace A088440.P12822685029661615056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265722 (A109168 (n + 1)).toNat

end

end A088440.P12822685029661615056

namespace A088440

/-- `A265722(A109168(n+1))` -/
def P12822685029661615056.Spec : Prop :=
  ∀ n, P12822685029661615056.a n = A088440 n

end A088440

/-!
# A088441: a(n) = n if n == 0 (mod 3), a(n) = 1 if n == 2 (mod 3), otherwise a(n) = floor((n-2)/2).

The programs for A088441, the canonical program `A088441.P8766483255871811894` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088441 has offset 2).

The definition of A088441 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088441.P8766483255871811894

`A006368(gcd(A131380(n), A133310(n)))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A088441

/-- `A006368(gcd(A131380(n), A133310(n)))` -/
def P8766483255871811894.Spec : Prop :=
  ∀ n, P8766483255871811894.a n = A088441 (n + 2)

theorem P8766483255871811894.correct : P8766483255871811894.Spec := by
  intro n
  simp only [A088441, Nat.add_sub_cancel]

end A088441

/-! ## A088441.P4734015386408433356

`((n+2)²%(3*(n+1)))%A007494(n+2)`
-/

namespace A088441.P4734015386408433356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((n + 2) ^ 2 % (3 * (n + 1)) : ℕ) : ℤ) (A007494 (n + 2))

end

end A088441.P4734015386408433356

namespace A088441

/-- `((n+2)²%(3*(n+1)))%A007494(n+2)` -/
def P4734015386408433356.Spec : Prop :=
  ∀ n, P4734015386408433356.a n = A088441 (n + 2)

end A088441

/-! ## A088441.P8025062526440474158

`A006368(A330396(n+3)-A087507(n+3))`
-/

namespace A088441.P8025062526440474158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A330396 (n + 3) - A087507 (n + 3)).toNat

end

end A088441.P8025062526440474158

namespace A088441

/-- `A006368(A330396(n+3)-A087507(n+3))` -/
def P8025062526440474158.Spec : Prop :=
  ∀ n, P8025062526440474158.a n = A088441 (n + 2)

end A088441

/-! ## A088441.P6017997336324780220

`A008619((2*n)%3*A004482(n))`
-/

namespace A088441.P6017997336324780220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (((2 * n % 3 : ℕ) : ℤ) * A004482 n).toNat

end

end A088441.P6017997336324780220

namespace A088441

/-- `A008619((2*n)%3*A004482(n))` -/
def P6017997336324780220.Spec : Prop :=
  ∀ n, P6017997336324780220.a n = A088441 (n + 2)

end A088441

/-! ## A088441.P4150867937156387694

`A004526(n*A080425(n))+(n+1)%3`
-/

namespace A088441.P4150867937156387694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n : ℤ) * A080425 n).toNat + (((n + 1) % 3 : ℕ) : ℤ)

end

end A088441.P4150867937156387694

namespace A088441

/-- `A004526(n*A080425(n))+(n+1)%3` -/
def P4150867937156387694.Spec : Prop :=
  ∀ n, P4150867937156387694.a n = A088441 (n + 2)

end A088441

/-! ## A088441.P8710160166559936688

`A008619(A004482(n)*A080425(n))`
-/

namespace A088441.P8710160166559936688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004482 n * A080425 n).toNat

end

end A088441.P8710160166559936688

namespace A088441

/-- `A008619(A004482(n)*A080425(n))` -/
def P8710160166559936688.Spec : Prop :=
  ∀ n, P8710160166559936688.a n = A088441 (n + 2)

end A088441

/-! ## A088441.P16659024915637352582

`A065033((5*n)%3*A004482(n)+1)`
-/

namespace A088441.P16659024915637352582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (((5 * n % 3 : ℕ) : ℤ) * A004482 n + 1).toNat

end

end A088441.P16659024915637352582

namespace A088441

/-- `A065033((5*n)%3*A004482(n)+1)` -/
def P16659024915637352582.Spec : Prop :=
  ∀ n, P16659024915637352582.a n = A088441 (n + 2)

end A088441

/-! ## A088441.P13233463414587126623

`A008619((4*n+7)%A080029(n+2))`
-/

namespace A088441.P13233463414587126623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.tmod (4 * n + 7 : ℤ) (A080029 (n + 2))).toNat

end

end A088441.P13233463414587126623

namespace A088441

/-- `A008619((4*n+7)%A080029(n+2))` -/
def P13233463414587126623.Spec : Prop :=
  ∀ n, P13233463414587126623.a n = A088441 (n + 2)

end A088441

/-! ## A088441.P880410211073355022

`A123108(A080425(n)*A080782(n+1))`
-/

namespace A088441.P880410211073355022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A080425 n * A080782 (n + 1)).toNat

end

end A088441.P880410211073355022

namespace A088441

/-- `A123108(A080425(n)*A080782(n+1))` -/
def P880410211073355022.Spec : Prop :=
  ∀ n, P880410211073355022.a n = A088441 (n + 2)

end A088441

/-!
# A088442: A linear version of the Josephus problem.

The programs for A088442, the canonical program `A088442.P5388418706274842335` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088442 has offset 0).

The definition of A088442 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088442.P5388418706274842335

`A004514(n)+1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A088442

/-- `A004514(n)+1` -/
def P5388418706274842335.Spec : Prop :=
  ∀ n, P5388418706274842335.a n = A088442 n

theorem P5388418706274842335.correct : P5388418706274842335.Spec := by
  intro n
  simp only [A088442]

end A088442

/-! ## A088442.P5473951725354523057

`2*A063694(n)+1`
-/

namespace A088442.P5473951725354523057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063694 n + 1

end

end A088442.P5473951725354523057

namespace A088442

/-- `2*A063694(n)+1` -/
def P5473951725354523057.Spec : Prop :=
  ∀ n, P5473951725354523057.a n = A088442 n

end A088442

/-! ## A088442.P17733618262992845883

`2*(n-a(floor(n/2)))+3` with `a(0)=1`
-/

namespace A088442.P17733618262992845883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((n : ℤ) - a ⌊(n : ℚ) / 2⌋.toNat) + 3

end

end A088442.P17733618262992845883

namespace A088442

/-- `2*(n-a(floor(n/2)))+3` -/
def P17733618262992845883.Spec : Prop :=
  ∀ n, P17733618262992845883.a n = A088442 n

end A088442

/-! ## A088442.P7024891480118064345

`xor(2*a(floor(n/2)), xor(3, 2*n))` with `a(0)=1`
-/

namespace A088442.P7024891480118064345
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (2 * a ⌊(n : ℚ) / 2⌋.toNat) (Nat.xor 3 (2 * n))

end

end A088442.P7024891480118064345

namespace A088442

/-- `xor(2*a(floor(n/2)), xor(3, 2*n))` -/
def P7024891480118064345.Spec : Prop :=
  ∀ n, (P7024891480118064345.a n : ℤ) = A088442 n

end A088442

/-! ## A088442.P8929635636162678657

`A053985(n)+1+n`
-/

namespace A088442.P8929635636162678657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053985 n + 1 + (n : ℤ)

end

end A088442.P8929635636162678657

namespace A088442

/-- `A053985(n)+1+n` -/
def P8929635636162678657.Spec : Prop :=
  ∀ n, P8929635636162678657.a n = A088442 n

end A088442

/-! ## A088442.P8124244486221766508

`xor(n, A048647(n))+1`
-/

namespace A088442.P8124244486221766508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A048647 n) + 1

end

end A088442.P8124244486221766508

namespace A088442

/-- `xor(n, A048647(n))+1` -/
def P8124244486221766508.Spec : Prop :=
  ∀ n, P8124244486221766508.a n = A088442 n

end A088442

/-! ## A088442.P13101711025047694832

`A005843(A063694(n))+1`
-/

namespace A088442.P13101711025047694832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A063694 n).toNat + 1

end

end A088442.P13101711025047694832

namespace A088442

/-- `A005843(A063694(n))+1` -/
def P13101711025047694832.Spec : Prop :=
  ∀ n, P13101711025047694832.a n = A088442 n

end A088442

/-! ## A088442.P2687133595835100662

`A047415(A063694(n)+1)`
-/

namespace A088442.P2687133595835100662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047415 (A063694 n + 1).toNat

end

end A088442.P2687133595835100662

namespace A088442

/-- `A047415(A063694(n)+1)` -/
def P2687133595835100662.Spec : Prop :=
  ∀ n, P2687133595835100662.a n = A088442 n

end A088442

/-! ## A088442.P56218653268810118

`A062880(A059905(n))+1`
-/

namespace A088442.P56218653268810118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062880 (A059905 n).toNat + 1

end

end A088442.P56218653268810118

namespace A088442

/-- `A062880(A059905(n))+1` -/
def P56218653268810118.Spec : Prop :=
  ∀ n, P56218653268810118.a n = A088442 n

end A088442

/-! ## A088442.P12625796147382275917

`A145812(A059905(n)+1)`
-/

namespace A088442.P12625796147382275917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145812 (A059905 n + 1).toNat

end

end A088442.P12625796147382275917

namespace A088442

/-- `A145812(A059905(n)+1)` -/
def P12625796147382275917.Spec : Prop :=
  ∀ n, P12625796147382275917.a n = A088442 n

end A088442

/-! ## A088442.P1499886315381537916

`A057300(A063694(n)+2)`
-/

namespace A088442.P1499886315381537916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A063694 n + 2).toNat

end

end A088442.P1499886315381537916

namespace A088442

/-- `A057300(A063694(n)+2)` -/
def P1499886315381537916.Spec : Prop :=
  ∀ n, P1499886315381537916.a n = A088442 n

end A088442

/-! ## A088442.P14021257408792411739

`A005408(A004514(n)/2)`
-/

namespace A088442.P14021257408792411739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.roundAway ((A004514 n : ℚ) / 2)).toNat

end

end A088442.P14021257408792411739

namespace A088442

/-- `A005408(A004514(n)/2)` -/
def P14021257408792411739.Spec : Prop :=
  ∀ n, P14021257408792411739.a n = A088442 n

end A088442

/-! ## A088442.P245637128250479066

`A057300(xor(2, A063694(n)))`
-/

namespace A088442.P245637128250479066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (Int.xor 2 (A063694 n)).toNat

end

end A088442.P245637128250479066

namespace A088442

/-- `A057300(xor(2, A063694(n)))` -/
def P245637128250479066.Spec : Prop :=
  ∀ n, P245637128250479066.a n = A088442 n

end A088442

/-! ## A088442.P10147227183803861892

`xor(A004442(n), A048647(n))`
-/

namespace A088442.P10147227183803861892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004442 n) (A048647 n)

end

end A088442.P10147227183803861892

namespace A088442

/-- `xor(A004442(n), A048647(n))` -/
def P10147227183803861892.Spec : Prop :=
  ∀ n, P10147227183803861892.a n = A088442 n

end A088442

/-! ## A088442.P1725860103194689077

`A317050(A006068(n))+n+1`
-/

namespace A088442.P1725860103194689077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317050 (A006068 n).toNat + (n + 1 : ℤ)

end

end A088442.P1725860103194689077

namespace A088442

/-- `A317050(A006068(n))+n+1` -/
def P1725860103194689077.Spec : Prop :=
  ∀ n, P1725860103194689077.a n = A088442 n

end A088442

/-! ## A088442.P16887787819435212199

`A057300(n-A063695(n))+1`
-/

namespace A088442.P16887787819435212199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 ((n : ℤ) - A063695 n).toNat + 1

end

end A088442.P16887787819435212199

namespace A088442

/-- `A057300(n-A063695(n))+1` -/
def P16887787819435212199.Spec : Prop :=
  ∀ n, P16887787819435212199.a n = A088442 n

end A088442

/-! ## A088442.P7628145273530284621

`1-(A001489(n)-A053985(n))`
-/

namespace A088442.P7628145273530284621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A001489 n - A053985 n)

end

end A088442.P7628145273530284621

namespace A088442

/-- `1-(A001489(n)-A053985(n))` -/
def P7628145273530284621.Spec : Prop :=
  ∀ n, P7628145273530284621.a n = A088442 n

end A088442

/-! ## A088442.P14144780885307998713

`and(A057300(n), A379578(n))+1`
-/

namespace A088442.P14144780885307998713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057300 n) (A379578 n) + 1

end

end A088442.P14144780885307998713

namespace A088442

/-- `and(A057300(n), A379578(n))+1` -/
def P14144780885307998713.Spec : Prop :=
  ∀ n, P14144780885307998713.a n = A088442 n

end A088442

/-! ## A088442.P17519492613556778809

`xor(n, A057300(A004468(n)))+1`
-/

namespace A088442.P17519492613556778809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A057300 (A004468 n).toNat) + 1

end

end A088442.P17519492613556778809

namespace A088442

/-- `xor(n, A057300(A004468(n)))+1` -/
def P17519492613556778809.Spec : Prop :=
  ∀ n, P17519492613556778809.a n = A088442 n

end A088442

/-! ## A088442.P3581525249933924477

`A005408(n)-(n-A053985(n))`
-/

namespace A088442.P3581525249933924477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - ((n : ℤ) - A053985 n)

end

end A088442.P3581525249933924477

namespace A088442

/-- `A005408(n)-(n-A053985(n))` -/
def P3581525249933924477.Spec : Prop :=
  ∀ n, P3581525249933924477.a n = A088442 n

end A088442

/-!
# A088443: A linear version of the Josephus problem: a(n) = the function w_3(n).

The programs for A088443, there is no canonical definition to state claims against.
-/

/-! ## A088443.P5716046282734912908

`gcd(A017427(A022184(n)), A156229(n))`
-/

namespace A088443.P5716046282734912908
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A017427 (A022184 n).toNat) (A156229 n)

end

end A088443.P5716046282734912908

/-! ## A088443.P7684897335628954143

`gcd(A004442(A218439(n+1)), A160755(n+1))`
-/

namespace A088443.P7684897335628954143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004442 (A218439 (n + 1)).toNat) (A160755 (n + 1))

end

end A088443.P7684897335628954143

/-! ## A088443.P13248347616608324940

`gcd(A219985(A220226(n+1)), A220313(n+1))`
-/

namespace A088443.P13248347616608324940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A219985 (A220226 (n + 1)).toNat) (A220313 (n + 1))

end

end A088443.P13248347616608324940

/-!
# A088444: Smallest divisor d of n such that all intervals [(k-1)*d+1:k*d] contain at least one prime, 1<=k<=n/d; a(1)=1.

The programs for A088444, there is no canonical definition to state claims against.
-/

/-! ## A088444.P1093982408854156700

`(n+1)/A088445(n+1)`
-/

namespace A088444.P1093982408854156700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A088445 (n + 1) : ℚ)

end

end A088444.P1093982408854156700

/-! ## A088444.P456582306999982976

`A049834(A088445(n+1)+∑[n])`
-/

namespace A088444.P456582306999982976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (A088445 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A088444.P456582306999982976

/-! ## A088444.P17014941169321356629

`A051537(A088445(n+1)+∑[n])`
-/

namespace A088444.P17014941169321356629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A088445 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A088444.P17014941169321356629

/-! ## A088444.P14095739097226656711

`A054531(A088445(n+1)+∑[n])`
-/

namespace A088444.P14095739097226656711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A088445 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A088444.P14095739097226656711

/-! ## A088444.P11370562853924976133

`A126988(A088445(n+1)+∑[n])`
-/

namespace A088444.P11370562853924976133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A088445 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A088444.P11370562853924976133

/-!
# A088445: a(n) = n / A088444(n), where A088444(n) is the smallest divisor d of n such that all intervals [(k-1)*d+1:k*d] contain at least one prime, 1<=k<=n/d; a(1)=1.

The programs for A088445, there is no canonical definition to state claims against.
-/

/-! ## A088445.P70497313484023455

`(n+1)/A088444(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A088445.P70497313484023455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A088444 (n + 1) : ℚ)

end

end A088445.P70497313484023455

/-! ## A088445.P15493099193746657264

`A010766(A088444(n+1)+∑[n])`
-/

namespace A088445.P15493099193746657264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A088444 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A088445.P15493099193746657264

/-! ## A088445.P17055010003843051663

`A049834(A088444(n+1)+∑[n])`
-/

namespace A088445.P17055010003843051663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (A088444 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A088445.P17055010003843051663

/-! ## A088445.P4437189820753925675

`A051537(A088444(n+1)+∑[n])`
-/

namespace A088445.P4437189820753925675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A088444 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A088445.P4437189820753925675

/-! ## A088445.P3763314380535455631

`A054531(A088444(n+1)+∑[n])`
-/

namespace A088445.P3763314380535455631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A088444 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A088445.P3763314380535455631

/-! ## A088445.P6153694413556140202

`A126988(A088444(n+1)+∑[n])`
-/

namespace A088445.P6153694413556140202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A088444 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A088445.P6153694413556140202

/-!
# A088447: Smallest number m with A088444(m) = n.

The programs for A088447, there is no canonical definition to state claims against.
-/

/-! ## A088447.P14328642759702927484

`gcd(A326578(n+1), A340304(n+1))`
-/

namespace A088447.P14328642759702927484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A326578 (n + 1)) (A340304 (n + 1))

end

end A088447.P14328642759702927484

/-! ## A088447.P7848499949672054239

`∏{e}[A329997(A329633(n+2)), (n+1)/#]`
-/

namespace A088447.P7848499949672054239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329997 (A329633 (n + 2)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (n + 1 : ℚ) / (Nat.factorization (f1 n).natAbs p : ℚ)

end

end A088447.P7848499949672054239

/-! ## A088447.P10247633314412120864

`A144907(n+1)*A173588(or(1, n)*ceil(n/2))`
-/

namespace A088447.P10247633314412120864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144907 (n + 1) * A173588 ((Nat.lor 1 n : ℤ) * ⌈(n : ℚ) / 2⌉).toNat

end

end A088447.P10247633314412120864

/-! ## A088447.P1141960699263677260

`A140651(n+1)*A332278(A333218(n+1))`
-/

namespace A088447.P1141960699263677260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140651 (n + 1) * A332278 (A333218 (n + 1)).toNat

end

end A088447.P1141960699263677260

/-!
# A088448: Greatest number m with A088444(m) = n.

The programs for A088448, there is no canonical definition to state claims against.
-/

/-! ## A088448.P16354590748195609024

`A033178(A120075(n+2))*A125289(n+1)`
-/

namespace A088448.P16354590748195609024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033178 (A120075 (n + 2)).toNat * A125289 (n + 1)

end

end A088448.P16354590748195609024

/-!
# A088449: Numbers n such that A088444(n) is not prime.

The programs for A088449, there is no canonical definition to state claims against.
-/

/-! ## A088449.P5541324719001702975

`lt[A010051(A088444(n+1))+1, 2]+1`
-/

namespace A088449.P5541324719001702975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A088444 (n + 1)).toNat + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A088449.P5541324719001702975

/-!
# A088450: Numbers k such that A088444(k) = smallest prime factor of k.

The programs for A088450, there is no canonical definition to state claims against.
-/

/-! ## A088450.P4807169451606539386

`record[A020639(n+1)*A088445(n+1)]`
-/

namespace A088450.P4807169451606539386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) * A088445 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088450.P4807169451606539386

/-! ## A088450.P402384905180632314

`eq[A020639(n+1), A088444(n+1)]+1`
-/

namespace A088450.P402384905180632314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088444 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A088450.P402384905180632314

/-! ## A088450.P13050043412343510242

`record[A061228(n+1)-(n+1)/A088445(n+1)]`
-/

namespace A088450.P13050043412343510242
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061228 (n + 1) : ℚ) - (n + 1 : ℚ) / (A088445 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088450.P13050043412343510242

/-! ## A088450.P14935250193331400124

`lt[A337667(n), A167932(n)]`
-/

namespace A088450.P14935250193331400124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337667 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167932 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A088450.P14935250193331400124

/-! ## A088450.P1207442050135177614

`lt[A072721(n²), A299285(n)]`
-/

namespace A088450.P1207442050135177614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299285 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A088450.P1207442050135177614

/-!
# A088451: Numbers k such that A088444(k) = greatest prime factor of k.

The programs for A088451, there is no canonical definition to state claims against.
-/

/-! ## A088451.P634462187298813733

`eq[A006530(n+1), A088444(n+1)]+1`
-/

namespace A088451.P634462187298813733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088444 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A088451.P634462187298813733

/-! ## A088451.P8559398015791228405

`eq[A052126(n+1), A088445(n+1)]+1`
-/

namespace A088451.P8559398015791228405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088445 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A088451.P8559398015791228405

/-! ## A088451.P3533069772082907178

`lt[A265313(2*n), A001222(A265327(3*n+4))]`
-/

namespace A088451.P3533069772082907178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265313 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A265327 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A088451.P3533069772082907178

/-! ## A088451.P17343778754419454439

`lt[A025155(2*n+3), A323403(A250120(n)+1)]`
-/

namespace A088451.P17343778754419454439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025155 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323403 (A250120 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A088451.P17343778754419454439

/-! ## A088451.P5180543040091180059

`lt[A007318(A196040(2*n+5)), lcm(12, n)]`
-/

namespace A088451.P5180543040091180059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A196040 (2 * n + 5)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 12 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A088451.P5180543040091180059

/-!
# A088455: Triangle T(n,k) of number of integer sequences [y(1),...,y(n)] such that |y(i)-y(i+1)|<=1, 1=y(1)<=y(i)<=k=y(n).

The programs for A088455, there is no canonical definition to state claims against.
-/

/-! ## A088455.P16487584231440401255

`A004248(n-A337380(A000032(n)))`
-/

namespace A088455.P16487584231440401255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 ((n : ℤ) - A337380 (A000032 n).toNat).toNat

end

end A088455.P16487584231440401255

/-! ## A088455.P10039021763587930264

`and(A004248(n), A080272(A004248(n)))`
-/

namespace A088455.P10039021763587930264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004248 n) (A080272 (A004248 n).toNat)

end

end A088455.P10039021763587930264

/-! ## A088455.P4839670109763947689

`xor(A004248(n), A337380(A000032(n)))`
-/

namespace A088455.P4839670109763947689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004248 n) (A337380 (A000032 n).toNat)

end

end A088455.P4839670109763947689

/-! ## A088455.P7185500524334657284

`A004248(n)-A212619(A356607(n+1))`
-/

namespace A088455.P7185500524334657284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 n - A212619 (A356607 (n + 1)).toNat

end

end A088455.P7185500524334657284

/-!
# A088456: Number of integer sequences [y(1),...,y(n)] such that |y(i)-y(i+1)|<=1, 1=y(1)<=y(i)<=y(n).

The programs for A088456, there is no canonical definition to state claims against.
-/

/-! ## A088456.P505798993690215

`A244886(n)-A162344(A036422(n))`
-/

namespace A088456.P505798993690215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244886 n - A162344 (A036422 n).toNat

end

end A088456.P505798993690215

/-! ## A088456.P13645645672916937169

`A123580(A036422(n))+A152225(n)-A036422(n)`
-/

namespace A088456.P13645645672916937169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123580 (A036422 n).toNat + (A152225 n - A036422 n)

end

end A088456.P13645645672916937169

/-! ## A088456.P9665642194913445297

`A152225(n)+A014036(A287586(n))`
-/

namespace A088456.P9665642194913445297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152225 n + A014036 (A287586 n).toNat

end

end A088456.P9665642194913445297

/-! ## A088456.P10999534002915620628

`A152225(n)+A014036(A287587(n))`
-/

namespace A088456.P10999534002915620628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152225 n + A014036 (A287587 n).toNat

end

end A088456.P10999534002915620628

/-! ## A088456.P14518426764735719157

`A152225(n)+A014036(A287588(n))`
-/

namespace A088456.P14518426764735719157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152225 n + A014036 (A287588 n).toNat

end

end A088456.P14518426764735719157

/-!
# A088457: Number of single nodes (exactly one node on that level) for all Motzkin paths of length n.

The programs for A088457, there is no canonical definition to state claims against.
-/

/-! ## A088457.P16585702864113024854

`A364386(∑[n])`
-/

namespace A088457.P16585702864113024854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364386 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A088457.P16585702864113024854

/-! ## A088457.P7180611700197540876

`A364386(A000217(n))%A097332(n+2)`
-/

namespace A088457.P7180611700197540876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A364386 (A000217 n).toNat) (A097332 (n + 2))

end

end A088457.P7180611700197540876

/-! ## A088457.P4557357530916635317

`A364386(A000217(n))+A000007(2*(n+2))`
-/

namespace A088457.P4557357530916635317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364386 (A000217 n).toNat + A000007 (2 * (n + 2))

end

end A088457.P4557357530916635317

/-! ## A088457.P14498840134787337000

`A364386(A000217(n))+A073424(3*n+2)`
-/

namespace A088457.P14498840134787337000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364386 (A000217 n).toNat + A073424 (3 * n + 2)

end

end A088457.P14498840134787337000

/-! ## A088457.P16912972240282695773

`A372014(∑[n])`
-/

namespace A088457.P16912972240282695773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372014 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A088457.P16912972240282695773

/-!
# A088459: Triangle read by rows: T(n,k) represents the number of lozenge tilings of an (n,1,n)-hexagon which include the non-vertical tile above the main diagonal starting in position k+1.

The programs for A088459, the canonical program `A088459.P14785873139532937752` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088459 has offset 1).

The definition of A088459 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088459.P14785873139532937752

`A007318(floor(n/2))*A074909(ceil(n/2))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A088459

/-- `A007318(floor(n/2))*A074909(ceil(n/2))` -/
def P14785873139532937752.Spec : Prop :=
  ∀ n, P14785873139532937752.a n = A088459 (n + 1)

theorem P14785873139532937752.correct : P14785873139532937752.Spec := by
  intro n
  simp only [A088459, Nat.add_sub_cancel]

end A088459

/-! ## A088459.P13667438722535177526

`A001263(A008619(n))*A057555(n+1)`
-/

namespace A088459.P13667438722535177526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A008619 n).toNat * A057555 (n + 1)

end

end A088459.P13667438722535177526

namespace A088459

/-- `A001263(A008619(n))*A057555(n+1)` -/
def P13667438722535177526.Spec : Prop :=
  ∀ n, P13667438722535177526.a n = A088459 (n + 1)

end A088459

/-! ## A088459.P1827857091904728525

`A001263(A004526(n)+1)*A057555(n+1)`
-/

namespace A088459.P1827857091904728525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A004526 n + 1).toNat * A057555 (n + 1)

end

end A088459.P1827857091904728525

namespace A088459

/-- `A001263(A004526(n)+1)*A057555(n+1)` -/
def P1827857091904728525.Spec : Prop :=
  ∀ n, P1827857091904728525.a n = A088459 (n + 1)

end A088459

/-! ## A088459.P14918757789650095436

`A088855(round(sqrt(n+1))²+1+n)`
-/

namespace A088459.P14918757789650095436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088855 (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2 + 1 + (n : ℤ)).toNat

end

end A088459.P14918757789650095436

namespace A088459

/-- `A088855(round(sqrt(n+1))²+1+n)` -/
def P14918757789650095436.Spec : Prop :=
  ∀ n, P14918757789650095436.a n = A088459 (n + 1)

end A088459

/-! ## A088459.P3022547195679141136

`or(A000007(n), A088855(A007607(n+1)))`
-/

namespace A088459.P3022547195679141136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A088855 (A007607 (n + 1)).toNat)

end

end A088459.P3022547195679141136

namespace A088459

/-- `or(A000007(n), A088855(A007607(n+1)))` -/
def P3022547195679141136.Spec : Prop :=
  ∀ n, P3022547195679141136.a n = A088459 (n + 1)

end A088459

/-! ## A088459.P10330577021795612656

`gcd(A000142(n), A088855(A007607(n+1)))`
-/

namespace A088459.P10330577021795612656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000142 n) (A088855 (A007607 (n + 1)).toNat)

end

end A088459.P10330577021795612656

namespace A088459

/-- `gcd(A000142(n), A088855(A007607(n+1)))` -/
def P10330577021795612656.Spec : Prop :=
  ∀ n, (P10330577021795612656.a n : ℤ) = A088459 (n + 1)

end A088459

/-! ## A088459.P1221807069465495947

`A172101(A317304(n+1))`
-/

namespace A088459.P1221807069465495947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172101 (A317304 (n + 1)).toNat

end

end A088459.P1221807069465495947

namespace A088459

/-- `A172101(A317304(n+1))` -/
def P1221807069465495947.Spec : Prop :=
  ∀ n, P1221807069465495947.a n = A088459 (n + 1)

end A088459

/-!
# A088460: Lower twin primes with lower twin prime index.

The programs for A088460, the canonical program `A088460.P1171392433221047609` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088460 has offset 1).

The definition of A088460 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001359, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A088460.P1171392433221047609

`A001359(A001359(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A088460

/-- `A001359(A001359(n+1))` -/
def P1171392433221047609.Spec : Prop :=
  ∀ n, P1171392433221047609.a n = A088460 (n + 1)

theorem P1171392433221047609.correct : P1171392433221047609.Spec := by
  intro n
  simp only [A088460, Nat.add_sub_cancel]

end A088460

/-! ## A088460.P9675890140352000893

`A001359(A077800(Δ[n²]))`
-/

namespace A088460.P9675890140352000893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (A077800 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A088460.P9675890140352000893

namespace A088460

/-- `A001359(A077800(Δ[n²]))` -/
def P9675890140352000893.Spec : Prop :=
  ∀ n, P9675890140352000893.a n = A088460 (n + 1)

end A088460

/-! ## A088460.P9208458765601183179

`A001359(p?[A028815(n)-3])`
-/

namespace A088460.P9208458765601183179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A088460.P9208458765601183179

namespace A088460

/-- `A001359(p?[A028815(n)-3])` -/
def P9208458765601183179.Spec : Prop :=
  ∀ n, P9208458765601183179.a n = A088460 (n + 1)

end A088460

/-! ## A088460.P4004201583089704709

`A001359(p?[A151800(2*n)-2])`
-/

namespace A088460.P4004201583089704709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (2 * n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A088460.P4004201583089704709

namespace A088460

/-- `A001359(p?[A151800(2*n)-2])` -/
def P4004201583089704709.Spec : Prop :=
  ∀ n, P4004201583089704709.a n = A088460 (n + 1)

end A088460

/-! ## A088460.P581511625689442420

`A001359(record[A077800(n^(n%2))])`
-/

namespace A088460.P581511625689442420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077800 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A088460.P581511625689442420

namespace A088460

/-- `A001359(record[A077800(n^(n%2))])` -/
def P581511625689442420.Spec : Prop :=
  ∀ n, P581511625689442420.a n = A088460 (n + 1)

end A088460

/-! ## A088460.P14832305992040589845

`A124588(A014574(n+1))`
-/

namespace A088460.P14832305992040589845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (A014574 (n + 1)).toNat

end

end A088460.P14832305992040589845

namespace A088460

/-- `A124588(A014574(n+1))` -/
def P14832305992040589845.Spec : Prop :=
  ∀ n, P14832305992040589845.a n = A088460 (n + 1)

end A088460

/-! ## A088460.P8502664788565089678

`A238528(A006512(n+1))`
-/

namespace A088460.P8502664788565089678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (A006512 (n + 1)).toNat

end

end A088460.P8502664788565089678

namespace A088460

/-- `A238528(A006512(n+1))` -/
def P8502664788565089678.Spec : Prop :=
  ∀ n, P8502664788565089678.a n = A088460 (n + 1)

end A088460

/-! ## A088460.P32403718916132462

`A111166(A124588(n+2))`
-/

namespace A088460.P32403718916132462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (A124588 (n + 2)).toNat

end

end A088460.P32403718916132462

namespace A088460

/-- `A111166(A124588(n+2))` -/
def P32403718916132462.Spec : Prop :=
  ∀ n, P32403718916132462.a n = A088460 (n + 1)

end A088460

/-! ## A088460.P13053376517606741523

`A111166(A181747(n+2))`
-/

namespace A088460.P13053376517606741523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (A181747 (n + 2)).toNat

end

end A088460.P13053376517606741523

namespace A088460

/-- `A111166(A181747(n+2))` -/
def P13053376517606741523.Spec : Prop :=
  ∀ n, P13053376517606741523.a n = A088460 (n + 1)

end A088460

/-! ## A088460.P806965109346938360

`A238528(A067829(n+2))`
-/

namespace A088460.P806965109346938360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (A067829 (n + 2)).toNat

end

end A088460.P806965109346938360

namespace A088460

/-- `A238528(A067829(n+2))` -/
def P806965109346938360.Spec : Prop :=
  ∀ n, P806965109346938360.a n = A088460 (n + 1)

end A088460

/-! ## A088460.P7191376821158516110

`A238528(A094743(n+2))`
-/

namespace A088460.P7191376821158516110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (A094743 (n + 2)).toNat

end

end A088460.P7191376821158516110

namespace A088460

/-- `A238528(A094743(n+2))` -/
def P7191376821158516110.Spec : Prop :=
  ∀ n, P7191376821158516110.a n = A088460 (n + 1)

end A088460

/-! ## A088460.P3241266053100986829

`A111166(A014574(n+1)-1)`
-/

namespace A088460.P3241266053100986829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (A014574 (n + 1) - 1).toNat

end

end A088460.P3241266053100986829

namespace A088460

/-- `A111166(A014574(n+1)-1)` -/
def P3241266053100986829.Spec : Prop :=
  ∀ n, P3241266053100986829.a n = A088460 (n + 1)

end A088460

/-! ## A088460.P6992415111378165145

`A181747(A006512(n+1)-1)`
-/

namespace A088460.P6992415111378165145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (A006512 (n + 1) - 1).toNat

end

end A088460.P6992415111378165145

namespace A088460

/-- `A181747(A006512(n+1)-1)` -/
def P6992415111378165145.Spec : Prop :=
  ∀ n, P6992415111378165145.a n = A088460 (n + 1)

end A088460

/-! ## A088460.P5833177170178457893

`A124588(A124588(n+2)+1)`
-/

namespace A088460.P5833177170178457893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (A124588 (n + 2) + 1).toNat

end

end A088460.P5833177170178457893

namespace A088460

/-- `A124588(A124588(n+2)+1)` -/
def P5833177170178457893.Spec : Prop :=
  ∀ n, P5833177170178457893.a n = A088460 (n + 1)

end A088460

/-! ## A088460.P13758772204573521643

`A181747(A181747(n+2)+1)`
-/

namespace A088460.P13758772204573521643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (A181747 (n + 2) + 1).toNat

end

end A088460.P13758772204573521643

namespace A088460

/-- `A181747(A181747(n+2)+1)` -/
def P13758772204573521643.Spec : Prop :=
  ∀ n, P13758772204573521643.a n = A088460 (n + 1)

end A088460

/-! ## A088460.P1002701974294770776

`A111166(A077800(2*n+1))`
-/

namespace A088460.P1002701974294770776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (A077800 (2 * n + 1)).toNat

end

end A088460.P1002701974294770776

namespace A088460

/-- `A111166(A077800(2*n+1))` -/
def P1002701974294770776.Spec : Prop :=
  ∀ n, P1002701974294770776.a n = A088460 (n + 1)

end A088460

/-! ## A088460.P17961020498487480169

`A111166(or(1, A111166(n+1)))`
-/

namespace A088460.P17961020498487480169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (Int.lor 1 (A111166 (n + 1))).toNat

end

end A088460.P17961020498487480169

namespace A088460

/-- `A111166(or(1, A111166(n+1)))` -/
def P17961020498487480169.Spec : Prop :=
  ∀ n, P17961020498487480169.a n = A088460 (n + 1)

end A088460

/-! ## A088460.P11857586722481579340

`A014574(p?[A040976(n+1)])-1`
-/

namespace A088460.P11857586722481579340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A088460.P11857586722481579340

namespace A088460

/-- `A014574(p?[A040976(n+1)])-1` -/
def P11857586722481579340.Spec : Prop :=
  ∀ n, P11857586722481579340.a n = A088460 (n + 1)

end A088460

/-! ## A088460.P3153863383705562994

`A238528(p?[A238528(n+1)+2])`
-/

namespace A088460.P3153863383705562994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A088460.P3153863383705562994

namespace A088460

/-- `A238528(p?[A238528(n+1)+2])` -/
def P3153863383705562994.Spec : Prop :=
  ∀ n, P3153863383705562994.a n = A088460 (n + 1)

end A088460

/-! ## A088460.P1653826818513953790

`A111166(p?[n*A001222(n+2)])`
-/

namespace A088460.P1653826818513953790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001222 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A088460.P1653826818513953790

namespace A088460

/-- `A111166(p?[n*A001222(n+2)])` -/
def P1653826818513953790.Spec : Prop :=
  ∀ n, P1653826818513953790.a n = A088460 (n + 1)

end A088460

/-!
# A088461: a(1) = 1, a(n) = ceiling((n-a(a(a(n-1))))/2).

The programs for A088461, the canonical program `A088461.P1830744899448299625` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088461 has offset 1).

The definition of A088461 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((n+1-a(a(a(n-1)-1)-1))/2)` (program `A088461.P1830744899448299625`, by `A088461.P1830744899448299625.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A088461.P1830744899448299625

`ceil((n+1-a(a(a(n-1)-1)-1))/2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A088461

/-- `ceil((n+1-a(a(a(n-1)-1)-1))/2)` -/
def P1830744899448299625.Spec : Prop :=
  ∀ n, P1830744899448299625.a n = A088461 (n + 1)

theorem P1830744899448299625.correct : P1830744899448299625.Spec := by
  intro n
  simp only [A088461, Nat.add_sub_cancel]

end A088461

/-! ## A088461.P15646177194800982807

`A000196(A320536(A090288(n)-n²))`
-/

namespace A088461.P15646177194800982807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A320536 (A090288 n - (n ^ 2 : ℤ)).toNat).toNat

end

end A088461.P15646177194800982807

namespace A088461

/-- `A000196(A320536(A090288(n)-n²))` -/
def P15646177194800982807.Spec : Prop :=
  ∀ n, P15646177194800982807.a n = A088461 (n + 1)

end A088461

/-! ## A088461.P6706951073474024975

`A260999(A082547(n+2))`
-/

namespace A088461.P6706951073474024975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260999 (A082547 (n + 2)).toNat

end

end A088461.P6706951073474024975

namespace A088461

/-- `A260999(A082547(n+2))` -/
def P6706951073474024975.Spec : Prop :=
  ∀ n, P6706951073474024975.a n = A088461 (n + 1)

end A088461

/-! ## A088461.P8081355127347114420

`A029837(A374688(n)+A055034(n+1))`
-/

namespace A088461.P8081355127347114420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A374688 n + A055034 (n + 1)).toNat

end

end A088461.P8081355127347114420

namespace A088461

/-- `A029837(A374688(n)+A055034(n+1))` -/
def P8081355127347114420.Spec : Prop :=
  ∀ n, P8081355127347114420.a n = A088461 (n + 1)

end A088461

/-! ## A088461.P10296486118036266216

`A172471(A000196(A022554(A022554(A022554(n+1)))))`
-/

namespace A088461.P10296486118036266216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A000196 (A022554 (A022554 (A022554 (n + 1)).toNat).toNat).toNat).toNat

end

end A088461.P10296486118036266216

namespace A088461

/-- `A172471(A000196(A022554(A022554(A022554(n+1)))))` -/
def P10296486118036266216.Spec : Prop :=
  ∀ n, P10296486118036266216.a n = A088461 (n + 1)

end A088461

/-!
# A088462: a(1)=1, a(n) = ceiling((n - a(a(n-1)))/2).

The programs for A088462, the canonical program `A088462.P14475289983333613181` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088462 has offset 1).

The definition of A088462 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((n+1-a(a(n-1)-1))/2)` (program `A088462.P14475289983333613181`, by `A088462.P14475289983333613181.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A088462.P17100163556518199328

`floor((sqrt(2)-1)*(n+1)+1/sqrt(2))`
-/

namespace A088462.P17100163556518199328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (2 : ℝ) - 1) * (n + 1 : ℝ) + 1 / Real.sqrt (2 : ℝ)⌋

end

end A088462.P17100163556518199328

namespace A088462

/-- `floor((sqrt(2)-1)*(n+1)+1/sqrt(2))` -/
def P17100163556518199328.Spec : Prop :=
  ∀ n, P17100163556518199328.a n = A088462 (n + 1)

end A088462

/-! ## A088462.P14475289983333613181

`ceil((n+1-a(a(n-1)-1))/2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A088462

/-- `ceil((n+1-a(a(n-1)-1))/2)` -/
def P14475289983333613181.Spec : Prop :=
  ∀ n, P14475289983333613181.a n = A088462 (n + 1)

theorem P14475289983333613181.correct : P14475289983333613181.Spec := by
  intro n
  simp only [A088462, Nat.add_sub_cancel]

end A088462

/-! ## A088462.P302807502744899241

`n+1-a(n-1)-a(a(n-2)-1)` with `a(0)=1, a(1)=1`
-/

namespace A088462.P302807502744899241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n + 1 : ℤ) - a (n - 1) - a (a (n - 2) - 1).toNat

end

end A088462.P302807502744899241

namespace A088462

/-- `n+1-a(n-1)-a(a(n-2)-1)` -/
def P302807502744899241.Spec : Prop :=
  ∀ n, P302807502744899241.a n = A088462 (n + 1)

end A088462

/-! ## A088462.P15004611988477577795

`round((n+1-a(n-1))/sqrt(2))` with `a(0)=1`
-/

namespace A088462.P15004611988477577795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway (((n + 1 : ℤ) - a (n - 1) : ℝ) / Real.sqrt (2 : ℝ))

end

end A088462.P15004611988477577795

namespace A088462

/-- `round((n+1-a(n-1))/sqrt(2))` -/
def P15004611988477577795.Spec : Prop :=
  ∀ n, P15004611988477577795.a n = A088462 (n + 1)

end A088462

/-! ## A088462.P7754147701897842874

`floor((n-a(a(n-1)-1))/2)+1` with `a(0)=1`
-/

namespace A088462.P7754147701897842874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊((n : ℤ) - a (a (n - 1) - 1).toNat : ℚ) / 2⌋ + 1

end

end A088462.P7754147701897842874

namespace A088462

/-- `floor((n-a(a(n-1)-1))/2)+1` -/
def P7754147701897842874.Spec : Prop :=
  ∀ n, P7754147701897842874.a n = A088462 (n + 1)

end A088462

/-! ## A088462.P10053790929196433531

`∑[A004641(n+1)]`
-/

namespace A088462.P10053790929196433531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088462.P10053790929196433531

namespace A088462

/-- `∑[A004641(n+1)]` -/
def P10053790929196433531.Spec : Prop :=
  ∀ n, P10053790929196433531.a n = A088462 (n + 1)

end A088462

/-! ## A088462.P5269204645625360211

`A184117(n+1)-n`
-/

namespace A088462.P5269204645625360211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184117 (n + 1) - (n : ℤ)

end

end A088462.P5269204645625360211

namespace A088462

/-- `A184117(n+1)-n` -/
def P5269204645625360211.Spec : Prop :=
  ∀ n, P5269204645625360211.a n = A088462 (n + 1)

end A088462

/-! ## A088462.P17904774835547504332

`∑[log2(A001030(n+1))]`
-/

namespace A088462.P17904774835547504332
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001030 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088462.P17904774835547504332

namespace A088462

/-- `∑[log2(A001030(n+1))]` -/
def P17904774835547504332.Spec : Prop :=
  ∀ n, P17904774835547504332.a n = (A088462 (n + 1) : ℝ)

end A088462

/-! ## A088462.P1025912056415054488

`∑[Δ[A001953(n)]-1]`
-/

namespace A088462.P1025912056415054488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001953 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088462.P1025912056415054488

namespace A088462

/-- `∑[Δ[A001953(n)]-1]` -/
def P1025912056415054488.Spec : Prop :=
  ∀ n, P1025912056415054488.a n = A088462 (n + 1)

end A088462

/-! ## A088462.P10924372222207037285

`∑[1-A189687(n+1)]`
-/

namespace A088462.P10924372222207037285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A189687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088462.P10924372222207037285

namespace A088462

/-- `∑[1-A189687(n+1)]` -/
def P10924372222207037285.Spec : Prop :=
  ∀ n, P10924372222207037285.a n = A088462 (n + 1)

end A088462

/-! ## A088462.P11321011290637054750

`∑[2-A279620(n+1)]`
-/

namespace A088462.P11321011290637054750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A279620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088462.P11321011290637054750

namespace A088462

/-- `∑[2-A279620(n+1)]` -/
def P11321011290637054750.Spec : Prop :=
  ∀ n, P11321011290637054750.a n = A088462 (n + 1)

end A088462

/-! ## A088462.P1402717681498398638

`comp[A001954(n)-1]-n`
-/

namespace A088462.P1402717681498398638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001954 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A088462.P1402717681498398638

namespace A088462

/-- `comp[A001954(n)-1]-n` -/
def P1402717681498398638.Spec : Prop :=
  ∀ n, P1402717681498398638.a n = A088462 (n + 1)

end A088462

/-! ## A088462.P13999371453173654538

`A001953(n+1)-(n+1)`
-/

namespace A088462.P13999371453173654538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001953 (n + 1) - (n + 1 : ℤ)

end

end A088462.P13999371453173654538

namespace A088462

/-- `A001953(n+1)-(n+1)` -/
def P13999371453173654538.Spec : Prop :=
  ∀ n, P13999371453173654538.a n = A088462 (n + 1)

end A088462

/-! ## A088462.P8991697249041170168

`1-A189688(n+1)+n`
-/

namespace A088462.P8991697249041170168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A189688 (n + 1) + (n : ℤ)

end

end A088462.P8991697249041170168

namespace A088462

/-- `1-A189688(n+1)+n` -/
def P8991697249041170168.Spec : Prop :=
  ∀ n, P8991697249041170168.a n = A088462 (n + 1)

end A088462

/-! ## A088462.P18204660469841033536

`∑[char[A086377(n+1)-1]]`
-/

namespace A088462.P18204660469841033536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086377 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088462.P18204660469841033536

namespace A088462

/-- `∑[char[A086377(n+1)-1]]` -/
def P18204660469841033536.Spec : Prop :=
  ∀ n, (P18204660469841033536.a n : ℤ) = A088462 (n + 1)

end A088462

/-!
# A088463: Upper twin primes of upper twin prime index.

The programs for A088463, the canonical program `A088463.P14000469329680495360` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088463 has offset 1).

The definition of A088463 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006512, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A088463.P14000469329680495360

`A006512(A006512(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A088463

/-- `A006512(A006512(n+1))` -/
def P14000469329680495360.Spec : Prop :=
  ∀ n, P14000469329680495360.a n = A088463 (n + 1)

theorem P14000469329680495360.correct : P14000469329680495360.Spec := by
  intro n
  simp only [A088463, Nat.add_sub_cancel]

end A088463

/-! ## A088463.P14734216317078544802

`A001359(A067829(n+2))+2`
-/

namespace A088463.P14734216317078544802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (A067829 (n + 2)).toNat + 2

end

end A088463.P14734216317078544802

namespace A088463

/-- `A001359(A067829(n+2))+2` -/
def P14734216317078544802.Spec : Prop :=
  ∀ n, P14734216317078544802.a n = A088463 (n + 1)

end A088463

/-! ## A088463.P2944304524509704619

`A001359(p?[A072281(n+1)])+2`
-/

namespace A088463.P2944304524509704619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072281 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 2

end

end A088463.P2944304524509704619

namespace A088463

/-- `A001359(p?[A072281(n+1)])+2` -/
def P2944304524509704619.Spec : Prop :=
  ∀ n, P2944304524509704619.a n = A088463 (n + 1)

end A088463

/-! ## A088463.P10888794059291488609

`A001359(p?[A139690(n+1)])+2`
-/

namespace A088463.P10888794059291488609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 2

end

end A088463.P10888794059291488609

namespace A088463

/-- `A001359(p?[A139690(n+1)])+2` -/
def P10888794059291488609.Spec : Prop :=
  ∀ n, P10888794059291488609.a n = A088463 (n + 1)

end A088463

/-! ## A088463.P6980959712405399851

`A001359(A014574(n+1)+1)+2`
-/

namespace A088463.P6980959712405399851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (A014574 (n + 1) + 1).toNat + 2

end

end A088463.P6980959712405399851

namespace A088463

/-- `A001359(A014574(n+1)+1)+2` -/
def P6980959712405399851.Spec : Prop :=
  ∀ n, P6980959712405399851.a n = A088463 (n + 1)

end A088463

/-! ## A088463.P7616674538705818033

`A001359(A001359(n+1)+2)+2`
-/

namespace A088463.P7616674538705818033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (A001359 (n + 1) + 2).toNat + 2

end

end A088463.P7616674538705818033

namespace A088463

/-- `A001359(A001359(n+1)+2)+2` -/
def P7616674538705818033.Spec : Prop :=
  ∀ n, P7616674538705818033.a n = A088463 (n + 1)

end A088463

/-! ## A088463.P15053451313229653802

`A001359(A094743(n+2))+2`
-/

namespace A088463.P15053451313229653802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (A094743 (n + 2)).toNat + 2

end

end A088463.P15053451313229653802

namespace A088463

/-- `A001359(A094743(n+2))+2` -/
def P15053451313229653802.Spec : Prop :=
  ∀ n, P15053451313229653802.a n = A088463 (n + 1)

end A088463

/-! ## A088463.P7575530890417773368

`A172057(A014574(n+1))`
-/

namespace A088463.P7575530890417773368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172057 (A014574 (n + 1)).toNat

end

end A088463.P7575530890417773368

namespace A088463

/-- `A172057(A014574(n+1))` -/
def P7575530890417773368.Spec : Prop :=
  ∀ n, P7575530890417773368.a n = A088463 (n + 1)

end A088463

/-! ## A088463.P17649767670969629329

`A172057(A001359(n+1)+1)`
-/

namespace A088463.P17649767670969629329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172057 (A001359 (n + 1) + 1).toNat

end

end A088463.P17649767670969629329

namespace A088463

/-- `A172057(A001359(n+1)+1)` -/
def P17649767670969629329.Spec : Prop :=
  ∀ n, P17649767670969629329.a n = A088463 (n + 1)

end A088463

/-! ## A088463.P16610549038490475845

`A067829(A014574(n+1)+2)`
-/

namespace A088463.P16610549038490475845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (A014574 (n + 1) + 2).toNat

end

end A088463.P16610549038490475845

namespace A088463

/-- `A067829(A014574(n+1)+2)` -/
def P16610549038490475845.Spec : Prop :=
  ∀ n, P16610549038490475845.a n = A088463 (n + 1)

end A088463

/-! ## A088463.P14777770078996171279

`A067829(A067829(n+2)+1)`
-/

namespace A088463.P14777770078996171279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (A067829 (n + 2) + 1).toNat

end

end A088463.P14777770078996171279

namespace A088463

/-- `A067829(A067829(n+2)+1)` -/
def P14777770078996171279.Spec : Prop :=
  ∀ n, P14777770078996171279.a n = A088463 (n + 1)

end A088463

/-! ## A088463.P1077973156651595391

`A172057(2*A040040(n+1))`
-/

namespace A088463.P1077973156651595391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172057 (2 * A040040 (n + 1)).toNat

end

end A088463.P1077973156651595391

namespace A088463

/-- `A172057(2*A040040(n+1))` -/
def P1077973156651595391.Spec : Prop :=
  ∀ n, P1077973156651595391.a n = A088463 (n + 1)

end A088463

/-! ## A088463.P7968266633678006319

`sqrt(A108604(sqrt(A108604(n+1))))`
-/

namespace A088463.P7968266633678006319
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A108604 (SequenceMachineLib.roundAway (Real.sqrt (A108604 (n + 1) : ℝ))).toNat : ℝ)

end

end A088463.P7968266633678006319

namespace A088463

/-- `sqrt(A108604(sqrt(A108604(n+1))))` -/
def P7968266633678006319.Spec : Prop :=
  ∀ n, P7968266633678006319.a n = (A088463 (n + 1) : ℝ)

end A088463

/-! ## A088463.P13290948531658965689

`A014574(A077800(2*(n+1)))+1`
-/

namespace A088463.P13290948531658965689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (A077800 (2 * (n + 1))).toNat + 1

end

end A088463.P13290948531658965689

namespace A088463

/-- `A014574(A077800(2*(n+1)))+1` -/
def P13290948531658965689.Spec : Prop :=
  ∀ n, P13290948531658965689.a n = A088463 (n + 1)

end A088463

/-! ## A088463.P5513005401240337994

`A144834(p?[A000040(n+1)+2])+3`
-/

namespace A088463.P5513005401240337994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144834 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 3

end

end A088463.P5513005401240337994

namespace A088463

/-- `A144834(p?[A000040(n+1)+2])+3` -/
def P5513005401240337994.Spec : Prop :=
  ∀ n, P5513005401240337994.a n = A088463 (n + 1)

end A088463

/-! ## A088463.P3000060141520039299

`A067829(A000203(A067829(n+2)))`
-/

namespace A088463.P3000060141520039299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (A000203 (A067829 (n + 2)).toNat).toNat

end

end A088463.P3000060141520039299

namespace A088463

/-- `A067829(A000203(A067829(n+2)))` -/
def P3000060141520039299.Spec : Prop :=
  ∀ n, P3000060141520039299.a n = A088463 (n + 1)

end A088463

/-! ## A088463.P4987031269348185773

`A172057(A040040(n+1)+A040040(n+1))`
-/

namespace A088463.P4987031269348185773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172057 (A040040 (n + 1) + A040040 (n + 1)).toNat

end

end A088463.P4987031269348185773

namespace A088463

/-- `A172057(A040040(n+1)+A040040(n+1))` -/
def P4987031269348185773.Spec : Prop :=
  ∀ n, P4987031269348185773.a n = A088463 (n + 1)

end A088463

/-! ## A088463.P1795792972134305327

`A171688(A054735(n+1))`
-/

namespace A088463.P1795792972134305327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (A054735 (n + 1)).toNat

end

end A088463.P1795792972134305327

namespace A088463

/-- `A171688(A054735(n+1))` -/
def P1795792972134305327.Spec : Prop :=
  ∀ n, P1795792972134305327.a n = A088463 (n + 1)

end A088463

/-! ## A088463.P6091841028511887052

`A132247(A108605(n+1))`
-/

namespace A088463.P6091841028511887052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132247 (A108605 (n + 1)).toNat

end

end A088463.P6091841028511887052

namespace A088463

/-- `A132247(A108605(n+1))` -/
def P6091841028511887052.Spec : Prop :=
  ∀ n, P6091841028511887052.a n = A088463 (n + 1)

end A088463

/-!
# A088468: a(0) = 1, a(n) = a(floor(n/2)) + a(floor(n/3)) for n > 0.

The programs for A088468, the canonical program `A088468.P12747767220046945866` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088468 has offset 0).

The definition of A088468 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(floor(n/2))+a(floor(n/3))` (program `A088468.P12747767220046945866`, by `A088468.P12747767220046945866.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A088468.P12747767220046945866

`a(floor(n/2))+a(floor(n/3))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A088468

/-- `a(floor(n/2))+a(floor(n/3))` -/
def P12747767220046945866.Spec : Prop :=
  ∀ n, (P12747767220046945866.a n : ℤ) = A088468 n

theorem P12747767220046945866.correct : P12747767220046945866.Spec := by
  intro n
  simp only [A088468]

end A088468

/-! ## A088468.P14636097830978148084

`A061984(n)+1`
-/

namespace A088468.P14636097830978148084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061984 n + 1

end

end A088468.P14636097830978148084

namespace A088468

/-- `A061984(n)+1` -/
def P14636097830978148084.Spec : Prop :=
  ∀ n, P14636097830978148084.a n = A088468 n

end A088468

/-! ## A088468.P5480779295041448729

`A028242(2*A061984(n))`
-/

namespace A088468.P5480779295041448729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A061984 n).toNat

end

end A088468.P5480779295041448729

namespace A088468

/-- `A028242(2*A061984(n))` -/
def P5480779295041448729.Spec : Prop :=
  ∀ n, P5480779295041448729.a n = A088468 n

end A088468

/-! ## A088468.P16525573673253641924

`A082479(A004277(n))`
-/

namespace A088468.P16525573673253641924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082479 (A004277 n).toNat

end

end A088468.P16525573673253641924

namespace A088468

/-- `A082479(A004277(n))` -/
def P16525573673253641924.Spec : Prop :=
  ∀ n, P16525573673253641924.a n = A088468 n

end A088468

/-! ## A088468.P5844255689021713960

`A082479(A000069(n+1))`
-/

namespace A088468.P5844255689021713960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082479 (A000069 (n + 1)).toNat

end

end A088468.P5844255689021713960

namespace A088468

/-- `A082479(A000069(n+1))` -/
def P5844255689021713960.Spec : Prop :=
  ∀ n, P5844255689021713960.a n = A088468 n

end A088468

/-! ## A088468.P3558340248629062490

`A082479(A004275(n+1))`
-/

namespace A088468.P3558340248629062490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082479 (A004275 (n + 1)).toNat

end

end A088468.P3558340248629062490

namespace A088468

/-- `A082479(A004275(n+1))` -/
def P3558340248629062490.Spec : Prop :=
  ∀ n, P3558340248629062490.a n = A088468 n

end A088468

/-! ## A088468.P11956976010080727906

`A082479(Δ[n²])`
-/

namespace A088468.P11956976010080727906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082479 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A088468.P11956976010080727906

namespace A088468

/-- `A082479(Δ[n²])` -/
def P11956976010080727906.Spec : Prop :=
  ∀ n, P11956976010080727906.a n = A088468 n

end A088468

/-! ## A088468.P3362738672121561571

`A082479(2*n+1)%(n+2)`
-/

namespace A088468.P3362738672121561571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082479 (2 * n + 1)) (n + 2 : ℤ)

end

end A088468.P3362738672121561571

namespace A088468

/-- `A082479(2*n+1)%(n+2)` -/
def P3362738672121561571.Spec : Prop :=
  ∀ n, P3362738672121561571.a n = A088468 n

end A088468

/-! ## A088468.P7089775321646241288

`A160519(A069924(2*n+1))`
-/

namespace A088468.P7089775321646241288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160519 (A069924 (2 * n + 1)).toNat

end

end A088468.P7089775321646241288

namespace A088468

/-- `A160519(A069924(2*n+1))` -/
def P7089775321646241288.Spec : Prop :=
  ∀ n, P7089775321646241288.a n = A088468 n

end A088468

/-! ## A088468.P5690434850528908815

`A099741(3*n+1)`
-/

namespace A088468.P5690434850528908815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099741 (3 * n + 1)

end

end A088468.P5690434850528908815

namespace A088468

/-- `A099741(3*n+1)` -/
def P5690434850528908815.Spec : Prop :=
  ∀ n, P5690434850528908815.a n = A088468 n

end A088468

/-! ## A088468.P11922202493381189829

`∑{d}[A099741(A047241(n+1)), A000010(#)]`
-/

namespace A088468.P11922202493381189829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099741 (A047241 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A088468.P11922202493381189829

namespace A088468

/-- `∑{d}[A099741(A047241(n+1)), A000010(#)]` -/
def P11922202493381189829.Spec : Prop :=
  ∀ n, P11922202493381189829.a n = A088468 n

end A088468

/-! ## A088468.P17369125208087292224

`∑{d}[A099741(A016789(n)-1), A000010(#)]`
-/

namespace A088468.P17369125208087292224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099741 (A016789 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A088468.P17369125208087292224

namespace A088468

/-- `∑{d}[A099741(A016789(n)-1), A000010(#)]` -/
def P17369125208087292224.Spec : Prop :=
  ∀ n, P17369125208087292224.a n = A088468 n

end A088468

/-! ## A088468.P2527830888555194243

`A157228(A008486(n))+A099741(A008486(n))`
-/

namespace A088468.P2527830888555194243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157228 (A008486 n).toNat + A099741 (A008486 n).toNat

end

end A088468.P2527830888555194243

namespace A088468

/-- `A157228(A008486(n))+A099741(A008486(n))` -/
def P2527830888555194243.Spec : Prop :=
  ∀ n, P2527830888555194243.a n = A088468 n

end A088468

/-! ## A088468.P9250995381097849476

`A099741(A047241(n+1))²/A099741(A008486(n))`
-/

namespace A088468.P9250995381097849476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099741 (A047241 (n + 1)).toNat ^ 2 : ℚ) / (A099741 (A008486 n).toNat : ℚ)

end

end A088468.P9250995381097849476

namespace A088468

/-- `A099741(A047241(n+1))²/A099741(A008486(n))` -/
def P9250995381097849476.Spec : Prop :=
  ∀ n, P9250995381097849476.a n = (A088468 n : ℚ)

end A088468

/-! ## A088468.P14519030950672486038

`A099741(A047241(n+1))^A001221(A000961(n+1))`
-/

namespace A088468.P14519030950672486038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099741 (A047241 (n + 1)).toNat : ℚ) ^ (A001221 (A000961 (n + 1)).toNat : ℤ)

end

end A088468.P14519030950672486038

namespace A088468

/-- `A099741(A047241(n+1))^A001221(A000961(n+1))` -/
def P14519030950672486038.Spec : Prop :=
  ∀ n, P14519030950672486038.a n = (A088468 n : ℚ)

end A088468

/-! ## A088468.P7145677786502187454

`A099741(A047241(n+1))^A003415(A006530(n+1))`
-/

namespace A088468.P7145677786502187454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099741 (A047241 (n + 1)).toNat : ℚ) ^ (A003415 (A006530 (n + 1)).toNat : ℤ)

end

end A088468.P7145677786502187454

namespace A088468

/-- `A099741(A047241(n+1))^A003415(A006530(n+1))` -/
def P7145677786502187454.Spec : Prop :=
  ∀ n, P7145677786502187454.a n = (A088468 n : ℚ)

end A088468

/-! ## A088468.P14231439348688827067

`A099741(A007310(n+1))%(n+2)`
-/

namespace A088468.P14231439348688827067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099741 (A007310 (n + 1)).toNat) (n + 2 : ℤ)

end

end A088468.P14231439348688827067

namespace A088468

/-- `A099741(A007310(n+1))%(n+2)` -/
def P14231439348688827067.Spec : Prop :=
  ∀ n, P14231439348688827067.a n = A088468 n

end A088468

/-! ## A088468.P1397317429738370481

`∑{d}[A099741(A016789(n)), A000010(#)]`
-/

namespace A088468.P1397317429738370481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099741 (A016789 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A088468.P1397317429738370481

namespace A088468

/-- `∑{d}[A099741(A016789(n)), A000010(#)]` -/
def P1397317429738370481.Spec : Prop :=
  ∀ n, P1397317429738370481.a n = A088468 n

end A088468

/-!
# A088470: Lunar sum of distinct lunar prime divisors of n.

The programs for A088470, there is no canonical definition to state claims against.
-/

/-! ## A088470.P13555087907033323296

`9*(n+1)%A349190(n+1)`
-/

namespace A088470.P13555087907033323296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * Int.tmod (n + 1 : ℤ) (A349190 (n + 1))

end

end A088470.P13555087907033323296

/-! ## A088470.P16854088886641054613

`(n+1)*A205568((n%2)^n+n)`
-/

namespace A088470.P16854088886641054613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A205568 ((n % 2) ^ n + n)

end

end A088470.P16854088886641054613

/-! ## A088470.P7167729668202319071

`(n+1)*record[A158849(n+1)]%(n+1)`
-/

namespace A088470.P7167729668202319071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 1 : ℤ)

end

end A088470.P7167729668202319071

/-! ## A088470.P7242702536906667035

`A193581(A258055(∑[n]))`
-/

namespace A088470.P7242702536906667035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 (A258055 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A088470.P7242702536906667035

/-! ## A088470.P2800381049793604495

`A193581(A319755(n)-1)`
-/

namespace A088470.P2800381049793604495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 (A319755 n - 1).toNat

end

end A088470.P2800381049793604495

/-!
# A088472: Numbers n such that the lunar sum of the distinct lunar prime divisors of n is < n.

The programs for A088472, there is no canonical definition to state claims against.
-/

/-! ## A088472.P8011328496095939598

`lt[A036203(A213217(n)), n]`
-/

namespace A088472.P8011328496095939598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036203 (A213217 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A088472.P8011328496095939598

/-! ## A088472.P17895422169985960575

`eq[A000002(A213217(n)), A057427(n)]`
-/

namespace A088472.P17895422169985960575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A213217 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A088472.P17895422169985960575

/-! ## A088472.P8942121643681031737

`eq[A000002(A213217(n)), A158388(n)]`
-/

namespace A088472.P8942121643681031737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A213217 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A088472.P8942121643681031737

/-! ## A088472.P5611400148126801010

`eq[A000002(A213217(n)), A178334(n)]`
-/

namespace A088472.P5611400148126801010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A213217 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A088472.P5611400148126801010

/-! ## A088472.P2614377289071466463

`lt[A241494(A347689(n)), A241494(n)]`
-/

namespace A088472.P2614377289071466463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241494 (A347689 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241494 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A088472.P2614377289071466463

/-!
# A088473: Numbers n such that the lunar sum of the distinct lunar prime divisors of n is <= n.

The programs for A088473, there is no canonical definition to state claims against.
-/

/-! ## A088473.P8991381876072871126

`∪[A011539(n+1), A088472(n+1)]`
-/

namespace A088473.P8991381876072871126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088472 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A088473.P8991381876072871126

/-! ## A088473.P15970955680417903311

`∪[A087097(n+1), A088472(n+1)]`
-/

namespace A088473.P15970955680417903311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088472 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A088473.P15970955680417903311

/-! ## A088473.P5655447195480818183

`∪[A088472(n+1), A088478(n+1)]`
-/

namespace A088473.P5655447195480818183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A088473.P5655447195480818183

/-! ## A088473.P14363196718842362986

`∪[A088472(n+1), A088479(n+1)]`
-/

namespace A088473.P14363196718842362986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088479 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A088473.P14363196718842362986

/-! ## A088473.P14540613894018936403

`∪[A088472(n+1), A144171(n+1)]`
-/

namespace A088473.P14540613894018936403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A088473.P14540613894018936403

/-!
# A088475: Numbers n such that the lunar sum of the distinct lunar prime divisors of n is >= n.

The programs for A088475, there is no canonical definition to state claims against.
-/

/-! ## A088475.P10462858954829294370

`10+n`
-/

namespace A088475.P10462858954829294370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 + n

end

end A088475.P10462858954829294370

/-!
# A088476: Numbers n such that the lunar sum of the distinct lunar prime divisors of n is > n.

The programs for A088476, there is no canonical definition to state claims against.
-/

/-! ## A088476.P16150371107462092935

`comp[10*n]+9`
-/

namespace A088476.P16150371107462092935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 9

end

end A088476.P16150371107462092935

/-! ## A088476.P7396739105066333558

`lt[0, ∏{digits}[n+1, -#]]`
-/

namespace A088476.P7396739105066333558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => -(x : ℤ)).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A088476.P7396739105066333558

/-! ## A088476.P7357690191676361734

`lt[1, ∑{digits}[n+1, tanh(#)]]`
-/

namespace A088476.P7357690191676361734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => Real.tanh (x : ℝ)).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A088476.P7357690191676361734

/-! ## A088476.P15543464512060109915

`comp[∑[n-dr(1-n)]]`
-/

namespace A088476.P15543464512060109915
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.digitalRoot (1 - (n : ℤ)) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A088476.P15543464512060109915

/-! ## A088476.P11497946691039070469

`lt[1, C(n, (n+1)%10)]`
-/

namespace A088476.P11497946691039070469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ((n + 1) % 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A088476.P11497946691039070469

/-! ## A088476.P2232098783618834934

`lt[n%10, 9%(n+1)]`
-/

namespace A088476.P2232098783618834934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 10

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A088476.P2232098783618834934

/-! ## A088476.P15829204976175661886

`lt[∏{digits}[n, #+1], n+1]`
-/

namespace A088476.P15829204976175661886
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x + 1).prod

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A088476.P15829204976175661886

/-! ## A088476.P13817445276006124441

`record[val(n+1, 10)+10+n]`
-/

namespace A088476.P13817445276006124441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 10 + 10 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088476.P13817445276006124441

/-! ## A088476.P583731767220283134

`comp[A051885(n)]`
-/

namespace A088476.P583731767220283134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A088476.P583731767220283134

/-! ## A088476.P5004181517741129292

`comp[A087052(n)]`
-/

namespace A088476.P5004181517741129292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087052 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A088476.P5004181517741129292

/-!
# A088477: Numbers n such that the lunar product of the distinct lunar prime divisors of n is < n.

The programs for A088477, there is no canonical definition to state claims against.
-/

/-! ## A088477.P11540938712477306230

`A087019(record[lcm(11, n+10)/11])`
-/

namespace A088477.P11540938712477306230
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 11 (n + 10) : ℚ) / 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087019 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A088477.P11540938712477306230

/-! ## A088477.P17726899959027152366

`A087019(record[(n+10)/gcd(11, 1-n)])`
-/

namespace A088477.P17726899959027152366
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 10 : ℚ) / (Int.gcd 11 (1 - (n : ℤ)) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087019 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A088477.P17726899959027152366

/-! ## A088477.P1673909872346808064

`A087019(record[A073731(n)])`
-/

namespace A088477.P1673909872346808064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073731 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087019 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A088477.P1673909872346808064

/-! ## A088477.P3631294883803204453

`A087019(comp[A010785(n)])`
-/

namespace A088477.P3631294883803204453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087019 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A088477.P3631294883803204453

/-! ## A088477.P16858876046052733788

`A087019(comp[A020485(n)])`
-/

namespace A088477.P16858876046052733788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087019 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A088477.P16858876046052733788

/-!
# A088478: Numbers n such that the lunar product of the distinct lunar prime divisors of n is <= n.

The programs for A088478, there is no canonical definition to state claims against.
-/

/-! ## A088478.P736603826853031380

`∪[A011539(n+1), A088477(n+1)]`
-/

namespace A088478.P736603826853031380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A088478.P736603826853031380

/-! ## A088478.P12121016252476327346

`∪[A088477(n+1), A088479(n+1)]`
-/

namespace A088478.P12121016252476327346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088479 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A088478.P12121016252476327346

/-! ## A088478.P10548659481402556500

`lt[A004184(A062584(n)), A051697(n)]`
-/

namespace A088478.P10548659481402556500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 (A062584 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A088478.P10548659481402556500

/-! ## A088478.P1175646590117580177

`lt[0, A102683(A118759(n))]`
-/

namespace A088478.P1175646590117580177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A118759 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A088478.P1175646590117580177

/-! ## A088478.P2619543453520447778

`lt[A004184(n), A118759(n)]`
-/

namespace A088478.P2619543453520447778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A088478.P2619543453520447778

/-!
# A088479: Numbers n such that the lunar product of the distinct lunar prime divisors of n is equal to n.

The programs for A088479, there is no canonical definition to state claims against.
-/

/-! ## A088479.P13013859411364115892

`lt[0, A102683(A047813(n))]`
-/

namespace A088479.P13013859411364115892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A047813 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A088479.P13013859411364115892

/-! ## A088479.P15601401780669731298

`eq[9, A054055(A262223(n)-n)]`
-/

namespace A088479.P15601401780669731298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A262223 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088479.P15601401780669731298

/-! ## A088479.P2051006005507859067

`A011539(comp[A065607(n+1)]+1)`
-/

namespace A088479.P2051006005507859067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065607 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A088479.P2051006005507859067

/-! ## A088479.P8671691617501452158

`A011539(comp[A209932(2*(n+1))]+1)`
-/

namespace A088479.P8671691617501452158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209932 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A088479.P8671691617501452158

/-! ## A088479.P4163296539608395149

`A011539(comp[A011539(2*(n+1))+1]+1)`
-/

namespace A088479.P4163296539608395149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (2 * (n + 1)) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A088479.P4163296539608395149

/-! ## A088479.P18219863650501865750

`lt[A047813(A004184(n)), A047813(n)]`
-/

namespace A088479.P18219863650501865750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A004184 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A088479.P18219863650501865750

/-! ## A088479.P13682311859528564708

`lt[A048379(n), A216556(A137564(n))]`
-/

namespace A088479.P13682311859528564708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216556 (A137564 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A088479.P13682311859528564708

/-! ## A088479.P10985890747298789918

`lt[A235049(A048379(n)), A351868(n)]`
-/

namespace A088479.P10985890747298789918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A048379 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351868 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A088479.P10985890747298789918

/-!
# A088480: Numbers n such that the lunar product of the distinct lunar prime divisors of n is >= n.

The programs for A088480, there is no canonical definition to state claims against.
-/

/-! ## A088480.P9112991308133837095

`n%69+1`
-/

namespace A088480.P9112991308133837095
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 69 + 1

end

end A088480.P9112991308133837095

/-!
# A088481: Numbers n such that the lunar product of the distinct lunar prime divisors of n is > n.

The programs for A088481, there is no canonical definition to state claims against.
-/

/-! ## A088481.P4763871404132618305

`comp[floor(n*π²)]`
-/

namespace A088481.P4763871404132618305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.pi ^ 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A088481.P4763871404132618305

/-! ## A088481.P7693101356151404150

`∑[round(cosh(sin(dr(n))))]`
-/

namespace A088481.P7693101356151404150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.sin (SequenceMachineLib.digitalRoot (n : ℤ) : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088481.P7693101356151404150

/-! ## A088481.P3204131131378647032

`∑[(C(n, 5)%3)!]`
-/

namespace A088481.P3204131131378647032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.choose n 5 % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088481.P3204131131378647032

/-! ## A088481.P9729066686320272834

`floor((n+1)/cos(57))`
-/

namespace A088481.P9729066686320272834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.cos (57 : ℝ)⌋

end

end A088481.P9729066686320272834

/-! ## A088481.P2244150330068018111

`lt[1, Δ[∑{digits}[n, #]²]]`
-/

namespace A088481.P2244150330068018111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f4 n)).map fun (x : ℕ) => x).sum ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A088481.P2244150330068018111

/-! ## A088481.P10452324487532026375

`∑[val(n+1, 9)+1]`
-/

namespace A088481.P10452324487532026375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 9 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088481.P10452324487532026375

/-! ## A088481.P14502917551411796921

`∑[ceil(2/dr(n+2))]`
-/

namespace A088481.P14502917551411796921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (SequenceMachineLib.digitalRoot (n + 2 : ℤ) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088481.P14502917551411796921

/-! ## A088481.P5842551902461046886

`∑[floor(root(2, dr(n+2)))]`
-/

namespace A088481.P5842551902461046886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℝ) ^ (1 / (SequenceMachineLib.digitalRoot (n + 2 : ℤ) : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088481.P5842551902461046886

/-! ## A088481.P16312969157692536319

`∑[round(root(2, dr(n+2)))]`
-/

namespace A088481.P16312969157692536319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℝ) ^ (1 / (SequenceMachineLib.digitalRoot (n + 2 : ℤ) : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088481.P16312969157692536319

/-! ## A088481.P5326370710386746772

`∑[C(2, dr(n+2))!]`
-/

namespace A088481.P5326370710386746772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.choose 2 (SequenceMachineLib.digitalRoot (n + 2 : ℤ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088481.P5326370710386746772

/-!
# A088482: a(n) = Sum_{k=1..4} floor(p(n,k) / p(n-1,k)) where p(n,k) = n! / (n-floor(n/2^k))!.

The programs for A088482, the canonical program `A088482.P5121561930417053920` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088482 has offset 2).

The definition of A088482 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9007 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088482.P5121561930417053920

`(n+1)*A000005(gcd(n+2, (2-n)²))-(n-3)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A088482

/-- `(n+1)*A000005(gcd(n+2, (2-n)²))-(n-3)` -/
def P5121561930417053920.Spec : Prop :=
  ∀ n, P5121561930417053920.a n = A088482 (n + 2)

theorem P5121561930417053920.correct : P5121561930417053920.Spec := by
  intro n
  simp only [A088482, Nat.add_sub_cancel]

end A088482

/-!
# A088483: Primes p such that p^2+p-1 and p^2+p+1 are twin primes.

The programs for A088483, there is no canonical definition to state claims against.
-/

/-! ## A088483.P822108693384950057

`floor(sqrt(A088484(n+1)))`
-/

namespace A088483.P822108693384950057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A088484 (n + 1))

end

end A088483.P822108693384950057

/-! ## A088483.P16522716348016900360

`∩[A286319(n+1), A342690(n+1)]`
-/

namespace A088483.P16522716348016900360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088483.P16522716348016900360

/-! ## A088483.P4216545517818613314

`∩[A053182(n+1), A286319(n+1)]`
-/

namespace A088483.P4216545517818613314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088483.P4216545517818613314

/-! ## A088483.P13912303131710214715

`∩[A055638(n+1), A286319(n+1)]`
-/

namespace A088483.P13912303131710214715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088483.P13912303131710214715

/-! ## A088483.P2989915706159099687

`∩[A053182(n+1), A053184(n+1)]`
-/

namespace A088483.P2989915706159099687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088483.P2989915706159099687

/-! ## A088483.P8402524556381630960

`∩[A053184(n+1), A055638(n+1)]`
-/

namespace A088483.P8402524556381630960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088483.P8402524556381630960

/-! ## A088483.P14064597638546322121

`∩[A053184(n+1), A342690(n+1)]`
-/

namespace A088483.P14064597638546322121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088483.P14064597638546322121

/-! ## A088483.P1405156369202021420

`p?[A088485(n+1)]`
-/

namespace A088483.P1405156369202021420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088483.P1405156369202021420

/-! ## A088483.P7314106813474126136

`p?[A131530(n+1)-1]`
-/

namespace A088483.P7314106813474126136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131530 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088483.P7314106813474126136

/-! ## A088483.P4380884435037930422

`p?[floor(sqrt(A088486(n+1)))]`
-/

namespace A088483.P4380884435037930422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A088486 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088483.P4380884435037930422

/-! ## A088483.P4012214537011355955

`∩[A053182(n+1), A088485(n+1)]`
-/

namespace A088483.P4012214537011355955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088483.P4012214537011355955

/-! ## A088483.P14574254603201031510

`∩[A053184(n+1), A088485(n+1)]`
-/

namespace A088483.P14574254603201031510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088483.P14574254603201031510

/-! ## A088483.P13471860642304672504

`∩[A088485(n+1), A286319(n+1)]`
-/

namespace A088483.P13471860642304672504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088483.P13471860642304672504

/-! ## A088483.P8957564758280338503

`∩[A131530(n+1)-1, A286319(n+1)]`
-/

namespace A088483.P8957564758280338503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131530 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088483.P8957564758280338503

/-! ## A088483.P4330250761445643515

`∩[A045309(n+1), A088485(n+1)]`
-/

namespace A088483.P4330250761445643515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088483.P4330250761445643515

/-! ## A088483.P10588053915805346183

`∩[A045309(n+1), A286319(n+1)]`
-/

namespace A088483.P10588053915805346183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088483.P10588053915805346183

/-! ## A088483.P11133511236373751259

`∩[A053182(n+1), A275059(n+1)]`
-/

namespace A088483.P11133511236373751259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088483.P11133511236373751259

/-! ## A088483.P1311770253422203127

`∩[A055638(n+1), A275059(n+1)]`
-/

namespace A088483.P1311770253422203127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088483.P1311770253422203127

/-! ## A088483.P17713204235177904407

`∩[A275059(n+1), A342690(n+1)]`
-/

namespace A088483.P17713204235177904407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088483.P17713204235177904407

/-!
# A088484: Sequence of the primes P = p(k)^2 + p(k) - 1 such that P and P + 2 are twin primes where p(k) denotes k-th prime.

The programs for A088484, there is no canonical definition to state claims against.
-/

/-! ## A088484.P18286049325587483444

`A088483(n+1)+A088483(n+1)²-1`
-/

namespace A088484.P18286049325587483444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088483 (n + 1) + (A088483 (n + 1) ^ 2 - 1)

end

end A088484.P18286049325587483444

/-! ## A088484.P10952457589232188358

`∩[A053185(n+1), A088486(n+1)]`
-/

namespace A088484.P10952457589232188358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053185 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088484.P10952457589232188358

/-! ## A088484.P3947335348656710852

`∩[A053185(n+1), A265006(n+1)]`
-/

namespace A088484.P3947335348656710852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053185 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088484.P3947335348656710852

/-! ## A088484.P15358262647559834739

`∩[A053185(n+1), A239711(n+1)]`
-/

namespace A088484.P15358262647559834739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053185 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088484.P15358262647559834739

/-! ## A088484.P12428372321139558253

`∩[A290817(n+1), A342691(n+1)-2]`
-/

namespace A088484.P12428372321139558253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290817 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342691 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088484.P12428372321139558253

/-! ## A088484.P16808924181107067691

`∩[A053185(n+1), A242383(n+1)]`
-/

namespace A088484.P16808924181107067691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053185 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088484.P16808924181107067691

/-! ## A088484.P18334234006127587477

`∩[A088486(n+1), A319597(n+1)]`
-/

namespace A088484.P18334234006127587477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088484.P18334234006127587477

/-! ## A088484.P15066157048812108435

`∩[A239711(n+1), A319597(n+1)]`
-/

namespace A088484.P15066157048812108435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088484.P15066157048812108435

/-! ## A088484.P2737858510210312681

`∩[A242383(n+1), A319597(n+1)]`
-/

namespace A088484.P2737858510210312681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088484.P2737858510210312681

/-! ## A088484.P16174230032800258149

`∩[A265006(n+1), A319597(n+1)]`
-/

namespace A088484.P16174230032800258149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088484.P16174230032800258149

/-! ## A088484.P2210861964575540507

`A000010(A088483(n+1))+A088483(n+1)²`
-/

namespace A088484.P2210861964575540507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A088483 (n + 1)).toNat + A088483 (n + 1) ^ 2

end

end A088484.P2210861964575540507

/-! ## A088484.P5547651301557785586

`record[A010051(A088485(n+1))*A088486(n+1)]`
-/

namespace A088484.P5547651301557785586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A088485 (n + 1)).toNat * A088486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088484.P5547651301557785586

/-!
# A088485: Numbers n such that n^2 + n - 1 and n^2 + n + 1 are twin primes.

The programs for A088485, there is no canonical definition to state claims against.
-/

/-! ## A088485.P13862766674362005561

`A131530(n+1)-1`
-/

namespace A088485.P13862766674362005561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131530 (n + 1) - 1

end

end A088485.P13862766674362005561

/-! ## A088485.P12235244938575251640

`floor(sqrt(A088486(n+1)))`
-/

namespace A088485.P12235244938575251640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A088486 (n + 1))

end

end A088485.P12235244938575251640

/-! ## A088485.P10504169220397885204

`A088486(n+1)%A131530(n+1)`
-/

namespace A088485.P10504169220397885204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088486 (n + 1)) (A131530 (n + 1))

end

end A088485.P10504169220397885204

/-! ## A088485.P1338950711551089524

`ceil(sqrt(A088486(n+1)))*A166486(2*n+3)-1`
-/

namespace A088485.P1338950711551089524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A088486 (n + 1) : ℝ)⌉ * A166486 (2 * n + 3) - 1

end

end A088485.P1338950711551089524

/-! ## A088485.P15314379548623605396

`floor(sqrt(A265006(Δ[n²])))`
-/

namespace A088485.P15314379548623605396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A265006 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A088485.P15314379548623605396

/-! ## A088485.P12847155794223873084

`ceil(sqrt(A265006(2*n+1)))-1`
-/

namespace A088485.P12847155794223873084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A265006 (2 * n + 1) : ℝ)⌉ - 1

end

end A088485.P12847155794223873084

/-! ## A088485.P4614746926606740611

`∩[A002384(n+1), A045546(n+1)]`
-/

namespace A088485.P4614746926606740611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088485.P4614746926606740611

/-! ## A088485.P10086154925116173467

`∩[A045546(n+1), A096176(n+1)]`
-/

namespace A088485.P10086154925116173467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088485.P10086154925116173467

/-! ## A088485.P11094089937718252765

`∩[A002384(n+1), A094210(n+1)+1]`
-/

namespace A088485.P11094089937718252765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094210 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088485.P11094089937718252765

/-! ## A088485.P8516024607935636427

`∩[A002328(n+1)-1, A002384(n+1)]`
-/

namespace A088485.P8516024607935636427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088485.P8516024607935636427

/-! ## A088485.P3221765177787197729

`∩[A002328(n+1), A055494(n+1)]-1`
-/

namespace A088485.P3221765177787197729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A088485.P3221765177787197729

/-! ## A088485.P17861988815544593151

`∩[A002328(n+1)-1, A096176(n+1)]`
-/

namespace A088485.P17861988815544593151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088485.P17861988815544593151

/-! ## A088485.P17914511698393614513

`∩[A045546(n+1), A055494(n+1)-1]`
-/

namespace A088485.P17914511698393614513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088485.P17914511698393614513

/-! ## A088485.P3641528151605078121

`(sqrt(A131706(n+1))-1)/2`
-/

namespace A088485.P3641528151605078121
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A131706 (n + 1) : ℝ) - 1) / 2

end

end A088485.P3641528151605078121

/-! ## A088485.P17065926788469831014

`A023443(A131530(n+1))`
-/

namespace A088485.P17065926788469831014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A131530 (n + 1)).toNat

end

end A088485.P17065926788469831014

/-! ## A088485.P4344546607976988007

`A028310(round(sqrt(A088486(n+1))))`
-/

namespace A088485.P4344546607976988007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway (Real.sqrt (A088486 (n + 1) : ℝ))).toNat

end

end A088485.P4344546607976988007

/-!
# A088486: Primes p of the form k*(k + 1) - 1 such that p and p + 2 are twin primes.

The programs for A088486, there is no canonical definition to state claims against.
-/

/-! ## A088486.P5659681700955561276

`A088485(n+1)*(A088485(n+1)+1)-1`
-/

namespace A088486.P5659681700955561276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088485 (n + 1) * (A088485 (n + 1) + 1) - 1

end

end A088486.P5659681700955561276

/-! ## A088486.P14106202301154283077

`A088485(n+1)*A131530(n+1)-1`
-/

namespace A088486.P14106202301154283077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088485 (n + 1) * A131530 (n + 1) - 1

end

end A088486.P14106202301154283077

/-! ## A088486.P13104952889035949509

`A265006(Δ[n²])`
-/

namespace A088486.P13104952889035949509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265006 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A088486.P13104952889035949509

/-! ## A088486.P6114277593977203868

`A265006(2*(n+1))-2`
-/

namespace A088486.P6114277593977203868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265006 (2 * (n + 1)) - 2

end

end A088486.P6114277593977203868

/-! ## A088486.P5430292716550282352

`or(1, A265006(2*n+1))`
-/

namespace A088486.P5430292716550282352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A265006 (2 * n + 1))

end

end A088486.P5430292716550282352

/-! ## A088486.P15258171962345334743

`∩[A265006(2*n+1), A265006(n+1)]`
-/

namespace A088486.P15258171962345334743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265006 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088486.P15258171962345334743

/-! ## A088486.P5360764030731900327

`∩[A239711(n+1), A242383(n+1)]`
-/

namespace A088486.P5360764030731900327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088486.P5360764030731900327

/-! ## A088486.P159288470659096442

`∩[A242383(n+1), A265006(n+1)]`
-/

namespace A088486.P159288470659096442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088486.P159288470659096442

/-! ## A088486.P10392188003610737864

`∩[A002327(n+1), A242383(n+1)]`
-/

namespace A088486.P10392188003610737864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088486.P10392188003610737864

/-! ## A088486.P13966267897872116567

`∩[A002327(n+1), A265006(n+1)]`
-/

namespace A088486.P13966267897872116567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088486.P13966267897872116567

/-! ## A088486.P4325089551411028132

`∩[A084720(n+1), A265006(n+1)]`
-/

namespace A088486.P4325089551411028132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088486.P4325089551411028132

/-! ## A088486.P2714020022475364

`∩[A239709(n+1), A242383(n+1)]`
-/

namespace A088486.P2714020022475364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088486.P2714020022475364

/-! ## A088486.P16665245672748860620

`∩[A239709(n+1), A265006(n+1)]`
-/

namespace A088486.P16665245672748860620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088486.P16665245672748860620

/-! ## A088486.P7846569250880132942

`(A131706(n+1)-5)/4`
-/

namespace A088486.P7846569250880132942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131706 (n + 1) - 5 : ℚ) / 4

end

end A088486.P7846569250880132942

/-! ## A088486.P6149207138439231157

`∩[A179273(n+1), A242383(n+1)]`
-/

namespace A088486.P6149207138439231157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088486.P6149207138439231157

/-! ## A088486.P14088774754477877063

`2*A000217(A088485(n+1))-1`
-/

namespace A088486.P14088774754477877063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000217 (A088485 (n + 1)).toNat - 1

end

end A088486.P14088774754477877063

/-! ## A088486.P5663448259493467433

`A161550(A088485(n+1))`
-/

namespace A088486.P5663448259493467433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161550 (A088485 (n + 1)).toNat

end

end A088486.P5663448259493467433

/-! ## A088486.P1407080917831724966

`A165900(A131530(n+1))`
-/

namespace A088486.P1407080917831724966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165900 (A131530 (n + 1)).toNat

end

end A088486.P1407080917831724966

/-! ## A088486.P2792340024945294311

`∩[A242383(n+1), A028387(n)]`
-/

namespace A088486.P2792340024945294311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088486.P2792340024945294311

/-! ## A088486.P9707396894540270566

`∩[A265006(n+1), A028387(n)]`
-/

namespace A088486.P9707396894540270566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088486.P9707396894540270566

/-!
# A088487: a(n) = Sum_{k=1..8} floor(A254864(n,k)/A254864(n-1,k)), where A254864(n,k) = n! / (n-floor(n/3^k))!.

The programs for A088487, the canonical program `A088487.P8060481969084210276` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088487 has offset 2).

The definition of A088487 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088487.P8060481969084210276

`(n+1)*val(n+2, 3)+8`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A088487

/-- `(n+1)*val(n+2, 3)+8` -/
def P8060481969084210276.Spec : Prop :=
  ∀ n, (P8060481969084210276.a n : ℤ) = A088487 (n + 2)

theorem P8060481969084210276.correct : P8060481969084210276.Spec := by
  intro n
  simp only [A088487, Nat.add_sub_cancel]

end A088487

/-! ## A088487.P8620050032682250683

`(n+1)*A007949(n+2)+8`
-/

namespace A088487.P8620050032682250683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007949 (n + 2) + 8

end

end A088487.P8620050032682250683

namespace A088487

/-- `(n+1)*A007949(n+2)+8` -/
def P8620050032682250683.Spec : Prop :=
  ∀ n, P8620050032682250683.a n = A088487 (n + 2)

end A088487

/-! ## A088487.P9079699455887369485

`(n+1)*Δ[A054861(n+1)]+8`
-/

namespace A088487.P9079699455887369485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n) + 8

end

end A088487.P9079699455887369485

namespace A088487

/-- `(n+1)*Δ[A054861(n+1)]+8` -/
def P9079699455887369485.Spec : Prop :=
  ∀ n, P9079699455887369485.a n = A088487 (n + 2)

end A088487

/-! ## A088487.P14731458576968085802

`(n+1)*A051064(n+2)+7-n`
-/

namespace A088487.P14731458576968085802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A051064 (n + 2) + (7 - (n : ℤ))

end

end A088487.P14731458576968085802

namespace A088487

/-- `(n+1)*A051064(n+2)+7-n` -/
def P14731458576968085802.Spec : Prop :=
  ∀ n, P14731458576968085802.a n = A088487 (n + 2)

end A088487

/-! ## A088487.P12228048862726995632

`val((n+2)^(n+1), 3)+8`
-/

namespace A088487.P12228048862726995632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 2) ^ (n + 1)) 3 + 8

end

end A088487.P12228048862726995632

namespace A088487

/-- `val((n+2)^(n+1), 3)+8` -/
def P12228048862726995632.Spec : Prop :=
  ∀ n, (P12228048862726995632.a n : ℤ) = A088487 (n + 2)

end A088487

/-!
# A088489: For each pair of twin primes (p,p+2) take the absolute value of the difference between p and p with digits reversed.

The programs for A088489, there is no canonical definition to state claims against.
-/

/-! ## A088489.P8741666383128813227

`abs(A056965(A001359(n+1)))`
-/

namespace A088489.P8741666383128813227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056965 (A001359 (n + 1)).toNat|

end

end A088489.P8741666383128813227

/-! ## A088489.P8533794432170040726

`abs(A068396(A029707(n+1)))`
-/

namespace A088489.P8533794432170040726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A068396 (A029707 (n + 1)).toNat|

end

end A088489.P8533794432170040726

/-! ## A088489.P4495952664122504058

`abs(A056965(A111166(n+1)))`
-/

namespace A088489.P4495952664122504058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056965 (A111166 (n + 1)).toNat|

end

end A088489.P4495952664122504058

/-! ## A088489.P12450210573952160165

`abs(A056965(p?[A001838(n+1)]))`
-/

namespace A088489.P12450210573952160165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056965 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat|

end

end A088489.P12450210573952160165

/-! ## A088489.P8132942186101761618

`abs(A056965(p?[A040976(n+1)]))`
-/

namespace A088489.P8132942186101761618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056965 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat|

end

end A088489.P8132942186101761618

/-! ## A088489.P16496873692529899089

`abs(A056965(p?[A120811(n+1)]))`
-/

namespace A088489.P16496873692529899089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056965 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat|

end

end A088489.P16496873692529899089

/-! ## A088489.P10310649052873388335

`abs(A056965(A006512(n+1)-2))`
-/

namespace A088489.P10310649052873388335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056965 (A006512 (n + 1) - 2).toNat|

end

end A088489.P10310649052873388335

/-! ## A088489.P9081739062604566289

`abs(A056965(A077800(2*n+1)))`
-/

namespace A088489.P9081739062604566289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056965 (A077800 (2 * n + 1)).toNat|

end

end A088489.P9081739062604566289

/-! ## A088489.P13763786541973260971

`abs(A056965(p?[A000040(n+1)-2]))`
-/

namespace A088489.P13763786541973260971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056965 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat|

end

end A088489.P13763786541973260971

/-!
# A088490: a(n) is the absolute value of p minus A004086(p), where (p-2,p) is the n-th pair of twin primes.

The programs for A088490, there is no canonical definition to state claims against.
-/

/-! ## A088490.P15511979949264941904

`abs(A068396(A029707(n+1)+1))`
-/

namespace A088490.P15511979949264941904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A068396 (A029707 (n + 1) + 1).toNat|

end

end A088490.P15511979949264941904

/-! ## A088490.P12475152144732862991

`abs(A056965(A006512(n+1)))`
-/

namespace A088490.P12475152144732862991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056965 (A006512 (n + 1)).toNat|

end

end A088490.P12475152144732862991

/-! ## A088490.P16539764570862774751

`abs(A056965(A001097(Δ[n²])))`
-/

namespace A088490.P16539764570862774751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056965 (A001097 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat|

end

end A088490.P16539764570862774751

/-! ## A088490.P8754386138461755072

`abs(A056965(sqrt(A108604(n+1))))`
-/

namespace A088490.P8754386138461755072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056965 (SequenceMachineLib.roundAway (Real.sqrt (A108604 (n + 1) : ℝ))).toNat|

end

end A088490.P8754386138461755072

/-! ## A088490.P14822021097166380220

`abs(A056965(p?[A014091(n+1)]))`
-/

namespace A088490.P14822021097166380220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056965 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat|

end

end A088490.P14822021097166380220

/-! ## A088490.P10131651115730297458

`abs(A056965(p?[A048974(n+1)]))`
-/

namespace A088490.P10131651115730297458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056965 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat|

end

end A088490.P10131651115730297458

/-! ## A088490.P1374596679453470171

`abs(A056965(p?[A052147(n+1)]))`
-/

namespace A088490.P1374596679453470171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056965 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat|

end

end A088490.P1374596679453470171

/-! ## A088490.P6164726711873938415

`abs(A056965(p?[A067531(n+1)]))`
-/

namespace A088490.P6164726711873938415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056965 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat|

end

end A088490.P6164726711873938415

/-! ## A088490.P9504300429759759425

`abs(A056965(p?[A072281(n+1)]))`
-/

namespace A088490.P9504300429759759425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072281 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056965 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat|

end

end A088490.P9504300429759759425

/-! ## A088490.P7428481021854149540

`abs(A056965(p?[A320391(n+1)]))`
-/

namespace A088490.P7428481021854149540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056965 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat|

end

end A088490.P7428481021854149540

/-!
# A088491: a(n) = floor(p(n)/p(n-1)), where p(n) = n!/(Product_{j=1..floor(n/2)} A004001(j)).

The programs for A088491, the canonical program `A088491.P1155521359578131042` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088491 has offset 2).

The definition of A088491 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088491.P1155521359578131042

`A093178(n)+A078832(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A088491

/-- `A093178(n)+A078832(n+1)` -/
def P1155521359578131042.Spec : Prop :=
  ∀ n, P1155521359578131042.a n = A088491 (n + 2)

theorem P1155521359578131042.correct : P1155521359578131042.Spec := by
  intro n
  simp only [A088491, Nat.add_sub_cancel]

end A088491

/-! ## A088491.P3032099854746488127

`A078832(n+1)+abs(A009001(n))`
-/

namespace A088491.P3032099854746488127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078832 (n + 1) + |A009001 n|

end

end A088491.P3032099854746488127

namespace A088491

/-- `A078832(n+1)+abs(A009001(n))` -/
def P3032099854746488127.Spec : Prop :=
  ∀ n, P3032099854746488127.a n = A088491 (n + 2)

end A088491

/-! ## A088491.P4073772812123727710

`A078832(n+1)+A133265(n)-1`
-/

namespace A088491.P4073772812123727710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078832 (n + 1) + (A133265 n - 1)

end

end A088491.P4073772812123727710

namespace A088491

/-- `A078832(n+1)+A133265(n)-1` -/
def P4073772812123727710.Spec : Prop :=
  ∀ n, P4073772812123727710.a n = A088491 (n + 2)

end A088491

/-! ## A088491.P1680917227336524888

`A078832(n+1)+A008619(A019425(n))`
-/

namespace A088491.P1680917227336524888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078832 (n + 1) + A008619 (A019425 n).toNat

end

end A088491.P1680917227336524888

namespace A088491

/-- `A078832(n+1)+A008619(A019425(n))` -/
def P1680917227336524888.Spec : Prop :=
  ∀ n, P1680917227336524888.a n = A088491 (n + 2)

end A088491

/-! ## A088491.P17563564855072509338

`A275365(n)+A001511(A006530(n+2))`
-/

namespace A088491.P17563564855072509338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275365 n + A001511 (A006530 (n + 2)).toNat

end

end A088491.P17563564855072509338

namespace A088491

/-- `A275365(n)+A001511(A006530(n+2))` -/
def P17563564855072509338.Spec : Prop :=
  ∀ n, P17563564855072509338.a n = A088491 (n + 2)

end A088491

/-! ## A088491.P2430341927627799017

`A275365(n)+A014963(A005843(n+2))`
-/

namespace A088491.P2430341927627799017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275365 n + A014963 (A005843 (n + 2)).toNat

end

end A088491.P2430341927627799017

namespace A088491

/-- `A275365(n)+A014963(A005843(n+2))` -/
def P2430341927627799017.Spec : Prop :=
  ∀ n, P2430341927627799017.a n = A088491 (n + 2)

end A088491

/-! ## A088491.P6866920844406100163

`A008619(A078832(n+1)*A133265(n))`
-/

namespace A088491.P6866920844406100163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A078832 (n + 1) * A133265 n).toNat

end

end A088491.P6866920844406100163

namespace A088491

/-- `A008619(A078832(n+1)*A133265(n))` -/
def P6866920844406100163.Spec : Prop :=
  ∀ n, P6866920844406100163.a n = A088491 (n + 2)

end A088491

/-! ## A088491.P10071578335486969127

`A029579(A078832(n+1)*A133265(n))`
-/

namespace A088491.P10071578335486969127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A078832 (n + 1) * A133265 n).toNat

end

end A088491.P10071578335486969127

namespace A088491

/-- `A029579(A078832(n+1)*A133265(n))` -/
def P10071578335486969127.Spec : Prop :=
  ∀ n, P10071578335486969127.a n = A088491 (n + 2)

end A088491

/-! ## A088491.P5332615723969926864

`A093178(n)+A020639(A073061(n+1))`
-/

namespace A088491.P5332615723969926864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n + A020639 (A073061 (n + 1)).toNat

end

end A088491.P5332615723969926864

namespace A088491

/-- `A093178(n)+A020639(A073061(n+1))` -/
def P5332615723969926864.Spec : Prop :=
  ∀ n, P5332615723969926864.a n = A088491 (n + 2)

end A088491

/-!
# A088492: a(2n+1)=2n+1, a(2n) = floor(2*n/A005185(n)), a weighted inverse of Hofstadter's Q-sequence.

The programs for A088492, there is no canonical definition to state claims against.
-/

/-! ## A088492.P14314199887284678750

`A089309(or(A089309(n), A282123(n)))+1`
-/

namespace A088492.P14314199887284678750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (Int.lor (A089309 n) (A282123 n)).toNat + 1

end

end A088492.P14314199887284678750

/-! ## A088492.P7761250808586869486

`n%A088262(A331732(n+1)+1)+2`
-/

namespace A088492.P7761250808586869486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A088262 (A331732 (n + 1) + 1).toNat) + 2

end

end A088492.P7761250808586869486

/-! ## A088492.P13271138967828173799

`A161189(or(A089309(n), A282123(n)))`
-/

namespace A088492.P13271138967828173799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161189 (Int.lor (A089309 n) (A282123 n)).toNat

end

end A088492.P13271138967828173799

/-! ## A088492.P2365704002316079381

`A302777(A049964(n+4))+A223490(n+2)`
-/

namespace A088492.P2365704002316079381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302777 (A049964 (n + 4)).toNat + A223490 (n + 2)

end

end A088492.P2365704002316079381

/-!
# A088496: Length of n-th run = n-th partial sum.

The programs for A088496, there is no canonical definition to state claims against.
-/

/-! ## A088496.P1708460582795334160

`A057211(A124867(n+1))+1`
-/

namespace A088496.P1708460582795334160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057211 (A124867 (n + 1)).toNat + 1

end

end A088496.P1708460582795334160

/-! ## A088496.P15341350720118553244

`(A324697(n+1)-A000196(A127041(n+1)))%2+1`
-/

namespace A088496.P15341350720118553244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324697 (n + 1) - A000196 (A127041 (n + 1)).toNat) 2 + 1

end

end A088496.P15341350720118553244

/-! ## A088496.P2392700610421424424

`(A000961(A035333(3*n+4))-A000196(A127041(n+1)))%2+1`
-/

namespace A088496.P2392700610421424424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000961 (A035333 (3 * n + 4)).toNat - A000196 (A127041 (n + 1)).toNat) 2 + 1

end

end A088496.P2392700610421424424

/-! ## A088496.P4457360535924848855

`gcd(A113117(n+1), A228246(n+1))`
-/

namespace A088496.P4457360535924848855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A113117 (n + 1)) (A228246 (n + 1))

end

end A088496.P4457360535924848855

/-! ## A088496.P10981235748790775025

`gcd(A000005(A122271(n+1)), A180447(2*n+4))`
-/

namespace A088496.P10981235748790775025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (A122271 (n + 1)).toNat) (A180447 (2 * n + 4))

end

end A088496.P10981235748790775025

/-!
# A088498: Numbers k such that k^2 + k - 1 and k^2 + k + 1 are twin primes and (k + 1)*(k + 1) + k + 1 - 1 and (k + 1)*(k + 1) + k + 1 + 1 are also twin primes.

The programs for A088498, there is no canonical definition to state claims against.
-/

/-! ## A088498.P17544612252491926655

`∩[A088485(n+1)-1, A088485(n+1)]`
-/

namespace A088498.P17544612252491926655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088485 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088498.P17544612252491926655

/-! ## A088498.P6961333432134738660

`A236056(n+1)-1`
-/

namespace A088498.P6961333432134738660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236056 (n + 1) - 1

end

end A088498.P6961333432134738660

/-! ## A088498.P2859704501849034448

`abs(1-A236056(n-or(n, -1)))`
-/

namespace A088498.P2859704501849034448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A236056 ((n : ℤ) - Int.lor (n : ℤ) (-1)).toNat|

end

end A088498.P2859704501849034448

/-! ## A088498.P5209905756881089281

`record[A236056(A117910(n))-1]`
-/

namespace A088498.P5209905756881089281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236056 (A117910 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088498.P5209905756881089281

/-! ## A088498.P11274542380073894571

`record[A236056(A324347(n))-1]`
-/

namespace A088498.P11274542380073894571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236056 (A324347 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088498.P11274542380073894571

/-!
# A088499: Doubly (3)-perfect numbers.

The programs for A088499, the canonical program `A088499.P11000041782602806712` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088499 has offset 1).

The definition of A088499 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088499.P9326908675251162456

`3*(2*A193339(n+3)+1)`
-/

namespace A088499.P9326908675251162456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (2 * A193339 (n + 3) + 1)

end

end A088499.P9326908675251162456

namespace A088499

/-- `3*(2*A193339(n+3)+1)` -/
def P9326908675251162456.Spec : Prop :=
  ∀ n, P9326908675251162456.a n = A088499 (n + 1)

end A088499

/-! ## A088499.P13907573847601157121

`A016945(A193339(n+3))`
-/

namespace A088499.P13907573847601157121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 (A193339 (n + 3)).toNat

end

end A088499.P13907573847601157121

namespace A088499

/-- `A016945(A193339(n+3))` -/
def P13907573847601157121.Spec : Prop :=
  ∀ n, P13907573847601157121.a n = A088499 (n + 1)

end A088499

/-! ## A088499.P2651941155716585714

`∩[A076496(n+1), A030626(n+1)]+3`
-/

namespace A088499.P2651941155716585714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 3

end

end A088499.P2651941155716585714

namespace A088499

/-- `∩[A076496(n+1), A030626(n+1)]+3` -/
def P2651941155716585714.Spec : Prop :=
  ∀ n, (P2651941155716585714.a n : ℤ) = A088499 (n + 1)

end A088499

/-! ## A088499.P11000041782602806712

`record[A145064(A141545(n+1))+1]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A088499

/-- `record[A145064(A141545(n+1))+1]` -/
def P11000041782602806712.Spec : Prop :=
  ∀ n, P11000041782602806712.a n = A088499 (n + 1)

theorem P11000041782602806712.correct : P11000041782602806712.Spec := by
  intro n
  simp only [A088499, Nat.add_sub_cancel]

end A088499

/-! ## A088499.P7689842873802212976

`A109613(record[A145064(A141545(n+1))])`
-/

namespace A088499.P7689842873802212976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145064 (A141545 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A088499.P7689842873802212976

namespace A088499

/-- `A109613(record[A145064(A141545(n+1))])` -/
def P7689842873802212976.Spec : Prop :=
  ∀ n, P7689842873802212976.a n = A088499 (n + 1)

end A088499

