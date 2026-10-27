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
import Seq.B000.C023
import Seq.B000.C024
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
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
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
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.B008.C000
import Seq.B009.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A248100: Number of ordered trees with n edges such that non-leaf vertices at even levels have outdegree 1 and those at odd levels have outdegree 2.

The programs for A248100, the canonical program `A248100.P11130185085253701806` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248100 has offset 0).

The definition of A248100 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 394 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248100.P11130185085253701806

`A025277(n+3)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A248100

/-- `A025277(n+3)` -/
def P11130185085253701806.Spec : Prop :=
  ∀ n, P11130185085253701806.a n = A248100 n

theorem P11130185085253701806.correct : P11130185085253701806.Spec := by
  intro n
  simp only [A248100]

end A248100

/-! ## A248100.P1606377030574284897

`A366588(abs(1-n))+A366588(n)`
-/

namespace A248100.P1606377030574284897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366588 |1 - (n : ℤ)|.toNat + A366588 n

end

end A248100.P1606377030574284897

namespace A248100

/-- `A366588(abs(1-n))+A366588(n)` -/
def P1606377030574284897.Spec : Prop :=
  ∀ n, P1606377030574284897.a n = A248100 n

end A248100

/-! ## A248100.P8420859611778942638

`A329694(n-1)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A248100.P8420859611778942638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A329694 (n - 1) - a (n - 1)

end

end A248100.P8420859611778942638

namespace A248100

/-- `A329694(n-1)-a(n-1)` -/
def P8420859611778942638.Spec : Prop :=
  ∀ n, P8420859611778942638.a n = A248100 n

end A248100

/-!
# A248101: Completely multiplicative with a(prime(n)) = prime(n)^((n+1) mod 2).

The programs for A248101, there is no canonical definition to state claims against.
-/

/-! ## A248101.P5116335142536467489

`(n+1)/A247503(n+1)`
-/

namespace A248101.P5116335142536467489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A247503 (n + 1) : ℚ)

end

end A248101.P5116335142536467489

/-! ## A248101.P3544755843069662340

`A297002(A319522(n+1))`
-/

namespace A248101.P3544755843069662340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297002 (A319522 (n + 1)).toNat

end

end A248101.P3544755843069662340

/-! ## A248101.P18093471009785212503

`(n+1)/A319525(A319521(n+1))`
-/

namespace A248101.P18093471009785212503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A319525 (A319521 (n + 1)).toNat : ℚ)

end

end A248101.P18093471009785212503

/-! ## A248101.P7715463007338021537

`A003961(A247503(A064989(n+1)))`
-/

namespace A248101.P7715463007338021537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A247503 (A064989 (n + 1)).toNat).toNat

end

end A248101.P7715463007338021537

/-! ## A248101.P4451757072369030343

`A374611(A247503(A374611(n+1)))`
-/

namespace A248101.P4451757072369030343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374611 (A247503 (A374611 (n + 1)).toNat).toNat

end

end A248101.P4451757072369030343

/-! ## A248101.P16844583045854009948

`floor(A103517(n)/A247503(A103517(n)))`
-/

namespace A248101.P16844583045854009948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A103517 n : ℚ) / (A247503 (A103517 n).toNat : ℚ)⌋

end

end A248101.P16844583045854009948

/-! ## A248101.P12869372635692035857

`(A103517(n)/A247503(A103517(n)))%A017089(n)`
-/

namespace A248101.P12869372635692035857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A103517 n : ℚ) / (A247503 (A103517 n).toNat : ℚ))) (A017089 n)

end

end A248101.P12869372635692035857

/-! ## A248101.P7321539199672762092

`(A103517(n)/A247503(A103517(n)))^A000038(n)!`
-/

namespace A248101.P7321539199672762092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A103517 n : ℚ) / (A247503 (A103517 n).toNat : ℚ)) ^ Nat.factorial (A000038 n).toNat

end

end A248101.P7321539199672762092

/-! ## A248101.P121782753287732817

`A103517(n)/A247503(A103517(n))*A056594(2*n)²`
-/

namespace A248101.P121782753287732817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103517 n : ℚ) / (A247503 (A103517 n).toNat : ℚ) * (A056594 (2 * n) ^ 2 : ℚ)

end

end A248101.P121782753287732817

/-! ## A248101.P1620248675893900547

`A061898(A319525(A319522(A319521(A319525(n+1)))))`
-/

namespace A248101.P1620248675893900547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061898 (A319525 (A319522 (A319521 (A319525 (n + 1)).toNat).toNat).toNat).toNat

end

end A248101.P1620248675893900547

/-! ## A248101.P2504628860782860923

`A297002(A319521(A061898(n+1)))`
-/

namespace A248101.P2504628860782860923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297002 (A319521 (A061898 (n + 1)).toNat).toNat

end

end A248101.P2504628860782860923

/-! ## A248101.P14391092723922048329

`A126988(A247503(n+1)+∑[n])`
-/

namespace A248101.P14391092723922048329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A247503 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A248101.P14391092723922048329

/-! ## A248101.P16424937185619992335

`A010766(A247503(n+1)+A000217(n))`
-/

namespace A248101.P16424937185619992335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A247503 (n + 1) + A000217 n).toNat

end

end A248101.P16424937185619992335

/-! ## A248101.P9673843506909940921

`A049834(A247503(n+1)+A000217(n))`
-/

namespace A248101.P9673843506909940921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (A247503 (n + 1) + A000217 n).toNat

end

end A248101.P9673843506909940921

/-!
# A248102: Number of tilings of a 5 X 2n rectangle using 2n pentominoes of shapes N, Y.

The programs for A248102, there is no canonical definition to state claims against.
-/

/-! ## A248102.P4313916664021078036

`A071077(n)*A160381(A002893(n))`
-/

namespace A248102.P4313916664021078036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071077 n * A160381 (A002893 n).toNat

end

end A248102.P4313916664021078036

/-! ## A248102.P13555306673124161215

`A289813(A001407(n)*A190546(n+1))`
-/

namespace A248102.P13555306673124161215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A001407 n * A190546 (n + 1)).toNat

end

end A248102.P13555306673124161215

/-!
# A248103: Least k such that ((2*k+1)/(2*k-1))^k - e < 1/(2*n^2).

The programs for A248103, the canonical program `A248103.P9163606427250832216` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248103 has offset 1).

The definition of A248103 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5466 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248103.P9163606427250832216

`ceil((n+1)*sqrt(e/6))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A248103

/-- `ceil((n+1)*sqrt(e/6))` -/
def P9163606427250832216.Spec : Prop :=
  ∀ n, P9163606427250832216.a n = A248103 (n + 1)

theorem P9163606427250832216.correct : P9163606427250832216.Spec := by
  intro n
  simp only [A248103, Nat.add_sub_cancel]

end A248103

/-! ## A248103.P6466604759567970687

`A000196(A008728(3*n+2))%A135402(n+3)`
-/

namespace A248103.P6466604759567970687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000196 (A008728 (3 * n + 2)).toNat) (A135402 (n + 3))

end

end A248103.P6466604759567970687

namespace A248103

/-- `A000196(A008728(3*n+2))%A135402(n+3)` -/
def P6466604759567970687.Spec : Prop :=
  ∀ n, P6466604759567970687.a n = A248103 (n + 1)

end A248103

/-! ## A248103.P3432675096465356429

`A000196(A022840(n²+1+n)-A001105(n))`
-/

namespace A248103.P3432675096465356429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A022840 (n ^ 2 + 1 + n) - A001105 n).toNat

end

end A248103.P3432675096465356429

namespace A248103

/-- `A000196(A022840(n²+1+n)-A001105(n))` -/
def P3432675096465356429.Spec : Prop :=
  ∀ n, P3432675096465356429.a n = A248103 (n + 1)

end A248103

/-! ## A248103.P171082290033532197

`round(sqrt(sqrt(A008812((n+1)²))+n))`
-/

namespace A248103.P171082290033532197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (A008812 ((n + 1) ^ 2) : ℝ) + (n : ℝ)))

end

end A248103.P171082290033532197

namespace A248103

/-- `round(sqrt(sqrt(A008812((n+1)²))+n))` -/
def P171082290033532197.Spec : Prop :=
  ∀ n, P171082290033532197.a n = A248103 (n + 1)

end A248103

/-! ## A248103.P15213352085400542445

`A000196(∑[A319413(n+9)])`
-/

namespace A248103.P15213352085400542445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319413 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A248103.P15213352085400542445

namespace A248103

/-- `A000196(∑[A319413(n+9)])` -/
def P15213352085400542445.Spec : Prop :=
  ∀ n, P15213352085400542445.a n = A248103 (n + 1)

end A248103

/-! ## A248103.P604338513703414118

`A121900(∑[5*n+4])`
-/

namespace A248103.P604338513703414118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248103.P604338513703414118

namespace A248103

/-- `A121900(∑[5*n+4])` -/
def P604338513703414118.Spec : Prop :=
  ∀ n, P604338513703414118.a n = A248103 (n + 1)

end A248103

/-! ## A248103.P11994217855885652613

`∑[A105360(n+1)²%3]`
-/

namespace A248103.P11994217855885652613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105360 (n + 1) ^ 2) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248103.P11994217855885652613

namespace A248103

/-- `∑[A105360(n+1)²%3]` -/
def P11994217855885652613.Spec : Prop :=
  ∀ n, P11994217855885652613.a n = A248103 (n + 1)

end A248103

/-!
# A248104: Positions of 0,1,0 in the Thue-Morse sequence (A010060).

The programs for A248104, the canonical program `A248104.P800852553454407909` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248104 has offset 1).

The definition of A248104 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248104.P12392830072543305108

`∑[(-1)^n]+2*comp[or(n, val(n+2, 2))]+3`
-/

namespace A248104.P12392830072543305108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (SequenceMachineLib.valuation (n + 2) 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 3 : ℤ)

end

end A248104.P12392830072543305108

namespace A248104

/-- `∑[(-1)^n]+2*comp[or(n, val(n+2, 2))]+3` -/
def P12392830072543305108.Spec : Prop :=
  ∀ n, P12392830072543305108.a n = A248104 (n + 1)

end A248104

/-! ## A248104.P6571962678287365513

`eq[6, A277744(n+1)]`
-/

namespace A248104.P6571962678287365513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277744 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248104.P6571962678287365513

namespace A248104

/-- `eq[6, A277744(n+1)]` -/
def P6571962678287365513.Spec : Prop :=
  ∀ n, (P6571962678287365513.a n : ℤ) = A248104 (n + 1)

end A248104

/-! ## A248104.P16365605717878879271

`eq[2, A334173(n+1)]+2`
-/

namespace A248104.P16365605717878879271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334173 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A248104.P16365605717878879271

namespace A248104

/-- `eq[2, A334173(n+1)]+2` -/
def P16365605717878879271.Spec : Prop :=
  ∀ n, (P16365605717878879271.a n : ℤ) = A248104 (n + 1)

end A248104

/-! ## A248104.P13507664221449196324

`A108269(n+1)-n%2`
-/

namespace A248104.P13507664221449196324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108269 (n + 1) - ((n % 2 : ℕ) : ℤ)

end

end A248104.P13507664221449196324

namespace A248104

/-- `A108269(n+1)-n%2` -/
def P13507664221449196324.Spec : Prop :=
  ∀ n, P13507664221449196324.a n = A248104 (n + 1)

end A248104

/-! ## A248104.P10638495365930629045

`lt[A129680(n+1)², 1]+1`
-/

namespace A248104.P10638495365930629045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129680 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A248104.P10638495365930629045

namespace A248104

/-- `lt[A129680(n+1)², 1]+1` -/
def P10638495365930629045.Spec : Prop :=
  ∀ n, (P10638495365930629045.a n : ℤ) = A248104 (n + 1)

end A248104

/-! ## A248104.P6918882977086475592

`A131323(n+1)+char[2*n]`
-/

namespace A248104.P6918882977086475592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131323 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A248104.P6918882977086475592

namespace A248104

/-- `A131323(n+1)+char[2*n]` -/
def P6918882977086475592.Spec : Prop :=
  ∀ n, P6918882977086475592.a n = A248104 (n + 1)

end A248104

/-! ## A248104.P800852553454407909

`A081706(2*n+1)+gcd(2, n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A248104

/-- `A081706(2*n+1)+gcd(2, n)` -/
def P800852553454407909.Spec : Prop :=
  ∀ n, P800852553454407909.a n = A248104 (n + 1)

theorem P800852553454407909.correct : P800852553454407909.Spec := by
  intro n
  simp only [A248104, Nat.add_sub_cancel]

end A248104

/-! ## A248104.P16277404788235673949

`A081706(char[2*n]+Δ[n²])+1`
-/

namespace A248104.P16277404788235673949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081706 (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))).toNat + 1

end

end A248104.P16277404788235673949

namespace A248104

/-- `A081706(char[2*n]+Δ[n²])+1` -/
def P16277404788235673949.Spec : Prop :=
  ∀ n, P16277404788235673949.a n = A248104 (n + 1)

end A248104

/-! ## A248104.P8146677828329034845

`A000069(lt[0, val(n+1, 2)%2])+3`
-/

namespace A248104.P8146677828329034845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n) + 3

end

end A248104.P8146677828329034845

namespace A248104

/-- `A000069(lt[0, val(n+1, 2)%2])+3` -/
def P8146677828329034845.Spec : Prop :=
  ∀ n, P8146677828329034845.a n = A248104 (n + 1)

end A248104

/-! ## A248104.P6923917314777006187

`A026147(A036554(n+1))`
-/

namespace A248104.P6923917314777006187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026147 (A036554 (n + 1)).toNat

end

end A248104.P6923917314777006187

namespace A248104

/-- `A026147(A036554(n+1))` -/
def P6923917314777006187.Spec : Prop :=
  ∀ n, P6923917314777006187.a n = A248104 (n + 1)

end A248104

/-! ## A248104.P13413899298588211516

`A014681(A248105(n+1))`
-/

namespace A248104.P13413899298588211516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A248105 (n + 1)).toNat

end

end A248104.P13413899298588211516

namespace A248104

/-- `A014681(A248105(n+1))` -/
def P13413899298588211516.Spec : Prop :=
  ∀ n, P13413899298588211516.a n = A248104 (n + 1)

end A248104

/-! ## A248104.P7079534696369176237

`A344346(A042964(n+1))`
-/

namespace A248104.P7079534696369176237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344346 (A042964 (n + 1)).toNat

end

end A248104.P7079534696369176237

namespace A248104

/-- `A344346(A042964(n+1))` -/
def P7079534696369176237.Spec : Prop :=
  ∀ n, P7079534696369176237.a n = A248104 (n + 1)

end A248104

/-! ## A248104.P6088852701866302161

`A344346(A053438(n+1))`
-/

namespace A248104.P6088852701866302161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344346 (A053438 (n + 1)).toNat

end

end A248104.P6088852701866302161

namespace A248104

/-- `A344346(A053438(n+1))` -/
def P6088852701866302161.Spec : Prop :=
  ∀ n, P6088852701866302161.a n = A248104 (n + 1)

end A248104

/-! ## A248104.P2627281971404117470

`A268818(A131323(n+1))`
-/

namespace A248104.P2627281971404117470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268818 (A131323 (n + 1)).toNat

end

end A248104.P2627281971404117470

namespace A248104

/-- `A268818(A131323(n+1))` -/
def P2627281971404117470.Spec : Prop :=
  ∀ n, P2627281971404117470.a n = A248104 (n + 1)

end A248104

/-! ## A248104.P15779601049075601623

`A344346(A042948(n)+2)`
-/

namespace A248104.P15779601049075601623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344346 (A042948 n + 2).toNat

end

end A248104.P15779601049075601623

namespace A248104

/-- `A344346(A042948(n)+2)` -/
def P15779601049075601623.Spec : Prop :=
  ∀ n, P15779601049075601623.a n = A248104 (n + 1)

end A248104

/-! ## A248104.P6980072417542032212

`A344346(lt[1, A050603(n)])`
-/

namespace A248104.P6980072417542032212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344346 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A248104.P6980072417542032212

namespace A248104

/-- `A344346(lt[1, A050603(n)])` -/
def P6980072417542032212.Spec : Prop :=
  ∀ n, P6980072417542032212.a n = A248104 (n + 1)

end A248104

/-! ## A248104.P3495463189313050403

`eq[A036582(n), A101671(n)]`
-/

namespace A248104.P3495463189313050403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036582 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248104.P3495463189313050403

namespace A248104

/-- `eq[A036582(n), A101671(n)]` -/
def P3495463189313050403.Spec : Prop :=
  ∀ n, (P3495463189313050403.a n : ℤ) = A248104 (n + 1)

end A248104

/-! ## A248104.P11740727250426218248

`eq[A036581(n), A127254(n)]`
-/

namespace A248104.P11740727250426218248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127254 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248104.P11740727250426218248

namespace A248104

/-- `eq[A036581(n), A127254(n)]` -/
def P11740727250426218248.Spec : Prop :=
  ∀ n, (P11740727250426218248.a n : ℤ) = A248104 (n + 1)

end A248104

/-!
# A248105: Positions of 1,0,1 in the Thue-Morse sequence (A010060).

The programs for A248105, the canonical program `A248105.P13582388616067167106` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248105 has offset 1).

The definition of A248105 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248105.P5251700898173310714

`n%2+2*comp[or(n, val(n+2, 2))]+3`
-/

namespace A248105.P5251700898173310714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (SequenceMachineLib.valuation (n + 2) 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 3)

end

end A248105.P5251700898173310714

namespace A248105

/-- `n%2+2*comp[or(n, val(n+2, 2))]+3` -/
def P5251700898173310714.Spec : Prop :=
  ∀ n, (P5251700898173310714.a n : ℤ) = A248105 (n + 1)

end A248105

/-! ## A248105.P13582388616067167106

`2*eq[0, xor(n, n-1)%3]-∑[(-1)^n]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A248105

/-- `2*eq[0, xor(n, n-1)%3]-∑[(-1)^n]` -/
def P13582388616067167106.Spec : Prop :=
  ∀ n, P13582388616067167106.a n = A248105 (n + 1)

theorem P13582388616067167106.correct : P13582388616067167106.Spec := by
  intro n
  simp only [A248105, Nat.add_sub_cancel]

end A248105

/-! ## A248105.P10143432989016188632

`A234648(n+1)/2`
-/

namespace A248105.P10143432989016188632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234648 (n + 1) : ℚ) / 2

end

end A248105.P10143432989016188632

namespace A248105

/-- `A234648(n+1)/2` -/
def P10143432989016188632.Spec : Prop :=
  ∀ n, P10143432989016188632.a n = (A248105 (n + 1) : ℚ)

end A248105

/-! ## A248105.P8235516660927752836

`lt[1, A029884(n)]+1`
-/

namespace A248105.P8235516660927752836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029884 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A248105.P8235516660927752836

namespace A248105

/-- `lt[1, A029884(n)]+1` -/
def P8235516660927752836.Spec : Prop :=
  ∀ n, (P8235516660927752836.a n : ℤ) = A248105 (n + 1)

end A248105

/-! ## A248105.P272602133480325950

`eq[1, A277744(n+2)]+1`
-/

namespace A248105.P272602133480325950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277744 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A248105.P272602133480325950

namespace A248105

/-- `eq[1, A277744(n+2)]+1` -/
def P272602133480325950.Spec : Prop :=
  ∀ n, (P272602133480325950.a n : ℤ) = A248105 (n + 1)

end A248105

/-! ## A248105.P11260575899585110297

`A131323(n+1)+n%2`
-/

namespace A248105.P11260575899585110297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131323 (n + 1) + ((n % 2 : ℕ) : ℤ)

end

end A248105.P11260575899585110297

namespace A248105

/-- `A131323(n+1)+n%2` -/
def P11260575899585110297.Spec : Prop :=
  ∀ n, P11260575899585110297.a n = A248105 (n + 1)

end A248105

/-! ## A248105.P6431368627148040959

`A081706(2*(n+1))+and(1, n)`
-/

namespace A248105.P6431368627148040959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081706 (2 * (n + 1)) + (Nat.land 1 n : ℤ)

end

end A248105.P6431368627148040959

namespace A248105

/-- `A081706(2*(n+1))+and(1, n)` -/
def P6431368627148040959.Spec : Prop :=
  ∀ n, P6431368627148040959.a n = A248105 (n + 1)

end A248105

/-! ## A248105.P13468074942303626913

`A000069(comp[or(n, val(n+2, 2))]+2)+1`
-/

namespace A248105.P13468074942303626913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (SequenceMachineLib.valuation (n + 2) 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2) + 1

end

end A248105.P13468074942303626913

namespace A248105

/-- `A000069(comp[or(n, val(n+2, 2))]+2)+1` -/
def P13468074942303626913.Spec : Prop :=
  ∀ n, P13468074942303626913.a n = A248105 (n + 1)

end A248105

/-! ## A248105.P15252807890044285162

`A093505(A108269(n+1))`
-/

namespace A248105.P15252807890044285162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093505 (A108269 (n + 1)).toNat

end

end A248105.P15252807890044285162

namespace A248105

/-- `A093505(A108269(n+1))` -/
def P15252807890044285162.Spec : Prop :=
  ∀ n, P15252807890044285162.a n = A248105 (n + 1)

end A248105

/-! ## A248105.P6371500142538284677

`A181155(A036554(n+1))`
-/

namespace A248105.P6371500142538284677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181155 (A036554 (n + 1)).toNat

end

end A248105.P6371500142538284677

namespace A248105

/-- `A181155(A036554(n+1))` -/
def P6371500142538284677.Spec : Prop :=
  ∀ n, P6371500142538284677.a n = A248105 (n + 1)

end A248105

/-! ## A248105.P4726372372232017112

`A014681(A248104(n+1))`
-/

namespace A248105.P4726372372232017112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A248104 (n + 1)).toNat

end

end A248105.P4726372372232017112

namespace A248105

/-- `A014681(A248104(n+1))` -/
def P4726372372232017112.Spec : Prop :=
  ∀ n, P4726372372232017112.a n = A248105 (n + 1)

end A248105

/-! ## A248105.P11628465684357610123

`A344346(A014601(n)+1)`
-/

namespace A248105.P11628465684357610123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344346 (A014601 n + 1).toNat

end

end A248105.P11628465684357610123

namespace A248105

/-- `A344346(A014601(n)+1)` -/
def P11628465684357610123.Spec : Prop :=
  ∀ n, P11628465684357610123.a n = A248105 (n + 1)

end A248105

/-! ## A248105.P2744936070353513933

`A344346(A042948(n+1))`
-/

namespace A248105.P2744936070353513933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344346 (A042948 (n + 1)).toNat

end

end A248105.P2744936070353513933

namespace A248105

/-- `A344346(A042948(n+1))` -/
def P2744936070353513933.Spec : Prop :=
  ∀ n, P2744936070353513933.a n = A248105 (n + 1)

end A248105

/-! ## A248105.P4667324035289500429

`A161560(A249034(n+1))`
-/

namespace A248105.P4667324035289500429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161560 (A249034 (n + 1)).toNat

end

end A248105.P4667324035289500429

namespace A248105

/-- `A161560(A249034(n+1))` -/
def P4667324035289500429.Spec : Prop :=
  ∀ n, P4667324035289500429.a n = A248105 (n + 1)

end A248105

/-! ## A248105.P7778076414784646225

`A344346(A338062(n+1))`
-/

namespace A248105.P7778076414784646225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344346 (A338062 (n + 1)).toNat

end

end A248105.P7778076414784646225

namespace A248105

/-- `A344346(A338062(n+1))` -/
def P7778076414784646225.Spec : Prop :=
  ∀ n, P7778076414784646225.a n = A248105 (n + 1)

end A248105

/-! ## A248105.P8318941707922511056

`eq[A036582(n), A292118(n)]`
-/

namespace A248105.P8318941707922511056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036582 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292118 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248105.P8318941707922511056

namespace A248105

/-- `eq[A036582(n), A292118(n)]` -/
def P8318941707922511056.Spec : Prop :=
  ∀ n, (P8318941707922511056.a n : ℤ) = A248105 (n + 1)

end A248105

/-! ## A248105.P13300819661657359852

`eq[A036586(n), A292118(n)]`
-/

namespace A248105.P13300819661657359852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036586 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292118 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248105.P13300819661657359852

namespace A248105

/-- `eq[A036586(n), A292118(n)]` -/
def P13300819661657359852.Spec : Prop :=
  ∀ n, (P13300819661657359852.a n : ℤ) = A248105 (n + 1)

end A248105

/-! ## A248105.P12605268947414052048

`eq[A096268(n), A316826(n)]`
-/

namespace A248105.P12605268947414052048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248105.P12605268947414052048

namespace A248105

/-- `eq[A096268(n), A316826(n)]` -/
def P12605268947414052048.Spec : Prop :=
  ∀ n, (P12605268947414052048.a n : ℤ) = A248105 (n + 1)

end A248105

/-! ## A248105.P12152795245507831437

`eq[A096268(n), A317189(n)]`
-/

namespace A248105.P12152795245507831437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317189 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248105.P12152795245507831437

namespace A248105

/-- `eq[A096268(n), A317189(n)]` -/
def P12152795245507831437.Spec : Prop :=
  ∀ n, (P12152795245507831437.a n : ℤ) = A248105 (n + 1)

end A248105

/-! ## A248105.P17930558381961265056

`eq[A101669(n), A316826(n)]`
-/

namespace A248105.P17930558381961265056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101669 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248105.P17930558381961265056

namespace A248105

/-- `eq[A101669(n), A316826(n)]` -/
def P17930558381961265056.Spec : Prop :=
  ∀ n, (P17930558381961265056.a n : ℤ) = A248105 (n + 1)

end A248105

/-!
# A248106: Least k such that ((k+1)/(k-1))^k - e^2 < 1/n^2.

The programs for A248106, there is no canonical definition to state claims against.
-/

/-! ## A248106.P16873162996547088639

`A329838(n+1)+A056594(∑[2*lcm(2, n)])`
-/

namespace A248106.P16873162996547088639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329838 (n + 1) + A056594 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248106.P16873162996547088639

/-! ## A248106.P12088483031421149825

`A329838(n+1)+A054977(A094441(n))`
-/

namespace A248106.P12088483031421149825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329838 (n + 1) + A054977 (A094441 n).toNat

end

end A248106.P12088483031421149825

/-! ## A248106.P187217916373406154

`A329838(n+1)+A241578(A190906(n))`
-/

namespace A248106.P187217916373406154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329838 (n + 1) + A241578 (A190906 n).toNat

end

end A248106.P187217916373406154

/-! ## A248106.P3952984825898651604

`A329838(n+1)+A001222(A020621(n+1))`
-/

namespace A248106.P3952984825898651604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329838 (n + 1) + A001222 (A020621 (n + 1)).toNat

end

end A248106.P3952984825898651604

/-! ## A248106.P4564277809279170294

`A329838(n+1)+A010687(A062717(n+1))`
-/

namespace A248106.P4564277809279170294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329838 (n + 1) + A010687 (A062717 (n + 1)).toNat

end

end A248106.P4564277809279170294

/-! ## A248106.P17483687365110877427

`A329838(n+1)+A011592(A123264(n+3))²`
-/

namespace A248106.P17483687365110877427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329838 (n + 1) + A011592 (A123264 (n + 3)).toNat ^ 2

end

end A248106.P17483687365110877427

/-! ## A248106.P14669398288269944033

`A329838(n+1)%A072154(n²+1)+1`
-/

namespace A248106.P14669398288269944033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329838 (n + 1)) (A072154 (n ^ 2 + 1)) + 1

end

end A248106.P14669398288269944033

/-!
# A248108: Areas of primitive Heronian triangles K which are perfect squares.

The programs for A248108, there is no canonical definition to state claims against.
-/

/-! ## A248108.P14642058797393856816

`filter[A169836(n+1), A091247(#)]`
-/

namespace A248108.P14642058797393856816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A248108.P14642058797393856816

/-!
# A248109: Integer part of square root of A010811(n) = n^23.

The programs for A248109, the canonical program `A248109.P17409430267255028257` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248109 has offset 0).

The definition of A248109 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A248109.P17409430267255028257

`floor(sqrt(n^23))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A248109

/-- `floor(sqrt(n^23))` -/
def P17409430267255028257.Spec : Prop :=
  ∀ n, (P17409430267255028257.a n : ℤ) = A248109 n

theorem P17409430267255028257.correct : P17409430267255028257.Spec := by
  intro n
  simp only [A248109]

end A248109

/-! ## A248109.P12650905439772981709

`floor(sqrt(A010811(n)))*A054977(n)`
-/

namespace A248109.P12650905439772981709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A010811 n) * A054977 n

end

end A248109.P12650905439772981709

namespace A248109

/-- `floor(sqrt(A010811(n)))*A054977(n)` -/
def P12650905439772981709.Spec : Prop :=
  ∀ n, P12650905439772981709.a n = A248109 n

end A248109

/-! ## A248109.P13721766182625266981

`floor(sqrt(A010811(n)))+(36*A105939(n))%3`
-/

namespace A248109.P13721766182625266981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A010811 n) + Int.tmod (36 * A105939 n) 3

end

end A248109.P13721766182625266981

namespace A248109

/-- `floor(sqrt(A010811(n)))+(36*A105939(n))%3` -/
def P13721766182625266981.Spec : Prop :=
  ∀ n, P13721766182625266981.a n = A248109 n

end A248109

/-! ## A248109.P2614377363632156676

`floor(sqrt(A010811(n)))+(36*A034836(n+1))%3`
-/

namespace A248109.P2614377363632156676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A010811 n) + Int.tmod (36 * A034836 (n + 1)) 3

end

end A248109.P2614377363632156676

namespace A248109

/-- `floor(sqrt(A010811(n)))+(36*A034836(n+1))%3` -/
def P2614377363632156676.Spec : Prop :=
  ∀ n, P2614377363632156676.a n = A248109 n

end A248109

/-! ## A248109.P17255233732163288855

`floor(sqrt(A010811(n)))%A095372(n)`
-/

namespace A248109.P17255233732163288855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A010811 n)) (A095372 n)

end

end A248109.P17255233732163288855

namespace A248109

/-- `floor(sqrt(A010811(n)))%A095372(n)` -/
def P17255233732163288855.Spec : Prop :=
  ∀ n, P17255233732163288855.a n = A248109 n

end A248109

/-!
# A248110: Table read by rows: n-th row contains the q successors of n, where q = A007953(n), the digit sum of n in decimal representation.

The programs for A248110, there is no canonical definition to state claims against.
-/

/-! ## A248110.P2131449658283744412

`A059995(A304367(n+1))+A010888(A304367(n+1))`
-/

namespace A248110.P2131449658283744412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A304367 (n + 1)).toNat + A010888 (A304367 (n + 1)).toNat

end

end A248110.P2131449658283744412

/-! ## A248110.P11017737780097949602

`A236861(A342980(n))+A094727(n+1)`
-/

namespace A248110.P11017737780097949602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236861 (A342980 n).toNat + A094727 (n + 1)

end

end A248110.P11017737780097949602

/-! ## A248110.P4701629457329058661

`A108872(n+1)-A025465(A081580(n))`
-/

namespace A248110.P4701629457329058661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108872 (n + 1) - A025465 (A081580 n).toNat

end

end A248110.P4701629457329058661

/-! ## A248110.P7187451618256491947

`A108872(n+1)+A010815(A000290(2*n+3))`
-/

namespace A248110.P7187451618256491947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108872 (n + 1) + A010815 (A000290 (2 * n + 3)).toNat

end

end A248110.P7187451618256491947

/-!
# A248111: Least k such that ((k+2)/(k-2))^k - e^4 < 1/n.

The programs for A248111, the canonical program `A248111.P13117839986049929942` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248111 has offset 1).

The definition of A248111 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248111.P13117839986049929942

`A278814(A100775(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A248111

/-- `A278814(A100775(n))` -/
def P13117839986049929942.Spec : Prop :=
  ∀ n, P13117839986049929942.a n = A248111 (n + 1)

theorem P13117839986049929942.correct : P13117839986049929942.Spec := by
  intro n
  simp only [A248111, Nat.add_sub_cancel]

end A248111

/-! ## A248111.P3215695959252456416

`A278814(A017569(A022144(n+1))+n+1)`
-/

namespace A248111.P3215695959252456416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278814 (A017569 (A022144 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A248111.P3215695959252456416

namespace A248111

/-- `A278814(A017569(A022144(n+1))+n+1)` -/
def P3215695959252456416.Spec : Prop :=
  ∀ n, P3215695959252456416.a n = A248111 (n + 1)

end A248111

/-! ## A248111.P481691351966296626

`A003059(3*A100775(n))`
-/

namespace A248111.P481691351966296626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (3 * A100775 n).toNat

end

end A248111.P481691351966296626

namespace A248111

/-- `A003059(3*A100775(n))` -/
def P481691351966296626.Spec : Prop :=
  ∀ n, P481691351966296626.a n = A248111 (n + 1)

end A248111

/-! ## A248111.P9580120922811570097

`A003059(A329838(n+4)+A158253(n+1))`
-/

namespace A248111.P9580120922811570097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A329838 (n + 4) + A158253 (n + 1)).toNat

end

end A248111.P9580120922811570097

namespace A248111

/-- `A003059(A329838(n+4)+A158253(n+1))` -/
def P9580120922811570097.Spec : Prop :=
  ∀ n, P9580120922811570097.a n = A248111 (n + 1)

end A248111

/-! ## A248111.P2424601557748351122

`A003059(A194421(2*n+3)+A158253(n+1))`
-/

namespace A248111.P2424601557748351122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A194421 (2 * n + 3) + A158253 (n + 1)).toNat

end

end A248111.P2424601557748351122

namespace A248111

/-- `A003059(A194421(2*n+3)+A158253(n+1))` -/
def P2424601557748351122.Spec : Prop :=
  ∀ n, P2424601557748351122.a n = A248111 (n + 1)

end A248111

/-!
# A248112: Number T(n,k) of subsets of {1,...,n} containing n and having at least one set partition into k blocks with equal element sum; triangle T(n,k), n>=1, 1<=k<=floor((n+1)/2), read by rows.

The programs for A248112, there is no canonical definition to state claims against.
-/

/-! ## A248112.P15275166065662928732

`A327189(A196231(n+1)²)`
-/

namespace A248112.P15275166065662928732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327189 (A196231 (n + 1) ^ 2).toNat

end

end A248112.P15275166065662928732

/-! ## A248112.P6628492336068279372

`A327189(A196231(n+1)^2)`
-/

namespace A248112.P6628492336068279372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327189 (A196231 (n + 1) ^ 2).toNat

end

end A248112.P6628492336068279372

/-! ## A248112.P17029869029660620473

`A185284(3*n+2)+A157271(A196231(n+1))`
-/

namespace A248112.P17029869029660620473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (3 * n + 2) + A157271 (A196231 (n + 1)).toNat

end

end A248112.P17029869029660620473

/-! ## A248112.P8215326273362441607

`A160467(A176598(n+1))`
-/

namespace A248112.P8215326273362441607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160467 (A176598 (n + 1)).toNat

end

end A248112.P8215326273362441607

/-! ## A248112.P4632289088359123161

`A207872(A156344(n+1))`
-/

namespace A248112.P4632289088359123161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207872 (A156344 (n + 1)).toNat

end

end A248112.P4632289088359123161

/-!
# A248113: Number of subsets of {1,...,n} containing n and having at least one set partition into 4 blocks with equal element sum.

The programs for A248113, there is no canonical definition to state claims against.
-/

/-! ## A248113.P10740170512024437823

`A054404(∑[A178943(2^n)])`
-/

namespace A248113.P10740170512024437823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178943 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A248113.P10740170512024437823

/-! ## A248113.P14624651102389632479

`A023190(A258347(n)-C(n, 4))`
-/

namespace A248113.P14624651102389632479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A258347 n - (Nat.choose n 4 : ℤ)).toNat

end

end A248113.P14624651102389632479

/-! ## A248113.P10981763715947010760

`A177155(n)+A001221(A177125(n))`
-/

namespace A248113.P10981763715947010760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177155 n + A001221 (A177125 n).toNat

end

end A248113.P10981763715947010760

/-!
# A248114: Number of subsets of {1,...,n} containing n and having at least one set partition into 5 blocks with equal element sum.

The programs for A248114, there is no canonical definition to state claims against.
-/

/-! ## A248114.P18431260468943863110

`A359677(A145267(n))+A164267(n+1)`
-/

namespace A248114.P18431260468943863110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359677 (A145267 n).toNat + A164267 (n + 1)

end

end A248114.P18431260468943863110

/-! ## A248114.P13232952679345603851

`A201643(2*n+1)-(2*(n+1)-(n-2*n))`
-/

namespace A248114.P13232952679345603851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201643 (2 * n + 1) - ((2 * (n + 1) : ℤ) - ((n : ℤ) - (2 * n : ℤ)))

end

end A248114.P13232952679345603851

/-!
# A248115: Number of subsets of {1,...,n} containing n and having at least one set partition into 6 blocks with equal element sum.

The programs for A248115, there is no canonical definition to state claims against.
-/

/-! ## A248115.P1182237072989727411

`A248112(A075354(n+11))`
-/

namespace A248115.P1182237072989727411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248112 (A075354 (n + 11)).toNat

end

end A248115.P1182237072989727411

/-! ## A248115.P7970831823127458736

`A332809(A178922(n))+n`
-/

namespace A248115.P7970831823127458736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332809 (A178922 n).toNat + (n : ℤ)

end

end A248115.P7970831823127458736

/-!
# A248116: Number of subsets of {1,...,n} containing n and having at least one set partition into 7 blocks with equal element sum.

The programs for A248116, there is no canonical definition to state claims against.
-/

/-! ## A248116.P9174374841364421334

`A276875(A005558(n))+n`
-/

namespace A248116.P9174374841364421334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276875 (A005558 n).toNat + (n : ℤ)

end

end A248116.P9174374841364421334

/-! ## A248116.P961390042266107635

`A001462(A145511(n+1)+A129556(n+1))`
-/

namespace A248116.P961390042266107635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A145511 (n + 1) + A129556 (n + 1)).toNat

end

end A248116.P961390042266107635

/-!
# A248118: Number of subsets of {1,...,n} containing n and having at least one set partition into 9 blocks with equal element sum.

The programs for A248118, there is no canonical definition to state claims against.
-/

/-! ## A248118.P16117736434094366278

`A304497(A061706(n))+A135094(A004526(3*n))`
-/

namespace A248118.P16117736434094366278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304497 (A061706 n).toNat + A135094 (A004526 (3 * n)).toNat

end

end A248118.P16117736434094366278

/-! ## A248118.P13741310598449211342

`A317988(A318002(n)+3)+A135094(A004526(3*n))`
-/

namespace A248118.P13741310598449211342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317988 (A318002 n + 3).toNat + A135094 (A004526 (3 * n)).toNat

end

end A248118.P13741310598449211342

/-!
# A248119: Number of subsets of {1,...,n} containing n and having at least one set partition into 10 blocks with equal element sum.

The programs for A248119, there is no canonical definition to state claims against.
-/

/-! ## A248119.P274529172684094382

`A252281(2^n-n%2)-A000166(n)`
-/

namespace A248119.P274529172684094382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252281 (2 ^ n - n % 2) - A000166 n

end

end A248119.P274529172684094382

/-! ## A248119.P6988368559981216329

`A239017(A000079(n))-A103507(n+1)`
-/

namespace A248119.P6988368559981216329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239017 (A000079 n).toNat - A103507 (n + 1)

end

end A248119.P6988368559981216329

/-!
# A248120: Triangle read by rows: Lagrange (compositional) inversion of a function in terms of the coefficients of the Taylor series expansion of its reciprocal, scaled version of A248927, n >= 1, k = 1..A000041(n-1).

The programs for A248120, there is no canonical definition to state claims against.
-/

/-! ## A248120.P6207484702799149962

`(ceil(log2(A037014(n+2)))+1)*A248927(n+1)`
-/

namespace A248120.P6207484702799149962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈Real.logb 2 (A037014 (n + 2) : ℝ)⌉ + 1) * A248927 (n + 1)

end

end A248120.P6207484702799149962

/-! ## A248120.P15009461361455623345

`A248927(n+1)*A252736(A344122(n+2))`
-/

namespace A248120.P15009461361455623345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248927 (n + 1) * A252736 (A344122 (n + 2)).toNat

end

end A248120.P15009461361455623345

/-! ## A248120.P13145687720654689648

`A055302(A194251(n+1)+A032559(n+1))`
-/

namespace A248120.P13145687720654689648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055302 (A194251 (n + 1) + A032559 (n + 1)).toNat

end

end A248120.P13145687720654689648

/-! ## A248120.P11763554475433442739

`A221914(A185139(n+1))`
-/

namespace A248120.P11763554475433442739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221914 (A185139 (n + 1)).toNat

end

end A248120.P11763554475433442739

/-!
# A248121: a(n) = floor(1 / (1/n - Pi^2/6 + Sum_{h=1..n} 1/h^2)).

The programs for A248121, the canonical program `A248121.P15643120696981523922` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248121 has offset 1).

The definition of A248121 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248121.P10846528846753492338

`floor(2*(7/6+n)²)`
-/

namespace A248121.P10846528846753492338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((7 : ℚ) / 6 + (n : ℚ)) ^ 2⌋

end

end A248121.P10846528846753492338

namespace A248121

/-- `floor(2*(7/6+n)²)` -/
def P10846528846753492338.Spec : Prop :=
  ∀ n, P10846528846753492338.a n = A248121 (n + 1)

end A248121

/-! ## A248121.P2132029456549680472

`∑[a(n-3)+12]` with `a(0)=2, a(1)=7, a(2)=11`
-/

namespace A248121.P2132029456549680472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 7, 11] fun n f1 =>
  f1 (n - 3) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248121.P2132029456549680472

namespace A248121

/-- `∑[a(n-3)+12]` -/
def P2132029456549680472.Spec : Prop :=
  ∀ n, (P2132029456549680472.a n : ℤ) = A248121 (n + 1)

end A248121

/-! ## A248121.P10835231594114071411

`∑[record[xor(3, n)]-char[3*n]]`
-/

namespace A248121.P10835231594114071411
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248121.P10835231594114071411

namespace A248121

/-- `∑[record[xor(3, n)]-char[3*n]]` -/
def P10835231594114071411.Spec : Prop :=
  ∀ n, P10835231594114071411.a n = A248121 (n + 1)

end A248121

/-! ## A248121.P8049271168502104656

`∑[∑[floor(a(n-3))]]` with `a(0)=2, a(1)=5, a(2)=4, a(3)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A248121.P8049271168502104656
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 4, 3] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248121.P8049271168502104656

namespace A248121

/-- `∑[∑[floor(a(n-3))]]` -/
def P8049271168502104656.Spec : Prop :=
  ∀ n, (P8049271168502104656.a n : ℤ) = A248121 (n + 1)

end A248121

/-! ## A248121.P11782471727337219522

`∑[∑[a(n-3)%6]]` with `a(0)=2, a(1)=5, a(2)=4, a(3)=3`
-/

namespace A248121.P11782471727337219522
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 4, 3] fun n f2 =>
  f2 (n - 3) % 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248121.P11782471727337219522

namespace A248121

/-- `∑[∑[a(n-3)%6]]` -/
def P11782471727337219522.Spec : Prop :=
  ∀ n, (P11782471727337219522.a n : ℤ) = A248121 (n + 1)

end A248121

/-! ## A248121.P4808817030125283002

`∑[n²%3]+2*(n+1)²`
-/

namespace A248121.P4808817030125283002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * (n + 1) ^ 2

end

end A248121.P4808817030125283002

namespace A248121

/-- `∑[n²%3]+2*(n+1)²` -/
def P4808817030125283002.Spec : Prop :=
  ∀ n, (P4808817030125283002.a n : ℤ) = A248121 (n + 1)

end A248121

/-! ## A248121.P2219623159016989832

`∑[record[xor(3, n)]]-ceil((n+1)/3)`
-/

namespace A248121.P2219623159016989832
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ⌈(n + 1 : ℚ) / 3⌉

end

end A248121.P2219623159016989832

namespace A248121

/-- `∑[record[xor(3, n)]]-ceil((n+1)/3)` -/
def P2219623159016989832.Spec : Prop :=
  ∀ n, P2219623159016989832.a n = A248121 (n + 1)

end A248121

/-! ## A248121.P3031225736131098914

`∑[4*(n+1)]-2-comp[record[xor(3, n)]]`
-/

namespace A248121.P3031225736131098914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2 - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

end

end A248121.P3031225736131098914

namespace A248121

/-- `∑[4*(n+1)]-2-comp[record[xor(3, n)]]` -/
def P3031225736131098914.Spec : Prop :=
  ∀ n, P3031225736131098914.a n = A248121 (n + 1)

end A248121

/-! ## A248121.P15643120696981523922

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=2, a(1)=9, a(2)=20, a(3)=34, a(4)=53`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A248121

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P15643120696981523922.Spec : Prop :=
  ∀ n, P15643120696981523922.a n = A248121 (n + 1)

theorem P15643120696981523922.correct : P15643120696981523922.Spec := by
  intro n
  simp only [A248121, Nat.add_sub_cancel]

end A248121

/-! ## A248121.P12494948074276513491

`A090288(n)-A004773(n)`
-/

namespace A248121.P12494948074276513491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090288 n - A004773 n

end

end A248121.P12494948074276513491

namespace A248121

/-- `A090288(n)-A004773(n)` -/
def P12494948074276513491.Spec : Prop :=
  ∀ n, P12494948074276513491.a n = A248121 (n + 1)

end A248121

/-! ## A248121.P1565141058028186420

`A069894(n)-A264938(n)`
-/

namespace A248121.P1565141058028186420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069894 n - A264938 n

end

end A248121.P1565141058028186420

namespace A248121

/-- `A069894(n)-A264938(n)` -/
def P1565141058028186420.Spec : Prop :=
  ∀ n, P1565141058028186420.a n = A248121 (n + 1)

end A248121

/-! ## A248121.P10204768294890520451

`A047537(n+1)+A001844(n)`
-/

namespace A248121.P10204768294890520451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047537 (n + 1) + A001844 n

end

end A248121.P10204768294890520451

namespace A248121

/-- `A047537(n+1)+A001844(n)` -/
def P10204768294890520451.Spec : Prop :=
  ∀ n, P10204768294890520451.a n = A248121 (n + 1)

end A248121

/-! ## A248121.P6272583663451225277

`A236535(n+1)+A046092(n)`
-/

namespace A248121.P6272583663451225277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236535 (n + 1) + A046092 n

end

end A248121.P6272583663451225277

namespace A248121

/-- `A236535(n+1)+A046092(n)` -/
def P6272583663451225277.Spec : Prop :=
  ∀ n, P6272583663451225277.a n = A248121 (n + 1)

end A248121

/-! ## A248121.P14879027941131456741

`A363080(n)+A047526(n+1)`
-/

namespace A248121.P14879027941131456741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363080 n + A047526 (n + 1)

end

end A248121.P14879027941131456741

namespace A248121

/-- `A363080(n)+A047526(n+1)` -/
def P14879027941131456741.Spec : Prop :=
  ∀ n, P14879027941131456741.a n = A248121 (n + 1)

end A248121

/-! ## A248121.P962789580301745038

`A014105(n+1)-A008620(n)`
-/

namespace A248121.P962789580301745038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 (n + 1) - A008620 n

end

end A248121.P962789580301745038

namespace A248121

/-- `A014105(n+1)-A008620(n)` -/
def P962789580301745038.Spec : Prop :=
  ∀ n, P962789580301745038.a n = A248121 (n + 1)

end A248121

/-! ## A248121.P3171482297116782538

`A287057(n+1)-A051274(n)`
-/

namespace A248121.P3171482297116782538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287057 (n + 1) - A051274 n

end

end A248121.P3171482297116782538

namespace A248121

/-- `A287057(n+1)-A051274(n)` -/
def P3171482297116782538.Spec : Prop :=
  ∀ n, P3171482297116782538.a n = A248121 (n + 1)

end A248121

/-! ## A248121.P14251214381660246175

`A090288(n)-(A002264(n)+n)`
-/

namespace A248121.P14251214381660246175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090288 n - (A002264 n + (n : ℤ))

end

end A248121.P14251214381660246175

namespace A248121

/-- `A090288(n)-(A002264(n)+n)` -/
def P14251214381660246175.Spec : Prop :=
  ∀ n, P14251214381660246175.a n = A248121 (n + 1)

end A248121

/-! ## A248121.P13298406525827462822

`∑[A004767(n)]-(A002264(n)+1)`
-/

namespace A248121.P13298406525827462822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A002264 n + 1)

end

end A248121.P13298406525827462822

namespace A248121

/-- `∑[A004767(n)]-(A002264(n)+1)` -/
def P13298406525827462822.Spec : Prop :=
  ∀ n, P13298406525827462822.a n = A248121 (n + 1)

end A248121

/-! ## A248121.P16171560624474386437

`A046092(n)+∑[A011655(n)+2]`
-/

namespace A248121.P16171560624474386437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248121.P16171560624474386437

namespace A248121

/-- `A046092(n)+∑[A011655(n)+2]` -/
def P16171560624474386437.Spec : Prop :=
  ∀ n, P16171560624474386437.a n = A248121 (n + 1)

end A248121

/-! ## A248121.P16486889646214913292

`A091823(n+1)-A047292(n+1)`
-/

namespace A248121.P16486889646214913292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091823 (n + 1) - A047292 (n + 1)

end

end A248121.P16486889646214913292

namespace A248121

/-- `A091823(n+1)-A047292(n+1)` -/
def P16486889646214913292.Spec : Prop :=
  ∀ n, P16486889646214913292.a n = A248121 (n + 1)

end A248121

/-!
# A248122: Number of strings of length n over a three-letter alphabet that begin with a nontrivial palindrome.

The programs for A248122, the canonical program `A248122.P5588578427114107785` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248122 has offset 0).

The definition of A248122 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A248122.P5588578427114107785

`3*a(n-1)+3^ceil(n/2)-a(ceil(n/2))` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A248122

/-- `3*a(n-1)+3^ceil(n/2)-a(ceil(n/2))` -/
def P5588578427114107785.Spec : Prop :=
  ∀ n, P5588578427114107785.a n = (A248122 n : ℚ)

end A248122

/-! ## A248122.P287551244040710234

`A342237(∑[n+2]-1)`
-/

namespace A248122.P287551244040710234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342237 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A248122.P287551244040710234

namespace A248122

/-- `A342237(∑[n+2]-1)` -/
def P287551244040710234.Spec : Prop :=
  ∀ n, P287551244040710234.a n = A248122 n

end A248122

/-! ## A248122.P2009501932056878857

`lcm(3, A342237(A034856(n+1)))`
-/

namespace A248122.P2009501932056878857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A342237 (A034856 (n + 1)).toNat)

end

end A248122.P2009501932056878857

namespace A248122

/-- `lcm(3, A342237(A034856(n+1)))` -/
def P2009501932056878857.Spec : Prop :=
  ∀ n, (P2009501932056878857.a n : ℤ) = A248122 n

end A248122

/-! ## A248122.P3096747593859376824

`A057427(n)*A342237(A034856(n+1))`
-/

namespace A248122.P3096747593859376824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A342237 (A034856 (n + 1)).toNat

end

end A248122.P3096747593859376824

namespace A248122

/-- `A057427(n)*A342237(A034856(n+1))` -/
def P3096747593859376824.Spec : Prop :=
  ∀ n, P3096747593859376824.a n = A248122 n

end A248122

/-! ## A248122.P884838936705057069

`A342237(A034856(n+1))%A000302(n)`
-/

namespace A248122.P884838936705057069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342237 (A034856 (n + 1)).toNat) (A000302 n)

end

end A248122.P884838936705057069

namespace A248122

/-- `A342237(A034856(n+1))%A000302(n)` -/
def P884838936705057069.Spec : Prop :=
  ∀ n, P884838936705057069.a n = A248122 n

end A248122

/-! ## A248122.P6981977130053196857

`A007318(∑[n])*A342237(A034856(n+1))`
-/

namespace A248122.P6981977130053196857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A342237 (A034856 (n + 1)).toNat

end

end A248122.P6981977130053196857

namespace A248122

/-- `A007318(∑[n])*A342237(A034856(n+1))` -/
def P6981977130053196857.Spec : Prop :=
  ∀ n, P6981977130053196857.a n = A248122 n

end A248122

/-! ## A248122.P18208433369545980942

`A000034(2*n)*A342237(A034856(n+1))`
-/

namespace A248122.P18208433369545980942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A342237 (A034856 (n + 1)).toNat

end

end A248122.P18208433369545980942

namespace A248122

/-- `A000034(2*n)*A342237(A034856(n+1))` -/
def P18208433369545980942.Spec : Prop :=
  ∀ n, P18208433369545980942.a n = A248122 n

end A248122

/-! ## A248122.P9628718645257146394

`or(A100073(n+1), A342237(A034856(n+1)))`
-/

namespace A248122.P9628718645257146394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A100073 (n + 1)) (A342237 (A034856 (n + 1)).toNat)

end

end A248122.P9628718645257146394

namespace A248122

/-- `or(A100073(n+1), A342237(A034856(n+1)))` -/
def P9628718645257146394.Spec : Prop :=
  ∀ n, P9628718645257146394.a n = A248122 n

end A248122

/-! ## A248122.P14474737178616220644

`A057237(2*(n+1))*A342237(A034856(n+1))`
-/

namespace A248122.P14474737178616220644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (2 * (n + 1)) * A342237 (A034856 (n + 1)).toNat

end

end A248122.P14474737178616220644

namespace A248122

/-- `A057237(2*(n+1))*A342237(A034856(n+1))` -/
def P14474737178616220644.Spec : Prop :=
  ∀ n, P14474737178616220644.a n = A248122 n

end A248122

/-! ## A248122.P17402333443444969523

`A008966(A000040(n+1))*A342237(A034856(n+1))`
-/

namespace A248122.P17402333443444969523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A000040 (n + 1)).toNat * A342237 (A034856 (n + 1)).toNat

end

end A248122.P17402333443444969523

namespace A248122

/-- `A008966(A000040(n+1))*A342237(A034856(n+1))` -/
def P17402333443444969523.Spec : Prop :=
  ∀ n, P17402333443444969523.a n = A248122 n

end A248122

/-!
# A248126: a(n) = n^2 with each digit repeated.

The programs for A248126, the canonical program `A248126.P4372670379426275761` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248126 has offset 1).

The definition of A248126 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248126.P4372670379426275761

`A338754((n+1)²)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A248126

/-- `A338754((n+1)²)` -/
def P4372670379426275761.Spec : Prop :=
  ∀ n, P4372670379426275761.a n = A248126 (n + 1)

theorem P4372670379426275761.correct : P4372670379426275761.Spec := by
  intro n
  simp only [A248126, Nat.add_sub_cancel]

end A248126

/-! ## A248126.P8431814975478297355

`record[A338754((1-n)²)]`
-/

namespace A248126.P8431814975478297355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338754 ((1 - (n : ℤ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248126.P8431814975478297355

namespace A248126

/-- `record[A338754((1-n)²)]` -/
def P8431814975478297355.Spec : Prop :=
  ∀ n, P8431814975478297355.a n = A248126 (n + 1)

end A248126

/-! ## A248126.P2385270912697750833

`11*A051022((n+1)²)`
-/

namespace A248126.P2385270912697750833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A051022 ((n + 1) ^ 2)

end

end A248126.P2385270912697750833

namespace A248126

/-- `11*A051022((n+1)²)` -/
def P2385270912697750833.Spec : Prop :=
  ∀ n, P2385270912697750833.a n = A248126 (n + 1)

theorem P2385270912697750833.correct : P2385270912697750833.Spec := by
  intro n
  simp only [A248126, Nat.add_sub_cancel, A248126.P2385270912697750833.a, A248126.P4372670379426275761.a, A051022, A051022.P12829567687202286752.a, A338754, A338754.P1922863961189702143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A248126

/-! ## A248126.P7582449577759685036

`xor(1, xor(1, A338754((n+1)*(n+1))))`
-/

namespace A248126.P7582449577759685036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A338754 ((n + 1) * (n + 1))))

end

end A248126.P7582449577759685036

namespace A248126

/-- `xor(1, xor(1, A338754((n+1)*(n+1))))` -/
def P7582449577759685036.Spec : Prop :=
  ∀ n, P7582449577759685036.a n = A248126 (n + 1)

end A248126

/-! ## A248126.P10852314660842515104

`A007318(∑[n])*A338754((n+1)*(n+1))`
-/

namespace A248126.P10852314660842515104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A338754 ((n + 1) * (n + 1))

end

end A248126.P10852314660842515104

namespace A248126

/-- `A007318(∑[n])*A338754((n+1)*(n+1))` -/
def P10852314660842515104.Spec : Prop :=
  ∀ n, P10852314660842515104.a n = A248126 (n + 1)

end A248126

/-!
# A248129: The limiting sequence of terms preceding the 0's in A248128.

The programs for A248129, there is no canonical definition to state claims against.
-/

/-! ## A248129.P4292149546366367244

`3*A248130(n)`
-/

namespace A248129.P4292149546366367244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A248130 n

end

end A248129.P4292149546366367244

/-! ## A248129.P15151065249210251692

`A008585(lcm((-1)^∑{e}[n+1, #], A248130(n)))`
-/

namespace A248129.P15151065249210251692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (Int.lcm ((-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) (A248130 n))

end

end A248129.P15151065249210251692

/-! ## A248129.P13407800512262769627

`A008585(A248130(n)/A007318(C(2, n)))`
-/

namespace A248129.P13407800512262769627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (SequenceMachineLib.roundAway ((A248130 n : ℚ) / (A007318 (Nat.choose 2 n) : ℚ))).toNat

end

end A248129.P13407800512262769627

/-! ## A248129.P16001085519573326093

`A008585(A248130(n)+n)-A008585(n)`
-/

namespace A248129.P16001085519573326093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A248130 n + (n : ℤ)).toNat - A008585 n

end

end A248129.P16001085519573326093

/-! ## A248129.P1700534923138170938

`A008588(A248130(n)/A007318(C(2, n)))/2`
-/

namespace A248129.P1700534923138170938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008588 (SequenceMachineLib.roundAway ((A248130 n : ℚ) / (A007318 (Nat.choose 2 n) : ℚ))).toNat : ℚ) / 2

end

end A248129.P1700534923138170938

/-!
# A248130: Limiting sequence of digits preceding the 0's in A248128.

The programs for A248130, there is no canonical definition to state claims against.
-/

/-! ## A248130.P9241381740390263138

`A248129(n)/3`
-/

namespace A248130.P9241381740390263138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248129 n : ℚ) / 3

end

end A248130.P9241381740390263138

/-! ## A248130.P5181642951150969252

`A002264(A248129(n))`
-/

namespace A248130.P5181642951150969252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A248129 n).toNat

end

end A248130.P5181642951150969252

/-! ## A248130.P12899967564819380508

`A008611(A248129(n)+1)`
-/

namespace A248130.P12899967564819380508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A248129 n + 1).toNat

end

end A248130.P12899967564819380508

/-! ## A248130.P5426110047834900576

`A062299(A248129(n)+1)`
-/

namespace A248130.P5426110047834900576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062299 (A248129 n + 1).toNat

end

end A248130.P5426110047834900576

/-! ## A248130.P4636483665203846853

`A115273(A248129(n)+1)`
-/

namespace A248130.P4636483665203846853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115273 (A248129 n + 1).toNat

end

end A248130.P4636483665203846853

/-! ## A248130.P8729456980939911260

`A008615(2*A248129(n))`
-/

namespace A248130.P8729456980939911260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (2 * A248129 n).toNat

end

end A248130.P8729456980939911260

/-! ## A248130.P3060878461361430182

`A112689(2*A248129(n))`
-/

namespace A248130.P3060878461361430182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (2 * A248129 n).toNat

end

end A248130.P3060878461361430182

/-! ## A248130.P1816520394835907463

`A343609(3*A248129(n))`
-/

namespace A248130.P1816520394835907463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (3 * A248129 n).toNat

end

end A248130.P1816520394835907463

/-! ## A248130.P9125386428674834639

`A064459(4*A248129(n))`
-/

namespace A248130.P9125386428674834639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064459 (4 * A248129 n).toNat

end

end A248130.P9125386428674834639

/-! ## A248130.P9688203139945754366

`A008611(xor(1, A248129(n)))`
-/

namespace A248130.P9688203139945754366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (Int.xor 1 (A248129 n)).toNat

end

end A248130.P9688203139945754366

/-!
# A248132: Integer part of square root of A010813(n) = n^25.

The programs for A248132, the canonical program `A248132.P9400661501512866787` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248132 has offset 0).

The definition of A248132 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A248132.P9400661501512866787

`floor(sqrt(n^25))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A248132

/-- `floor(sqrt(n^25))` -/
def P9400661501512866787.Spec : Prop :=
  ∀ n, (P9400661501512866787.a n : ℤ) = A248132 n

theorem P9400661501512866787.correct : P9400661501512866787.Spec := by
  intro n
  simp only [A248132]

end A248132

/-! ## A248132.P3657338846488489048

`ceil(sqrt(A010813(n)+1))-1`
-/

namespace A248132.P3657338846488489048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A010813 n + 1 : ℝ)⌉ - 1

end

end A248132.P3657338846488489048

namespace A248132

/-- `ceil(sqrt(A010813(n)+1))-1` -/
def P3657338846488489048.Spec : Prop :=
  ∀ n, P3657338846488489048.a n = A248132 n

end A248132

/-!
# A248135: Nonprime numbers k that divide the sum of remainders of k' mod m, for m from 1 to k', where k' is the arithmetic derivative of k.

The programs for A248135, there is no canonical definition to state claims against.
-/

/-! ## A248135.P2171012100244504367

`lcm(A243929(A185341(3*n+4)), A311356(3*n))`
-/

namespace A248135.P2171012100244504367
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A243929 (A185341 (3 * n + 4)).toNat) (A311356 (3 * n))

end

end A248135.P2171012100244504367

/-!
# A248138: Consider the partition of consecutive evil numbers (A001969) into minimal blocks such that concatenation of numbers in each block is an odious number (A000069). Sequence lists numbers of evil numbers in each block.

The programs for A248138, there is no canonical definition to state claims against.
-/

/-! ## A248138.P15498022292165042455

`A123679(A051004(n+1))+2`
-/

namespace A248138.P15498022292165042455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123679 (A051004 (n + 1)).toNat + 2

end

end A248138.P15498022292165042455

/-! ## A248138.P5403256941315738668

`A164996(A007827(n))+A079978(n)`
-/

namespace A248138.P5403256941315738668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164996 (A007827 n).toNat + A079978 n

end

end A248138.P5403256941315738668

/-! ## A248138.P9154694774067257075

`A279387(2*n+5)+A187447(A000045(n))`
-/

namespace A248138.P9154694774067257075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279387 (2 * n + 5) + A187447 (A000045 n).toNat

end

end A248138.P9154694774067257075

/-! ## A248138.P12766703690491050581

`∑{e}[A215504(∑{e}[A099970(n)+1, #])+1, #]`
-/

namespace A248138.P12766703690491050581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099970 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215504 (∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A248138.P12766703690491050581

/-! ## A248138.P11331490763419371521

`A255825(A250478(C(2, C(3, n²))+n))+1`
-/

namespace A248138.P11331490763419371521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255825 (A250478 (Nat.choose 2 (Nat.choose 3 (n ^ 2)) + n)).toNat + 1

end

end A248138.P11331490763419371521

/-!
# A248141: Table read by rows: n-th row contains all subsets of consecutive numbers of 1..n.

The programs for A248141, there is no canonical definition to state claims against.
-/

/-! ## A248141.P15781201140571108419

`A000720(A248147(n+1))`
-/

namespace A248141.P15781201140571108419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A248147 (n + 1)).toNat

end

end A248141.P15781201140571108419

/-! ## A248141.P14493264671074139265

`A055396(A248147(n+1)²)`
-/

namespace A248141.P14493264671074139265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A248147 (n + 1) ^ 2).toNat

end

end A248141.P14493264671074139265

/-! ## A248141.P1357967520343806045

`A289508(A248147(n+1)²)`
-/

namespace A248141.P1357967520343806045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A248147 (n + 1) ^ 2).toNat

end

end A248141.P1357967520343806045

/-! ## A248141.P12417923259713130037

`A230980(A248147(n+1)-1)+1`
-/

namespace A248141.P12417923259713130037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A248147 (n + 1) - 1).toNat + 1

end

end A248141.P12417923259713130037

/-! ## A248141.P14613320933234753541

`A049084(A248147(n+1)%A017233(n))`
-/

namespace A248141.P14613320933234753541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (Int.tmod (A248147 (n + 1)) (A017233 n)).toNat

end

end A248141.P14613320933234753541

/-! ## A248141.P13023034765739669582

`A049084(A248147(n+1))%A058794(n)`
-/

namespace A248141.P13023034765739669582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049084 (A248147 (n + 1)).toNat) (A058794 n)

end

end A248141.P13023034765739669582

/-! ## A248141.P18442562186270291296

`A230980(A248147(n+1))%A000040(n+1)`
-/

namespace A248141.P18442562186270291296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230980 (A248147 (n + 1)).toNat) (A000040 (n + 1))

end

end A248141.P18442562186270291296

/-!
# A248145: Consider the partition of the positive odd integers into minimal blocks such that concatenation of numbers in each block is a number of the form 3^k*prime, k>=0. Sequence lists numbers of odd integers in the blocks.

The programs for A248145, there is no canonical definition to state claims against.
-/

/-! ## A248145.P720808075380294506

`gcd(A033308(n), A159325(n+1))`
-/

namespace A248145.P720808075380294506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033308 n) (A159325 (n + 1))

end

end A248145.P720808075380294506

/-! ## A248145.P9348884841861512975

`A152735(A152735(n+4)+A000326(n))`
-/

namespace A248145.P9348884841861512975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152735 (A152735 (n + 4) + A000326 n).toNat

end

end A248145.P9348884841861512975

/-! ## A248145.P13232781757313799027

`A333224(gcd(A334299(2*n+3), A357634(3*n+5)))`
-/

namespace A248145.P13232781757313799027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333224 (Int.gcd (A334299 (2 * n + 3)) (A357634 (3 * n + 5)))

end

end A248145.P13232781757313799027

/-! ## A248145.P12303704404521728680

`gcd(2-n, A094267(A122622(n+1)))`
-/

namespace A248145.P12303704404521728680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - (n : ℤ)) (A094267 (A122622 (n + 1)).toNat)

end

end A248145.P12303704404521728680

/-! ## A248145.P8550186146621006795

`gcd(A016737(A066739(n+4)), A296030(n+1))`
-/

namespace A248145.P8550186146621006795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016737 (A066739 (n + 4)).toNat) (A296030 (n + 1))

end

end A248145.P8550186146621006795

/-!
# A248147: Table read by rows: n-th row contains all consecutive subsets of the first n primes in their natural order.

The programs for A248147, there is no canonical definition to state claims against.
-/

/-! ## A248147.P5868913452137900516

`A000040(A248141(n+1))`
-/

namespace A248147.P5868913452137900516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A248141 (n + 1)).toNat

end

end A248147.P5868913452137900516

/-! ## A248147.P7887164128414582074

`A008578(A248141(n+1)+1)`
-/

namespace A248147.P7887164128414582074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A248141 (n + 1) + 1).toNat

end

end A248147.P7887164128414582074

/-! ## A248147.P7279881625627409210

`A015919(A248141(n+1)+1)`
-/

namespace A248147.P7279881625627409210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (A248141 (n + 1) + 1).toNat

end

end A248147.P7279881625627409210

/-! ## A248147.P16578410366923064782

`A248164(A248141(n+1)+A000292(A248141(n+1)))`
-/

namespace A248147.P16578410366923064782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248164 (A248141 (n + 1) + A000292 (A248141 (n + 1)).toNat).toNat

end

end A248147.P16578410366923064782

/-! ## A248147.P8079611315407786246

`A329607(2^A248141(n+1))`
-/

namespace A248147.P8079611315407786246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329607 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A248141 (n + 1) : ℤ))).toNat

end

end A248147.P8079611315407786246

/-! ## A248147.P8544960226965328693

`A028815(A248141(n+1))-A078572(A044348(n+1))`
-/

namespace A248147.P8544960226965328693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (A248141 (n + 1)).toNat - A078572 (A044348 (n + 1)).toNat

end

end A248147.P8544960226965328693

/-! ## A248147.P14819979023116551727

`A000041(A248141(n+1)+A000688(A301918(n+1)))`
-/

namespace A248147.P14819979023116551727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A248141 (n + 1) + A000688 (A301918 (n + 1)).toNat).toNat

end

end A248147.P14819979023116551727

/-!
# A248148: Least k such that r - sum{1/Binomial[2h, h], h = 0..k} < 1/3^n, where r = 1/3 + 2*Pi/Sqrt(243).

The programs for A248148, there is no canonical definition to state claims against.
-/

/-! ## A248148.P186439502102700722

`ceil(A046691(4*n+3)/A233583(10*n+13))`
-/

namespace A248148.P186439502102700722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A046691 (4 * n + 3) : ℚ) / (A233583 (10 * n + 13) : ℚ)⌉

end

end A248148.P186439502102700722

/-! ## A248148.P15634987691831050556

`ceil(A055998(4*n+3)/A233583(10*n+13))`
-/

namespace A248148.P15634987691831050556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A055998 (4 * n + 3) : ℚ) / (A233583 (10 * n + 13) : ℚ)⌉

end

end A248148.P15634987691831050556

/-! ## A248148.P7101999495755738187

`A095861(A008574(∑[A253671(n+4)]))`
-/

namespace A248148.P7101999495755738187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253671 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095861 (A008574 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A248148.P7101999495755738187

/-! ## A248148.P16270058160972917451

`A259361(A344421(n+1)+3*(n+1)+n)`
-/

namespace A248148.P16270058160972917451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A344421 (n + 1) + (3 * (n + 1) + n : ℤ)).toNat

end

end A248148.P16270058160972917451

/-!
# A248149: Numbers k such that A248148(k+1) = A248148(k).

The programs for A248149, there is no canonical definition to state claims against.
-/

/-! ## A248149.P5542253058087682091

`A003056(∑[∑[33-A003056(n+33)]])`
-/

namespace A248149.P5542253058087682091
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  33 - A003056 (n + 33)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A248149.P5542253058087682091

/-! ## A248149.P8200484160232564926

`A003056(∑[2*A014612(3*n+2)])`
-/

namespace A248149.P8200484160232564926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014612 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A248149.P8200484160232564926

/-! ## A248149.P342204381685457203

`A003056(A024206(7*n+9)+A007918(8*n))`
-/

namespace A248149.P342204381685457203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A024206 (7 * n + 9) + A007918 (8 * n)).toNat

end

end A248149.P342204381685457203

/-! ## A248149.P11359973187586548435

`A003056(A003215(2*(n+2))-A003331(3*n+5))`
-/

namespace A248149.P11359973187586548435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A003215 (2 * (n + 2)) - A003331 (3 * n + 5)).toNat

end

end A248149.P11359973187586548435

/-!
# A248150: Numbers whose sum of divisors (A000203) is divisible by 4.

The programs for A248150, the canonical program `A248150.P14883232548873335720` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248150 has offset 1).

The definition of A248150 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248150.P14883232548873335720

`lt[A105824(n+1), 1]+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A248150

/-- `lt[A105824(n+1), 1]+1` -/
def P14883232548873335720.Spec : Prop :=
  ∀ n, (P14883232548873335720.a n : ℤ) = A248150 (n + 1)

theorem P14883232548873335720.correct : P14883232548873335720.Spec := by
  intro n
  simp only [A248150, Nat.add_sub_cancel]

end A248150

/-! ## A248150.P7761729006930781209

`lt[1, A336937(n+1)]+1`
-/

namespace A248150.P7761729006930781209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336937 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A248150.P7761729006930781209

namespace A248150

/-- `lt[1, A336937(n+1)]+1` -/
def P7761729006930781209.Spec : Prop :=
  ∀ n, (P7761729006930781209.a n : ℤ) = A248150 (n + 1)

end A248150

/-! ## A248150.P10348361842998526397

`eq[2, A105824(n+2)+2]+2`
-/

namespace A248150.P10348361842998526397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105824 (n + 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A248150.P10348361842998526397

namespace A248150

/-- `eq[2, A105824(n+2)+2]+2` -/
def P10348361842998526397.Spec : Prop :=
  ∀ n, (P10348361842998526397.a n : ℤ) = A248150 (n + 1)

end A248150

/-! ## A248150.P874616705758704891

`lt[1, A324904(2*(n+1))]+1`
-/

namespace A248150.P874616705758704891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324904 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A248150.P874616705758704891

namespace A248150

/-- `lt[1, A324904(2*(n+1))]+1` -/
def P874616705758704891.Spec : Prop :=
  ∀ n, (P874616705758704891.a n : ℤ) = A248150 (n + 1)

end A248150

/-! ## A248150.P14252629154244255849

`eq[0, A000203(n+1)%4]+1`
-/

namespace A248150.P14252629154244255849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A248150.P14252629154244255849

namespace A248150

/-- `eq[0, A000203(n+1)%4]+1` -/
def P14252629154244255849.Spec : Prop :=
  ∀ n, (P14252629154244255849.a n : ℤ) = A248150 (n + 1)

end A248150

/-! ## A248150.P3937326171715503776

`lt[2, gcd(4, A000203(n*a(n-1)))]` with `a(0)=1`
-/

namespace A248150.P3937326171715503776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  Int.gcd 4 (A000203 (n * f2 (n - 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A248150.P3937326171715503776

namespace A248150

/-- `lt[2, gcd(4, A000203(n*a(n-1)))]` -/
def P3937326171715503776.Spec : Prop :=
  ∀ n, (P3937326171715503776.a n : ℤ) = A248150 (n + 1)

end A248150

/-! ## A248150.P9175645326084082784

`∪[A022544(n+1), A071011(n+1)]`
-/

namespace A248150.P9175645326084082784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A248150.P9175645326084082784

namespace A248150

/-- `∪[A022544(n+1), A071011(n+1)]` -/
def P9175645326084082784.Spec : Prop :=
  ∀ n, (P9175645326084082784.a n : ℤ) = A248150 (n + 1)

end A248150

/-! ## A248150.P5346438051700315534

`eq[3, and(3, A039653(n))]`
-/

namespace A248150.P5346438051700315534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A039653 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248150.P5346438051700315534

namespace A248150

/-- `eq[3, and(3, A039653(n))]` -/
def P5346438051700315534.Spec : Prop :=
  ∀ n, (P5346438051700315534.a n : ℤ) = A248150 (n + 1)

end A248150

/-! ## A248150.P7132820017112550146

`lt[2, A082903(n+1)]+1`
-/

namespace A248150.P7132820017112550146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082903 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A248150.P7132820017112550146

namespace A248150

/-- `lt[2, A082903(n+1)]+1` -/
def P7132820017112550146.Spec : Prop :=
  ∀ n, (P7132820017112550146.a n : ℤ) = A248150 (n + 1)

end A248150

/-! ## A248150.P1204610849420223752

`lt[2, A286357(n+1)]+1`
-/

namespace A248150.P1204610849420223752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286357 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A248150.P1204610849420223752

namespace A248150

/-- `lt[2, A286357(n+1)]+1` -/
def P1204610849420223752.Spec : Prop :=
  ∀ n, (P1204610849420223752.a n : ℤ) = A248150 (n + 1)

end A248150

/-! ## A248150.P2303191841612224350

`lt[(A088580(n+1)-1)%4, 1]+1`
-/

namespace A248150.P2303191841612224350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088580 (n + 1) - 1) 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A248150.P2303191841612224350

namespace A248150

/-- `lt[(A088580(n+1)-1)%4, 1]+1` -/
def P2303191841612224350.Spec : Prop :=
  ∀ n, (P2303191841612224350.a n : ℤ) = A248150 (n + 1)

theorem P2303191841612224350.correct : P2303191841612224350.Spec := by
  intro n
  simp only [A248150, Nat.add_sub_cancel, A248150.P2303191841612224350.f1, A248150.P2303191841612224350.f2, A248150.P2303191841612224350.a, A248150.P14883232548873335720.f1, A248150.P14883232548873335720.f2, A248150.P14883232548873335720.a, A088580, A088580.P3089093194242277422.a, A105824, A105824.P11327966413287728474.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A248150

/-! ## A248150.P5297909754148735199

`eq[1, A105824(A028310(n))+1]`
-/

namespace A248150.P5297909754148735199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105824 (A028310 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248150.P5297909754148735199

namespace A248150

/-- `eq[1, A105824(A028310(n))+1]` -/
def P5297909754148735199.Spec : Prop :=
  ∀ n, (P5297909754148735199.a n : ℤ) = A248150 (n + 1)

end A248150

/-! ## A248150.P2158068888098070124

`eq[1, A010873(A039653(n)+2)]`
-/

namespace A248150.P2158068888098070124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A039653 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248150.P2158068888098070124

namespace A248150

/-- `eq[1, A010873(A039653(n)+2)]` -/
def P2158068888098070124.Spec : Prop :=
  ∀ n, (P2158068888098070124.a n : ℤ) = A248150 (n + 1)

end A248150

/-! ## A248150.P6409166728886270358

`lt[1, A007814(A000593(n+1))]+1`
-/

namespace A248150.P6409166728886270358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000593 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A248150.P6409166728886270358

namespace A248150

/-- `lt[1, A007814(A000593(n+1))]+1` -/
def P6409166728886270358.Spec : Prop :=
  ∀ n, (P6409166728886270358.a n : ℤ) = A248150 (n + 1)

end A248150

/-! ## A248150.P6943077740080880612

`eq[1, A009531(A039653(n)+2)]`
-/

namespace A248150.P6943077740080880612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A039653 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248150.P6943077740080880612

namespace A248150

/-- `eq[1, A009531(A039653(n)+2)]` -/
def P6943077740080880612.Spec : Prop :=
  ∀ n, (P6943077740080880612.a n : ℤ) = A248150 (n + 1)

end A248150

/-! ## A248150.P2303958160935137013

`lt[2, A286357(A004277(n))]`
-/

namespace A248150.P2303958160935137013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286357 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A248150.P2303958160935137013

namespace A248150

/-- `lt[2, A286357(A004277(n))]` -/
def P2303958160935137013.Spec : Prop :=
  ∀ n, (P2303958160935137013.a n : ℤ) = A248150 (n + 1)

end A248150

/-! ## A248150.P10029556091194041066

`eq[1, A117569(A039653(n)+2)]`
-/

namespace A248150.P10029556091194041066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117569 (A039653 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248150.P10029556091194041066

namespace A248150

/-- `eq[1, A117569(A039653(n)+2)]` -/
def P10029556091194041066.Spec : Prop :=
  ∀ n, (P10029556091194041066.a n : ℤ) = A248150 (n + 1)

end A248150

/-! ## A248150.P9178796404979889106

`eq[2, A084099(A039653(n)+2)]`
-/

namespace A248150.P9178796404979889106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084099 (A039653 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248150.P9178796404979889106

namespace A248150

/-- `eq[2, A084099(A039653(n)+2)]` -/
def P9178796404979889106.Spec : Prop :=
  ∀ n, (P9178796404979889106.a n : ℤ) = A248150 (n + 1)

end A248150

/-! ## A248150.P4635851263926851567

`lt[1, A007814(A000203(n+1))]+1`
-/

namespace A248150.P4635851263926851567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A248150.P4635851263926851567

namespace A248150

/-- `lt[1, A007814(A000203(n+1))]+1` -/
def P4635851263926851567.Spec : Prop :=
  ∀ n, (P4635851263926851567.a n : ℤ) = A248150 (n + 1)

end A248150

/-! ## A248150.P16524220642900446005

`eq[2, A006519(A000203(n+1)+2)]+1`
-/

namespace A248150.P16524220642900446005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A000203 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A248150.P16524220642900446005

namespace A248150

/-- `eq[2, A006519(A000203(n+1)+2)]+1` -/
def P16524220642900446005.Spec : Prop :=
  ∀ n, (P16524220642900446005.a n : ℤ) = A248150 (n + 1)

end A248150

/-!
# A248151: Numbers n such that the sum of the divisors of n is not divisible by 4.

The programs for A248151, the canonical program `A248151.P5434586204826832359` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248151 has offset 1).

The definition of A248151 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248151.P5434586204826832359

`lt[val(∑{d}[n+1, #], 4)², 1]+1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A248151

/-- `lt[val(∑{d}[n+1, #], 4)², 1]+1` -/
def P5434586204826832359.Spec : Prop :=
  ∀ n, (P5434586204826832359.a n : ℤ) = A248151 (n + 1)

theorem P5434586204826832359.correct : P5434586204826832359.Spec := by
  intro n
  simp only [A248151, Nat.add_sub_cancel]

end A248151

/-! ## A248151.P7244137948633130270

`lt[A336937(n+1), 2]+1`
-/

namespace A248151.P7244137948633130270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336937 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A248151.P7244137948633130270

namespace A248151

/-- `lt[A336937(n+1), 2]+1` -/
def P7244137948633130270.Spec : Prop :=
  ∀ n, (P7244137948633130270.a n : ℤ) = A248151 (n + 1)

end A248151

/-! ## A248151.P5388354163733147616

`lt[A082903(n+1), 3]+1`
-/

namespace A248151.P5388354163733147616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082903 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A248151.P5388354163733147616

namespace A248151

/-- `lt[A082903(n+1), 3]+1` -/
def P5388354163733147616.Spec : Prop :=
  ∀ n, (P5388354163733147616.a n : ℤ) = A248151 (n + 1)

end A248151

/-! ## A248151.P1650536758377601407

`comp[A248150(n+1)-1]+1`
-/

namespace A248151.P1650536758377601407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248150 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A248151.P1650536758377601407

namespace A248151

/-- `comp[A248150(n+1)-1]+1` -/
def P1650536758377601407.Spec : Prop :=
  ∀ n, (P1650536758377601407.a n : ℤ) = A248151 (n + 1)

end A248151

/-! ## A248151.P1321854943119005314

`lt[log(A286357(n+1)), 1]+1`
-/

namespace A248151.P1321854943119005314
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A286357 (n + 1) : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A248151.P1321854943119005314

namespace A248151

/-- `lt[log(A286357(n+1)), 1]+1` -/
def P1321854943119005314.Spec : Prop :=
  ∀ n, (P1321854943119005314.a n : ℤ) = A248151 (n + 1)

end A248151

/-! ## A248151.P1930421002304064149

`lt[1, A105824(n+1)+1]+1`
-/

namespace A248151.P1930421002304064149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105824 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A248151.P1930421002304064149

namespace A248151

/-- `lt[1, A105824(n+1)+1]+1` -/
def P1930421002304064149.Spec : Prop :=
  ∀ n, (P1930421002304064149.a n : ℤ) = A248151 (n + 1)

end A248151

/-! ## A248151.P7676533087697091483

`lt[A324904(2*(n+1)), 2]+1`
-/

namespace A248151.P7676533087697091483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324904 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A248151.P7676533087697091483

namespace A248151

/-- `lt[A324904(2*(n+1)), 2]+1` -/
def P7676533087697091483.Spec : Prop :=
  ∀ n, (P7676533087697091483.a n : ℤ) = A248151 (n + 1)

end A248151

/-! ## A248151.P9474210029133045311

`eq[1, A326039(n+1)%2]+1`
-/

namespace A248151.P9474210029133045311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326039 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A248151.P9474210029133045311

namespace A248151

/-- `eq[1, A326039(n+1)%2]+1` -/
def P9474210029133045311.Spec : Prop :=
  ∀ n, (P9474210029133045311.a n : ℤ) = A248151 (n + 1)

end A248151

/-! ## A248151.P2343201734499867973

`lt[val(A000203(n+1), 2), 2]+1`
-/

namespace A248151.P2343201734499867973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000203 (n + 1)).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A248151.P2343201734499867973

namespace A248151

/-- `lt[val(A000203(n+1), 2), 2]+1` -/
def P2343201734499867973.Spec : Prop :=
  ∀ n, (P2343201734499867973.a n : ℤ) = A248151 (n + 1)

end A248151

/-! ## A248151.P9918357833155079444

`lt[A121358(∑{d}[n+1, #]+1), 3]+1`
-/

namespace A248151.P9918357833155079444
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121358 (∑ d ∈ Nat.divisors (f2 n), d + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A248151.P9918357833155079444

namespace A248151

/-- `lt[A121358(∑{d}[n+1, #]+1), 3]+1` -/
def P9918357833155079444.Spec : Prop :=
  ∀ n, (P9918357833155079444.a n : ℤ) = A248151 (n + 1)

end A248151

/-! ## A248151.P12390433752722390214

`eq[1, A160380(A004018(n))]`
-/

namespace A248151.P12390433752722390214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 (A004018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248151.P12390433752722390214

namespace A248151

/-- `eq[1, A160380(A004018(n))]` -/
def P12390433752722390214.Spec : Prop :=
  ∀ n, (P12390433752722390214.a n : ℤ) = A248151 (n + 1)

end A248151

/-! ## A248151.P2436990112277298615

`lt[A007814(A000593(n+1)), 2]+1`
-/

namespace A248151.P2436990112277298615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000593 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A248151.P2436990112277298615

namespace A248151

/-- `lt[A007814(A000593(n+1)), 2]+1` -/
def P2436990112277298615.Spec : Prop :=
  ∀ n, (P2436990112277298615.a n : ℤ) = A248151 (n + 1)

end A248151

/-! ## A248151.P12936919564544318436

`∪[A028982(n+1), A191217(n+1)]`
-/

namespace A248151.P12936919564544318436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A248151.P12936919564544318436

namespace A248151

/-- `∪[A028982(n+1), A191217(n+1)]` -/
def P12936919564544318436.Spec : Prop :=
  ∀ n, (P12936919564544318436.a n : ℤ) = A248151 (n + 1)

end A248151

/-! ## A248151.P15498061354921934574

`∪[A028982(n+1), A347877(n+1)]`
-/

namespace A248151.P15498061354921934574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A248151.P15498061354921934574

namespace A248151

/-- `∪[A028982(n+1), A347877(n+1)]` -/
def P15498061354921934574.Spec : Prop :=
  ∀ n, (P15498061354921934574.a n : ℤ) = A248151 (n + 1)

end A248151

/-! ## A248151.P5982376223550069342

`lt[A121358(A000203(n+1)+1), 3]+1`
-/

namespace A248151.P5982376223550069342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121358 (A000203 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A248151.P5982376223550069342

namespace A248151

/-- `lt[A121358(A000203(n+1)+1), 3]+1` -/
def P5982376223550069342.Spec : Prop :=
  ∀ n, (P5982376223550069342.a n : ℤ) = A248151 (n + 1)

end A248151

/-! ## A248151.P10623183464948648400

`lt[A121358(A001065(n+1)+n+2), 3]+1`
-/

namespace A248151.P10623183464948648400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121358 (A001065 (n + 1) + (n + 2 : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A248151.P10623183464948648400

namespace A248151

/-- `lt[A121358(A001065(n+1)+n+2), 3]+1` -/
def P10623183464948648400.Spec : Prop :=
  ∀ n, (P10623183464948648400.a n : ℤ) = A248151 (n + 1)

end A248151

/-! ## A248151.P16728583418992773775

`record[(n+1)/A143061(val(A000203(n+1), 2)+1)]`
-/

namespace A248151.P16728583418992773775
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A143061 (SequenceMachineLib.valuation (A000203 (n + 1)).toNat 2 + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248151.P16728583418992773775

namespace A248151

/-- `record[(n+1)/A143061(val(A000203(n+1), 2)+1)]` -/
def P16728583418992773775.Spec : Prop :=
  ∀ n, P16728583418992773775.a n = (A248151 (n + 1) : ℚ)

end A248151

/-! ## A248151.P12983016690509167614

`lt[A007814(A000203(n+1)), 2]+1`
-/

namespace A248151.P12983016690509167614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000203 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A248151.P12983016690509167614

namespace A248151

/-- `lt[A007814(A000203(n+1)), 2]+1` -/
def P12983016690509167614.Spec : Prop :=
  ∀ n, (P12983016690509167614.a n : ℤ) = A248151 (n + 1)

end A248151

/-!
# A248152: a(n) = 48 * 4^n * (2*n-1)!! * (2*n+3)!! / ((n+2)! * (n+4)!).

The programs for A248152, the canonical program `A248152.P8949454254380959305` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248152 has offset 0).

The definition of A248152 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A248152.P8949454254380959305

`24*(2*n)!*(2*n+3)!/(n!*(n+1)!*(n+2)!*(n+4)!)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A248152

/-- `24*(2*n)!*(2*n+3)!/(n!*(n+1)!*(n+2)!*(n+4)!)` -/
def P8949454254380959305.Spec : Prop :=
  ∀ n, P8949454254380959305.a n = (A248152 n : ℚ)

end A248152

/-! ## A248152.P10396856316313450544

`A007054(n)/3*record[A007054(n)]`
-/

namespace A248152.P10396856316313450544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007054 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007054 n : ℚ) / 3 * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A248152.P10396856316313450544

namespace A248152

/-- `A007054(n)/3*record[A007054(n)]` -/
def P10396856316313450544.Spec : Prop :=
  ∀ n, P10396856316313450544.a n = (A248152 n : ℚ)

end A248152

/-! ## A248152.P3807578564080709

`A005700(n)+A389288(n)+A005700(n)`
-/

namespace A248152.P3807578564080709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005700 n + (A389288 n + A005700 n)

end

end A248152.P3807578564080709

namespace A248152

/-- `A005700(n)+A389288(n)+A005700(n)` -/
def P3807578564080709.Spec : Prop :=
  ∀ n, P3807578564080709.a n = A248152 n

end A248152

/-! ## A248152.P3065753169800565253

`A007054(n+2)/A000217(n+1)*A000984(n)`
-/

namespace A248152.P3065753169800565253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007054 (n + 2) : ℚ) / (A000217 (n + 1) : ℚ) * (A000984 n : ℚ)

end

end A248152.P3065753169800565253

namespace A248152

/-- `A007054(n+2)/A000217(n+1)*A000984(n)` -/
def P3065753169800565253.Spec : Prop :=
  ∀ n, P3065753169800565253.a n = (A248152 n : ℚ)

end A248152

/-! ## A248152.P12091156061696560618

`Δ[ratio[A005568(n)]]*A005568(n)`
-/

namespace A248152.P12091156061696560618
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005568 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (A005568 n : ℚ)

end

end A248152.P12091156061696560618

namespace A248152

/-- `Δ[ratio[A005568(n)]]*A005568(n)` -/
def P12091156061696560618.Spec : Prop :=
  ∀ n, P12091156061696560618.a n = (A248152 n : ℚ)

end A248152

/-! ## A248152.P3744738304965600618

`Δ[ratio[A005817(2*n)]]*A005817(2*n)`
-/

namespace A248152.P3744738304965600618
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005817 (2 * n)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (A005817 (2 * n) : ℚ)

end

end A248152.P3744738304965600618

namespace A248152

/-- `Δ[ratio[A005817(2*n)]]*A005817(2*n)` -/
def P3744738304965600618.Spec : Prop :=
  ∀ n, P3744738304965600618.a n = (A248152 n : ℚ)

end A248152

/-!
# A248155: Expansion of (1 + x - x^2)/((1 + x)*(1 + 2*x)).

The programs for A248155, the canonical program `A248155.P5577389103336128984` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248155 has offset 0).

The definition of A248155 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x-x^2)/(1+3x+2x^2))` (program `A248155.P5577389103336128984`, by `A248155.P5577389103336128984.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A248155.P5577389103336128984

`ogf((1+x-x^2)/(1+3x+2x^2))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A248155

/-- `ogf((1+x-x^2)/(1+3x+2x^2))` -/
def P5577389103336128984.Spec : Prop :=
  ∀ n, P5577389103336128984.a n = A248155 n

theorem P5577389103336128984.correct : P5577389103336128984.Spec := by
  intro n
  simp only [A248155]

end A248155

/-! ## A248155.P8954896530659481516

`floor((-1)^n-(-2)^(n-1))`
-/

namespace A248155.P8954896530659481516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((-1) ^ n : ℚ) - (-2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A248155.P8954896530659481516

namespace A248155

/-- `floor((-1)^n-(-2)^(n-1))` -/
def P8954896530659481516.Spec : Prop :=
  ∀ n, P8954896530659481516.a n = A248155 n

end A248155

/-! ## A248155.P12648397220277829534

`(-2)^(n-2)-a(n-1)` with `a(0)=1, a(1)=-2`
-/

namespace A248155.P12648397220277829534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, -2] fun n a =>
  (-2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) - a (n - 1)

end

end A248155.P12648397220277829534

namespace A248155

/-- `(-2)^(n-2)-a(n-1)` -/
def P12648397220277829534.Spec : Prop :=
  ∀ n, P12648397220277829534.a n = (A248155 n : ℚ)

end A248155

/-! ## A248155.P964735174725181204

`a(n-2)-3*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=-2, a(2)=3`
-/

namespace A248155.P964735174725181204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 3] fun n a =>
  a (n - 2) - 3 * (a (n - 1) + a (n - 2))

end

end A248155.P964735174725181204

namespace A248155

/-- `a(n-2)-3*(a(n-1)+a(n-2))` -/
def P964735174725181204.Spec : Prop :=
  ∀ n, P964735174725181204.a n = A248155 n

end A248155

/-! ## A248155.P8049176787103341313

`A105812(n)-(a(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A248155.P8049176787103341313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A105812 n - (a (n - 1) + a (n - 1))

end

end A248155.P8049176787103341313

namespace A248155

/-- `A105812(n)-(a(n-1)+a(n-1))` -/
def P8049176787103341313.Spec : Prop :=
  ∀ n, P8049176787103341313.a n = A248155 n

end A248155

/-! ## A248155.P8486470318478259489

`A033999(n)*A094373(n)`
-/

namespace A248155.P8486470318478259489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A094373 n

end

end A248155.P8486470318478259489

namespace A248155

/-- `A033999(n)*A094373(n)` -/
def P8486470318478259489.Spec : Prop :=
  ∀ n, P8486470318478259489.a n = A248155 n

end A248155

/-! ## A248155.P7088389003822922032

`xor(A033999(n), A131577(n))`
-/

namespace A248155.P7088389003822922032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033999 n) (A131577 n)

end

end A248155.P7088389003822922032

namespace A248155

/-- `xor(A033999(n), A131577(n))` -/
def P7088389003822922032.Spec : Prop :=
  ∀ n, P7088389003822922032.a n = A248155 n

end A248155

/-! ## A248155.P10834209110106830284

`A094373(n)/A033999(n+2)`
-/

namespace A248155.P10834209110106830284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094373 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A248155.P10834209110106830284

namespace A248155

/-- `A094373(n)/A033999(n+2)` -/
def P10834209110106830284.Spec : Prop :=
  ∀ n, P10834209110106830284.a n = (A248155 n : ℚ)

end A248155

/-! ## A248155.P9347640078140309680

`A094373(n)*A105812(n+3)`
-/

namespace A248155.P9347640078140309680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n * A105812 (n + 3)

end

end A248155.P9347640078140309680

namespace A248155

/-- `A094373(n)*A105812(n+3)` -/
def P9347640078140309680.Spec : Prop :=
  ∀ n, P9347640078140309680.a n = A248155 n

end A248155

/-! ## A248155.P129960762934399531

`(A131577(n)+1)*A057077(2*n)`
-/

namespace A248155.P129960762934399531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131577 n + 1) * A057077 (2 * n)

end

end A248155.P129960762934399531

namespace A248155

/-- `(A131577(n)+1)*A057077(2*n)` -/
def P129960762934399531.Spec : Prop :=
  ∀ n, P129960762934399531.a n = A248155 n

end A248155

/-! ## A248155.P2425511186506466222

`A094373(n)*A117569(2*n+1)`
-/

namespace A248155.P2425511186506466222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n * A117569 (2 * n + 1)

end

end A248155.P2425511186506466222

namespace A248155

/-- `A094373(n)*A117569(2*n+1)` -/
def P2425511186506466222.Spec : Prop :=
  ∀ n, P2425511186506466222.a n = A248155 n

end A248155

/-! ## A248155.P8030592192161782231

`(A103889(n+1)-(n+1))*A094373(n)`
-/

namespace A248155.P8030592192161782231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A103889 (n + 1) - (n + 1 : ℤ)) * A094373 n

end

end A248155.P8030592192161782231

namespace A248155

/-- `(A103889(n+1)-(n+1))*A094373(n)` -/
def P8030592192161782231.Spec : Prop :=
  ∀ n, P8030592192161782231.a n = A248155 n

end A248155

/-! ## A248155.P5443540376076285810

`A117575(2*n)+A158780(2*n)/A117575(2*n)`
-/

namespace A248155.P5443540376076285810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117575 (2 * n) : ℚ) + (A158780 (2 * n) : ℚ) / (A117575 (2 * n) : ℚ)

end

end A248155.P5443540376076285810

namespace A248155

/-- `A117575(2*n)+A158780(2*n)/A117575(2*n)` -/
def P5443540376076285810.Spec : Prop :=
  ∀ n, P5443540376076285810.a n = (A248155 n : ℚ)

end A248155

/-! ## A248155.P15551390920697283916

`A122959(n)-A225883(n)`
-/

namespace A248155.P15551390920697283916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122959 n - A225883 n

end

end A248155.P15551390920697283916

namespace A248155

/-- `A122959(n)-A225883(n)` -/
def P15551390920697283916.Spec : Prop :=
  ∀ n, P15551390920697283916.a n = A248155 n

end A248155

/-! ## A248155.P779522368137079483

`A084214(n)-A092808(n+1)`
-/

namespace A248155.P779522368137079483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084214 n - A092808 (n + 1)

end

end A248155.P779522368137079483

namespace A248155

/-- `A084214(n)-A092808(n+1)` -/
def P779522368137079483.Spec : Prop :=
  ∀ n, P779522368137079483.a n = A248155 n

end A248155

/-! ## A248155.P17935200100407005207

`(1-A137206(2*n))*A056594(2*n)`
-/

namespace A248155.P17935200100407005207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A137206 (2 * n)) * A056594 (2 * n)

end

end A248155.P17935200100407005207

namespace A248155

/-- `(1-A137206(2*n))*A056594(2*n)` -/
def P17935200100407005207.Spec : Prop :=
  ∀ n, P17935200100407005207.a n = A248155 n

end A248155

/-! ## A248155.P17196844727516295677

`A117575(2*n)+A131572(2*n)/A117575(2*n+1)`
-/

namespace A248155.P17196844727516295677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117575 (2 * n) : ℚ) + (A131572 (2 * n) : ℚ) / (A117575 (2 * n + 1) : ℚ)

end

end A248155.P17196844727516295677

namespace A248155

/-- `A117575(2*n)+A131572(2*n)/A117575(2*n+1)` -/
def P17196844727516295677.Spec : Prop :=
  ∀ n, P17196844727516295677.a n = (A248155 n : ℚ)

end A248155

/-! ## A248155.P1503691476961845711

`A176414(n)%A054135(n+1)`
-/

namespace A248155.P1503691476961845711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176414 n) (A054135 (n + 1))

end

end A248155.P1503691476961845711

namespace A248155

/-- `A176414(n)%A054135(n+1)` -/
def P1503691476961845711.Spec : Prop :=
  ∀ n, P1503691476961845711.a n = A248155 n

end A248155

/-! ## A248155.P8381276365631407477

`A110164(n+1)+A033999(n)-A122803(n+1)`
-/

namespace A248155.P8381276365631407477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110164 (n + 1) + (A033999 n - A122803 (n + 1))

end

end A248155.P8381276365631407477

namespace A248155

/-- `A110164(n+1)+A033999(n)-A122803(n+1)` -/
def P8381276365631407477.Spec : Prop :=
  ∀ n, P8381276365631407477.a n = A248155 n

end A248155

/-! ## A248155.P5119364410662415265

`A009117(n)%A000051(n)`
-/

namespace A248155.P5119364410662415265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009117 n) (A000051 n)

end

end A248155.P5119364410662415265

namespace A248155

/-- `A009117(n)%A000051(n)` -/
def P5119364410662415265.Spec : Prop :=
  ∀ n, P5119364410662415265.a n = A248155 n

end A248155

/-!
# A248156: Inverse Riordan triangle of A106513: Riordan ((1 - 2*x^2 )/(1 + x), x/(1+x)).

The programs for A248156, the canonical program `A248156.P4251534176202152880` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248156 has offset 0).

The definition of A248156 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248156.P4251534176202152880

`2*A105810(n)-A097808(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A248156

/-- `2*A105810(n)-A097808(n)` -/
def P4251534176202152880.Spec : Prop :=
  ∀ n, P4251534176202152880.a n = A248156 n

theorem P4251534176202152880.correct : P4251534176202152880.Spec := by
  intro n
  simp only [A248156]

end A248156

/-! ## A248156.P11322313777274924255

`A105810(n)+∑[A130595(n)]-1`
-/

namespace A248156.P11322313777274924255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105810 n + (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A248156.P11322313777274924255

namespace A248156

/-- `A105810(n)+∑[A130595(n)]-1` -/
def P11322313777274924255.Spec : Prop :=
  ∀ n, P11322313777274924255.a n = A248156 n

theorem P11322313777274924255.correct : P11322313777274924255.Spec := by
  intro n
  simp only [A248156, Nat.add_sub_cancel, A248156.P11322313777274924255.f1, A248156.P11322313777274924255.a, A248156.P4251534176202152880.a, A097808, A097808.P4376253910493636811.a, A105810, A105810.P17803328996045714001.f1, A105810.P17803328996045714001.a, A130595, A130595.P9631789896959827873.a, A097807, A097807.P13019751470320389249.a, A156644, A156644.P7957006510931295094.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A248156

/-! ## A248156.P1089283441328708952

`A105810(2*n-n)-(1-∑[A130595(n)])`
-/

namespace A248156.P1089283441328708952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105810 (2 * n - n) - (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248156.P1089283441328708952

namespace A248156

/-- `A105810(2*n-n)-(1-∑[A130595(n)])` -/
def P1089283441328708952.Spec : Prop :=
  ∀ n, P1089283441328708952.a n = A248156 n

end A248156

/-! ## A248156.P1504442191452362979

`A097808(n)+A130595(n)-A112466(n)`
-/

namespace A248156.P1504442191452362979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097808 n + (A130595 n - A112466 n)

end

end A248156.P1504442191452362979

namespace A248156

/-- `A097808(n)+A130595(n)-A112466(n)` -/
def P1504442191452362979.Spec : Prop :=
  ∀ n, P1504442191452362979.a n = A248156 n

end A248156

/-! ## A248156.P6294161007730028669

`A057428(2*(n+1))+A105810(n)+∑[A130595(n)]`
-/

namespace A248156.P6294161007730028669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (2 * (n + 1)) + (A105810 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248156.P6294161007730028669

namespace A248156

/-- `A057428(2*(n+1))+A105810(n)+∑[A130595(n)]` -/
def P6294161007730028669.Spec : Prop :=
  ∀ n, P6294161007730028669.a n = A248156 n

theorem P6294161007730028669.correct : P6294161007730028669.Spec := by
  intro n
  simp only [A248156, Nat.add_sub_cancel, A248156.P6294161007730028669.f1, A248156.P6294161007730028669.a, A248156.P4251534176202152880.a, A057428, A057428.P2999489532230392221.a, A097808, A097808.P4376253910493636811.a, A105810, A105810.P17803328996045714001.f1, A105810.P17803328996045714001.a, A130595, A130595.P9631789896959827873.a, A057427, A057427.P3058147525557661423.a, A097807, A097807.P13019751470320389249.a, A156644, A156644.P7957006510931295094.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A248156

/-! ## A248156.P918305959649856270

`A105812(2*(n+2))+A105810(n)+∑[A130595(n)]`
-/

namespace A248156.P918305959649856270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (2 * (n + 2)) + (A105810 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248156.P918305959649856270

namespace A248156

/-- `A105812(2*(n+2))+A105810(n)+∑[A130595(n)]` -/
def P918305959649856270.Spec : Prop :=
  ∀ n, P918305959649856270.a n = A248156 n

end A248156

/-!
# A248157: Expansion of (1 - 2*x^2)/(1 + x)^2.

The programs for A248157, the canonical program `A248157.P4450896311238811262` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248157 has offset 0).

The definition of A248157 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x^2)/(1+2x+x^2))` (program `A248157.P4450896311238811262`, by `A248157.P4450896311238811262.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A248157.P4450896311238811262

`ogf((1-2x^2)/(1+2x+x^2))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A248157

/-- `ogf((1-2x^2)/(1+2x+x^2))` -/
def P4450896311238811262.Spec : Prop :=
  ∀ n, P4450896311238811262.a n = A248157 n

theorem P4450896311238811262.correct : P4450896311238811262.Spec := by
  intro n
  simp only [A248157]

end A248157

/-! ## A248157.P3517826309443254059

`-xor(1, a(n-1))` with `a(0)=1, a(1)=-2`
-/

namespace A248157.P3517826309443254059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2] fun n a =>
  -Int.xor 1 (a (n - 1))

end

end A248157.P3517826309443254059

namespace A248157

/-- `-xor(1, a(n-1))` -/
def P3517826309443254059.Spec : Prop :=
  ∀ n, P3517826309443254059.a n = A248157 n

end A248157

/-! ## A248157.P13773535109028442383

`Δ[gcd(2, n)-a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A248157.P13773535109028442383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (Nat.gcd 2 n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A248157.P13773535109028442383

namespace A248157

/-- `Δ[gcd(2, n)-a(n-1)]` -/
def P13773535109028442383.Spec : Prop :=
  ∀ n, P13773535109028442383.a n = A248157 n

end A248157

/-! ## A248157.P7700455771458307848

`(2-abs(1-n))*(-1)^n`
-/

namespace A248157.P7700455771458307848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - |1 - (n : ℤ)|) * (-1) ^ n

end

end A248157.P7700455771458307848

namespace A248157

/-- `(2-abs(1-n))*(-1)^n` -/
def P7700455771458307848.Spec : Prop :=
  ∀ n, P7700455771458307848.a n = A248157 n

end A248157

/-! ## A248157.P15695650745025065969

`(3-n)/(-1)^a(n-1)` with `a(0)=1`
-/

namespace A248157.P15695650745025065969
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (3 - (n : ℤ) : ℝ) / (-1 : ℝ) ^ (a (n - 1))

end

end A248157.P15695650745025065969

namespace A248157

/-- `(3-n)/(-1)^a(n-1)` -/
def P15695650745025065969.Spec : Prop :=
  ∀ n, P15695650745025065969.a n = (A248157 n : ℝ)

end A248157

/-! ## A248157.P10509756390929798486

`Δ[(2-n)%2-a(n-1)]` with `a(0)=0`
-/

namespace A248157.P10509756390929798486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  Int.tmod (2 - (n : ℤ)) 2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A248157.P10509756390929798486

namespace A248157

/-- `Δ[(2-n)%2-a(n-1)]` -/
def P10509756390929798486.Spec : Prop :=
  ∀ n, P10509756390929798486.a n = A248157 n

end A248157

/-! ## A248157.P13038947637035735241

`(-1)^(n+1)-a(n-1)` with `a(0)=1, a(1)=-2`
-/

namespace A248157.P13038947637035735241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2] fun n a =>
  (-1) ^ (n + 1) - a (n - 1)

end

end A248157.P13038947637035735241

namespace A248157

/-- `(-1)^(n+1)-a(n-1)` -/
def P13038947637035735241.Spec : Prop :=
  ∀ n, P13038947637035735241.a n = A248157 n

end A248157

/-! ## A248157.P6376977534057888610

`or(2, n-1-a(n-1))-n` with `a(0)=1`
-/

namespace A248157.P6376977534057888610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 2 ((n : ℤ) - 1 - a (n - 1)) - (n : ℤ)

end

end A248157.P6376977534057888610

namespace A248157

/-- `or(2, n-1-a(n-1))-n` -/
def P6376977534057888610.Spec : Prop :=
  ∀ n, P6376977534057888610.a n = A248157 n

end A248157

/-! ## A248157.P11645807993507279920

`-((n-3)*(-1)^a(n-1))` with `a(0)=1`
-/

namespace A248157.P11645807993507279920
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  -(((n : ℤ) - 3 : ℝ) * (-1 : ℝ) ^ (a (n - 1)))

end

end A248157.P11645807993507279920

namespace A248157

/-- `-((n-3)*(-1)^a(n-1))` -/
def P11645807993507279920.Spec : Prop :=
  ∀ n, P11645807993507279920.a n = (A248157 n : ℝ)

end A248157

/-! ## A248157.P6510515224449587109

`floor((-1)^(1-n)-a(n-1))` with `a(0)=1, a(1)=-2`
-/

namespace A248157.P6510515224449587109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2] fun n a =>
  ⌊(-1 : ℚ) ^ (1 - (n : ℤ) : ℤ) - (a (n - 1) : ℚ)⌋

end

end A248157.P6510515224449587109

namespace A248157

/-- `floor((-1)^(1-n)-a(n-1))` -/
def P6510515224449587109.Spec : Prop :=
  ∀ n, P6510515224449587109.a n = A248157 n

end A248157

/-! ## A248157.P7196666964211698371

`Δ[a(and(1, n+1))-a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A248157.P7196666964211698371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (Nat.land 1 (n + 1)) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A248157.P7196666964211698371

namespace A248157

/-- `Δ[a(and(1, n+1))-a(n-1)]` -/
def P7196666964211698371.Spec : Prop :=
  ∀ n, P7196666964211698371.a n = A248157 n

end A248157

/-! ## A248157.P5040822556082851906

`(n-3)/(xor(1, n-1)-abs(1-n))`
-/

namespace A248157.P5040822556082851906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3 : ℚ) / (Int.xor 1 ((n : ℤ) - 1) - |1 - (n : ℤ)| : ℚ)

end

end A248157.P5040822556082851906

namespace A248157

/-- `(n-3)/(xor(1, n-1)-abs(1-n))` -/
def P5040822556082851906.Spec : Prop :=
  ∀ n, P5040822556082851906.a n = (A248157 n : ℚ)

end A248157

/-! ## A248157.P1500294714911616656

`2%n*n%2-(a(n-1)+1)` with `a(0)=1`
-/

namespace A248157.P1500294714911616656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((2 % n * (n % 2) : ℕ) : ℤ) - (a (n - 1) + 1)

end

end A248157.P1500294714911616656

namespace A248157

/-- `2%n*n%2-(a(n-1)+1)` -/
def P1500294714911616656.Spec : Prop :=
  ∀ n, P1500294714911616656.a n = A248157 n

end A248157

/-! ## A248157.P1219975755748789654

`(n-a(n-1))%4-(a(n-1)+1)` with `a(0)=1`
-/

namespace A248157.P1219975755748789654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod ((n : ℤ) - a (n - 1)) 4 - (a (n - 1) + 1)

end

end A248157.P1219975755748789654

namespace A248157

/-- `(n-a(n-1))%4-(a(n-1)+1)` -/
def P1219975755748789654.Spec : Prop :=
  ∀ n, P1219975755748789654.a n = A248157 n

end A248157

/-! ## A248157.P204049243586285904

`3-(a(n-1)+gcd(4, a(n-1)-n))` with `a(0)=1`
-/

namespace A248157.P204049243586285904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 - (a (n - 1) + (Int.gcd 4 (a (n - 1) - (n : ℤ)) : ℤ))

end

end A248157.P204049243586285904

namespace A248157

/-- `3-(a(n-1)+gcd(4, a(n-1)-n))` -/
def P204049243586285904.Spec : Prop :=
  ∀ n, P204049243586285904.a n = A248157 n

end A248157

/-! ## A248157.P14230805397928921577

`(3-n)/(a(n-1)+a(n-2))` with `a(0)=1, a(1)=-2, a(2)=1`
-/

namespace A248157.P14230805397928921577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, -2, 1] fun n a =>
  (3 - (n : ℤ) : ℚ) / (a (n - 1) + a (n - 2))

end

end A248157.P14230805397928921577

namespace A248157

/-- `(3-n)/(a(n-1)+a(n-2))` -/
def P14230805397928921577.Spec : Prop :=
  ∀ n, P14230805397928921577.a n = (A248157 n : ℚ)

end A248157

/-! ## A248157.P6144754561771738562

`floor(n-a(n-1))%4-a(n-1)-1` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A248157.P6144754561771738562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod ((n : ℤ) - a (n - 1)) 4 - a (n - 1) - 1

end

end A248157.P6144754561771738562

namespace A248157

/-- `floor(n-a(n-1))%4-a(n-1)-1` -/
def P6144754561771738562.Spec : Prop :=
  ∀ n, P6144754561771738562.a n = A248157 n

end A248157

/-! ## A248157.P3410140621552027272

`a(n-2)+a(n-3)-a(n-1)` with `a(0)=1, a(1)=-2, a(2)=1, a(3)=0`
-/

namespace A248157.P3410140621552027272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 1, 0] fun n a =>
  a (n - 2) + (a (n - 3) - a (n - 1))

end

end A248157.P3410140621552027272

namespace A248157

/-- `a(n-2)+a(n-3)-a(n-1)` -/
def P3410140621552027272.Spec : Prop :=
  ∀ n, P3410140621552027272.a n = A248157 n

end A248157

/-! ## A248157.P13376653333083290030

`a(n-1)-a(n-2)-3*a(n-1)` with `a(0)=1, a(1)=-2, a(2)=1`
-/

namespace A248157.P13376653333083290030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 1] fun n a =>
  a (n - 1) - a (n - 2) - 3 * a (n - 1)

end

end A248157.P13376653333083290030

namespace A248157

/-- `a(n-1)-a(n-2)-3*a(n-1)` -/
def P13376653333083290030.Spec : Prop :=
  ∀ n, P13376653333083290030.a n = A248157 n

end A248157

/-! ## A248157.P1271851395671488518

`A033999(n)-A097141(n)`
-/

namespace A248157.P1271851395671488518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n - A097141 n

end

end A248157.P1271851395671488518

namespace A248157

/-- `A033999(n)-A097141(n)` -/
def P1271851395671488518.Spec : Prop :=
  ∀ n, P1271851395671488518.a n = A248157 n

end A248157

/-!
# A248158: Expansion of (1 - 2*x^2)/(1 + x)^3. Second column of Riordan triangle A248156.

The programs for A248158, the canonical program `A248158.P16574425677115967667` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248158 has offset 0).

The definition of A248158 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x^2)/(1+3x+3x^2+x^3))` (program `A248158.P16574425677115967667`, by `A248158.P16574425677115967667.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A248158.P16574425677115967667

`ogf((1-2x^2)/(1+3x+3x^2+x^3))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A248158

/-- `ogf((1-2x^2)/(1+3x+3x^2+x^3))` -/
def P16574425677115967667.Spec : Prop :=
  ∀ n, P16574425677115967667.a n = A248158 n

theorem P16574425677115967667.correct : P16574425677115967667.Spec := by
  intro n
  simp only [A248158]

end A248158

/-! ## A248158.P16763244830529374652

`(-1)^n*(2+5*n-n²)/2`
-/

namespace A248158.P16763244830529374652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n * ((2 + 5 * n : ℤ) - (n ^ 2 : ℤ)) : ℚ) / 2

end

end A248158.P16763244830529374652

namespace A248158

/-- `(-1)^n*(2+5*n-n²)/2` -/
def P16763244830529374652.Spec : Prop :=
  ∀ n, P16763244830529374652.a n = (A248158 n : ℚ)

end A248158

/-! ## A248158.P8671366948030500387

`(3-n)*(-1)^n-a(n-1)` with `a(0)=1`
-/

namespace A248158.P8671366948030500387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (3 - (n : ℤ)) * (-1) ^ n - a (n - 1)

end

end A248158.P8671366948030500387

namespace A248158

/-- `(3-n)*(-1)^n-a(n-1)` -/
def P8671366948030500387.Spec : Prop :=
  ∀ n, P8671366948030500387.a n = A248158 n

end A248158

/-! ## A248158.P3033698329436606526

`A248157(n+1)-(A248159(n+1)+A248159(n))`
-/

namespace A248158.P3033698329436606526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248157 (n + 1) - (A248159 (n + 1) + A248159 n)

end

end A248158.P3033698329436606526

namespace A248158

/-- `A248157(n+1)-(A248159(n+1)+A248159(n))` -/
def P3033698329436606526.Spec : Prop :=
  ∀ n, P3033698329436606526.a n = A248158 n

end A248158

/-! ## A248158.P4284258378102101821

`A248156(∑[n+1]+1)`
-/

namespace A248158.P4284258378102101821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248156 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A248158.P4284258378102101821

namespace A248158

/-- `A248156(∑[n+1]+1)` -/
def P4284258378102101821.Spec : Prop :=
  ∀ n, P4284258378102101821.a n = A248158 n

end A248158

/-!
# A248159: Expansion of (1 - 2*x^2)/(1 + x)^4. Third column of Riordan triangle A248156.

The programs for A248159, the canonical program `A248159.P13185482229227853337` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248159 has offset 0).

The definition of A248159 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x^2)/(1+4x+6x^2+4x^3+x^4))` (program `A248159.P13185482229227853337`, by `A248159.P13185482229227853337.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A248159.P13185482229227853337

`ogf((1-2x^2)/(1+4x+6x^2+4x^3+x^4))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A248159

/-- `ogf((1-2x^2)/(1+4x+6x^2+4x^3+x^4))` -/
def P13185482229227853337.Spec : Prop :=
  ∀ n, P13185482229227853337.a n = A248159 n

theorem P13185482229227853337.correct : P13185482229227853337.Spec := by
  intro n
  simp only [A248159]

end A248159

/-! ## A248159.P64007655626574401

`(-1)^n*∑[∑[3-n]-2]`
-/

namespace A248159.P64007655626574401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248159.P64007655626574401

namespace A248159

/-- `(-1)^n*∑[∑[3-n]-2]` -/
def P64007655626574401.Spec : Prop :=
  ∀ n, P64007655626574401.a n = A248159 n

end A248159

/-! ## A248159.P8900403427957165567

`A248158(n)-a(n-1)` with `a(0)=1`
-/

namespace A248159.P8900403427957165567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A248158 n - a (n - 1)

end

end A248159.P8900403427957165567

namespace A248159

/-- `A248158(n)-a(n-1)` -/
def P8900403427957165567.Spec : Prop :=
  ∀ n, P8900403427957165567.a n = A248159 n

end A248159

/-! ## A248159.P8669347911474774994

`∑[∑[3-n]-2]/A033999(n)`
-/

namespace A248159.P8669347911474774994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A033999 n : ℚ)

end

end A248159.P8669347911474774994

namespace A248159

/-- `∑[∑[3-n]-2]/A033999(n)` -/
def P8669347911474774994.Spec : Prop :=
  ∀ n, P8669347911474774994.a n = (A248159 n : ℚ)

end A248159

/-! ## A248159.P15006457858138187716

`A248158(n+1)-(A248160(n+1)+A248160(n))`
-/

namespace A248159.P15006457858138187716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248158 (n + 1) - (A248160 (n + 1) + A248160 n)

end

end A248159.P15006457858138187716

namespace A248159

/-- `A248158(n+1)-(A248160(n+1)+A248160(n))` -/
def P15006457858138187716.Spec : Prop :=
  ∀ n, P15006457858138187716.a n = A248159 n

end A248159

/-!
# A248160: Expansion of (1 - 2*x^2)/(1 + x)^5. Fourth column of Riordan triangle A248156.

The programs for A248160, the canonical program `A248160.P14271224958767621818` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248160 has offset 0).

The definition of A248160 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x^2)/(1+5x+10x^2+10x^3+5x^4+x^5))` (program `A248160.P14271224958767621818`, by `A248160.P14271224958767621818.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A248160.P14271224958767621818

`ogf((1-2x^2)/(1+5x+10x^2+10x^3+5x^4+x^5))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A248160

/-- `ogf((1-2x^2)/(1+5x+10x^2+10x^3+5x^4+x^5))` -/
def P14271224958767621818.Spec : Prop :=
  ∀ n, P14271224958767621818.a n = A248160 n

theorem P14271224958767621818.correct : P14271224958767621818.Spec := by
  intro n
  simp only [A248160]

end A248160

/-! ## A248160.P3246322186019235172

`(-1)^n*(n+1)*(n+2)*(12+9*n-n²)/24`
-/

namespace A248160.P3246322186019235172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n * (n + 1 : ℤ) * (n + 2 : ℤ) * ((12 + 9 * n : ℤ) - (n ^ 2 : ℤ)) : ℚ) / 24

end

end A248160.P3246322186019235172

namespace A248160

/-- `(-1)^n*(n+1)*(n+2)*(12+9*n-n²)/24` -/
def P3246322186019235172.Spec : Prop :=
  ∀ n, P3246322186019235172.a n = (A248160 n : ℚ)

end A248160

/-! ## A248160.P8995118543328054969

`A248159(n)-a(n-1)` with `a(0)=1`
-/

namespace A248160.P8995118543328054969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A248159 n - a (n - 1)

end

end A248160.P8995118543328054969

namespace A248160

/-- `A248159(n)-a(n-1)` -/
def P8995118543328054969.Spec : Prop :=
  ∀ n, P8995118543328054969.a n = A248160 n

end A248160

/-! ## A248160.P6335951673368299659

`A248156(A167614(n+2))`
-/

namespace A248160.P6335951673368299659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248156 (A167614 (n + 2)).toNat

end

end A248160.P6335951673368299659

namespace A248160

/-- `A248156(A167614(n+2))` -/
def P6335951673368299659.Spec : Prop :=
  ∀ n, P6335951673368299659.a n = A248160 n

end A248160

/-!
# A248161: Expansion of (2-x+x^2)/((1+x)*(1-3*x+x^2)).

The programs for A248161, the canonical program `A248161.P8311547309201203580` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248161 has offset 0).

The definition of A248161 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2-x+x^2)/(1-2x-2x^2+x^3))` (program `A248161.P8311547309201203580`, by `A248161.P8311547309201203580.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A248161.P8311547309201203580

`ogf((2-x+x^2)/(1-2x-2x^2+x^3))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A248161

/-- `ogf((2-x+x^2)/(1-2x-2x^2+x^3))` -/
def P8311547309201203580.Spec : Prop :=
  ∀ n, P8311547309201203580.a n = A248161 n

theorem P8311547309201203580.correct : P8311547309201203580.Spec := by
  intro n
  simp only [A248161]

end A248161

/-! ## A248161.P8042486538359195764

`A000045(2*n+2)+A000045(n)*A000045(n+1)+(-1)^n`
-/

namespace A248161.P8042486538359195764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 2) + A000045 n * A000045 (n + 1) + (-1) ^ n

end

end A248161.P8042486538359195764

namespace A248161

/-- `A000045(2*n+2)+A000045(n)*A000045(n+1)+(-1)^n` -/
def P8042486538359195764.Spec : Prop :=
  ∀ n, P8042486538359195764.a n = A248161 n

end A248161

/-! ## A248161.P17865808048359634801

`A000045(n+3)²-(A000045(n)²+A000045(n+1)²+A000045(n+2)²)`
-/

namespace A248161.P17865808048359634801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 3) ^ 2 - (A000045 n ^ 2 + A000045 (n + 1) ^ 2 + A000045 (n + 2) ^ 2)

end

end A248161.P17865808048359634801

namespace A248161

/-- `A000045(n+3)²-(A000045(n)²+A000045(n+1)²+A000045(n+2)²)` -/
def P17865808048359634801.Spec : Prop :=
  ∀ n, P17865808048359634801.a n = A248161 n

end A248161

/-! ## A248161.P1728053776115232359

`Δ[A129905(n)]`
-/

namespace A248161.P1728053776115232359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A248161.P1728053776115232359

namespace A248161

/-- `Δ[A129905(n)]` -/
def P1728053776115232359.Spec : Prop :=
  ∀ n, P1728053776115232359.a n = A248161 n

end A248161

/-! ## A248161.P246746243288665476

`A111572(2*(n+1))`
-/

namespace A248161.P246746243288665476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111572 (2 * (n + 1))

end

end A248161.P246746243288665476

namespace A248161

/-- `A111572(2*(n+1))` -/
def P246746243288665476.Spec : Prop :=
  ∀ n, P246746243288665476.a n = A248161 n

end A248161

/-! ## A248161.P15521146128751667502

`Δ[A295684(2*(n+1))]`
-/

namespace A248161.P15521146128751667502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295684 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A248161.P15521146128751667502

namespace A248161

/-- `Δ[A295684(2*(n+1))]` -/
def P15521146128751667502.Spec : Prop :=
  ∀ n, P15521146128751667502.a n = A248161 n

end A248161

/-! ## A248161.P11814181435966794766

`A054486(n)-a(n-1)` with `a(0)=2`
-/

namespace A248161.P11814181435966794766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A054486 n - a (n - 1)

end

end A248161.P11814181435966794766

namespace A248161

/-- `A054486(n)-a(n-1)` -/
def P11814181435966794766.Spec : Prop :=
  ∀ n, P11814181435966794766.a n = A248161 n

end A248161

/-! ## A248161.P10908463493903833144

`A192883(n)+A120718(n)`
-/

namespace A248161.P10908463493903833144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192883 n + A120718 n

end

end A248161.P10908463493903833144

namespace A248161

/-- `A192883(n)+A120718(n)` -/
def P10908463493903833144.Spec : Prop :=
  ∀ n, P10908463493903833144.a n = A248161 n

end A248161

/-! ## A248161.P16618450082255123511

`A192914(n)+A129905(n)`
-/

namespace A248161.P16618450082255123511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192914 n + A129905 n

end

end A248161.P16618450082255123511

namespace A248161

/-- `A192914(n)+A129905(n)` -/
def P16618450082255123511.Spec : Prop :=
  ∀ n, P16618450082255123511.a n = A248161 n

end A248161

/-! ## A248161.P13627239512903430001

`A102714(n)-A059929(n)`
-/

namespace A248161.P13627239512903430001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102714 n - A059929 n

end

end A248161.P13627239512903430001

namespace A248161

/-- `A102714(n)-A059929(n)` -/
def P13627239512903430001.Spec : Prop :=
  ∀ n, P13627239512903430001.a n = A248161 n

end A248161

/-! ## A248161.P4584673109845036141

`A048575(n)-A175395(n)`
-/

namespace A248161.P4584673109845036141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048575 n - A175395 n

end

end A248161.P4584673109845036141

namespace A248161

/-- `A048575(n)-A175395(n)` -/
def P4584673109845036141.Spec : Prop :=
  ∀ n, P4584673109845036141.a n = A248161 n

end A248161

/-! ## A248161.P12608654831871297659

`Δ[A099016(n)+A001654(n)]`
-/

namespace A248161.P12608654831871297659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099016 n + A001654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A248161.P12608654831871297659

namespace A248161

/-- `Δ[A099016(n)+A001654(n)]` -/
def P12608654831871297659.Spec : Prop :=
  ∀ n, P12608654831871297659.a n = A248161 n

end A248161

/-! ## A248161.P8496796132637656696

`A192879(n+1)+A033999(n)`
-/

namespace A248161.P8496796132637656696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192879 (n + 1) + A033999 n

end

end A248161.P8496796132637656696

namespace A248161

/-- `A192879(n+1)+A033999(n)` -/
def P8496796132637656696.Spec : Prop :=
  ∀ n, P8496796132637656696.a n = A248161 n

end A248161

/-! ## A248161.P11743760657480909687

`A236428(n)+A001654(n+1)`
-/

namespace A248161.P11743760657480909687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236428 n + A001654 (n + 1)

end

end A248161.P11743760657480909687

namespace A248161

/-- `A236428(n)+A001654(n+1)` -/
def P11743760657480909687.Spec : Prop :=
  ∀ n, P11743760657480909687.a n = A248161 n

end A248161

/-! ## A248161.P7862225615894942752

`A192921(n+1)+A192879(n)`
-/

namespace A248161.P7862225615894942752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192921 (n + 1) + A192879 n

end

end A248161.P7862225615894942752

namespace A248161

/-- `A192921(n+1)+A192879(n)` -/
def P7862225615894942752.Spec : Prop :=
  ∀ n, P7862225615894942752.a n = A248161 n

end A248161

/-! ## A248161.P3530291032002090591

`A128535(n+2)+A001654(n)`
-/

namespace A248161.P3530291032002090591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128535 (n + 2) + A001654 n

end

end A248161.P3530291032002090591

namespace A248161

/-- `A128535(n+2)+A001654(n)` -/
def P3530291032002090591.Spec : Prop :=
  ∀ n, P3530291032002090591.a n = A248161 n

end A248161

/-! ## A248161.P5892916066211758132

`A129905(n+1)-A129905(n)`
-/

namespace A248161.P5892916066211758132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129905 (n + 1) - A129905 n

end

end A248161.P5892916066211758132

namespace A248161

/-- `A129905(n+1)-A129905(n)` -/
def P5892916066211758132.Spec : Prop :=
  ∀ n, P5892916066211758132.a n = A248161 n

end A248161

/-! ## A248161.P13804403542906719575

`A079472(n+2)-A007598(n)`
-/

namespace A248161.P13804403542906719575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079472 (n + 2) - A007598 n

end

end A248161.P13804403542906719575

namespace A248161

/-- `A079472(n+2)-A007598(n)` -/
def P13804403542906719575.Spec : Prop :=
  ∀ n, P13804403542906719575.a n = A248161 n

end A248161

/-! ## A248161.P13358295508921380966

`A001519(n+2)-A175395(n)`
-/

namespace A248161.P13358295508921380966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 2) - A175395 n

end

end A248161.P13358295508921380966

namespace A248161

/-- `A001519(n+2)-A175395(n)` -/
def P13358295508921380966.Spec : Prop :=
  ∀ n, P13358295508921380966.a n = A248161 n

end A248161

/-! ## A248161.P10006662394552619668

`A192872(n+2)-A166516(n)`
-/

namespace A248161.P10006662394552619668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192872 (n + 2) - A166516 n

end

end A248161.P10006662394552619668

namespace A248161

/-- `A192872(n+2)-A166516(n)` -/
def P10006662394552619668.Spec : Prop :=
  ∀ n, P10006662394552619668.a n = A248161 n

end A248161

/-!
# A248162: Partition number array: sum of part*(part - 1) for each partition of n in Abramowitz-Stegun order for n >= 1.

The programs for A248162, there is no canonical definition to state claims against.
-/

/-! ## A248162.P376495490682942533

`and(-2, A005245(A144274(n+1)))`
-/

namespace A248162.P376495490682942533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A005245 (A144274 (n + 1)).toNat)

end

end A248162.P376495490682942533

/-! ## A248162.P17316281344144389684

`A077252(A060002(n+1))`
-/

namespace A248162.P17316281344144389684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077252 (A060002 (n + 1)).toNat

end

end A248162.P17316281344144389684

/-! ## A248162.P11928487074295693370

`A077252(A322761(n+1))`
-/

namespace A248162.P11928487074295693370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077252 (A322761 (n + 1)).toNat

end

end A248162.P11928487074295693370

/-!
# A248163: Chebyshev's S polynomials (A049310) evaluated at 34/3 and multiplied by powers of 3 (A000244).

The programs for A248163, the canonical program `A248163.P4521416427565751955` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248163 has offset 0).

The definition of A248163 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A248163.P4521416427565751955

`34*a(n-1)-9*a(n-2)` with `a(0)=1, a(1)=34`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A248163

/-- `34*a(n-1)-9*a(n-2)` -/
def P4521416427565751955.Spec : Prop :=
  ∀ n, P4521416427565751955.a n = A248163 n

theorem P4521416427565751955.correct : P4521416427565751955.Spec := by
  intro n
  simp only [A248163]

end A248163

/-! ## A248163.P919257975394732831

`ogf(1/(1-34x+9x^2))`
-/

namespace A248163.P919257975394732831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -34, 9] n

end

end A248163.P919257975394732831

namespace A248163

/-- `ogf(1/(1-34x+9x^2))` -/
def P919257975394732831.Spec : Prop :=
  ∀ n, P919257975394732831.a n = A248163 n

end A248163

/-! ## A248163.P5956378643395915343

`A249862(n)+17*a(n-1)` with `a(0)=1`
-/

namespace A248163.P5956378643395915343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A249862 n + 17 * a (n - 1)

end

end A248163.P5956378643395915343

namespace A248163

/-- `A249862(n)+17*a(n-1)` -/
def P5956378643395915343.Spec : Prop :=
  ∀ n, P5956378643395915343.a n = A248163 n

end A248163

/-!
# A248166: Prime quadruples: a(n) = A007530(1000n).

The programs for A248166, there is no canonical definition to state claims against.
-/

/-! ## A248166.P16394428488039742027

`A007530(1000*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A248166.P16394428488039742027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007530 (1000 * (n + 1))

end

end A248166.P16394428488039742027

/-! ## A248166.P16650828888599976137

`A173037(A168650(n+1))-4`
-/

namespace A248166.P16650828888599976137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173037 (A168650 (n + 1)).toNat - 4

end

end A248166.P16650828888599976137

/-!
# A248167: Expansion of g.f.: 1 / AGM(1-33*x, sqrt((1-9*x)*(1-121*x))).

The programs for A248167, there is no canonical definition to state claims against.
-/

/-! ## A248167.P4729414676219896412

`A248168(n)²`
-/

namespace A248167.P4729414676219896412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248168 n ^ 2

end

end A248167.P4729414676219896412

/-! ## A248167.P5598407013459623987

`A248168(n)^A020639(A007416(n+1))`
-/

namespace A248167.P5598407013459623987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248168 n : ℚ) ^ (A020639 (A007416 (n + 1)).toNat : ℤ)

end

end A248167.P5598407013459623987

/-! ## A248167.P3484401429998376425

`A248168(n)^A102457(A034961(n+1))`
-/

namespace A248167.P3484401429998376425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248168 n : ℚ) ^ (A102457 (A034961 (n + 1)).toNat : ℤ)

end

end A248167.P3484401429998376425

/-! ## A248167.P7804949704493663458

`A248168(n)^A304102(A008578(n+1))`
-/

namespace A248167.P7804949704493663458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248168 n : ℚ) ^ (A304102 (A008578 (n + 1)).toNat : ℤ)

end

end A248167.P7804949704493663458

/-! ## A248167.P6096040882862900397

`A248168(n)^A020639(A005179(n+1))`
-/

namespace A248167.P6096040882862900397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248168 n : ℚ) ^ (A020639 (A005179 (n + 1)).toNat : ℤ)

end

end A248167.P6096040882862900397

/-!
# A248168: Expansion of g.f. 1/sqrt((1-3*x)*(1-11*x)).

The programs for A248168, there is no canonical definition to state claims against.
-/

/-! ## A248168.P8599616526823741688

`sqrt(A248167(n))`
-/

namespace A248168.P8599616526823741688
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A248167 n : ℝ)

end

end A248168.P8599616526823741688

/-! ## A248168.P5726788026577635728

`root(A248167(n), A123932(n))²`
-/

namespace A248168.P5726788026577635728
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A248167 n : ℝ) ^ (1 / (A123932 n : ℝ))) ^ 2

end

end A248168.P5726788026577635728

/-! ## A248168.P5433941677549233287

`root(A248167(n), A036453(n+1))`
-/

namespace A248168.P5433941677549233287
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A248167 n : ℝ) ^ (1 / (A036453 (n + 1) : ℝ))

end

end A248168.P5433941677549233287

/-!
# A248169: G.f.: AGM( (1-x)/(1+x), (1+3*x)/(1-3*x) ).

The programs for A248169, there is no canonical definition to state claims against.
-/

/-! ## A248169.P15917150440725148531

`A373226(A013025(n))`
-/

namespace A248169.P15917150440725148531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373226 (A013025 n).toNat

end

end A248169.P15917150440725148531

/-! ## A248169.P9880327705520913124

`∩[A095698(n+1), A373226(n)]`
-/

namespace A248169.P9880327705520913124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373226 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248169.P9880327705520913124

/-!
# A248170: Nonnegative integer whose square is the closest square to prime(n).

The programs for A248170, the canonical program `A248170.P13308943850553376554` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248170 has offset 1).

The definition of A248170 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246934, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A248170.P13308943850553376554

`sqrt(A246934(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A248170

/-- `sqrt(A246934(n+1))` -/
def P13308943850553376554.Spec : Prop :=
  ∀ n, P13308943850553376554.a n = (A248170 (n + 1) : ℝ)

end A248170

/-! ## A248170.P10678005254456044928

`round(sqrt(Δ[A007504(n)]))`
-/

namespace A248170.P10678005254456044928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (n + 1) - f1 n : ℝ))

end

end A248170.P10678005254456044928

namespace A248170

/-- `round(sqrt(Δ[A007504(n)]))` -/
def P10678005254456044928.Spec : Prop :=
  ∀ n, P10678005254456044928.a n = A248170 (n + 1)

end A248170

/-! ## A248170.P11003112962392061293

`ceil(sqrt(A112045(n+1)))`
-/

namespace A248170.P11003112962392061293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A112045 (n + 1) : ℝ)⌉

end

end A248170.P11003112962392061293

namespace A248170

/-- `ceil(sqrt(A112045(n+1)))` -/
def P11003112962392061293.Spec : Prop :=
  ∀ n, P11003112962392061293.a n = A248170 (n + 1)

end A248170

/-! ## A248170.P669030119068836890

`round(sqrt(A000040(n+1)))`
-/

namespace A248170.P669030119068836890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A000040 (n + 1) : ℝ))

end

end A248170.P669030119068836890

namespace A248170

/-- `round(sqrt(A000040(n+1)))` -/
def P669030119068836890.Spec : Prop :=
  ∀ n, P669030119068836890.a n = A248170 (n + 1)

end A248170

/-! ## A248170.P15553685363404497600

`round(sqrt(A006005(n+1)))`
-/

namespace A248170.P15553685363404497600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A006005 (n + 1) : ℝ))

end

end A248170.P15553685363404497600

namespace A248170

/-- `round(sqrt(A006005(n+1)))` -/
def P15553685363404497600.Spec : Prop :=
  ∀ n, P15553685363404497600.a n = A248170 (n + 1)

end A248170

/-! ## A248170.P16980094323635092285

`round(sqrt(A055670(n+1)))`
-/

namespace A248170.P16980094323635092285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A055670 (n + 1) : ℝ))

end

end A248170.P16980094323635092285

namespace A248170

/-- `round(sqrt(A055670(n+1)))` -/
def P16980094323635092285.Spec : Prop :=
  ∀ n, P16980094323635092285.a n = A248170 (n + 1)

end A248170

/-! ## A248170.P1131024446309481064

`round(sqrt(A318871(n+1)))`
-/

namespace A248170.P1131024446309481064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A318871 (n + 1) : ℝ))

end

end A248170.P1131024446309481064

namespace A248170

/-- `round(sqrt(A318871(n+1)))` -/
def P1131024446309481064.Spec : Prop :=
  ∀ n, P1131024446309481064.a n = A248170 (n + 1)

end A248170

/-! ## A248170.P14002075181974098943

`floor(A247485(n+1)/2)`
-/

namespace A248170.P14002075181974098943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A247485 (n + 1) : ℚ) / 2⌋

end

end A248170.P14002075181974098943

namespace A248170

/-- `floor(A247485(n+1)/2)` -/
def P14002075181974098943.Spec : Prop :=
  ∀ n, P14002075181974098943.a n = A248170 (n + 1)

end A248170

/-! ## A248170.P16818791187964729974

`round(sqrt(sqrt(A001248(n+1))))`
-/

namespace A248170.P16818791187964729974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (A001248 (n + 1) : ℝ)))

end

end A248170.P16818791187964729974

namespace A248170

/-- `round(sqrt(sqrt(A001248(n+1))))` -/
def P16818791187964729974.Spec : Prop :=
  ∀ n, P16818791187964729974.a n = A248170 (n + 1)

end A248170

/-! ## A248170.P14423918836785223397

`round(sqrt(sqrt(A049001(n+1))))`
-/

namespace A248170.P14423918836785223397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (A049001 (n + 1) : ℝ)))

end

end A248170.P14423918836785223397

namespace A248170

/-- `round(sqrt(sqrt(A049001(n+1))))` -/
def P14423918836785223397.Spec : Prop :=
  ∀ n, P14423918836785223397.a n = A248170 (n + 1)

end A248170

/-! ## A248170.P10322330574432307862

`round(sqrt(sqrt(A054270(n+1))))`
-/

namespace A248170.P10322330574432307862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (A054270 (n + 1) : ℝ)))

end

end A248170.P10322330574432307862

namespace A248170

/-- `round(sqrt(sqrt(A054270(n+1))))` -/
def P10322330574432307862.Spec : Prop :=
  ∀ n, P10322330574432307862.a n = A248170 (n + 1)

end A248170

/-! ## A248170.P4401829704856081317

`A004526(A247485(n+1))`
-/

namespace A248170.P4401829704856081317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A247485 (n + 1)).toNat

end

end A248170.P4401829704856081317

namespace A248170

/-- `A004526(A247485(n+1))` -/
def P4401829704856081317.Spec : Prop :=
  ∀ n, P4401829704856081317.a n = A248170 (n + 1)

end A248170

/-! ## A248170.P12413193012553679899

`A247485(n+1)-A104103(n+1)`
-/

namespace A248170.P12413193012553679899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247485 (n + 1) - A104103 (n + 1)

end

end A248170.P12413193012553679899

namespace A248170

/-- `A247485(n+1)-A104103(n+1)` -/
def P12413193012553679899.Spec : Prop :=
  ∀ n, P12413193012553679899.a n = A248170 (n + 1)

end A248170

/-! ## A248170.P539922375682041847

`A000006(n+1)+A247485(n+1)-A117767(n+1)`
-/

namespace A248170.P539922375682041847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (n + 1) + (A247485 (n + 1) - A117767 (n + 1))

end

end A248170.P539922375682041847

namespace A248170

/-- `A000006(n+1)+A247485(n+1)-A117767(n+1)` -/
def P539922375682041847.Spec : Prop :=
  ∀ n, P539922375682041847.a n = A248170 (n + 1)

end A248170

/-! ## A248170.P5031537568753461623

`A362570(n+1)-(A247485(n+1)+A000006(n+1))`
-/

namespace A248170.P5031537568753461623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362570 (n + 1) - (A247485 (n + 1) + A000006 (n + 1))

end

end A248170.P5031537568753461623

namespace A248170

/-- `A362570(n+1)-(A247485(n+1)+A000006(n+1))` -/
def P5031537568753461623.Spec : Prop :=
  ∀ n, P5031537568753461623.a n = A248170 (n + 1)

end A248170

/-! ## A248170.P9850097146678138287

`round(sqrt(A008578(n+2)))`
-/

namespace A248170.P9850097146678138287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A008578 (n + 2) : ℝ))

end

end A248170.P9850097146678138287

namespace A248170

/-- `round(sqrt(A008578(n+2)))` -/
def P9850097146678138287.Spec : Prop :=
  ∀ n, P9850097146678138287.a n = A248170 (n + 1)

end A248170

/-! ## A248170.P4905915747735604142

`round(sqrt(A182986(n+2)))`
-/

namespace A248170.P4905915747735604142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A182986 (n + 2) : ℝ))

end

end A248170.P4905915747735604142

namespace A248170

/-- `round(sqrt(A182986(n+2)))` -/
def P4905915747735604142.Spec : Prop :=
  ∀ n, P4905915747735604142.a n = A248170 (n + 1)

end A248170

/-! ## A248170.P10724620968679880748

`round(sqrt(Δ[A014284(n+1)]))`
-/

namespace A248170.P10724620968679880748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (n + 1) - f1 n : ℝ))

end

end A248170.P10724620968679880748

namespace A248170

/-- `round(sqrt(Δ[A014284(n+1)]))` -/
def P10724620968679880748.Spec : Prop :=
  ∀ n, P10724620968679880748.a n = A248170 (n + 1)

end A248170

/-! ## A248170.P6380619869185601407

`round(sqrt(Δ[A036439(n+1)]))`
-/

namespace A248170.P6380619869185601407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (n + 1) - f1 n : ℝ))

end

end A248170.P6380619869185601407

namespace A248170

/-- `round(sqrt(Δ[A036439(n+1)]))` -/
def P6380619869185601407.Spec : Prop :=
  ∀ n, P6380619869185601407.a n = A248170 (n + 1)

end A248170

/-! ## A248170.P5127833747019494614

`round(record[sqrt(A006530(n+2))])`
-/

namespace A248170.P5127833747019494614
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A006530 (n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A248170.P5127833747019494614

namespace A248170

/-- `round(record[sqrt(A006530(n+2))])` -/
def P5127833747019494614.Spec : Prop :=
  ∀ n, P5127833747019494614.a n = A248170 (n + 1)

end A248170

/-!
# A248173: Primes equal to 3 or congruent to 2 mod 3 that satisfy (1+a^p) == (1+a)^p (mod p^2) for all a between (p-3)/2.

The programs for A248173, there is no canonical definition to state claims against.
-/

/-! ## A248173.P14517542707365279742

`p?[gcd(A006005(n+1), A320535(n+1))]`
-/

namespace A248173.P14517542707365279742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006005 (n + 1)) (A320535 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A248173.P14517542707365279742

/-! ## A248173.P11690808119278061674

`p?[A033630(n)*A047271(n+2)]`
-/

namespace A248173.P11690808119278061674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 n * A047271 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A248173.P11690808119278061674

/-! ## A248173.P16487433597137169205

`record[A020639(A033630(n)*A047271(n+2))]`
-/

namespace A248173.P16487433597137169205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A033630 n * A047271 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248173.P16487433597137169205

/-! ## A248173.P5622462797201855620

`record[A014963(A033630(n)*A047271(n+2))]`
-/

namespace A248173.P5622462797201855620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A033630 n * A047271 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248173.P5622462797201855620

/-! ## A248173.P14649620309290622779

`record[A014973(A033630(n)*A047271(n+2))]`
-/

namespace A248173.P14649620309290622779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014973 (A033630 n * A047271 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248173.P14649620309290622779

/-!
# A248174: 2-adic order of the tribonacci sequence.

The programs for A248174, the canonical program `A248174.P9188236423284516112` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248174 has offset 1).

The definition of A248174 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A248174.P9188236423284516112

`A007814(A000073(n+2))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A248174

/-- `A007814(A000073(n+2))` -/
def P9188236423284516112.Spec : Prop :=
  ∀ n, P9188236423284516112.a n = A248174 (n + 1)

theorem P9188236423284516112.correct : P9188236423284516112.Spec := by
  intro n
  simp only [A248174, Nat.add_sub_cancel]

end A248174

/-! ## A248174.P9960539759282266398

`val(A089068(n)+1, 2)`
-/

namespace A248174.P9960539759282266398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A089068 n + 1).toNat 2

end

end A248174.P9960539759282266398

namespace A248174

/-- `val(A089068(n)+1, 2)` -/
def P9960539759282266398.Spec : Prop :=
  ∀ n, (P9960539759282266398.a n : ℤ) = A248174 (n + 1)

end A248174

/-! ## A248174.P13695187714987132057

`val(∑[A001590(n+1)], 2)`
-/

namespace A248174.P13695187714987132057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A248174.P13695187714987132057

namespace A248174

/-- `val(∑[A001590(n+1)], 2)` -/
def P13695187714987132057.Spec : Prop :=
  ∀ n, (P13695187714987132057.a n : ℤ) = A248174 (n + 1)

end A248174

/-! ## A248174.P10976807081042398264

`val(A213816(2*n+1), 2)`
-/

namespace A248174.P10976807081042398264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A213816 (2 * n + 1)).toNat 2

end

end A248174.P10976807081042398264

namespace A248174

/-- `val(A213816(2*n+1), 2)` -/
def P10976807081042398264.Spec : Prop :=
  ∀ n, (P10976807081042398264.a n : ℤ) = A248174 (n + 1)

end A248174

/-! ## A248174.P5037784512477384252

`val(Δ[A008937(n)], 2)`
-/

namespace A248174.P5037784512477384252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A248174.P5037784512477384252

namespace A248174

/-- `val(Δ[A008937(n)], 2)` -/
def P5037784512477384252.Spec : Prop :=
  ∀ n, (P5037784512477384252.a n : ℤ) = A248174 (n + 1)

end A248174

/-! ## A248174.P6439617971337571284

`val(A214825(n)-A020992(n), 2)`
-/

namespace A248174.P6439617971337571284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A214825 n - A020992 n).toNat 2

end

end A248174.P6439617971337571284

namespace A248174

/-- `val(A214825(n)-A020992(n), 2)` -/
def P6439617971337571284.Spec : Prop :=
  ∀ n, (P6439617971337571284.a n : ℤ) = A248174 (n + 1)

end A248174

/-! ## A248174.P17838482256700363957

`val(A008937(n+1)-A008937(n), 2)`
-/

namespace A248174.P17838482256700363957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008937 (n + 1) - A008937 n).toNat 2

end

end A248174.P17838482256700363957

namespace A248174

/-- `val(A008937(n+1)-A008937(n), 2)` -/
def P17838482256700363957.Spec : Prop :=
  ∀ n, (P17838482256700363957.a n : ℤ) = A248174 (n + 1)

end A248174

/-! ## A248174.P10440532972567745456

`val(Δ[(A000213(n+2)-1)/2], 2)`
-/

namespace A248174.P10440532972567745456
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000213 (n + 2) - 1 : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat 2

end

end A248174.P10440532972567745456

namespace A248174

/-- `val(Δ[(A000213(n+2)-1)/2], 2)` -/
def P10440532972567745456.Spec : Prop :=
  ∀ n, (P10440532972567745456.a n : ℤ) = A248174 (n + 1)

end A248174

/-! ## A248174.P9829444871840439159

`val(A214899(n+1)+A141036(n), 2)`
-/

namespace A248174.P9829444871840439159
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A214899 (n + 1) + A141036 n).toNat 2

end

end A248174.P9829444871840439159

namespace A248174

/-- `val(A214899(n+1)+A141036(n), 2)` -/
def P9829444871840439159.Spec : Prop :=
  ∀ n, (P9829444871840439159.a n : ℤ) = A248174 (n + 1)

end A248174

/-! ## A248174.P1015449326481523489

`val(A214899(n+2)-A100683(n), 2)`
-/

namespace A248174.P1015449326481523489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A214899 (n + 2) - A100683 n).toNat 2

end

end A248174.P1015449326481523489

namespace A248174

/-- `val(A214899(n+2)-A100683(n), 2)` -/
def P1015449326481523489.Spec : Prop :=
  ∀ n, (P1015449326481523489.a n : ℤ) = A248174 (n + 1)

end A248174

/-! ## A248174.P16431722663488219599

`val(A214825(n+1)+A100683(n+1), 2)`
-/

namespace A248174.P16431722663488219599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A214825 (n + 1) + A100683 (n + 1)).toNat 2

end

end A248174.P16431722663488219599

namespace A248174

/-- `val(A214825(n+1)+A100683(n+1), 2)` -/
def P16431722663488219599.Spec : Prop :=
  ∀ n, (P16431722663488219599.a n : ℤ) = A248174 (n + 1)

end A248174

/-! ## A248174.P3882868428618551708

`val(A135491(n+1)-A020992(n+2), 2)`
-/

namespace A248174.P3882868428618551708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A135491 (n + 1) - A020992 (n + 2)).toNat 2

end

end A248174.P3882868428618551708

namespace A248174

/-- `val(A135491(n+1)-A020992(n+2), 2)` -/
def P3882868428618551708.Spec : Prop :=
  ∀ n, (P3882868428618551708.a n : ℤ) = A248174 (n + 1)

end A248174

/-! ## A248174.P12906582943418688903

`val(Δ[A248098(n+3)], 2)`
-/

namespace A248174.P12906582943418688903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248098 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A248174.P12906582943418688903

namespace A248174

/-- `val(Δ[A248098(n+3)], 2)` -/
def P12906582943418688903.Spec : Prop :=
  ∀ n, (P12906582943418688903.a n : ℤ) = A248174 (n + 1)

end A248174

/-! ## A248174.P5132773619266888061

`val(Δ[A027115(n)-A027129(n)], 2)`
-/

namespace A248174.P5132773619266888061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027115 n - A027129 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A248174.P5132773619266888061

namespace A248174

/-- `val(Δ[A027115(n)-A027129(n)], 2)` -/
def P5132773619266888061.Spec : Prop :=
  ∀ n, (P5132773619266888061.a n : ℤ) = A248174 (n + 1)

end A248174

/-! ## A248174.P11362945363114842854

`val(A200543(n), 2)`
-/

namespace A248174.P11362945363114842854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A200543 n).toNat 2

end

end A248174.P11362945363114842854

namespace A248174

/-- `val(A200543(n), 2)` -/
def P11362945363114842854.Spec : Prop :=
  ∀ n, (P11362945363114842854.a n : ℤ) = A248174 (n + 1)

end A248174

/-! ## A248174.P13922497512632054287

`val(A085697(n+2), 4)`
-/

namespace A248174.P13922497512632054287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A085697 (n + 2)).toNat 4

end

end A248174.P13922497512632054287

namespace A248174

/-- `val(A085697(n+2), 4)` -/
def P13922497512632054287.Spec : Prop :=
  ∀ n, (P13922497512632054287.a n : ℤ) = A248174 (n + 1)

end A248174

/-! ## A248174.P11537973705600217237

`val(A079986(2*n), 4)`
-/

namespace A248174.P11537973705600217237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A079986 (2 * n)).toNat 4

end

end A248174.P11537973705600217237

namespace A248174

/-- `val(A079986(2*n), 4)` -/
def P11537973705600217237.Spec : Prop :=
  ∀ n, (P11537973705600217237.a n : ℤ) = A248174 (n + 1)

end A248174

/-! ## A248174.P17706274774153163709

`val(Δ[A107239(n+1)], 4)`
-/

namespace A248174.P17706274774153163709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107239 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 4

end

end A248174.P17706274774153163709

namespace A248174

/-- `val(Δ[A107239(n+1)], 4)` -/
def P17706274774153163709.Spec : Prop :=
  ∀ n, (P17706274774153163709.a n : ℤ) = A248174 (n + 1)

end A248174

/-!
# A248176: Decimal expansion of psi(-1/2).

The programs for A248176, there is no canonical definition to state claims against.
-/

/-! ## A248176.P966312444865530476

`9-A020759(n+1)`
-/

namespace A248176.P966312444865530476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A020759 (n + 1 + 1)

end

end A248176.P966312444865530476

/-!
# A248178: Least k such that r - sum{1/F(h), h = 1..k} < 1/2^(n+1), where F(n) = A000045(n) (Fibonacci numbers) and r = sum{1/F(n), h = 1..infinity}.

The programs for A248178, there is no canonical definition to state claims against.
-/

/-! ## A248178.P17239901896324544527

`∑[A052005(n+2)]+4`
-/

namespace A248178.P17239901896324544527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052005 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A248178.P17239901896324544527

/-! ## A248178.P15141573238802308926

`A020705(∑[A052005(n+2)])`
-/

namespace A248178.P15141573238802308926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052005 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A248178.P15141573238802308926

/-! ## A248178.P9768299277737854127

`A072633(n)%A155469(n+1)+5`
-/

namespace A248178.P9768299277737854127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072633 n) (A155469 (n + 1)) + 5

end

end A248178.P9768299277737854127

/-! ## A248178.P7887908647290644722

`A332101(n)+A010702(A020174(n+1))`
-/

namespace A248178.P7887908647290644722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332101 n + A010702 (A020174 (n + 1)).toNat

end

end A248178.P7887908647290644722

/-! ## A248178.P1560553269341870623

`A332101(n)+A040002(A155469(n+1))`
-/

namespace A248178.P1560553269341870623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332101 n + A040002 (A155469 (n + 1)).toNat

end

end A248178.P1560553269341870623

/-! ## A248178.P6667810169340410363

`A332101(n)+A040002(A328603(n+1))`
-/

namespace A248178.P6667810169340410363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332101 n + A040002 (A328603 (n + 1)).toNat

end

end A248178.P6667810169340410363

/-!
# A248180: Least k such that r - sum{1/C(2h+1,h), h = 0..k} < 1/2^n, where r = (2/27)*(9 + 2*sqrt(3)*Pi).

The programs for A248180, there is no canonical definition to state claims against.
-/

/-! ## A248180.P7415828837741335000

`∑[1-char[A248195(n)]]`
-/

namespace A248180.P7415828837741335000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248195 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248180.P7415828837741335000

/-! ## A248180.P6615822145575683132

`∑[char[A248196(n)]]+1`
-/

namespace A248180.P6615822145575683132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248196 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A248180.P6615822145575683132

/-! ## A248180.P10633513943165866230

`A008621(∑[4*char[A248196(n)]])`
-/

namespace A248180.P10633513943165866230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248196 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248180.P10633513943165866230

/-! ## A248180.P9218899767997240011

`A008624(∑[4*char[A248196(n)]])`
-/

namespace A248180.P9218899767997240011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248196 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248180.P9218899767997240011

/-! ## A248180.P713019592616692479

`A008679(3*∑[4*char[A248196(n)]])`
-/

namespace A248180.P713019592616692479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248196 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (3 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A248180.P713019592616692479

/-! ## A248180.P4367836833582254846

`A204551(A301031(n))`
-/

namespace A248180.P4367836833582254846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204551 (A301031 n).toNat

end

end A248180.P4367836833582254846

/-! ## A248180.P6157060539278900122

`A300287(A022940(n+1))`
-/

namespace A248180.P6157060539278900122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300287 (A022940 (n + 1)).toNat

end

end A248180.P6157060539278900122

/-! ## A248180.P9152707401344818879

`A300287(A022941(n+1))`
-/

namespace A248180.P9152707401344818879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300287 (A022941 (n + 1)).toNat

end

end A248180.P9152707401344818879

/-!
# A248181: Decimal expansion of Sum_{h >= 0} 1/binomial(h, floor(h/2)).

The programs for A248181, there is no canonical definition to state claims against.
-/

/-! ## A248181.P7151691163026169150

`A248897(n)+2*A000007(n)`
-/

namespace A248181.P7151691163026169150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248897 (n + 1) + 2 * A000007 n

end

end A248181.P7151691163026169150

/-! ## A248181.P17257027499376200670

`lcm(A248897(n), A260196(n+1))`
-/

namespace A248181.P17257027499376200670
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A248897 (n + 1)) (A260196 (n + 1))

end

end A248181.P17257027499376200670

/-! ## A248181.P1032988446148544243

`A248897(A028310(n))+A000007(n)`
-/

namespace A248181.P1032988446148544243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248897 ((A028310 n).toNat + 1) + A000007 n

end

end A248181.P1032988446148544243

/-! ## A248181.P4546954598047658902

`or(A248897(A028310(n)), A248897(n))`
-/

namespace A248181.P4546954598047658902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A248897 ((A028310 n).toNat + 1)) (A248897 (n + 1))

end

end A248181.P4546954598047658902

/-! ## A248181.P151587596861409661

`A248897(n)-(A260196(A001316(n))+1)`
-/

namespace A248181.P151587596861409661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248897 (n + 1) - (A260196 (A001316 n).toNat + 1)

end

end A248181.P151587596861409661

/-! ## A248181.P10061630049320363115

`A248897(A000007(n)+n)+A000007(n)`
-/

namespace A248181.P10061630049320363115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248897 ((A000007 n + (n : ℤ)).toNat + 1) + A000007 n

end

end A248181.P10061630049320363115

/-! ## A248181.P8976701475682748553

`A248897(n)+A000122(n+1)*A000122(n)`
-/

namespace A248181.P8976701475682748553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248897 (n + 1) + A000122 (n + 1) * A000122 n

end

end A248181.P8976701475682748553

/-! ## A248181.P16135615324801418411

`A014963(A306771(n+1))*A248897(n)`
-/

namespace A248181.P16135615324801418411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A306771 (n + 1)).toNat * A248897 (n + 1)

end

end A248181.P16135615324801418411

/-! ## A248181.P10655960241663669058

`A248897(n)+A132440(A014574(n+1))`
-/

namespace A248181.P10655960241663669058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248897 (n + 1) + A132440 (A014574 (n + 1)).toNat

end

end A248181.P10655960241663669058

/-!
# A248182: Least k such that r - sum{1/C(h,[h/2]), h = 0..k} < 1/2^n, where r = sum{1/C(h,[h/2]), h = 0..infinity}.

The programs for A248182, the canonical program `A248182.P1090691532343411276` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248182 has offset 0).

The definition of A248182 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248182.P1090691532343411276

`comp[4*a(n-1)+n+n]` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A248182

/-- `comp[4*a(n-1)+n+n]` -/
def P1090691532343411276.Spec : Prop :=
  ∀ n, (P1090691532343411276.a n : ℤ) = A248182 n

theorem P1090691532343411276.correct : P1090691532343411276.Spec := by
  intro n
  simp only [A248182]

end A248182

/-! ## A248182.P16115922577255517927

`comp[3*n-(n-4*a(n-1))]` with `a(0)=0, a(1)=1`
-/

namespace A248182.P16115922577255517927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (3 * n : ℤ) - ((n : ℤ) - 4 * f1 (n - 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A248182.P16115922577255517927

namespace A248182

/-- `comp[3*n-(n-4*a(n-1))]` -/
def P16115922577255517927.Spec : Prop :=
  ∀ n, (P16115922577255517927.a n : ℤ) = A248182 n

end A248182

/-! ## A248182.P6992371581829820121

`comp[A295062(n)-∑[2^n]]`
-/

namespace A248182.P6992371581829820121
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295062 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A248182.P6992371581829820121

namespace A248182

/-- `comp[A295062(n)-∑[2^n]]` -/
def P6992371581829820121.Spec : Prop :=
  ∀ n, (P6992371581829820121.a n : ℤ) = A248182 n

end A248182

/-! ## A248182.P368178526407068786

`A055642(A096304(n+1))+n+1`
-/

namespace A248182.P368178526407068786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A096304 (n + 1)).toNat + (n + 1 : ℤ)

end

end A248182.P368178526407068786

namespace A248182

/-- `A055642(A096304(n+1))+n+1` -/
def P368178526407068786.Spec : Prop :=
  ∀ n, P368178526407068786.a n = A248182 n

end A248182

/-! ## A248182.P7667068352879366254

`∑{digits}[A096304(n+1), A000120(A001316(#))]+n+1`
-/

namespace A248182.P7667068352879366254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000120 (A001316 x).toNat).sum + (n + 1 : ℤ)

end

end A248182.P7667068352879366254

namespace A248182

/-- `∑{digits}[A096304(n+1), A000120(A001316(#))]+n+1` -/
def P7667068352879366254.Spec : Prop :=
  ∀ n, P7667068352879366254.a n = A248182 n

end A248182

/-! ## A248182.P16663679073832342031

`lt[A296339(A246378(2*(n+1))), A259153(2*n)]`
-/

namespace A248182.P16663679073832342031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296339 (A246378 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A248182.P16663679073832342031

namespace A248182

/-- `lt[A296339(A246378(2*(n+1))), A259153(2*n)]` -/
def P16663679073832342031.Spec : Prop :=
  ∀ n, (P16663679073832342031.a n : ℤ) = A248182 n

end A248182

/-! ## A248182.P1417474681052555526

`record[A185585(n)-A014790(n)]`
-/

namespace A248182.P1417474681052555526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185585 n - A014790 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248182.P1417474681052555526

namespace A248182

/-- `record[A185585(n)-A014790(n)]` -/
def P1417474681052555526.Spec : Prop :=
  ∀ n, P1417474681052555526.a n = A248182 n

end A248182

/-! ## A248182.P17687877616171466405

`A004218(A303541(5*n+14))+n`
-/

namespace A248182.P17687877616171466405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A303541 (5 * n + 14)).toNat + (n : ℤ)

end

end A248182.P17687877616171466405

namespace A248182

/-- `A004218(A303541(5*n+14))+n` -/
def P17687877616171466405.Spec : Prop :=
  ∀ n, P17687877616171466405.a n = A248182 n

end A248182

/-! ## A248182.P231685249872010578

`A055642(A228083(∑[n-1]+2))+n+1`
-/

namespace A248182.P231685249872010578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A228083 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat).toNat + (n + 1 : ℤ)

end

end A248182.P231685249872010578

namespace A248182

/-- `A055642(A228083(∑[n-1]+2))+n+1` -/
def P231685249872010578.Spec : Prop :=
  ∀ n, P231685249872010578.a n = A248182 n

end A248182

/-! ## A248182.P9249733787943508829

`A000196(A095791(∑[n])+3)+n`
-/

namespace A248182.P9249733787943508829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A095791 (∑ j ∈ Finset.range (n + 1), f1 j) + 3).toNat + (n : ℤ)

end

end A248182.P9249733787943508829

namespace A248182

/-- `A000196(A095791(∑[n])+3)+n` -/
def P9249733787943508829.Spec : Prop :=
  ∀ n, P9249733787943508829.a n = A248182 n

end A248182

/-! ## A248182.P12132613843787130966

`A097944(A000196(∑[n])+1)+1+n`
-/

namespace A248182.P12132613843787130966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097944 (A000196 (∑ j ∈ Finset.range (n + 1), f1 j) + 1).toNat + 1 + (n : ℤ)

end

end A248182.P12132613843787130966

namespace A248182

/-- `A097944(A000196(∑[n])+1)+1+n` -/
def P12132613843787130966.Spec : Prop :=
  ∀ n, P12132613843787130966.a n = A248182 n

end A248182

/-! ## A248182.P14630594964271961751

`A032545(n+1)+A003056(A027379(n)+A003056(n))`
-/

namespace A248182.P14630594964271961751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032545 (n + 1) + A003056 (A027379 n + A003056 n).toNat

end

end A248182.P14630594964271961751

namespace A248182

/-- `A032545(n+1)+A003056(A027379(n)+A003056(n))` -/
def P14630594964271961751.Spec : Prop :=
  ∀ n, P14630594964271961751.a n = A248182 n

end A248182

/-! ## A248182.P3198304028416350782

`lt[1, A005811(A325096(2*n))]`
-/

namespace A248182.P3198304028416350782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A325096 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A248182.P3198304028416350782

namespace A248182

/-- `lt[1, A005811(A325096(2*n))]` -/
def P3198304028416350782.Spec : Prop :=
  ∀ n, (P3198304028416350782.a n : ℤ) = A248182 n

end A248182

/-! ## A248182.P11597671518738130906

`∑[A035214(∑[A116966(n)+9])]`
-/

namespace A248182.P11597671518738130906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 n + 9

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248182.P11597671518738130906

namespace A248182

/-- `∑[A035214(∑[A116966(n)+9])]` -/
def P11597671518738130906.Spec : Prop :=
  ∀ n, P11597671518738130906.a n = A248182 n

end A248182

/-! ## A248182.P9242013024972163551

`A004218(A005278(n+1)+∑[n+1])+n`
-/

namespace A248182.P9242013024972163551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A005278 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat + (n : ℤ)

end

end A248182.P9242013024972163551

namespace A248182

/-- `A004218(A005278(n+1)+∑[n+1])+n` -/
def P9242013024972163551.Spec : Prop :=
  ∀ n, P9242013024972163551.a n = A248182 n

end A248182

/-! ## A248182.P13807720384224302328

`∑[A003982(A047234(n+1)²)+1]`
-/

namespace A248182.P13807720384224302328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (A047234 (n + 1) ^ 2).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248182.P13807720384224302328

namespace A248182

/-- `∑[A003982(A047234(n+1)²)+1]` -/
def P13807720384224302328.Spec : Prop :=
  ∀ n, P13807720384224302328.a n = A248182 n

end A248182

/-! ## A248182.P12841843795632975737

`A055642(A296096(n+1)+∑[n+1])+n`
-/

namespace A248182.P12841843795632975737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A296096 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat + (n : ℤ)

end

end A248182.P12841843795632975737

namespace A248182

/-- `A055642(A296096(n+1)+∑[n+1])+n` -/
def P12841843795632975737.Spec : Prop :=
  ∀ n, P12841843795632975737.a n = A248182 n

end A248182

/-! ## A248182.P4250939684089180107

`A143824(A143824(A003004(n+2)))+n`
-/

namespace A248182.P4250939684089180107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143824 (A143824 (A003004 (n + 2)).toNat).toNat + (n : ℤ)

end

end A248182.P4250939684089180107

namespace A248182

/-- `A143824(A143824(A003004(n+2)))+n` -/
def P4250939684089180107.Spec : Prop :=
  ∀ n, P4250939684089180107.a n = A248182 n

end A248182

/-! ## A248182.P5467404171588174292

`A213598(∑[A073424(n²)])+n+1`
-/

namespace A248182.P5467404171588174292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n + 1 : ℤ)

end

end A248182.P5467404171588174292

namespace A248182

/-- `A213598(∑[A073424(n²)])+n+1` -/
def P5467404171588174292.Spec : Prop :=
  ∀ n, P5467404171588174292.a n = A248182 n

end A248182

/-!
# A248183: Least k such that 1/4 - Sum_{h = 1..k} 1/(h*(h+1)*(h+2)) < 1/n^2.

The programs for A248183, the canonical program `A248183.P9609418635540790916` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248183 has offset 1).

The definition of A248183 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248183.P14997563023893437944

`round(sqrt((1-n/sqrt(2))²+n))`
-/

namespace A248183.P14997563023893437944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((1 - (n : ℝ) / Real.sqrt (2 : ℝ)) ^ 2 + (n : ℝ)))

end

end A248183.P14997563023893437944

namespace A248183

/-- `round(sqrt((1-n/sqrt(2))²+n))` -/
def P14997563023893437944.Spec : Prop :=
  ∀ n, P14997563023893437944.a n = A248183 (n + 1)

end A248183

/-! ## A248183.P2884618008111243138

`floor(sqrt((n+1)²/2-a(n-1)))` with `a(0)=1`
-/

namespace A248183.P2884618008111243138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊Real.sqrt (((n + 1) ^ 2 : ℚ) / 2 - (a (n - 1) : ℚ) : ℝ)⌋

end

end A248183.P2884618008111243138

namespace A248183

/-- `floor(sqrt((n+1)²/2-a(n-1)))` -/
def P2884618008111243138.Spec : Prop :=
  ∀ n, P2884618008111243138.a n = A248183 (n + 1)

end A248183

/-! ## A248183.P9609418635540790916

`floor(sqrt(A194920(n+1)+A000982(n)))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A248183

/-- `floor(sqrt(A194920(n+1)+A000982(n)))` -/
def P9609418635540790916.Spec : Prop :=
  ∀ n, P9609418635540790916.a n = A248183 (n + 1)

theorem P9609418635540790916.correct : P9609418635540790916.Spec := by
  intro n
  simp only [A248183, Nat.add_sub_cancel]

end A248183

/-! ## A248183.P3456468546168557145

`floor(sqrt(A000124(n)-A070098(n+1)))`
-/

namespace A248183.P3456468546168557145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000124 n - A070098 (n + 1))

end

end A248183.P3456468546168557145

namespace A248183

/-- `floor(sqrt(A000124(n)-A070098(n+1)))` -/
def P3456468546168557145.Spec : Prop :=
  ∀ n, P3456468546168557145.a n = A248183 (n + 1)

end A248183

/-! ## A248183.P4753764488736870096

`floor(sqrt(A000124(n)-A229118(n+1)))`
-/

namespace A248183.P4753764488736870096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000124 n - A229118 (n + 1))

end

end A248183.P4753764488736870096

namespace A248183

/-- `floor(sqrt(A000124(n)-A229118(n+1)))` -/
def P4753764488736870096.Spec : Prop :=
  ∀ n, P4753764488736870096.a n = A248183 (n + 1)

end A248183

/-! ## A248183.P9944074653264820191

`A003056(A076921(n+1))`
-/

namespace A248183.P9944074653264820191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A076921 (n + 1)).toNat

end

end A248183.P9944074653264820191

namespace A248183

/-- `A003056(A076921(n+1))` -/
def P9944074653264820191.Spec : Prop :=
  ∀ n, P9944074653264820191.a n = A248183 (n + 1)

end A248183

/-! ## A248183.P14395587804293502313

`A003056(ceil(A267874(n)/4))`
-/

namespace A248183.P14395587804293502313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ⌈(A267874 n : ℚ) / 4⌉.toNat

end

end A248183.P14395587804293502313

namespace A248183

/-- `A003056(ceil(A267874(n)/4))` -/
def P14395587804293502313.Spec : Prop :=
  ∀ n, P14395587804293502313.a n = A248183 (n + 1)

end A248183

/-! ## A248183.P9069706173646056834

`A003056(A184674(n+1)-n)`
-/

namespace A248183.P9069706173646056834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A184674 (n + 1) - (n : ℤ)).toNat

end

end A248183.P9069706173646056834

namespace A248183

/-- `A003056(A184674(n+1)-n)` -/
def P9069706173646056834.Spec : Prop :=
  ∀ n, P9069706173646056834.a n = A248183 (n + 1)

end A248183

/-! ## A248183.P12785732810991905940

`A028310(A003056(∑[ceil(n/2)]))`
-/

namespace A248183.P12785732810991905940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A248183.P12785732810991905940

namespace A248183

/-- `A028310(A003056(∑[ceil(n/2)]))` -/
def P12785732810991905940.Spec : Prop :=
  ∀ n, P12785732810991905940.a n = A248183 (n + 1)

end A248183

/-! ## A248183.P6135680187681096043

`A003056(A008642(A004275(n)))`
-/

namespace A248183.P6135680187681096043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A008642 (A004275 n).toNat).toNat

end

end A248183.P6135680187681096043

namespace A248183

/-- `A003056(A008642(A004275(n)))` -/
def P6135680187681096043.Spec : Prop :=
  ∀ n, P6135680187681096043.a n = A248183 (n + 1)

end A248183

/-! ## A248183.P15079944486575491411

`A003056(A173151(A004273(n)))`
-/

namespace A248183.P15079944486575491411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A173151 (A004273 n).toNat).toNat

end

end A248183.P15079944486575491411

namespace A248183

/-- `A003056(A173151(A004273(n)))` -/
def P15079944486575491411.Spec : Prop :=
  ∀ n, P15079944486575491411.a n = A248183 (n + 1)

end A248183

/-! ## A248183.P3992928775866107450

`A003056(A056942(∑[A008624(n)]))`
-/

namespace A248183.P3992928775866107450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A056942 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A248183.P3992928775866107450

namespace A248183

/-- `A003056(A056942(∑[A008624(n)]))` -/
def P3992928775866107450.Spec : Prop :=
  ∀ n, P3992928775866107450.a n = A248183 (n + 1)

end A248183

/-! ## A248183.P5613925542724202286

`A003056(A065033(n)+A002620(n))`
-/

namespace A248183.P5613925542724202286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A065033 n + A002620 n).toNat

end

end A248183.P5613925542724202286

namespace A248183

/-- `A003056(A065033(n)+A002620(n))` -/
def P5613925542724202286.Spec : Prop :=
  ∀ n, P5613925542724202286.a n = A248183 (n + 1)

end A248183

/-! ## A248183.P12119421135591363305

`A003056(A008619(n)*A065033(n))`
-/

namespace A248183.P12119421135591363305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A008619 n * A065033 n).toNat

end

end A248183.P12119421135591363305

namespace A248183

/-- `A003056(A008619(n)*A065033(n))` -/
def P12119421135591363305.Spec : Prop :=
  ∀ n, P12119421135591363305.a n = A248183 (n + 1)

end A248183

/-! ## A248183.P8594308998224380832

`A003056(A065033(n)+∑[A004526(n)])`
-/

namespace A248183.P8594308998224380832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A065033 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A248183.P8594308998224380832

namespace A248183

/-- `A003056(A065033(n)+∑[A004526(n)])` -/
def P8594308998224380832.Spec : Prop :=
  ∀ n, P8594308998224380832.a n = A248183 (n + 1)

end A248183

/-! ## A248183.P9287400984916927092

`A003056(A000007(n)+∑[A110654(n)])`
-/

namespace A248183.P9287400984916927092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000007 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A248183.P9287400984916927092

namespace A248183

/-- `A003056(A000007(n)+∑[A110654(n)])` -/
def P9287400984916927092.Spec : Prop :=
  ∀ n, P9287400984916927092.a n = A248183 (n + 1)

end A248183

/-! ## A248183.P10265453008908954779

`A003056((A004526(n)+1)*A065033(n))`
-/

namespace A248183.P10265453008908954779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ((A004526 n + 1) * A065033 n).toNat

end

end A248183.P10265453008908954779

namespace A248183

/-- `A003056((A004526(n)+1)*A065033(n))` -/
def P10265453008908954779.Spec : Prop :=
  ∀ n, P10265453008908954779.a n = A248183 (n + 1)

end A248183

/-! ## A248183.P7074423203581563245

`A003056(A065033(n+1)*A065033(n))`
-/

namespace A248183.P7074423203581563245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A065033 (n + 1) * A065033 n).toNat

end

end A248183.P7074423203581563245

namespace A248183

/-- `A003056(A065033(n+1)*A065033(n))` -/
def P7074423203581563245.Spec : Prop :=
  ∀ n, P7074423203581563245.a n = A248183 (n + 1)

end A248183

/-! ## A248183.P18101734921118823377

`A000267(A002620(A003056(A002620(n+1))))`
-/

namespace A248183.P18101734921118823377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A002620 (A003056 (A002620 (n + 1)).toNat).toNat).toNat

end

end A248183.P18101734921118823377

namespace A248183

/-- `A000267(A002620(A003056(A002620(n+1))))` -/
def P18101734921118823377.Spec : Prop :=
  ∀ n, P18101734921118823377.a n = A248183 (n + 1)

end A248183

/-! ## A248183.P2669583634498330386

`A002024(A076921(n+1)+1)-1`
-/

namespace A248183.P2669583634498330386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A076921 (n + 1) + 1).toNat - 1

end

end A248183.P2669583634498330386

namespace A248183

/-- `A002024(A076921(n+1)+1)-1` -/
def P2669583634498330386.Spec : Prop :=
  ∀ n, P2669583634498330386.a n = A248183 (n + 1)

end A248183

/-!
# A248184: Numbers k such that A248183(k+1) = A248183(k).

The programs for A248184, the canonical program `A248184.P16797326836110857965` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248184 has offset 1).

The definition of A248184 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248184.P16970217482199890692

`comp[floor(sqrt(A059993(n+1)))-1]+1`
-/

namespace A248184.P16970217482199890692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A059993 (n + 1)) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A248184.P16970217482199890692

namespace A248184

/-- `comp[floor(sqrt(A059993(n+1)))-1]+1` -/
def P16970217482199890692.Spec : Prop :=
  ∀ n, (P16970217482199890692.a n : ℤ) = A248184 (n + 1)

end A248184

/-! ## A248184.P17461131821169487213

`floor(A004273(n)+sqrt(A051890(n)))`
-/

namespace A248184.P17461131821169487213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004273 n : ℝ) + Real.sqrt (A051890 n : ℝ)⌋

end

end A248184.P17461131821169487213

namespace A248184

/-- `floor(A004273(n)+sqrt(A051890(n)))` -/
def P17461131821169487213.Spec : Prop :=
  ∀ n, P17461131821169487213.a n = A248184 (n + 1)

end A248184

/-! ## A248184.P16476306821790293072

`floor(A014681(2*n)+sqrt(A051890(n)))`
-/

namespace A248184.P16476306821790293072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014681 (2 * n) : ℝ) + Real.sqrt (A051890 n : ℝ)⌋

end

end A248184.P16476306821790293072

namespace A248184

/-- `floor(A014681(2*n)+sqrt(A051890(n)))` -/
def P16476306821790293072.Spec : Prop :=
  ∀ n, P16476306821790293072.a n = A248184 (n + 1)

end A248184

/-! ## A248184.P16797326836110857965

`record[n+1-A248183(n+1)%A248183(n+2)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A248184

/-- `record[n+1-A248183(n+1)%A248183(n+2)]` -/
def P16797326836110857965.Spec : Prop :=
  ∀ n, P16797326836110857965.a n = A248184 (n + 1)

theorem P16797326836110857965.correct : P16797326836110857965.Spec := by
  intro n
  simp only [A248184, Nat.add_sub_cancel]

end A248184

/-! ## A248184.P2055014391665411361

`A055086(C(n, 2))+floor(2/acot(n))`
-/

namespace A248184.P2055014391665411361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (Nat.choose n 2) + ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋

end

end A248184.P2055014391665411361

namespace A248184

/-- `A055086(C(n, 2))+floor(2/acot(n))` -/
def P2055014391665411361.Spec : Prop :=
  ∀ n, P2055014391665411361.a n = A248184 (n + 1)

end A248184

/-! ## A248184.P12178106987427290390

`A000267(C(n, 2))+comp[2*(n+1)]`
-/

namespace A248184.P12178106987427290390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (Nat.choose n 2) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A248184.P12178106987427290390

namespace A248184

/-- `A000267(C(n, 2))+comp[2*(n+1)]` -/
def P12178106987427290390.Spec : Prop :=
  ∀ n, P12178106987427290390.a n = A248184 (n + 1)

end A248184

/-! ## A248184.P6460845422633854568

`A004273(n)+A000267(C(n, 2))`
-/

namespace A248184.P6460845422633854568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + A000267 (Nat.choose n 2)

end

end A248184.P6460845422633854568

namespace A248184

/-- `A004273(n)+A000267(C(n, 2))` -/
def P6460845422633854568.Spec : Prop :=
  ∀ n, P6460845422633854568.a n = A248184 (n + 1)

end A248184

/-! ## A248184.P12552212430423204962

`A000267(A161680(n))+record[n*n%2]`
-/

namespace A248184.P12552212430423204962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A161680 n).toNat + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A248184.P12552212430423204962

namespace A248184

/-- `A000267(A161680(n))+record[n*n%2]` -/
def P12552212430423204962.Spec : Prop :=
  ∀ n, P12552212430423204962.a n = A248184 (n + 1)

end A248184

/-! ## A248184.P9117572156250048149

`A004273(n)+A000267(A161680(n))`
-/

namespace A248184.P9117572156250048149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + A000267 (A161680 n).toNat

end

end A248184.P9117572156250048149

namespace A248184

/-- `A004273(n)+A000267(A161680(n))` -/
def P9117572156250048149.Spec : Prop :=
  ∀ n, P9117572156250048149.a n = A248184 (n + 1)

end A248184

/-! ## A248184.P12791994714236783827

`A172471(A002061(n))+A004273(n)`
-/

namespace A248184.P12791994714236783827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A002061 n).toNat + A004273 n

end

end A248184.P12791994714236783827

namespace A248184

/-- `A172471(A002061(n))+A004273(n)` -/
def P12791994714236783827.Spec : Prop :=
  ∀ n, P12791994714236783827.a n = A248184 (n + 1)

end A248184

/-!
# A248185: Numbers k such that A248183(k+1) = A248183(k) + 1.

The programs for A248185, the canonical program `A248185.P12479427995877292216` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248185 has offset 1).

The definition of A248185 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248185.P12479427995877292216

`floor(sqrt(∑[4*(n+2)]+1))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A248185

/-- `floor(sqrt(∑[4*(n+2)]+1))` -/
def P12479427995877292216.Spec : Prop :=
  ∀ n, (P12479427995877292216.a n : ℤ) = A248185 (n + 1)

theorem P12479427995877292216.correct : P12479427995877292216.Spec := by
  intro n
  simp only [A248185, Nat.add_sub_cancel]

end A248185

/-! ## A248185.P3119510443043672726

`abs(floor(sqrt(A059993(n+1)))-1)+1`
-/

namespace A248185.P3119510443043672726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.sqrt (A059993 (n + 1)) - 1| + 1

end

end A248185.P3119510443043672726

namespace A248185

/-- `abs(floor(sqrt(A059993(n+1)))-1)+1` -/
def P3119510443043672726.Spec : Prop :=
  ∀ n, P3119510443043672726.a n = A248185 (n + 1)

end A248185

/-! ## A248185.P10672193164296974040

`abs(1-ceil(2*sqrt(A000217(n+2))))`
-/

namespace A248185.P10672193164296974040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ⌈2 * Real.sqrt (A000217 (n + 2) : ℝ)⌉|

end

end A248185.P10672193164296974040

namespace A248185

/-- `abs(1-ceil(2*sqrt(A000217(n+2))))` -/
def P10672193164296974040.Spec : Prop :=
  ∀ n, P10672193164296974040.a n = A248185 (n + 1)

end A248185

/-! ## A248185.P6946503380850664881

`ceil(sqrt(A005563(2*(n+2))/2))-1`
-/

namespace A248185.P6946503380850664881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((A005563 (2 * (n + 2)) : ℚ) / 2 : ℝ)⌉ - 1

end

end A248185.P6946503380850664881

namespace A248185

/-- `ceil(sqrt(A005563(2*(n+2))/2))-1` -/
def P6946503380850664881.Spec : Prop :=
  ∀ n, P6946503380850664881.a n = A248185 (n + 1)

end A248185

/-! ## A248185.P4797743195769016464

`A000027(floor(sqrt(A059993(n+1))))`
-/

namespace A248185.P4797743195769016464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.sqrt (A059993 (n + 1))).toNat

end

end A248185.P4797743195769016464

namespace A248185

/-- `A000027(floor(sqrt(A059993(n+1))))` -/
def P4797743195769016464.Spec : Prop :=
  ∀ n, P4797743195769016464.a n = A248185 (n + 1)

end A248185

/-! ## A248185.P13912617524613142341

`A028310(floor(sqrt(A047838(2*n+5))))`
-/

namespace A248185.P13912617524613142341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.sqrt (A047838 (2 * n + 5))).toNat

end

end A248185.P13912617524613142341

namespace A248185

/-- `A028310(floor(sqrt(A047838(2*n+5))))` -/
def P13912617524613142341.Spec : Prop :=
  ∀ n, P13912617524613142341.a n = A248185 (n + 1)

end A248185

/-! ## A248185.P13918532562018088665

`floor(sqrt(A059993(n+1)))%A167487(n)`
-/

namespace A248185.P13918532562018088665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A059993 (n + 1))) (A167487 n)

end

end A248185.P13918532562018088665

namespace A248185

/-- `floor(sqrt(A059993(n+1)))%A167487(n)` -/
def P13918532562018088665.Spec : Prop :=
  ∀ n, P13918532562018088665.a n = A248185 (n + 1)

end A248185

/-! ## A248185.P7435173747732299788

`floor(sqrt(A059993(n+1)))+n*A000038(n)`
-/

namespace A248185.P7435173747732299788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A059993 (n + 1)) + (n : ℤ) * A000038 n

end

end A248185.P7435173747732299788

namespace A248185

/-- `floor(sqrt(A059993(n+1)))+n*A000038(n)` -/
def P7435173747732299788.Spec : Prop :=
  ∀ n, P7435173747732299788.a n = A248185 (n + 1)

end A248185

/-! ## A248185.P4918344159882129226

`A142150(2*n+1)+floor(sqrt(A059993(n+1)))`
-/

namespace A248185.P4918344159882129226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (2 * n + 1) + Int.sqrt (A059993 (n + 1))

end

end A248185.P4918344159882129226

namespace A248185

/-- `A142150(2*n+1)+floor(sqrt(A059993(n+1)))` -/
def P4918344159882129226.Spec : Prop :=
  ∀ n, P4918344159882129226.a n = A248185 (n + 1)

end A248185

/-! ## A248185.P16196842269463806655

`A005408(n)+floor(sqrt(A059993(n+1)))-(2*n+1)`
-/

namespace A248185.P16196842269463806655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + (Int.sqrt (A059993 (n + 1)) - (2 * n + 1 : ℤ))

end

end A248185.P16196842269463806655

namespace A248185

/-- `A005408(n)+floor(sqrt(A059993(n+1)))-(2*n+1)` -/
def P16196842269463806655.Spec : Prop :=
  ∀ n, P16196842269463806655.a n = A248185 (n + 1)

end A248185

/-! ## A248185.P6110410702779092700

`A248232(n+3)-(2*n+5)`
-/

namespace A248185.P6110410702779092700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248232 (n + 3) - (2 * n + 5 : ℤ)

end

end A248185.P6110410702779092700

namespace A248185

/-- `A248232(n+3)-(2*n+5)` -/
def P6110410702779092700.Spec : Prop :=
  ∀ n, P6110410702779092700.a n = A248185 (n + 1)

end A248185

/-! ## A248185.P17654146190855687733

`A248231(A248232(n+3))-(n+3)`
-/

namespace A248185.P17654146190855687733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (A248232 (n + 3)).toNat - (n + 3 : ℤ)

end

end A248185.P17654146190855687733

namespace A248185

/-- `A248231(A248232(n+3))-(n+3)` -/
def P17654146190855687733.Spec : Prop :=
  ∀ n, P17654146190855687733.a n = A248185 (n + 1)

end A248185

/-! ## A248185.P13560040277758887120

`A360926(n+2)-(n+3)`
-/

namespace A248185.P13560040277758887120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360926 (n + 2) - (n + 3 : ℤ)

end

end A248185.P13560040277758887120

namespace A248185

/-- `A360926(n+2)-(n+3)` -/
def P13560040277758887120.Spec : Prop :=
  ∀ n, P13560040277758887120.a n = A248185 (n + 1)

end A248185

/-! ## A248185.P16111106860618166618

`A027434(∑[n+3]-A186219(n+1))`
-/

namespace A248185.P16111106860618166618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027434 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A186219 (n + 1)).toNat

end

end A248185.P16111106860618166618

namespace A248185

/-- `A027434(∑[n+3]-A186219(n+1))` -/
def P16111106860618166618.Spec : Prop :=
  ∀ n, P16111106860618166618.a n = A248185 (n + 1)

end A248185

/-! ## A248185.P13191408601436193184

`A000267(∑[n+2])`
-/

namespace A248185.P13191408601436193184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248185.P13191408601436193184

namespace A248185

/-- `A000267(∑[n+2])` -/
def P13191408601436193184.Spec : Prop :=
  ∀ n, P13191408601436193184.a n = A248185 (n + 1)

end A248185

/-! ## A248185.P266461878412067036

`A055086(∑[n+2])+1`
-/

namespace A248185.P266461878412067036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A248185.P266461878412067036

namespace A248185

/-- `A055086(∑[n+2])+1` -/
def P266461878412067036.Spec : Prop :=
  ∀ n, P266461878412067036.a n = A248185 (n + 1)

end A248185

/-! ## A248185.P4510840683777516492

`A172471(n*(n+5)+5)`
-/

namespace A248185.P4510840683777516492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (n * (n + 5) + 5)

end

end A248185.P4510840683777516492

namespace A248185

/-- `A172471(n*(n+5)+5)` -/
def P4510840683777516492.Spec : Prop :=
  ∀ n, P4510840683777516492.a n = A248185 (n + 1)

end A248185

/-! ## A248185.P2457667710927934071

`A027434(A000217(n+2))-1`
-/

namespace A248185.P2457667710927934071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027434 (A000217 (n + 2)).toNat - 1

end

end A248185.P2457667710927934071

namespace A248185

/-- `A027434(A000217(n+2))-1` -/
def P2457667710927934071.Spec : Prop :=
  ∀ n, P2457667710927934071.a n = A248185 (n + 1)

end A248185

/-!
# A248186: Least k such that 1/18 - Sum_{h=1..k} 1/(h*(h+1)*(h+2)*(h+3)) < 1/n^3.

The programs for A248186, there is no canonical definition to state claims against.
-/

/-! ## A248186.P15680406609186635626

`A056556(or(1, A026810(2*n+1)))`
-/

namespace A248186.P15680406609186635626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (Int.lor 1 (A026810 (2 * n + 1))).toNat

end

end A248186.P15680406609186635626

/-! ## A248186.P18121244569120791117

`A056556(A056562(n)+A026810(2*n+1))`
-/

namespace A248186.P18121244569120791117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A056562 n + A026810 (2 * n + 1)).toNat

end

end A248186.P18121244569120791117

/-! ## A248186.P5891150360641777638

`floor(log(A059927(n)+2))`
-/

namespace A248186.P5891150360641777638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A059927 n + 2 : ℝ)⌋

end

end A248186.P5891150360641777638

/-! ## A248186.P13671045871733463332

`A048766(A168582(n))`
-/

namespace A248186.P13671045871733463332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A168582 n).toNat

end

end A248186.P13671045871733463332

/-! ## A248186.P1787063193752366355

`A132264(A356160(3*n+1))/A356160(3*n+1)`
-/

namespace A248186.P1787063193752366355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132264 (A356160 (3 * n + 1)).toNat : ℚ) / (A356160 (3 * n + 1) : ℚ)

end

end A248186.P1787063193752366355

/-!
# A248187: Numbers k such that A248186(k+1) = A248186(k).

The programs for A248187, there is no canonical definition to state claims against.
-/

/-! ## A248187.P12542656081942388977

`A000196(A008107(comp[2*n+3]))`
-/

namespace A248187.P12542656081942388977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A008107 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A248187.P12542656081942388977

/-! ## A248187.P36645324507581131

`eq[char[A248188(n+1)], A151933(n)]`
-/

namespace A248187.P36645324507581131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248188 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A248187.P36645324507581131

/-! ## A248187.P5320274543551670776

`eq[char[A059539(n+3)], A151933(n)]`
-/

namespace A248187.P5320274543551670776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059539 (n + 3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A248187.P5320274543551670776

/-! ## A248187.P11586427136420891442

`∑[A319982(A001644(n))]`
-/

namespace A248187.P11586427136420891442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319982 (A001644 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248187.P11586427136420891442

/-!
# A248188: Numbers k such that A248186(k+1) = A248186(k) + 1.

The programs for A248188, there is no canonical definition to state claims against.
-/

/-! ## A248188.P5278631409200781604

`comp[A248187(n+1)-1]+1`
-/

namespace A248188.P5278631409200781604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248187 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A248188.P5278631409200781604

/-! ## A248188.P18184845361568929687

`comp[A248187(A248186(n+1))%A008107(n)]`
-/

namespace A248188.P18184845361568929687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248187 (A248186 (n + 1)).toNat) (A008107 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A248188.P18184845361568929687

/-! ## A248188.P13159251125103823591

`record[A059539(A220073(n+1)+2)]`
-/

namespace A248188.P13159251125103823591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059539 (A220073 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248188.P13159251125103823591

/-! ## A248188.P1797747210191552307

`A059539(A220073(∑[n+3]+4))`
-/

namespace A248188.P1797747210191552307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059539 (A220073 (∑ j ∈ Finset.range (n + 1), f1 j + 4)).toNat

end

end A248188.P1797747210191552307

/-! ## A248188.P1770658852834190814

`record[A059539(A220073(A167499(n)))]`
-/

namespace A248188.P1770658852834190814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059539 (A220073 (A167499 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248188.P1770658852834190814

/-! ## A248188.P3029724096360664833

`A167389(n+1)+2%A228186(n)`
-/

namespace A248188.P3029724096360664833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167389 (n + 1) + Int.tmod 2 (A228186 n)

end

end A248188.P3029724096360664833

/-! ## A248188.P17461598145987523278

`A167389(n+1)+A000034(A002061(n))`
-/

namespace A248188.P17461598145987523278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167389 (n + 1) + A000034 (A002061 n).toNat

end

end A248188.P17461598145987523278

/-! ## A248188.P3865024199990106862

`A167389(n+1)+A000122((n+1)²)`
-/

namespace A248188.P3865024199990106862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167389 (n + 1) + A000122 ((n + 1) ^ 2)

end

end A248188.P3865024199990106862

/-! ## A248188.P8711979742896407787

`A167389(n+1)+A000034(Δ[A006527(n)])`
-/

namespace A248188.P8711979742896407787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167389 (n + 1) + A000034 (f1 (n + 1) - f1 n).toNat

end

end A248188.P8711979742896407787

/-!
# A248193: Expansion of Sum_{n>=0} x^n * Sum_{k=0..n} C(n,k)^2 * x^(5*k).

The programs for A248193, there is no canonical definition to state claims against.
-/

/-! ## A248193.P7035363439291791682

`A325362(A212365(n+1))`
-/

namespace A248193.P7035363439291791682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325362 (A212365 (n + 1)).toNat

end

end A248193.P7035363439291791682

/-! ## A248193.P5291738247913046799

`A196054(A023422(n))+1`
-/

namespace A248193.P5291738247913046799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196054 (A023422 n).toNat + 1

end

end A248193.P5291738247913046799

/-! ## A248193.P14697488445479192542

`A192404(A191321(n+1))`
-/

namespace A248193.P14697488445479192542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192404 (A191321 (n + 1)).toNat

end

end A248193.P14697488445479192542

/-! ## A248193.P12344161132153947701

`(∑[A079559(abs(A227523(2*n+1)))]-1)²+1`
-/

namespace A248193.P12344161132153947701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079559 |A227523 (2 * n + 1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - 1) ^ 2 + 1

end

end A248193.P12344161132153947701

/-! ## A248193.P4370459164331130121

`A002522(A118729(n+2)%A099343(n+1))`
-/

namespace A248193.P4370459164331130121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (Int.tmod (A118729 (n + 2)) (A099343 (n + 1))).toNat

end

end A248193.P4370459164331130121

/-!
# A248194: Positive integers n such that the equation x^2 - n*y^2 = n*(n+1)/2 has integer solutions.

The programs for A248194, there is no canonical definition to state claims against.
-/

/-! ## A248194.P3774044658462087774

`A000201(A125568(∑[2*n]))`
-/

namespace A248194.P3774044658462087774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A125568 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A248194.P3774044658462087774

/-! ## A248194.P1680713383564467128

`lt[A102370(n), A103863(3*n+4)+n]`
-/

namespace A248194.P1680713383564467128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102370 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103863 (3 * n + 4) + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A248194.P1680713383564467128

/-! ## A248194.P13568198394167765264

`A132188(2*n+1)+A117943(A364264(n+1))`
-/

namespace A248194.P13568198394167765264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132188 (2 * n + 1) + A117943 (A364264 (n + 1)).toNat

end

end A248194.P13568198394167765264

/-! ## A248194.P17446277190452578248

`lt[A104894(n)+A103863(n), A103863(3*n+4)]`
-/

namespace A248194.P17446277190452578248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104894 n + A103863 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103863 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A248194.P17446277190452578248

/-!
# A248195: Numbers k such that A248180(k+1) = A248180(k).

The programs for A248195, there is no canonical definition to state claims against.
-/

/-! ## A248195.P8673310132723539835

`A055642(A166274(n+1))+record[n*n%2]`
-/

namespace A248195.P8673310132723539835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A166274 (n + 1)).toNat + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A248195.P8673310132723539835

/-! ## A248195.P11748118006354211005

`A055642(A096076(n))+comp[2*(n+1)]`
-/

namespace A248195.P11748118006354211005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A096076 n).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A248195.P11748118006354211005

/-! ## A248195.P9243897322017621785

`∑[A071187(A169942(n+1))]`
-/

namespace A248195.P9243897322017621785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071187 (A169942 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248195.P9243897322017621785

/-! ## A248195.P16111239331208130766

`A185119(A002865(n+1))+2*n`
-/

namespace A248195.P16111239331208130766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185119 (A002865 (n + 1)).toNat + (2 * n : ℤ)

end

end A248195.P16111239331208130766

/-!
# A248196: Numbers k such that A248180(k+1) = A248180(k) + 1.

The programs for A248196, there is no canonical definition to state claims against.
-/

/-! ## A248196.P208876856489392938

`comp[A248195(n)-1]+1`
-/

namespace A248196.P208876856489392938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248195 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A248196.P208876856489392938

/-! ## A248196.P15362084449867960692

`comp[∪[n*A212669(n+1), A248195(n)]]`
-/

namespace A248196.P15362084449867960692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A212669 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248195 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A248196.P15362084449867960692

/-! ## A248196.P11826671993475007851

`ceil(log2(A076540(n+1)))+3`
-/

namespace A248196.P11826671993475007851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A076540 (n + 1) : ℝ)⌉ + 3

end

end A248196.P11826671993475007851

/-! ## A248196.P13988689432799211090

`ceil(log2(A024482(n+3)))`
-/

namespace A248196.P13988689432799211090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A024482 (n + 3) : ℝ)⌉

end

end A248196.P13988689432799211090

/-! ## A248196.P2132480053960999047

`lt[10, A046610(comp[n²*A026677(n)])]`
-/

namespace A248196.P2132480053960999047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A026677 n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046610 (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A248196.P2132480053960999047

/-! ## A248196.P16140889652773098019

`ceil(log2(Δ[A050478(n)]))`
-/

namespace A248196.P16140889652773098019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (f1 (n + 1) - f1 n : ℝ)⌉

end

end A248196.P16140889652773098019

/-! ## A248196.P15329224253836471141

`floor(log2(A051924(n+3)))`
-/

namespace A248196.P15329224253836471141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A051924 (n + 3)).toNat

end

end A248196.P15329224253836471141

/-! ## A248196.P3750801733703680025

`floor(log2(Δ[A206259(n+1)]))`
-/

namespace A248196.P3750801733703680025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206259 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (f1 (n + 1) - f1 n).toNat

end

end A248196.P3750801733703680025

/-! ## A248196.P1588211424802713640

`floor(log2(Δ[A000984(n+2)]))`
-/

namespace A248196.P1588211424802713640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (f1 (n + 1) - f1 n).toNat

end

end A248196.P1588211424802713640

/-! ## A248196.P15595957151215329065

`ceil(log2(Δ[A088218(n+2)]))`
-/

namespace A248196.P15595957151215329065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (f1 (n + 1) - f1 n : ℝ)⌉

end

end A248196.P15595957151215329065

/-! ## A248196.P16946061404584607697

`A202305(∑[A298110(n)])`
-/

namespace A248196.P16946061404584607697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202305 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A248196.P16946061404584607697

/-!
# A248198: a(n) = ceiling(n^3*(Pi/2)).

The programs for A248198, the canonical program `A248198.P4557934192720923483` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248198 has offset 1).

The definition of A248198 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((n+1)^3*π/2)` (program `A248198.P4557934192720923483`, by `A248198.P4557934192720923483.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A248198.P4557934192720923483

`ceil((n+1)^3*π/2)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A248198

/-- `ceil((n+1)^3*π/2)` -/
def P4557934192720923483.Spec : Prop :=
  ∀ n, P4557934192720923483.a n = A248198 (n + 1)

theorem P4557934192720923483.correct : P4557934192720923483.Spec := by
  intro n
  simp only [A248198, Nat.add_sub_cancel]

end A248198

/-! ## A248198.P13686249086669867409

`floor((n+1)^3*acos(0))+1`
-/

namespace A248198.P13686249086669867409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 3 : ℝ) * Real.arccos (0 : ℝ)⌋ + 1

end

end A248198.P13686249086669867409

namespace A248198

/-- `floor((n+1)^3*acos(0))+1` -/
def P13686249086669867409.Spec : Prop :=
  ∀ n, P13686249086669867409.a n = A248198 (n + 1)

end A248198

/-! ## A248198.P15843168533176975378

`floor((n+1)^3*asin(1))+1`
-/

namespace A248198.P15843168533176975378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 3 : ℝ) * Real.arcsin (1 : ℝ)⌋ + 1

end

end A248198.P15843168533176975378

namespace A248198

/-- `floor((n+1)^3*asin(1))+1` -/
def P15843168533176975378.Spec : Prop :=
  ∀ n, P15843168533176975378.a n = A248198 (n + 1)

end A248198

/-! ## A248198.P13856549508709770650

`A228391(n+1)+A077028(∑[n])`
-/

namespace A248198.P13856549508709770650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228391 (n + 1) + A077028 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248198.P13856549508709770650

namespace A248198

/-- `A228391(n+1)+A077028(∑[n])` -/
def P13856549508709770650.Spec : Prop :=
  ∀ n, P13856549508709770650.a n = A248198 (n + 1)

end A248198

/-! ## A248198.P13992397016009703477

`A228391(n+1)+A002260(A000124(n)-n)`
-/

namespace A248198.P13992397016009703477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228391 (n + 1) + A002260 (A000124 n - (n : ℤ)).toNat

end

end A248198.P13992397016009703477

namespace A248198

/-- `A228391(n+1)+A002260(A000124(n)-n)` -/
def P13992397016009703477.Spec : Prop :=
  ∀ n, P13992397016009703477.a n = A248198 (n + 1)

end A248198

/-! ## A248198.P8219292376504152225

`A228391(n+1)+A002260(A000124(n))`
-/

namespace A248198.P8219292376504152225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228391 (n + 1) + A002260 (A000124 n).toNat

end

end A248198.P8219292376504152225

namespace A248198

/-- `A228391(n+1)+A002260(A000124(n))` -/
def P8219292376504152225.Spec : Prop :=
  ∀ n, P8219292376504152225.a n = A248198 (n + 1)

end A248198

/-! ## A248198.P17567054063785577274

`A228391(n+1)+A010054(C(n, 2))`
-/

namespace A248198.P17567054063785577274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228391 (n + 1) + A010054 (Nat.choose n 2)

end

end A248198.P17567054063785577274

namespace A248198

/-- `A228391(n+1)+A010054(C(n, 2))` -/
def P17567054063785577274.Spec : Prop :=
  ∀ n, P17567054063785577274.a n = A248198 (n + 1)

end A248198

/-! ## A248198.P1962929266307333203

`A228391(n+1)+A112467(∑[n])²`
-/

namespace A248198.P1962929266307333203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228391 (n + 1) + A112467 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A248198.P1962929266307333203

namespace A248198

/-- `A228391(n+1)+A112467(∑[n])²` -/
def P1962929266307333203.Spec : Prop :=
  ∀ n, P1962929266307333203.a n = A248198 (n + 1)

end A248198

/-! ## A248198.P5830194282731694400

`A228391(n+1)-A112467(∑[n+1])`
-/

namespace A248198.P5830194282731694400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228391 (n + 1) - A112467 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248198.P5830194282731694400

namespace A248198

/-- `A228391(n+1)-A112467(∑[n+1])` -/
def P5830194282731694400.Spec : Prop :=
  ∀ n, P5830194282731694400.a n = A248198 (n + 1)

end A248198

/-! ## A248198.P16885986303412732629

`A228409(A181603(n+1))+A228391(n+1)`
-/

namespace A248198.P16885986303412732629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228409 (A181603 (n + 1)).toNat + A228391 (n + 1)

end

end A248198.P16885986303412732629

namespace A248198

/-- `A228409(A181603(n+1))+A228391(n+1)` -/
def P16885986303412732629.Spec : Prop :=
  ∀ n, P16885986303412732629.a n = A248198 (n + 1)

end A248198

/-! ## A248198.P4683580199006362974

`A228391(n+1)-A057428(A167614(n+1))`
-/

namespace A248198.P4683580199006362974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228391 (n + 1) - A057428 (A167614 (n + 1)).toNat

end

end A248198.P4683580199006362974

namespace A248198

/-- `A228391(n+1)-A057428(A167614(n+1))` -/
def P4683580199006362974.Spec : Prop :=
  ∀ n, P4683580199006362974.a n = A248198 (n + 1)

end A248198

/-! ## A248198.P17455027403911835663

`A228391(n+1)+A057427(∑[n+3]+1)`
-/

namespace A248198.P17455027403911835663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228391 (n + 1) + A057427 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A248198.P17455027403911835663

namespace A248198

/-- `A228391(n+1)+A057427(∑[n+3]+1)` -/
def P17455027403911835663.Spec : Prop :=
  ∀ n, P17455027403911835663.a n = A248198 (n + 1)

end A248198

/-! ## A248198.P10257207888614857855

`A293810(A062291(n+1))+A228391(n+1)`
-/

namespace A248198.P10257207888614857855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293810 (A062291 (n + 1)).toNat + A228391 (n + 1)

end

end A248198.P10257207888614857855

namespace A248198

/-- `A293810(A062291(n+1))+A228391(n+1)` -/
def P10257207888614857855.Spec : Prop :=
  ∀ n, P10257207888614857855.a n = A248198 (n + 1)

end A248198

/-! ## A248198.P13568871610763750988

`A228409(A065508(n+1))+A228391(n+1)`
-/

namespace A248198.P13568871610763750988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228409 (A065508 (n + 1)).toNat + A228391 (n + 1)

end

end A248198.P13568871610763750988

namespace A248198

/-- `A228409(A065508(n+1))+A228391(n+1)` -/
def P13568871610763750988.Spec : Prop :=
  ∀ n, P13568871610763750988.a n = A248198 (n + 1)

end A248198

/-!
# A248199: Initial primes of sets of 8 consecutive primes all different by modulo 30.

The programs for A248199, there is no canonical definition to state claims against.
-/

/-! ## A248199.P7515594172668418467

`A303436(A090144(n+1))`
-/

namespace A248199.P7515594172668418467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303436 (A090144 (n + 1)).toNat

end

end A248199.P7515594172668418467

/-! ## A248199.P2749764412162510619

`p?[∑[A186727(n+3)]]`
-/

namespace A248199.P2749764412162510619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186727 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A248199.P2749764412162510619

/-! ## A248199.P15369167394462265461

`record[p?[A340830(n+1)]]`
-/

namespace A248199.P15369167394462265461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340830 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248199.P15369167394462265461

/-! ## A248199.P3176565266512632633

`A117289(A272814(n+2))`
-/

namespace A248199.P3176565266512632633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117289 (A272814 (n + 2)).toNat

end

end A248199.P3176565266512632633

/-! ## A248199.P13421742460618598674

`eq[A321452(n), A339095(n)]`
-/

namespace A248199.P13421742460618598674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321452 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339095 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248199.P13421742460618598674

