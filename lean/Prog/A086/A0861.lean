import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A086100: A086099 in binary.

The programs for A086100, the canonical program `A086100.P12874924642419526521` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086100 has offset 0).

The definition of A086100 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086100.P12874924642419526521

`A007088(A086099(n))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A086100

/-- `A007088(A086099(n))` -/
def P12874924642419526521.Spec : Prop :=
  ∀ n, P12874924642419526521.a n = A086100 n

theorem P12874924642419526521.correct : P12874924642419526521.Spec := by
  intro n
  simp only [A086100]

end A086100

/-! ## A086100.P4725804145967059960

`A185544(2*A086099(n))`
-/

namespace A086100.P4725804145967059960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A086099 n).toNat

end

end A086100.P4725804145967059960

namespace A086100

/-- `A185544(2*A086099(n))` -/
def P4725804145967059960.Spec : Prop :=
  ∀ n, P4725804145967059960.a n = A086100 n

end A086100

/-! ## A086100.P169117826374387997

`A185544(xor(n, A035327(n+1)))`
-/

namespace A086100.P169117826374387997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.xor (n : ℤ) (A035327 (n + 1))).toNat

end

end A086100.P169117826374387997

namespace A086100

/-- `A185544(xor(n, A035327(n+1)))` -/
def P169117826374387997.Spec : Prop :=
  ∀ n, P169117826374387997.a n = A086100 n

end A086100

/-! ## A086100.P3140067167652582069

`A007088(n-A246591(n))`
-/

namespace A086100.P3140067167652582069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 ((n : ℤ) - A246591 n).toNat

end

end A086100.P3140067167652582069

namespace A086100

/-- `A007088(n-A246591(n))` -/
def P3140067167652582069.Spec : Prop :=
  ∀ n, P3140067167652582069.a n = A086100 n

end A086100

/-! ## A086100.P17137788269499155788

`A185544(A086099(Δ[n²]))`
-/

namespace A086100.P17137788269499155788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A086099 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A086100.P17137788269499155788

namespace A086100

/-- `A185544(A086099(Δ[n²]))` -/
def P17137788269499155788.Spec : Prop :=
  ∀ n, P17137788269499155788.a n = A086100 n

end A086100

/-!
# A086101: Numbers j such that the concatenation of the last digit of p(j) and the first digit of prime(j+1) is a prime.

The programs for A086101, the canonical program `A086101.P14386892434650373843` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086101 has offset 1).

The definition of A086101 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3017 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086101.P14386892434650373843

`eq[1, A001222(A166499(n+1))]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A086101

/-- `eq[1, A001222(A166499(n+1))]+1` -/
def P14386892434650373843.Spec : Prop :=
  ∀ n, (P14386892434650373843.a n : ℤ) = A086101 (n + 1)

theorem P14386892434650373843.correct : P14386892434650373843.Spec := by
  intro n
  simp only [A086101, Nat.add_sub_cancel]

end A086101

/-!
# A086104: Primes appearing as concatenation of the last digit of prime(A086101(n)) and the first digit of prime(A086101(n)+1).

The programs for A086104, the canonical program `A086104.P11410882345256065790` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086104 has offset 1).

The definition of A086104 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3017 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086104.P11410882345256065790

`p?[A166499(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A086104

/-- `p?[A166499(n+1)]` -/
def P11410882345256065790.Spec : Prop :=
  ∀ n, P11410882345256065790.a n = A086104 (n + 1)

theorem P11410882345256065790.correct : P11410882345256065790.Spec := by
  intro n
  simp only [A086104, Nat.add_sub_cancel]

end A086104

/-! ## A086104.P9973942715477906608

`A166499(A086101(n+1))`
-/

namespace A086104.P9973942715477906608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166499 (A086101 (n + 1)).toNat

end

end A086104.P9973942715477906608

namespace A086104

/-- `A166499(A086101(n+1))` -/
def P9973942715477906608.Spec : Prop :=
  ∀ n, P9973942715477906608.a n = A086104 (n + 1)

end A086104

/-! ## A086104.P1741295041884078605

`filter[A166499(n+1), A010051(#)]`
-/

namespace A086104.P1741295041884078605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A086104.P1741295041884078605

namespace A086104

/-- `filter[A166499(n+1), A010051(#)]` -/
def P1741295041884078605.Spec : Prop :=
  ∀ n, P1741295041884078605.a n = A086104 (n + 1)

end A086104

/-! ## A086104.P11931769561784363779

`filter[A166499(n+1), A080339(#)]`
-/

namespace A086104.P11931769561784363779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A086104.P11931769561784363779

namespace A086104

/-- `filter[A166499(n+1), A080339(#)]` -/
def P11931769561784363779.Spec : Prop :=
  ∀ n, P11931769561784363779.a n = A086104 (n + 1)

end A086104

/-! ## A086104.P9614339107580101676

`filter[A166499(n+1), A080545(#)]`
-/

namespace A086104.P9614339107580101676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A086104.P9614339107580101676

namespace A086104

/-- `filter[A166499(n+1), A080545(#)]` -/
def P9614339107580101676.Spec : Prop :=
  ∀ n, P9614339107580101676.a n = A086104 (n + 1)

end A086104

/-! ## A086104.P14046596149014730471

`filter[A166499(n+1), A171387(#)]`
-/

namespace A086104.P14046596149014730471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A086104.P14046596149014730471

namespace A086104

/-- `filter[A166499(n+1), A171387(#)]` -/
def P14046596149014730471.Spec : Prop :=
  ∀ n, P14046596149014730471.a n = A086104 (n + 1)

end A086104

/-! ## A086104.P16336365692014419030

`filter[A166499(n+1), A174275(#)]`
-/

namespace A086104.P16336365692014419030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174275 (f1 j).toNat = 1) n)

end

end A086104.P16336365692014419030

namespace A086104

/-- `filter[A166499(n+1), A174275(#)]` -/
def P16336365692014419030.Spec : Prop :=
  ∀ n, P16336365692014419030.a n = A086104 (n + 1)

end A086104

/-! ## A086104.P8474168414783467855

`filter[A166499(n+1), A257531(#)]`
-/

namespace A086104.P8474168414783467855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A086104.P8474168414783467855

namespace A086104

/-- `filter[A166499(n+1), A257531(#)]` -/
def P8474168414783467855.Spec : Prop :=
  ∀ n, P8474168414783467855.a n = A086104 (n + 1)

end A086104

/-! ## A086104.P2031974198437626737

`filter[A166499(n+1), A323152(#)]`
-/

namespace A086104.P2031974198437626737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A086104.P2031974198437626737

namespace A086104

/-- `filter[A166499(n+1), A323152(#)]` -/
def P2031974198437626737.Spec : Prop :=
  ∀ n, P2031974198437626737.a n = A086104 (n + 1)

end A086104

/-! ## A086104.P3661916418690104301

`filter[A166499(n+1), A323153(#)]`
-/

namespace A086104.P3661916418690104301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A086104.P3661916418690104301

namespace A086104

/-- `filter[A166499(n+1), A323153(#)]` -/
def P3661916418690104301.Spec : Prop :=
  ∀ n, P3661916418690104301.a n = A086104 (n + 1)

end A086104

/-! ## A086104.P1991688294588201645

`filter[A166499(n+1), A353673(#)]`
-/

namespace A086104.P1991688294588201645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353673 (f1 j).toNat = 1) n)

end

end A086104.P1991688294588201645

namespace A086104

/-- `filter[A166499(n+1), A353673(#)]` -/
def P1991688294588201645.Spec : Prop :=
  ∀ n, P1991688294588201645.a n = A086104 (n + 1)

end A086104

/-!
# A086107: Prime members of A086108: Prime numbers which have the additional property that all symmetric polynomials of their digits are also prime numbers.

The programs for A086107, there is no canonical definition to state claims against.
-/

/-! ## A086107.P1755219673939354347

`A046713(comp[9*n])`
-/

namespace A086107.P1755219673939354347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046713 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A086107.P1755219673939354347

/-! ## A086107.P3873389017224362318

`and(-9, A046713(n+1))`
-/

namespace A086107.P3873389017224362318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-9) (A046713 (n + 1))

end

end A086107.P3873389017224362318

/-! ## A086107.P7497813681427091958

`and(p?[A052430(n+1)], -9)`
-/

namespace A086107.P7497813681427091958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (-9)

end

end A086107.P7497813681427091958

/-! ## A086107.P6398041854106501565

`p?[A052430(comp[4*4*n])]`
-/

namespace A086107.P6398041854106501565
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (4 * n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052430 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086107.P6398041854106501565

/-!
# A086108: Numbers n with the following property: Every symmetric polynomial of the digits of n is prime. (A symmetric polynomial is unchanged by any permutation of its variables, so the symmetric polynomials of {a,b,c} would be a+b+c,ab+bc+ac and abc.)

The programs for A086108, there is no canonical definition to state claims against.
-/

/-! ## A086108.P1017391767893783769

`A052430(comp[4*4*n])`
-/

namespace A086108.P1017391767893783769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (4 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052430 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A086108.P1017391767893783769

/-! ## A086108.P8408204873590956697

`A052430(n+1)+char[12]`
-/

namespace A086108.P8408204873590956697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052430 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A086108.P8408204873590956697

/-! ## A086108.P1668926140711099432

`record[A052430(A000119(n))]`
-/

namespace A086108.P1668926140711099432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052430 (A000119 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086108.P1668926140711099432

/-! ## A086108.P11105900469819903618

`A000026(A052430(n+1))`
-/

namespace A086108.P11105900469819903618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A052430 (n + 1)).toNat

end

end A086108.P11105900469819903618

/-! ## A086108.P8376968064495683364

`record[A052430(A262356(n+1))]`
-/

namespace A086108.P8376968064495683364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052430 (A262356 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086108.P8376968064495683364

/-!
# A086109: Numbers n such that p=prime(n) is substring of 2^p-1.

The programs for A086109, there is no canonical definition to state claims against.
-/

/-! ## A086109.P11351448123611173314

`A000720(A086110(n))`
-/

namespace A086109.P11351448123611173314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A086110 n).toNat

end

end A086109.P11351448123611173314

/-! ## A086109.P17087944103121209448

`A003963(p?[A086110(n)])`
-/

namespace A086109.P17087944103121209448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A086109.P17087944103121209448

/-! ## A086109.P18391938383621657061

`A026238(p?[A086110(n)])`
-/

namespace A086109.P18391938383621657061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A086109.P18391938383621657061

/-! ## A086109.P1936084866752019657

`A049084(p?[A086110(n)])`
-/

namespace A086109.P1936084866752019657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A086109.P1936084866752019657

/-! ## A086109.P7108223015739591196

`A026099(p?[A086110(n)])`
-/

namespace A086109.P7108223015739591196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026099 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A086109.P7108223015739591196

/-!
# A086110: p=prime is substring of 2^p-1.

The programs for A086110, there is no canonical definition to state claims against.
-/

/-! ## A086110.P10732835792637066875

`A000040(A086109(n+1))`
-/

namespace A086110.P10732835792637066875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A086109 (n + 1)).toNat

end

end A086110.P10732835792637066875

/-! ## A086110.P2556449657717452774

`A008578(A086109(n+1)+1)`
-/

namespace A086110.P2556449657717452774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A086109 (n + 1) + 1).toNat

end

end A086110.P2556449657717452774

/-! ## A086110.P8372523251199299235

`A182986(A086109(n+1)+1)`
-/

namespace A086110.P8372523251199299235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A086109 (n + 1) + 1).toNat

end

end A086110.P8372523251199299235

/-! ## A086110.P9496996882118352339

`A045319(A086109(n+1)-1)`
-/

namespace A086110.P9496996882118352339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A086109 (n + 1) - 1).toNat

end

end A086110.P9496996882118352339

/-! ## A086110.P4098432326141830114

`A045344(A086109(n+1)-1)`
-/

namespace A086110.P4098432326141830114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A086109 (n + 1) - 1).toNat

end

end A086110.P4098432326141830114

/-!
# A086111: Numerator of the mean deviation of a discrete uniform distribution on n elements.

The programs for A086111, the canonical program `A086111.P5294940909207253935` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086111 has offset 1).

The definition of A086111 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086111.P13307322505325641219

`lcm(n+1, ∑[ceil(n/2)])/(n+1)`
-/

namespace A086111.P13307322505325641219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)

end

end A086111.P13307322505325641219

namespace A086111

/-- `lcm(n+1, ∑[ceil(n/2)])/(n+1)` -/
def P13307322505325641219.Spec : Prop :=
  ∀ n, P13307322505325641219.a n = (A086111 (n + 1) : ℚ)

end A086111

/-! ## A086111.P5294940909207253935

`gcd(n*∑[∑[n]%(n+1)], ∑[ceil(n/2)])`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086111

/-- `gcd(n*∑[∑[n]%(n+1)], ∑[ceil(n/2)])` -/
def P5294940909207253935.Spec : Prop :=
  ∀ n, (P5294940909207253935.a n : ℤ) = A086111 (n + 1)

theorem P5294940909207253935.correct : P5294940909207253935.Spec := by
  intro n
  simp only [A086111, Nat.add_sub_cancel]

end A086111

/-! ## A086111.P2906150875816023672

`gcd(n*∑[n-gcd(n, ∑[n])], ∑[(-1)^n*∑[n]])`
-/

namespace A086111.P2906150875816023672
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)) (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A086111.P2906150875816023672

namespace A086111

/-- `gcd(n*∑[n-gcd(n, ∑[n])], ∑[(-1)^n*∑[n]])` -/
def P2906150875816023672.Spec : Prop :=
  ∀ n, (P2906150875816023672.a n : ℤ) = A086111 (n + 1)

end A086111

/-! ## A086111.P3110987697561820935

`floor(((n+1)/2)²)/gcd(n+1, floor(((n+1)/2)²))`
-/

namespace A086111.P3110987697561820935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊((n + 1 : ℚ) / 2) ^ 2⌋ : ℚ) / (Int.gcd (n + 1 : ℤ) ⌊((n + 1 : ℚ) / 2) ^ 2⌋ : ℚ)

end

end A086111.P3110987697561820935

namespace A086111

/-- `floor(((n+1)/2)²)/gcd(n+1, floor(((n+1)/2)²))` -/
def P3110987697561820935.Spec : Prop :=
  ∀ n, P3110987697561820935.a n = (A086111 (n + 1) : ℚ)

end A086111

/-! ## A086111.P15900502782519610780

`gcd(n/2*floor((n/2)²)*n%2, ∑[(-1)^n*∑[n]])`
-/

namespace A086111.P15900502782519610780
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n : ℚ) / 2 * (⌊((n : ℚ) / 2) ^ 2⌋ : ℚ) * ((n % 2 : ℕ) : ℚ))) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A086111.P15900502782519610780

namespace A086111

/-- `gcd(n/2*floor((n/2)²)*n%2, ∑[(-1)^n*∑[n]])` -/
def P15900502782519610780.Spec : Prop :=
  ∀ n, (P15900502782519610780.a n : ℤ) = A086111 (n + 1)

end A086111

/-! ## A086111.P13241999807455870133

`gcd(∑[ceil(n/2)], A178312(n))`
-/

namespace A086111.P13241999807455870133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A178312 n)

end

end A086111.P13241999807455870133

namespace A086111

/-- `gcd(∑[ceil(n/2)], A178312(n))` -/
def P13241999807455870133.Spec : Prop :=
  ∀ n, (P13241999807455870133.a n : ℤ) = A086111 (n + 1)

end A086111

/-! ## A086111.P16468118389038763202

`gcd(∑[∑[n%2]], A290168(n))`
-/

namespace A086111.P16468118389038763202
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A290168 n)

end

end A086111.P16468118389038763202

namespace A086111

/-- `gcd(∑[∑[n%2]], A290168(n))` -/
def P16468118389038763202.Spec : Prop :=
  ∀ n, (P16468118389038763202.a n : ℤ) = A086111 (n + 1)

end A086111

/-! ## A086111.P2421952422686478068

`gcd(n*A268579(n), floor(((n+1)/2)²))`
-/

namespace A086111.P2421952422686478068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A268579 n) ⌊((n + 1 : ℚ) / 2) ^ 2⌋

end

end A086111.P2421952422686478068

namespace A086111

/-- `gcd(n*A268579(n), floor(((n+1)/2)²))` -/
def P2421952422686478068.Spec : Prop :=
  ∀ n, (P2421952422686478068.a n : ℤ) = A086111 (n + 1)

end A086111

/-! ## A086111.P11029364226548802339

`A129889(A186646(n+1))`
-/

namespace A086111.P11029364226548802339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129889 (A186646 (n + 1)).toNat

end

end A086111.P11029364226548802339

namespace A086111

/-- `A129889(A186646(n+1))` -/
def P11029364226548802339.Spec : Prop :=
  ∀ n, P11029364226548802339.a n = A086111 (n + 1)

end A086111

/-! ## A086111.P9475616178748102496

`gcd(A083392(n), A131174(n))`
-/

namespace A086111.P9475616178748102496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A083392 n) (A131174 n)

end

end A086111.P9475616178748102496

namespace A086111

/-- `gcd(A083392(n), A131174(n))` -/
def P9475616178748102496.Spec : Prop :=
  ∀ n, (P9475616178748102496.a n : ℤ) = A086111 (n + 1)

end A086111

/-! ## A086111.P4497184312587038787

`gcd(A178312(n), A212764(n))`
-/

namespace A086111.P4497184312587038787
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A178312 n) (A212764 n)

end

end A086111.P4497184312587038787

namespace A086111

/-- `gcd(A178312(n), A212764(n))` -/
def P4497184312587038787.Spec : Prop :=
  ∀ n, (P4497184312587038787.a n : ℤ) = A086111 (n + 1)

end A086111

/-! ## A086111.P2779955177716172268

`gcd(A105636(n), A389363(n+1))`
-/

namespace A086111.P2779955177716172268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A105636 n) (A389363 (n + 1))

end

end A086111.P2779955177716172268

namespace A086111

/-- `gcd(A105636(n), A389363(n+1))` -/
def P2779955177716172268.Spec : Prop :=
  ∀ n, (P2779955177716172268.a n : ℤ) = A086111 (n + 1)

end A086111

/-! ## A086111.P18220038212436698690

`gcd(A210433(n+1), A290168(n))`
-/

namespace A086111.P18220038212436698690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A210433 (n + 1)) (A290168 n)

end

end A086111.P18220038212436698690

namespace A086111

/-- `gcd(A210433(n+1), A290168(n))` -/
def P18220038212436698690.Spec : Prop :=
  ∀ n, (P18220038212436698690.a n : ℤ) = A086111 (n + 1)

end A086111

/-! ## A086111.P13741601105152532266

`A130845(A392334(n+1))`
-/

namespace A086111.P13741601105152532266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130845 (A392334 (n + 1)).toNat

end

end A086111.P13741601105152532266

namespace A086111

/-- `A130845(A392334(n+1))` -/
def P13741601105152532266.Spec : Prop :=
  ∀ n, P13741601105152532266.a n = A086111 (n + 1)

end A086111

/-!
# A086112: Denominator of the mean deviation of a discrete uniform distribution on n elements.

The programs for A086112, the canonical program `A086112.P18118759754597680867` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086112 has offset 1).

The definition of A086112 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086112.P18118759754597680867

`gcd(n+1, C(or(1, n), 2))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086112

/-- `gcd(n+1, C(or(1, n), 2))` -/
def P18118759754597680867.Spec : Prop :=
  ∀ n, (P18118759754597680867.a n : ℤ) = A086112 (n + 1)

theorem P18118759754597680867.correct : P18118759754597680867.Spec := by
  intro n
  simp only [A086112, Nat.add_sub_cancel]

end A086112

/-! ## A086112.P8222643109340440425

`gcd(log2(gcd(4, 1-n)), xor(1, n))`
-/

namespace A086112.P8222643109340440425
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (Real.logb 2 (Int.gcd 4 (1 - (n : ℤ)) : ℝ))) (Nat.xor 1 n : ℤ)

end

end A086112.P8222643109340440425

namespace A086112

/-- `gcd(log2(gcd(4, 1-n)), xor(1, n))` -/
def P8222643109340440425.Spec : Prop :=
  ∀ n, (P8222643109340440425.a n : ℤ) = A086112 (n + 1)

end A086112

/-! ## A086112.P7667858153693341265

`gcd(∑[n]+or(1, n), xor(n, -1))`
-/

namespace A086112.P7667858153693341265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j + Nat.lor 1 n : ℕ) : ℤ) (Int.xor (n : ℤ) (-1))

end

end A086112.P7667858153693341265

namespace A086112

/-- `gcd(∑[n]+or(1, n), xor(n, -1))` -/
def P7667858153693341265.Spec : Prop :=
  ∀ n, (P7667858153693341265.a n : ℤ) = A086112 (n + 1)

end A086112

/-! ## A086112.P13525323150056579124

`C(n, n^val(n+1, 2))+1`
-/

namespace A086112.P13525323150056579124
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (n ^ SequenceMachineLib.valuation (n + 1) 2) + 1

end

end A086112.P13525323150056579124

namespace A086112

/-- `C(n, n^val(n+1, 2))+1` -/
def P13525323150056579124.Spec : Prop :=
  ∀ n, (P13525323150056579124.a n : ℤ) = A086112 (n + 1)

end A086112

/-! ## A086112.P6401797590956362207

`gcd(∑[n]+n%2, xor(n, -1))`
-/

namespace A086112.P6401797590956362207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j + n % 2 : ℕ) : ℤ) (Int.xor (n : ℤ) (-1))

end

end A086112.P6401797590956362207

namespace A086112

/-- `gcd(∑[n]+n%2, xor(n, -1))` -/
def P6401797590956362207.Spec : Prop :=
  ∀ n, (P6401797590956362207.a n : ℤ) = A086112 (n + 1)

end A086112

/-! ## A086112.P5578897582973416391

`or(and(2, -n)!, C(xor(1, n), n))`
-/

namespace A086112.P5578897582973416391
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (Nat.factorial (Int.land 2 (-(n : ℤ))).toNat) (Nat.choose (Nat.xor 1 n) n)

end

end A086112.P5578897582973416391

namespace A086112

/-- `or(and(2, -n)!, C(xor(1, n), n))` -/
def P5578897582973416391.Spec : Prop :=
  ∀ n, (P5578897582973416391.a n : ℤ) = A086112 (n + 1)

end A086112

/-! ## A086112.P11750239924673011438

`C(or(1, n), n)+∑[∑[n]]%2`
-/

namespace A086112.P11750239924673011438
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 1 n) n + (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A086112.P11750239924673011438

namespace A086112

/-- `C(or(1, n), n)+∑[∑[n]]%2` -/
def P11750239924673011438.Spec : Prop :=
  ∀ n, (P11750239924673011438.a n : ℤ) = A086112 (n + 1)

end A086112

/-! ## A086112.P10249404558322684950

`gcd(lcm(2, xor(1, n))/2, ∑[2*n])`
-/

namespace A086112.P10249404558322684950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((Nat.lcm 2 (Nat.xor 1 n) : ℚ) / 2)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A086112.P10249404558322684950

namespace A086112

/-- `gcd(lcm(2, xor(1, n))/2, ∑[2*n])` -/
def P10249404558322684950.Spec : Prop :=
  ∀ n, (P10249404558322684950.a n : ℤ) = A086112 (n + 1)

end A086112

/-! ## A086112.P10487967355234775801

`floor(n/n^val(n+1, 2))+1`
-/

namespace A086112.P10487967355234775801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (n ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ + 1

end

end A086112.P10487967355234775801

namespace A086112

/-- `floor(n/n^val(n+1, 2))+1` -/
def P10487967355234775801.Spec : Prop :=
  ∀ n, P10487967355234775801.a n = A086112 (n + 1)

end A086112

/-! ## A086112.P872873190464523974

`ceil((n+1)/n^val(n+1, 2))`
-/

namespace A086112.P872873190464523974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (n ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌉

end

end A086112.P872873190464523974

namespace A086112

/-- `ceil((n+1)/n^val(n+1, 2))` -/
def P872873190464523974.Spec : Prop :=
  ∀ n, P872873190464523974.a n = A086112 (n + 1)

end A086112

/-! ## A086112.P17329522000621337896

`gcd(n+1, A084265(n))`
-/

namespace A086112.P17329522000621337896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A084265 n)

end

end A086112.P17329522000621337896

namespace A086112

/-- `gcd(n+1, A084265(n))` -/
def P17329522000621337896.Spec : Prop :=
  ∀ n, (P17329522000621337896.a n : ℤ) = A086112 (n + 1)

end A086112

/-! ## A086112.P15473910796656002888

`A098180(A003815(n))`
-/

namespace A086112.P15473910796656002888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098180 (A003815 n).toNat

end

end A086112.P15473910796656002888

namespace A086112

/-- `A098180(A003815(n))` -/
def P15473910796656002888.Spec : Prop :=
  ∀ n, P15473910796656002888.a n = A086112 (n + 1)

end A086112

/-! ## A086112.P5181307133634661443

`A065883(A230089(n+1))`
-/

namespace A086112.P5181307133634661443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065883 (A230089 (n + 1)).toNat

end

end A086112.P5181307133634661443

namespace A086112

/-- `A065883(A230089(n+1))` -/
def P5181307133634661443.Spec : Prop :=
  ∀ n, P5181307133634661443.a n = A086112 (n + 1)

end A086112

/-! ## A086112.P16008320790722591257

`A152822(n)+A003815(n)`
-/

namespace A086112.P16008320790722591257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152822 n + A003815 n

end

end A086112.P16008320790722591257

namespace A086112

/-- `A152822(n)+A003815(n)` -/
def P16008320790722591257.Spec : Prop :=
  ∀ n, P16008320790722591257.a n = A086112 (n + 1)

end A086112

/-! ## A086112.P598965952251115985

`A166514(n)+A158416(n)`
-/

namespace A086112.P598965952251115985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166514 n + A158416 n

end

end A086112.P598965952251115985

namespace A086112

/-- `A166514(n)+A158416(n)` -/
def P598965952251115985.Spec : Prop :=
  ∀ n, P598965952251115985.a n = A086112 (n + 1)

end A086112

/-! ## A086112.P4398844753832184568

`A141310(n)/A177704(n)`
-/

namespace A086112.P4398844753832184568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141310 n : ℚ) / (A177704 n : ℚ)

end

end A086112.P4398844753832184568

namespace A086112

/-- `A141310(n)/A177704(n)` -/
def P4398844753832184568.Spec : Prop :=
  ∀ n, P4398844753832184568.a n = (A086112 (n + 1) : ℚ)

end A086112

/-! ## A086112.P16892611891466860156

`gcd(A001621(n), A174239(n))`
-/

namespace A086112.P16892611891466860156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001621 n) (A174239 n)

end

end A086112.P16892611891466860156

namespace A086112

/-- `gcd(A001621(n), A174239(n))` -/
def P16892611891466860156.Spec : Prop :=
  ∀ n, (P16892611891466860156.a n : ℤ) = A086112 (n + 1)

end A086112

/-! ## A086112.P12362823230933240954

`gcd(A093353(n), A153126(n))`
-/

namespace A086112.P12362823230933240954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A093353 n) (A153126 n)

end

end A086112.P12362823230933240954

namespace A086112

/-- `gcd(A093353(n), A153126(n))` -/
def P12362823230933240954.Spec : Prop :=
  ∀ n, (P12362823230933240954.a n : ℤ) = A086112 (n + 1)

end A086112

/-! ## A086112.P964401185216002682

`A237420(n)+A138191(n+1)`
-/

namespace A086112.P964401185216002682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 n + A138191 (n + 1)

end

end A086112.P964401185216002682

namespace A086112

/-- `A237420(n)+A138191(n+1)` -/
def P964401185216002682.Spec : Prop :=
  ∀ n, P964401185216002682.a n = A086112 (n + 1)

end A086112

/-! ## A086112.P17437705028585674068

`A141310(n)-A011765(n+1)`
-/

namespace A086112.P17437705028585674068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 n - A011765 (n + 1)

end

end A086112.P17437705028585674068

namespace A086112

/-- `A141310(n)-A011765(n+1)` -/
def P17437705028585674068.Spec : Prop :=
  ∀ n, P17437705028585674068.a n = A086112 (n + 1)

end A086112

/-!
# A086113: Number of 3 X n (0,1) matrices such that each row and each column is nondecreasing or nonincreasing.

The programs for A086113, the canonical program `A086113.P3767985742686168640` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086113 has offset 1).

The definition of A086113 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086113.P7055040589815509760

`2*(n+1)*((n+1)²+3*(n+1)-1)`
-/

namespace A086113.P7055040589815509760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * (((n + 1) ^ 2 + 3 * (n + 1) : ℤ) - 1))

end

end A086113.P7055040589815509760

namespace A086113

/-- `2*(n+1)*((n+1)²+3*(n+1)-1)` -/
def P7055040589815509760.Spec : Prop :=
  ∀ n, P7055040589815509760.a n = A086113 (n + 1)

theorem P7055040589815509760.correct : P7055040589815509760.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A086113, Nat.add_sub_cancel, A086113.P7055040589815509760.a, A086113.P3767985742686168640.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A086113, Nat.add_sub_cancel, A086113.P7055040589815509760.a, A086113.P3767985742686168640.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A086113

/-! ## A086113.P3767985742686168640

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=6, a(1)=36, a(2)=102, a(3)=216`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086113

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P3767985742686168640.Spec : Prop :=
  ∀ n, P3767985742686168640.a n = A086113 (n + 1)

theorem P3767985742686168640.correct : P3767985742686168640.Spec := by
  intro n
  simp only [A086113, Nat.add_sub_cancel]

end A086113

/-! ## A086113.P14110163622472970804

`a(n-1)+6*((n+1)²+n)` with `a(0)=6`
-/

namespace A086113.P14110163622472970804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + 6 * ((n + 1) ^ 2 + n)

end

end A086113.P14110163622472970804

namespace A086113

/-- `a(n-1)+6*((n+1)²+n)` -/
def P14110163622472970804.Spec : Prop :=
  ∀ n, (P14110163622472970804.a n : ℤ) = A086113 (n + 1)

end A086113

/-! ## A086113.P18228405597495366302

`lcm((n+1)*(n+3)+n, 2*(n+1))`
-/

namespace A086113.P18228405597495366302
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm ((n + 1) * (n + 3) + n) (2 * (n + 1))

end

end A086113.P18228405597495366302

namespace A086113

/-- `lcm((n+1)*(n+3)+n, 2*(n+1))` -/
def P18228405597495366302.Spec : Prop :=
  ∀ n, (P18228405597495366302.a n : ℤ) = A086113 (n + 1)

end A086113

/-! ## A086113.P9316942098581471670

`∑[A192848(n+1)]/(n+2)`
-/

namespace A086113.P9316942098581471670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192848 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 2 : ℚ)

end

end A086113.P9316942098581471670

namespace A086113

/-- `∑[A192848(n+1)]/(n+2)` -/
def P9316942098581471670.Spec : Prop :=
  ∀ n, P9316942098581471670.a n = (A086113 (n + 1) : ℚ)

end A086113

/-!
# A086114: Number of 4 X n (0,1) matrices such that each row and each column is nondecreasing or nonincreasing.

The programs for A086114, the canonical program `A086114.P6562929644622477253` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086114 has offset 1).

The definition of A086114 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086114.P6562929644622477253

`2/3*(n+1)*((n+1)^3+6*(n+1)²+11*(n+1)-6)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086114

/-- `2/3*(n+1)*((n+1)^3+6*(n+1)²+11*(n+1)-6)` -/
def P6562929644622477253.Spec : Prop :=
  ∀ n, P6562929644622477253.a n = (A086114 (n + 1) : ℚ)

end A086114

/-! ## A086114.P6952435290891694263

`a(n-1)+4*(a(n-1)/n+6)` with `a(0)=8`
-/

namespace A086114.P6952435290891694263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) + 4 * (a (n - 1) / (n : ℚ) + 6)

end

end A086114.P6952435290891694263

namespace A086114

/-- `a(n-1)+4*(a(n-1)/n+6)` -/
def P6952435290891694263.Spec : Prop :=
  ∀ n, P6952435290891694263.a n = (A086114 (n + 1) : ℚ)

end A086114

/-! ## A086114.P13059591505289386329

`A130810(n+4)+A033996(n)-A033996(n+1)`
-/

namespace A086114.P13059591505289386329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130810 (n + 4) + (A033996 n - A033996 (n + 1))

end

end A086114.P13059591505289386329

namespace A086114

/-- `A130810(n+4)+A033996(n)-A033996(n+1)` -/
def P13059591505289386329.Spec : Prop :=
  ∀ n, P13059591505289386329.a n = A086114 (n + 1)

end A086114

/-!
# A086115: Number of 5 X n (0,1) matrices such that each row and each column is nondecreasing or nonincreasing.

The programs for A086115, the canonical program `A086115.P16574637555429073026` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086115 has offset 1).

The definition of A086115 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086115.P16574637555429073026

`1/6*(n+1)*((n+1)^4+10*(n+1)^3+35*(n+1)²+50*(n+1)-36)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086115

/-- `1/6*(n+1)*((n+1)^4+10*(n+1)^3+35*(n+1)²+50*(n+1)-36)` -/
def P16574637555429073026.Spec : Prop :=
  ∀ n, P16574637555429073026.a n = (A086115 (n + 1) : ℚ)

end A086115

/-! ## A086115.P1317340908211551643

`a(n-1)+5*(a(n-1)/n+8)` with `a(0)=10`
-/

namespace A086115.P1317340908211551643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [10] fun n a =>
  a (n - 1) + 5 * (a (n - 1) / (n : ℚ) + 8)

end

end A086115.P1317340908211551643

namespace A086115

/-- `a(n-1)+5*(a(n-1)/n+8)` -/
def P1317340908211551643.Spec : Prop :=
  ∀ n, P1317340908211551643.a n = (A086115 (n + 1) : ℚ)

end A086115

/-! ## A086115.P18397351626146352247

`∑[4*A154286(n)-10]`
-/

namespace A086115.P18397351626146352247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A154286 n - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086115.P18397351626146352247

namespace A086115

/-- `∑[4*A154286(n)-10]` -/
def P18397351626146352247.Spec : Prop :=
  ∀ n, P18397351626146352247.a n = A086115 (n + 1)

end A086115

/-! ## A086115.P15690206240189568221

`A086113(n+1)*A207402(n+1)/A207400(n+1)`
-/

namespace A086115.P15690206240189568221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086113 (n + 1) * A207402 (n + 1) : ℚ) / (A207400 (n + 1) : ℚ)

end

end A086115.P15690206240189568221

namespace A086115

/-- `A086113(n+1)*A207402(n+1)/A207400(n+1)` -/
def P15690206240189568221.Spec : Prop :=
  ∀ n, P15690206240189568221.a n = (A086115 (n + 1) : ℚ)

end A086115

/-! ## A086115.P1260259997608041840

`∑[5*(A033488(n+1)-2)]`
-/

namespace A086115.P1260259997608041840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A033488 (n + 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086115.P1260259997608041840

namespace A086115

/-- `∑[5*(A033488(n+1)-2)]` -/
def P1260259997608041840.Spec : Prop :=
  ∀ n, P1260259997608041840.a n = A086115 (n + 1)

end A086115

/-! ## A086115.P5493831252212327578

`∑[10*A135370(A143975(n+1))]`
-/

namespace A086115.P5493831252212327578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A135370 (A143975 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086115.P5493831252212327578

namespace A086115

/-- `∑[10*A135370(A143975(n+1))]` -/
def P5493831252212327578.Spec : Prop :=
  ∀ n, P5493831252212327578.a n = A086115 (n + 1)

end A086115

/-! ## A086115.P9357767388221757156

`∑[10*A143975(A034856(n+1))]`
-/

namespace A086115.P9357767388221757156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A143975 (A034856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086115.P9357767388221757156

namespace A086115

/-- `∑[10*A143975(A034856(n+1))]` -/
def P9357767388221757156.Spec : Prop :=
  ∀ n, P9357767388221757156.a n = A086115 (n + 1)

end A086115

/-!
# A086116: Numerator of mean deviation of a symmetrical binomial distribution on n elements.

The programs for A086116, the canonical program `A086116.P3280581305434518023` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086116 has offset 1).

The definition of A086116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086116.P17588288492113764117

`((n+1)%2+n)*a(n-1)/gcd(n, a(n-1))` with `a(0)=1`
-/

namespace A086116.P17588288492113764117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (((n + 1) % 2 + n : ℕ) : ℚ) * (a (n - 1) / (Int.gcd (n : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ))

end

end A086116.P17588288492113764117

namespace A086116

/-- `((n+1)%2+n)*a(n-1)/gcd(n, a(n-1))` -/
def P17588288492113764117.Spec : Prop :=
  ∀ n, P17588288492113764117.a n = (A086116 (n + 1) : ℚ)

end A086116

/-! ## A086116.P3280581305434518023

`A163590(or(1, n))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A086116

/-- `A163590(or(1, n))` -/
def P3280581305434518023.Spec : Prop :=
  ∀ n, P3280581305434518023.a n = A086116 (n + 1)

theorem P3280581305434518023.correct : P3280581305434518023.Spec := by
  intro n
  simp only [A086116, Nat.add_sub_cancel]

end A086116

/-! ## A086116.P8335142170601724333

`A380909(or(1, n))`
-/

namespace A086116.P8335142170601724333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380909 (Nat.lor 1 n)

end

end A086116.P8335142170601724333

namespace A086116

/-- `A380909(or(1, n))` -/
def P8335142170601724333.Spec : Prop :=
  ∀ n, P8335142170601724333.a n = A086116 (n + 1)

end A086116

/-! ## A086116.P13604354205929024236

`A001803(floor(n/2))`
-/

namespace A086116.P13604354205929024236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001803 ⌊(n : ℚ) / 2⌋.toNat

end

end A086116.P13604354205929024236

namespace A086116

/-- `A001803(floor(n/2))` -/
def P13604354205929024236.Spec : Prop :=
  ∀ n, P13604354205929024236.a n = A086116 (n + 1)

end A086116

/-! ## A086116.P1527145412699269859

`A004731(or(1, n)+1)`
-/

namespace A086116.P1527145412699269859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004731 (Nat.lor 1 n + 1)

end

end A086116.P1527145412699269859

namespace A086116

/-- `A004731(or(1, n)+1)` -/
def P1527145412699269859.Spec : Prop :=
  ∀ n, P1527145412699269859.a n = A086116 (n + 1)

end A086116

/-! ## A086116.P4689189116102603747

`A004731(gcd(2, n)+n)`
-/

namespace A086116.P4689189116102603747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004731 (Nat.gcd 2 n + n)

end

end A086116.P4689189116102603747

namespace A086116

/-- `A004731(gcd(2, n)+n)` -/
def P4689189116102603747.Spec : Prop :=
  ∀ n, P4689189116102603747.a n = A086116 (n + 1)

end A086116

/-! ## A086116.P969224235603463123

`A163590(A109613(n))`
-/

namespace A086116.P969224235603463123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163590 (A109613 n).toNat

end

end A086116.P969224235603463123

namespace A086116

/-- `A163590(A109613(n))` -/
def P969224235603463123.Spec : Prop :=
  ∀ n, P969224235603463123.a n = A086116 (n + 1)

end A086116

/-! ## A086116.P12452916571475426411

`A004731(A109613(n)+1)`
-/

namespace A086116.P12452916571475426411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004731 (A109613 n + 1).toNat

end

end A086116.P12452916571475426411

namespace A086116

/-- `A004731(A109613(n)+1)` -/
def P12452916571475426411.Spec : Prop :=
  ∀ n, P12452916571475426411.a n = A086116 (n + 1)

end A086116

/-! ## A086116.P7480640134916150865

`A163590(A063196(n+1))`
-/

namespace A086116.P7480640134916150865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163590 (A063196 (n + 1)).toNat

end

end A086116.P7480640134916150865

namespace A086116

/-- `A163590(A063196(n+1))` -/
def P7480640134916150865.Spec : Prop :=
  ∀ n, P7480640134916150865.a n = A086116 (n + 1)

end A086116

/-! ## A086116.P509355502905871655

`A004731(A131055(n+2))`
-/

namespace A086116.P509355502905871655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004731 (A131055 (n + 2)).toNat

end

end A086116.P509355502905871655

namespace A086116

/-- `A004731(A131055(n+2))` -/
def P509355502905871655.Spec : Prop :=
  ∀ n, P509355502905871655.a n = A086116 (n + 1)

end A086116

/-! ## A086116.P9727526242195451805

`A004731(Δ[A007494(n)]+n)`
-/

namespace A086116.P9727526242195451805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004731 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A086116.P9727526242195451805

namespace A086116

/-- `A004731(Δ[A007494(n)]+n)` -/
def P9727526242195451805.Spec : Prop :=
  ∀ n, P9727526242195451805.a n = A086116 (n + 1)

end A086116

/-! ## A086116.P13135024467705068363

`A004731(A000034(n+1)+n)`
-/

namespace A086116.P13135024467705068363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004731 (A000034 (n + 1) + (n : ℤ)).toNat

end

end A086116.P13135024467705068363

namespace A086116

/-- `A004731(A000034(n+1)+n)` -/
def P13135024467705068363.Spec : Prop :=
  ∀ n, P13135024467705068363.a n = A086116 (n + 1)

end A086116

/-! ## A086116.P16854482068291063823

`A004731(2-A000035(n)+n)`
-/

namespace A086116.P16854482068291063823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004731 (2 - A000035 n + (n : ℤ)).toNat

end

end A086116.P16854482068291063823

namespace A086116

/-- `A004731(2-A000035(n)+n)` -/
def P16854482068291063823.Spec : Prop :=
  ∀ n, P16854482068291063823.a n = A086116 (n + 1)

end A086116

/-! ## A086116.P1974260161256949256

`A004731(2-(A000035(n)-n))`
-/

namespace A086116.P1974260161256949256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004731 (2 - (A000035 n - (n : ℤ))).toNat

end

end A086116.P1974260161256949256

namespace A086116

/-- `A004731(2-(A000035(n)-n))` -/
def P1974260161256949256.Spec : Prop :=
  ∀ n, P1974260161256949256.a n = A086116 (n + 1)

end A086116

/-! ## A086116.P2755014090322906142

`lcm(A163590(n+1), A163590(n))`
-/

namespace A086116.P2755014090322906142
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A163590 (n + 1)) (A163590 n)

end

end A086116.P2755014090322906142

namespace A086116

/-- `lcm(A163590(n+1), A163590(n))` -/
def P2755014090322906142.Spec : Prop :=
  ∀ n, (P2755014090322906142.a n : ℤ) = A086116 (n + 1)

end A086116

/-! ## A086116.P7937063128727560251

`A000265(n+1)*A001790(A065033(n))`
-/

namespace A086116.P7937063128727560251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A001790 (A065033 n).toNat

end

end A086116.P7937063128727560251

namespace A086116

/-- `A000265(n+1)*A001790(A065033(n))` -/
def P7937063128727560251.Spec : Prop :=
  ∀ n, P7937063128727560251.a n = A086116 (n + 1)

end A086116

/-! ## A086116.P15752569962971668123

`A000265(n+1)*A001790(A110654(n))`
-/

namespace A086116.P15752569962971668123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A001790 (A110654 n).toNat

end

end A086116.P15752569962971668123

namespace A086116

/-- `A000265(n+1)*A001790(A110654(n))` -/
def P15752569962971668123.Spec : Prop :=
  ∀ n, P15752569962971668123.a n = A086116 (n + 1)

end A086116

/-! ## A086116.P14210092731308518331

`A036069(A109613(n)-1)*A109613(n)`
-/

namespace A086116.P14210092731308518331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036069 (A109613 n - 1).toNat * A109613 n

end

end A086116.P14210092731308518331

namespace A086116

/-- `A036069(A109613(n)-1)*A109613(n)` -/
def P14210092731308518331.Spec : Prop :=
  ∀ n, P14210092731308518331.a n = A086116 (n + 1)

end A086116

/-! ## A086116.P3997522710888405537

`gcd(A217858(n+1), A331552(n))`
-/

namespace A086116.P3997522710888405537
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A217858 (n + 1)) (A331552 n)

end

end A086116.P3997522710888405537

namespace A086116

/-- `gcd(A217858(n+1), A331552(n))` -/
def P3997522710888405537.Spec : Prop :=
  ∀ n, (P3997522710888405537.a n : ℤ) = A086116 (n + 1)

end A086116

/-! ## A086116.P4683022707406390166

`gcd(A001902(n), A331552(n))`
-/

namespace A086116.P4683022707406390166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001902 n) (A331552 n)

end

end A086116.P4683022707406390166

namespace A086116

/-- `gcd(A001902(n), A331552(n))` -/
def P4683022707406390166.Spec : Prop :=
  ∀ n, (P4683022707406390166.a n : ℤ) = A086116 (n + 1)

end A086116

/-!
# A086117: Denominator of mean deviation of a symmetrical binomial distribution on n elements.

The programs for A086117, the canonical program `A086117.P2161699557421297109` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086117 has offset 1).

The definition of A086117 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086117.P2161699557421297109

`a(n-1)*A006519(n)` with `a(0)=2, a(1)=2`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A086117

/-- `a(n-1)*A006519(n)` -/
def P2161699557421297109.Spec : Prop :=
  ∀ n, P2161699557421297109.a n = A086117 (n + 1)

theorem P2161699557421297109.correct : P2161699557421297109.Spec := by
  intro n
  simp only [A086117, Nat.add_sub_cancel]

end A086117

/-! ## A086117.P14858708765955895270

`∏[gcd(n, ∏[gcd(2, n)])]`
-/

namespace A086117.P14858708765955895270
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A086117.P14858708765955895270

namespace A086117

/-- `∏[gcd(n, ∏[gcd(2, n)])]` -/
def P14858708765955895270.Spec : Prop :=
  ∀ n, (P14858708765955895270.a n : ℤ) = A086117 (n + 1)

end A086117

/-! ## A086117.P15992557010038926022

`and(n, -n)*a(n-1)` with `a(0)=2`
-/

namespace A086117.P15992557010038926022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.land (n : ℤ) (-(n : ℤ)) * a (n - 1)

end

end A086117.P15992557010038926022

namespace A086117

/-- `and(n, -n)*a(n-1)` -/
def P15992557010038926022.Spec : Prop :=
  ∀ n, P15992557010038926022.a n = A086117 (n + 1)

end A086117

/-! ## A086117.P12980906051547778693

`2^val(n, 2)*a(n-1)` with `a(0)=2`
-/

namespace A086117.P12980906051547778693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  2 ^ SequenceMachineLib.valuation n 2 * a (n - 1)

end

end A086117.P12980906051547778693

namespace A086117

/-- `2^val(n, 2)*a(n-1)` -/
def P12980906051547778693.Spec : Prop :=
  ∀ n, (P12980906051547778693.a n : ℤ) = A086117 (n + 1)

end A086117

/-! ## A086117.P13796637990481597026

`-or(n, -n)*a(n-1)` with `a(0)=2`
-/

namespace A086117.P13796637990481597026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  -(Int.lor (n : ℤ) (-(n : ℤ)) * a (n - 1))

end

end A086117.P13796637990481597026

namespace A086117

/-- `-or(n, -n)*a(n-1)` -/
def P13796637990481597026.Spec : Prop :=
  ∀ n, P13796637990481597026.a n = A086117 (n + 1)

end A086117

/-! ## A086117.P10669222545593361488

`(n-and(n, n-1))*a(n-1)` with `a(0)=2`
-/

namespace A086117.P10669222545593361488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ((n : ℤ) - Int.land (n : ℤ) ((n : ℤ) - 1)) * a (n - 1)

end

end A086117.P10669222545593361488

namespace A086117

/-- `(n-and(n, n-1))*a(n-1)` -/
def P10669222545593361488.Spec : Prop :=
  ∀ n, P10669222545593361488.a n = A086117 (n + 1)

end A086117

/-! ## A086117.P721948276329207588

`gcd(3*n, a(n-1))*a(n-1)` with `a(0)=2`
-/

namespace A086117.P721948276329207588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.gcd (3 * n) (a (n - 1)) * a (n - 1)

end

end A086117.P721948276329207588

namespace A086117

/-- `gcd(3*n, a(n-1))*a(n-1)` -/
def P721948276329207588.Spec : Prop :=
  ∀ n, (P721948276329207588.a n : ℤ) = A086117 (n + 1)

end A086117

/-! ## A086117.P5568493326341165931

`(or(n, n-1)-(n-1))*a(n-1)` with `a(0)=2`
-/

namespace A086117.P5568493326341165931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (Int.lor (n : ℤ) ((n : ℤ) - 1) - ((n : ℤ) - 1)) * a (n - 1)

end

end A086117.P5568493326341165931

namespace A086117

/-- `(or(n, n-1)-(n-1))*a(n-1)` -/
def P5568493326341165931.Spec : Prop :=
  ∀ n, P5568493326341165931.a n = A086117 (n + 1)

end A086117

/-! ## A086117.P1701884093319895748

`2*A060818(n)`
-/

namespace A086117.P1701884093319895748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060818 n

end

end A086117.P1701884093319895748

namespace A086117

/-- `2*A060818(n)` -/
def P1701884093319895748.Spec : Prop :=
  ∀ n, P1701884093319895748.a n = A086117 (n + 1)

end A086117

/-! ## A086117.P12966779526745299463

`A036069(or(1, n))`
-/

namespace A086117.P12966779526745299463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036069 (Nat.lor 1 n)

end

end A086117.P12966779526745299463

namespace A086117

/-- `A036069(or(1, n))` -/
def P12966779526745299463.Spec : Prop :=
  ∀ n, P12966779526745299463.a n = A086117 (n + 1)

end A086117

/-! ## A086117.P1887757670608053390

`2^(A011371(n)+1)`
-/

namespace A086117.P1887757670608053390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A011371 n + 1 : ℤ)

end

end A086117.P1887757670608053390

namespace A086117

/-- `2^(A011371(n)+1)` -/
def P1887757670608053390.Spec : Prop :=
  ∀ n, P1887757670608053390.a n = (A086117 (n + 1) : ℚ)

end A086117

/-! ## A086117.P17630474526427737249

`2*A004731(or(1, n))`
-/

namespace A086117.P17630474526427737249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004731 (Nat.lor 1 n)

end

end A086117.P17630474526427737249

namespace A086117

/-- `2*A004731(or(1, n))` -/
def P17630474526427737249.Spec : Prop :=
  ∀ n, P17630474526427737249.a n = A086117 (n + 1)

end A086117

/-! ## A086117.P18273700504579146932

`2^(A101925(n)-n)`
-/

namespace A086117.P18273700504579146932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A101925 n - (n : ℤ) : ℤ)

end

end A086117.P18273700504579146932

namespace A086117

/-- `2^(A101925(n)-n)` -/
def P18273700504579146932.Spec : Prop :=
  ∀ n, P18273700504579146932.a n = (A086117 (n + 1) : ℚ)

end A086117

/-! ## A086117.P15435894694728271101

`2^(1-A000120(n)+n)`
-/

namespace A086117.P15435894694728271101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (1 - A000120 n + (n : ℤ) : ℤ)

end

end A086117.P15435894694728271101

namespace A086117

/-- `2^(1-A000120(n)+n)` -/
def P15435894694728271101.Spec : Prop :=
  ∀ n, P15435894694728271101.a n = (A086117 (n + 1) : ℚ)

end A086117

/-! ## A086117.P5599794928386236517

`A101926(A004526(n))`
-/

namespace A086117.P5599794928386236517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101926 (A004526 n).toNat

end

end A086117.P5599794928386236517

namespace A086117

/-- `A101926(A004526(n))` -/
def P5599794928386236517.Spec : Prop :=
  ∀ n, P5599794928386236517.a n = A086117 (n + 1)

end A086117

/-! ## A086117.P2522602957472832267

`A036069(A109613(n))`
-/

namespace A086117.P2522602957472832267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036069 (A109613 n).toNat

end

end A086117.P2522602957472832267

namespace A086117

/-- `A036069(A109613(n))` -/
def P2522602957472832267.Spec : Prop :=
  ∀ n, P2522602957472832267.a n = A086117 (n + 1)

end A086117

/-! ## A086117.P5998186583134809494

`A000079(A011371(n)+1)`
-/

namespace A086117.P5998186583134809494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A011371 n + 1).toNat

end

end A086117.P5998186583134809494

namespace A086117

/-- `A000079(A011371(n)+1)` -/
def P5998186583134809494.Spec : Prop :=
  ∀ n, P5998186583134809494.a n = A086117 (n + 1)

end A086117

/-! ## A086117.P11355942276822675291

`A011782(A011371(n)+2)`
-/

namespace A086117.P11355942276822675291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A011371 n + 2).toNat

end

end A086117.P11355942276822675291

namespace A086117

/-- `A011782(A011371(n)+2)` -/
def P11355942276822675291.Spec : Prop :=
  ∀ n, P11355942276822675291.a n = A086117 (n + 1)

end A086117

/-! ## A086117.P15990314801177116360

`A131577(A011371(n)+2)`
-/

namespace A086117.P15990314801177116360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A011371 n + 2).toNat

end

end A086117.P15990314801177116360

namespace A086117

/-- `A131577(A011371(n)+2)` -/
def P15990314801177116360.Spec : Prop :=
  ∀ n, P15990314801177116360.a n = A086117 (n + 1)

end A086117

/-! ## A086117.P15396228231062079538

`A101926(A140106(n+2))`
-/

namespace A086117.P15396228231062079538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101926 (A140106 (n + 2)).toNat

end

end A086117.P15396228231062079538

namespace A086117

/-- `A101926(A140106(n+2))` -/
def P15396228231062079538.Spec : Prop :=
  ∀ n, P15396228231062079538.a n = A086117 (n + 1)

end A086117

/-!
# A086119: Numbers of the form p^3 + q^3, p, q primes.

The programs for A086119, there is no canonical definition to state claims against.
-/

/-! ## A086119.P11367733405155207810

`∪[A120398(n+1), A172190(n+1)]`
-/

namespace A086119.P11367733405155207810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A086119.P11367733405155207810

/-! ## A086119.P6255977984728248558

`∪[2*A030078(n+1), A120398(n+1)]`
-/

namespace A086119.P6255977984728248558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A030078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A086119.P6255977984728248558

/-! ## A086119.P12498457392694485153

`∩[A086121(n+1), A307417(n+1)]`
-/

namespace A086119.P12498457392694485153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086119.P12498457392694485153

/-!
# A086121: Positive sums or differences of two cubes of primes.

The programs for A086121, there is no canonical definition to state claims against.
-/

/-! ## A086121.P12211763640762507960

`∪[A086119(n+1), A086120(n+1)]`
-/

namespace A086121.P12211763640762507960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A086121.P12211763640762507960

/-!
# A086122: 

The programs for A086122, there is no canonical definition to state claims against.
-/

/-! ## A086122.P9151192016720243667

`A003463(A004061(n+1))`
-/

namespace A086122.P9151192016720243667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 (A004061 (n + 1)).toNat

end

end A086122.P9151192016720243667

/-!
# A086123: a(n) = A004061(n) - 1.

The programs for A086123, there is no canonical definition to state claims against.
-/

/-! ## A086123.P4422245948699179814

`A004061(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A086123.P4422245948699179814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004061 (n + 1) - 1

end

end A086123.P4422245948699179814

/-! ## A086123.P12488446970843665358

`record[A004061(A064067(n))-1]`
-/

namespace A086123.P12488446970843665358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004061 (A064067 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086123.P12488446970843665358

/-! ## A086123.P586526012534503209

`record[A004061(A116549(n))-1]`
-/

namespace A086123.P586526012534503209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004061 (A116549 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086123.P586526012534503209

/-! ## A086123.P12621806038216298889

`record[A004061(A366895(n))-1]`
-/

namespace A086123.P12621806038216298889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004061 (A366895 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086123.P12621806038216298889

/-! ## A086123.P1998812612315961737

`xor(1, A004061(A000027(n+1)))`
-/

namespace A086123.P1998812612315961737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A004061 (A000027 (n + 1)).toNat)

end

end A086123.P1998812612315961737

/-!
# A086125: Values of k such that f(k) is a prime, where f(1) = 1, f(i) = prime(i)*f(i-1) + 2.

The programs for A086125, there is no canonical definition to state claims against.
-/

/-! ## A086125.P8060562062866480119

`A340828(2^n)+∑[2*n]+1`
-/

namespace A086125.P8060562062866480119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340828 (2 ^ n) + ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A086125.P8060562062866480119

/-! ## A086125.P1108892686257708227

`A028237(A018173(n+1))`
-/

namespace A086125.P1108892686257708227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028237 (A018173 (n + 1)).toNat

end

end A086125.P1108892686257708227

/-!
# A086130: a(n) = lcm(n, A003415(n)).

The programs for A086130, the canonical program `A086130.P10820220984764125251` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086130 has offset 1).

The definition of A086130 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A086130.P10820220984764125251

`lcm(n+1, A003415(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A086130

/-- `lcm(n+1, A003415(n+1))` -/
def P10820220984764125251.Spec : Prop :=
  ∀ n, (P10820220984764125251.a n : ℤ) = A086130 (n + 1)

theorem P10820220984764125251.correct : P10820220984764125251.Spec := by
  intro n
  simp only [A086130, Nat.add_sub_cancel]

end A086130

/-! ## A086130.P16776704824684210607

`lcm(n+1, ∑[A258057(n)])`
-/

namespace A086130.P16776704824684210607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A086130.P16776704824684210607

namespace A086130

/-- `lcm(n+1, ∑[A258057(n)])` -/
def P16776704824684210607.Spec : Prop :=
  ∀ n, (P16776704824684210607.a n : ℤ) = A086130 (n + 1)

end A086130

/-! ## A086130.P6066497986486656252

`(n+1)*A083345(n+1)`
-/

namespace A086130.P6066497986486656252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A083345 (n + 1)

end

end A086130.P6066497986486656252

namespace A086130

/-- `(n+1)*A083345(n+1)` -/
def P6066497986486656252.Spec : Prop :=
  ∀ n, P6066497986486656252.a n = A086130 (n + 1)

end A086130

/-! ## A086130.P16982664547811828295

`∑[A258057(n)]*A083346(n+1)`
-/

namespace A086130.P16982664547811828295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A083346 (n + 1)

end

end A086130.P16982664547811828295

namespace A086130

/-- `∑[A258057(n)]*A083346(n+1)` -/
def P16982664547811828295.Spec : Prop :=
  ∀ n, P16982664547811828295.a n = A086130 (n + 1)

end A086130

/-! ## A086130.P8047466122040394110

`A003415(n+1)*A083346(n+1)`
-/

namespace A086130.P8047466122040394110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) * A083346 (n + 1)

end

end A086130.P8047466122040394110

namespace A086130

/-- `A003415(n+1)*A083346(n+1)` -/
def P8047466122040394110.Spec : Prop :=
  ∀ n, P8047466122040394110.a n = A086130 (n + 1)

end A086130

/-! ## A086130.P10424158751179638878

`A085731(n+1)*A189036(n+1)`
-/

namespace A086130.P10424158751179638878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085731 (n + 1) * A189036 (n + 1)

end

end A086130.P10424158751179638878

namespace A086130

/-- `A085731(n+1)*A189036(n+1)` -/
def P10424158751179638878.Spec : Prop :=
  ∀ n, P10424158751179638878.a n = A086130 (n + 1)

end A086130

/-! ## A086130.P4496796098335226317

`A190116(n+1)/A085731(n+1)`
-/

namespace A086130.P4496796098335226317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190116 (n + 1) : ℚ) / (A085731 (n + 1) : ℚ)

end

end A086130.P4496796098335226317

namespace A086130

/-- `A190116(n+1)/A085731(n+1)` -/
def P4496796098335226317.Spec : Prop :=
  ∀ n, P4496796098335226317.a n = (A086130 (n + 1) : ℚ)

end A086130

/-! ## A086130.P15735084694770966259

`(n+1)*A003415(n+1)/A085731(n+1)`
-/

namespace A086130.P15735084694770966259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A003415 (n + 1) : ℚ) / (A085731 (n + 1) : ℚ))

end

end A086130.P15735084694770966259

namespace A086130

/-- `(n+1)*A003415(n+1)/A085731(n+1)` -/
def P15735084694770966259.Spec : Prop :=
  ∀ n, P15735084694770966259.a n = (A086130 (n + 1) : ℚ)

end A086130

/-! ## A086130.P3798046394068993298

`(n+1)*A318573(A064988(n+1))`
-/

namespace A086130.P3798046394068993298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A318573 (A064988 (n + 1)).toNat

end

end A086130.P3798046394068993298

namespace A086130

/-- `(n+1)*A318573(A064988(n+1))` -/
def P3798046394068993298.Spec : Prop :=
  ∀ n, P3798046394068993298.a n = A086130 (n + 1)

end A086130

/-!
# A086131: Largest prime factor of arithmetic derivative of n if it exists, or a(n)=0 for n=1 and n=prime.

The programs for A086131, the canonical program `A086131.P10243863715148630400` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086131 has offset 1).

The definition of A086131 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086131.P10243863715148630400

`∑{p}[A006530(∏{p}[A003415(n+1), #]), #]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A086131

/-- `∑{p}[A006530(∏{p}[A003415(n+1), #]), #]` -/
def P10243863715148630400.Spec : Prop :=
  ∀ n, (P10243863715148630400.a n : ℤ) = A086131 (n + 1)

theorem P10243863715148630400.correct : P10243863715148630400.Spec := by
  intro n
  simp only [A086131, Nat.add_sub_cancel]

end A086131

/-! ## A086131.P9308749928037830015

`A006530(A003415(abs(1-n)+2))*A066247(n+1)`
-/

namespace A086131.P9308749928037830015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A003415 (|1 - (n : ℤ)| + 2).toNat).toNat * A066247 (n + 1)

end

end A086131.P9308749928037830015

namespace A086131

/-- `A006530(A003415(abs(1-n)+2))*A066247(n+1)` -/
def P9308749928037830015.Spec : Prop :=
  ∀ n, P9308749928037830015.a n = A086131 (n + 1)

end A086131

/-! ## A086131.P5368893752517869460

`∑{p}[A006530(∏{d}[A003415(n+1), #]), #]`
-/

namespace A086131.P5368893752517869460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ d ∈ Nat.divisors (f2 n).natAbs, d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A086131.P5368893752517869460

namespace A086131

/-- `∑{p}[A006530(∏{d}[A003415(n+1), #]), #]` -/
def P5368893752517869460.Spec : Prop :=
  ∀ n, (P5368893752517869460.a n : ℤ) = A086131 (n + 1)

end A086131

/-! ## A086131.P16703161902916919113

`A008472(A006530(∏{d}[A003415(n+1), #]))`
-/

namespace A086131.P16703161902916919113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A006530 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)).toNat

end

end A086131.P16703161902916919113

namespace A086131

/-- `A008472(A006530(∏{d}[A003415(n+1), #]))` -/
def P16703161902916919113.Spec : Prop :=
  ∀ n, P16703161902916919113.a n = A086131 (n + 1)

end A086131

/-!
# A086132: Numbers that have the same largest prime factor as their arithmetic derivative.

The programs for A086132, the canonical program `A086132.P13935818927788794844` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086132 has offset 1).

The definition of A086132 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086132.P13935818927788794844

`eq[A006530(n+1), A086131(n+1)]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A086132

/-- `eq[A006530(n+1), A086131(n+1)]+1` -/
def P13935818927788794844.Spec : Prop :=
  ∀ n, (P13935818927788794844.a n : ℤ) = A086132 (n + 1)

theorem P13935818927788794844.correct : P13935818927788794844.Spec := by
  intro n
  simp only [A086132, Nat.add_sub_cancel]

end A086132

/-! ## A086132.P9494873651527716953

`∩[A070003(n+1), A395045(n+1)]`
-/

namespace A086132.P9494873651527716953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086132.P9494873651527716953

namespace A086132

/-- `∩[A070003(n+1), A395045(n+1)]` -/
def P9494873651527716953.Spec : Prop :=
  ∀ n, (P9494873651527716953.a n : ℤ) = A086132 (n + 1)

end A086132

/-! ## A086132.P15741833581307834325

`eq[A086131(n+1), A111089(n+1)]+1`
-/

namespace A086132.P15741833581307834325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A086132.P15741833581307834325

namespace A086132

/-- `eq[A086131(n+1), A111089(n+1)]+1` -/
def P15741833581307834325.Spec : Prop :=
  ∀ n, (P15741833581307834325.a n : ℤ) = A086132 (n + 1)

end A086132

/-! ## A086132.P11802473220098606369

`eq[A070229(n+1)-(n+1), A086131(n+1)]+1`
-/

namespace A086132.P11802473220098606369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070229 (n + 1) - (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086131 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A086132.P11802473220098606369

namespace A086132

/-- `eq[A070229(n+1)-(n+1), A086131(n+1)]+1` -/
def P11802473220098606369.Spec : Prop :=
  ∀ n, (P11802473220098606369.a n : ℤ) = A086132 (n + 1)

end A086132

/-! ## A086132.P6119840499578744582

`eq[A046665(n+1)+A020639(n+1), A086131(n+1)]+1`
-/

namespace A086132.P6119840499578744582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (n + 1) + A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086131 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A086132.P6119840499578744582

namespace A086132

/-- `eq[A046665(n+1)+A020639(n+1), A086131(n+1)]+1` -/
def P6119840499578744582.Spec : Prop :=
  ∀ n, (P6119840499578744582.a n : ℤ) = A086132 (n + 1)

end A086132

/-!
# A086133: Numbers k such that the smallest prime factor of the arithmetic derivative of k equals that of k.

The programs for A086133, there is no canonical definition to state claims against.
-/

/-! ## A086133.P11247565227952330510

`eq[A020639(n+1), A086134(n+1)]+1`
-/

namespace A086133.P11247565227952330510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086134 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A086133.P11247565227952330510

/-! ## A086133.P17073541966679292281

`eq[A020639(A028310(n)), A086134(n)]`
-/

namespace A086133.P17073541966679292281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086134 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A086133.P17073541966679292281

/-! ## A086133.P10299625856277108315

`eq[A020639(A014681(n+1)), A086134(n)]`
-/

namespace A086133.P10299625856277108315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A014681 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086134 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A086133.P10299625856277108315

/-! ## A086133.P13264210507114597685

`eq[A020639(A123108(2*n)), A086134(n)]`
-/

namespace A086133.P13264210507114597685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A123108 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086134 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A086133.P13264210507114597685

/-! ## A086133.P2254930815403249270

`eq[A020639(A233583(n+1)), A086134(n)]`
-/

namespace A086133.P2254930815403249270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086134 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A086133.P2254930815403249270

/-! ## A086133.P16396948774911156091

`eq[A020639(A181861(n)), A086134(n)]`
-/

namespace A086133.P16396948774911156091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A181861 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086134 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A086133.P16396948774911156091

/-! ## A086133.P778930507741720854

`eq[A020639(A114964(n)), A086134(n)]`
-/

namespace A086133.P778930507741720854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A114964 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086134 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A086133.P778930507741720854

/-!
# A086134: Smallest prime factor of arithmetic derivative of n or a(n)=0 if no such prime exists.

The programs for A086134, there is no canonical definition to state claims against.
-/

/-! ## A086134.P326935838400931923

`A020500(A020639(∏{p}[A003415(n), #]))`
-/

namespace A086134.P326935838400931923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020500 (A020639 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)).toNat

end

end A086134.P326935838400931923

/-! ## A086134.P5302320278844709835

`A080368(∏{p}[A003415(n), #])`
-/

namespace A086134.P5302320278844709835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080368 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A086134.P5302320278844709835

/-! ## A086134.P14363671307149039932

`A081811(∏{p}[A003415(n), #])`
-/

namespace A086134.P14363671307149039932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081811 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A086134.P14363671307149039932

/-! ## A086134.P12675951227396621490

`∑{p}[A020639(A003415(A233583(n+1))), #]`
-/

namespace A086134.P12675951227396621490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A003415 (A233583 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A086134.P12675951227396621490

/-! ## A086134.P4233289534192262415

`A039653(A107286(A003415(n)²))`
-/

namespace A086134.P4233289534192262415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (A107286 (A003415 n ^ 2).toNat).toNat

end

end A086134.P4233289534192262415

/-! ## A086134.P1022878081927040850

`A227196(A003415(A233583(n+1))²)`
-/

namespace A086134.P1022878081927040850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (A003415 (A233583 (n + 1)).toNat ^ 2).toNat

end

end A086134.P1022878081927040850

/-! ## A086134.P15199484261052620873

`A003415(A107286(n))*A107286(A003415(n)²)`
-/

namespace A086134.P15199484261052620873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A107286 n).toNat * A107286 (A003415 n ^ 2).toNat

end

end A086134.P15199484261052620873

/-!
# A086135: Numbers n such that n and n+10 are both prime but are non-consecutive; which means that at least one prime is between n and n+10; it is not identical with A023303 because here the terms of A031928 are missing.

The programs for A086135, there is no canonical definition to state claims against.
-/

/-! ## A086135.P4446550274097913882

`∪[A046136(n+1), A046139(n+1)]`
-/

namespace A086135.P4446550274097913882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A086135.P4446550274097913882

/-! ## A086135.P10520523333355081983

`∪[A046136(n+1), A078562(n+1)]`
-/

namespace A086135.P10520523333355081983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A086135.P10520523333355081983

/-! ## A086135.P9490047897423675441

`∪[A046136(n+1), A286313(n+1)]`
-/

namespace A086135.P9490047897423675441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A086135.P9490047897423675441

/-! ## A086135.P10328478184148996086

`∩[A015916(n+1), A124590(n+1)]`
-/

namespace A086135.P10328478184148996086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086135.P10328478184148996086

/-! ## A086135.P242414184519717583

`∩[A124590(n+1), A262086(n+1)]`
-/

namespace A086135.P242414184519717583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086135.P242414184519717583

/-! ## A086135.P7367372830262207248

`∩[A124590(n+1), A172407(n+1)]`
-/

namespace A086135.P7367372830262207248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086135.P7367372830262207248

/-! ## A086135.P12897753570154167111

`p?[A100484(n+1)%(A062234(n+1)+10)]`
-/

namespace A086135.P12897753570154167111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100484 (n + 1)) (A062234 (n + 1) + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086135.P12897753570154167111

/-! ## A086135.P102144645971529169

`record[A006530(A088967(n+2)-1)%p?[2*n+9]]`
-/

namespace A086135.P102144645971529169
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 9

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A088967 (n + 2) - 1).toNat) (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086135.P102144645971529169

/-! ## A086135.P9855034100316231458

`∩[A015916(n+1), A124591(n+1)]`
-/

namespace A086135.P9855034100316231458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086135.P9855034100316231458

/-! ## A086135.P5195695717261806559

`∩[A124591(n+1), A262086(n+1)]`
-/

namespace A086135.P5195695717261806559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086135.P5195695717261806559

/-! ## A086135.P2778044356107448115

`p?[A007918(A072541(n+1))-10]`
-/

namespace A086135.P2778044356107448115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A072541 (n + 1)).toNat - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086135.P2778044356107448115

/-! ## A086135.P13775155984508318599

`∩[A124591(n+1), A172407(n+1)]`
-/

namespace A086135.P13775155984508318599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086135.P13775155984508318599

/-!
# A086136: Primes p such that p and p+12 are nonconsecutive primes.

The programs for A086136, the canonical program `A086136.P10594966306666356513` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086136 has offset 1).

The definition of A086136 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086136.P10594966306666356513

`record[A046133(n+1)%A318319(A092216(n+1))]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A086136

/-- `record[A046133(n+1)%A318319(A092216(n+1))]` -/
def P10594966306666356513.Spec : Prop :=
  ∀ n, P10594966306666356513.a n = A086136 (n + 1)

theorem P10594966306666356513.correct : P10594966306666356513.Spec := by
  intro n
  simp only [A086136, Nat.add_sub_cancel]

end A086136

/-!
# A086138: Number of primes between p and p+10 if both p and (p+10) are prime, i.e., number of primes somewhere between 10+A023203(n) and A023203(n).

The programs for A086138, there is no canonical definition to state claims against.
-/

/-! ## A086138.P7247447285218840059

`A025581(eq[10, A204898(n+1)])`
-/

namespace A086138.P7247447285218840059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A086138.P7247447285218840059

/-! ## A086138.P6884786749652414214

`A025581(eq[10, A204890(n+1)])`
-/

namespace A086138.P6884786749652414214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A086138.P6884786749652414214

/-!
# A086140: Primes p such that three (the maximum number) primes occur between p and p+12.

The programs for A086140, there is no canonical definition to state claims against.
-/

/-! ## A086140.P550883630601024078

`∪[A022006(n+1), A022007(n+1)]`
-/

namespace A086140.P550883630601024078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A086140.P550883630601024078

/-! ## A086140.P11266902044729422607

`A098423(n+1)-6`
-/

namespace A086140.P11266902044729422607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098423 (n + 1) - 6

end

end A086140.P11266902044729422607

/-! ## A086140.P17244635865107291543

`A341832(A007918(n))+A098423(n+1)`
-/

namespace A086140.P17244635865107291543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341832 (A007918 n).toNat + A098423 (n + 1)

end

end A086140.P17244635865107291543

/-! ## A086140.P3921064378149043397

`A341832(A089793(n))+A098423(n+1)`
-/

namespace A086140.P3921064378149043397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341832 (A089793 n).toNat + A098423 (n + 1)

end

end A086140.P3921064378149043397

/-! ## A086140.P13075117897820850919

`A341832(p?[A004276(n)])+A098423(n+1)`
-/

namespace A086140.P13075117897820850919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341832 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A098423 (n + 1)

end

end A086140.P13075117897820850919

/-!
# A086141: Permutation of A025487 (least prime signatures) which, when values are factored, exhibit self-similarity (cf. A008687).

The programs for A086141, there is no canonical definition to state claims against.
-/

/-! ## A086141.P11209562561015392646

`A322827(A006068(n))`
-/

namespace A086141.P11209562561015392646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322827 (A006068 n).toNat

end

end A086141.P11209562561015392646

/-! ## A086141.P12905737084045316451

`A108951(A253563(n))`
-/

namespace A086141.P12905737084045316451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (A253563 n).toNat

end

end A086141.P12905737084045316451

/-! ## A086141.P16932229392548611394

`A278236(A276083(n))`
-/

namespace A086141.P16932229392548611394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278236 (A276083 n).toNat

end

end A086141.P16932229392548611394

/-! ## A086141.P3092630248677242138

`A322827(A268714(∑[n]))`
-/

namespace A086141.P3092630248677242138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322827 (A268714 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A086141.P3092630248677242138

/-! ## A086141.P5375619897882600349

`A181821(A005940(n+1))`
-/

namespace A086141.P5375619897882600349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A005940 (n + 1)).toNat

end

end A086141.P5375619897882600349

/-! ## A086141.P18313401536999993891

`A331188(A253563(2*n))`
-/

namespace A086141.P18313401536999993891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331188 (A253563 (2 * n)).toNat

end

end A086141.P18313401536999993891

/-! ## A086141.P16052430446807988195

`A322827(A268716(n)/2)`
-/

namespace A086141.P16052430446807988195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322827 (SequenceMachineLib.roundAway ((A268716 n : ℚ) / 2)).toNat

end

end A086141.P16052430446807988195

/-! ## A086141.P11623224295702840790

`A322827(A066194(n+1)-1)`
-/

namespace A086141.P11623224295702840790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322827 (A066194 (n + 1) - 1).toNat

end

end A086141.P11623224295702840790

/-! ## A086141.P4565060194740092881

`A329886(A056539(2*n)/2)`
-/

namespace A086141.P4565060194740092881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329886 (SequenceMachineLib.roundAway ((A056539 (2 * n) : ℚ) / 2)).toNat

end

end A086141.P4565060194740092881

/-! ## A086141.P14451759518282635963

`A322827(A026741(A268716(n)))`
-/

namespace A086141.P14451759518282635963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322827 (A026741 (A268716 n).toNat).toNat

end

end A086141.P14451759518282635963

/-!
# A086142: a(n) = floor( log( prime(n) )^2 ).

The programs for A086142, the canonical program `A086142.P2602362089583793683` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086142 has offset 1).

The definition of A086142 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086142.P2602362089583793683

`floor((log(p?[round(8*n/7)]²)/2)²)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086142

/-- `floor((log(p?[round(8*n/7)]²)/2)²)` -/
def P2602362089583793683.Spec : Prop :=
  ∀ n, P2602362089583793683.a n = A086142 (n + 1)

theorem P2602362089583793683.correct : P2602362089583793683.Spec := by
  intro n
  simp only [A086142, Nat.add_sub_cancel]

end A086142

/-! ## A086142.P17423790830541451196

`floor(log(Δ[A007504(n)])²)`
-/

namespace A086142.P17423790830541451196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (f1 (n + 1) - f1 n : ℝ) ^ 2⌋

end

end A086142.P17423790830541451196

namespace A086142

/-- `floor(log(Δ[A007504(n)])²)` -/
def P17423790830541451196.Spec : Prop :=
  ∀ n, P17423790830541451196.a n = A086142 (n + 1)

end A086142

/-! ## A086142.P217915906564009409

`floor(log(A000040(n+1))²)`
-/

namespace A086142.P217915906564009409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A000040 (n + 1) : ℝ) ^ 2⌋

end

end A086142.P217915906564009409

namespace A086142

/-- `floor(log(A000040(n+1))²)` -/
def P217915906564009409.Spec : Prop :=
  ∀ n, P217915906564009409.a n = A086142 (n + 1)

end A086142

/-! ## A086142.P1141100452276932362

`floor(log(A006005(n+1))²)`
-/

namespace A086142.P1141100452276932362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A006005 (n + 1) : ℝ) ^ 2⌋

end

end A086142.P1141100452276932362

namespace A086142

/-- `floor(log(A006005(n+1))²)` -/
def P1141100452276932362.Spec : Prop :=
  ∀ n, P1141100452276932362.a n = A086142 (n + 1)

end A086142

/-! ## A086142.P482603583077933673

`floor(log(A008578(n+2))²)`
-/

namespace A086142.P482603583077933673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A008578 (n + 2) : ℝ) ^ 2⌋

end

end A086142.P482603583077933673

namespace A086142

/-- `floor(log(A008578(n+2))²)` -/
def P482603583077933673.Spec : Prop :=
  ∀ n, P482603583077933673.a n = A086142 (n + 1)

end A086142

/-! ## A086142.P16273772419250962220

`floor(log(A182986(n+2))²)`
-/

namespace A086142.P16273772419250962220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A182986 (n + 2) : ℝ) ^ 2⌋

end

end A086142.P16273772419250962220

namespace A086142

/-- `floor(log(A182986(n+2))²)` -/
def P16273772419250962220.Spec : Prop :=
  ∀ n, P16273772419250962220.a n = A086142 (n + 1)

end A086142

/-! ## A086142.P13664463907879176259

`floor(log(p?[xor(1, n)+1])²)`
-/

namespace A086142.P13664463907879176259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ) ^ 2⌋

end

end A086142.P13664463907879176259

namespace A086142

/-- `floor(log(p?[xor(1, n)+1])²)` -/
def P13664463907879176259.Spec : Prop :=
  ∀ n, P13664463907879176259.a n = A086142 (n + 1)

end A086142

/-! ## A086142.P10989573120292898382

`floor(log(p?[n%3+n])²)`
-/

namespace A086142.P10989573120292898382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ) ^ 2⌋

end

end A086142.P10989573120292898382

namespace A086142

/-- `floor(log(p?[n%3+n])²)` -/
def P10989573120292898382.Spec : Prop :=
  ∀ n, P10989573120292898382.a n = A086142 (n + 1)

end A086142

/-! ## A086142.P17673712382990112361

`floor(log(p?[n-(-1)^n])²)`
-/

namespace A086142.P17673712382990112361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ) ^ 2⌋

end

end A086142.P17673712382990112361

namespace A086142

/-- `floor(log(p?[n-(-1)^n])²)` -/
def P17673712382990112361.Spec : Prop :=
  ∀ n, P17673712382990112361.a n = A086142 (n + 1)

end A086142

/-! ## A086142.P14442318021744569658

`A217713(A006093(n+1))`
-/

namespace A086142.P14442318021744569658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217713 (A006093 (n + 1)).toNat

end

end A086142.P14442318021744569658

namespace A086142

/-- `A217713(A006093(n+1))` -/
def P14442318021744569658.Spec : Prop :=
  ∀ n, P14442318021744569658.a n = A086142 (n + 1)

end A086142

/-! ## A086142.P4977930875312011628

`A217713(A000040(n+1)-1)`
-/

namespace A086142.P4977930875312011628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217713 (A000040 (n + 1) - 1).toNat

end

end A086142.P4977930875312011628

namespace A086142

/-- `A217713(A000040(n+1)-1)` -/
def P4977930875312011628.Spec : Prop :=
  ∀ n, P4977930875312011628.a n = A086142 (n + 1)

end A086142

/-!
# A086144: a(n) = 2*A071640(n) - n.

The programs for A086144, there is no canonical definition to state claims against.
-/

/-! ## A086144.P242379093520011365

`2*A071640(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A086144.P242379093520011365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A071640 (n + 1) - (n + 1 : ℤ)

end

end A086144.P242379093520011365

/-! ## A086144.P11991300373200556306

`n+1-2*A087177(n+1)`
-/

namespace A086144.P11991300373200556306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - 2 * A087177 (n + 1)

end

end A086144.P11991300373200556306

/-! ## A086144.P9835627695963838823

`2*A071754(n+1)-(n+3)`
-/

namespace A086144.P9835627695963838823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A071754 (n + 1) - (n + 3 : ℤ)

end

end A086144.P9835627695963838823

/-! ## A086144.P3753019128235258812

`∑[A008683(2-Δ[A071754(n)])]`
-/

namespace A086144.P3753019128235258812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071754 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 - (f2 (n + 1) - f2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086144.P3753019128235258812

/-! ## A086144.P5831120113027764766

`n+1-A005843(A087177(n+1))`
-/

namespace A086144.P5831120113027764766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A005843 (A087177 (n + 1)).toNat

end

end A086144.P5831120113027764766

/-! ## A086144.P4256684915018437315

`A071640(n+1)-A087177(n+1)`
-/

namespace A086144.P4256684915018437315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071640 (n + 1) - A087177 (n + 1)

end

end A086144.P4256684915018437315

/-! ## A086144.P18347551554689822198

`∑[2*A047993(n+1)%2-1]`
-/

namespace A086144.P18347551554689822198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A047993 (n + 1)) 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086144.P18347551554689822198

/-! ## A086144.P7116204591408249275

`A004273(∑[A000041(n+1)%2])-n`
-/

namespace A086144.P7116204591408249275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n : ℤ)

end

end A086144.P7116204591408249275

/-! ## A086144.P2500821616311145354

`∑[A008683(-or(-2, A000041(n+1)))]`
-/

namespace A086144.P2500821616311145354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (-Int.lor (-2) (A000041 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086144.P2500821616311145354

/-! ## A086144.P1765932356499464094

`∑[A139582(n+1)%4-1]`
-/

namespace A086144.P1765932356499464094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139582 (n + 1)) 4 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086144.P1765932356499464094

/-! ## A086144.P3541454522925872095

`∑[(-1)^(1-record[A035363(n)])]`
-/

namespace A086144.P3541454522925872095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (1 - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086144.P3541454522925872095

/-! ## A086144.P16408085265010204640

`∑[(-1)^∑[A116598(∑[n+1])]]`
-/

namespace A086144.P16408085265010204640
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086144.P16408085265010204640

/-!
# A086145: Triangle read by rows in which T(n,k) is the least positive integer s such that p divides k^s-1, where p=prime(n) and k ranges from 1 to p-1.

The programs for A086145, there is no canonical definition to state claims against.
-/

/-! ## A086145.P517431154580825312

`A128250(n+2)`
-/

namespace A086145.P517431154580825312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128250 (n + 2)

end

end A086145.P517431154580825312

/-! ## A086145.P10869900083481267610

`∑{e}[A020707(n), A128250(#)]`
-/

namespace A086145.P10869900083481267610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A128250 (Nat.factorization (f1 n).natAbs p)

end

end A086145.P10869900083481267610

/-! ## A086145.P11769868389090330347

`∑{e}[A170949(A007576(n+1)+1), #]`
-/

namespace A086145.P11769868389090330347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170949 (A007576 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A086145.P11769868389090330347

/-!
# A086148: Sum of the orders of the elements in the dihedral group D_2n.

The programs for A086148, the canonical program `A086148.P694323764726545804` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086148 has offset 1).

The definition of A086148 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086148.P7063336344120830135

`∑[A292302(n+1)+2]`
-/

namespace A086148.P7063336344120830135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292302 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086148.P7063336344120830135

namespace A086148

/-- `∑[A292302(n+1)+2]` -/
def P7063336344120830135.Spec : Prop :=
  ∀ n, P7063336344120830135.a n = A086148 (n + 1)

end A086148

/-! ## A086148.P1389186791089141353

`A365076(n+1)+Δ[n²]`
-/

namespace A086148.P1389186791089141353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365076 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A086148.P1389186791089141353

namespace A086148

/-- `A365076(n+1)+Δ[n²]` -/
def P1389186791089141353.Spec : Prop :=
  ∀ n, P1389186791089141353.a n = A086148 (n + 1)

end A086148

/-! ## A086148.P694323764726545804

`A057660(n+1)+2*(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A086148

/-- `A057660(n+1)+2*(n+1)` -/
def P694323764726545804.Spec : Prop :=
  ∀ n, P694323764726545804.a n = A086148 (n + 1)

theorem P694323764726545804.correct : P694323764726545804.Spec := by
  intro n
  simp only [A086148, Nat.add_sub_cancel]

end A086148

/-! ## A086148.P5142686680929414929

`Δ[n²]+2*A057661(n+1)`
-/

namespace A086148.P5142686680929414929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2 * A057661 (n + 1)

end

end A086148.P5142686680929414929

namespace A086148

/-- `Δ[n²]+2*A057661(n+1)` -/
def P5142686680929414929.Spec : Prop :=
  ∀ n, P5142686680929414929.a n = A086148 (n + 1)

end A086148

/-! ## A086148.P5621004191162293794

`∑{d}[n+1, (#+2)*A000010(#)]`
-/

namespace A086148.P5621004191162293794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d + 2 : ℤ) * A000010 d

end

end A086148.P5621004191162293794

namespace A086148

/-- `∑{d}[n+1, (#+2)*A000010(#)]` -/
def P5621004191162293794.Spec : Prop :=
  ∀ n, P5621004191162293794.a n = A086148 (n + 1)

end A086148

/-! ## A086148.P81215704507505628

`2*(A332049(n+1)+n+1)+1`
-/

namespace A086148.P81215704507505628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A332049 (n + 1) + (n + 1 : ℤ)) + 1

end

end A086148.P81215704507505628

namespace A086148

/-- `2*(A332049(n+1)+n+1)+1` -/
def P81215704507505628.Spec : Prop :=
  ∀ n, P81215704507505628.a n = A086148 (n + 1)

end A086148

/-! ## A086148.P9442319163537443034

`A000290(n+1)+A365076(n+1)-A000290(n)`
-/

namespace A086148.P9442319163537443034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) + (A365076 (n + 1) - A000290 n)

end

end A086148.P9442319163537443034

namespace A086148

/-- `A000290(n+1)+A365076(n+1)-A000290(n)` -/
def P9442319163537443034.Spec : Prop :=
  ∀ n, P9442319163537443034.a n = A086148 (n + 1)

end A086148

/-! ## A086148.P15710573432290651057

`A002378(n+1)+A057660(n+1)-A002378(n)`
-/

namespace A086148.P15710573432290651057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (n + 1) + (A057660 (n + 1) - A002378 n)

end

end A086148.P15710573432290651057

namespace A086148

/-- `A002378(n+1)+A057660(n+1)-A002378(n)` -/
def P15710573432290651057.Spec : Prop :=
  ∀ n, P15710573432290651057.a n = A086148 (n + 1)

end A086148

/-! ## A086148.P3088237863343122263

`A000027(2*A057661(n+1)+1)+2*n`
-/

namespace A086148.P3088237863343122263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (2 * A057661 (n + 1) + 1).toNat + (2 * n : ℤ)

end

end A086148.P3088237863343122263

namespace A086148

/-- `A000027(2*A057661(n+1)+1)+2*n` -/
def P3088237863343122263.Spec : Prop :=
  ∀ n, P3088237863343122263.a n = A086148 (n + 1)

end A086148

/-! ## A086148.P13870282354999940907

`A000027(A000027(n+1)+A057660(n+1)+A000027(n+1))`
-/

namespace A086148.P13870282354999940907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A000027 (n + 1) + (A057660 (n + 1) + A000027 (n + 1))).toNat

end

end A086148.P13870282354999940907

namespace A086148

/-- `A000027(A000027(n+1)+A057660(n+1)+A000027(n+1))` -/
def P13870282354999940907.Spec : Prop :=
  ∀ n, P13870282354999940907.a n = A086148 (n + 1)

end A086148

/-! ## A086148.P4322573350640978147

`A004273(A057661(n+1)+1+n)`
-/

namespace A086148.P4322573350640978147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A057661 (n + 1) + 1 + (n : ℤ)).toNat

end

end A086148.P4322573350640978147

namespace A086148

/-- `A004273(A057661(n+1)+1+n)` -/
def P4322573350640978147.Spec : Prop :=
  ∀ n, P4322573350640978147.a n = A086148 (n + 1)

end A086148

/-! ## A086148.P9334547994526653258

`A060819(2*A057661(n+1)+1)+2*n`
-/

namespace A086148.P9334547994526653258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (2 * A057661 (n + 1) + 1).toNat + (2 * n : ℤ)

end

end A086148.P9334547994526653258

namespace A086148

/-- `A060819(2*A057661(n+1)+1)+2*n` -/
def P9334547994526653258.Spec : Prop :=
  ∀ n, P9334547994526653258.a n = A086148 (n + 1)

end A086148

/-! ## A086148.P17280052894173135336

`A103517(A057660(n+1)+n)-A057660(n+1)`
-/

namespace A086148.P17280052894173135336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A057660 (n + 1) + (n : ℤ)).toNat - A057660 (n + 1)

end

end A086148.P17280052894173135336

namespace A086148

/-- `A103517(A057660(n+1)+n)-A057660(n+1)` -/
def P17280052894173135336.Spec : Prop :=
  ∀ n, P17280052894173135336.a n = A086148 (n + 1)

end A086148

/-!
# A086150: Number of permutations of decimal digits of n which yield nonprime numbers.

The programs for A086150, there is no canonical definition to state claims against.
-/

/-! ## A086150.P6599016412947695086

`A047726(n+1)-A039999(n+1)`
-/

namespace A086150.P6599016412947695086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (n + 1) - A039999 (n + 1)

end

end A086150.P6599016412947695086

/-! ## A086150.P13249800902512001991

`A276716(n+1)/∑{digits}[n+1, #]-A039999(n+1)`
-/

namespace A086150.P13249800902512001991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276716 (n + 1) : ℚ) / ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℚ) - (A039999 (n + 1) : ℚ)

end

end A086150.P13249800902512001991

/-! ## A086150.P9322581706205851955

`A276716(n+1)/Δ[A037123(n)]-A039999(n+1)`
-/

namespace A086150.P9322581706205851955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276716 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ) - (A039999 (n + 1) : ℚ)

end

end A086150.P9322581706205851955

/-! ## A086150.P6242659827005778412

`A276716(n+1)/A007953(n+1)-A039999(n+1)`
-/

namespace A086150.P6242659827005778412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276716 (n + 1) : ℚ) / (A007953 (n + 1) : ℚ) - (A039999 (n + 1) : ℚ)

end

end A086150.P6242659827005778412

/-! ## A086150.P3924509507708051698

`A276716(n+1)/A062329(A057169(n+1))-A039999(n+1)`
-/

namespace A086150.P3924509507708051698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276716 (n + 1) : ℚ) / (A062329 (A057169 (n + 1)).toNat : ℚ) - (A039999 (n + 1) : ℚ)

end

end A086150.P3924509507708051698

/-! ## A086150.P1623045334022516573

`A047726(n+1)-A262988(n+1)%A117768(n)`
-/

namespace A086150.P1623045334022516573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (n + 1) - Int.tmod (A262988 (n + 1)) (A117768 n)

end

end A086150.P1623045334022516573

/-! ## A086150.P6091419214639753869

`A043537(A020338(n+1))-A039999(n+1)`
-/

namespace A086150.P6091419214639753869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A020338 (n + 1)).toNat - A039999 (n + 1)

end

end A086150.P6091419214639753869

/-! ## A086150.P5324402303581711453

`A047726(n+1)+A008683(A002148(n))*A039999(n+1)`
-/

namespace A086150.P5324402303581711453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (n + 1) + A008683 (A002148 n).toNat * A039999 (n + 1)

end

end A086150.P5324402303581711453

/-!
# A086151: Number of permutations of decimal digits of 2^n which yield a prime.

The programs for A086151, there is no canonical definition to state claims against.
-/

/-! ## A086151.P1972002294427750291

`A039999(A000079(n+1))`
-/

namespace A086151.P1972002294427750291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039999 (A000079 (n + 1)).toNat

end

end A086151.P1972002294427750291

/-! ## A086151.P2501530897646076689

`A039999(2^(n+1))`
-/

namespace A086151.P2501530897646076689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039999 (2 ^ (n + 1))

end

end A086151.P2501530897646076689

/-! ## A086151.P4550944264760741038

`dr(A039999(A198633(n)))`
-/

namespace A086151.P4550944264760741038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A039999 (A198633 n).toNat)

end

end A086151.P4550944264760741038

/-! ## A086151.P18246932993893072658

`dr(A039999(Δ[A048578(n)]))`
-/

namespace A086151.P18246932993893072658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A039999 (f1 (n + 1) - f1 n).toNat)

end

end A086151.P18246932993893072658

/-! ## A086151.P547594706282787116

`dr(A039999(Δ[A126646(n)]))`
-/

namespace A086151.P547594706282787116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A039999 (f1 (n + 1) - f1 n).toNat)

end

end A086151.P547594706282787116

/-!
# A086152: a(n) = floor(2^(n/phi(n))), where phi is A000010(n).

The programs for A086152, the canonical program `A086152.P11228457798051760744` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086152 has offset 1).

The definition of A086152 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086152.P11228457798051760744

`floor(2^∏{p}[n+1, #/(#-1)])`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086152

/-- `floor(2^∏{p}[n+1, #/(#-1)])` -/
def P11228457798051760744.Spec : Prop :=
  ∀ n, P11228457798051760744.a n = A086152 (n + 1)

theorem P11228457798051760744.correct : P11228457798051760744.Spec := by
  intro n
  simp only [A086152, Nat.add_sub_cancel]

end A086152

/-! ## A086152.P14898116727377306733

`floor(2^((n+1)/Δ[A002088(n)]))`
-/

namespace A086152.P14898116727377306733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℝ) ^ ((n + 1 : ℚ) / (f1 (n + 1) - f1 n : ℚ) : ℝ)⌋

end

end A086152.P14898116727377306733

namespace A086152

/-- `floor(2^((n+1)/Δ[A002088(n)]))` -/
def P14898116727377306733.Spec : Prop :=
  ∀ n, P14898116727377306733.a n = A086152 (n + 1)

end A086152

/-! ## A086152.P6075541353598621164

`floor(2^((n+1)/A000010(n+1)))`
-/

namespace A086152.P6075541353598621164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℝ) ^ ((n + 1 : ℚ) / (A000010 (n + 1) : ℚ) : ℝ)⌋

end

end A086152.P6075541353598621164

namespace A086152

/-- `floor(2^((n+1)/A000010(n+1)))` -/
def P6075541353598621164.Spec : Prop :=
  ∀ n, P6075541353598621164.a n = A086152 (n + 1)

end A086152

/-! ## A086152.P7301242485242916080

`floor(2^(A000082(n+1)/A007434(n+1)))`
-/

namespace A086152.P7301242485242916080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℝ) ^ ((A000082 (n + 1) : ℚ) / (A007434 (n + 1) : ℚ) : ℝ)⌋

end

end A086152.P7301242485242916080

namespace A086152

/-- `floor(2^(A000082(n+1)/A007434(n+1)))` -/
def P7301242485242916080.Spec : Prop :=
  ∀ n, P7301242485242916080.a n = A086152 (n + 1)

end A086152

/-! ## A086152.P1823336907567251246

`floor(root(A119610(n+2), A000010(n+1)))`
-/

namespace A086152.P1823336907567251246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A119610 (n + 2) : ℝ) ^ (1 / (A000010 (n + 1) : ℝ))⌋

end

end A086152.P1823336907567251246

namespace A086152

/-- `floor(root(A119610(n+2), A000010(n+1)))` -/
def P1823336907567251246.Spec : Prop :=
  ∀ n, P1823336907567251246.a n = A086152 (n + 1)

end A086152

/-! ## A086152.P13503397270924445165

`floor(root(A000051(2*(n+1)), 2*A000010(n+1)))`
-/

namespace A086152.P13503397270924445165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000051 (2 * (n + 1)) : ℝ) ^ (1 / (2 * A000010 (n + 1) : ℝ))⌋

end

end A086152.P13503397270924445165

namespace A086152

/-- `floor(root(A000051(2*(n+1)), 2*A000010(n+1)))` -/
def P13503397270924445165.Spec : Prop :=
  ∀ n, P13503397270924445165.a n = A086152 (n + 1)

end A086152

/-! ## A086152.P8232906910699033352

`floor(2^((n+1)/A054523(∑[n]+1)))`
-/

namespace A086152.P8232906910699033352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℝ) ^ ((n + 1 : ℚ) / (A054523 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) : ℝ)⌋

end

end A086152.P8232906910699033352

namespace A086152

/-- `floor(2^((n+1)/A054523(∑[n]+1)))` -/
def P8232906910699033352.Spec : Prop :=
  ∀ n, P8232906910699033352.a n = A086152 (n + 1)

end A086152

/-!
# A086153: Special prime numbers arranged in a triangle: n-th row contains m primes p (where m = pi(2n + A020483(n)) - pi(A020483(n))) with following properties.

The programs for A086153, there is no canonical definition to state claims against.
-/

/-! ## A086153.P17626808300241026006

`p?[A337767(A337919(n+1))]`
-/

namespace A086153.P17626808300241026006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337767 (A337919 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086153.P17626808300241026006

/-!
# A086154: 

The programs for A086154, there is no canonical definition to state claims against.
-/

/-! ## A086154.P9904187853998512874

`C(3^n, 2^n)`
-/

namespace A086154.P9904187853998512874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 ^ n) (2 ^ n)

end

end A086154.P9904187853998512874

/-! ## A086154.P8315560695483084234

`record[C(A027465(n), A013621(n))]`
-/

namespace A086154.P8315560695483084234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A027465 n).toNat (A013621 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086154.P8315560695483084234

/-! ## A086154.P6491229375940557068

`record[C(A027465(n), A013623(n))]`
-/

namespace A086154.P6491229375940557068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A027465 n).toNat (A013623 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086154.P6491229375940557068

/-!
# A086155: a(n) is the number of primes between the primes p = A020483(n) and q = 2n + A020483(n).

The programs for A086155, there is no canonical definition to state claims against.
-/

/-! ## A086155.P11761012899463627694

`A204892(2*(n+1))-(A204893(2*(n+1))+1)`
-/

namespace A086155.P11761012899463627694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (2 * (n + 1)) - (A204893 (2 * (n + 1)) + 1)

end

end A086155.P11761012899463627694

/-! ## A086155.P17556387257809570093

`A204900(2*(n+1))-A204893(2*(n+1))`
-/

namespace A086155.P17556387257809570093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204900 (2 * (n + 1)) - A204893 (2 * (n + 1))

end

end A086155.P17556387257809570093

/-! ## A086155.P16398595582510601829

`A204900(2*(n+1))-A000720(A204903(2*(n+1)))`
-/

namespace A086155.P16398595582510601829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204900 (2 * (n + 1)) - A000720 (A204903 (2 * (n + 1))).toNat

end

end A086155.P16398595582510601829

/-! ## A086155.P17218161962978577167

`A117370(A083372(n+1))`
-/

namespace A086155.P17218161962978577167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117370 (A083372 (n + 1)).toNat

end

end A086155.P17218161962978577167

/-! ## A086155.P7916796359718808167

`A004736(A204899(2*(n+1)))-1`
-/

namespace A086155.P7916796359718808167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A204899 (2 * (n + 1))).toNat - 1

end

end A086155.P7916796359718808167

/-! ## A086155.P12962018959107531094

`A025581(A204899(2*(n+1))-1)`
-/

namespace A086155.P12962018959107531094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A204899 (2 * (n + 1)) - 1).toNat

end

end A086155.P12962018959107531094

/-! ## A086155.P18333006537449829258

`A004736(A204891(2*(n+1)))-1`
-/

namespace A086155.P18333006537449829258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A204891 (2 * (n + 1))).toNat - 1

end

end A086155.P18333006537449829258

/-! ## A086155.P3981657619194773888

`abs(A004736(A204891(2*(Δ[n²]-n)))-1)`
-/

namespace A086155.P3981657619194773888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004736 (A204891 (2 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ))).toNat).toNat - 1|

end

end A086155.P3981657619194773888

/-! ## A086155.P12906355216121670569

`A242411((A020483(n+1)+A005843(n+1))*A020483(n+1))-1`
-/

namespace A086155.P12906355216121670569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242411 ((A020483 (n + 1) + A005843 (n + 1)) * A020483 (n + 1)).toNat - 1

end

end A086155.P12906355216121670569

/-! ## A086155.P15838739790328686572

`A241917(A083372(n+1))-A007318(∑[n])`
-/

namespace A086155.P15838739790328686572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241917 (A083372 (n + 1)).toNat - A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A086155.P15838739790328686572

/-!
# A086156: a(n) = sigma(n^2) - n*sigma(n).

The programs for A086156, the canonical program `A086156.P3117505780503088973` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086156 has offset 1).

The definition of A086156 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064987, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A086156.P3117505780503088973

`A065764(n+1)-A064987(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A086156

/-- `A065764(n+1)-A064987(n+1)` -/
def P3117505780503088973.Spec : Prop :=
  ∀ n, P3117505780503088973.a n = A086156 (n + 1)

theorem P3117505780503088973.correct : P3117505780503088973.Spec := by
  intro n
  simp only [A086156, Nat.add_sub_cancel]

end A086156

/-! ## A086156.P14779190694773012519

`A320059(n+1)-A334136(n+1)`
-/

namespace A086156.P14779190694773012519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320059 (n + 1) - A334136 (n + 1)

end

end A086156.P14779190694773012519

namespace A086156

/-- `A320059(n+1)-A334136(n+1)` -/
def P14779190694773012519.Spec : Prop :=
  ∀ n, P14779190694773012519.a n = A086156 (n + 1)

end A086156

/-! ## A086156.P5986443679248360870

`A320059(n+1)-n*A000203(n+1)`
-/

namespace A086156.P5986443679248360870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320059 (n + 1) - (n : ℤ) * A000203 (n + 1)

end

end A086156.P5986443679248360870

namespace A086156

/-- `A320059(n+1)-n*A000203(n+1)` -/
def P5986443679248360870.Spec : Prop :=
  ∀ n, P5986443679248360870.a n = A086156 (n + 1)

end A086156

/-! ## A086156.P3364590207997072053

`∑{d}[n+1, A000290(#)*A325313((n+1)/#)]`
-/

namespace A086156.P3364590207997072053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000290 d * A325313 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A086156.P3364590207997072053

namespace A086156

/-- `∑{d}[n+1, A000290(#)*A325313((n+1)/#)]` -/
def P3364590207997072053.Spec : Prop :=
  ∀ n, P3364590207997072053.a n = A086156 (n + 1)

end A086156

/-! ## A086156.P13654792002640591351

`∑{d}[(n+1)², #%lcm(#, n+1)]`
-/

namespace A086156.P13654792002640591351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d % Nat.lcm d (n + 1)

end

end A086156.P13654792002640591351

namespace A086156

/-- `∑{d}[(n+1)², #%lcm(#, n+1)]` -/
def P13654792002640591351.Spec : Prop :=
  ∀ n, (P13654792002640591351.a n : ℤ) = A086156 (n + 1)

end A086156

/-! ## A086156.P15305233069756868901

`A000203((n+1)²)-A064987(n+1)`
-/

namespace A086156.P15305233069756868901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((n + 1) ^ 2) - A064987 (n + 1)

end

end A086156.P15305233069756868901

namespace A086156

/-- `A000203((n+1)²)-A064987(n+1)` -/
def P15305233069756868901.Spec : Prop :=
  ∀ n, P15305233069756868901.a n = A086156 (n + 1)

end A086156

/-! ## A086156.P763128717936719618

`A000203((n+1)²)-(n+1)*A000203(n+1)`
-/

namespace A086156.P763128717936719618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((n + 1) ^ 2) - (n + 1 : ℤ) * A000203 (n + 1)

end

end A086156.P763128717936719618

namespace A086156

/-- `A000203((n+1)²)-(n+1)*A000203(n+1)` -/
def P763128717936719618.Spec : Prop :=
  ∀ n, P763128717936719618.a n = A086156 (n + 1)

end A086156

/-!
# A086159: Number of partitions of n into the first three triangular numbers, 1, 3 and 6.

The programs for A086159, the canonical program `A086159.P3913789497023955143` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086159 has offset 0).

The definition of A086159 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086159.P3913789497023955143

`floor((floor(n/3)/2+1)²)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086159

/-- `floor((floor(n/3)/2+1)²)` -/
def P3913789497023955143.Spec : Prop :=
  ∀ n, P3913789497023955143.a n = A086159 n

theorem P3913789497023955143.correct : P3913789497023955143.Spec := by
  intro n
  simp only [A086159]

end A086159

/-! ## A086159.P4634068805970090973

`ceil(a(n-3)+sqrt(a(n-3)))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A086159.P4634068805970090973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  ⌈(a (n - 3) : ℝ) + Real.sqrt (a (n - 3) : ℝ)⌉

end

end A086159.P4634068805970090973

namespace A086159

/-- `ceil(a(n-3)+sqrt(a(n-3)))` -/
def P4634068805970090973.Spec : Prop :=
  ∀ n, P4634068805970090973.a n = A086159 n

end A086159

/-! ## A086159.P2573579199877240690

`∑[A307985(n+3)]`
-/

namespace A086159.P2573579199877240690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307985 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086159.P2573579199877240690

namespace A086159

/-- `∑[A307985(n+3)]` -/
def P2573579199877240690.Spec : Prop :=
  ∀ n, P2573579199877240690.a n = A086159 n

end A086159

/-! ## A086159.P10252445773121156676

`A087811(floor(n/3)+1)`
-/

namespace A086159.P10252445773121156676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (⌊(n : ℚ) / 3⌋ + 1).toNat

end

end A086159.P10252445773121156676

namespace A086159

/-- `A087811(floor(n/3)+1)` -/
def P10252445773121156676.Spec : Prop :=
  ∀ n, P10252445773121156676.a n = A086159 n

end A086159

/-! ## A086159.P17187677390960380008

`A002620(floor(n/3)+2)`
-/

namespace A086159.P17187677390960380008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (⌊(n : ℚ) / 3⌋ + 2).toNat

end

end A086159.P17187677390960380008

namespace A086159

/-- `A002620(floor(n/3)+2)` -/
def P17187677390960380008.Spec : Prop :=
  ∀ n, P17187677390960380008.a n = A086159 n

end A086159

/-! ## A086159.P6043277366337687213

`∑[char[3*n]*A103221(n)]`
-/

namespace A086159.P6043277366337687213
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) * A103221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086159.P6043277366337687213

namespace A086159

/-- `∑[char[3*n]*A103221(n)]` -/
def P6043277366337687213.Spec : Prop :=
  ∀ n, P6043277366337687213.a n = A086159 n

end A086159

/-! ## A086159.P14819000040112571261

`A097992(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A086159.P14819000040112571261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A097992 n + a (n - 3)

end

end A086159.P14819000040112571261

namespace A086159

/-- `A097992(n)+a(n-3)` -/
def P14819000040112571261.Spec : Prop :=
  ∀ n, P14819000040112571261.a n = A086159 n

end A086159

/-! ## A086159.P14681814108581835227

`A078126(∑[char[3*n]]+1)+1`
-/

namespace A086159.P14681814108581835227
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078126 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1

end

end A086159.P14681814108581835227

namespace A086159

/-- `A078126(∑[char[3*n]]+1)+1` -/
def P14681814108581835227.Spec : Prop :=
  ∀ n, P14681814108581835227.a n = A086159 n

end A086159

/-! ## A086159.P2072895780385163480

`∑[(1-n²%3)*A008612(n)]`
-/

namespace A086159.P2072895780385163480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((n ^ 2 % 3 : ℕ) : ℤ)) * A008612 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086159.P2072895780385163480

namespace A086159

/-- `∑[(1-n²%3)*A008612(n)]` -/
def P2072895780385163480.Spec : Prop :=
  ∀ n, P2072895780385163480.a n = A086159 n

end A086159

/-! ## A086159.P14023901063526733285

`A008642(A004396(n))`
-/

namespace A086159.P14023901063526733285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 (A004396 n).toNat

end

end A086159.P14023901063526733285

namespace A086159

/-- `A008642(A004396(n))` -/
def P14023901063526733285.Spec : Prop :=
  ∀ n, P14023901063526733285.a n = A086159 n

end A086159

/-! ## A086159.P3216716365906521779

`A008642(A004523(n))`
-/

namespace A086159.P3216716365906521779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 (A004523 n).toNat

end

end A086159.P3216716365906521779

namespace A086159

/-- `A008642(A004523(n))` -/
def P3216716365906521779.Spec : Prop :=
  ∀ n, P3216716365906521779.a n = A086159 n

end A086159

/-! ## A086159.P15885051823639513859

`A008642(A096386(n))`
-/

namespace A086159.P15885051823639513859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 (A096386 n).toNat

end

end A086159.P15885051823639513859

namespace A086159

/-- `A008642(A096386(n))` -/
def P15885051823639513859.Spec : Prop :=
  ∀ n, P15885051823639513859.a n = A086159 n

end A086159

/-! ## A086159.P9504801223255266209

`A008642(A274616(n))`
-/

namespace A086159.P9504801223255266209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 (A274616 n).toNat

end

end A086159.P9504801223255266209

namespace A086159

/-- `A008642(A274616(n))` -/
def P9504801223255266209.Spec : Prop :=
  ∀ n, P9504801223255266209.a n = A086159 n

end A086159

/-! ## A086159.P15086095363598110383

`A076921(A008620(n)+1)`
-/

namespace A086159.P15086095363598110383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076921 (A008620 n + 1).toNat

end

end A086159.P15086095363598110383

namespace A086159

/-- `A076921(A008620(n)+1)` -/
def P15086095363598110383.Spec : Prop :=
  ∀ n, P15086095363598110383.a n = A086159 n

end A086159

/-! ## A086159.P5848266504121288912

`A076921(A002264(n)+2)`
-/

namespace A086159.P5848266504121288912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076921 (A002264 n + 2).toNat

end

end A086159.P5848266504121288912

namespace A086159

/-- `A076921(A002264(n)+2)` -/
def P5848266504121288912.Spec : Prop :=
  ∀ n, P5848266504121288912.a n = A086159 n

end A086159

/-! ## A086159.P12761985585039431023

`A008642(2*A002264(n))`
-/

namespace A086159.P12761985585039431023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 (2 * A002264 n).toNat

end

end A086159.P12761985585039431023

namespace A086159

/-- `A008642(2*A002264(n))` -/
def P12761985585039431023.Spec : Prop :=
  ∀ n, P12761985585039431023.a n = A086159 n

end A086159

/-! ## A086159.P18266134767290665334

`A307018(n)+A117910(n)`
-/

namespace A086159.P18266134767290665334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307018 n + A117910 n

end

end A086159.P18266134767290665334

namespace A086159

/-- `A307018(n)+A117910(n)` -/
def P18266134767290665334.Spec : Prop :=
  ∀ n, P18266134767290665334.a n = A086159 n

end A086159

/-! ## A086159.P5983627252298624803

`A033638(A008620(n)+1)-1`
-/

namespace A086159.P5983627252298624803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (A008620 n + 1).toNat - 1

end

end A086159.P5983627252298624803

namespace A086159

/-- `A033638(A008620(n)+1)-1` -/
def P5983627252298624803.Spec : Prop :=
  ∀ n, P5983627252298624803.a n = A086159 n

end A086159

/-! ## A086159.P14568641603927802954

`A033638(A002264(n)+2)-1`
-/

namespace A086159.P14568641603927802954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (A002264 n + 2).toNat - 1

end

end A086159.P14568641603927802954

namespace A086159

/-- `A033638(A002264(n)+2)-1` -/
def P14568641603927802954.Spec : Prop :=
  ∀ n, P14568641603927802954.a n = A086159 n

end A086159

/-! ## A086159.P5643508543988212980

`A260220(2*A002264(n)+1)`
-/

namespace A086159.P5643508543988212980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260220 (2 * A002264 n + 1).toNat

end

end A086159.P5643508543988212980

namespace A086159

/-- `A260220(2*A002264(n)+1)` -/
def P5643508543988212980.Spec : Prop :=
  ∀ n, P5643508543988212980.a n = A086159 n

end A086159

/-!
# A086161: Number of monomial ideals in two variables x, y that are Artinian, integrally closed, of colength n and contain x^2.

The programs for A086161, the canonical program `A086161.P1959334638549911894` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086161 has offset 0).

The definition of A086161 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086161.P1959334638549911894

`A008620(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A086161

/-- `A008620(n+1)` -/
def P1959334638549911894.Spec : Prop :=
  ∀ n, P1959334638549911894.a n = A086161 n

theorem P1959334638549911894.correct : P1959334638549911894.Spec := by
  intro n
  simp only [A086161]

end A086161

/-! ## A086161.P17230598785691056974

`ceil((n+2)/3)`
-/

namespace A086161.P17230598785691056974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℚ) / 3⌉

end

end A086161.P17230598785691056974

namespace A086161

/-- `ceil((n+2)/3)` -/
def P17230598785691056974.Spec : Prop :=
  ∀ n, P17230598785691056974.a n = A086161 n

end A086161

/-! ## A086161.P13033670015781577638

`floor(acos(0)+n/3)`
-/

namespace A086161.P13033670015781577638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arccos (0 : ℝ) + ((n : ℚ) / 3 : ℝ)⌋

end

end A086161.P13033670015781577638

namespace A086161

/-- `floor(acos(0)+n/3)` -/
def P13033670015781577638.Spec : Prop :=
  ∀ n, P13033670015781577638.a n = A086161 n

end A086161

/-! ## A086161.P6562221104578672643

`floor(tan(1)+n/3)`
-/

namespace A086161.P6562221104578672643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (1 : ℝ) + ((n : ℚ) / 3 : ℝ)⌋

end

end A086161.P6562221104578672643

namespace A086161

/-- `floor(tan(1)+n/3)` -/
def P6562221104578672643.Spec : Prop :=
  ∀ n, P6562221104578672643.a n = A086161 n

end A086161

/-! ## A086161.P5061212435333954989

`round(sin(1)+n/3)`
-/

namespace A086161.P5061212435333954989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (1 : ℝ) + ((n : ℚ) / 3 : ℝ))

end

end A086161.P5061212435333954989

namespace A086161

/-- `round(sin(1)+n/3)` -/
def P5061212435333954989.Spec : Prop :=
  ∀ n, P5061212435333954989.a n = A086161 n

end A086161

/-! ## A086161.P6721859851073387518

`floor(asin(1)+n/3)`
-/

namespace A086161.P6721859851073387518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arcsin (1 : ℝ) + ((n : ℚ) / 3 : ℝ)⌋

end

end A086161.P6721859851073387518

namespace A086161

/-- `floor(asin(1)+n/3)` -/
def P6721859851073387518.Spec : Prop :=
  ∀ n, P6721859851073387518.a n = A086161 n

end A086161

/-! ## A086161.P2111540883426913252

`round(n/3-cos(3))`
-/

namespace A086161.P2111540883426913252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℚ) / 3 : ℝ) - Real.cos (3 : ℝ))

end

end A086161.P2111540883426913252

namespace A086161

/-- `round(n/3-cos(3))` -/
def P2111540883426913252.Spec : Prop :=
  ∀ n, P2111540883426913252.a n = A086161 n

end A086161

/-! ## A086161.P8485413008808447191

`floor(cosh(1)+n/3)`
-/

namespace A086161.P8485413008808447191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (1 : ℝ) + ((n : ℚ) / 3 : ℝ)⌋

end

end A086161.P8485413008808447191

namespace A086161

/-- `floor(cosh(1)+n/3)` -/
def P8485413008808447191.Spec : Prop :=
  ∀ n, P8485413008808447191.a n = A086161 n

end A086161

/-! ## A086161.P5140313381331256746

`round(atan(2)+n/3)`
-/

namespace A086161.P5140313381331256746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (2 : ℝ) + ((n : ℚ) / 3 : ℝ))

end

end A086161.P5140313381331256746

namespace A086161

/-- `round(atan(2)+n/3)` -/
def P5140313381331256746.Spec : Prop :=
  ∀ n, P5140313381331256746.a n = A086161 n

end A086161

/-! ## A086161.P2919470893259576361

`round((n-tan(5))/3)`
-/

namespace A086161.P2919470893259576361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℝ) - Real.tan (5 : ℝ)) / 3)

end

end A086161.P2919470893259576361

namespace A086161

/-- `round((n-tan(5))/3)` -/
def P2919470893259576361.Spec : Prop :=
  ∀ n, P2919470893259576361.a n = A086161 n

end A086161

/-! ## A086161.P10647885813823542109

`round(tanh(2)+n/3)`
-/

namespace A086161.P10647885813823542109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tanh (2 : ℝ) + ((n : ℚ) / 3 : ℝ))

end

end A086161.P10647885813823542109

namespace A086161

/-- `round(tanh(2)+n/3)` -/
def P10647885813823542109.Spec : Prop :=
  ∀ n, P10647885813823542109.a n = A086161 n

end A086161

/-! ## A086161.P2049309162431000751

`floor(cot(3/(n+5)))`
-/

namespace A086161.P2049309162431000751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (3 / (n + 5 : ℚ) : ℝ)⌋

end

end A086161.P2049309162431000751

namespace A086161

/-- `floor(cot(3/(n+5)))` -/
def P2049309162431000751.Spec : Prop :=
  ∀ n, P2049309162431000751.a n = A086161 n

end A086161

/-! ## A086161.P5044028235732643825

`round((n-cot(6))/3)`
-/

namespace A086161.P5044028235732643825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℝ) - Real.cot (6 : ℝ)) / 3)

end

end A086161.P5044028235732643825

namespace A086161

/-- `round((n-cot(6))/3)` -/
def P5044028235732643825.Spec : Prop :=
  ∀ n, P5044028235732643825.a n = A086161 n

end A086161

/-! ## A086161.P12652364516303316075

`∑[(n%3)!]-n`
-/

namespace A086161.P12652364516303316075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A086161.P12652364516303316075

namespace A086161

/-- `∑[(n%3)!]-n` -/
def P12652364516303316075.Spec : Prop :=
  ∀ n, P12652364516303316075.a n = A086161 n

end A086161

/-! ## A086161.P9698531476194994064

`∑[C(n, 2)%3]+1`
-/

namespace A086161.P9698531476194994064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A086161.P9698531476194994064

namespace A086161

/-- `∑[C(n, 2)%3]+1` -/
def P9698531476194994064.Spec : Prop :=
  ∀ n, (P9698531476194994064.a n : ℤ) = A086161 n

end A086161

/-! ## A086161.P7982889049905993856

`∑[and(1, (1-n)%3)]`
-/

namespace A086161.P7982889049905993856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (Int.tmod (1 - (n : ℤ)) 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086161.P7982889049905993856

namespace A086161

/-- `∑[and(1, (1-n)%3)]` -/
def P7982889049905993856.Spec : Prop :=
  ∀ n, P7982889049905993856.a n = A086161 n

end A086161

/-! ## A086161.P4516303223467497909

`-xor(-1, round(n/3))`
-/

namespace A086161.P4516303223467497909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) (SequenceMachineLib.roundAway ((n : ℚ) / 3))

end

end A086161.P4516303223467497909

namespace A086161

/-- `-xor(-1, round(n/3))` -/
def P4516303223467497909.Spec : Prop :=
  ∀ n, P4516303223467497909.a n = A086161 n

end A086161

/-! ## A086161.P8529111067282227980

`round(cos(3)²+n/3)`
-/

namespace A086161.P8529111067282227980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (3 : ℝ) ^ 2 + ((n : ℚ) / 3 : ℝ))

end

end A086161.P8529111067282227980

namespace A086161

/-- `round(cos(3)²+n/3)` -/
def P8529111067282227980.Spec : Prop :=
  ∀ n, P8529111067282227980.a n = A086161 n

end A086161

/-! ## A086161.P7133505018203604887

`floor(sinh(1)²+n/3)`
-/

namespace A086161.P7133505018203604887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (1 : ℝ) ^ 2 + ((n : ℚ) / 3 : ℝ)⌋

end

end A086161.P7133505018203604887

namespace A086161

/-- `floor(sinh(1)²+n/3)` -/
def P7133505018203604887.Spec : Prop :=
  ∀ n, P7133505018203604887.a n = A086161 n

end A086161

/-! ## A086161.P11628559872100334280

`floor(atan(3)²+n/3)`
-/

namespace A086161.P11628559872100334280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (3 : ℝ) ^ 2 + ((n : ℚ) / 3 : ℝ)⌋

end

end A086161.P11628559872100334280

namespace A086161

/-- `floor(atan(3)²+n/3)` -/
def P11628559872100334280.Spec : Prop :=
  ∀ n, P11628559872100334280.a n = A086161 n

end A086161

/-!
# A086162: Number of monomial ideals in two variables x, y that are Artinian, integrally closed, of colength n and contain x^3.

The programs for A086162, the canonical program `A086162.P7879362451490028627` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086162 has offset 0).

The definition of A086162 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9994 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086162.P7879362451490028627

`A008615(n+1)+A008612(n+4)*A008615(n+7)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A086162

/-- `A008615(n+1)+A008612(n+4)*A008615(n+7)` -/
def P7879362451490028627.Spec : Prop :=
  ∀ n, P7879362451490028627.a n = A086162 n

theorem P7879362451490028627.correct : P7879362451490028627.Spec := by
  intro n
  simp only [A086162]

end A086162

/-! ## A086162.P8614271793098213791

`A110654(A002264(n))+A002620(A002264(n+7))`
-/

namespace A086162.P8614271793098213791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A002264 n).toNat + A002620 (A002264 (n + 7)).toNat

end

end A086162.P8614271793098213791

namespace A086162

/-- `A110654(A002264(n))+A002620(A002264(n+7))` -/
def P8614271793098213791.Spec : Prop :=
  ∀ n, P8614271793098213791.a n = A086162 n

end A086162

/-! ## A086162.P9221129685763796969

`A065033(A065033(n)+Δ[A144677(n)])`
-/

namespace A086162.P9221129685763796969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A065033 n + (f1 (n + 1) - f1 n)).toNat

end

end A086162.P9221129685763796969

namespace A086162

/-- `A065033(A065033(n)+Δ[A144677(n)])` -/
def P9221129685763796969.Spec : Prop :=
  ∀ n, P9221129685763796969.a n = A086162 n

end A086162

/-! ## A086162.P8947824063041466158

`A110654(A110654(n)+Δ[A144677(n)])`
-/

namespace A086162.P8947824063041466158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A110654 n + (f1 (n + 1) - f1 n)).toNat

end

end A086162.P8947824063041466158

namespace A086162

/-- `A110654(A110654(n)+Δ[A144677(n)])` -/
def P8947824063041466158.Spec : Prop :=
  ∀ n, P8947824063041466158.a n = A086162 n

end A086162

/-! ## A086162.P10109217559646846329

`A008619(A300068(n)+A211534(n+7))`
-/

namespace A086162.P10109217559646846329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A300068 n + A211534 (n + 7)).toNat

end

end A086162.P10109217559646846329

namespace A086162

/-- `A008619(A300068(n)+A211534(n+7))` -/
def P10109217559646846329.Spec : Prop :=
  ∀ n, P10109217559646846329.a n = A086162 n

end A086162

/-! ## A086162.P13424964774427607094

`A004526(A211534(n+7)+A004526(n+3))`
-/

namespace A086162.P13424964774427607094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A211534 (n + 7) + A004526 (n + 3)).toNat

end

end A086162.P13424964774427607094

namespace A086162

/-- `A004526(A211534(n+7)+A004526(n+3))` -/
def P13424964774427607094.Spec : Prop :=
  ∀ n, P13424964774427607094.a n = A086162 n

end A086162

/-! ## A086162.P16821636713331663401

`A123108(A211534(n+7)+A123108(n+3))`
-/

namespace A086162.P16821636713331663401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A211534 (n + 7) + A123108 (n + 3)).toNat

end

end A086162.P16821636713331663401

namespace A086162

/-- `A123108(A211534(n+7)+A123108(n+3))` -/
def P16821636713331663401.Spec : Prop :=
  ∀ n, P16821636713331663401.a n = A086162 n

end A086162

/-! ## A086162.P14545147411149757988

`A110654(A110654(n)+A000217(A008620(n+1)))`
-/

namespace A086162.P14545147411149757988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A110654 n + A000217 (A008620 (n + 1)).toNat).toNat

end

end A086162.P14545147411149757988

namespace A086162

/-- `A110654(A110654(n)+A000217(A008620(n+1)))` -/
def P14545147411149757988.Spec : Prop :=
  ∀ n, P14545147411149757988.a n = A086162 n

end A086162

/-! ## A086162.P3913222421394158108

`A110655(Δ[A225566(n+1)]+n)`
-/

namespace A086162.P3913222421394158108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A086162.P3913222421394158108

namespace A086162

/-- `A110655(Δ[A225566(n+1)]+n)` -/
def P3913222421394158108.Spec : Prop :=
  ∀ n, P3913222421394158108.a n = A086162 n

end A086162

/-! ## A086162.P8947599976760909737

`A008621(A004396(2*n)+A008620(n+1)²)`
-/

namespace A086162.P8947599976760909737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A004396 (2 * n) + A008620 (n + 1) ^ 2).toNat

end

end A086162.P8947599976760909737

namespace A086162

/-- `A008621(A004396(2*n)+A008620(n+1)²)` -/
def P8947599976760909737.Spec : Prop :=
  ∀ n, P8947599976760909737.a n = A086162 n

end A086162

/-!
# A086165: a(n) = |{ (x,y,z) | x < y < z and lcm(x,y,z) = n}|.

The programs for A086165, the canonical program `A086165.P5862930239187378690` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086165 has offset 1).

The definition of A086165 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048691, A070919, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A086165.P11453312950920100332

`A086222(n+1)-A048691(n+1)`
-/

namespace A086165.P11453312950920100332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086222 (n + 1) - A048691 (n + 1)

end

end A086165.P11453312950920100332

namespace A086165

/-- `A086222(n+1)-A048691(n+1)` -/
def P11453312950920100332.Spec : Prop :=
  ∀ n, P11453312950920100332.a n = A086165 (n + 1)

end A086165

/-! ## A086165.P5862930239187378690

`(A070919(n+1)-3*A048691(n+1)+2)/6`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A086165

/-- `(A070919(n+1)-3*A048691(n+1)+2)/6` -/
def P5862930239187378690.Spec : Prop :=
  ∀ n, P5862930239187378690.a n = (A086165 (n + 1) : ℚ)

end A086165

/-! ## A086165.P6036530915258958211

`A086222(n+1)-A004273(A018892(n+1))`
-/

namespace A086165.P6036530915258958211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086222 (n + 1) - A004273 (A018892 (n + 1)).toNat

end

end A086165.P6036530915258958211

namespace A086165

/-- `A086222(n+1)-A004273(A018892(n+1))` -/
def P6036530915258958211.Spec : Prop :=
  ∀ n, P6036530915258958211.a n = A086165 (n + 1)

end A086165

/-! ## A086165.P1194753433541122972

`A086222(n+1)-A004396(A146564(n+1))`
-/

namespace A086165.P1194753433541122972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086222 (n + 1) - A004396 (A146564 (n + 1)).toNat

end

end A086165.P1194753433541122972

namespace A086165

/-- `A086222(n+1)-A004396(A146564(n+1))` -/
def P1194753433541122972.Spec : Prop :=
  ∀ n, P1194753433541122972.a n = A086165 (n + 1)

end A086165

/-! ## A086165.P5388736834766828284

`A086222(n+1)-A229949(2*n+1)`
-/

namespace A086165.P5388736834766828284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086222 (n + 1) - A229949 (2 * n + 1)

end

end A086165.P5388736834766828284

namespace A086165

/-- `A086222(n+1)-A229949(2*n+1)` -/
def P5388736834766828284.Spec : Prop :=
  ∀ n, P5388736834766828284.a n = A086165 (n + 1)

end A086165

/-! ## A086165.P14672930182989141823

`A086222(n+1)-A000005(A278254(n+1))`
-/

namespace A086165.P14672930182989141823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086222 (n + 1) - A000005 (A278254 (n + 1)).toNat

end

end A086165.P14672930182989141823

namespace A086165

/-- `A086222(n+1)-A000005(A278254(n+1))` -/
def P14672930182989141823.Spec : Prop :=
  ∀ n, P14672930182989141823.a n = A086165 (n + 1)

end A086165

/-! ## A086165.P2773532309532664930

`A086222(n+1)-A000005((n+1)²)`
-/

namespace A086165.P2773532309532664930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086222 (n + 1) - A000005 ((n + 1) ^ 2)

end

end A086165.P2773532309532664930

namespace A086165

/-- `A086222(n+1)-A000005((n+1)²)` -/
def P2773532309532664930.Spec : Prop :=
  ∀ n, P2773532309532664930.a n = A086165 (n + 1)

end A086165

/-!
# A086166: 

The programs for A086166, there is no canonical definition to state claims against.
-/

/-! ## A086166.P12583750570250138082

`record[n^and(n, -(n+2))]`
-/

namespace A086166.P12583750570250138082
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (Int.land (n : ℤ) (-(n + 2 : ℤ)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086166.P12583750570250138082

/-!
# A086167: a(n) = sum of the first n lower twin primes.

The programs for A086167, the canonical program `A086167.P14751931300961843707` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086167 has offset 1).

The definition of A086167 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086167.P4035735681963633770

`∑[A001359(n+1)]`
-/

namespace A086167.P4035735681963633770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086167.P4035735681963633770

namespace A086167

/-- `∑[A001359(n+1)]` -/
def P4035735681963633770.Spec : Prop :=
  ∀ n, P4035735681963633770.a n = A086167 (n + 1)

end A086167

/-! ## A086167.P6790487378410080507

`∑[A111166(n+1)]+1`
-/

namespace A086167.P6790487378410080507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A086167.P6790487378410080507

namespace A086167

/-- `∑[A111166(n+1)]+1` -/
def P6790487378410080507.Spec : Prop :=
  ∀ n, P6790487378410080507.a n = A086167 (n + 1)

end A086167

/-! ## A086167.P17390732423173653201

`∑[A144834(n+1)+1]`
-/

namespace A086167.P17390732423173653201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144834 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086167.P17390732423173653201

namespace A086167

/-- `∑[A144834(n+1)+1]` -/
def P17390732423173653201.Spec : Prop :=
  ∀ n, P17390732423173653201.a n = A086167 (n + 1)

end A086167

/-! ## A086167.P6441663820627133686

`∑[A014574(n+1)-1]`
-/

namespace A086167.P6441663820627133686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086167.P6441663820627133686

namespace A086167

/-- `∑[A014574(n+1)-1]` -/
def P6441663820627133686.Spec : Prop :=
  ∀ n, P6441663820627133686.a n = A086167 (n + 1)

end A086167

/-! ## A086167.P12546462183629336947

`∑[A006512(n+1)-2]`
-/

namespace A086167.P12546462183629336947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086167.P12546462183629336947

namespace A086167

/-- `∑[A006512(n+1)-2]` -/
def P12546462183629336947.Spec : Prop :=
  ∀ n, P12546462183629336947.a n = A086167 (n + 1)

end A086167

/-! ## A086167.P7841371849437994422

`∑[A108605(n+1)/2]`
-/

namespace A086167.P7841371849437994422
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108605 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086167.P7841371849437994422

namespace A086167

/-- `∑[A108605(n+1)/2]` -/
def P7841371849437994422.Spec : Prop :=
  ∀ n, P7841371849437994422.a n = (A086167 (n + 1) : ℚ)

end A086167

/-! ## A086167.P5903152311821862996

`∑[sqrt(A108604(n+1))-2]`
-/

namespace A086167.P5903152311821862996
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A108604 (n + 1) : ℝ) - 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086167.P5903152311821862996

namespace A086167

/-- `∑[sqrt(A108604(n+1))-2]` -/
def P5903152311821862996.Spec : Prop :=
  ∀ n, P5903152311821862996.a n = (A086167 (n + 1) : ℝ)

end A086167

/-! ## A086167.P13393996054375034863

`∑[2*A040040(n+1)-1]`
-/

namespace A086167.P13393996054375034863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040040 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086167.P13393996054375034863

namespace A086167

/-- `∑[2*A040040(n+1)-1]` -/
def P13393996054375034863.Spec : Prop :=
  ∀ n, P13393996054375034863.a n = A086167 (n + 1)

end A086167

/-! ## A086167.P4862007597322053691

`∑[A054735(n+1)/2-1]`
-/

namespace A086167.P4862007597322053691
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054735 (n + 1) : ℚ) / 2 - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086167.P4862007597322053691

namespace A086167

/-- `∑[A054735(n+1)/2-1]` -/
def P4862007597322053691.Spec : Prop :=
  ∀ n, P4862007597322053691.a n = (A086167 (n + 1) : ℚ)

end A086167

/-! ## A086167.P3476758592154369642

`A086168(n+1)-2*(n+1)`
-/

namespace A086167.P3476758592154369642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086168 (n + 1) - (2 * (n + 1) : ℤ)

end

end A086167.P3476758592154369642

namespace A086167

/-- `A086168(n+1)-2*(n+1)` -/
def P3476758592154369642.Spec : Prop :=
  ∀ n, P3476758592154369642.a n = A086167 (n + 1)

end A086167

/-! ## A086167.P171231623281398034

`A086169(n+1)/2-(n+1)`
-/

namespace A086167.P171231623281398034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086169 (n + 1) : ℚ) / 2 - (n + 1 : ℚ)

end

end A086167.P171231623281398034

namespace A086167

/-- `A086169(n+1)/2-(n+1)` -/
def P171231623281398034.Spec : Prop :=
  ∀ n, P171231623281398034.a n = (A086167 (n + 1) : ℚ)

end A086167

/-! ## A086167.P16439770977884680612

`A086169(n+1)-A086168(n+1)`
-/

namespace A086167.P16439770977884680612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086169 (n + 1) - A086168 (n + 1)

end

end A086167.P16439770977884680612

namespace A086167

/-- `A086169(n+1)-A086168(n+1)` -/
def P16439770977884680612.Spec : Prop :=
  ∀ n, P16439770977884680612.a n = A086167 (n + 1)

end A086167

/-! ## A086167.P11892850205969186608

`∑[A124588(n+2)]`
-/

namespace A086167.P11892850205969186608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086167.P11892850205969186608

namespace A086167

/-- `∑[A124588(n+2)]` -/
def P11892850205969186608.Spec : Prop :=
  ∀ n, P11892850205969186608.a n = A086167 (n + 1)

end A086167

/-! ## A086167.P11273198467477912738

`∑[A181747(n+2)]`
-/

namespace A086167.P11273198467477912738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086167.P11273198467477912738

namespace A086167

/-- `∑[A181747(n+2)]` -/
def P11273198467477912738.Spec : Prop :=
  ∀ n, P11273198467477912738.a n = A086167 (n + 1)

end A086167

/-! ## A086167.P14751931300961843707

`∑[A067829(n+2)-2]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A086167

/-- `∑[A067829(n+2)-2]` -/
def P14751931300961843707.Spec : Prop :=
  ∀ n, P14751931300961843707.a n = A086167 (n + 1)

theorem P14751931300961843707.correct : P14751931300961843707.Spec := by
  intro n
  simp only [A086167, Nat.add_sub_cancel]

end A086167

/-! ## A086167.P10051620421145093203

`∑[p?[A054799(n+1)]]`
-/

namespace A086167.P10051620421145093203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086167.P10051620421145093203

namespace A086167

/-- `∑[p?[A054799(n+1)]]` -/
def P10051620421145093203.Spec : Prop :=
  ∀ n, P10051620421145093203.a n = A086167 (n + 1)

end A086167

/-! ## A086167.P12489586153154388224

`∑[p?[A063693(n+1)]]`
-/

namespace A086167.P12489586153154388224
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086167.P12489586153154388224

namespace A086167

/-- `∑[p?[A063693(n+1)]]` -/
def P12489586153154388224.Spec : Prop :=
  ∀ n, P12489586153154388224.a n = A086167 (n + 1)

end A086167

/-! ## A086167.P3420756733178763862

`∑[p?[A063700(n+1)]]`
-/

namespace A086167.P3420756733178763862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086167.P3420756733178763862

namespace A086167

/-- `∑[p?[A063700(n+1)]]` -/
def P3420756733178763862.Spec : Prop :=
  ∀ n, P3420756733178763862.a n = A086167 (n + 1)

end A086167

/-! ## A086167.P3321344082412305208

`∑[p?[A280590(n+1)]]`
-/

namespace A086167.P3321344082412305208
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280590 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086167.P3321344082412305208

namespace A086167

/-- `∑[p?[A280590(n+1)]]` -/
def P3321344082412305208.Spec : Prop :=
  ∀ n, P3321344082412305208.a n = A086167 (n + 1)

end A086167

/-! ## A086167.P9805556397071096782

`∑[p?[A001838(n+1)]]`
-/

namespace A086167.P9805556397071096782
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086167.P9805556397071096782

namespace A086167

/-- `∑[p?[A001838(n+1)]]` -/
def P9805556397071096782.Spec : Prop :=
  ∀ n, P9805556397071096782.a n = A086167 (n + 1)

end A086167

/-!
# A086168: a(n) = sum of the first n upper twin primes.

The programs for A086168, the canonical program `A086168.P4131046959497904967` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086168 has offset 1).

The definition of A086168 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086168.P13991811442272370113

`∑[A006512(n+1)]`
-/

namespace A086168.P13991811442272370113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086168.P13991811442272370113

namespace A086168

/-- `∑[A006512(n+1)]` -/
def P13991811442272370113.Spec : Prop :=
  ∀ n, P13991811442272370113.a n = A086168 (n + 1)

end A086168

/-! ## A086168.P12171044904772402507

`∑[sqrt(A108604(n+1))]`
-/

namespace A086168.P12171044904772402507
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A108604 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086168.P12171044904772402507

namespace A086168

/-- `∑[sqrt(A108604(n+1))]` -/
def P12171044904772402507.Spec : Prop :=
  ∀ n, P12171044904772402507.a n = (A086168 (n + 1) : ℝ)

end A086168

/-! ## A086168.P9717824643560158931

`∑[A014574(n+1)+1]`
-/

namespace A086168.P9717824643560158931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086168.P9717824643560158931

namespace A086168

/-- `∑[A014574(n+1)+1]` -/
def P9717824643560158931.Spec : Prop :=
  ∀ n, P9717824643560158931.a n = A086168 (n + 1)

end A086168

/-! ## A086168.P8407106247157517580

`∑[A001359(n+1)+2]`
-/

namespace A086168.P8407106247157517580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086168.P8407106247157517580

namespace A086168

/-- `∑[A001359(n+1)+2]` -/
def P8407106247157517580.Spec : Prop :=
  ∀ n, P8407106247157517580.a n = A086168 (n + 1)

end A086168

/-! ## A086168.P3844258113557476235

`∑[A144834(n+1)+3]`
-/

namespace A086168.P3844258113557476235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144834 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086168.P3844258113557476235

namespace A086168

/-- `∑[A144834(n+1)+3]` -/
def P3844258113557476235.Spec : Prop :=
  ∀ n, P3844258113557476235.a n = A086168 (n + 1)

end A086168

/-! ## A086168.P1347298700059224416

`∑[A176810(n+1)/2]`
-/

namespace A086168.P1347298700059224416
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176810 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086168.P1347298700059224416

namespace A086168

/-- `∑[A176810(n+1)/2]` -/
def P1347298700059224416.Spec : Prop :=
  ∀ n, P1347298700059224416.a n = (A086168 (n + 1) : ℚ)

end A086168

/-! ## A086168.P9510231955214930110

`A172057(n)+a(n-1)` with `a(0)=5`
-/

namespace A086168.P9510231955214930110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A172057 n + a (n - 1)

end

end A086168.P9510231955214930110

namespace A086168

/-- `A172057(n)+a(n-1)` -/
def P9510231955214930110.Spec : Prop :=
  ∀ n, P9510231955214930110.a n = A086168 (n + 1)

end A086168

/-! ## A086168.P2285379390046135613

`∑[A111166(n+1)+2]+1`
-/

namespace A086168.P2285379390046135613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A086168.P2285379390046135613

namespace A086168

/-- `∑[A111166(n+1)+2]+1` -/
def P2285379390046135613.Spec : Prop :=
  ∀ n, P2285379390046135613.a n = A086168 (n + 1)

end A086168

/-! ## A086168.P5033467845733794052

`∑[2*A040040(n+1)+1]`
-/

namespace A086168.P5033467845733794052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040040 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086168.P5033467845733794052

namespace A086168

/-- `∑[2*A040040(n+1)+1]` -/
def P5033467845733794052.Spec : Prop :=
  ∀ n, P5033467845733794052.a n = A086168 (n + 1)

end A086168

/-! ## A086168.P11538967553478183281

`∑[A054735(n+1)/2+1]`
-/

namespace A086168.P11538967553478183281
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054735 (n + 1) : ℚ) / 2 + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086168.P11538967553478183281

namespace A086168

/-- `∑[A054735(n+1)/2+1]` -/
def P11538967553478183281.Spec : Prop :=
  ∀ n, P11538967553478183281.a n = (A086168 (n + 1) : ℚ)

end A086168

/-! ## A086168.P2647575431206834118

`∑[A108605(n+1)/2+2]`
-/

namespace A086168.P2647575431206834118
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108605 (n + 1) : ℚ) / 2 + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086168.P2647575431206834118

namespace A086168

/-- `∑[A108605(n+1)/2+2]` -/
def P2647575431206834118.Spec : Prop :=
  ∀ n, P2647575431206834118.a n = (A086168 (n + 1) : ℚ)

end A086168

/-! ## A086168.P4131046959497904967

`A086167(n+1)+2*(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A086168

/-- `A086167(n+1)+2*(n+1)` -/
def P4131046959497904967.Spec : Prop :=
  ∀ n, P4131046959497904967.a n = A086168 (n + 1)

theorem P4131046959497904967.correct : P4131046959497904967.Spec := by
  intro n
  simp only [A086168, Nat.add_sub_cancel]

end A086168

/-! ## A086168.P6738403918342096583

`A086169(n+1)/2+n+1`
-/

namespace A086168.P6738403918342096583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086169 (n + 1) : ℚ) / 2 + (n + 1 : ℚ)

end

end A086168.P6738403918342096583

namespace A086168

/-- `A086169(n+1)/2+n+1` -/
def P6738403918342096583.Spec : Prop :=
  ∀ n, P6738403918342096583.a n = (A086168 (n + 1) : ℚ)

end A086168

/-! ## A086168.P8503225681709632837

`A086169(n+1)-A086167(n+1)`
-/

namespace A086168.P8503225681709632837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086169 (n + 1) - A086167 (n + 1)

end

end A086168.P8503225681709632837

namespace A086168

/-- `A086169(n+1)-A086167(n+1)` -/
def P8503225681709632837.Spec : Prop :=
  ∀ n, P8503225681709632837.a n = A086168 (n + 1)

end A086168

/-! ## A086168.P18035272555654342965

`∑[A067829(n+2)]`
-/

namespace A086168.P18035272555654342965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086168.P18035272555654342965

namespace A086168

/-- `∑[A067829(n+2)]` -/
def P18035272555654342965.Spec : Prop :=
  ∀ n, P18035272555654342965.a n = A086168 (n + 1)

end A086168

/-! ## A086168.P3473872609480530458

`∑[A124588(n+2)+2]`
-/

namespace A086168.P3473872609480530458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086168.P3473872609480530458

namespace A086168

/-- `∑[A124588(n+2)+2]` -/
def P3473872609480530458.Spec : Prop :=
  ∀ n, P3473872609480530458.a n = A086168 (n + 1)

end A086168

/-! ## A086168.P17505572325521132540

`∑[A181747(n+2)+2]`
-/

namespace A086168.P17505572325521132540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086168.P17505572325521132540

namespace A086168

/-- `∑[A181747(n+2)+2]` -/
def P17505572325521132540.Spec : Prop :=
  ∀ n, P17505572325521132540.a n = A086168 (n + 1)

end A086168

/-! ## A086168.P4245535224116098972

`∑[p?[A054799(n+1)+2]]`
-/

namespace A086168.P4245535224116098972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086168.P4245535224116098972

namespace A086168

/-- `∑[p?[A054799(n+1)+2]]` -/
def P4245535224116098972.Spec : Prop :=
  ∀ n, P4245535224116098972.a n = A086168 (n + 1)

end A086168

/-! ## A086168.P17697520236905370525

`∑[p?[A063693(n+1)+2]]`
-/

namespace A086168.P17697520236905370525
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086168.P17697520236905370525

namespace A086168

/-- `∑[p?[A063693(n+1)+2]]` -/
def P17697520236905370525.Spec : Prop :=
  ∀ n, P17697520236905370525.a n = A086168 (n + 1)

end A086168

/-!
# A086169: Sum of the first n twin prime pairs.

The programs for A086169, the canonical program `A086169.P1910313022099946466` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086169 has offset 1).

The definition of A086169 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086169.P3710032938809848038

`∑[A054735(n+1)]`
-/

namespace A086169.P3710032938809848038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086169.P3710032938809848038

namespace A086169

/-- `∑[A054735(n+1)]` -/
def P3710032938809848038.Spec : Prop :=
  ∀ n, P3710032938809848038.a n = A086169 (n + 1)

end A086169

/-! ## A086169.P17805781724359680826

`∑[A082496(n+1)+1]`
-/

namespace A086169.P17805781724359680826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082496 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086169.P17805781724359680826

namespace A086169

/-- `∑[A082496(n+1)+1]` -/
def P17805781724359680826.Spec : Prop :=
  ∀ n, P17805781724359680826.a n = A086169 (n + 1)

end A086169

/-! ## A086169.P11441013324067988772

`∑[A108605(n+1)+2]`
-/

namespace A086169.P11441013324067988772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108605 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086169.P11441013324067988772

namespace A086169

/-- `∑[A108605(n+1)+2]` -/
def P11441013324067988772.Spec : Prop :=
  ∀ n, P11441013324067988772.a n = A086169 (n + 1)

end A086169

/-! ## A086169.P11517548300802029225

`∑[A176810(n+1)-2]`
-/

namespace A086169.P11517548300802029225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176810 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086169.P11517548300802029225

namespace A086169

/-- `∑[A176810(n+1)-2]` -/
def P11517548300802029225.Spec : Prop :=
  ∀ n, P11517548300802029225.a n = A086169 (n + 1)

end A086169

/-! ## A086169.P12701805796368739458

`∑[2*A014574(n+1)]`
-/

namespace A086169.P12701805796368739458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086169.P12701805796368739458

namespace A086169

/-- `∑[2*A014574(n+1)]` -/
def P12701805796368739458.Spec : Prop :=
  ∀ n, P12701805796368739458.a n = A086169 (n + 1)

end A086169

/-! ## A086169.P1610723776038597819

`∑[A111046(n+1)/2]`
-/

namespace A086169.P1610723776038597819
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111046 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086169.P1610723776038597819

namespace A086169

/-- `∑[A111046(n+1)/2]` -/
def P1610723776038597819.Spec : Prop :=
  ∀ n, P1610723776038597819.a n = (A086169 (n + 1) : ℚ)

end A086169

/-! ## A086169.P15505236929139839743

`∑[4*A040040(n+1)]`
-/

namespace A086169.P15505236929139839743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A040040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086169.P15505236929139839743

namespace A086169

/-- `∑[4*A040040(n+1)]` -/
def P15505236929139839743.Spec : Prop :=
  ∀ n, P15505236929139839743.a n = A086169 (n + 1)

end A086169

/-! ## A086169.P9860588558135104043

`∑[2*(A001359(n+1)+1)]`
-/

namespace A086169.P9860588558135104043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001359 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086169.P9860588558135104043

namespace A086169

/-- `∑[2*(A001359(n+1)+1)]` -/
def P9860588558135104043.Spec : Prop :=
  ∀ n, P9860588558135104043.a n = A086169 (n + 1)

end A086169

/-! ## A086169.P12790224106005396960

`∑[2*(A006512(n+1)-1)]`
-/

namespace A086169.P12790224106005396960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A006512 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086169.P12790224106005396960

namespace A086169

/-- `∑[2*(A006512(n+1)-1)]` -/
def P12790224106005396960.Spec : Prop :=
  ∀ n, P12790224106005396960.a n = A086169 (n + 1)

end A086169

/-! ## A086169.P16674520634783587447

`∑[2*(A144834(n+1)+2)]`
-/

namespace A086169.P16674520634783587447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A144834 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086169.P16674520634783587447

namespace A086169

/-- `∑[2*(A144834(n+1)+2)]` -/
def P16674520634783587447.Spec : Prop :=
  ∀ n, P16674520634783587447.a n = A086169 (n + 1)

end A086169

/-! ## A086169.P5572648317333286083

`4*∑[A243811(n+1)+2]`
-/

namespace A086169.P5572648317333286083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243811 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A086169.P5572648317333286083

namespace A086169

/-- `4*∑[A243811(n+1)+2]` -/
def P5572648317333286083.Spec : Prop :=
  ∀ n, P5572648317333286083.a n = A086169 (n + 1)

end A086169

/-! ## A086169.P1910313022099946466

`2*(A086167(n+1)+n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A086169

/-- `2*(A086167(n+1)+n+1)` -/
def P1910313022099946466.Spec : Prop :=
  ∀ n, P1910313022099946466.a n = A086169 (n + 1)

theorem P1910313022099946466.correct : P1910313022099946466.Spec := by
  intro n
  simp only [A086169, Nat.add_sub_cancel]

end A086169

/-! ## A086169.P9368540185114414874

`2*(A086168(n+1)-(n+1))`
-/

namespace A086169.P9368540185114414874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A086168 (n + 1) - (n + 1 : ℤ))

end

end A086169.P9368540185114414874

namespace A086169

/-- `2*(A086168(n+1)-(n+1))` -/
def P9368540185114414874.Spec : Prop :=
  ∀ n, P9368540185114414874.a n = A086169 (n + 1)

end A086169

/-! ## A086169.P15509004100732871228

`A086168(n+1)+A086167(n+1)`
-/

namespace A086169.P15509004100732871228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086168 (n + 1) + A086167 (n + 1)

end

end A086169.P15509004100732871228

namespace A086169

/-- `A086168(n+1)+A086167(n+1)` -/
def P15509004100732871228.Spec : Prop :=
  ∀ n, P15509004100732871228.a n = A086169 (n + 1)

end A086169

/-! ## A086169.P5547523146829625425

`∑[A006512(n+1)+A001359(n+1)]`
-/

namespace A086169.P5547523146829625425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) + A001359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086169.P5547523146829625425

namespace A086169

/-- `∑[A006512(n+1)+A001359(n+1)]` -/
def P5547523146829625425.Spec : Prop :=
  ∀ n, P5547523146829625425.a n = A086169 (n + 1)

end A086169

/-! ## A086169.P15682902292100477641

`∑[4*A168497(n+2)]`
-/

namespace A086169.P15682902292100477641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A168497 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086169.P15682902292100477641

namespace A086169

/-- `∑[4*A168497(n+2)]` -/
def P15682902292100477641.Spec : Prop :=
  ∀ n, P15682902292100477641.a n = A086169 (n + 1)

end A086169

/-! ## A086169.P8434283048925511039

`∑[A096281(2*n+1)]`
-/

namespace A086169.P8434283048925511039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096281 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086169.P8434283048925511039

namespace A086169

/-- `∑[A096281(2*n+1)]` -/
def P8434283048925511039.Spec : Prop :=
  ∀ n, P8434283048925511039.a n = A086169 (n + 1)

end A086169

/-! ## A086169.P8056735202282732537

`A048598(2*n+1)+5`
-/

namespace A086169.P8056735202282732537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048598 (2 * n + 1) + 5

end

end A086169.P8056735202282732537

namespace A086169

/-- `A048598(2*n+1)+5` -/
def P8056735202282732537.Spec : Prop :=
  ∀ n, P8056735202282732537.a n = A086169 (n + 1)

end A086169

/-! ## A086169.P5716456368385110708

`∑[A077800(2*n+1)+A077800(2*(n+1))]`
-/

namespace A086169.P5716456368385110708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077800 (2 * n + 1) + A077800 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086169.P5716456368385110708

namespace A086169

/-- `∑[A077800(2*n+1)+A077800(2*(n+1))]` -/
def P5716456368385110708.Spec : Prop :=
  ∀ n, P5716456368385110708.a n = A086169 (n + 1)

end A086169

/-! ## A086169.P2842211833894152073

`∑[2*(p?[A000040(n+1)+2]-1)]`
-/

namespace A086169.P2842211833894152073
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086169.P2842211833894152073

namespace A086169

/-- `∑[2*(p?[A000040(n+1)+2]-1)]` -/
def P2842211833894152073.Spec : Prop :=
  ∀ n, P2842211833894152073.a n = A086169 (n + 1)

end A086169

/-!
# A086170: a(1)=1; a(n)=a(n-1)+1 if n is in the sequence; a(n)=a(n-1)+2 if n and (n-1) are not in the sequence; a(n)=a(n-1)+3 if n is not in the sequence but (n-1) is in the sequence.

The programs for A086170, the canonical program `A086170.P6204776482874446032` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086170 has offset 1).

The definition of A086170 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086170.P6204776482874446032

`comp[1-A104324(n)+n]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A086170

/-- `comp[1-A104324(n)+n]+1` -/
def P6204776482874446032.Spec : Prop :=
  ∀ n, (P6204776482874446032.a n : ℤ) = A086170 (n + 1)

theorem P6204776482874446032.correct : P6204776482874446032.Spec := by
  intro n
  simp only [A086170, Nat.add_sub_cancel]

end A086170

/-! ## A086170.P12607776596139007025

`comp[A024000(A104324(n))+n]+1`
-/

namespace A086170.P12607776596139007025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A104324 n).toNat + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A086170.P12607776596139007025

namespace A086170

/-- `comp[A024000(A104324(n))+n]+1` -/
def P12607776596139007025.Spec : Prop :=
  ∀ n, (P12607776596139007025.a n : ℤ) = A086170 (n + 1)

end A086170

/-! ## A086170.P8122165664559167402

`lt[A002656(n+1), A227342(A216954(n+1))]`
-/

namespace A086170.P8122165664559167402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227342 (A216954 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A086170.P8122165664559167402

namespace A086170

/-- `lt[A002656(n+1), A227342(A216954(n+1))]` -/
def P8122165664559167402.Spec : Prop :=
  ∀ n, (P8122165664559167402.a n : ℤ) = A086170 (n + 1)

end A086170

/-!
# A086172: Numbers n such that n*prime(n)+1 is prime.

The programs for A086172, there is no canonical definition to state claims against.
-/

/-! ## A086172.P9018517421340844656

`A000720(A192611(n+1))`
-/

namespace A086172.P9018517421340844656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A192611 (n + 1)).toNat

end

end A086172.P9018517421340844656

/-! ## A086172.P4131509130578272806

`A061395(p?[A192611(n+1)])`
-/

namespace A086172.P4131509130578272806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A086172.P4131509130578272806

/-! ## A086172.P9074382691153337226

`A061395(A192611(n+1))%A123048(n+1)`
-/

namespace A086172.P9074382691153337226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (A192611 (n + 1)).toNat) (A123048 (n + 1))

end

end A086172.P9074382691153337226

/-! ## A086172.P12321203449755579867

`A061395(A192611(n+1)%A320752(n+1))`
-/

namespace A086172.P12321203449755579867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A192611 (n + 1)) (A320752 (n + 1))).toNat

end

end A086172.P12321203449755579867

/-! ## A086172.P8184416901708502346

`A066328(p?[A192611(n+1)])`
-/

namespace A086172.P8184416901708502346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A086172.P8184416901708502346

/-! ## A086172.P17909773232054539068

`∑{d}[A192611(n+1), A066328(#)]`
-/

namespace A086172.P17909773232054539068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A066328 d

end

end A086172.P17909773232054539068

/-! ## A086172.P17542831975848963759

`A066328(A192611(n+1))%A034844(n+1)`
-/

namespace A086172.P17542831975848963759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066328 (A192611 (n + 1)).toNat) (A034844 (n + 1))

end

end A086172.P17542831975848963759

/-! ## A086172.P16920169306934604746

`A066328(2*A192611(n+1)-A192611(n+1))`
-/

namespace A086172.P16920169306934604746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (2 * A192611 (n + 1) - A192611 (n + 1)).toNat

end

end A086172.P16920169306934604746

/-! ## A086172.P3768611994215831366

`A061395(2*A192611(n+1))`
-/

namespace A086172.P3768611994215831366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A192611 (n + 1)).toNat

end

end A086172.P3768611994215831366

/-! ## A086172.P7466441658662239911

`A263297(p?[A192611(n+1)])`
-/

namespace A086172.P7466441658662239911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A086172.P7466441658662239911

/-! ## A086172.P7471563910674764805

`A289508(∏{p}[A192611(n+1), #])`
-/

namespace A086172.P7471563910674764805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A086172.P7471563910674764805

/-! ## A086172.P6399044176591391763

`A263297(A192611(n+1))%A039460(n+1)`
-/

namespace A086172.P6399044176591391763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263297 (A192611 (n + 1)).toNat) (A039460 (n + 1))

end

end A086172.P6399044176591391763

/-! ## A086172.P3305606957899692757

`lcm(A053230(n+1), A263297(A192611(n+1)))`
-/

namespace A086172.P3305606957899692757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A053230 (n + 1)) (A263297 (A192611 (n + 1)).toNat)

end

end A086172.P3305606957899692757

/-! ## A086172.P12287194798144484033

`A263297(2*A192611(n+1)-A192611(n+1))`
-/

namespace A086172.P12287194798144484033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (2 * A192611 (n + 1) - A192611 (n + 1)).toNat

end

end A086172.P12287194798144484033

/-! ## A086172.P10010314434973646202

`A289508(2*A192611(n+1)-A192611(n+1))`
-/

namespace A086172.P10010314434973646202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (2 * A192611 (n + 1) - A192611 (n + 1)).toNat

end

end A086172.P10010314434973646202

/-!
# A086173: Numbers k such that k*prime(k)-1 is prime.

The programs for A086173, there is no canonical definition to state claims against.
-/

/-! ## A086173.P15095918672754381722

`A000720(A062291(n+1))`
-/

namespace A086173.P15095918672754381722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A062291 (n + 1)).toNat

end

end A086173.P15095918672754381722

/-! ## A086173.P15648237718893868168

`A061395(p?[A062291(n+1)])`
-/

namespace A086173.P15648237718893868168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062291 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A086173.P15648237718893868168

/-! ## A086173.P1301398873025112550

`A061395(or(1, A062291(n+1)))`
-/

namespace A086173.P1301398873025112550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A062291 (n + 1))).toNat

end

end A086173.P1301398873025112550

/-! ## A086173.P9341227065570603873

`A061395(A062291(n+1))%A066124(n+1)`
-/

namespace A086173.P9341227065570603873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (A062291 (n + 1)).toNat) (A066124 (n + 1))

end

end A086173.P9341227065570603873

/-! ## A086173.P11762434487298823852

`A326846(p?[A062291(n+1)])`
-/

namespace A086173.P11762434487298823852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062291 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326846 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A086173.P11762434487298823852

/-! ## A086173.P4764234869287523779

`A326846(2*A062291(n+1)-A062291(n+1))`
-/

namespace A086173.P4764234869287523779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326846 (2 * A062291 (n + 1) - A062291 (n + 1)).toNat

end

end A086173.P4764234869287523779

/-! ## A086173.P7695500795771506171

`A061395(2*A062291(n+1))`
-/

namespace A086173.P7695500795771506171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A062291 (n + 1)).toNat

end

end A086173.P7695500795771506171

/-! ## A086173.P14458013155467375581

`A061395(lcm(2, A062291(n+1)))`
-/

namespace A086173.P14458013155467375581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A062291 (n + 1)))

end

end A086173.P14458013155467375581

/-! ## A086173.P11931219122401204684

`A326846(2*A062291(n+1))/2`
-/

namespace A086173.P11931219122401204684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326846 (2 * A062291 (n + 1)).toNat : ℚ) / 2

end

end A086173.P11931219122401204684

/-!
# A086174: Numbers n such that n*prime(n)+2 is a prime.

The programs for A086174, there is no canonical definition to state claims against.
-/

/-! ## A086174.P10975149738834651641

`lt[A000005(A033286(n+1)+2), 3]+1`
-/

namespace A086174.P10975149738834651641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A033286 (n + 1) + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A086174.P10975149738834651641

/-! ## A086174.P4529867359653356006

`eq[1, A001222((n+1)*A000040(n+1)+2)]+1`
-/

namespace A086174.P4529867359653356006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 1 : ℤ) * A000040 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A086174.P4529867359653356006

/-! ## A086174.P10703620525332798148

`eq[2, A000005((n+1)*A000040(n+1)+2)]+1`
-/

namespace A086174.P10703620525332798148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 1 : ℤ) * A000040 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A086174.P10703620525332798148

/-! ## A086174.P5370020652287811030

`eq[2, A151800(A033286(n+1))%A000040(n+1)]+1`
-/

namespace A086174.P5370020652287811030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151800 (A033286 (n + 1)).toNat) (A000040 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A086174.P5370020652287811030

/-! ## A086174.P9697173928009270343

`eq[2, A151800(A079780(n+1))%A000040(n+1)]+1`
-/

namespace A086174.P9697173928009270343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151800 (A079780 (n + 1)).toNat) (A000040 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A086174.P9697173928009270343

/-!
# A086175: Numbers n such that n*prime(n)-2 is prime.

The programs for A086175, there is no canonical definition to state claims against.
-/

/-! ## A086175.P1759872831510591632

`eq[2, A107060(n+1)]+1`
-/

namespace A086175.P1759872831510591632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107060 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A086175.P1759872831510591632

/-! ## A086175.P1854058899887598438

`eq[2, A107060(A028310(n))]`
-/

namespace A086175.P1854058899887598438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107060 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A086175.P1854058899887598438

/-! ## A086175.P6324899488427234218

`eq[2, A107060(A093178(n))]`
-/

namespace A086175.P6324899488427234218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107060 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A086175.P6324899488427234218

/-! ## A086175.P7091608749408583148

`eq[2, A033286(n+1)-A079780(n+1)]+1`
-/

namespace A086175.P7091608749408583148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 1) - A079780 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A086175.P7091608749408583148

/-! ## A086175.P17502772369068364822

`eq[3, A175851((n+1)*A000040(n+1))]+1`
-/

namespace A086175.P17502772369068364822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 ((n + 1 : ℤ) * A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A086175.P17502772369068364822

/-!
# A086176: Numbers n such that n*prime(n)+3 is prime.

The programs for A086176, there is no canonical definition to state claims against.
-/

/-! ## A086176.P3868802411422911959

`lt[A001222(A033286(n+1)+3), 2]+1`
-/

namespace A086176.P3868802411422911959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A033286 (n + 1) + 3).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A086176.P3868802411422911959

/-! ## A086176.P14821962771307525387

`eq[1, A001222((n+1)*A000040(n+1)+3)]+1`
-/

namespace A086176.P14821962771307525387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 1 : ℤ) * A000040 (n + 1) + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A086176.P14821962771307525387

/-! ## A086176.P3019615401920207560

`eq[2, A000005((n+1)*A000040(n+1)+3)]+1`
-/

namespace A086176.P3019615401920207560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 1 : ℤ) * A000040 (n + 1) + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A086176.P3019615401920207560

/-! ## A086176.P6612610659144383875

`eq[1, A001222((n+1)*record[A006530(n+2)]+3)]+1`
-/

namespace A086176.P6612610659144383875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 1 : ℤ) * f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A086176.P6612610659144383875

/-!
# A086178: Decimal expansion of 1 + 2*sqrt(2).

The programs for A086178, there is no canonical definition to state claims against.
-/

/-! ## A086178.P13651360998685827054

`A090488(n)-floor(acot(n))`
-/

namespace A086178.P13651360998685827054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090488 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A086178.P13651360998685827054

/-! ## A086178.P14480677876786402185

`A010466(n)+C(2, n+2)`
-/

namespace A086178.P14480677876786402185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010466 (n + 1) + (Nat.choose 2 (n + 2) : ℤ)

end

end A086178.P14480677876786402185

/-! ## A086178.P12178514554309198482

`A010466(n)+A000007(n)`
-/

namespace A086178.P12178514554309198482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010466 (n + 1) + A000007 n

end

end A086178.P12178514554309198482

/-! ## A086178.P12767590236693382027

`A090488(n)-A000007(n)`
-/

namespace A086178.P12767590236693382027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090488 (n + 1) - A000007 n

end

end A086178.P12767590236693382027

/-! ## A086178.P11779275211948891727

`A156035(n)-A000038(n)`
-/

namespace A086178.P11779275211948891727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156035 (n + 1) - A000038 n

end

end A086178.P11779275211948891727

/-! ## A086178.P17442545038974395973

`A010466(n)+A000038(n)/2`
-/

namespace A086178.P17442545038974395973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010466 (n + 1) : ℚ) + (A000038 n : ℚ) / 2

end

end A086178.P17442545038974395973

/-! ## A086178.P4926646001942077365

`(A090488(n)+A010466(n))/2`
-/

namespace A086178.P4926646001942077365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090488 (n + 1) + A010466 (n + 1) : ℚ) / 2

end

end A086178.P4926646001942077365

/-! ## A086178.P11732321255707854306

`A156035(n)-2*A000007(n)`
-/

namespace A086178.P11732321255707854306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156035 (n + 1) - 2 * A000007 n

end

end A086178.P11732321255707854306

/-! ## A086178.P9680128766408959783

`2*A090488(n)-A156035(n)`
-/

namespace A086178.P9680128766408959783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090488 (n + 1) - A156035 (n + 1)

end

end A086178.P9680128766408959783

/-! ## A086178.P15590760397014467534

`A090488(n)-A000038(n)/2`
-/

namespace A086178.P15590760397014467534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090488 (n + 1) : ℚ) - (A000038 n : ℚ) / 2

end

end A086178.P15590760397014467534

/-! ## A086178.P12319780455240040757

`A090488(n)-A000122(n)%2`
-/

namespace A086178.P12319780455240040757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090488 (n + 1) - Int.tmod (A000122 n) 2

end

end A086178.P12319780455240040757

/-! ## A086178.P6769315044841084351

`A090488(n)-A008486(n)%3`
-/

namespace A086178.P6769315044841084351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090488 (n + 1) - Int.tmod (A008486 n) 3

end

end A086178.P6769315044841084351

/-! ## A086178.P2549512224546744708

`A010466(n)+and(1, A001316(n))`
-/

namespace A086178.P2549512224546744708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010466 (n + 1) + Int.land 1 (A001316 n)

end

end A086178.P2549512224546744708

/-! ## A086178.P12538773886983091643

`A090488(n)+n-A028310(n)`
-/

namespace A086178.P12538773886983091643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090488 (n + 1) + ((n : ℤ) - A028310 n)

end

end A086178.P12538773886983091643

/-! ## A086178.P16960284787077869720

`or(A005563(C(n, 2*n)), A010466(n))`
-/

namespace A086178.P16960284787077869720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005563 (Nat.choose n (2 * n))) (A010466 (n + 1))

end

end A086178.P16960284787077869720

/-! ## A086178.P653118901610086239

`A010466(n)+A008683(A008574(n))`
-/

namespace A086178.P653118901610086239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010466 (n + 1) + A008683 (A008574 n).toNat

end

end A086178.P653118901610086239

/-! ## A086178.P17519746228459323892

`A090488(n)-A008683(A008574(n))`
-/

namespace A086178.P17519746228459323892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090488 (n + 1) - A008683 (A008574 n).toNat

end

end A086178.P17519746228459323892

/-! ## A086178.P7384787893853969467

`A156035(n)-A000122(A000122(n)+n)`
-/

namespace A086178.P7384787893853969467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156035 (n + 1) - A000122 (A000122 n + (n : ℤ)).toNat

end

end A086178.P7384787893853969467

/-! ## A086178.P17281332362244482809

`A002194(n)+A090488(n)-A090388(n)`
-/

namespace A086178.P17281332362244482809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002194 (n + 1) + (A090488 (n + 1) - A090388 (n + 1))

end

end A086178.P17281332362244482809

/-!
# A086180: Decimal expansion of 1 + sqrt(6).

The programs for A086180, there is no canonical definition to state claims against.
-/

/-! ## A086180.P15025478025945700073

`A010464(n)+A000007(n)`
-/

namespace A086180.P15025478025945700073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010464 (n + 1) + A000007 n

end

end A086180.P15025478025945700073

/-! ## A086180.P6411687195119757106

`A176213(n)-A000007(n)`
-/

namespace A086180.P6411687195119757106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176213 (n + 1) - A000007 n

end

end A086180.P6411687195119757106

/-! ## A086180.P5449421849986074301

`A010464(n)+A000038(n)/2`
-/

namespace A086180.P5449421849986074301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010464 (n + 1) : ℚ) + (A000038 n : ℚ) / 2

end

end A086180.P5449421849986074301

/-! ## A086180.P16173289016748898580

`A010464(n)+2-A040001(2*n)`
-/

namespace A086180.P16173289016748898580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010464 (n + 1) + (2 - A040001 (2 * n))

end

end A086180.P16173289016748898580

/-! ## A086180.P12540834094472847769

`A010464(n)+A008683(A008574(n))`
-/

namespace A086180.P12540834094472847769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010464 (n + 1) + A008683 (A008574 n).toNat

end

end A086180.P12540834094472847769

/-! ## A086180.P4506166091509016007

`A010464(n)+A008683(A046109(n))`
-/

namespace A086180.P4506166091509016007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010464 (n + 1) + A008683 (A046109 n).toNat

end

end A086180.P4506166091509016007

/-! ## A086180.P14965831777389344732

`or(A000007(A000196(n)), A010464(n))`
-/

namespace A086180.P14965831777389344732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A000196 n).toNat) (A010464 (n + 1))

end

end A086180.P14965831777389344732

/-! ## A086180.P14639587767808776490

`or(A000007(A222250(n)), A010464(n))`
-/

namespace A086180.P14639587767808776490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A222250 n).toNat) (A010464 (n + 1))

end

end A086180.P14639587767808776490

/-! ## A086180.P603990994299944939

`A010464(n)-A008683(2*A001316(n))`
-/

namespace A086180.P603990994299944939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010464 (n + 1) - A008683 (2 * A001316 n).toNat

end

end A086180.P603990994299944939

/-! ## A086180.P7967861836702728844

`A010464(n)+A176051(n)-A115754(n)`
-/

namespace A086180.P7967861836702728844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010464 (n + 1) + (A176051 (n + 1) - A115754 (n + 1))

end

end A086180.P7967861836702728844

/-! ## A086180.P9659947622621461240

`A010464(n)+A010694(n)-A382713(n)`
-/

namespace A086180.P9659947622621461240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010464 (n + 1) + (A010694 n - A382713 n)

end

end A086180.P9659947622621461240

/-! ## A086180.P5537636949051790276

`A040003(n+1)+A010464(n)-A382713(n)`
-/

namespace A086180.P5537636949051790276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040003 (n + 1) + (A010464 (n + 1) - A382713 n)

end

end A086180.P5537636949051790276

/-! ## A086180.P4463253996404704411

`A040001(n+2)+A010464(n)-A040001(n)`
-/

namespace A086180.P4463253996404704411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 2) + (A010464 (n + 1) - A040001 n)

end

end A086180.P4463253996404704411

/-! ## A086180.P12065996494153674431

`or(A000007(A004273(n)), A010464(n))`
-/

namespace A086180.P12065996494153674431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A004273 n).toNat) (A010464 (n + 1))

end

end A086180.P12065996494153674431

/-! ## A086180.P8876780228529542213

`or(A000007(A004275(n)), A010464(n))`
-/

namespace A086180.P8876780228529542213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A004275 n).toNat) (A010464 (n + 1))

end

end A086180.P8876780228529542213

/-! ## A086180.P10130092152970649897

`A152623(2*n)+A010464(n)`
-/

namespace A086180.P10130092152970649897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152623 (2 * n + 1) + A010464 (n + 1)

end

end A086180.P10130092152970649897

/-! ## A086180.P3914723167157045993

`or(A000007(2*n), A010464(n))`
-/

namespace A086180.P3914723167157045993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (2 * n)) (A010464 (n + 1))

end

end A086180.P3914723167157045993

/-! ## A086180.P10737456650082977652

`A010464(n)+A008683(A000118(n))`
-/

namespace A086180.P10737456650082977652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010464 (n + 1) + A008683 (A000118 n).toNat

end

end A086180.P10737456650082977652

/-! ## A086180.P2283274542747109350

`A010464(n)+A008683(A001316(n)²)`
-/

namespace A086180.P2283274542747109350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010464 (n + 1) + A008683 (A001316 n ^ 2).toNat

end

end A086180.P2283274542747109350

/-!
# A086184: In decimal expansion of Pi: smallest position <= n where the greatest number begins which is also contained between positions n and 2*n.

The programs for A086184, there is no canonical definition to state claims against.
-/

/-! ## A086184.P13940725092669166246

`A032445(A086183(n+1))`
-/

namespace A086184.P13940725092669166246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032445 (A086183 (n + 1)).toNat

end

end A086184.P13940725092669166246

/-!
# A086186: Records in A086183.

The programs for A086186, there is no canonical definition to state claims against.
-/

/-! ## A086186.P13782799578951446637

`record[A086183(n+1)]`
-/

namespace A086186.P13782799578951446637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086186.P13782799578951446637

/-! ## A086186.P11748156391655713527

`A086183(A086187(n+1))`
-/

namespace A086186.P11748156391655713527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086183 (A086187 (n + 1)).toNat

end

end A086186.P11748156391655713527

/-!
# A086187: Where records occur in A086183.

The programs for A086187, there is no canonical definition to state claims against.
-/

/-! ## A086187.P10902898221860574574

`record[A005349(n+5)%A334030(n+3)]`
-/

namespace A086187.P10902898221860574574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005349 (n + 5)) (A334030 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086187.P10902898221860574574

/-! ## A086187.P1840774089726950002

`∑[A227184(3*n)^A317635(A357487(n+2))]`
-/

namespace A086187.P1840774089726950002
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227184 (3 * n) : ℚ) ^ (A317635 (A357487 (n + 2)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086187.P1840774089726950002

/-!
# A086188: a(n) = A086184(A086187(n)).

The programs for A086188, there is no canonical definition to state claims against.
-/

/-! ## A086188.P12736293363733966081

`A086184(A086187(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A086188.P12736293363733966081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086184 (A086187 (n + 1)).toNat

end

end A086188.P12736293363733966081

/-! ## A086188.P16257603184916305655

`A032445(A086186(n+1))`
-/

namespace A086188.P16257603184916305655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032445 (A086186 (n + 1)).toNat

end

end A086188.P16257603184916305655

/-!
# A086189: a(n) = A086185(A086187(n)).

The programs for A086189, there is no canonical definition to state claims against.
-/

/-! ## A086189.P8980688993393522194

`A086185(A086187(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A086189.P8980688993393522194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086185 (A086187 (n + 1)).toNat

end

end A086189.P8980688993393522194

/-!
# A086191: Number of partitions of primes into mutual coprimes > 1.

The programs for A086191, there is no canonical definition to state claims against.
-/

/-! ## A086191.P5724061599780918325

`A007359(p?[xor(1, n)])`
-/

namespace A086191.P5724061599780918325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007359 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A086191.P5724061599780918325

/-! ## A086191.P6709510901721060115

`A007359(p?[n%3+n])`
-/

namespace A086191.P6709510901721060115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007359 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A086191.P6709510901721060115

/-! ## A086191.P10673248369135202782

`A337485(p?[xor(1, n)+1])+1`
-/

namespace A086191.P10673248369135202782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337485 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + 1

end

end A086191.P10673248369135202782

/-! ## A086191.P16926809615593824766

`A007359(p?[a(n-1)+2])` with `a(0)=2, a(1)=1`
-/

namespace A086191.P16926809615593824766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007359 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A086191.P16926809615593824766

/-! ## A086191.P9952663566621929877

`A007359(∏{p}[p?[round(8*n/7)]², #])`
-/

namespace A086191.P9952663566621929877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007359 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A086191.P9952663566621929877

/-! ## A086191.P8989757332725699554

`A007359(A000040(n+1))`
-/

namespace A086191.P8989757332725699554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007359 (A000040 (n + 1)).toNat

end

end A086191.P8989757332725699554

/-! ## A086191.P10895579321734442848

`A007359(A160656(n+1))`
-/

namespace A086191.P10895579321734442848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007359 (A160656 (n + 1)).toNat

end

end A086191.P10895579321734442848

/-! ## A086191.P4144489169237827720

`A007359(A216883(n+1))`
-/

namespace A086191.P4144489169237827720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007359 (A216883 (n + 1)).toNat

end

end A086191.P4144489169237827720

/-! ## A086191.P5143790042106849010

`A007359(A216884(n+1))`
-/

namespace A086191.P5143790042106849010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007359 (A216884 (n + 1)).toNat

end

end A086191.P5143790042106849010

/-! ## A086191.P370033475857053038

`A007359(A216885(n+1))`
-/

namespace A086191.P370033475857053038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007359 (A216885 (n + 1)).toNat

end

end A086191.P370033475857053038

/-!
# A086192: Tribonacci numbers that start with first three squares.

The programs for A086192, the canonical program `A086192.P10167611209371858315` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086192 has offset 1).

The definition of A086192 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086192.P10167611209371858315

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=4, a(2)=9`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086192

/-- `a(n-1)+a(n-2)+a(n-3)` -/
def P10167611209371858315.Spec : Prop :=
  ∀ n, (P10167611209371858315.a n : ℤ) = A086192 (n + 1)

theorem P10167611209371858315.correct : P10167611209371858315.Spec := by
  intro n
  simp only [A086192, Nat.add_sub_cancel]

end A086192

/-! ## A086192.P13729160591063587878

`ogf((1+3x+4x^2)/(1-x-x^2-x^3))`
-/

namespace A086192.P13729160591063587878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 4] [1, -1, -1, -1] n

end

end A086192.P13729160591063587878

namespace A086192

/-- `ogf((1+3x+4x^2)/(1-x-x^2-x^3))` -/
def P13729160591063587878.Spec : Prop :=
  ∀ n, P13729160591063587878.a n = A086192 (n + 1)

end A086192

/-! ## A086192.P18002919302731952581

`A274761(n)+Δ[A001644(n)]`
-/

namespace A086192.P18002919302731952581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274761 n + (f1 (n + 1) - f1 n)

end

end A086192.P18002919302731952581

namespace A086192

/-- `A274761(n)+Δ[A001644(n)]` -/
def P18002919302731952581.Spec : Prop :=
  ∀ n, P18002919302731952581.a n = A086192 (n + 1)

end A086192

/-! ## A086192.P2822882778417220291

`A274761(n+1)-A000213(n)`
-/

namespace A086192.P2822882778417220291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274761 (n + 1) - A000213 n

end

end A086192.P2822882778417220291

namespace A086192

/-- `A274761(n+1)-A000213(n)` -/
def P2822882778417220291.Spec : Prop :=
  ∀ n, P2822882778417220291.a n = A086192 (n + 1)

end A086192

/-! ## A086192.P613609709656754517

`A303005(n+1)-A214899(n)`
-/

namespace A086192.P613609709656754517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303005 (n + 1) - A214899 n

end

end A086192.P613609709656754517

namespace A086192

/-- `A303005(n+1)-A214899(n)` -/
def P613609709656754517.Spec : Prop :=
  ∀ n, P613609709656754517.a n = A086192 (n + 1)

end A086192

/-! ## A086192.P4460548684932396024

`A214727(n+2)-A081172(n)`
-/

namespace A086192.P4460548684932396024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 (n + 2) - A081172 n

end

end A086192.P4460548684932396024

namespace A086192

/-- `A214727(n+2)-A081172(n)` -/
def P4460548684932396024.Spec : Prop :=
  ∀ n, P4460548684932396024.a n = A086192 (n + 1)

end A086192

/-! ## A086192.P10308349164989902185

`A354080(n)+2*A354784(n)`
-/

namespace A086192.P10308349164989902185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354080 n + 2 * A354784 n

end

end A086192.P10308349164989902185

namespace A086192

/-- `A354080(n)+2*A354784(n)` -/
def P10308349164989902185.Spec : Prop :=
  ∀ n, P10308349164989902185.a n = A086192 (n + 1)

end A086192

/-! ## A086192.P12744643375363865375

`A001644(n+1)+Δ[A089068(n)]`
-/

namespace A086192.P12744643375363865375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089068 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 (n + 1) + (f1 (n + 1) - f1 n)

end

end A086192.P12744643375363865375

namespace A086192

/-- `A001644(n+1)+Δ[A089068(n)]` -/
def P12744643375363865375.Spec : Prop :=
  ∀ n, P12744643375363865375.a n = A086192 (n + 1)

end A086192

/-! ## A086192.P13647649948313728048

`A001644(n+1)+record[A001590(n)]`
-/

namespace A086192.P13647649948313728048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086192.P13647649948313728048

namespace A086192

/-- `A001644(n+1)+record[A001590(n)]` -/
def P13647649948313728048.Spec : Prop :=
  ∀ n, P13647649948313728048.a n = A086192 (n + 1)

end A086192

/-! ## A086192.P13453644019355446335

`A001644(n+1)+A001590(n+2)`
-/

namespace A086192.P13453644019355446335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 (n + 1) + A001590 (n + 2)

end

end A086192.P13453644019355446335

namespace A086192

/-- `A001644(n+1)+A001590(n+2)` -/
def P13453644019355446335.Spec : Prop :=
  ∀ n, P13453644019355446335.a n = A086192 (n + 1)

end A086192

/-! ## A086192.P7359376031975542973

`2*A214899(n+1)-A001590(n+1)`
-/

namespace A086192.P7359376031975542973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A214899 (n + 1) - A001590 (n + 1)

end

end A086192.P7359376031975542973

namespace A086192

/-- `2*A214899(n+1)-A001590(n+1)` -/
def P7359376031975542973.Spec : Prop :=
  ∀ n, P7359376031975542973.a n = A086192 (n + 1)

end A086192

/-! ## A086192.P11404939687395007604

`A001590(n+1)+A349700(n)+A075092(n)`
-/

namespace A086192.P11404939687395007604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 1) + (A349700 n + A075092 n)

end

end A086192.P11404939687395007604

namespace A086192

/-- `A001590(n+1)+A349700(n)+A075092(n)` -/
def P11404939687395007604.Spec : Prop :=
  ∀ n, P11404939687395007604.a n = A086192 (n + 1)

end A086192

/-! ## A086192.P7817941904424133153

`A141523(n+1)+A073728(n)-A001644(n)`
-/

namespace A086192.P7817941904424133153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141523 (n + 1) + (A073728 n - A001644 n)

end

end A086192.P7817941904424133153

namespace A086192

/-- `A141523(n+1)+A073728(n)-A001644(n)` -/
def P7817941904424133153.Spec : Prop :=
  ∀ n, P7817941904424133153.a n = A086192 (n + 1)

end A086192

/-! ## A086192.P9609767278024220089

`A135491(n+1)+A100683(n)-A020992(n)`
-/

namespace A086192.P9609767278024220089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135491 (n + 1) + (A100683 n - A020992 n)

end

end A086192.P9609767278024220089

namespace A086192

/-- `A135491(n+1)+A100683(n)-A020992(n)` -/
def P9609767278024220089.Spec : Prop :=
  ∀ n, P9609767278024220089.a n = A086192 (n + 1)

end A086192

/-! ## A086192.P16533280452383953835

`A001644(n+1)+A274761(n)-A001644(n)`
-/

namespace A086192.P16533280452383953835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 (n + 1) + (A274761 n - A001644 n)

end

end A086192.P16533280452383953835

namespace A086192

/-- `A001644(n+1)+A274761(n)-A001644(n)` -/
def P16533280452383953835.Spec : Prop :=
  ∀ n, P16533280452383953835.a n = A086192 (n + 1)

end A086192

/-! ## A086192.P5566349128870225412

`A000073(n+1)+A001644(n+1)+A000073(n)`
-/

namespace A086192.P5566349128870225412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 1) + (A001644 (n + 1) + A000073 n)

end

end A086192.P5566349128870225412

namespace A086192

/-- `A000073(n+1)+A001644(n+1)+A000073(n)` -/
def P5566349128870225412.Spec : Prop :=
  ∀ n, P5566349128870225412.a n = A086192 (n + 1)

end A086192

/-! ## A086192.P2526511631063540728

`A001644(n+1)+A089068(n+1)-A089068(n)`
-/

namespace A086192.P2526511631063540728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 (n + 1) + (A089068 (n + 1) - A089068 n)

end

end A086192.P2526511631063540728

namespace A086192

/-- `A001644(n+1)+A089068(n+1)-A089068(n)` -/
def P2526511631063540728.Spec : Prop :=
  ∀ n, P2526511631063540728.a n = A086192 (n + 1)

end A086192

/-! ## A086192.P17270473826576976975

`A000213(n+1)+A145027(n+2)-A001644(n)`
-/

namespace A086192.P17270473826576976975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (n + 1) + (A145027 (n + 2) - A001644 n)

end

end A086192.P17270473826576976975

namespace A086192

/-- `A000213(n+1)+A145027(n+2)-A001644(n)` -/
def P17270473826576976975.Spec : Prop :=
  ∀ n, P17270473826576976975.a n = A086192 (n + 1)

end A086192

/-! ## A086192.P10960395152549211168

`A001644(n+1)+A214899(n+1)-A000213(n+1)`
-/

namespace A086192.P10960395152549211168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 (n + 1) + (A214899 (n + 1) - A000213 (n + 1))

end

end A086192.P10960395152549211168

namespace A086192

/-- `A001644(n+1)+A214899(n+1)-A000213(n+1)` -/
def P10960395152549211168.Spec : Prop :=
  ∀ n, P10960395152549211168.a n = A086192 (n + 1)

end A086192

/-! ## A086192.P750487684680743833

`A001644(n+1)+A141036(n+1)-A081172(n+1)`
-/

namespace A086192.P750487684680743833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 (n + 1) + (A141036 (n + 1) - A081172 (n + 1))

end

end A086192.P750487684680743833

namespace A086192

/-- `A001644(n+1)+A141036(n+1)-A081172(n+1)` -/
def P750487684680743833.Spec : Prop :=
  ∀ n, P750487684680743833.a n = A086192 (n + 1)

end A086192

/-!
# A086194: Number of unrooted steric quartic trees with n (unlabeled) nodes and possessing a centroid; number of n carbon alkanes C(n)H(2n +2) with a centroid when stereoisomers are regarded as different.

The programs for A086194, there is no canonical definition to state claims against.
-/

/-! ## A086194.P10504933423458348246

`A126309(A360783(n))+A078105(n)`
-/

namespace A086194.P10504933423458348246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126309 (A360783 n).toNat + A078105 n

end

end A086194.P10504933423458348246

/-! ## A086194.P6869135968396028379

`A025581(xor(A097899(n), A275018(n)))`
-/

namespace A086194.P6869135968396028379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (Int.xor (A097899 n) (A275018 n)).toNat

end

end A086194.P6869135968396028379

/-! ## A086194.P18065299650984614279

`A020951(A168610(n)-A070864(n+1))`
-/

namespace A086194.P18065299650984614279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020951 (A168610 n - A070864 (n + 1)).toNat

end

end A086194.P18065299650984614279

/-! ## A086194.P4154106166989710191

`or(A143351(n+1), A171572(A086825(n)))`
-/

namespace A086194.P4154106166989710191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A143351 (n + 1)) (A171572 (A086825 n).toNat)

end

end A086194.P4154106166989710191

/-! ## A086194.P6308873001921121142

`A354665(2*n*A096901(n+2))+A126309(A360783(n))`
-/

namespace A086194.P6308873001921121142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354665 ((2 * n : ℤ) * A096901 (n + 2)).toNat + A126309 (A360783 n).toNat

end

end A086194.P6308873001921121142

