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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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
# A178400: Sums of two primes, an array by antidiagonals.

The programs for A178400, there is no canonical definition to state claims against.
-/

/-! ## A178400.P18382497184957522145

`comp[∑[A073610(n+1)]+n]+1-n`
-/

namespace A178400.P18382497184957522145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073610 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + (1 - (n : ℤ))

end

end A178400.P18382497184957522145

/-! ## A178400.P944156489674753793

`A064099(n)+1+A064099(A000032(n))`
-/

namespace A178400.P944156489674753793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064099 n + 1 + A064099 (A000032 n).toNat

end

end A178400.P944156489674753793

/-! ## A178400.P404724218738418783

`A064099(3*(n+1))+A064099(A001612(n)-1)`
-/

namespace A178400.P404724218738418783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064099 (3 * (n + 1)) + A064099 (A001612 n - 1).toNat

end

end A178400.P404724218738418783

/-! ## A178400.P10984149159842526342

`A064099(3*(n+1))+A064099(A059841(n)+A014217(n))`
-/

namespace A178400.P10984149159842526342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064099 (3 * (n + 1)) + A064099 (A059841 n + A014217 n).toNat

end

end A178400.P10984149159842526342

/-! ## A178400.P8491673299804940595

`A235224(A258730(n+1))+A020911(n+1)`
-/

namespace A178400.P8491673299804940595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 (A258730 (n + 1)).toNat + A020911 (n + 1)

end

end A178400.P8491673299804940595

/-!
# A178401: Number of times the rounded up arithmetic mean of digits of n occurs in n, cf. A004427.

The programs for A178401, there is no canonical definition to state claims against.
-/

/-! ## A178401.P9732962797671268203

`A100910(A178359(n))`
-/

namespace A178401.P9732962797671268203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100910 (A178359 n).toNat

end

end A178401.P9732962797671268203

/-! ## A178401.P17673173943519111676

`A100910(A004427(n)+10*n)`
-/

namespace A178401.P17673173943519111676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100910 (A004427 n + (10 * n : ℤ)).toNat

end

end A178401.P17673173943519111676

/-! ## A178401.P7981128976674241932

`C(A343383(A260529(n)), A343383(n))`
-/

namespace A178401.P7981128976674241932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A343383 (A260529 n).toNat).toNat (A343383 n).toNat

end

end A178401.P7981128976674241932

/-! ## A178401.P8612261295352727106

`C(A088570(A168234(n+1)), A261424(n+1))`
-/

namespace A178401.P8612261295352727106
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A088570 (A168234 (n + 1)).toNat).toNat (A261424 (n + 1)).toNat

end

end A178401.P8612261295352727106

/-! ## A178401.P11593544616544603020

`C(A358480(3*n+4), A261424(n+1))`
-/

namespace A178401.P11593544616544603020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A358480 (3 * n + 4)).toNat (A261424 (n + 1)).toNat

end

end A178401.P11593544616544603020

/-!
# A178402: Numbers not containing the rounded up arithmetic mean of their digits, cf. A004427.

The programs for A178402, there is no canonical definition to state claims against.
-/

/-! ## A178402.P14305291322815833087

`eq[0, A178401(n)]`
-/

namespace A178402.P14305291322815833087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178401 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178402.P14305291322815833087

/-! ## A178402.P10288183755551264891

`comp[A178403(n+1)]`
-/

namespace A178402.P10288183755551264891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A178402.P10288183755551264891

/-! ## A178402.P1004445924501468911

`lt[A178401(n+1), 1]+1`
-/

namespace A178402.P1004445924501468911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178401 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A178402.P1004445924501468911

/-! ## A178402.P17751396293364907278

`lt[A178401(2*n-n), 1]`
-/

namespace A178402.P17751396293364907278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178401 (2 * n - n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A178402.P17751396293364907278

/-! ## A178402.P4500973019910455013

`A000027(lt[A178401(n), 1])`
-/

namespace A178402.P4500973019910455013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178401 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A178402.P4500973019910455013

/-! ## A178402.P15199444358175631181

`lt[A007318(n)*A178401(n), 1]`
-/

namespace A178402.P15199444358175631181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A178401 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A178402.P15199444358175631181

/-! ## A178402.P13930578671280968797

`lt[3, A347639(A347689(n))]`
-/

namespace A178402.P13930578671280968797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347639 (A347689 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A178402.P13930578671280968797

/-! ## A178402.P5688723184522404136

`eq[A040765(n), A377191(n)]`
-/

namespace A178402.P5688723184522404136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040765 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377191 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178402.P5688723184522404136

/-! ## A178402.P4009873199346468205

`filter[A032973(n+1), A377191(#)]`
-/

namespace A178402.P4009873199346468205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A377191 (f1 j).toNat = 1) n)

end

end A178402.P4009873199346468205

/-! ## A178402.P1658160674642581852

`∩[A032973(n+1), A043638(n+1)]`
-/

namespace A178402.P1658160674642581852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178402.P1658160674642581852

/-!
# A178403: Numbers containing the rounded up arithmetic mean of their digits at least once, cf. A004427.

The programs for A178403, there is no canonical definition to state claims against.
-/

/-! ## A178403.P9021152113342184062

`lt[0, A178401(n)]`
-/

namespace A178403.P9021152113342184062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178401 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A178403.P9021152113342184062

/-! ## A178403.P9842691776019449896

`comp[A178402(n+1)]`
-/

namespace A178403.P9842691776019449896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A178403.P9842691776019449896

/-! ## A178403.P7813781721741946104

`A286297(A134336(n+1)²)`
-/

namespace A178403.P7813781721741946104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286297 (A134336 (n + 1) ^ 2).toNat

end

end A178403.P7813781721741946104

/-! ## A178403.P2345609692436376510

`A134336(n+1)%A003064(n)`
-/

namespace A178403.P2345609692436376510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134336 (n + 1)) (A003064 n)

end

end A178403.P2345609692436376510

/-! ## A178403.P12641494317814831083

`A134336(A123271(n+2)²+n)`
-/

namespace A178403.P12641494317814831083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134336 (A123271 (n + 2) ^ 2 + (n : ℤ)).toNat

end

end A178403.P12641494317814831083

/-!
# A178404: Numbers such that the rounded up arithmetic mean of their digits equals their digital root.

The programs for A178404, the canonical program `A178404.P8715085228926204478` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178404 has offset 1).

The definition of A178404 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178404.P6681754881587518510

`comp[A178405(n+1)]`
-/

namespace A178404.P6681754881587518510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A178404.P6681754881587518510

namespace A178404

/-- `comp[A178405(n+1)]` -/
def P6681754881587518510.Spec : Prop :=
  ∀ n, (P6681754881587518510.a n : ℤ) = A178404 (n + 1)

end A178404

/-! ## A178404.P8715085228926204478

`eq[dr(n), A004427(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A178404

/-- `eq[dr(n), A004427(n)]` -/
def P8715085228926204478.Spec : Prop :=
  ∀ n, (P8715085228926204478.a n : ℤ) = A178404 (n + 1)

theorem P8715085228926204478.correct : P8715085228926204478.Spec := by
  intro n
  simp only [A178404, Nat.add_sub_cancel]

end A178404

/-! ## A178404.P4376983363162417607

`eq[A004427(n), A010888(n)]`
-/

namespace A178404.P4376983363162417607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178404.P4376983363162417607

namespace A178404

/-- `eq[A004427(n), A010888(n)]` -/
def P4376983363162417607.Spec : Prop :=
  ∀ n, (P4376983363162417607.a n : ℤ) = A178404 (n + 1)

end A178404

/-! ## A178404.P10737807375537029708

`eq[A004427(n), A007953(A007953(n))]`
-/

namespace A178404.P10737807375537029708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178404.P10737807375537029708

namespace A178404

/-- `eq[A004427(n), A007953(A007953(n))]` -/
def P10737807375537029708.Spec : Prop :=
  ∀ n, (P10737807375537029708.a n : ℤ) = A178404 (n + 1)

end A178404

/-! ## A178404.P14227197446800334941

`eq[A000030(A178358(n)-n), A010888(n)]`
-/

namespace A178404.P14227197446800334941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A178358 n - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178404.P14227197446800334941

namespace A178404

/-- `eq[A000030(A178358(n)-n), A010888(n)]` -/
def P14227197446800334941.Spec : Prop :=
  ∀ n, (P14227197446800334941.a n : ℤ) = A178404 (n + 1)

end A178404

/-! ## A178404.P12007927693762650526

`eq[A000030(A178358(n)), A010888(n)]`
-/

namespace A178404.P12007927693762650526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A178358 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178404.P12007927693762650526

namespace A178404

/-- `eq[A000030(A178358(n)), A010888(n)]` -/
def P12007927693762650526.Spec : Prop :=
  ∀ n, (P12007927693762650526.a n : ℤ) = A178404 (n + 1)

end A178404

/-! ## A178404.P1803402636439400452

`eq[A010888(n), A257295(A178359(n))]`
-/

namespace A178404.P1803402636439400452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257295 (A178359 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178404.P1803402636439400452

namespace A178404

/-- `eq[A010888(n), A257295(A178359(n))]` -/
def P1803402636439400452.Spec : Prop :=
  ∀ n, (P1803402636439400452.a n : ℤ) = A178404 (n + 1)

end A178404

/-!
# A178405: Numbers such that the rounded up arithmetic mean of their digits differs from their digital root.

The programs for A178405, there is no canonical definition to state claims against.
-/

/-! ## A178405.P14947077917343264837

`or(11, A221169(n))+n`
-/

namespace A178405.P14947077917343264837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 11 (A221169 n) + (n : ℤ)

end

end A178405.P14947077917343264837

/-! ## A178405.P5303046644716958076

`or(11, A225654(n))+n`
-/

namespace A178405.P5303046644716958076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 11 (A225654 n) + (n : ℤ)

end

end A178405.P5303046644716958076

/-! ## A178405.P4422279891900873717

`or(11, A309766(n))+n`
-/

namespace A178405.P4422279891900873717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 11 (A309766 n) + (n : ℤ)

end

end A178405.P4422279891900873717

/-! ## A178405.P16149503360717539093

`or(11, A309768(n))+n`
-/

namespace A178405.P16149503360717539093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 11 (A309768 n) + (n : ℤ)

end

end A178405.P16149503360717539093

/-! ## A178405.P6278852763551792039

`A115408(A115409(n+4))+7`
-/

namespace A178405.P6278852763551792039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115408 (A115409 (n + 4)).toNat + 7

end

end A178405.P6278852763551792039

/-! ## A178405.P1831118156291062117

`A038371(A007528(n+1))+n`
-/

namespace A178405.P1831118156291062117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038371 (A007528 (n + 1)).toNat + (n : ℤ)

end

end A178405.P1831118156291062117

/-! ## A178405.P10197963407527476087

`18-(or(7, A392369(n))-n)`
-/

namespace A178405.P10197963407527476087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 - (Int.lor 7 (A392369 n) - (n : ℤ))

end

end A178405.P10197963407527476087

/-! ## A178405.P16127700688203618412

`A060386(A282326(n+1))+n`
-/

namespace A178405.P16127700688203618412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060386 (A282326 (n + 1)).toNat + (n : ℤ)

end

end A178405.P16127700688203618412

/-! ## A178405.P3940834583357607250

`A020639(26*n²+2)+n+9`
-/

namespace A178405.P3940834583357607250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (26 * n ^ 2 + 2) + (n : ℤ) + 9

end

end A178405.P3940834583357607250

/-!
# A178407: a(n+1) = a(n)*1000 + 101^n with a(0) = 0.

The programs for A178407, the canonical program `A178407.P2230071448361375185` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178407 has offset 0).

The definition of A178407 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178407.P2230071448361375185

`1000*a(n-1)+101^(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A178407

/-- `1000*a(n-1)+101^(n-1)` -/
def P2230071448361375185.Spec : Prop :=
  ∀ n, P2230071448361375185.a n = (A178407 n : ℚ)

end A178407

/-!
# A178408: Triangle T(n,k) read by rows. Each column is the Mobius function "recurrence" with the previous column as input.

The programs for A178408, there is no canonical definition to state claims against.
-/

/-! ## A178408.P8848217881867144987

`A353348(∑[record[A120649(n)]])`
-/

namespace A178408.P8848217881867144987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120649 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353348 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A178408.P8848217881867144987

/-! ## A178408.P17860210857245035414

`A280665(A141542(n+1)+4*n)`
-/

namespace A178408.P17860210857245035414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280665 (A141542 (n + 1) + (4 * n : ℤ)).toNat

end

end A178408.P17860210857245035414

/-! ## A178408.P12402652629381177809

`A214505(A008585(n)^A191312(n))`
-/

namespace A178408.P12402652629381177809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 (SequenceMachineLib.roundAway ((A008585 n : ℚ) ^ (A191312 n : ℤ))).toNat

end

end A178408.P12402652629381177809

/-! ## A178408.P13161318691663509266

`A080891(lcm(A084938(n), A292906(n+1)))`
-/

namespace A178408.P13161318691663509266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 (Int.lcm (A084938 n) (A292906 (n + 1)))

end

end A178408.P13161318691663509266

/-! ## A178408.P3767063911285466875

`A359591(A359629(n+1)+A359619(n+1))`
-/

namespace A178408.P3767063911285466875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359591 (A359629 (n + 1) + A359619 (n + 1)).toNat

end

end A178408.P3767063911285466875

/-!
# A178409: Number of ways to place 6 nonattacking wazirs on an n X n board.

The programs for A178409, there is no canonical definition to state claims against.
-/

/-! ## A178409.P2046754829262787399

`xor(11, 11^A260755(n+1))`
-/

namespace A178409.P2046754829262787399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 11 (SequenceMachineLib.roundAway ((11 : ℚ) ^ (A260755 (n + 1) : ℤ)))

end

end A178409.P2046754829262787399

/-!
# A178411: a(1)=2, a(2)=1; for n>=3, a(n) is defined by recursion: Sum_{d|n}((-1)^(n/d))*a(d) = -1.

The programs for A178411, the canonical program `A178411.P2790653243536418880` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178411 has offset 1).

The definition of A178411 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178411.P2790653243536418880

`A008683(n+1)+Δ[or(n, a(n-1))]` with `a(0)=0`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A178411

/-- `A008683(n+1)+Δ[or(n, a(n-1))]` -/
def P2790653243536418880.Spec : Prop :=
  ∀ n, P2790653243536418880.a n = A178411 (n + 1)

theorem P2790653243536418880.correct : P2790653243536418880.Spec := by
  intro n
  simp only [A178411, Nat.add_sub_cancel]

end A178411

/-! ## A178411.P12479949940544188708

`A099894(n)+A008683(n+1)`
-/

namespace A178411.P12479949940544188708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 n + A008683 (n + 1)

end

end A178411.P12479949940544188708

namespace A178411

/-- `A099894(n)+A008683(n+1)` -/
def P12479949940544188708.Spec : Prop :=
  ∀ n, P12479949940544188708.a n = A178411 (n + 1)

end A178411

/-! ## A178411.P11521567897470167683

`A008683(n+1)+Δ[A003817(n)]`
-/

namespace A178411.P11521567897470167683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + (f1 (n + 1) - f1 n)

end

end A178411.P11521567897470167683

namespace A178411

/-- `A008683(n+1)+Δ[A003817(n)]` -/
def P11521567897470167683.Spec : Prop :=
  ∀ n, P11521567897470167683.a n = A178411 (n + 1)

end A178411

/-! ## A178411.P4068755727120592237

`A048298(n+1)+A008683(n+1)`
-/

namespace A178411.P4068755727120592237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 (n + 1) + A008683 (n + 1)

end

end A178411.P4068755727120592237

namespace A178411

/-- `A048298(n+1)+A008683(n+1)` -/
def P4068755727120592237.Spec : Prop :=
  ∀ n, P4068755727120592237.a n = A178411 (n + 1)

end A178411

/-! ## A178411.P12142732666088686007

`A135416(2*n+1)+A008683(n+1)`
-/

namespace A178411.P12142732666088686007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135416 (2 * n + 1) + A008683 (n + 1)

end

end A178411.P12142732666088686007

namespace A178411

/-- `A135416(2*n+1)+A008683(n+1)` -/
def P12142732666088686007.Spec : Prop :=
  ∀ n, P12142732666088686007.a n = A178411 (n + 1)

end A178411

/-! ## A178411.P2899593059340139170

`A349394(2*(n+1))+A008683(n+1)`
-/

namespace A178411.P2899593059340139170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349394 (2 * (n + 1)) + A008683 (n + 1)

end

end A178411.P2899593059340139170

namespace A178411

/-- `A349394(2*(n+1))+A008683(n+1)` -/
def P2899593059340139170.Spec : Prop :=
  ∀ n, P2899593059340139170.a n = A178411 (n + 1)

end A178411

/-! ## A178411.P38982276065526572

`A008683(n+1)+(n+1)*A209229(n+1)`
-/

namespace A178411.P38982276065526572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + (n + 1 : ℤ) * A209229 (n + 1)

end

end A178411.P38982276065526572

namespace A178411

/-- `A008683(n+1)+(n+1)*A209229(n+1)` -/
def P38982276065526572.Spec : Prop :=
  ∀ n, P38982276065526572.a n = A178411 (n + 1)

end A178411

/-! ## A178411.P14843494926855347438

`A008683(n+1)-(n+1)*A008683(A001316(n+1))`
-/

namespace A178411.P14843494926855347438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) - (n + 1 : ℤ) * A008683 (A001316 (n + 1)).toNat

end

end A178411.P14843494926855347438

namespace A178411

/-- `A008683(n+1)-(n+1)*A008683(A001316(n+1))` -/
def P14843494926855347438.Spec : Prop :=
  ∀ n, P14843494926855347438.a n = A178411 (n + 1)

end A178411

/-! ## A178411.P2176057979829441771

`A008683(n+1)+Δ[A062383(n)]`
-/

namespace A178411.P2176057979829441771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + (f1 (n + 1) - f1 n)

end

end A178411.P2176057979829441771

namespace A178411

/-- `A008683(n+1)+Δ[A062383(n)]` -/
def P2176057979829441771.Spec : Prop :=
  ∀ n, P2176057979829441771.a n = A178411 (n + 1)

end A178411

/-! ## A178411.P12763108988094100164

`A008683(n+1)+A062383(n+1)-A062383(n)`
-/

namespace A178411.P12763108988094100164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + (A062383 (n + 1) - A062383 n)

end

end A178411.P12763108988094100164

namespace A178411

/-- `A008683(n+1)+A062383(n+1)-A062383(n)` -/
def P12763108988094100164.Spec : Prop :=
  ∀ n, P12763108988094100164.a n = A178411 (n + 1)

end A178411

/-! ## A178411.P4667351479882065698

`Δ[a(n-1)*A014963(2*n)]+A008683(n+1)` with `a(0)=1`
-/

namespace A178411.P4667351479882065698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) * A014963 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A008683 (n + 1)

end

end A178411.P4667351479882065698

namespace A178411

/-- `Δ[a(n-1)*A014963(2*n)]+A008683(n+1)` -/
def P4667351479882065698.Spec : Prop :=
  ∀ n, P4667351479882065698.a n = A178411 (n + 1)

end A178411

/-! ## A178411.P8654835996698469443

`A167345(A003959(n+1))+A008683(n+1)`
-/

namespace A178411.P8654835996698469443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167345 (A003959 (n + 1)).toNat + A008683 (n + 1)

end

end A178411.P8654835996698469443

namespace A178411

/-- `A167345(A003959(n+1))+A008683(n+1)` -/
def P8654835996698469443.Spec : Prop :=
  ∀ n, P8654835996698469443.a n = A178411 (n + 1)

end A178411

/-!
# A178413: Numbers k such that the product of decimal digits of k divides k+1.

The programs for A178413, the canonical program `A178413.P660033189277865224` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178413 has offset 1).

The definition of A178413 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178413.P660033189277865224

`eq[n+1, lcm(n+1, A187844(n))]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A178413

/-- `eq[n+1, lcm(n+1, A187844(n))]` -/
def P660033189277865224.Spec : Prop :=
  ∀ n, (P660033189277865224.a n : ℤ) = A178413 (n + 1)

theorem P660033189277865224.correct : P660033189277865224.Spec := by
  intro n
  simp only [A178413, Nat.add_sub_cancel]

end A178413

/-! ## A178413.P6814733809933033716

`eq[gcd(n+1, A007954(n)), A007954(n)]`
-/

namespace A178413.P6814733809933033716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A007954 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178413.P6814733809933033716

namespace A178413

/-- `eq[gcd(n+1, A007954(n)), A007954(n)]` -/
def P6814733809933033716.Spec : Prop :=
  ∀ n, (P6814733809933033716.a n : ℤ) = A178413 (n + 1)

end A178413

/-! ## A178413.P1296445167762312961

`lt[(n+1)%A051801(n), A168046(n)]`
-/

namespace A178413.P1296445167762312961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A051801 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A178413.P1296445167762312961

namespace A178413

/-- `lt[(n+1)%A051801(n), A168046(n)]` -/
def P1296445167762312961.Spec : Prop :=
  ∀ n, (P1296445167762312961.a n : ℤ) = A178413 (n + 1)

end A178413

/-!
# A178414: Least odd number in the Collatz (3x+1) preimage of odd numbers not a multiple of 3.

The programs for A178414, the canonical program `A178414.P4340814171544190004` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178414 has offset 1).

The definition of A178414 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178414.P4340814171544190004

`n*(3-(-1)^(n+1))+1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A178414

/-- `n*(3-(-1)^(n+1))+1` -/
def P4340814171544190004.Spec : Prop :=
  ∀ n, P4340814171544190004.a n = A178414 (n + 1)

theorem P4340814171544190004.correct : P4340814171544190004.Spec := by
  intro n
  simp only [A178414, Nat.add_sub_cancel]

end A178414

/-! ## A178414.P15804824412308960145

`or(1, n*gcd(4, 2*n))`
-/

namespace A178414.P15804824412308960145
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n * Nat.gcd 4 (2 * n))

end

end A178414.P15804824412308960145

namespace A178414

/-- `or(1, n*gcd(4, 2*n))` -/
def P15804824412308960145.Spec : Prop :=
  ∀ n, (P15804824412308960145.a n : ℤ) = A178414 (n + 1)

end A178414

/-! ## A178414.P18043861739946498000

`(2*lcm(n+1, 2*n)+n+1)/(n+1)`
-/

namespace A178414.P18043861739946498000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lcm (n + 1) (2 * n) + (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A178414.P18043861739946498000

namespace A178414

/-- `(2*lcm(n+1, 2*n)+n+1)/(n+1)` -/
def P18043861739946498000.Spec : Prop :=
  ∀ n, P18043861739946498000.a n = (A178414 (n + 1) : ℚ)

end A178414

/-! ## A178414.P2190528375191313860

`or(1, 2*A022998(n))`
-/

namespace A178414.P2190528375191313860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * A022998 n)

end

end A178414.P2190528375191313860

namespace A178414

/-- `or(1, 2*A022998(n))` -/
def P2190528375191313860.Spec : Prop :=
  ∀ n, P2190528375191313860.a n = A178414 (n + 1)

end A178414

/-! ## A178414.P1097091395085297526

`lcm(2, A047452(n+1))/2`
-/

namespace A178414.P1097091395085297526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A047452 (n + 1)) : ℚ) / 2

end

end A178414.P1097091395085297526

namespace A178414

/-- `lcm(2, A047452(n+1))/2` -/
def P1097091395085297526.Spec : Prop :=
  ∀ n, P1097091395085297526.a n = (A178414 (n + 1) : ℚ)

end A178414

/-! ## A178414.P15224751166528400960

`A000265(A047452(n+1))`
-/

namespace A178414.P15224751166528400960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A047452 (n + 1)).toNat

end

end A178414.P15224751166528400960

namespace A178414

/-- `A000265(A047452(n+1))` -/
def P15224751166528400960.Spec : Prop :=
  ∀ n, P15224751166528400960.a n = A178414 (n + 1)

end A178414

/-! ## A178414.P15200936785265186156

`A016825(A022998(n))/2`
-/

namespace A178414.P15200936785265186156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016825 (A022998 n).toNat : ℚ) / 2

end

end A178414.P15200936785265186156

namespace A178414

/-- `A016825(A022998(n))/2` -/
def P15200936785265186156.Spec : Prop :=
  ∀ n, P15200936785265186156.a n = (A178414 (n + 1) : ℚ)

end A178414

/-! ## A178414.P8707102852538263381

`A239325(n)%A295821(n)`
-/

namespace A178414.P8707102852538263381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239325 n) (A295821 n)

end

end A178414.P8707102852538263381

namespace A178414

/-- `A239325(n)%A295821(n)` -/
def P8707102852538263381.Spec : Prop :=
  ∀ n, P8707102852538263381.a n = A178414 (n + 1)

end A178414

/-! ## A178414.P15736340488021241152

`round(A016813(n)/A000034(n))`
-/

namespace A178414.P15736340488021241152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016813 n : ℚ) / (A000034 n : ℚ))

end

end A178414.P15736340488021241152

namespace A178414

/-- `round(A016813(n)/A000034(n))` -/
def P15736340488021241152.Spec : Prop :=
  ∀ n, P15736340488021241152.a n = A178414 (n + 1)

end A178414

/-! ## A178414.P1944648556961546717

`A000265(A007310(n+1)+n)`
-/

namespace A178414.P1944648556961546717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A007310 (n + 1) + (n : ℤ)).toNat

end

end A178414.P1944648556961546717

namespace A178414

/-- `A000265(A007310(n+1)+n)` -/
def P1944648556961546717.Spec : Prop :=
  ∀ n, P1944648556961546717.a n = A178414 (n + 1)

end A178414

/-! ## A178414.P7372334550289416627

`A047452(n+1)/A000034(n)`
-/

namespace A178414.P7372334550289416627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047452 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A178414.P7372334550289416627

namespace A178414

/-- `A047452(n+1)/A000034(n)` -/
def P7372334550289416627.Spec : Prop :=
  ∀ n, P7372334550289416627.a n = (A178414 (n + 1) : ℚ)

end A178414

/-! ## A178414.P15079689640930673728

`A330987(n+1)/A093178(n)`
-/

namespace A178414.P15079689640930673728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330987 (n + 1) : ℚ) / (A093178 n : ℚ)

end

end A178414.P15079689640930673728

namespace A178414

/-- `A330987(n+1)/A093178(n)` -/
def P15079689640930673728.Spec : Prop :=
  ∀ n, P15079689640930673728.a n = (A178414 (n + 1) : ℚ)

end A178414

/-! ## A178414.P6252728217584278578

`A330983(n+1)/A266303(n)`
-/

namespace A178414.P6252728217584278578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330983 (n + 1) : ℚ) / (A266303 n : ℚ)

end

end A178414.P6252728217584278578

namespace A178414

/-- `A330983(n+1)/A266303(n)` -/
def P6252728217584278578.Spec : Prop :=
  ∀ n, P6252728217584278578.a n = (A178414 (n + 1) : ℚ)

end A178414

/-! ## A178414.P287904328772523656

`A015223(n)%A047398(n+1)`
-/

namespace A178414.P287904328772523656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015223 n) (A047398 (n + 1))

end

end A178414.P287904328772523656

namespace A178414

/-- `A015223(n)%A047398(n+1)` -/
def P287904328772523656.Spec : Prop :=
  ∀ n, P287904328772523656.a n = A178414 (n + 1)

end A178414

/-! ## A178414.P6857594206373197979

`A078371(n)%A047406(n+1)`
-/

namespace A178414.P6857594206373197979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078371 n) (A047406 (n + 1))

end

end A178414.P6857594206373197979

namespace A178414

/-- `A078371(n)%A047406(n+1)` -/
def P6857594206373197979.Spec : Prop :=
  ∀ n, P6857594206373197979.a n = A178414 (n + 1)

end A178414

/-! ## A178414.P10001955455269007576

`A082108(n)%A047463(n+1)`
-/

namespace A178414.P10001955455269007576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082108 n) (A047463 (n + 1))

end

end A178414.P10001955455269007576

namespace A178414

/-- `A082108(n)%A047463(n+1)` -/
def P10001955455269007576.Spec : Prop :=
  ∀ n, P10001955455269007576.a n = A178414 (n + 1)

end A178414

/-! ## A178414.P11795264636203603625

`A028993(n)%A134965(n+1)`
-/

namespace A178414.P11795264636203603625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028993 n) (A134965 (n + 1))

end

end A178414.P11795264636203603625

namespace A178414

/-- `A028993(n)%A134965(n+1)` -/
def P11795264636203603625.Spec : Prop :=
  ∀ n, P11795264636203603625.a n = A178414 (n + 1)

end A178414

/-! ## A178414.P6289391605506394519

`A047522(n+1)%A147601(n)`
-/

namespace A178414.P6289391605506394519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047522 (n + 1)) (A147601 n)

end

end A178414.P6289391605506394519

namespace A178414

/-- `A047522(n+1)%A147601(n)` -/
def P6289391605506394519.Spec : Prop :=
  ∀ n, P6289391605506394519.a n = A178414 (n + 1)

end A178414

/-! ## A178414.P4363173824849044549

`A176711(n)%A047406(n+1)`
-/

namespace A178414.P4363173824849044549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176711 n) (A047406 (n + 1))

end

end A178414.P4363173824849044549

namespace A178414

/-- `A176711(n)%A047406(n+1)` -/
def P4363173824849044549.Spec : Prop :=
  ∀ n, P4363173824849044549.a n = A178414 (n + 1)

end A178414

/-! ## A178414.P12720350581223240772

`A280059(n)%A047406(n+1)`
-/

namespace A178414.P12720350581223240772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280059 n) (A047406 (n + 1))

end

end A178414.P12720350581223240772

namespace A178414

/-- `A280059(n)%A047406(n+1)` -/
def P12720350581223240772.Spec : Prop :=
  ∀ n, P12720350581223240772.a n = A178414 (n + 1)

end A178414

/-!
# A178416: Primes p such that q*p +- (p mod q) are primes, for q=8.

The programs for A178416, the canonical program `A178416.P16741439439157742518` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178416 has offset 1).

The definition of A178416 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 321 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178416.P10695303701442694228

`∩[A164570(n+1), A332446(n+1)]`
-/

namespace A178416.P10695303701442694228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178416.P10695303701442694228

namespace A178416

/-- `∩[A164570(n+1), A332446(n+1)]` -/
def P10695303701442694228.Spec : Prop :=
  ∀ n, (P10695303701442694228.a n : ℤ) = A178416 (n + 1)

end A178416

/-! ## A178416.P16741439439157742518

`∩[A007520(n+1), A164570(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A178416

/-- `∩[A007520(n+1), A164570(n+1)]` -/
def P16741439439157742518.Spec : Prop :=
  ∀ n, (P16741439439157742518.a n : ℤ) = A178416 (n + 1)

theorem P16741439439157742518.correct : P16741439439157742518.Spec := by
  intro n
  simp only [A178416, Nat.add_sub_cancel]

end A178416

/-! ## A178416.P6235501887817227570

`∩[A164570(n+1), A192717(n+1)]`
-/

namespace A178416.P6235501887817227570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178416.P6235501887817227570

namespace A178416

/-- `∩[A164570(n+1), A192717(n+1)]` -/
def P6235501887817227570.Spec : Prop :=
  ∀ n, (P6235501887817227570.a n : ℤ) = A178416 (n + 1)

end A178416

/-! ## A178416.P4610963099345046275

`∩[A004626(n+1), A164570(n+1)]`
-/

namespace A178416.P4610963099345046275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178416.P4610963099345046275

namespace A178416

/-- `∩[A004626(n+1), A164570(n+1)]` -/
def P4610963099345046275.Spec : Prop :=
  ∀ n, (P4610963099345046275.a n : ℤ) = A178416 (n + 1)

end A178416

/-! ## A178416.P17169832123351040890

`∩[A164570(n+1), A004769(n)]`
-/

namespace A178416.P17169832123351040890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004769 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178416.P17169832123351040890

namespace A178416

/-- `∩[A164570(n+1), A004769(n)]` -/
def P17169832123351040890.Spec : Prop :=
  ∀ n, (P17169832123351040890.a n : ℤ) = A178416 (n + 1)

end A178416

/-!
# A178417: A (-1,1) Somos-4 sequence associated to the elliptic curve y^2 + x*y + y = x^3 + x^2 + x.

The programs for A178417, there is no canonical definition to state claims against.
-/

/-! ## A178417.P13361146126898072912

`A033999(A004526(n))*A178628(n+1)`
-/

namespace A178417.P13361146126898072912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A004526 n).toNat * A178628 (n + 1)

end

end A178417.P13361146126898072912

/-! ## A178417.P2642358654342934430

`A066170(A000096(n))*A178628(n+1)`
-/

namespace A178417.P2642358654342934430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066170 (A000096 n).toNat * A178628 (n + 1)

end

end A178417.P2642358654342934430

/-! ## A178417.P8466994592325605675

`A033999(A071045(n))*A178628(n+1)`
-/

namespace A178417.P8466994592325605675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A071045 n).toNat * A178628 (n + 1)

end

end A178417.P8466994592325605675

/-! ## A178417.P7231972040525823212

`A178628(n+1)/A033999(A004526(n)²)`
-/

namespace A178417.P7231972040525823212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178628 (n + 1) : ℚ) / (A033999 (A004526 n ^ 2).toNat : ℚ)

end

end A178417.P7231972040525823212

/-! ## A178417.P14357444166373158573

`A178628(n+1)/A033999(A071045(n)²)`
-/

namespace A178417.P14357444166373158573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178628 (n + 1) : ℚ) / (A033999 (A071045 n ^ 2).toNat : ℚ)

end

end A178417.P14357444166373158573

/-!
# A178418: A (-1, 2) Somos-4 sequence associated to the elliptic curve y^2 + 2*x*y + y = x^3 + x^2 + x.

The programs for A178418, there is no canonical definition to state claims against.
-/

/-! ## A178418.P16193313980854898717

`or(A037861(A035603(n)), A112738(n))`
-/

namespace A178418.P16193313980854898717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037861 (A035603 n).toNat) (A112738 n)

end

end A178418.P16193313980854898717

/-! ## A178418.P12256248716271089186

`A051776(A000372(n))-A339615(n+1)`
-/

namespace A178418.P12256248716271089186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051776 (A000372 n).toNat - A339615 (n + 1)

end

end A178418.P12256248716271089186

/-!
# A178419: Partial sums of A006431.

The programs for A178419, there is no canonical definition to state claims against.
-/

/-! ## A178419.P12847387086269977926

`∑[A006431(n+1)]`
-/

namespace A178419.P12847387086269977926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006431 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178419.P12847387086269977926

/-! ## A178419.P5961416976611816940

`∑[record[A006431(A065648(n))]]`
-/

namespace A178419.P5961416976611816940
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006431 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178419.P5961416976611816940

/-! ## A178419.P8977459119134469817

`∑[record[A006431(A126759(n))]]`
-/

namespace A178419.P8977459119134469817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006431 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178419.P8977459119134469817

/-! ## A178419.P11853844757897814286

`∑[record[A006431(A158416(n))]]`
-/

namespace A178419.P11853844757897814286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006431 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178419.P11853844757897814286

/-! ## A178419.P8474410304889342106

`∑[record[A006431(A263274(n))]]`
-/

namespace A178419.P8474410304889342106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006431 (A263274 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178419.P8474410304889342106

/-! ## A178419.P8962718277782881748

`∑[record[A006431(A291769(n))]]`
-/

namespace A178419.P8962718277782881748
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006431 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178419.P8962718277782881748

/-! ## A178419.P14966888721676128906

`∑[record[A006431(A137735(n))]]`
-/

namespace A178419.P14966888721676128906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006431 (A137735 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178419.P14966888721676128906

/-!
# A178420: Partial sums of floor(2^n/3).

The programs for A178420, the canonical program `A178420.P7602694337988345218` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178420 has offset 1).

The definition of A178420 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178420.P7602694337988345218

`a(n-2)+2^n-1` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A178420

/-- `a(n-2)+2^n-1` -/
def P7602694337988345218.Spec : Prop :=
  ∀ n, P7602694337988345218.a n = A178420 (n + 1)

theorem P7602694337988345218.correct : P7602694337988345218.Spec := by
  intro n
  simp only [A178420, Nat.add_sub_cancel]

end A178420

/-! ## A178420.P16308976994165278162

`2*a(n-1)+floor((n+1)/2)` with `a(0)=0`
-/

namespace A178420.P16308976994165278162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) + ⌊(n + 1 : ℚ) / 2⌋

end

end A178420.P16308976994165278162

namespace A178420

/-- `2*a(n-1)+floor((n+1)/2)` -/
def P16308976994165278162.Spec : Prop :=
  ∀ n, P16308976994165278162.a n = A178420 (n + 1)

end A178420

/-! ## A178420.P13360417997131729478

`floor(2^(n+2)/3)-floor((n+2)/2)`
-/

namespace A178420.P13360417997131729478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ (n + 2) : ℚ) / 3⌋ - ⌊(n + 2 : ℚ) / 2⌋

end

end A178420.P13360417997131729478

namespace A178420

/-- `floor(2^(n+2)/3)-floor((n+2)/2)` -/
def P13360417997131729478.Spec : Prop :=
  ∀ n, P13360417997131729478.a n = A178420 (n + 1)

end A178420

/-! ## A178420.P8029459150458677684

`ogf(x/(1-3x+x^2+3x^3-2x^4))`
-/

namespace A178420.P8029459150458677684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -3, 1, 3, -2] n

end

end A178420.P8029459150458677684

namespace A178420

/-- `ogf(x/(1-3x+x^2+3x^3-2x^4))` -/
def P8029459150458677684.Spec : Prop :=
  ∀ n, P8029459150458677684.a n = A178420 (n + 1)

end A178420

/-! ## A178420.P834203888285240851

`floor(∑[n]/n+2*a(n-1))` with `a(0)=0`
-/

namespace A178420.P834203888285240851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n : ℚ) + (2 * a (n - 1) : ℚ)⌋

end

end A178420.P834203888285240851

namespace A178420

/-- `floor(∑[n]/n+2*a(n-1))` -/
def P834203888285240851.Spec : Prop :=
  ∀ n, P834203888285240851.a n = A178420 (n + 1)

end A178420

/-! ## A178420.P6707152078349006828

`∑[∑[2*a(n-1)]-a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A178420.P6707152078349006828
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178420.P6707152078349006828

namespace A178420

/-- `∑[∑[2*a(n-1)]-a(n-1)]` -/
def P6707152078349006828.Spec : Prop :=
  ∀ n, P6707152078349006828.a n = A178420 (n + 1)

end A178420

/-! ## A178420.P4886314673535741126

`floor(a(n-1)+a(n-1)+∑[n]/n)` with `a(0)=0`
-/

namespace A178420.P4886314673535741126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) + ((a (n - 1) : ℚ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n : ℚ))⌋

end

end A178420.P4886314673535741126

namespace A178420

/-- `floor(a(n-1)+a(n-1)+∑[n]/n)` -/
def P4886314673535741126.Spec : Prop :=
  ∀ n, P4886314673535741126.a n = A178420 (n + 1)

end A178420

/-! ## A178420.P5044438106996139188

`∑[A000975(n)]`
-/

namespace A178420.P5044438106996139188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178420.P5044438106996139188

namespace A178420

/-- `∑[A000975(n)]` -/
def P5044438106996139188.Spec : Prop :=
  ∀ n, P5044438106996139188.a n = A178420 (n + 1)

end A178420

/-! ## A178420.P14432648162211515336

`∑[∑[A001045(n)]]`
-/

namespace A178420.P14432648162211515336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178420.P14432648162211515336

namespace A178420

/-- `∑[∑[A001045(n)]]` -/
def P14432648162211515336.Spec : Prop :=
  ∀ n, P14432648162211515336.a n = A178420 (n + 1)

end A178420

/-! ## A178420.P33746018231680159

`∑[∑[A328284(n+3)]]`
-/

namespace A178420.P33746018231680159
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328284 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178420.P33746018231680159

namespace A178420

/-- `∑[∑[A328284(n+3)]]` -/
def P33746018231680159.Spec : Prop :=
  ∀ n, P33746018231680159.a n = A178420 (n + 1)

end A178420

/-! ## A178420.P13455990302098974187

`∑[∑[A133684(2*n)]]`
-/

namespace A178420.P13455990302098974187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178420.P13455990302098974187

namespace A178420

/-- `∑[∑[A133684(2*n)]]` -/
def P13455990302098974187.Spec : Prop :=
  ∀ n, P13455990302098974187.a n = A178420 (n + 1)

end A178420

/-! ## A178420.P529723189603289611

`∑[A005578(n+1)-1]`
-/

namespace A178420.P529723189603289611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178420.P529723189603289611

namespace A178420

/-- `∑[A005578(n+1)-1]` -/
def P529723189603289611.Spec : Prop :=
  ∀ n, P529723189603289611.a n = A178420 (n + 1)

end A178420

/-! ## A178420.P15670759124515376756

`∑[A141023(n+1)/3]`
-/

namespace A178420.P15670759124515376756
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141023 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178420.P15670759124515376756

namespace A178420

/-- `∑[A141023(n+1)/3]` -/
def P15670759124515376756.Spec : Prop :=
  ∀ n, P15670759124515376756.a n = (A178420 (n + 1) : ℚ)

end A178420

/-! ## A178420.P9996172409102569275

`∑[∑[A133730(2*n+1)]]`
-/

namespace A178420.P9996172409102569275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133730 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178420.P9996172409102569275

namespace A178420

/-- `∑[∑[A133730(2*n+1)]]` -/
def P9996172409102569275.Spec : Prop :=
  ∀ n, P9996172409102569275.a n = A178420 (n + 1)

end A178420

/-! ## A178420.P3840054218140327414

`∑[A340849(n+1)-(n+1)]`
-/

namespace A178420.P3840054218140327414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340849 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178420.P3840054218140327414

namespace A178420

/-- `∑[A340849(n+1)-(n+1)]` -/
def P3840054218140327414.Spec : Prop :=
  ∀ n, P3840054218140327414.a n = A178420 (n + 1)

end A178420

/-! ## A178420.P4262383351698078614

`xor(A086445(n), A126646(n))`
-/

namespace A178420.P4262383351698078614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A086445 n) (A126646 n)

end

end A178420.P4262383351698078614

namespace A178420

/-- `xor(A086445(n), A126646(n))` -/
def P4262383351698078614.Spec : Prop :=
  ∀ n, P4262383351698078614.a n = A178420 (n + 1)

end A178420

/-! ## A178420.P3302489343175604276

`Δ[A272144(n)]`
-/

namespace A178420.P3302489343175604276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178420.P3302489343175604276

namespace A178420

/-- `Δ[A272144(n)]` -/
def P3302489343175604276.Spec : Prop :=
  ∀ n, P3302489343175604276.a n = A178420 (n + 1)

end A178420

/-! ## A178420.P5956179660129906783

`(A026646(n)-1)/2`
-/

namespace A178420.P5956179660129906783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026646 n - 1 : ℚ) / 2

end

end A178420.P5956179660129906783

namespace A178420

/-- `(A026646(n)-1)/2` -/
def P5956179660129906783.Spec : Prop :=
  ∀ n, P5956179660129906783.a n = (A178420 (n + 1) : ℚ)

end A178420

/-! ## A178420.P16054536732985424502

`A257198(n+2)/2`
-/

namespace A178420.P16054536732985424502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257198 (n + 2) : ℚ) / 2

end

end A178420.P16054536732985424502

namespace A178420

/-- `A257198(n+2)/2` -/
def P16054536732985424502.Spec : Prop :=
  ∀ n, P16054536732985424502.a n = (A178420 (n + 1) : ℚ)

end A178420

/-! ## A178420.P911841850992265844

`(A084639(n+1)-(n+1))/2`
-/

namespace A178420.P911841850992265844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084639 (n + 1) - (n + 1 : ℤ) : ℚ) / 2

end

end A178420.P911841850992265844

namespace A178420

/-- `(A084639(n+1)-(n+1))/2` -/
def P911841850992265844.Spec : Prop :=
  ∀ n, P911841850992265844.a n = (A178420 (n + 1) : ℚ)

end A178420

/-!
# A178421: Lower primes p1 in a twin pair such that sum of p1 and p2 yields average a1 of twin prime pairs and product of 2*a1 is another average of twin prime pairs.

The programs for A178421, there is no canonical definition to state claims against.
-/

/-! ## A178421.P1375016790844530030

`A069175(n+1)-1`
-/

namespace A178421.P1375016790844530030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069175 (n + 1) - 1

end

end A178421.P1375016790844530030

/-! ## A178421.P1168984114542110807

`A134824(n+2)+A069175(n+1)`
-/

namespace A178421.P1168984114542110807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A069175 (n + 1)

end

end A178421.P1168984114542110807

/-! ## A178421.P17758543384370722703

`A153881(n+2)+A069175(n+1)`
-/

namespace A178421.P17758543384370722703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A069175 (n + 1)

end

end A178421.P17758543384370722703

/-! ## A178421.P11653107825237794740

`A260196(n+2)+A069175(n+1)`
-/

namespace A178421.P11653107825237794740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A069175 (n + 1)

end

end A178421.P11653107825237794740

/-! ## A178421.P2102880574335957542

`A300547(Δ[n²])+A069175(n+1)`
-/

namespace A178421.P2102880574335957542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300547 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A069175 (n + 1)

end

end A178421.P2102880574335957542

/-!
# A178423: Semiprimes for which dropping any digit gives a prime number.

The programs for A178423, there is no canonical definition to state claims against.
-/

/-! ## A178423.P13965014484965619747

`filter[A034895(n+1), A064911(#)]`
-/

namespace A178423.P13965014484965619747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A178423.P13965014484965619747

/-! ## A178423.P9851881766320413904

`record[A179312(A034895(n+1))]`
-/

namespace A178423.P9851881766320413904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (A034895 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178423.P9851881766320413904

/-! ## A178423.P11925645659039458308

`∩[A034304(n+1), A103607(n+1)]`
-/

namespace A178423.P11925645659039458308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178423.P11925645659039458308

/-! ## A178423.P14428414126125664886

`∩[A034304(n+1), A108793(n+1)]`
-/

namespace A178423.P14428414126125664886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178423.P14428414126125664886

/-! ## A178423.P589776016616150653

`∩[A034304(n+1), A131457(n+1)]`
-/

namespace A178423.P589776016616150653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178423.P589776016616150653

/-!
# A178425: 29 followed by the base-30 Fermat numbers.

The programs for A178425, the canonical program `A178425.P14609839428999425935` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178425 has offset 0).

The definition of A178425 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178425.P14609839428999425935

`1+(a(n-1)-1)²` with `a(0)=29, a(1)=31`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A178425

/-- `1+(a(n-1)-1)²` -/
def P14609839428999425935.Spec : Prop :=
  ∀ n, P14609839428999425935.a n = A178425 n

theorem P14609839428999425935.correct : P14609839428999425935.Spec := by
  intro n
  simp only [A178425]

end A178425

/-!
# A178426: 11 followed by the Fermat numbers A152585.

The programs for A178426, there is no canonical definition to state claims against.
-/

/-! ## A178426.P12200629373809253852

`ratio[or(10, (a(n-1)+1)²-3)]` with `a(0)=1`
-/

namespace A178426.P12200629373809253852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.lor 10 ((f1 (n - 1) + 1) ^ 2 - 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A178426.P12200629373809253852

/-! ## A178426.P8136746382734626594

`A019330(2^n)`
-/

namespace A178426.P8136746382734626594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019330 (2 ^ n)

end

end A178426.P8136746382734626594

/-!
# A178427: 7 followed by the Fermat numbers A152581.

The programs for A178427, there is no canonical definition to state claims against.
-/

/-! ## A178427.P1776310857702399462

`(1-a(n-1))²+1` with `a(0)=7, a(1)=9`
-/

namespace A178427.P1776310857702399462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 9] fun n a =>
  (1 - a (n - 1)) ^ 2 + 1

end

end A178427.P1776310857702399462

/-! ## A178427.P13248361832830567374

`A164640(2^n+1)+1`
-/

namespace A178427.P13248361832830567374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164640 (2 ^ n + 1) + 1

end

end A178427.P13248361832830567374

/-! ## A178427.P1042338175727195057

`A164073(lcm(3, 2^n)+1)+1`
-/

namespace A178427.P1042338175727195057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164073 (Nat.lcm 3 (2 ^ n) + 1) + 1

end

end A178427.P1042338175727195057

/-! ## A178427.P5367855420829617211

`A062395(ceil(2^(n-1)))-floor(acot(n)²)`
-/

namespace A178427.P5367855420829617211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062395 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat - ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋

end

end A178427.P5367855420829617211

/-!
# A178428: 5 followed by the generalized Fermat numbers 6^(2^n)+1 (A078303).

The programs for A178428, there is no canonical definition to state claims against.
-/

/-! ## A178428.P398161624034311356

`(1-a(n-1))²+1` with `a(0)=5, a(1)=7`
-/

namespace A178428.P398161624034311356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 7] fun n a =>
  (1 - a (n - 1)) ^ 2 + 1

end

end A178428.P398161624034311356

/-! ## A178428.P14617863826509969247

`(a(n-1)-2)*a(n-1)+2` with `a(0)=5, a(1)=7`
-/

namespace A178428.P14617863826509969247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 7] fun n a =>
  (a (n - 1) - 2) * a (n - 1) + 2

end

end A178428.P14617863826509969247

/-! ## A178428.P16683642805294252563

`2-(2-a(n-1))*a(n-1)` with `a(0)=5, a(1)=7`
-/

namespace A178428.P16683642805294252563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 7] fun n a =>
  2 - (2 - a (n - 1)) * a (n - 1)

end

end A178428.P16683642805294252563

/-! ## A178428.P16338502229643235746

`ratio[(a(n-1)+2)*a(n-1)]` with `a(0)=1, a(1)=5`
-/

namespace A178428.P16338502229643235746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  (f1 (n - 1) + 2) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A178428.P16338502229643235746

/-!
# A178431: Joint-rank array of the sums of two primes.

The programs for A178431, there is no canonical definition to state claims against.
-/

/-! ## A178431.P12067740764416622484

`A089723(A257621(n))+A002265(A093995(n+1))`
-/

namespace A178431.P12067740764416622484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (A257621 n).toNat + A002265 (A093995 (n + 1)).toNat

end

end A178431.P12067740764416622484

/-! ## A178431.P6076732160238204517

`A265690(A067804(n))`
-/

namespace A178431.P6076732160238204517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265690 (A067804 n).toNat

end

end A178431.P6076732160238204517

/-! ## A178431.P13940448354139885243

`A265690(A182411(n))`
-/

namespace A178431.P13940448354139885243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265690 (A182411 n).toNat

end

end A178431.P13940448354139885243

/-! ## A178431.P8136637126518511765

`A003056(n)+A000120(A067804(n)²)`
-/

namespace A178431.P8136637126518511765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + A000120 (A067804 n ^ 2).toNat

end

end A178431.P8136637126518511765

/-! ## A178431.P2346080445544420106

`A003557(A208452(n))+A002265(2*(n+1))`
-/

namespace A178431.P2346080445544420106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A208452 n).toNat + A002265 (2 * (n + 1))

end

end A178431.P2346080445544420106

/-!
# A178432: Number of isomorphism classes of kei (involutory quandles) of order n.

The programs for A178432, there is no canonical definition to state claims against.
-/

/-! ## A178432.P10484573362913930012

`A230772(8*A058122(n))`
-/

namespace A178432.P10484573362913930012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230772 (8 * A058122 n).toNat

end

end A178432.P10484573362913930012

/-! ## A178432.P3367466291214171630

`A051889(xor(3, A032259(n+1)))`
-/

namespace A178432.P3367466291214171630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (Int.xor 3 (A032259 (n + 1))).toNat

end

end A178432.P3367466291214171630

/-! ## A178432.P6155986834316029765

`A020650(A087611(2*(n+2))+1/(2-C(n, n²))*n!)`
-/

namespace A178432.P6155986834316029765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020650 (SequenceMachineLib.roundAway ((A087611 (2 * (n + 2)) : ℚ) + 1 / (2 - (Nat.choose n (n ^ 2) : ℤ) : ℚ) * (Nat.factorial n : ℚ))).toNat

end

end A178432.P6155986834316029765

/-! ## A178432.P2024369130206815851

`A332672(n+1)+A241827(A000070(n))`
-/

namespace A178432.P2024369130206815851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332672 (n + 1) + A241827 (A000070 n).toNat

end

end A178432.P2024369130206815851

/-!
# A178440: Convolution square of A058187, the tetrahedral series with repeats.

The programs for A178440, the canonical program `A178440.P5561484890838812170` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178440 has offset 0).

The definition of A178440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178440.P16154372396586896015

`∑[A299338(n)]`
-/

namespace A178440.P16154372396586896015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299338 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178440.P16154372396586896015

namespace A178440

/-- `∑[A299338(n)]` -/
def P16154372396586896015.Spec : Prop :=
  ∀ n, P16154372396586896015.a n = A178440 n

end A178440

/-! ## A178440.P5561484890838812170

`∑[A000579(floor(n/2)+6)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A178440

/-- `∑[A000579(floor(n/2)+6)]` -/
def P5561484890838812170.Spec : Prop :=
  ∀ n, P5561484890838812170.a n = A178440 n

theorem P5561484890838812170.correct : P5561484890838812170.Spec := by
  intro n
  simp only [A178440]

end A178440

/-! ## A178440.P9415052087725517743

`A299337(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A178440.P9415052087725517743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A299337 n + a (n - 2)

end

end A178440.P9415052087725517743

namespace A178440

/-- `A299337(n)+a(n-2)` -/
def P9415052087725517743.Spec : Prop :=
  ∀ n, P9415052087725517743.a n = A178440 n

end A178440

/-! ## A178440.P18402268474203981248

`∑[A027818(A008619(n)-1)/A008619(n)]`
-/

namespace A178440.P18402268474203981248
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027818 (A008619 n - 1).toNat : ℚ) / (A008619 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178440.P18402268474203981248

namespace A178440

/-- `∑[A027818(A008619(n)-1)/A008619(n)]` -/
def P18402268474203981248.Spec : Prop :=
  ∀ n, P18402268474203981248.a n = (A178440 n : ℚ)

end A178440

/-! ## A178440.P18389553240955865662

`A122840(4*n+3)+∑[A000579(A004526(n)+6)]`
-/

namespace A178440.P18389553240955865662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (A004526 n + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122840 (4 * n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178440.P18389553240955865662

namespace A178440

/-- `A122840(4*n+3)+∑[A000579(A004526(n)+6)]` -/
def P18389553240955865662.Spec : Prop :=
  ∀ n, P18389553240955865662.a n = A178440 n

end A178440

/-! ## A178440.P1661759135694149200

`∑[A065941(A055999(n+4)-1)]`
-/

namespace A178440.P1661759135694149200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 (A055999 (n + 4) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178440.P1661759135694149200

namespace A178440

/-- `∑[A065941(A055999(n+4)-1)]` -/
def P1661759135694149200.Spec : Prop :=
  ∀ n, P1661759135694149200.a n = A178440 n

end A178440

/-! ## A178440.P5843056918544693060

`∑[A065941(A000217(n+7)-7)]`
-/

namespace A178440.P5843056918544693060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 (A000217 (n + 7) - 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178440.P5843056918544693060

namespace A178440

/-- `∑[A065941(A000217(n+7)-7)]` -/
def P5843056918544693060.Spec : Prop :=
  ∀ n, P5843056918544693060.a n = A178440 n

end A178440

/-! ## A178440.P2795641389514881296

`∑[A185509(A008805(n))]`
-/

namespace A178440.P2795641389514881296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185509 (A008805 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178440.P2795641389514881296

namespace A178440

/-- `∑[A185509(A008805(n))]` -/
def P2795641389514881296.Spec : Prop :=
  ∀ n, P2795641389514881296.a n = A178440 n

end A178440

/-! ## A178440.P5825096237565854708

`∑[A185509(Δ[A006918(n)])]`
-/

namespace A178440.P5825096237565854708
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185509 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178440.P5825096237565854708

namespace A178440

/-- `∑[A185509(Δ[A006918(n)])]` -/
def P5825096237565854708.Spec : Prop :=
  ∀ n, P5825096237565854708.a n = A178440 n

end A178440

/-! ## A178440.P10617293204897971189

`∑[∑[A162515(A000124(n+6)-6)]]`
-/

namespace A178440.P10617293204897971189
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162515 (A000124 (n + 6) - 6).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178440.P10617293204897971189

namespace A178440

/-- `∑[∑[A162515(A000124(n+6)-6)]]` -/
def P10617293204897971189.Spec : Prop :=
  ∀ n, P10617293204897971189.a n = A178440 n

end A178440

/-!
# A178441: INVERT transform of A058187, the tetrahedral numbers with repeats.

The programs for A178441, there is no canonical definition to state claims against.
-/

/-! ## A178441.P3660122731007106353

`A156723(A332726(n))+A027994(n)`
-/

namespace A178441.P3660122731007106353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156723 (A332726 n).toNat + A027994 n

end

end A178441.P3660122731007106353

/-! ## A178441.P8385113016802250844

`A247781(A215580(n)*A247781(n+1))`
-/

namespace A178441.P8385113016802250844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247781 (A215580 n * A247781 (n + 1)).toNat

end

end A178441.P8385113016802250844

/-! ## A178441.P3394260571660516240

`Δ[record[A008679(A175395(n))]]`
-/

namespace A178441.P3394260571660516240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (A175395 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178441.P3394260571660516240

/-!
# A178442: Two numbers k and l we call equivalent if they have the same vector of exponents with positive components in prime power factorization. Let a(1)=1, a(2)=3. Then a(n)>a(n-1) is the smallest number equivalent to n.

The programs for A178442, there is no canonical definition to state claims against.
-/

/-! ## A178442.P17229621590875160121

`A137509(n+1)-A008683(A056450(n))`
-/

namespace A178442.P17229621590875160121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137509 (n + 1) - A008683 (A056450 n).toNat

end

end A178442.P17229621590875160121

/-! ## A178442.P4097299710371190518

`A137509(n+1)-A065598(A015161(n))`
-/

namespace A178442.P4097299710371190518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137509 (n + 1) - A065598 (A015161 n).toNat

end

end A178442.P4097299710371190518

/-! ## A178442.P12271766461054656590

`A137509(n+1)-A080995(A137529(n))`
-/

namespace A178442.P12271766461054656590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137509 (n + 1) - A080995 (A137529 n).toNat

end

end A178442.P12271766461054656590

/-! ## A178442.P7302352298242833

`A137509(n+1)/A000045(A091536(n)+2)`
-/

namespace A178442.P7302352298242833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137509 (n + 1) : ℚ) / (A000045 (A091536 n + 2).toNat : ℚ)

end

end A178442.P7302352298242833

/-!
# A178443: Two numbers k and l we call equivalent if they have the same vector of exponents with positive components in prime power factorization. Let a(1)=1, a(2)=3. If n>=3 is prime, then a(n) is the smallest prime greater than a(n-1); otherwise, a(n)>a(n-1) is the smallest number equivalent to n such that prime power factorization of a(n) contains only primes which already appeared in the sequence.

The programs for A178443, there is no canonical definition to state claims against.
-/

/-! ## A178443.P16343797738409366438

`or(A061358(A001040(n)), A064988(n+1))`
-/

namespace A178443.P16343797738409366438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A061358 (A001040 n).toNat) (A064988 (n + 1))

end

end A178443.P16343797738409366438

/-! ## A178443.P7202090891848418736

`or(A052400(A059434(n)), A064988(n+1))`
-/

namespace A178443.P7202090891848418736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A052400 (A059434 n).toNat) (A064988 (n + 1))

end

end A178443.P7202090891848418736

/-! ## A178443.P9889546808091657331

`or(A064988(n+1), A140356(A001045(n)))`
-/

namespace A178443.P9889546808091657331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A064988 (n + 1)) (A140356 (A001045 n).toNat)

end

end A178443.P9889546808091657331

/-! ## A178443.P6701733270874094209

`or(A061358(A001040(n)), A178442(n+1))`
-/

namespace A178443.P6701733270874094209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A061358 (A001040 n).toNat) (A178442 (n + 1))

end

end A178443.P6701733270874094209

/-! ## A178443.P13462856043998740337

`or(A140356(A001045(n)), A178442(n+1))`
-/

namespace A178443.P13462856043998740337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A140356 (A001045 n).toNat) (A178442 (n + 1))

end

end A178443.P13462856043998740337

/-!
# A178444: Markov numbers that are prime.

The programs for A178444, there is no canonical definition to state claims against.
-/

/-! ## A178444.P14238576001492197619

`p?[A002559(n+1)]`
-/

namespace A178444.P14238576001492197619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178444.P14238576001492197619

/-! ## A178444.P8489047261799944742

`p?[A386894(n+1)]`
-/

namespace A178444.P8489047261799944742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178444.P8489047261799944742

/-! ## A178444.P15360182386257041545

`p?[ceil(A324250(n+1)/3)]`
-/

namespace A178444.P15360182386257041545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A324250 (n + 1) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178444.P15360182386257041545

/-! ## A178444.P5459804747861104473

`p?[ceil(sqrt(A305312(n+1))/3)]`
-/

namespace A178444.P5459804747861104473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A305312 (n + 1) : ℝ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178444.P5459804747861104473

/-!
# A178445: a(n) = prime(n)^2 mod n^2.

The programs for A178445, the canonical program `A178445.P11560712910941579931` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178445 has offset 1).

The definition of A178445 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)²%(n+1)²` (program `A178445.P11560712910941579931`, by `A178445.P11560712910941579931.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A178445.P11560712910941579931

`A000040(n+1)²%(n+1)²`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A178445

/-- `A000040(n+1)²%(n+1)²` -/
def P11560712910941579931.Spec : Prop :=
  ∀ n, P11560712910941579931.a n = A178445 (n + 1)

theorem P11560712910941579931.correct : P11560712910941579931.Spec := by
  intro n
  simp only [A178445, Nat.add_sub_cancel]

end A178445

/-! ## A178445.P187201119127760370

`A001248(n+1)%A000290(n+1)`
-/

namespace A178445.P187201119127760370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001248 (n + 1)) (A000290 (n + 1))

end

end A178445.P187201119127760370

namespace A178445

/-- `A001248(n+1)%A000290(n+1)` -/
def P187201119127760370.Spec : Prop :=
  ∀ n, P187201119127760370.a n = A178445 (n + 1)

theorem P187201119127760370.correct : P187201119127760370.Spec := by
  intro n
  simp only [A178445, Nat.add_sub_cancel, A178445.P187201119127760370.a, A178445.P11560712910941579931.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000290, A000290.P12206242496348924484.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178445

/-! ## A178445.P14643189808626647736

`Δ[A022837(n)]²%(n+1)²`
-/

namespace A178445.P14643189808626647736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) - f1 n) ^ 2) ((n + 1) ^ 2 : ℤ)

end

end A178445.P14643189808626647736

namespace A178445

/-- `Δ[A022837(n)]²%(n+1)²` -/
def P14643189808626647736.Spec : Prop :=
  ∀ n, P14643189808626647736.a n = A178445 (n + 1)

end A178445

/-! ## A178445.P8446696902460439900

`Δ[A064365(n)]²%(n+1)²`
-/

namespace A178445.P8446696902460439900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) - f1 n) ^ 2) ((n + 1) ^ 2 : ℤ)

end

end A178445.P8446696902460439900

namespace A178445

/-- `Δ[A064365(n)]²%(n+1)²` -/
def P8446696902460439900.Spec : Prop :=
  ∀ n, P8446696902460439900.a n = A178445 (n + 1)

end A178445

/-! ## A178445.P15801064189723428998

`Δ[A309222(n)]²%(n+1)²`
-/

namespace A178445.P15801064189723428998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) - f1 n) ^ 2) ((n + 1) ^ 2 : ℤ)

end

end A178445.P15801064189723428998

namespace A178445

/-- `Δ[A309222(n)]²%(n+1)²` -/
def P15801064189723428998.Spec : Prop :=
  ∀ n, P15801064189723428998.a n = A178445 (n + 1)

end A178445

/-! ## A178445.P11259882919235207735

`A006005(n+1)²%(n+1)²`
-/

namespace A178445.P11259882919235207735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006005 (n + 1) ^ 2) ((n + 1) ^ 2 : ℤ)

end

end A178445.P11259882919235207735

namespace A178445

/-- `A006005(n+1)²%(n+1)²` -/
def P11259882919235207735.Spec : Prop :=
  ∀ n, P11259882919235207735.a n = A178445 (n + 1)

end A178445

/-! ## A178445.P1792687600364043456

`(A084920(n+1)+1)%(n+1)²`
-/

namespace A178445.P1792687600364043456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084920 (n + 1) + 1) ((n + 1) ^ 2 : ℤ)

end

end A178445.P1792687600364043456

namespace A178445

/-- `(A084920(n+1)+1)%(n+1)²` -/
def P1792687600364043456.Spec : Prop :=
  ∀ n, P1792687600364043456.a n = A178445 (n + 1)

theorem P1792687600364043456.correct : P1792687600364043456.Spec := by
  intro n
  simp only [A178445, Nat.add_sub_cancel, A178445.P1792687600364043456.a, A178445.P11560712910941579931.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A084920, A084920.P13392903182497119137.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178445

/-! ## A178445.P12744469050843336000

`(A049001(n+1)+2)%(n+1)²`
-/

namespace A178445.P12744469050843336000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049001 (n + 1) + 2) ((n + 1) ^ 2 : ℤ)

end

end A178445.P12744469050843336000

namespace A178445

/-- `(A049001(n+1)+2)%(n+1)²` -/
def P12744469050843336000.Spec : Prop :=
  ∀ n, P12744469050843336000.a n = A178445 (n + 1)

theorem P12744469050843336000.correct : P12744469050843336000.Spec := by
  intro n
  simp only [A178445, Nat.add_sub_cancel, A178445.P12744469050843336000.a, A178445.P11560712910941579931.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A049001, A049001.P8777299766092042792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178445

/-! ## A178445.P17793232135142793455

`(A001748(n+1)/3)²%(n+1)²`
-/

namespace A178445.P17793232135142793455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (((A001748 (n + 1) : ℚ) / 3) ^ 2)) ((n + 1) ^ 2 : ℤ)

end

end A178445.P17793232135142793455

namespace A178445

/-- `(A001748(n+1)/3)²%(n+1)²` -/
def P17793232135142793455.Spec : Prop :=
  ∀ n, P17793232135142793455.a n = A178445 (n + 1)

end A178445

/-! ## A178445.P10655110245278165337

`A106587(n+1)%A162395(n+1)`
-/

namespace A178445.P10655110245278165337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106587 (n + 1)) (A162395 (n + 1))

end

end A178445.P10655110245278165337

namespace A178445

/-- `A106587(n+1)%A162395(n+1)` -/
def P10655110245278165337.Spec : Prop :=
  ∀ n, P10655110245278165337.a n = A178445 (n + 1)

end A178445

/-! ## A178445.P16350333445594691405

`A106588(n+1)%A162395(n+1)`
-/

namespace A178445.P16350333445594691405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106588 (n + 1)) (A162395 (n + 1))

end

end A178445.P16350333445594691405

namespace A178445

/-- `A106588(n+1)%A162395(n+1)` -/
def P16350333445594691405.Spec : Prop :=
  ∀ n, P16350333445594691405.a n = A178445 (n + 1)

end A178445

/-! ## A178445.P11172789593421042775

`A008578(n+2)²%(n+1)²`
-/

namespace A178445.P11172789593421042775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 2) ^ 2) ((n + 1) ^ 2 : ℤ)

end

end A178445.P11172789593421042775

namespace A178445

/-- `A008578(n+2)²%(n+1)²` -/
def P11172789593421042775.Spec : Prop :=
  ∀ n, P11172789593421042775.a n = A178445 (n + 1)

end A178445

/-! ## A178445.P4299787830466162618

`record[A006530(n+2)²]%(n+1)²`
-/

namespace A178445.P4299787830466162618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) ((n + 1) ^ 2 : ℤ)

end

end A178445.P4299787830466162618

namespace A178445

/-- `record[A006530(n+2)²]%(n+1)²` -/
def P4299787830466162618.Spec : Prop :=
  ∀ n, P4299787830466162618.a n = A178445 (n + 1)

end A178445

/-! ## A178445.P2275660001311790052

`record[A020639(n+2)²]%(n+1)²`
-/

namespace A178445.P2275660001311790052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) ((n + 1) ^ 2 : ℤ)

end

end A178445.P2275660001311790052

namespace A178445

/-- `record[A020639(n+2)²]%(n+1)²` -/
def P2275660001311790052.Spec : Prop :=
  ∀ n, P2275660001311790052.a n = A178445 (n + 1)

end A178445

/-! ## A178445.P9586821615607092213

`record[(A000010(n+1)+1)²]%(n+1)²`
-/

namespace A178445.P9586821615607092213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) ((n + 1) ^ 2 : ℤ)

end

end A178445.P9586821615607092213

namespace A178445

/-- `record[(A000010(n+1)+1)²]%(n+1)²` -/
def P9586821615607092213.Spec : Prop :=
  ∀ n, P9586821615607092213.a n = A178445 (n + 1)

end A178445

/-! ## A178445.P4131057311611959138

`(eq[2, A000005(n+1)]+1)²%(n+1)²`
-/

namespace A178445.P4131057311611959138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2 % (n + 1) ^ 2

end

end A178445.P4131057311611959138

namespace A178445

/-- `(eq[2, A000005(n+1)]+1)²%(n+1)²` -/
def P4131057311611959138.Spec : Prop :=
  ∀ n, (P4131057311611959138.a n : ℤ) = A178445 (n + 1)

end A178445

/-! ## A178445.P7112767600762900144

`record[A014963(n+2)²]%(n+1)²`
-/

namespace A178445.P7112767600762900144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) ((n + 1) ^ 2 : ℤ)

end

end A178445.P7112767600762900144

namespace A178445

/-- `record[A014963(n+2)²]%(n+1)²` -/
def P7112767600762900144.Spec : Prop :=
  ∀ n, P7112767600762900144.a n = A178445 (n + 1)

end A178445

/-! ## A178445.P17640765466159881433

`record[A051664(n+1)²]%(n+1)²`
-/

namespace A178445.P17640765466159881433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) ((n + 1) ^ 2 : ℤ)

end

end A178445.P17640765466159881433

namespace A178445

/-- `record[A051664(n+1)²]%(n+1)²` -/
def P17640765466159881433.Spec : Prop :=
  ∀ n, P17640765466159881433.a n = A178445 (n + 1)

end A178445

/-!
# A178446: Number of perfect matchings in the n X n X n triangular grid, reduced by the spire vertex if n mod 4 equals 1 or 2.

The programs for A178446, there is no canonical definition to state claims against.
-/

/-! ## A178446.P371728615244856867

`A100143(ceil(n/2)^floor(n/2))`
-/

namespace A178446.P371728615244856867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100143 (SequenceMachineLib.roundAway ((⌈(n : ℚ) / 2⌉ : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat

end

end A178446.P371728615244856867

/-! ## A178446.P12369878836178328181

`(n-1)*A116358(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A178446.P12369878836178328181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((n : ℤ) - 1) * A116358 (a (n - 1)).toNat

end

end A178446.P12369878836178328181

/-! ## A178446.P14307350320556343648

`A173720(A170941(n))`
-/

namespace A178446.P14307350320556343648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173720 (A170941 n).toNat

end

end A178446.P14307350320556343648

/-!
# A178447: a(n) = number of 4-digit primes with digit sum n, where n runs through the non-multiples of 3 in the range [2..34].

The programs for A178447, there is no canonical definition to state claims against.
-/

/-! ## A178447.P16692083595749393952

`A178701(n+34)`
-/

namespace A178447.P16692083595749393952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178701 (n + 34)

end

end A178447.P16692083595749393952

/-!
# A178448: Dirichlet inverse of A001160, sigma_5.

The programs for A178448, the canonical program `A178448.P888281708996163110` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178448 has offset 1).

The definition of A178448 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178448.P888281708996163110

`∑{d}[n+1, A007427(#)*A189923((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A178448

/-- `∑{d}[n+1, A007427(#)*A189923((n+1)/#)]` -/
def P888281708996163110.Spec : Prop :=
  ∀ n, P888281708996163110.a n = A178448 (n + 1)

theorem P888281708996163110.correct : P888281708996163110.Spec := by
  intro n
  simp only [A178448, Nat.add_sub_cancel]

end A178448

/-! ## A178448.P2671498842873373412

`A347227(A052905(n+3))`
-/

namespace A178448.P2671498842873373412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347227 (A052905 (n + 3)).toNat

end

end A178448.P2671498842873373412

namespace A178448

/-- `A347227(A052905(n+3))` -/
def P2671498842873373412.Spec : Prop :=
  ∀ n, P2671498842873373412.a n = A178448 (n + 1)

end A178448

/-! ## A178448.P4764481849706370146

`A347227(A000096(n+5)-4)`
-/

namespace A178448.P4764481849706370146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347227 (A000096 (n + 5) - 4).toNat

end

end A178448.P4764481849706370146

namespace A178448

/-- `A347227(A000096(n+5)-4)` -/
def P4764481849706370146.Spec : Prop :=
  ∀ n, P4764481849706370146.a n = A178448 (n + 1)

end A178448

/-! ## A178448.P7220392747512549659

`A347227(n+1+A000217(n+5))`
-/

namespace A178448.P7220392747512549659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347227 ((n + 1 : ℤ) + A000217 (n + 5)).toNat

end

end A178448.P7220392747512549659

namespace A178448

/-- `A347227(n+1+A000217(n+5))` -/
def P7220392747512549659.Spec : Prop :=
  ∀ n, P7220392747512549659.a n = A178448 (n + 1)

end A178448

/-! ## A178448.P11957317150551876346

`A347227(A167614(n+3)+2*n+3)`
-/

namespace A178448.P11957317150551876346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347227 (A167614 (n + 3) + (2 * n + 3 : ℤ)).toNat

end

end A178448.P11957317150551876346

namespace A178448

/-- `A347227(A167614(n+3)+2*n+3)` -/
def P11957317150551876346.Spec : Prop :=
  ∀ n, P11957317150551876346.a n = A178448 (n + 1)

end A178448

/-!
# A178450: Dirichlet inverse of A034448 (unitary sigma).

The programs for A178450, the canonical program `A178450.P13297792227575131152` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178450 has offset 1).

The definition of A178450 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178450.P2157107237456415202

`2*A378434(n+1)-A158523(n+1)`
-/

namespace A178450.P2157107237456415202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A378434 (n + 1) - A158523 (n + 1)

end

end A178450.P2157107237456415202

namespace A178450

/-- `2*A378434(n+1)-A158523(n+1)` -/
def P2157107237456415202.Spec : Prop :=
  ∀ n, P2157107237456415202.a n = A178450 (n + 1)

end A178450

/-! ## A178450.P12408282430439355849

`∑{d}[n+1, A037213(#)*A046692((n+1)/#)]`
-/

namespace A178450.P12408282430439355849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A037213 d * A046692 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A178450.P12408282430439355849

namespace A178450

/-- `∑{d}[n+1, A037213(#)*A046692((n+1)/#)]` -/
def P12408282430439355849.Spec : Prop :=
  ∀ n, P12408282430439355849.a n = A178450 (n + 1)

end A178450

/-! ## A178450.P17908916923259851695

`∑{d}[n+1, A298473(#)*A346612((n+1)/#)]`
-/

namespace A178450.P17908916923259851695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A298473 d * A346612 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A178450.P17908916923259851695

namespace A178450

/-- `∑{d}[n+1, A298473(#)*A346612((n+1)/#)]` -/
def P17908916923259851695.Spec : Prop :=
  ∀ n, P17908916923259851695.a n = A178450 (n + 1)

end A178450

/-! ## A178450.P13297792227575131152

`∑{d}[n+1, A327960(#)*A340774((n+1)/#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A178450

/-- `∑{d}[n+1, A327960(#)*A340774((n+1)/#)]` -/
def P13297792227575131152.Spec : Prop :=
  ∀ n, P13297792227575131152.a n = A178450 (n + 1)

theorem P13297792227575131152.correct : P13297792227575131152.Spec := by
  intro n
  simp only [A178450, Nat.add_sub_cancel]

end A178450

/-! ## A178450.P12499665482006366278

`(-1)^∑{e}[n+1, #]*A001616((n+1)*∏{p}[n+1, #])`
-/

namespace A178450.P12499665482006366278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * A001616 ((n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p))

end

end A178450.P12499665482006366278

namespace A178450

/-- `(-1)^∑{e}[n+1, #]*A001616((n+1)*∏{p}[n+1, #])` -/
def P12499665482006366278.Spec : Prop :=
  ∀ n, P12499665482006366278.a n = A178450 (n + 1)

end A178450

/-! ## A178450.P10367427082586269968

`A001616(A064549(n+1))*A008836(n+1)`
-/

namespace A178450.P10367427082586269968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001616 (A064549 (n + 1)).toNat * A008836 (n + 1)

end

end A178450.P10367427082586269968

namespace A178450

/-- `A001616(A064549(n+1))*A008836(n+1)` -/
def P10367427082586269968.Spec : Prop :=
  ∀ n, P10367427082586269968.a n = A178450 (n + 1)

end A178450

/-! ## A178450.P7057076485833328095

`A001616(A064549(n+1))*A162512(A007913(n+1))`
-/

namespace A178450.P7057076485833328095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001616 (A064549 (n + 1)).toNat * A162512 (A007913 (n + 1)).toNat

end

end A178450.P7057076485833328095

namespace A178450

/-- `A001616(A064549(n+1))*A162512(A007913(n+1))` -/
def P7057076485833328095.Spec : Prop :=
  ∀ n, P7057076485833328095.a n = A178450 (n + 1)

end A178450

/-!
# A178452: Partial sums of floor(2^n/5).

The programs for A178452, the canonical program `A178452.P9314163319048523639` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178452 has offset 1).

The definition of A178452 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178452.P10814338879654801061

`a(n-4)+3*2^(n-2)-2` with `a(0)=0, a(1)=0, a(2)=1, a(3)=4`
-/

namespace A178452.P10814338879654801061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 1, 4] fun n a =>
  a (n - 4) + 3 * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) - 2

end

end A178452.P10814338879654801061

namespace A178452

/-- `a(n-4)+3*2^(n-2)-2` -/
def P10814338879654801061.Spec : Prop :=
  ∀ n, P10814338879654801061.a n = (A178452 (n + 1) : ℚ)

end A178452

/-! ## A178452.P9314163319048523639

`3*a(n-1)-2*a(n-2)+a(n-4)-3*a(n-5)+2*a(n-6)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=4, a(4)=10, a(5)=22`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A178452

/-- `3*a(n-1)-2*a(n-2)+a(n-4)-3*a(n-5)+2*a(n-6)` -/
def P9314163319048523639.Spec : Prop :=
  ∀ n, P9314163319048523639.a n = A178452 (n + 1)

theorem P9314163319048523639.correct : P9314163319048523639.Spec := by
  intro n
  simp only [A178452, Nat.add_sub_cancel]

end A178452

/-! ## A178452.P1452950185023888119

`floor((4*2^(n+1)-5*(n+1)-3)/10)`
-/

namespace A178452.P1452950185023888119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((4 * 2 ^ (n + 1) : ℤ) - (5 * (n + 1) : ℤ) - 3 : ℚ) / 10⌋

end

end A178452.P1452950185023888119

namespace A178452

/-- `floor((4*2^(n+1)-5*(n+1)-3)/10)` -/
def P1452950185023888119.Spec : Prop :=
  ∀ n, P1452950185023888119.a n = A178452 (n + 1)

end A178452

/-! ## A178452.P14000291451797040263

`(4*2^(n+1)-5*(n+1)-5+A057077(n+1)*A000034(n+1))/10`
-/

namespace A178452.P14000291451797040263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * 2 ^ (n + 1) : ℤ) - (5 * (n + 1) : ℤ) - 5 + A057077 (n + 1) * A000034 (n + 1) : ℚ) / 10

end

end A178452.P14000291451797040263

namespace A178452

/-- `(4*2^(n+1)-5*(n+1)-5+A057077(n+1)*A000034(n+1))/10` -/
def P14000291451797040263.Spec : Prop :=
  ∀ n, P14000291451797040263.a n = (A178452 (n + 1) : ℚ)

end A178452

/-! ## A178452.P11702355264918449626

`2^n-(a(n-2)+n+1)` with `a(0)=0, a(1)=0`
-/

namespace A178452.P11702355264918449626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  (2 ^ n : ℤ) - (a (n - 2) + (n + 1 : ℤ))

end

end A178452.P11702355264918449626

namespace A178452

/-- `2^n-(a(n-2)+n+1)` -/
def P11702355264918449626.Spec : Prop :=
  ∀ n, P11702355264918449626.a n = A178452 (n + 1)

end A178452

/-! ## A178452.P4720271377599274558

`∑[1-a(n-2)]+2*a(n-1)` with `a(0)=0, a(1)=0`
-/

namespace A178452.P4720271377599274558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  1 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * a (n - 1)

end

end A178452.P4720271377599274558

namespace A178452

/-- `∑[1-a(n-2)]+2*a(n-1)` -/
def P4720271377599274558.Spec : Prop :=
  ∀ n, P4720271377599274558.a n = A178452 (n + 1)

end A178452

/-! ## A178452.P2613064503909273961

`∑[∑[2*a(n-1)]]-a(n-2)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A178452.P2613064503909273961
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 2)

end

end A178452.P2613064503909273961

namespace A178452

/-- `∑[∑[2*a(n-1)]]-a(n-2)` -/
def P2613064503909273961.Spec : Prop :=
  ∀ n, P2613064503909273961.a n = A178452 (n + 1)

end A178452

/-! ## A178452.P10615079847538666005

`a(n-1)+∑[1-a(n-2)]+a(n-1)` with `a(0)=0, a(1)=0`
-/

namespace A178452.P10615079847538666005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  1 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) + (∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1))

end

end A178452.P10615079847538666005

namespace A178452

/-- `a(n-1)+∑[1-a(n-2)]+a(n-1)` -/
def P10615079847538666005.Spec : Prop :=
  ∀ n, P10615079847538666005.a n = A178452 (n + 1)

end A178452

/-! ## A178452.P8771179162142143110

`A000295(n)-a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A178452.P8771179162142143110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A000295 n - a (n - 2)

end

end A178452.P8771179162142143110

namespace A178452

/-- `A000295(n)-a(n-2)` -/
def P8771179162142143110.Spec : Prop :=
  ∀ n, P8771179162142143110.a n = A178452 (n + 1)

end A178452

/-! ## A178452.P5748717961489757230

`A130103(n)-a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A178452.P5748717961489757230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A130103 n - a (n - 2)

end

end A178452.P5748717961489757230

namespace A178452

/-- `A130103(n)-a(n-2)` -/
def P5748717961489757230.Spec : Prop :=
  ∀ n, P5748717961489757230.a n = A178452 (n + 1)

end A178452

/-! ## A178452.P10236541397856304968

`A007910(n)-(A004525(n)+1)`
-/

namespace A178452.P10236541397856304968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007910 n - (A004525 n + 1)

end

end A178452.P10236541397856304968

namespace A178452

/-- `A007910(n)-(A004525(n)+1)` -/
def P10236541397856304968.Spec : Prop :=
  ∀ n, P10236541397856304968.a n = A178452 (n + 1)

end A178452

/-! ## A178452.P8752603265707010935

`A173009(n+1)-A256494(n+1)`
-/

namespace A178452.P8752603265707010935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173009 (n + 1) - A256494 (n + 1)

end

end A178452.P8752603265707010935

namespace A178452

/-- `A173009(n+1)-A256494(n+1)` -/
def P8752603265707010935.Spec : Prop :=
  ∀ n, P8752603265707010935.a n = A178452 (n + 1)

end A178452

/-! ## A178452.P10056566208732571015

`A368346(n+1)+A368346(n+2)`
-/

namespace A178452.P10056566208732571015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368346 (n + 1) + A368346 (n + 2)

end

end A178452.P10056566208732571015

namespace A178452

/-- `A368346(n+1)+A368346(n+2)` -/
def P10056566208732571015.Spec : Prop :=
  ∀ n, P10056566208732571015.a n = A178452 (n + 1)

end A178452

/-! ## A178452.P7981582749954914862

`(A007910(n+1)-(n+2))/2`
-/

namespace A178452.P7981582749954914862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007910 (n + 1) - (n + 2 : ℤ) : ℚ) / 2

end

end A178452.P7981582749954914862

namespace A178452

/-- `(A007910(n+1)-(n+2))/2` -/
def P7981582749954914862.Spec : Prop :=
  ∀ n, P7981582749954914862.a n = (A178452 (n + 1) : ℚ)

end A178452

/-! ## A178452.P5545143749022029368

`A011377(n)-A265381(n)`
-/

namespace A178452.P5545143749022029368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011377 n - A265381 n

end

end A178452.P5545143749022029368

namespace A178452

/-- `A011377(n)-A265381(n)` -/
def P5545143749022029368.Spec : Prop :=
  ∀ n, P5545143749022029368.a n = A178452 (n + 1)

end A178452

/-! ## A178452.P16400020182026371036

`Δ[(A077854(n)-A000096(n))/2]`
-/

namespace A178452.P16400020182026371036
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077854 n - A000096 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178452.P16400020182026371036

namespace A178452

/-- `Δ[(A077854(n)-A000096(n))/2]` -/
def P16400020182026371036.Spec : Prop :=
  ∀ n, P16400020182026371036.a n = (A178452 (n + 1) : ℚ)

end A178452

/-! ## A178452.P15158048526701743597

`A140659(n+1)-A004526(n+1)`
-/

namespace A178452.P15158048526701743597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140659 (n + 1) - A004526 (n + 1)

end

end A178452.P15158048526701743597

namespace A178452

/-- `A140659(n+1)-A004526(n+1)` -/
def P15158048526701743597.Spec : Prop :=
  ∀ n, P15158048526701743597.a n = A178452 (n + 1)

end A178452

/-! ## A178452.P8807922492271217949

`A140659(n+1)-A110655(2*n)`
-/

namespace A178452.P8807922492271217949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140659 (n + 1) - A110655 (2 * n)

end

end A178452.P8807922492271217949

namespace A178452

/-- `A140659(n+1)-A110655(2*n)` -/
def P8807922492271217949.Spec : Prop :=
  ∀ n, P8807922492271217949.a n = A178452 (n + 1)

end A178452

/-!
# A178453: Numerator of n!*Sum((-1)^k/k!, k=0..n)/(n-1)^n.

The programs for A178453, there is no canonical definition to state claims against.
-/

/-! ## A178453.P15462017237234496697

`gcd(A000122(A049312(n)), A053557(n+2))`
-/

namespace A178453.P15462017237234496697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000122 (A049312 n).toNat) (A053557 (n + 2))

end

end A178453.P15462017237234496697

/-! ## A178453.P2362713771273618597

`A053557(n+2)^A156368(A332709(n+3))`
-/

namespace A178453.P2362713771273618597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053557 (n + 2) : ℚ) ^ (A156368 (A332709 (n + 3)).toNat : ℤ)

end

end A178453.P2362713771273618597

/-! ## A178453.P4162329017194050363

`filter[A053557(n), A014578(#)]`
-/

namespace A178453.P4162329017194050363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A178453.P4162329017194050363

/-! ## A178453.P10174932453440133949

`filter[A053557(n), A354354(#)]`
-/

namespace A178453.P10174932453440133949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A178453.P10174932453440133949

/-!
# A178454: Denominator of n!*Sum((-1)^k/k!, k=0..n)/(n-1)^n.

The programs for A178454, there is no canonical definition to state claims against.
-/

/-! ## A178454.P17244202094160179608

`A000169(A085908(n+1))*A038502(n+1)`
-/

namespace A178454.P17244202094160179608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000169 (A085908 (n + 1)).toNat * A038502 (n + 1)

end

end A178454.P17244202094160179608

/-! ## A178454.P12063050473097566297

`A000312(A085908(n+1))/A038500(n+1)`
-/

namespace A178454.P12063050473097566297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000312 (A085908 (n + 1)).toNat : ℚ) / (A038500 (n + 1) : ℚ)

end

end A178454.P12063050473097566297

/-! ## A178454.P4606075835563026813

`record[A247026(n)]/A038500(n+1)`
-/

namespace A178454.P4606075835563026813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247026 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A038500 (n + 1) : ℚ)

end

end A178454.P4606075835563026813

/-! ## A178454.P6655103141691204728

`record[A277004(n)]/A038500(n+1)`
-/

namespace A178454.P6655103141691204728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277004 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A038500 (n + 1) : ℚ)

end

end A178454.P6655103141691204728

/-! ## A178454.P2066266884419056053

`record[A344658(n)]/A038500(n+1)`
-/

namespace A178454.P2066266884419056053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344658 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A038500 (n + 1) : ℚ)

end

end A178454.P2066266884419056053

/-!
# A178455: Partial sums of floor(2^n/7).

The programs for A178455, the canonical program `A178455.P2333732060694366816` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178455 has offset 0).

The definition of A178455 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178455.P6197118293168300591

`a(n-3)+2^(n-2)-1` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A178455.P6197118293168300591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  a (n - 3) + (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) - 1

end

end A178455.P6197118293168300591

namespace A178455

/-- `a(n-3)+2^(n-2)-1` -/
def P6197118293168300591.Spec : Prop :=
  ∀ n, P6197118293168300591.a n = (A178455 n : ℚ)

end A178455

/-! ## A178455.P2333732060694366816

`3*a(n-1)-2*a(n-2)+a(n-3)-3*a(n-4)+2*a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=3`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A178455

/-- `3*a(n-1)-2*a(n-2)+a(n-3)-3*a(n-4)+2*a(n-5)` -/
def P2333732060694366816.Spec : Prop :=
  ∀ n, P2333732060694366816.a n = A178455 n

theorem P2333732060694366816.correct : P2333732060694366816.Spec := by
  intro n
  simp only [A178455]

end A178455

/-! ## A178455.P2860919465748022606

`floor(2^(n+1)/7)-floor((n+1)/3)`
-/

namespace A178455.P2860919465748022606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ (n + 1) : ℚ) / 7⌋ - ⌊(n + 1 : ℚ) / 3⌋

end

end A178455.P2860919465748022606

namespace A178455

/-- `floor(2^(n+1)/7)-floor((n+1)/3)` -/
def P2860919465748022606.Spec : Prop :=
  ∀ n, P2860919465748022606.a n = A178455 n

end A178455

/-! ## A178455.P15688886504639073020

`floor(n/3+2*a(n-1))` with `a(0)=0`
-/

namespace A178455.P15688886504639073020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n : ℚ) / 3 + (2 * a (n - 1) : ℚ)⌋

end

end A178455.P15688886504639073020

namespace A178455

/-- `floor(n/3+2*a(n-1))` -/
def P15688886504639073020.Spec : Prop :=
  ∀ n, P15688886504639073020.a n = A178455 n

end A178455

/-! ## A178455.P4983933335654365762

`∑[a(n-3)+2^(n-3)]` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A178455.P4983933335654365762
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 0] fun n f1 =>
  f1 (n - 3) + (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178455.P4983933335654365762

namespace A178455

/-- `∑[a(n-3)+2^(n-3)]` -/
def P4983933335654365762.Spec : Prop :=
  ∀ n, P4983933335654365762.a n = (A178455 n : ℚ)

end A178455

/-! ## A178455.P8212619894273262826

`∑[(n+1)%3+4*a(n-2)]` with `a(0)=0, a(1)=0`
-/

namespace A178455.P8212619894273262826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  (n + 1) % 3 + 4 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178455.P8212619894273262826

namespace A178455

/-- `∑[(n+1)%3+4*a(n-2)]` -/
def P8212619894273262826.Spec : Prop :=
  ∀ n, (P8212619894273262826.a n : ℤ) = A178455 n

end A178455

/-! ## A178455.P17116214439658062779

`floor(a(n-1)+a(n-1)+n/3)` with `a(0)=0`
-/

namespace A178455.P17116214439658062779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) + ((a (n - 1) : ℚ) + (n : ℚ) / 3)⌋

end

end A178455.P17116214439658062779

namespace A178455

/-- `floor(a(n-1)+a(n-1)+n/3)` -/
def P17116214439658062779.Spec : Prop :=
  ∀ n, P17116214439658062779.a n = A178455 n

end A178455

/-! ## A178455.P11599829821875812352

`∑[A155803(n)]`
-/

namespace A178455.P11599829821875812352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178455.P11599829821875812352

namespace A178455

/-- `∑[A155803(n)]` -/
def P11599829821875812352.Spec : Prop :=
  ∀ n, P11599829821875812352.a n = A178455 n

end A178455

/-! ## A178455.P16161481484846727619

`∑[A002264(n)/A011782(n)]*A011782(n)`
-/

namespace A178455.P16161481484846727619
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002264 n : ℚ) / (A011782 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A011782 n : ℚ)

end

end A178455.P16161481484846727619

namespace A178455

/-- `∑[A002264(n)/A011782(n)]*A011782(n)` -/
def P16161481484846727619.Spec : Prop :=
  ∀ n, P16161481484846727619.a n = (A178455 n : ℚ)

end A178455

/-! ## A178455.P5862105797393063286

`floor(a(n-1)+2^n/7)` with `a(0)=0`
-/

namespace A178455.P5862105797393063286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) + (2 ^ n : ℚ) / 7⌋

end

end A178455.P5862105797393063286

namespace A178455

/-- `floor(a(n-1)+2^n/7)` -/
def P5862105797393063286.Spec : Prop :=
  ∀ n, P5862105797393063286.a n = A178455 n

end A178455

/-! ## A178455.P14484852099040633726

`(A294627(n+1)-(n+1))/3`
-/

namespace A178455.P14484852099040633726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294627 (n + 1) - (n + 1 : ℤ) : ℚ) / 3

end

end A178455.P14484852099040633726

namespace A178455

/-- `(A294627(n+1)-(n+1))/3` -/
def P14484852099040633726.Spec : Prop :=
  ∀ n, P14484852099040633726.a n = (A178455 n : ℚ)

end A178455

/-! ## A178455.P13673444739226544176

`∑[A002264(n)/A000079(n)]*A000079(n)`
-/

namespace A178455.P13673444739226544176
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002264 n : ℚ) / (A000079 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000079 n : ℚ)

end

end A178455.P13673444739226544176

namespace A178455

/-- `∑[A002264(n)/A000079(n)]*A000079(n)` -/
def P13673444739226544176.Spec : Prop :=
  ∀ n, P13673444739226544176.a n = (A178455 n : ℚ)

end A178455

/-!
# A178456: Primes p such that p-1 or p+1 has more than two distinct prime divisors.

The programs for A178456, there is no canonical definition to state claims against.
-/

/-! ## A178456.P12278695741807643383

`p?[gcd(A102681(n), A329149(n+1))]`
-/

namespace A178456.P12278695741807643383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A102681 n) (A329149 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A178456.P12278695741807643383

/-! ## A178456.P10428808178130872539

`p?[A030392(n+1)*A329149(n+1)]`
-/

namespace A178456.P10428808178130872539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030392 (n + 1) * A329149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178456.P10428808178130872539

/-! ## A178456.P11609152018182118859

`∩[A125771(n+1), A329149(n+1)]`
-/

namespace A178456.P11609152018182118859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178456.P11609152018182118859

/-! ## A178456.P11151752516224695675

`p?[A352486(A352486(n+1))+17]`
-/

namespace A178456.P11151752516224695675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352486 (A352486 (n + 1)).toNat + 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178456.P11151752516224695675

/-! ## A178456.P2699644239728883313

`p?[record[A170975(n)+28]]`
-/

namespace A178456.P2699644239728883313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170975 n + 28

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178456.P2699644239728883313

/-!
# A178457: Partial sums of floor(2^n/23).

The programs for A178457, the canonical program `A178457.P11396368902254742655` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178457 has offset 0).

The definition of A178457 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178457.P11396368902254742655

`round((22*2^n-92*n-22)/253)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A178457

/-- `round((22*2^n-92*n-22)/253)` -/
def P11396368902254742655.Spec : Prop :=
  ∀ n, P11396368902254742655.a n = A178457 n

theorem P11396368902254742655.correct : P11396368902254742655.Spec := by
  intro n
  simp only [A178457]

end A178457

/-! ## A178457.P3698095511705725131

`∑[floor(A000079(n)/(A186682(2*n+5)-1))]`
-/

namespace A178457.P3698095511705725131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000079 n : ℚ) / (A186682 (2 * n + 5) - 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178457.P3698095511705725131

namespace A178457

/-- `∑[floor(A000079(n)/(A186682(2*n+5)-1))]` -/
def P3698095511705725131.Spec : Prop :=
  ∀ n, P3698095511705725131.a n = A178457 n

end A178457

/-! ## A178457.P13451917681789612335

`∑{d}[A000079(n), floor(#/23)]`
-/

namespace A178457.P13451917681789612335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ⌊(d : ℚ) / 23⌋

end

end A178457.P13451917681789612335

namespace A178457

/-- `∑{d}[A000079(n), floor(#/23)]` -/
def P13451917681789612335.Spec : Prop :=
  ∀ n, P13451917681789612335.a n = A178457 n

end A178457

/-! ## A178457.P4798752787658639003

`A005187(floor(record[A112387(n)]/23))`
-/

namespace A178457.P4798752787658639003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112387 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 23⌋.toNat

end

end A178457.P4798752787658639003

namespace A178457

/-- `A005187(floor(record[A112387(n)]/23))` -/
def P4798752787658639003.Spec : Prop :=
  ∀ n, P4798752787658639003.a n = A178457 n

end A178457

/-! ## A178457.P13465277591689692932

`A005187(floor(record[A122111(n+1)]/23))`
-/

namespace A178457.P13465277591689692932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 23⌋.toNat

end

end A178457.P13465277591689692932

namespace A178457

/-- `A005187(floor(record[A122111(n+1)]/23))` -/
def P13465277591689692932.Spec : Prop :=
  ∀ n, P13465277591689692932.a n = A178457 n

end A178457

/-!
# A178459: Partial sums of floor(2^n/31).

The programs for A178459, the canonical program `A178459.P846831314241684810` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178459 has offset 1).

The definition of A178459 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178459.P4346873324838373046

`a(n-5)+2^(n-3)-1` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1`
-/

namespace A178459.P4346873324838373046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 0, 0, 1] fun n a =>
  a (n - 5) + (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) - 1

end

end A178459.P4346873324838373046

namespace A178459

/-- `a(n-5)+2^(n-3)-1` -/
def P4346873324838373046.Spec : Prop :=
  ∀ n, P4346873324838373046.a n = (A178459 (n + 1) : ℚ)

end A178459

/-! ## A178459.P846831314241684810

`floor(2^(n+2)/31)-floor((n+2)/5)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A178459

/-- `floor(2^(n+2)/31)-floor((n+2)/5)` -/
def P846831314241684810.Spec : Prop :=
  ∀ n, P846831314241684810.a n = A178459 (n + 1)

theorem P846831314241684810.correct : P846831314241684810.Spec := by
  intro n
  simp only [A178459, Nat.add_sub_cancel]

end A178459

/-! ## A178459.P18201940922811239512

`floor((n+1)/5+2*a(n-1))` with `a(0)=0`
-/

namespace A178459.P18201940922811239512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n + 1 : ℚ) / 5 + (2 * a (n - 1) : ℚ)⌋

end

end A178459.P18201940922811239512

namespace A178459

/-- `floor((n+1)/5+2*a(n-1))` -/
def P18201940922811239512.Spec : Prop :=
  ∀ n, P18201940922811239512.a n = A178459 (n + 1)

end A178459

/-! ## A178459.P4934885279671582417

`floor(a(n-1)+a(n-1)+(n+1)/5)` with `a(0)=0`
-/

namespace A178459.P4934885279671582417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) + ((a (n - 1) : ℚ) + (n + 1 : ℚ) / 5)⌋

end

end A178459.P4934885279671582417

namespace A178459

/-- `floor(a(n-1)+a(n-1)+(n+1)/5)` -/
def P4934885279671582417.Spec : Prop :=
  ∀ n, P4934885279671582417.a n = A178459 (n + 1)

end A178459

/-! ## A178459.P304596403412196241

`A255070(A226310(n+1))`
-/

namespace A178459.P304596403412196241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255070 (A226310 (n + 1)).toNat

end

end A178459.P304596403412196241

namespace A178459

/-- `A255070(A226310(n+1))` -/
def P304596403412196241.Spec : Prop :=
  ∀ n, P304596403412196241.a n = A178459 (n + 1)

end A178459

/-!
# A178460: Partial sums of floor(2^n/127).

The programs for A178460, the canonical program `A178460.P6249934213971865350` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178460 has offset 1).

The definition of A178460 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178460.P17790504115223512189

`a(n-7)+2^(n-5)-1` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=1`
-/

namespace A178460.P17790504115223512189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 0, 0, 0, 0, 1] fun n a =>
  a (n - 7) + (2 : ℚ) ^ ((n : ℤ) - 5 : ℤ) - 1

end

end A178460.P17790504115223512189

namespace A178460

/-- `a(n-7)+2^(n-5)-1` -/
def P17790504115223512189.Spec : Prop :=
  ∀ n, P17790504115223512189.a n = (A178460 (n + 1) : ℚ)

end A178460

/-! ## A178460.P6249934213971865350

`3*a(n-1)-2*a(n-2)+a(n-7)-3*a(n-8)+2*a(n-9)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=1, a(7)=3, a(8)=7`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A178460

/-- `3*a(n-1)-2*a(n-2)+a(n-7)-3*a(n-8)+2*a(n-9)` -/
def P6249934213971865350.Spec : Prop :=
  ∀ n, P6249934213971865350.a n = A178460 (n + 1)

theorem P6249934213971865350.correct : P6249934213971865350.Spec := by
  intro n
  simp only [A178460, Nat.add_sub_cancel]

end A178460

/-! ## A178460.P10242485675992544035

`floor(2^(n+2)/127)-floor((n+2)/7)`
-/

namespace A178460.P10242485675992544035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ (n + 2) : ℚ) / 127⌋ - ⌊(n + 2 : ℚ) / 7⌋

end

end A178460.P10242485675992544035

namespace A178460

/-- `floor(2^(n+2)/127)-floor((n+2)/7)` -/
def P10242485675992544035.Spec : Prop :=
  ∀ n, P10242485675992544035.a n = A178460 (n + 1)

end A178460

/-! ## A178460.P4685434833701865876

`floor((n+1)/7+2*a(n-1))` with `a(0)=0`
-/

namespace A178460.P4685434833701865876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n + 1 : ℚ) / 7 + (2 * a (n - 1) : ℚ)⌋

end

end A178460.P4685434833701865876

namespace A178460

/-- `floor((n+1)/7+2*a(n-1))` -/
def P4685434833701865876.Spec : Prop :=
  ∀ n, P4685434833701865876.a n = A178460 (n + 1)

end A178460

/-! ## A178460.P17590800176407810984

`floor(a(n-1)+a(n-1)+(n+1)/7)` with `a(0)=0`
-/

namespace A178460.P17590800176407810984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) + ((a (n - 1) : ℚ) + (n + 1 : ℚ) / 7)⌋

end

end A178460.P17590800176407810984

namespace A178460

/-- `floor(a(n-1)+a(n-1)+(n+1)/7)` -/
def P17590800176407810984.Spec : Prop :=
  ∀ n, P17590800176407810984.a n = A178460 (n + 1)

end A178460

/-! ## A178460.P8311976046521784132

`∑[A082784(n+1)+a(n-1)+a(n-1)]` with `a(0)=0`
-/

namespace A178460.P8311976046521784132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A082784 (n + 1) + (f1 (n - 1) + f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178460.P8311976046521784132

namespace A178460

/-- `∑[A082784(n+1)+a(n-1)+a(n-1)]` -/
def P8311976046521784132.Spec : Prop :=
  ∀ n, P8311976046521784132.a n = A178460 (n + 1)

end A178460

/-! ## A178460.P14550375003169771042

`∑[A117302(n+2)-A131577(n+2)]`
-/

namespace A178460.P14550375003169771042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117302 (n + 2) - A131577 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178460.P14550375003169771042

namespace A178460

/-- `∑[A117302(n+2)-A131577(n+2)]` -/
def P14550375003169771042.Spec : Prop :=
  ∀ n, P14550375003169771042.a n = A178460 (n + 1)

end A178460

/-!
# A178462: Numbers k such that prime(k) mod k > k/2.

The programs for A178462, the canonical program `A178462.P16727862462628083790` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178462 has offset 1).

The definition of A178462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3993 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178462.P16727862462628083790

`lt[n+1, 2*A004648(n+1)]+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A178462

/-- `lt[n+1, 2*A004648(n+1)]+1` -/
def P16727862462628083790.Spec : Prop :=
  ∀ n, (P16727862462628083790.a n : ℤ) = A178462 (n + 1)

theorem P16727862462628083790.correct : P16727862462628083790.Spec := by
  intro n
  simp only [A178462, Nat.add_sub_cancel]

end A178462

/-! ## A178462.P5182891418748239592

`lt[(n+1)/2, A000040(n+1)%(n+1)]+1`
-/

namespace A178462.P5182891418748239592
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A178462.P5182891418748239592

namespace A178462

/-- `lt[(n+1)/2, A000040(n+1)%(n+1)]+1` -/
def P5182891418748239592.Spec : Prop :=
  ∀ n, (P5182891418748239592.a n : ℤ) = A178462 (n + 1)

end A178462

/-! ## A178462.P2828396211267637819

`lt[n, 2*A004648(A028310(n))]`
-/

namespace A178462.P2828396211267637819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004648 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A178462.P2828396211267637819

namespace A178462

/-- `lt[n, 2*A004648(A028310(n))]` -/
def P2828396211267637819.Spec : Prop :=
  ∀ n, (P2828396211267637819.a n : ℤ) = A178462 (n + 1)

end A178462

/-! ## A178462.P16114714333530711632

`lt[A004525(n), A004648(n+1)]+1`
-/

namespace A178462.P16114714333530711632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004648 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A178462.P16114714333530711632

namespace A178462

/-- `lt[A004525(n), A004648(n+1)]+1` -/
def P16114714333530711632.Spec : Prop :=
  ∀ n, (P16114714333530711632.a n : ℤ) = A178462 (n + 1)

end A178462

/-! ## A178462.P3997644759562657958

`lt[A065033(n), A004648(n+1)]+1`
-/

namespace A178462.P3997644759562657958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004648 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A178462.P3997644759562657958

namespace A178462

/-- `lt[A065033(n), A004648(n+1)]+1` -/
def P3997644759562657958.Spec : Prop :=
  ∀ n, (P3997644759562657958.a n : ℤ) = A178462 (n + 1)

end A178462

/-! ## A178462.P11790951729459175200

`lt[A008619(n), A004648(n+2)]+2`
-/

namespace A178462.P11790951729459175200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004648 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A178462.P11790951729459175200

namespace A178462

/-- `lt[A008619(n), A004648(n+2)]+2` -/
def P11790951729459175200.Spec : Prop :=
  ∀ n, (P11790951729459175200.a n : ℤ) = A178462 (n + 1)

end A178462

/-! ## A178462.P15819295949367210850

`lt[n, A001747(n+1)%A004277(n)]`
-/

namespace A178462.P15819295949367210850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001747 (n + 1)) (A004277 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A178462.P15819295949367210850

namespace A178462

/-- `lt[n, A001747(n+1)%A004277(n)]` -/
def P15819295949367210850.Spec : Prop :=
  ∀ n, (P15819295949367210850.a n : ℤ) = A178462 (n + 1)

end A178462

/-! ## A178462.P8110794111879655147

`lt[n, A008578(n+1)%A028310(n)+n/2]`
-/

namespace A178462.P8110794111879655147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A008578 (n + 1)) (A028310 n) : ℚ) + (n : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A178462.P8110794111879655147

namespace A178462

/-- `lt[n, A008578(n+1)%A028310(n)+n/2]` -/
def P8110794111879655147.Spec : Prop :=
  ∀ n, (P8110794111879655147.a n : ℤ) = A178462 (n + 1)

end A178462

/-! ## A178462.P2355655111887223280

`lt[A068901(n+1), A004232(n+1)%(n+1)]+1`
-/

namespace A178462.P2355655111887223280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004232 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A178462.P2355655111887223280

namespace A178462

/-- `lt[A068901(n+1), A004232(n+1)%(n+1)]+1` -/
def P2355655111887223280.Spec : Prop :=
  ∀ n, (P2355655111887223280.a n : ℤ) = A178462 (n + 1)

end A178462

/-! ## A178462.P14383532402487964364

`lt[A123108(n), A004648(A028310(n))]`
-/

namespace A178462.P14383532402487964364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004648 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A178462.P14383532402487964364

namespace A178462

/-- `lt[A123108(n), A004648(A028310(n))]` -/
def P14383532402487964364.Spec : Prop :=
  ∀ n, (P14383532402487964364.a n : ℤ) = A178462 (n + 1)

end A178462

/-!
# A178464: Minimal number of lines that must be removed from an n X n square array of cells in order to break all rectangles.

The programs for A178464, there is no canonical definition to state claims against.
-/

/-! ## A178464.P2390561426472744519

`∑[A200381(or(1, n))]+n`
-/

namespace A178464.P2390561426472744519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200381 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A178464.P2390561426472744519

/-! ## A178464.P15107996772186216171

`A046100(∑[∑[or(1, n²)%3]])`
-/

namespace A178464.P15107996772186216171
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n ^ 2) % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A178464.P15107996772186216171

/-! ## A178464.P6454861933946427376

`∑[A029372(2*n)+n]+n`
-/

namespace A178464.P6454861933946427376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029372 (2 * n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A178464.P6454861933946427376

/-! ## A178464.P11041237335610940432

`∑[A188010(n+1)]+floor(n/2)`
-/

namespace A178464.P11041237335610940432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ⌊(n : ℚ) / 2⌋

end

end A178464.P11041237335610940432

/-! ## A178464.P16112624927407859957

`∑[A350349(n+1)]+floor(n/2)`
-/

namespace A178464.P16112624927407859957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ⌊(n : ℚ) / 2⌋

end

end A178464.P16112624927407859957

/-!
# A178465: Expansion of -2*x^2*(-3-2*x+x^2-x^3-2*x^4+x^5) / ( (1+x)^2*(x-1)^4 ).

The programs for A178465, the canonical program `A178465.P18131719593949472730` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178465 has offset 0).

The definition of A178465 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((6x^2+4x^3-2x^4+2x^5+4x^6-2x^7)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))` (program `A178465.P18131719593949472730`, by `A178465.P18131719593949472730.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A178465.P18131719593949472730

`ogf((6x^2+4x^3-2x^4+2x^5+4x^6-2x^7)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A178465

/-- `ogf((6x^2+4x^3-2x^4+2x^5+4x^6-2x^7)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))` -/
def P18131719593949472730.Spec : Prop :=
  ∀ n, P18131719593949472730.a n = A178465 n

theorem P18131719593949472730.correct : P18131719593949472730.Spec := by
  intro n
  simp only [A178465]

end A178465

/-! ## A178465.P15181121062174567589

`ceil(n/2)*A163300(n*A004526(n)+1)`
-/

namespace A178465.P15181121062174567589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ * A163300 ((n : ℤ) * A004526 n + 1).toNat

end

end A178465.P15181121062174567589

namespace A178465

/-- `ceil(n/2)*A163300(n*A004526(n)+1)` -/
def P15181121062174567589.Spec : Prop :=
  ∀ n, P15181121062174567589.a n = A178465 n

end A178465

/-! ## A178465.P4223049658931942647

`abs(A001057(n)*A163300(n*A004526(n)+1))`
-/

namespace A178465.P4223049658931942647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 n * A163300 ((n : ℤ) * A004526 n + 1).toNat|

end

end A178465.P4223049658931942647

namespace A178465

/-- `abs(A001057(n)*A163300(n*A004526(n)+1))` -/
def P4223049658931942647.Spec : Prop :=
  ∀ n, P4223049658931942647.a n = A178465 n

end A178465

/-!
# A178466: Primes prime(k) such that the concatenation prime(k+1)//prime(k) is also prime.

The programs for A178466, there is no canonical definition to state claims against.
-/

/-! ## A178466.P8947666373285095053

`A088784(n+1)%A088712(n+1)`
-/

namespace A178466.P8947666373285095053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088784 (n + 1)) (A088712 (n + 1))

end

end A178466.P8947666373285095053

/-! ## A178466.P3767412675590922195

`p?[A034594(n+1)]`
-/

namespace A178466.P3767412675590922195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178466.P3767412675590922195

/-! ## A178466.P9819123874846865107

`∩[A034594(n+1), A380468(n+1)]`
-/

namespace A178466.P9819123874846865107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178466.P9819123874846865107

/-! ## A178466.P10609779761019557229

`∩[A000040(n+1), A034594(n+1)]`
-/

namespace A178466.P10609779761019557229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178466.P10609779761019557229

/-! ## A178466.P7002854762407359919

`∩[A004139(n+1), A034594(n+1)]`
-/

namespace A178466.P7002854762407359919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178466.P7002854762407359919

/-! ## A178466.P1573192967146599963

`∩[A006005(n+1), A034594(n+1)]`
-/

namespace A178466.P1573192967146599963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178466.P1573192967146599963

/-! ## A178466.P10302182365256946974

`∩[A008578(n+1), A034594(n+1)]`
-/

namespace A178466.P10302182365256946974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178466.P10302182365256946974

/-! ## A178466.P17256221652970353479

`∩[A033946(n+1), A034594(n+1)]`
-/

namespace A178466.P17256221652970353479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178466.P17256221652970353479

/-! ## A178466.P18089134998757867362

`∩[A034594(n+1), A045319(n+1)]`
-/

namespace A178466.P18089134998757867362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178466.P18089134998757867362

/-! ## A178466.P13168823342173932324

`∩[A034594(n+1), A046022(n+1)]`
-/

namespace A178466.P13168823342173932324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178466.P13168823342173932324

/-! ## A178466.P4058474164981811125

`∩[A034594(n+1), A051948(n+1)]`
-/

namespace A178466.P4058474164981811125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178466.P4058474164981811125

/-! ## A178466.P18129135108608187659

`∩[A034594(n+1), A053813(n+1)]`
-/

namespace A178466.P18129135108608187659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178466.P18129135108608187659

/-! ## A178466.P15756661215342738394

`∩[A034594(n+1), A062972(n+1)]`
-/

namespace A178466.P15756661215342738394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178466.P15756661215342738394

/-! ## A178466.P16712596767019915406

`∩[A034594(n+1), A065091(n+1)]`
-/

namespace A178466.P16712596767019915406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178466.P16712596767019915406

/-! ## A178466.P14475183276091916494

`∩[A034594(n+1), A066050(n+1)]`
-/

namespace A178466.P14475183276091916494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178466.P14475183276091916494

/-! ## A178466.P9286764696100454960

`∩[A034594(n+1), A066542(n+1)]`
-/

namespace A178466.P9286764696100454960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178466.P9286764696100454960

/-! ## A178466.P18013543454973741086

`∩[A034594(n+1), A067126(n+1)]`
-/

namespace A178466.P18013543454973741086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178466.P18013543454973741086

/-! ## A178466.P15385063448416978390

`∩[A034594(n+1), A067133(n+1)]`
-/

namespace A178466.P15385063448416978390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178466.P15385063448416978390

/-! ## A178466.P7118373217468838094

`∩[A034594(n+1), A093515(n+1)]`
-/

namespace A178466.P7118373217468838094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178466.P7118373217468838094

/-!
# A178467: a(n) = n * (number of letters in n in Italian).

The programs for A178467, there is no canonical definition to state claims against.
-/

/-! ## A178467.P11897937394029568535

`n*A026858(n)`
-/

namespace A178467.P11897937394029568535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A026858 n

end

end A178467.P11897937394029568535

/-!
# A178469: a(n)= (A178468(n)+A178468(n+1))/101.

The programs for A178469, there is no canonical definition to state claims against.
-/

/-! ## A178469.P3236670011371420527

`(A178468(n+1)+A178468(n+2))/101`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A178469.P3236670011371420527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178468 (n + 1) + A178468 (n + 2) : ℚ) / 101

end

end A178469.P3236670011371420527

/-! ## A178469.P1864990198354060482

`A345933(A178468(n+1)+A178468(n+2))`
-/

namespace A178469.P1864990198354060482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345933 (A178468 (n + 1) + A178468 (n + 2)).toNat

end

end A178469.P1864990198354060482

/-!
# A178471: Triangle where T(n,k) is the number of compositions of n where no pair of consecutive part sizes is relative prime, starting with a part of size k.

The programs for A178471, there is no canonical definition to state claims against.
-/

/-! ## A178471.P17268406693321189979

`A071858(A231642(n+1)^A038573(n))`
-/

namespace A178471.P17268406693321189979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071858 (SequenceMachineLib.roundAway ((A231642 (n + 1) : ℚ) ^ (A038573 n : ℤ))).toNat

end

end A178471.P17268406693321189979

/-! ## A178471.P5559778103621624101

`A124769(A231642(n+1)^A000120(n))`
-/

namespace A178471.P5559778103621624101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 (SequenceMachineLib.roundAway ((A231642 (n + 1) : ℚ) ^ (A000120 n : ℤ))).toNat

end

end A178471.P5559778103621624101

/-! ## A178471.P8077760461737052525

`A124769(A231642(n+1)^A025581(n))`
-/

namespace A178471.P8077760461737052525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 (SequenceMachineLib.roundAway ((A231642 (n + 1) : ℚ) ^ (A025581 n : ℤ))).toNat

end

end A178471.P8077760461737052525

/-! ## A178471.P12502849163871632497

`A051904(A329758(n+5))-A054521(n+1)`
-/

namespace A178471.P12502849163871632497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A329758 (n + 5)).toNat - A054521 (n + 1)

end

end A178471.P12502849163871632497

/-! ## A178471.P13389033853838420423

`A036577(A220579(n+1)+1)`
-/

namespace A178471.P13389033853838420423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036577 (A220579 (n + 1) + 1).toNat

end

end A178471.P13389033853838420423

/-!
# A178472: Number of compositions (ordered partitions) of n where the gcd of the part sizes is not 1.

The programs for A178472, the canonical program `A178472.P12067930664029615455` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178472 has offset 1).

The definition of A178472 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000740, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A178472.P10331222865947028449

`A152061(n+1)/2`
-/

namespace A178472.P10331222865947028449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152061 (n + 1) : ℚ) / 2

end

end A178472.P10331222865947028449

namespace A178472

/-- `A152061(n+1)/2` -/
def P10331222865947028449.Spec : Prop :=
  ∀ n, P10331222865947028449.a n = (A178472 (n + 1) : ℚ)

end A178472

/-! ## A178472.P12067930664029615455

`2^n-A000740(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A178472

/-- `2^n-A000740(n+1)` -/
def P12067930664029615455.Spec : Prop :=
  ∀ n, P12067930664029615455.a n = A178472 (n + 1)

theorem P12067930664029615455.correct : P12067930664029615455.Spec := by
  intro n
  simp only [A178472, Nat.add_sub_cancel]

end A178472

/-! ## A178472.P15377430990104486855

`2^n-∑{d}[n+1, A008683((n+1)/#)*2^(#-1)]`
-/

namespace A178472.P15377430990104486855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) - ∑ d ∈ Nat.divisors (f1 n), (A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat : ℚ) * (2 : ℚ) ^ ((d : ℤ) - 1 : ℤ)

end

end A178472.P15377430990104486855

namespace A178472

/-- `2^n-∑{d}[n+1, A008683((n+1)/#)*2^(#-1)]` -/
def P15377430990104486855.Spec : Prop :=
  ∀ n, P15377430990104486855.a n = (A178472 (n + 1) : ℚ)

end A178472

/-! ## A178472.P13420847945561689765

`∑{d}[n+1, A008683(#)*A247146((n+1)/#)]`
-/

namespace A178472.P13420847945561689765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A247146 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A178472.P13420847945561689765

namespace A178472

/-- `∑{d}[n+1, A008683(#)*A247146((n+1)/#)]` -/
def P13420847945561689765.Spec : Prop :=
  ∀ n, P13420847945561689765.a n = A178472 (n + 1)

end A178472

/-! ## A178472.P548910442072032438

`∑[Δ[A152061(n)]/2]`
-/

namespace A178472.P548910442072032438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152061 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178472.P548910442072032438

namespace A178472

/-- `∑[Δ[A152061(n)]/2]` -/
def P548910442072032438.Spec : Prop :=
  ∀ n, P548910442072032438.a n = (A178472 (n + 1) : ℚ)

end A178472

/-! ## A178472.P4960015313522024381

`A212804(n+1)-A337450(n+1)`
-/

namespace A178472.P4960015313522024381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) - A337450 (n + 1)

end

end A178472.P4960015313522024381

namespace A178472

/-- `A212804(n+1)-A337450(n+1)` -/
def P4960015313522024381.Spec : Prop :=
  ∀ n, P4960015313522024381.a n = A178472 (n + 1)

end A178472

/-! ## A178472.P15141797689749962452

`A155559(n)-A056278(n+1)`
-/

namespace A178472.P15141797689749962452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n - A056278 (n + 1)

end

end A178472.P15141797689749962452

namespace A178472

/-- `A155559(n)-A056278(n+1)` -/
def P15141797689749962452.Spec : Prop :=
  ∀ n, P15141797689749962452.a n = A178472 (n + 1)

end A178472

/-! ## A178472.P2671609214533331431

`abs(A000740(n+1)-A000079(n))`
-/

namespace A178472.P2671609214533331431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000740 (n + 1) - A000079 n|

end

end A178472.P2671609214533331431

namespace A178472

/-- `abs(A000740(n+1)-A000079(n))` -/
def P2671609214533331431.Spec : Prop :=
  ∀ n, P2671609214533331431.a n = A178472 (n + 1)

end A178472

/-! ## A178472.P3202110177881775220

`A000225(n)+1-A000740(n+1)`
-/

namespace A178472.P3202110177881775220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - A000740 (n + 1))

end

end A178472.P3202110177881775220

namespace A178472

/-- `A000225(n)+1-A000740(n+1)` -/
def P3202110177881775220.Spec : Prop :=
  ∀ n, P3202110177881775220.a n = A178472 (n + 1)

theorem P3202110177881775220.correct : P3202110177881775220.Spec := by
  intro n
  simp only [A178472, Nat.add_sub_cancel, A178472.P3202110177881775220.a, A178472.P12067930664029615455.a, A000225, A000225.P6535533121115206393.a, A000740, A000740.P14835443835842648949.a, A027375, A027375.P9636017658255068744.f1, A027375.P9636017658255068744.a, A008683, A008683.P18254306604665478110.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178472

/-! ## A178472.P2710765303465305313

`A000918(n)+2-A000740(n+1)`
-/

namespace A178472.P2710765303465305313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n + (2 - A000740 (n + 1))

end

end A178472.P2710765303465305313

namespace A178472

/-- `A000918(n)+2-A000740(n+1)` -/
def P2710765303465305313.Spec : Prop :=
  ∀ n, P2710765303465305313.a n = A178472 (n + 1)

theorem P2710765303465305313.correct : P2710765303465305313.Spec := by
  intro n
  simp only [A178472, Nat.add_sub_cancel, A178472.P2710765303465305313.a, A178472.P12067930664029615455.a, A000740, A000740.P14835443835842648949.a, A000918, A000918.P14329454465793069288.a, A027375, A027375.P9636017658255068744.f1, A027375.P9636017658255068744.a, A008683, A008683.P18254306604665478110.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178472

/-! ## A178472.P1111620606907912802

`abs(A056278(n+1)-A127904(n+1))-1`
-/

namespace A178472.P1111620606907912802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056278 (n + 1) - A127904 (n + 1)| - 1

end

end A178472.P1111620606907912802

namespace A178472

/-- `abs(A056278(n+1)-A127904(n+1))-1` -/
def P1111620606907912802.Spec : Prop :=
  ∀ n, P1111620606907912802.a n = A178472 (n + 1)

end A178472

/-! ## A178472.P15020550656729437806

`∑{d}[n+1, A011946(#)*A296066((n+1)/#)]`
-/

namespace A178472.P15020550656729437806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A011946 d * A296066 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A178472.P15020550656729437806

namespace A178472

/-- `∑{d}[n+1, A011946(#)*A296066((n+1)/#)]` -/
def P15020550656729437806.Spec : Prop :=
  ∀ n, P15020550656729437806.a n = A178472 (n + 1)

end A178472

/-! ## A178472.P16611163457560998026

`∑{d}[n+1, A051953(#)*A349570((n+1)/#)]`
-/

namespace A178472.P16611163457560998026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051953 d * A349570 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A178472.P16611163457560998026

namespace A178472

/-- `∑{d}[n+1, A051953(#)*A349570((n+1)/#)]` -/
def P16611163457560998026.Spec : Prop :=
  ∀ n, P16611163457560998026.a n = A178472 (n + 1)

end A178472

/-! ## A178472.P12681991468864845144

`∑{d}[n+1, A000740(#)*A057427((n+1)/#-1)]`
-/

namespace A178472.P12681991468864845144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000740 d * A057427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A178472.P12681991468864845144

namespace A178472

/-- `∑{d}[n+1, A000740(#)*A057427((n+1)/#-1)]` -/
def P12681991468864845144.Spec : Prop :=
  ∀ n, P12681991468864845144.a n = A178472 (n + 1)

end A178472

/-! ## A178472.P1531249621255579244

`∑{d}[n+1, A000079(#-1)*A157658((n+1)/#)]`
-/

namespace A178472.P1531249621255579244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000079 (d - 1) * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A178472.P1531249621255579244

namespace A178472

/-- `∑{d}[n+1, A000079(#-1)*A157658((n+1)/#)]` -/
def P1531249621255579244.Spec : Prop :=
  ∀ n, P1531249621255579244.a n = A178472 (n + 1)

end A178472

/-! ## A178472.P2128761623698846326

`A001045(n+1)+A001045(n)-A000740(n+1)`
-/

namespace A178472.P2128761623698846326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) + (A001045 n - A000740 (n + 1))

end

end A178472.P2128761623698846326

namespace A178472

/-- `A001045(n+1)+A001045(n)-A000740(n+1)` -/
def P2128761623698846326.Spec : Prop :=
  ∀ n, P2128761623698846326.a n = A178472 (n + 1)

end A178472

/-! ## A178472.P5020544981326051287

`A008965(n+1)+A329145(n+1)-A000740(n+1)`
-/

namespace A178472.P5020544981326051287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008965 (n + 1) + (A329145 (n + 1) - A000740 (n + 1))

end

end A178472.P5020544981326051287

namespace A178472

/-- `A008965(n+1)+A329145(n+1)-A000740(n+1)` -/
def P5020544981326051287.Spec : Prop :=
  ∀ n, P5020544981326051287.a n = A178472 (n + 1)

theorem P5020544981326051287.correct : P5020544981326051287.Spec := by
  intro n
  simp only [A178472, Nat.add_sub_cancel, A178472.P5020544981326051287.a, A178472.P12067930664029615455.a, A000740, A000740.P14835443835842648949.a, A008965, A008965.P16924218572130557635.a, A329145, A329145.P597576007734421068.a, A000031, A000031.P16543801865445953573.f1, A000031.P16543801865445953573.a, A027375, A027375.P9636017658255068744.f1, A027375.P9636017658255068744.a, A008683, A008683.P18254306604665478110.a, A059966, A059966.P16360813507758205577.f1, A059966.P16360813507758205577.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178472

/-! ## A178472.P13485774840124870474

`(A000079(n+1)-A027375(n+1))/2`
-/

namespace A178472.P13485774840124870474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) - A027375 (n + 1) : ℚ) / 2

end

end A178472.P13485774840124870474

namespace A178472

/-- `(A000079(n+1)-A027375(n+1))/2` -/
def P13485774840124870474.Spec : Prop :=
  ∀ n, P13485774840124870474.a n = (A178472 (n + 1) : ℚ)

end A178472

/-! ## A178472.P170656193164682781

`A011782(n+1)-A027375(n+1)/2`
-/

namespace A178472.P170656193164682781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (n + 1) : ℚ) - (A027375 (n + 1) : ℚ) / 2

end

end A178472.P170656193164682781

namespace A178472

/-- `A011782(n+1)-A027375(n+1)/2` -/
def P170656193164682781.Spec : Prop :=
  ∀ n, P170656193164682781.a n = (A178472 (n + 1) : ℚ)

end A178472

/-! ## A178472.P1553323662074635672

`A131577(n+1)-A027375(n+1)/2`
-/

namespace A178472.P1553323662074635672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131577 (n + 1) : ℚ) - (A027375 (n + 1) : ℚ) / 2

end

end A178472.P1553323662074635672

namespace A178472

/-- `A131577(n+1)-A027375(n+1)/2` -/
def P1553323662074635672.Spec : Prop :=
  ∀ n, P1553323662074635672.a n = (A178472 (n + 1) : ℚ)

end A178472

/-!
# A178473: For n>=0, let n!^(4) = A202369(n+1) and, for 0<=m<=n, C^(4)(n,m) = n!^(4)/(m!^(4)*(n-m)!^(4)). The sequence gives triangle of numbers C^(4)(n,m) with rows of length n+1.

The programs for A178473, there is no canonical definition to state claims against.
-/

/-! ## A178473.P15345481651274012646

`∏{p}[A180662(A024493(n)), #]`
-/

namespace A178473.P15345481651274012646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180662 (A024493 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A178473.P15345481651274012646

/-! ## A178473.P2300362467169086808

`A022180(n)%p?[A005290(n)]`
-/

namespace A178473.P2300362467169086808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022180 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A178473.P2300362467169086808

/-! ## A178473.P3322519266971771804

`∏{p}[A008618(17^A276777(n)), #]`
-/

namespace A178473.P3322519266971771804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (SequenceMachineLib.roundAway ((17 : ℚ) ^ (A276777 n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A178473.P3322519266971771804

/-! ## A178473.P4772495188554916715

`∏{p}[A015141(A032559(n+1)-1), #]`
-/

namespace A178473.P4772495188554916715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015141 (A032559 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A178473.P4772495188554916715

/-! ## A178473.P15132044844968870825

`A102537(A354675(2*a(n-2)))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=1`
-/

namespace A178473.P15132044844968870825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 2, 1] fun n a =>
  A102537 (A354675 (2 * a (n - 2)).toNat).toNat

end

end A178473.P15132044844968870825

/-!
# A178474: Triangle T(n,m) read by rows: the denominator of the coefficient [x^m] of the inverse Euler polynomial E^{-1}(n,x), 0<=m<=n.

The programs for A178474, the canonical program `A178474.P4753274214124290616` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178474 has offset 0).

The definition of A178474 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178474.P12685339796608490533

`gcd(3*char[∑[n-1]]-2, ∑[C(round(sqrt(2*n)), C(comp[∑[n]]-n, 2)-n)])`
-/

namespace A178474.P12685339796608490533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((3 * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ) - 2) ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A178474.P12685339796608490533

namespace A178474

/-- `gcd(3*char[∑[n-1]]-2, ∑[C(round(sqrt(2*n)), C(comp[∑[n]]-n, 2)-n)])` -/
def P12685339796608490533.Spec : Prop :=
  ∀ n, (P12685339796608490533.a n : ℤ) = A178474 n

end A178474

/-! ## A178474.P10418312577676294198

`char[comp[∑[n-1]]]+and(1, ∑[C(∑[char[∑[n]]], n-C(∑[char[∑[n]]], 2))]+comp[∑[n]]-n)`
-/

namespace A178474.P10418312577676294198
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

open Classical in
def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f6 j = n then 1 else 0

def f10 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f10 j

open Classical in
def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f9 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f5 j) ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f8 j) 2 : ℤ)).toNat

def f12 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f11 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f12 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + Int.land 1 (((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ) + ((SequenceMachineLib.nth (fun x => ∀ j, f11 j ≠ x) n : ℤ) - (n : ℤ)))

end

end A178474.P10418312577676294198

namespace A178474

/-- `char[comp[∑[n-1]]]+and(1, ∑[C(∑[char[∑[n]]], n-C(∑[char[∑[n]]], 2))]+comp[∑[n]]-n)` -/
def P10418312577676294198.Spec : Prop :=
  ∀ n, P10418312577676294198.a n = A178474 n

end A178474

/-! ## A178474.P16562183366275498662

`gcd(2, A104795(n))`
-/

namespace A178474.P16562183366275498662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A104795 n)

end

end A178474.P16562183366275498662

namespace A178474

/-- `gcd(2, A104795(n))` -/
def P16562183366275498662.Spec : Prop :=
  ∀ n, (P16562183366275498662.a n : ℤ) = A178474 n

end A178474

/-! ## A178474.P4753274214124290616

`∏{p}[A166453(n), #]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A178474

/-- `∏{p}[A166453(n), #]` -/
def P4753274214124290616.Spec : Prop :=
  ∀ n, (P4753274214124290616.a n : ℤ) = A178474 n

theorem P4753274214124290616.correct : P4753274214124290616.Spec := by
  intro n
  simp only [A178474]

end A178474

/-! ## A178474.P14781093684038217104

`(A078937(n)%4)!`
-/

namespace A178474.P14781093684038217104
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.tmod (A078937 n) 4).toNat

end

end A178474.P14781093684038217104

namespace A178474

/-- `(A078937(n)%4)!` -/
def P14781093684038217104.Spec : Prop :=
  ∀ n, (P14781093684038217104.a n : ℤ) = A178474 n

end A178474

/-! ## A178474.P11322981728196742728

`(A131114(n)%4)!`
-/

namespace A178474.P11322981728196742728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.tmod (A131114 n) 4).toNat

end

end A178474.P11322981728196742728

namespace A178474

/-- `(A131114(n)%4)!` -/
def P11322981728196742728.Spec : Prop :=
  ∀ n, (P11322981728196742728.a n : ℤ) = A178474 n

end A178474

/-! ## A178474.P18314126507430833989

`C(2, A050600(n))!`
-/

namespace A178474.P18314126507430833989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.choose 2 (A050600 n).toNat)

end

end A178474.P18314126507430833989

namespace A178474

/-- `C(2, A050600(n))!` -/
def P18314126507430833989.Spec : Prop :=
  ∀ n, (P18314126507430833989.a n : ℤ) = A178474 n

end A178474

/-! ## A178474.P6703088055101888791

`and(2, A131127(n))!`
-/

namespace A178474.P6703088055101888791
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.land 2 (A131127 n)).toNat

end

end A178474.P6703088055101888791

namespace A178474

/-- `and(2, A131127(n))!` -/
def P6703088055101888791.Spec : Prop :=
  ∀ n, (P6703088055101888791.a n : ℤ) = A178474 n

end A178474

/-! ## A178474.P14328902765097668412

`and(1, A255935(n))+1`
-/

namespace A178474.P14328902765097668412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A255935 n) + 1

end

end A178474.P14328902765097668412

namespace A178474

/-- `and(1, A255935(n))+1` -/
def P14328902765097668412.Spec : Prop :=
  ∀ n, P14328902765097668412.a n = A178474 n

end A178474

/-! ## A178474.P13421470055899693309

`2-and(1, A211183(n))`
-/

namespace A178474.P13421470055899693309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.land 1 (A211183 n)

end

end A178474.P13421470055899693309

namespace A178474

/-- `2-and(1, A211183(n))` -/
def P13421470055899693309.Spec : Prop :=
  ∀ n, P13421470055899693309.a n = A178474 n

end A178474

/-! ## A178474.P2450303001567746615

`A029656(n+2)%2+1`
-/

namespace A178474.P2450303001567746615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029656 (n + 2)) 2 + 1

end

end A178474.P2450303001567746615

namespace A178474

/-- `A029656(n+2)%2+1` -/
def P2450303001567746615.Spec : Prop :=
  ∀ n, P2450303001567746615.a n = A178474 n

end A178474

/-! ## A178474.P5033460196859772930

`char[comp[∑[n-1]]]+A007318(n)%2`
-/

namespace A178474.P5033460196859772930
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + Int.tmod (A007318 n) 2

end

end A178474.P5033460196859772930

namespace A178474

/-- `char[comp[∑[n-1]]]+A007318(n)%2` -/
def P5033460196859772930.Spec : Prop :=
  ∀ n, P5033460196859772930.a n = A178474 n

end A178474

/-! ## A178474.P4028710398073128906

`char[comp[∑[n-1]]]+and(1, A007318(2*n-n))`
-/

namespace A178474.P4028710398073128906
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + Int.land 1 (A007318 (2 * n - n))

end

end A178474.P4028710398073128906

namespace A178474

/-- `char[comp[∑[n-1]]]+and(1, A007318(2*n-n))` -/
def P4028710398073128906.Spec : Prop :=
  ∀ n, P4028710398073128906.a n = A178474 n

end A178474

/-! ## A178474.P4209602578183346130

`A014709(A129994(n))`
-/

namespace A178474.P4209602578183346130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014709 (A129994 n).toNat

end

end A178474.P4209602578183346130

namespace A178474

/-- `A014709(A129994(n))` -/
def P4209602578183346130.Spec : Prop :=
  ∀ n, P4209602578183346130.a n = A178474 n

end A178474

/-! ## A178474.P1570405977537444676

`A040001(A104795(n))`
-/

namespace A178474.P1570405977537444676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A104795 n).toNat

end

end A178474.P1570405977537444676

namespace A178474

/-- `A040001(A104795(n))` -/
def P1570405977537444676.Spec : Prop :=
  ∀ n, P1570405977537444676.a n = A178474 n

end A178474

/-! ## A178474.P11956031930128268527

`A007461(A166453(n))`
-/

namespace A178474.P11956031930128268527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007461 (A166453 n).toNat

end

end A178474.P11956031930128268527

namespace A178474

/-- `A007461(A166453(n))` -/
def P11956031930128268527.Spec : Prop :=
  ∀ n, P11956031930128268527.a n = A178474 n

end A178474

/-! ## A178474.P12933691089944324605

`A057237(A131111(n))`
-/

namespace A178474.P12933691089944324605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (A131111 n).toNat

end

end A178474.P12933691089944324605

namespace A178474

/-- `A057237(A131111(n))` -/
def P12933691089944324605.Spec : Prop :=
  ∀ n, P12933691089944324605.a n = A178474 n

end A178474

/-! ## A178474.P8186073627872446353

`A000034(A255935(n))`
-/

namespace A178474.P8186073627872446353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A255935 n).toNat

end

end A178474.P8186073627872446353

namespace A178474

/-- `A000034(A255935(n))` -/
def P8186073627872446353.Spec : Prop :=
  ∀ n, P8186073627872446353.a n = A178474 n

end A178474

/-! ## A178474.P2465481044787471459

`A130658(A131127(n))`
-/

namespace A178474.P2465481044787471459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130658 (A131127 n).toNat

end

end A178474.P2465481044787471459

namespace A178474

/-- `A130658(A131127(n))` -/
def P2465481044787471459.Spec : Prop :=
  ∀ n, P2465481044787471459.a n = A178474 n

end A178474

/-! ## A178474.P16403442365074176896

`A000034(A198321(n+1))`
-/

namespace A178474.P16403442365074176896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A198321 (n + 1)).toNat

end

end A178474.P16403442365074176896

namespace A178474

/-- `A000034(A198321(n+1))` -/
def P16403442365074176896.Spec : Prop :=
  ∀ n, P16403442365074176896.a n = A178474 n

end A178474

/-!
# A178475: Permutations of 12345: Numbers having each of the decimal digits 1,...,5 exactly once, and no other digit.

The programs for A178475, there is no canonical definition to state claims against.
-/

/-! ## A178475.P7059844675393857490

`A030299(n+34)`
-/

namespace A178475.P7059844675393857490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030299 (n + 34)

end

end A178475.P7059844675393857490

/-! ## A178475.P13866327149104966326

`6+9*A178485(n+1)`
-/

namespace A178475.P13866327149104966326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 + 9 * A178485 (n + 1)

end

end A178475.P13866327149104966326

/-! ## A178475.P14229690660521809626

`A001729(A023744(n+1))`
-/

namespace A178475.P14229690660521809626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (A023744 (n + 1)).toNat

end

end A178475.P14229690660521809626

/-! ## A178475.P9529237804904454358

`A017233(A178485(n+1))`
-/

namespace A178475.P9529237804904454358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017233 (A178485 (n + 1)).toNat

end

end A178475.P9529237804904454358

/-! ## A178475.P7769184671142563257

`A007092(lcm(5, A023744(n+1)))`
-/

namespace A178475.P7769184671142563257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (Int.lcm 5 (A023744 (n + 1)))

end

end A178475.P7769184671142563257

/-! ## A178475.P16893178160297246320

`∩[A038528(n+1), A062040(n+1)]`
-/

namespace A178475.P16893178160297246320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178475.P16893178160297246320

/-! ## A178475.P4627663155268563266

`∩[A062040(n+1), A227073(n+1)]`
-/

namespace A178475.P4627663155268563266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178475.P4627663155268563266

/-! ## A178475.P11031925307530030321

`∩[A062040(n+1), A240763(n+1)]`
-/

namespace A178475.P11031925307530030321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178475.P11031925307530030321

/-! ## A178475.P1935546794139279787

`A007092(or(A000007(n), A023744(n+1)))`
-/

namespace A178475.P1935546794139279787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (Int.lor (A000007 n) (A023744 (n + 1))).toNat

end

end A178475.P1935546794139279787

/-! ## A178475.P5051538536064764333

`A014963(A008458(n))*A007092(A023744(n+1))`
-/

namespace A178475.P5051538536064764333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat * A007092 (A023744 (n + 1)).toNat

end

end A178475.P5051538536064764333

/-! ## A178475.P18221511288447756302

`A001222(A048161(n+1))*A007092(A023744(n+1))`
-/

namespace A178475.P18221511288447756302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A048161 (n + 1)).toNat * A007092 (A023744 (n + 1)).toNat

end

end A178475.P18221511288447756302

/-! ## A178475.P1617422689618002332

`A014963(A000217(n+6))*A007092(A023744(n+1))`
-/

namespace A178475.P1617422689618002332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (n + 6)).toNat * A007092 (A023744 (n + 1)).toNat

end

end A178475.P1617422689618002332

/-! ## A178475.P9990429038947453235

`A015637(A093421(n+1))+A007092(A023744(n+1))`
-/

namespace A178475.P9990429038947453235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015637 (A093421 (n + 1)).toNat + A007092 (A023744 (n + 1)).toNat

end

end A178475.P9990429038947453235

/-!
# A178476: Permutations of 123456: Numbers having each of the decimal digits 1,...,6 exactly once, and no other digit.

The programs for A178476, there is no canonical definition to state claims against.
-/

/-! ## A178476.P16957733031057202130

`A030299(n+1+153)`
-/

namespace A178476.P16957733031057202130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030299 (n + 1 + 153)

end

end A178476.P16957733031057202130

/-! ## A178476.P11788398383442905330

`3+9*A178486(n+1)`
-/

namespace A178476.P11788398383442905330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 + 9 * A178486 (n + 1)

end

end A178476.P11788398383442905330

/-!
# A178477: Permutations of 1234567: Numbers having each of the decimal digits 1,...,7 exactly once, and no other digit.

The programs for A178477, there is no canonical definition to state claims against.
-/

/-! ## A178477.P7039405625134901691

`9*A191819(n+1)+1`
-/

namespace A178477.P7039405625134901691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A191819 (n + 1) + 1

end

end A178477.P7039405625134901691

/-!
# A178478: Permutations of 12345678: Numbers having each of the decimal digits 1..8 exactly once, and no other digit.

The programs for A178478, there is no canonical definition to state claims against.
-/

/-! ## A178478.P6403211663476870787

`9*A191820(n+1)`
-/

namespace A178478.P6403211663476870787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A191820 (n + 1)

end

end A178478.P6403211663476870787

/-! ## A178478.P17532854643637091036

`A050278(n+1)%(A171571(n+1)-A191820(n+1))`
-/

namespace A178478.P17532854643637091036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050278 (n + 1)) (A171571 (n + 1) - A191820 (n + 1))

end

end A178478.P17532854643637091036

/-! ## A178478.P12405070300883051444

`record[9*A191820(A152271(n))]`
-/

namespace A178478.P12405070300883051444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A191820 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178478.P12405070300883051444

/-!
# A178482: Phi-antipalindromic numbers.

The programs for A178482, the canonical program `A178482.P3084981656249753860` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178482 has offset 1).

The definition of A178482 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178482.P3084981656249753860

`∑[A169986(A004275(val(n+1, 2)))]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A178482

/-- `∑[A169986(A004275(val(n+1, 2)))]` -/
def P3084981656249753860.Spec : Prop :=
  ∀ n, P3084981656249753860.a n = A178482 (n + 1)

theorem P3084981656249753860.correct : P3084981656249753860.Spec := by
  intro n
  simp only [A178482, Nat.add_sub_cancel]

end A178482

/-! ## A178482.P9760195363020410233

`∪[A171070(n+1), A171071(n+1)]`
-/

namespace A178482.P9760195363020410233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A178482.P9760195363020410233

namespace A178482

/-- `∪[A171070(n+1), A171071(n+1)]` -/
def P9760195363020410233.Spec : Prop :=
  ∀ n, (P9760195363020410233.a n : ℤ) = A178482 (n + 1)

end A178482

/-! ## A178482.P15635688177505867197

`∑[A061084(val((n+1)*A301291(n+1), 2))]`
-/

namespace A178482.P15635688177505867197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 (SequenceMachineLib.valuation ((n + 1 : ℤ) * A301291 (n + 1)).toNat 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178482.P15635688177505867197

namespace A178482

/-- `∑[A061084(val((n+1)*A301291(n+1), 2))]` -/
def P15635688177505867197.Spec : Prop :=
  ∀ n, P15635688177505867197.a n = A178482 (n + 1)

end A178482

/-! ## A178482.P11935693387782855760

`A062877(floor((n+1)/2))+A062877(n+1)`
-/

namespace A178482.P11935693387782855760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062877 ⌊(n + 1 : ℚ) / 2⌋.toNat + A062877 (n + 1)

end

end A178482.P11935693387782855760

namespace A178482

/-- `A062877(floor((n+1)/2))+A062877(n+1)` -/
def P11935693387782855760.Spec : Prop :=
  ∀ n, P11935693387782855760.a n = A178482 (n + 1)

end A178482

/-! ## A178482.P15194443746280811883

`A063732(A036796(n+1))`
-/

namespace A178482.P15194443746280811883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063732 (A036796 (n + 1)).toNat

end

end A178482.P15194443746280811883

namespace A178482

/-- `A063732(A036796(n+1))` -/
def P15194443746280811883.Spec : Prop :=
  ∀ n, P15194443746280811883.a n = A178482 (n + 1)

end A178482

/-! ## A178482.P17314158799788587771

`∑[A189663(Δ[A171070(n+1)])]`
-/

namespace A178482.P17314158799788587771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171070 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178482.P17314158799788587771

namespace A178482

/-- `∑[A189663(Δ[A171070(n+1)])]` -/
def P17314158799788587771.Spec : Prop :=
  ∀ n, P17314158799788587771.a n = A178482 (n + 1)

end A178482

/-! ## A178482.P10155125575487878927

`A189663(A171071(n+1))`
-/

namespace A178482.P10155125575487878927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A171071 (n + 1)).toNat

end

end A178482.P10155125575487878927

namespace A178482

/-- `A189663(A171071(n+1))` -/
def P10155125575487878927.Spec : Prop :=
  ∀ n, P10155125575487878927.a n = A178482 (n + 1)

end A178482

/-! ## A178482.P1948384953305857178

`A189663(A171070(n+2)-1)`
-/

namespace A178482.P1948384953305857178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A171070 (n + 2) - 1).toNat

end

end A178482.P1948384953305857178

namespace A178482

/-- `A189663(A171070(n+2)-1)` -/
def P1948384953305857178.Spec : Prop :=
  ∀ n, P1948384953305857178.a n = A178482 (n + 1)

end A178482

/-! ## A178482.P3900593838419442930

`∑[A007305(Δ[A000695(n)]+1)]`
-/

namespace A178482.P3900593838419442930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178482.P3900593838419442930

namespace A178482

/-- `∑[A007305(Δ[A000695(n)]+1)]` -/
def P3900593838419442930.Spec : Prop :=
  ∀ n, P3900593838419442930.a n = A178482 (n + 1)

end A178482

/-!
# A178483: For n=1,2,... list all products of the first n primes raised to some nonnegative power less than n.

The programs for A178483, there is no canonical definition to state claims against.
-/

/-! ## A178483.P12636228836961461494

`A000189(A178480(n+2))`
-/

namespace A178483.P12636228836961461494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000189 (A178480 (n + 2)).toNat

end

end A178483.P12636228836961461494

/-! ## A178483.P3109154885398709733

`A003557(lcm(2, A178480(n+2)))`
-/

namespace A178483.P3109154885398709733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (Int.lcm 2 (A178480 (n + 2)))

end

end A178483.P3109154885398709733

/-! ## A178483.P5204462286168773286

`A007318(∑[n])*A003557(A178480(n+2))`
-/

namespace A178483.P5204462286168773286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A003557 (A178480 (n + 2)).toNat

end

end A178483.P5204462286168773286

/-! ## A178483.P3588549859487203801

`A003557(A178480(n+2)%A046396(n+1))`
-/

namespace A178483.P3588549859487203801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (Int.tmod (A178480 (n + 2)) (A046396 (n + 1))).toNat

end

end A178483.P3588549859487203801

/-!
# A178485: (A178475(n)-6)/9.

The programs for A178485, there is no canonical definition to state claims against.
-/

/-! ## A178485.P11881221331504484003

`(A178475(n+1)-6)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A178485.P11881221331504484003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178475 (n + 1) - 6 : ℚ) / 9

end

end A178485.P11881221331504484003

/-! ## A178485.P9328005208082480268

`floor(A178475(n+1)/9)`
-/

namespace A178485.P9328005208082480268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A178475 (n + 1) : ℚ) / 9⌋

end

end A178485.P9328005208082480268

/-! ## A178485.P15400714357824111451

`floor(A030299(n+34)/9)`
-/

namespace A178485.P15400714357824111451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A030299 (n + 34) : ℚ) / 9⌋

end

end A178485.P15400714357824111451

/-! ## A178485.P17517192183263631870

`floor(A001729(A023744(n+1))/9)`
-/

namespace A178485.P17517192183263631870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001729 (A023744 (n + 1)).toNat : ℚ) / 9⌋

end

end A178485.P17517192183263631870

/-! ## A178485.P14397173353014235438

`floor(A007092(lcm(5, A023744(n+1)))/9)`
-/

namespace A178485.P14397173353014235438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007092 (Int.lcm 5 (A023744 (n + 1))) : ℚ) / 9⌋

end

end A178485.P14397173353014235438

/-!
# A178486: (A178476(n)-3)/9.

The programs for A178486, there is no canonical definition to state claims against.
-/

/-! ## A178486.P16537332614672153514

`(A178476(n+1)-3)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A178486.P16537332614672153514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178476 (n + 1) - 3 : ℚ) / 9

end

end A178486.P16537332614672153514

/-! ## A178486.P10413670713726518652

`floor(A178476(n+1)/9)`
-/

namespace A178486.P10413670713726518652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A178476 (n + 1) : ℚ) / 9⌋

end

end A178486.P10413670713726518652

/-! ## A178486.P9180801381356608595

`round(A178476(n*A057427(n)+1)/9)`
-/

namespace A178486.P9180801381356608595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A178476 ((n : ℤ) * A057427 n + 1).toNat : ℚ) / 9)

end

end A178486.P9180801381356608595

/-! ## A178486.P8354490147636961649

`or(round(A178476(n+1)/9), A000007(n))`
-/

namespace A178486.P8354490147636961649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A178476 (n + 1) : ℚ) / 9)) (A000007 n)

end

end A178486.P8354490147636961649

/-! ## A178486.P1545954228954324982

`round(A178476(n+1)/A107346(A133707(n+1)))`
-/

namespace A178486.P1545954228954324982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A178476 (n + 1) : ℚ) / (A107346 (A133707 (n + 1)).toNat : ℚ))

end

end A178486.P1545954228954324982

/-! ## A178486.P5282040401233703908

`A112952(A031195(n))+round(A178476(n+1)/9)`
-/

namespace A178486.P5282040401233703908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112952 (A031195 n).toNat + SequenceMachineLib.roundAway ((A178476 (n + 1) : ℚ) / 9)

end

end A178486.P5282040401233703908

/-! ## A178486.P15951186394242929521

`round(A178476(n+1)/9*A088705(A175684(n)))`
-/

namespace A178486.P15951186394242929521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A178476 (n + 1) : ℚ) / 9 * (A088705 (A175684 n).toNat : ℚ))

end

end A178486.P15951186394242929521

/-! ## A178486.P1767493186718310679

`round(A178476(n+1)/9*A013610(∑[n]))`
-/

namespace A178486.P1767493186718310679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A178476 (n + 1) : ℚ) / 9 * (A013610 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ))

end

end A178486.P1767493186718310679

/-!
# A178487: a(n) = floor(n^(1/5)): integer part of fifth root of n.

The programs for A178487, the canonical program `A178487.P14814538202324419155` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178487 has offset 0).

The definition of A178487 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n^(1/5))` (program `A178487.P14814538202324419155`, by `A178487.P14814538202324419155.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A178487.P14814538202324419155

`floor(n^(1/5))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A178487

/-- `floor(n^(1/5))` -/
def P14814538202324419155.Spec : Prop :=
  ∀ n, P14814538202324419155.a n = A178487 n

theorem P14814538202324419155.correct : P14814538202324419155.Spec := by
  intro n
  simp only [A178487]

end A178487

/-! ## A178487.P13261713331797662552

`dr(∑[char[n^5]])-1`
-/

namespace A178487.P13261713331797662552
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ) - 1

end

end A178487.P13261713331797662552

namespace A178487

/-- `dr(∑[char[n^5]])-1` -/
def P13261713331797662552.Spec : Prop :=
  ∀ n, P13261713331797662552.a n = A178487 n

end A178487

/-! ## A178487.P9184049305640350345

`∑[char[(xor(1, n)+1)^5]]`
-/

namespace A178487.P9184049305640350345
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n + 1) ^ 5

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178487.P9184049305640350345

namespace A178487

/-- `∑[char[(xor(1, n)+1)^5]]` -/
def P9184049305640350345.Spec : Prop :=
  ∀ n, (P9184049305640350345.a n : ℤ) = A178487 n

end A178487

/-! ## A178487.P16179596589056783084

`∑[char[xor(1, n)^5]]-1`
-/

namespace A178487.P16179596589056783084
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n ^ 5

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A178487.P16179596589056783084

namespace A178487

/-- `∑[char[xor(1, n)^5]]-1` -/
def P16179596589056783084.Spec : Prop :=
  ∀ n, P16179596589056783084.a n = A178487 n

end A178487

/-! ## A178487.P14188733204793607308

`∑[char[∑[n%2]^5]]-1`
-/

namespace A178487.P14188733204793607308
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ 5

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A178487.P14188733204793607308

namespace A178487

/-- `∑[char[∑[n%2]^5]]-1` -/
def P14188733204793607308.Spec : Prop :=
  ∀ n, P14188733204793607308.a n = A178487 n

end A178487

/-! ## A178487.P9794306313096449263

`dr(∑[char[(n+1)*(n+1)²²]])`
-/

namespace A178487.P9794306313096449263
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * ((n + 1) ^ 2) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A178487.P9794306313096449263

namespace A178487

/-- `dr(∑[char[(n+1)*(n+1)²²]])` -/
def P9794306313096449263.Spec : Prop :=
  ∀ n, (P9794306313096449263.a n : ℤ) = A178487 n

end A178487

/-! ## A178487.P1103017888583895270

`∑[char[∑[A022521(n)]]]`
-/

namespace A178487.P1103017888583895270
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022521 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178487.P1103017888583895270

namespace A178487

/-- `∑[char[∑[A022521(n)]]]` -/
def P1103017888583895270.Spec : Prop :=
  ∀ n, (P1103017888583895270.a n : ℤ) = A178487 n

end A178487

/-! ## A178487.P886646301542812105

`∑[char[A000584(n+1)]]`
-/

namespace A178487.P886646301542812105
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178487.P886646301542812105

namespace A178487

/-- `∑[char[A000584(n+1)]]` -/
def P886646301542812105.Spec : Prop :=
  ∀ n, (P886646301542812105.a n : ℤ) = A178487 n

end A178487

/-! ## A178487.P10552304452989018758

`∑[char[A000584(n)]]-1`
-/

namespace A178487.P10552304452989018758
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A178487.P10552304452989018758

namespace A178487

/-- `∑[char[A000584(n)]]-1` -/
def P10552304452989018758.Spec : Prop :=
  ∀ n, P10552304452989018758.a n = A178487 n

end A178487

/-! ## A178487.P18042612113059069003

`∑[char[A007318(n)^5]]`
-/

namespace A178487.P18042612113059069003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n ^ 5

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178487.P18042612113059069003

namespace A178487

/-- `∑[char[A007318(n)^5]]` -/
def P18042612113059069003.Spec : Prop :=
  ∀ n, (P18042612113059069003.a n : ℤ) = A178487 n

end A178487

/-! ## A178487.P7341772559623707338

`∑[char[A258807(n+1)+1]]`
-/

namespace A178487.P7341772559623707338
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258807 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178487.P7341772559623707338

namespace A178487

/-- `∑[char[A258807(n+1)+1]]` -/
def P7341772559623707338.Spec : Prop :=
  ∀ n, (P7341772559623707338.a n : ℤ) = A178487 n

end A178487

/-! ## A178487.P4416250407160755438

`∑[char[A000027((n+1)^5)]]`
-/

namespace A178487.P4416250407160755438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((n + 1) ^ 5)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178487.P4416250407160755438

namespace A178487

/-- `∑[char[A000027((n+1)^5)]]` -/
def P4416250407160755438.Spec : Prop :=
  ∀ n, (P4416250407160755438.a n : ℤ) = A178487 n

end A178487

/-! ## A178487.P11750500746820664627

`∑[char[A163285(C(n+2, 2))]]`
-/

namespace A178487.P11750500746820664627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163285 (Nat.choose (n + 2) 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178487.P11750500746820664627

namespace A178487

/-- `∑[char[A163285(C(n+2, 2))]]` -/
def P11750500746820664627.Spec : Prop :=
  ∀ n, (P11750500746820664627.a n : ℤ) = A178487 n

end A178487

/-! ## A178487.P16652988531803666834

`∑[char[n²*A000578(n)]]-1`
-/

namespace A178487.P16652988531803666834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A000578 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A178487.P16652988531803666834

namespace A178487

/-- `∑[char[n²*A000578(n)]]-1` -/
def P16652988531803666834.Spec : Prop :=
  ∀ n, P16652988531803666834.a n = A178487 n

end A178487

/-! ## A178487.P12567847088827237428

`A048766(A048766(∑[n]))`
-/

namespace A178487.P12567847088827237428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A048766 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A178487.P12567847088827237428

namespace A178487

/-- `A048766(A048766(∑[n]))` -/
def P12567847088827237428.Spec : Prop :=
  ∀ n, P12567847088827237428.a n = A178487 n

end A178487

/-! ## A178487.P17728337891351906448

`∑[A010054(A258276(n+2))]`
-/

namespace A178487.P17728337891351906448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A258276 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178487.P17728337891351906448

namespace A178487

/-- `∑[A010054(A258276(n+2))]` -/
def P17728337891351906448.Spec : Prop :=
  ∀ n, P17728337891351906448.a n = A178487 n

end A178487

/-! ## A178487.P2689943209247529361

`A178786(A122921(n-A122924(n+1)))`
-/

namespace A178487.P2689943209247529361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178786 (A122921 ((n : ℤ) - A122924 (n + 1)).toNat).toNat

end

end A178487.P2689943209247529361

namespace A178487

/-- `A178786(A122921(n-A122924(n+1)))` -/
def P2689943209247529361.Spec : Prop :=
  ∀ n, P2689943209247529361.a n = A178487 n

end A178487

/-! ## A178487.P11439147152689470863

`A130259(A130259(A130259(n²)))`
-/

namespace A178487.P11439147152689470863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130259 (A130259 (A130259 (n ^ 2)).toNat).toNat

end

end A178487.P11439147152689470863

namespace A178487

/-- `A130259(A130259(A130259(n²)))` -/
def P11439147152689470863.Spec : Prop :=
  ∀ n, P11439147152689470863.a n = A178487 n

end A178487

/-!
# A178488: Numbers k such that 8*k! + 1 is prime.

The programs for A178488, there is no canonical definition to state claims against.
-/

/-! ## A178488.P4224020417863484562

`A255805(eq[A225631(2*n+1), A319841(3*n+1)])`
-/

namespace A178488.P4224020417863484562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225631 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319841 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255805 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A178488.P4224020417863484562

/-!
# A178489: a(n) = floor(n^(1/6)): integer part of sixth root of n.

The programs for A178489, the canonical program `A178489.P4416703940732304591` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178489 has offset 0).

The definition of A178489 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n^(1/6))` (program `A178489.P4416703940732304591`, by `A178489.P4416703940732304591.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A178489.P4416703940732304591

`floor(n^(1/6))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A178489

/-- `floor(n^(1/6))` -/
def P4416703940732304591.Spec : Prop :=
  ∀ n, P4416703940732304591.a n = A178489 n

theorem P4416703940732304591.correct : P4416703940732304591.Spec := by
  intro n
  simp only [A178489]

end A178489

/-! ## A178489.P11193489635164819317

`A048766(floor(sqrt(n)))`
-/

namespace A178489.P11193489635164819317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (Nat.sqrt n)

end

end A178489.P11193489635164819317

namespace A178489

/-- `A048766(floor(sqrt(n)))` -/
def P11193489635164819317.Spec : Prop :=
  ∀ n, P11193489635164819317.a n = A178489 n

end A178489

/-! ## A178489.P1325659383395704828

`ceil(root(A000196(n)+1, 3))-1`
-/

namespace A178489.P1325659383395704828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000196 n + 1 : ℝ) ^ (1 / (3 : ℝ))⌉ - 1

end

end A178489.P1325659383395704828

namespace A178489

/-- `ceil(root(A000196(n)+1, 3))-1` -/
def P1325659383395704828.Spec : Prop :=
  ∀ n, P1325659383395704828.a n = A178489 n

end A178489

/-! ## A178489.P2881800092010979600

`A057427(n)*A074298(A217871(n))`
-/

namespace A178489.P2881800092010979600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A074298 (A217871 n).toNat

end

end A178489.P2881800092010979600

namespace A178489

/-- `A057427(n)*A074298(A217871(n))` -/
def P2881800092010979600.Spec : Prop :=
  ∀ n, P2881800092010979600.a n = A178489 n

end A178489

/-!
# A178490: Primes of the form 2*p^k-1, where p is prime and k >= 1.

The programs for A178490, there is no canonical definition to state claims against.
-/

/-! ## A178490.P6741953249547535272

`∪[A005383(n+1), A178491(n+1)]`
-/

namespace A178490.P6741953249547535272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A178490.P6741953249547535272

/-! ## A178490.P6114471971919023935

`∪[A189411(n+1), A292447(n+1)]`
-/

namespace A178490.P6114471971919023935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A178490.P6114471971919023935

/-! ## A178490.P10535732087188666800

`∩[A086983(n+1), A380101(n+1)]`
-/

namespace A178490.P10535732087188666800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178490.P10535732087188666800

/-! ## A178490.P2340283153535872650

`p?[A380101(n+1)]`
-/

namespace A178490.P2340283153535872650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178490.P2340283153535872650

/-! ## A178490.P3724102600496364125

`∩[A136003(n+1), A380101(n+1)]`
-/

namespace A178490.P3724102600496364125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178490.P3724102600496364125

/-! ## A178490.P1011864015859772255

`∩[A015919(n+1), A380101(n+1)]`
-/

namespace A178490.P1011864015859772255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178490.P1011864015859772255

/-! ## A178490.P14603967168078531274

`p?[∑[A237709(n+1)]]`
-/

namespace A178490.P14603967168078531274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237709 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178490.P14603967168078531274

/-! ## A178490.P15017943969537570660

`p?[A138929(n+1)-1]`
-/

namespace A178490.P15017943969537570660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138929 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178490.P15017943969537570660

/-! ## A178490.P13103791877339216751

`p?[record[A008475(n+1)+n]]`
-/

namespace A178490.P13103791877339216751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178490.P13103791877339216751

/-! ## A178490.P15334526147285818519

`∩[A325143(n+1), A380101(n+1)]`
-/

namespace A178490.P15334526147285818519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178490.P15334526147285818519

/-! ## A178490.P9625320343816456362

`p?[record[A330691(n+1)+n]]`
-/

namespace A178490.P9625320343816456362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330691 (n + 1) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178490.P9625320343816456362

/-! ## A178490.P11964474464906721957

`∩[A339817(n+1), A380101(n+1)]`
-/

namespace A178490.P11964474464906721957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339817 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178490.P11964474464906721957

/-! ## A178490.P14063280608996697270

`∩[A339819(n+1), A380101(n+1)]`
-/

namespace A178490.P14063280608996697270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178490.P14063280608996697270

/-! ## A178490.P11823073638414816855

`∩[A339907(n+1), A380101(n+1)]`
-/

namespace A178490.P11823073638414816855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178490.P11823073638414816855

/-! ## A178490.P884931414322350409

`∩[A106118(n+1), A380101(n+1)]`
-/

namespace A178490.P884931414322350409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178490.P884931414322350409

/-! ## A178490.P7214806109455269058

`∩[A000040(n+1), A380101(n+1)]`
-/

namespace A178490.P7214806109455269058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178490.P7214806109455269058

/-! ## A178490.P3084455196287694964

`∩[A006005(n+1), A380101(n+1)]`
-/

namespace A178490.P3084455196287694964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178490.P3084455196287694964

/-! ## A178490.P10925962461142598037

`∩[A008578(n+1), A380101(n+1)]`
-/

namespace A178490.P10925962461142598037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178490.P10925962461142598037

/-! ## A178490.P2911030461847177044

`∩[A065091(n+1), A380101(n+1)]`
-/

namespace A178490.P2911030461847177044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178490.P2911030461847177044

/-! ## A178490.P1572862373883226617

`∩[A097605(n+1), A380101(n+1)]`
-/

namespace A178490.P1572862373883226617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178490.P1572862373883226617

/-!
# A178491: Primes of the form 2*p^k-1, where p is prime and k > 1.

The programs for A178491, there is no canonical definition to state claims against.
-/

/-! ## A178491.P12701465072959741003

`∩[A178490(n+1), A243009(n+1)]`
-/

namespace A178491.P12701465072959741003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178491.P12701465072959741003

/-! ## A178491.P8210680959773272890

`∩[A243009(n+1), A380101(n+1)]`
-/

namespace A178491.P8210680959773272890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243009 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178491.P8210680959773272890

/-! ## A178491.P8727938344780275957

`p?[2*A249435(n+1)+1]`
-/

namespace A178491.P8727938344780275957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A249435 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178491.P8727938344780275957

/-! ## A178491.P4997014102181583309

`p?[2*A025475(n+1)-1]`
-/

namespace A178491.P4997014102181583309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025475 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178491.P4997014102181583309

/-! ## A178491.P12905326983186958460

`p?[2*A134612(n+1)-1]`
-/

namespace A178491.P12905326983186958460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134612 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178491.P12905326983186958460

/-! ## A178491.P5991732166139078657

`p?[A249435(n+1)+A025475(n+1)]`
-/

namespace A178491.P5991732166139078657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249435 (n + 1) + A025475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178491.P5991732166139078657

/-!
# A178492: Primitive elements of A006532, i.e., which are not product of earlier terms (> 1) in that sequence.

The programs for A178492, there is no canonical definition to state claims against.
-/

/-! ## A178492.P3374156364461724198

`record[A006532(A007862(n+1))]`
-/

namespace A178492.P3374156364461724198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006532 (A007862 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178492.P3374156364461724198

/-! ## A178492.P3139028749397082320

`A006532(floor(log(A358730(2*(n+1)))))`
-/

namespace A178492.P3139028749397082320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006532 ⌊Real.log (A358730 (2 * (n + 1)) : ℝ)⌋.toNat

end

end A178492.P3139028749397082320

/-! ## A178492.P7630496344986377721

`record[A006532(A000120(Δ[n²]²))]`
-/

namespace A178492.P7630496344986377721
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006532 (A000120 (((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178492.P7630496344986377721

/-!
# A178493: Numbers of powers of phi in base-phi expansion of phi-antipalindromic numbers (A178482).

The programs for A178493, the canonical program `A178493.P6291198395822028763` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178493 has offset 1).

The definition of A178493 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178493.P6291198395822028763

`a(and(n+1, n-1))+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A178493

/-- `a(and(n+1, n-1))+1` -/
def P6291198395822028763.Spec : Prop :=
  ∀ n, (P6291198395822028763.a n : ℤ) = A178493 (n + 1)

theorem P6291198395822028763.correct : P6291198395822028763.Spec := by
  intro n
  simp only [A178493, Nat.add_sub_cancel]

end A178493

/-! ## A178493.P13845934232001357898

`2*(abs(∑[val(n+1, 2)]-n)+1)-char[2*n]`
-/

namespace A178493.P13845934232001357898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (|((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)| + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A178493.P13845934232001357898

namespace A178493

/-- `2*(abs(∑[val(n+1, 2)]-n)+1)-char[2*n]` -/
def P13845934232001357898.Spec : Prop :=
  ∀ n, P13845934232001357898.a n = A178493 (n + 1)

end A178493

/-! ## A178493.P2856437455599211292

`a(A259445(n+1)-2)+1` with `a(0)=1`
-/

namespace A178493.P2856437455599211292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A259445 (n + 1) - 2).toNat + 1

end

end A178493.P2856437455599211292

namespace A178493

/-- `a(A259445(n+1)-2)+1` -/
def P2856437455599211292.Spec : Prop :=
  ∀ n, (P2856437455599211292.a n : ℤ) = A178493 (n + 1)

end A178493

/-! ## A178493.P3217406119239187822

`A081743(n+1)+A048881(n)`
-/

namespace A178493.P3217406119239187822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081743 (n + 1) + A048881 n

end

end A178493.P3217406119239187822

namespace A178493

/-- `A081743(n+1)+A048881(n)` -/
def P3217406119239187822.Spec : Prop :=
  ∀ n, P3217406119239187822.a n = A178493 (n + 1)

end A178493

/-! ## A178493.P6838372328547330157

`A000034(n)+2*A048881(n)`
-/

namespace A178493.P6838372328547330157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n + 2 * A048881 n

end

end A178493.P6838372328547330157

namespace A178493

/-- `A000034(n)+2*A048881(n)` -/
def P6838372328547330157.Spec : Prop :=
  ∀ n, P6838372328547330157.a n = A178493 (n + 1)

end A178493

/-! ## A178493.P4883865684442316054

`A005811(n+1)+2*A014081(n+1)`
-/

namespace A178493.P4883865684442316054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (n + 1) + 2 * A014081 (n + 1)

end

end A178493.P4883865684442316054

namespace A178493

/-- `A005811(n+1)+2*A014081(n+1)` -/
def P4883865684442316054.Spec : Prop :=
  ∀ n, P4883865684442316054.a n = A178493 (n + 1)

end A178493

/-! ## A178493.P12631173973137850313

`A042948(n+1)-2*A011371(n+1)`
-/

namespace A178493.P12631173973137850313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (n + 1) - 2 * A011371 (n + 1)

end

end A178493.P12631173973137850313

namespace A178493

/-- `A042948(n+1)-2*A011371(n+1)` -/
def P12631173973137850313.Spec : Prop :=
  ∀ n, P12631173973137850313.a n = A178493 (n + 1)

end A178493

/-! ## A178493.P4879204849136207184

`2*A000120(n+1)-A121262(2*n)`
-/

namespace A178493.P4879204849136207184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000120 (n + 1) - A121262 (2 * n)

end

end A178493.P4879204849136207184

namespace A178493

/-- `2*A000120(n+1)-A121262(2*n)` -/
def P4879204849136207184.Spec : Prop :=
  ∀ n, P4879204849136207184.a n = A178493 (n + 1)

end A178493

/-! ## A178493.P6345154042894780866

`val(A001316(n+1)*A060632(n+1), 2)`
-/

namespace A178493.P6345154042894780866
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001316 (n + 1) * A060632 (n + 1)).toNat 2

end

end A178493.P6345154042894780866

namespace A178493

/-- `val(A001316(n+1)*A060632(n+1), 2)` -/
def P6345154042894780866.Spec : Prop :=
  ∀ n, (P6345154042894780866.a n : ℤ) = A178493 (n + 1)

end A178493

/-! ## A178493.P7746837094664090860

`∑[A325937(3*(n+1)/A000265(n+1))]`
-/

namespace A178493.P7746837094664090860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (SequenceMachineLib.roundAway ((3 * (n + 1) : ℚ) / (A000265 (n + 1) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178493.P7746837094664090860

namespace A178493

/-- `∑[A325937(3*(n+1)/A000265(n+1))]` -/
def P7746837094664090860.Spec : Prop :=
  ∀ n, P7746837094664090860.a n = A178493 (n + 1)

end A178493

/-! ## A178493.P3596183141360534427

`A000120(n+1)+A000120(A110654(n))`
-/

namespace A178493.P3596183141360534427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) + A000120 (A110654 n).toNat

end

end A178493.P3596183141360534427

namespace A178493

/-- `A000120(n+1)+A000120(A110654(n))` -/
def P3596183141360534427.Spec : Prop :=
  ∀ n, P3596183141360534427.a n = A178493 (n + 1)

end A178493

/-! ## A178493.P10624354205880099192

`A000120(n+1)+A000120(A029578(n+1))`
-/

namespace A178493.P10624354205880099192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) + A000120 (A029578 (n + 1)).toNat

end

end A178493.P10624354205880099192

namespace A178493

/-- `A000120(n+1)+A000120(A029578(n+1))` -/
def P10624354205880099192.Spec : Prop :=
  ∀ n, P10624354205880099192.a n = A178493 (n + 1)

end A178493

/-! ## A178493.P15925326290139406360

`A000120(n+1)+A000120(sqrt(A008794(n+1)))`
-/

namespace A178493.P15925326290139406360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) + A000120 (SequenceMachineLib.roundAway (Real.sqrt (A008794 (n + 1) : ℝ))).toNat

end

end A178493.P15925326290139406360

namespace A178493

/-- `A000120(n+1)+A000120(sqrt(A008794(n+1)))` -/
def P15925326290139406360.Spec : Prop :=
  ∀ n, P15925326290139406360.a n = A178493 (n + 1)

end A178493

/-! ## A178493.P6577423963663834677

`A000120(n+1)+A000120(n+1)-A059841(n)`
-/

namespace A178493.P6577423963663834677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) + (A000120 (n + 1) - A059841 n)

end

end A178493.P6577423963663834677

namespace A178493

/-- `A000120(n+1)+A000120(n+1)-A059841(n)` -/
def P6577423963663834677.Spec : Prop :=
  ∀ n, P6577423963663834677.a n = A178493 (n + 1)

end A178493

/-! ## A178493.P1887202388603074886

`A000120(n+1)+A033264(n+1)+A014081(n+1)`
-/

namespace A178493.P1887202388603074886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) + (A033264 (n + 1) + A014081 (n + 1))

end

end A178493.P1887202388603074886

namespace A178493

/-- `A000120(n+1)+A033264(n+1)+A014081(n+1)` -/
def P1887202388603074886.Spec : Prop :=
  ∀ n, P1887202388603074886.a n = A178493 (n + 1)

end A178493

/-! ## A178493.P16989909884009289505

`A000120(n+1)+A033265(n+1)-A056973(n+1)`
-/

namespace A178493.P16989909884009289505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) + (A033265 (n + 1) - A056973 (n + 1))

end

end A178493.P16989909884009289505

namespace A178493

/-- `A000120(n+1)+A033265(n+1)-A056973(n+1)` -/
def P16989909884009289505.Spec : Prop :=
  ∀ n, P16989909884009289505.a n = A178493 (n + 1)

end A178493

/-! ## A178493.P15895306957701027135

`A000120(n+1)+A033265(n+1)-A107782(n+1)`
-/

namespace A178493.P15895306957701027135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) + (A033265 (n + 1) - A107782 (n + 1))

end

end A178493.P15895306957701027135

namespace A178493

/-- `A000120(n+1)+A033265(n+1)-A107782(n+1)` -/
def P15895306957701027135.Spec : Prop :=
  ∀ n, P15895306957701027135.a n = A178493 (n + 1)

end A178493

/-! ## A178493.P16939676521935920383

`2*A000120(n+1)-A000035(n+1)`
-/

namespace A178493.P16939676521935920383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000120 (n + 1) - A000035 (n + 1)

end

end A178493.P16939676521935920383

namespace A178493

/-- `2*A000120(n+1)-A000035(n+1)` -/
def P16939676521935920383.Spec : Prop :=
  ∀ n, P16939676521935920383.a n = A178493 (n + 1)

end A178493

/-! ## A178493.P8009629109551299425

`A000120(n+1)+A000120(A004526(n+1))`
-/

namespace A178493.P8009629109551299425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) + A000120 (A004526 (n + 1)).toNat

end

end A178493.P8009629109551299425

namespace A178493

/-- `A000120(n+1)+A000120(A004526(n+1))` -/
def P8009629109551299425.Spec : Prop :=
  ∀ n, P8009629109551299425.a n = A178493 (n + 1)

end A178493

/-! ## A178493.P14238250352023936478

`A000120(n+1)+A000120(A052928(n+1))`
-/

namespace A178493.P14238250352023936478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) + A000120 (A052928 (n + 1)).toNat

end

end A178493.P14238250352023936478

namespace A178493

/-- `A000120(n+1)+A000120(A052928(n+1))` -/
def P14238250352023936478.Spec : Prop :=
  ∀ n, P14238250352023936478.a n = A178493 (n + 1)

end A178493

/-!
# A178494: Partial sums of A045699.

The programs for A178494, there is no canonical definition to state claims against.
-/

/-! ## A178494.P1801494012569270583

`∑[A045699(n+1)]`
-/

namespace A178494.P1801494012569270583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178494.P1801494012569270583

/-! ## A178494.P10228354226784148789

`∑[record[A045699(A328396(n))]]`
-/

namespace A178494.P10228354226784148789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045699 (A328396 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178494.P10228354226784148789

/-! ## A178494.P4447267696758117867

`∑[record[A045699(A133310(n))]]`
-/

namespace A178494.P4447267696758117867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045699 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178494.P4447267696758117867

/-! ## A178494.P16478797336552612011

`∑[record[A045699(A126759(n))]]`
-/

namespace A178494.P16478797336552612011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045699 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178494.P16478797336552612011

/-! ## A178494.P9300026892552776493

`∑[record[A045699(A154958(n))]]`
-/

namespace A178494.P9300026892552776493
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045699 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178494.P9300026892552776493

/-! ## A178494.P9061136268241372996

`∑[record[A045699(A117910(n))]]`
-/

namespace A178494.P9061136268241372996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045699 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178494.P9061136268241372996

/-! ## A178494.P3100139438965580979

`∑[record[A045699(A134478(n))]]`
-/

namespace A178494.P3100139438965580979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045699 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178494.P3100139438965580979

/-! ## A178494.P8494780486594047185

`∑[record[A045699(A128227(n))]]`
-/

namespace A178494.P8494780486594047185
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045699 (A128227 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178494.P8494780486594047185

/-!
# A178495: Numbers k whose sum of digits equals the period of 1/k.

The programs for A178495, there is no canonical definition to state claims against.
-/

/-! ## A178495.P17190586814734762612

`eq[A007953(n), A084680(A028310(n))]`
-/

namespace A178495.P17190586814734762612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084680 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178495.P17190586814734762612

/-!
# A178497: 5 followed by A145503.

The programs for A178497, the canonical program `A178497.P2997371967622266436` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178497 has offset 0).

The definition of A178497 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178497.P2997371967622266436

`a(n-1)*(a(n-1)+2)-2` with `a(0)=5, a(1)=3`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A178497

/-- `a(n-1)*(a(n-1)+2)-2` -/
def P2997371967622266436.Spec : Prop :=
  ∀ n, P2997371967622266436.a n = A178497 n

theorem P2997371967622266436.correct : P2997371967622266436.Spec := by
  intro n
  simp only [A178497]

end A178497

/-! ## A178497.P10999042838513862298

`(a(n-1)+1)²-3` with `a(0)=5, a(1)=3`
-/

namespace A178497.P10999042838513862298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 3] fun n a =>
  (a (n - 1) + 1) ^ 2 - 3

end

end A178497.P10999042838513862298

namespace A178497

/-- `(a(n-1)+1)²-3` -/
def P10999042838513862298.Spec : Prop :=
  ∀ n, P10999042838513862298.a n = A178497 n

theorem P10999042838513862298.correct : P10999042838513862298.Spec := by
  intro n
  simp only [A178497, Nat.add_sub_cancel, A178497.P10999042838513862298.a, A178497.P2997371967622266436.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A178497

/-! ## A178497.P5275221738713852009

`xor(1, -a(n-1))²-3` with `a(0)=5, a(1)=3`
-/

namespace A178497.P5275221738713852009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 3] fun n a =>
  Int.xor 1 (-a (n - 1)) ^ 2 - 3

end

end A178497.P5275221738713852009

namespace A178497

/-- `xor(1, -a(n-1))²-3` -/
def P5275221738713852009.Spec : Prop :=
  ∀ n, P5275221738713852009.a n = A178497 n

end A178497

/-! ## A178497.P15459063673445227044

`(a(n-1)+1)^(4/2)-3` with `a(0)=5, a(1)=3`
-/

namespace A178497.P15459063673445227044
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [5, 3] fun n a =>
  (a (n - 1) + 1) ^ ((4 : ℚ) / 2 : ℝ) - 3

end

end A178497.P15459063673445227044

namespace A178497

/-- `(a(n-1)+1)^(4/2)-3` -/
def P15459063673445227044.Spec : Prop :=
  ∀ n, P15459063673445227044.a n = (A178497 n : ℝ)

end A178497

/-! ## A178497.P10765446228632077195

`a(n-1)²-2*(1-a(n-1))` with `a(0)=5, a(1)=3`
-/

namespace A178497.P10765446228632077195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 3] fun n a =>
  a (n - 1) ^ 2 - 2 * (1 - a (n - 1))

end

end A178497.P10765446228632077195

namespace A178497

/-- `a(n-1)²-2*(1-a(n-1))` -/
def P10765446228632077195.Spec : Prop :=
  ∀ n, P10765446228632077195.a n = A178497 n

theorem P10765446228632077195.correct : P10765446228632077195.Spec := by
  intro n
  simp only [A178497, Nat.add_sub_cancel, A178497.P10765446228632077195.a, A178497.P2997371967622266436.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A178497

/-!
# A178498: Number of Frobenius groups of order n.

The programs for A178498, there is no canonical definition to state claims against.
-/

/-! ## A178498.P9053727865232936821

`A184992(A059358(n+3))%A036430(3*n+5)`
-/

namespace A178498.P9053727865232936821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184992 (A059358 (n + 3)).toNat) (A036430 (3 * n + 5))

end

end A178498.P9053727865232936821

/-! ## A178498.P4309100752911615895

`and(A096929(n+1), A357924(n+1))`
-/

namespace A178498.P4309100752911615895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A096929 (n + 1)) (A357924 (n + 1))

end

end A178498.P4309100752911615895

/-! ## A178498.P10071081371614228104

`and(A336486(n+1), A357924(n+1))`
-/

namespace A178498.P10071081371614228104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A336486 (n + 1)) (A357924 (n + 1))

end

end A178498.P10071081371614228104

/-! ## A178498.P11195888757493132189

`and(A337425(n+2), A357924(n+1))`
-/

namespace A178498.P11195888757493132189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A337425 (n + 2)) (A357924 (n + 1))

end

end A178498.P11195888757493132189

/-! ## A178498.P3415687189138959066

`A124500(n)%A381637(n+1)`
-/

namespace A178498.P3415687189138959066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124500 n) (A381637 (n + 1))

end

end A178498.P3415687189138959066

/-!
# A178499: Number of ways to place 6 nonattacking knights on an n X n board.

The programs for A178499, there is no canonical definition to state claims against.
-/

/-! ## A178499.P4524192207335578405

`A122425(A122423(2*n+1))*A348615(n)`
-/

namespace A178499.P4524192207335578405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122425 (A122423 (2 * n + 1)).toNat * A348615 n

end

end A178499.P4524192207335578405

