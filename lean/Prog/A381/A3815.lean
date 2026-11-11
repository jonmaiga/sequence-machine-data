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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
# A381500: a(n) = A019565(A187769(n)).

The programs for A381500, there is no canonical definition to state claims against.
-/

/-! ## A381500.P14013682062605668411

`A019565(A187769(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A381500.P14013682062605668411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A187769 n).toNat

end

end A381500.P14013682062605668411

/-! ## A381500.P7285660950872070152

`A277006(A371590(n))`
-/

namespace A381500.P7285660950872070152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277006 (A371590 n).toNat

end

end A381500.P7285660950872070152

/-! ## A381500.P11900301143721440382

`filter[A344844(n+1), A008966(#)]`
-/

namespace A381500.P11900301143721440382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A381500.P11900301143721440382

/-! ## A381500.P16999522881882055870

`filter[A344844(n+1), A354355(#)]`
-/

namespace A381500.P16999522881882055870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354355 (f1 j).toNat = 1) n)

end

end A381500.P16999522881882055870

/-!
# A381501: Positive integers that do not appear in A381466.

The programs for A381501, there is no canonical definition to state claims against.
-/

/-! ## A381501.P15358608965085896773

`lt[A392755(n+1), 0]+1`
-/

namespace A381501.P15358608965085896773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392755 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A381501.P15358608965085896773

/-! ## A381501.P15091459743161646007

`lt[A392754(n+1), 0]+1`
-/

namespace A381501.P15091459743161646007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392754 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A381501.P15091459743161646007

/-! ## A381501.P13580038041092945754

`eq[0, A381495(n+1)]+1`
-/

namespace A381501.P13580038041092945754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381495 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A381501.P13580038041092945754

/-! ## A381501.P14226625140166934353

`comp[A381466(n)-1]+1`
-/

namespace A381501.P14226625140166934353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381466 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A381501.P14226625140166934353

/-! ## A381501.P15657302377202435626

`eq[char[A381466(n)], A285476(3*n+1)]`
-/

namespace A381501.P15657302377202435626
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381466 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A381501.P15657302377202435626

/-! ## A381501.P4477277552404542605

`eq[0, A047238(2+A392755(n+1))]+1`
-/

namespace A381501.P4477277552404542605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047238 (2 + A392755 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A381501.P4477277552404542605

/-!
# A381503: Number of rectangles in a Fibonacci(n) X Fibonacci(n+1) grid.

The programs for A381503, the canonical program `A381503.P14790323790165265310` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381503 has offset 1).

The definition of A381503 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381503.P14790323790165265310

`A033192(n+1)*A033192(n+2)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A381503

/-- `A033192(n+1)*A033192(n+2)` -/
def P14790323790165265310.Spec : Prop :=
  ∀ n, P14790323790165265310.a n = A381503 (n + 1)

theorem P14790323790165265310.correct : P14790323790165265310.Spec := by
  intro n
  simp only [A381503, Nat.add_sub_cancel]

end A381503

/-! ## A381503.P1507563936012153800

`A355498(A001654(n+1))`
-/

namespace A381503.P1507563936012153800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355498 (A001654 (n + 1)).toNat

end

end A381503.P1507563936012153800

namespace A381503

/-- `A355498(A001654(n+1))` -/
def P1507563936012153800.Spec : Prop :=
  ∀ n, P1507563936012153800.a n = A381503 (n + 1)

end A381503

/-! ## A381503.P7218879116981078861

`A355498(∑[A007598(n+1)])`
-/

namespace A381503.P7218879116981078861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355498 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A381503.P7218879116981078861

namespace A381503

/-- `A355498(∑[A007598(n+1)])` -/
def P7218879116981078861.Spec : Prop :=
  ∀ n, P7218879116981078861.a n = A381503 (n + 1)

end A381503

/-! ## A381503.P12400334235774924589

`A098358(A131569(n+1))`
-/

namespace A381503.P12400334235774924589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098358 (A131569 (n + 1)).toNat

end

end A381503.P12400334235774924589

namespace A381503

/-- `A098358(A131569(n+1))` -/
def P12400334235774924589.Spec : Prop :=
  ∀ n, P12400334235774924589.a n = A381503 (n + 1)

end A381503

/-!
# A381504: Expansion of e.g.f. exp(-x/4) / (1-4*x)^(1/16).

The programs for A381504, the canonical program `A381504.P3516023568675482537` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381504 has offset 0).

The definition of A381504 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381504.P3516023568675482537

`(n-1)*(4*a(n-1)+a(n-2))` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A381504

/-- `(n-1)*(4*a(n-1)+a(n-2))` -/
def P3516023568675482537.Spec : Prop :=
  ∀ n, P3516023568675482537.a n = A381504 n

theorem P3516023568675482537.correct : P3516023568675482537.Spec := by
  intro n
  simp only [A381504]

end A381504

/-! ## A381504.P2246421037395816252

`A026922(A349601(n)+A027187(n))`
-/

namespace A381504.P2246421037395816252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (A349601 n + A027187 n).toNat

end

end A381504.P2246421037395816252

namespace A381504

/-- `A026922(A349601(n)+A027187(n))` -/
def P2246421037395816252.Spec : Prop :=
  ∀ n, P2246421037395816252.a n = A381504 n

end A381504

/-!
# A381505: Expansion of e.g.f. exp(2*x/3) / (1-3*x)^(1/9).

The programs for A381505, the canonical program `A381505.P16180141751247195274` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381505 has offset 0).

The definition of A381505 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381505.P16180141751247195274

`(3*n-2)*a(n-1)-2*(n-1)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A381505

/-- `(3*n-2)*a(n-1)-2*(n-1)*a(n-2)` -/
def P16180141751247195274.Spec : Prop :=
  ∀ n, P16180141751247195274.a n = A381505 n

theorem P16180141751247195274.correct : P16180141751247195274.Spec := by
  intro n
  simp only [A381505]

end A381505

/-! ## A381505.P10907578239166377866

`A034887(A181197(n+1)+1)`
-/

namespace A381505.P10907578239166377866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A181197 (n + 1) + 1).toNat

end

end A381505.P10907578239166377866

namespace A381505

/-- `A034887(A181197(n+1)+1)` -/
def P10907578239166377866.Spec : Prop :=
  ∀ n, P10907578239166377866.a n = A381505 n

end A381505

/-!
# A381506: Expansion of e.g.f. exp(3*x/4) / (1-4*x)^(1/16).

The programs for A381506, the canonical program `A381506.P2615468558593888773` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381506 has offset 0).

The definition of A381506 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381506.P2615468558593888773

`(4*n-3)*a(n-1)-3*(n-1)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A381506

/-- `(4*n-3)*a(n-1)-3*(n-1)*a(n-2)` -/
def P2615468558593888773.Spec : Prop :=
  ∀ n, P2615468558593888773.a n = A381506 n

theorem P2615468558593888773.correct : P2615468558593888773.Spec := by
  intro n
  simp only [A381506]

end A381506

/-! ## A381506.P11994222701905055369

`A008624(A195242(n)+A101950(n))`
-/

namespace A381506.P11994222701905055369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A195242 n + A101950 n).toNat

end

end A381506.P11994222701905055369

namespace A381506

/-- `A008624(A195242(n)+A101950(n))` -/
def P11994222701905055369.Spec : Prop :=
  ∀ n, P11994222701905055369.a n = A381506 n

end A381506

/-!
# A381507: Squarefree numbers k such that the sum of 1/(p-1) over the prime divisors p of k is 1.

The programs for A381507, there is no canonical definition to state claims against.
-/

/-! ## A381507.P13321371185544752223

`∩[A307003(n+1), A380888(n+1)]`
-/

namespace A381507.P13321371185544752223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381507.P13321371185544752223

/-!
# A381509: Numbers whose nonzero digits are in nondecreasing order and any zeros appear at the end.

The programs for A381509, there is no canonical definition to state claims against.
-/

/-! ## A381509.P12654801397203677620

`eq[0, A283001(A004086(n))]`
-/

namespace A381509.P12654801397203677620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283001 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A381509.P12654801397203677620

/-! ## A381509.P18104862692185034813

`eq[0, A108782(A321474(n))]`
-/

namespace A381509.P18104862692185034813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108782 (A321474 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A381509.P18104862692185034813

/-! ## A381509.P1856766457660509388

`eq[n, A321474(A004186(n))]`
-/

namespace A381509.P1856766457660509388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321474 (A004186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A381509.P1856766457660509388

/-! ## A381509.P2089446640184027178

`eq[A004186(n), A352152(n)]`
-/

namespace A381509.P2089446640184027178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352152 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381509.P2089446640184027178

/-! ## A381509.P11652453481705823827

`eq[A004086(n), A004086(A004185(n))]`
-/

namespace A381509.P11652453481705823827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A004185 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381509.P11652453481705823827

/-! ## A381509.P15379325535723107676

`eq[A004093(n), A004093(A004185(n))]`
-/

namespace A381509.P15379325535723107676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004093 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004093 (A004185 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381509.P15379325535723107676

/-! ## A381509.P16567276462307605057

`lt[A283001(A352152(n)), 1]`
-/

namespace A381509.P16567276462307605057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283001 (A352152 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A381509.P16567276462307605057

/-! ## A381509.P7076917418545718348

`eq[A340479(A004185(n)), A340479(n)]`
-/

namespace A381509.P7076917418545718348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340479 (A004185 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340479 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381509.P7076917418545718348

/-! ## A381509.P1173366583976705096

`∪[A008592(n), A102827(n)]`
-/

namespace A381509.P1173366583976705096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102827 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A381509.P1173366583976705096

/-!
# A381512: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where A(n,k) = (2*n+k)!/k! * [x^(2*n+k)] sinh(x)^k.

The programs for A381512, the canonical program `A381512.P1471827736752603151` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381512 has offset 0).

The definition of A381512 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381512.P1471827736752603151

`(row(n)-col(n))²*T(n-1,k-1)+T(n-2,k)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A381512

/-- `(row(n)-col(n))²*T(n-1,k-1)+T(n-2,k)` -/
def P1471827736752603151.Spec : Prop :=
  ∀ n, P1471827736752603151.a n = A381512 n

theorem P1471827736752603151.correct : P1471827736752603151.Spec := by
  intro n
  simp only [A381512]

end A381512

/-! ## A381512.P6276628853329567817

`A136630(A245300(n)+A114327(n))`
-/

namespace A381512.P6276628853329567817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136630 (A245300 n + A114327 n).toNat

end

end A381512.P6276628853329567817

namespace A381512

/-- `A136630(A245300(n)+A114327(n))` -/
def P6276628853329567817.Spec : Prop :=
  ∀ n, P6276628853329567817.a n = A381512 n

end A381512

/-! ## A381512.P16582804750523795321

`A067634(n+1)%A123104(A383902(n))`
-/

namespace A381512.P16582804750523795321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067634 (n + 1)) (A123104 ((A383902 n).toNat + 31))

end

end A381512.P16582804750523795321

namespace A381512

/-- `A067634(n+1)%A123104(A383902(n))` -/
def P16582804750523795321.Spec : Prop :=
  ∀ n, P16582804750523795321.a n = A381512 n

end A381512

/-! ## A381512.P11627712129744310909

`A343372(n+4)%A123104(A383902(n))`
-/

namespace A381512.P11627712129744310909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343372 (n + 4)) (A123104 ((A383902 n).toNat + 31))

end

end A381512.P11627712129744310909

namespace A381512

/-- `A343372(n+4)%A123104(A383902(n))` -/
def P11627712129744310909.Spec : Prop :=
  ∀ n, P11627712129744310909.a n = A381512 n

end A381512

/-! ## A381512.P14180270494883248120

`A131474(A321391(n))^A282903(A055644(n+4))`
-/

namespace A381512.P14180270494883248120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131474 (A321391 n).toNat : ℚ) ^ (A282903 (A055644 (n + 4)).toNat : ℤ)

end

end A381512.P14180270494883248120

namespace A381512

/-- `A131474(A321391(n))^A282903(A055644(n+4))` -/
def P14180270494883248120.Spec : Prop :=
  ∀ n, P14180270494883248120.a n = (A381512 n : ℚ)

end A381512

/-!
# A381513: Expansion of 1/((1-x) * (1-9*x) * (1-25*x) * (1-49*x)).

The programs for A381513, there is no canonical definition to state claims against.
-/

/-! ## A381513.P378600426928534526

`A160562(∑[n+3]+6)`
-/

namespace A381513.P378600426928534526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160562 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A381513.P378600426928534526

/-! ## A381513.P17466833509945420104

`A136630(A100039(n+2))`
-/

namespace A381513.P17466833509945420104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136630 (A100039 (n + 2)).toNat

end

end A381513.P17466833509945420104

/-! ## A381513.P7653367439287729202

`record[A136630(A000217(n)+7)]`
-/

namespace A381513.P7653367439287729202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136630 (A000217 n + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381513.P7653367439287729202

/-!
# A381515: a(n) = Sum_{j=1..n} Stirling2(n-1,j-1) * a(n-j) for n>=1, starting with a(0) = 1.

The programs for A381515, there is no canonical definition to state claims against.
-/

/-! ## A381515.P16775377454374669994

`A118301(A265070(n)-A000045(n))`
-/

namespace A381515.P16775377454374669994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118301 (A265070 n - A000045 n).toNat

end

end A381515.P16775377454374669994

/-! ## A381515.P4123977765123186653

`A342497(A002955(n+1))+A000389(n)`
-/

namespace A381515.P4123977765123186653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342497 (A002955 (n + 1)).toNat + A000389 n

end

end A381515.P4123977765123186653

/-! ## A381515.P9705617447889740774

`A008621(∑[A262128(n)+A111361(n+2)])`
-/

namespace A381515.P9705617447889740774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262128 n + A111361 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A381515.P9705617447889740774

/-! ## A381515.P6251604544791655624

`A067661(A146163(n)%A146710(3*n+1))`
-/

namespace A381515.P6251604544791655624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 (Int.tmod (A146163 n) (A146710 (3 * n + 1))).toNat

end

end A381515.P6251604544791655624

/-!
# A381517: Perimeter of the Sierpiński carpet at iteration n.

The programs for A381517, the canonical program `A381517.P15118458078056138431` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381517 has offset 0).

The definition of A381517 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381517.P5982754384081251125

`ogf((4-28x)/(1-11x+24x^2))`
-/

namespace A381517.P5982754384081251125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -28] [1, -11, 24] n

end

end A381517.P5982754384081251125

namespace A381517

/-- `ogf((4-28x)/(1-11x+24x^2))` -/
def P5982754384081251125.Spec : Prop :=
  ∀ n, P5982754384081251125.a n = A381517 n

end A381517

/-! ## A381517.P10071479594942261601

`4/5*(4*3^n+8^n)`
-/

namespace A381517.P10071479594942261601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 5 * (4 * 3 ^ n + 8 ^ n : ℚ)

end

end A381517.P10071479594942261601

namespace A381517

/-- `4/5*(4*3^n+8^n)` -/
def P10071479594942261601.Spec : Prop :=
  ∀ n, P10071479594942261601.a n = (A381517 n : ℚ)

theorem P10071479594942261601.correct : P10071479594942261601.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A381517, Nat.add_sub_cancel, A381517.P10071479594942261601.a, A381517.P15118458078056138431.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A381517, Nat.add_sub_cancel, A381517.P10071479594942261601.a, A381517.P15118458078056138431.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A381517

/-! ## A381517.P15118458078056138431

`11*a(n-1)-24*a(n-2)` with `a(0)=4, a(1)=16`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A381517

/-- `11*a(n-1)-24*a(n-2)` -/
def P15118458078056138431.Spec : Prop :=
  ∀ n, P15118458078056138431.a n = A381517 n

theorem P15118458078056138431.correct : P15118458078056138431.Spec := by
  intro n
  simp only [A381517]

end A381517

/-! ## A381517.P17804250060985731627

`A365606(n+1)-4`
-/

namespace A381517.P17804250060985731627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365606 (n + 1) - 4

end

end A381517.P17804250060985731627

namespace A381517

/-- `A365606(n+1)-4` -/
def P17804250060985731627.Spec : Prop :=
  ∀ n, P17804250060985731627.a n = A381517 n

theorem P17804250060985731627.correct : P17804250060985731627.Spec := by
  intro n
  simp only [A381517, Nat.add_sub_cancel, A381517.P17804250060985731627.a, A381517.P15118458078056138431.a, A365606, A365606.P601564546117692872.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A381517

/-! ## A381517.P2110992113151335793

`A011782(3*n)+3*a(n-1)` with `a(0)=4`
-/

namespace A381517.P2110992113151335793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A011782 (3 * n) + 3 * a (n - 1)

end

end A381517.P2110992113151335793

namespace A381517

/-- `A011782(3*n)+3*a(n-1)` -/
def P2110992113151335793.Spec : Prop :=
  ∀ n, P2110992113151335793.a n = A381517 n

end A381517

/-! ## A381517.P3161038940070087679

`A293143(n+1)-(A293143(n)+A001018(n+1))`
-/

namespace A381517.P3161038940070087679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293143 (n + 1) - (A293143 n + A001018 (n + 1))

end

end A381517.P3161038940070087679

namespace A381517

/-- `A293143(n+1)-(A293143(n)+A001018(n+1))` -/
def P3161038940070087679.Spec : Prop :=
  ∀ n, P3161038940070087679.a n = A381517 n

end A381517

/-!
# A381518: Expansion of e.g.f. ( (1/x) * Series_Reversion( x/(1 + sin(x))^2 ) )^(1/2).

The programs for A381518, there is no canonical definition to state claims against.
-/

/-! ## A381518.P3969974180144941520

`A171397(n+1-(A102440(n+1)-n^n))`
-/

namespace A381518.P3969974180144941520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 ((n + 1 : ℤ) - (A102440 (n + 1) - (n ^ n : ℤ))).toNat

end

end A381518.P3969974180144941520

/-! ## A381518.P14784232174804718385

`A326338(n)+A236840(A002465(n))`
-/

namespace A381518.P14784232174804718385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326338 n + A236840 (A002465 n).toNat

end

end A381518.P14784232174804718385

/-!
# A381519: Expansion of e.g.f. (1/x) * Series_Reversion( x/(1 + sin(x))^2 ).

The programs for A381519, there is no canonical definition to state claims against.
-/

/-! ## A381519.P13541584321666120557

`A063195(A365147(n))+1`
-/

namespace A381519.P13541584321666120557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063195 (A365147 n).toNat + 1

end

end A381519.P13541584321666120557

/-!
# A381520: Expansion of e.g.f. ( (1/x) * Series_Reversion( x/(1 + x * cos(x))^2 ) )^(1/2).

The programs for A381520, there is no canonical definition to state claims against.
-/

/-! ## A381520.P3591178779208686281

`A069812(A378892(n))+A001973(n)`
-/

namespace A381520.P3591178779208686281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069812 (A378892 n).toNat + A001973 n

end

end A381520.P3591178779208686281

/-!
# A381521: Expansion of e.g.f. (1/x) * Series_Reversion( x/(1 + x * cos(x))^2 ).

The programs for A381521, there is no canonical definition to state claims against.
-/

/-! ## A381521.P9377329998945348493

`A062491(A150884(n))+n`
-/

namespace A381521.P9377329998945348493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062491 (A150884 n).toNat + (n : ℤ)

end

end A381521.P9377329998945348493

/-!
# A381522: Sequence where k is appended after every k^2 occurrences of 1, with multiple values following a 1 listed in order.

The programs for A381522, there is no canonical definition to state claims against.
-/

/-! ## A381522.P17284965080313713895

`A000188(A395001(1+n))`
-/

namespace A381522.P17284965080313713895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A395001 (1 + n)).toNat

end

end A381522.P17284965080313713895

/-! ## A381522.P5445781139257346535

`A000188(A322791(n+1))%A329739(n+2)`
-/

namespace A381522.P5445781139257346535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000188 (A322791 (n + 1)).toNat) (A329739 (n + 2))

end

end A381522.P5445781139257346535

/-! ## A381522.P16124506878839936855

`A000188(A322791(n+1)%A270097(2*(n+2)))`
-/

namespace A381522.P16124506878839936855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (Int.tmod (A322791 (n + 1)) (A270097 (2 * (n + 2)))).toNat

end

end A381522.P16124506878839936855

/-! ## A381522.P2728888450030554738

`A000188(A000040(2*(n+1))*A322791(n+1))`
-/

namespace A381522.P2728888450030554738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A000040 (2 * (n + 1)) * A322791 (n + 1)).toNat

end

end A381522.P2728888450030554738

/-! ## A381522.P7070071958456431144

`and(A025587(n), A396405(n+1))`
-/

namespace A381522.P7070071958456431144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025587 n) (A396405 (n + 1))

end

end A381522.P7070071958456431144

/-!
# A381524: Smallest exponent of x of maximal coefficient (ignoring signs) in Hermite polynomial of order n.

The programs for A381524, there is no canonical definition to state claims against.
-/

/-! ## A381524.P14736435841491969054

`a(n-1)+(-1)^T(n-1,k)` with `a(0)=0`
-/

namespace A381524.P14736435841491969054
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (-1 : ℝ) ^ (SequenceMachineLib.triUp a n)

end

end A381524.P14736435841491969054

/-! ## A381524.P4318226598129034725

`and(row(n+1)-n, -2)+n`
-/

namespace A381524.P4318226598129034725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((SequenceMachineLib.triRow (n + 1) : ℤ) - (n : ℤ)) (-2) + (n : ℤ)

end

end A381524.P4318226598129034725

/-! ## A381524.P10164603543897244395

`a(n-(lcm(2, T(n-1,k))+1))+1` with `a(0)=0`
-/

namespace A381524.P10164603543897244395
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - (Nat.lcm 2 (SequenceMachineLib.triUp a n) + 1)) + 1

end

end A381524.P10164603543897244395

/-! ## A381524.P3628717319153582217

`A033999(T(n-1,k))+a(n-1)` with `a(0)=0`
-/

namespace A381524.P3628717319153582217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A033999 (SequenceMachineLib.triUp a n).toNat + a (n - 1)

end

end A381524.P3628717319153582217

/-! ## A381524.P14319597549408904739

`n+1-A109613(A083920(n+1))`
-/

namespace A381524.P14319597549408904739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A109613 (A083920 (n + 1)).toNat

end

end A381524.P14319597549408904739

/-! ## A381524.P4827696681941407492

`A267458(A007401(2+n))-(n+1)`
-/

namespace A381524.P4827696681941407492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267458 (A007401 (2 + n)).toNat - (n + 1 : ℤ)

end

end A381524.P4827696681941407492

/-! ## A381524.P2650005506820170268

`A099396(A099900(1+n))`
-/

namespace A381524.P2650005506820170268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099396 (A099900 (1 + n)).toNat

end

end A381524.P2650005506820170268

/-!
# A381526: a(n) is the smallest positive integer k such that the decimal expansion of k is a substring of the decimal expansion of n*k, or -1 if no such number exists.

The programs for A381526, there is no canonical definition to state claims against.
-/

/-! ## A381526.P4099946301880410691

`floor(A381527(n)/A028310(n))`
-/

namespace A381526.P4099946301880410691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A381527 n : ℚ) / (A028310 n : ℚ)⌋

end

end A381526.P4099946301880410691

/-!
# A381531: Number of permutations of [n] having the maximal possible number of pairs of integers i<j in [n] such that their cycle minima have opposite sorting order.

The programs for A381531, there is no canonical definition to state claims against.
-/

/-! ## A381531.P6360185537518170078

`A381529(∑[A125811(n)]-1)`
-/

namespace A381531.P6360185537518170078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381529 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A381531.P6360185537518170078

/-! ## A381531.P1247338136488640767

`A376982(A124506(n+2))+A050166(n)`
-/

namespace A381531.P1247338136488640767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376982 (A124506 (n + 2)).toNat + A050166 n

end

end A381531.P1247338136488640767

/-! ## A381531.P15097318297292080858

`A268197(A000531(n+1)%A014137(n+1))`
-/

namespace A381531.P15097318297292080858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268197 (Int.tmod (A000531 (n + 1)) (A014137 (n + 1))).toNat

end

end A381531.P15097318297292080858

/-!
# A381532: Smallest integer k>0 such that prime(n) + k*prime(n+1) is prime.

The programs for A381532, there is no canonical definition to state claims against.
-/

/-! ## A381532.P17915642659679640588

`floor(A129919(n+1)/A000040(n+2))`
-/

namespace A381532.P17915642659679640588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A129919 (n + 1) : ℚ) / (A000040 (n + 2) : ℚ)⌋

end

end A381532.P17915642659679640588

/-!
# A381534: A084849 interleaved with positive even numbers.

The programs for A381534, the canonical program `A381534.P108993534123726009` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381534 has offset 1).

The definition of A381534 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381534.P108993534123726009

`ogf((1+2x+x^2-2x^3+2x^4)/(1-3x^2+3x^4-x^6))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A381534

/-- `ogf((1+2x+x^2-2x^3+2x^4)/(1-3x^2+3x^4-x^6))` -/
def P108993534123726009.Spec : Prop :=
  ∀ n, P108993534123726009.a n = A381534 (n + 1)

theorem P108993534123726009.correct : P108993534123726009.Spec := by
  intro n
  simp only [A381534, Nat.add_sub_cancel]

end A381534

/-! ## A381534.P11902715184746199188

`∑{#}[gcd(2, n), C(n, #)]`
-/

namespace A381534.P11902715184746199188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose n k

end

end A381534.P11902715184746199188

namespace A381534

/-- `∑{#}[gcd(2, n), C(n, #)]` -/
def P11902715184746199188.Spec : Prop :=
  ∀ n, (P11902715184746199188.a n : ℤ) = A381534 (n + 1)

end A381534

/-! ## A381534.P9433226436599625007

`gcd(n%2*n, ∑[n])+1`
-/

namespace A381534.P9433226436599625007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n % 2 * n) (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A381534.P9433226436599625007

namespace A381534

/-- `gcd(n%2*n, ∑[n])+1` -/
def P9433226436599625007.Spec : Prop :=
  ∀ n, (P9433226436599625007.a n : ℤ) = A381534 (n + 1)

end A381534

/-! ## A381534.P15745792213782219473

`char[2*n]*C(n, 2)+1+n`
-/

namespace A381534.P15745792213782219473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) * Nat.choose n 2 + 1 + n

end

end A381534.P15745792213782219473

namespace A381534

/-- `char[2*n]*C(n, 2)+1+n` -/
def P15745792213782219473.Spec : Prop :=
  ∀ n, (P15745792213782219473.a n : ℤ) = A381534 (n + 1)

end A381534

/-! ## A381534.P8596272691099592111

`(n+1)%2*C(n, 2)+n+1`
-/

namespace A381534.P8596272691099592111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2 * Nat.choose n 2 + (n + 1)

end

end A381534.P8596272691099592111

namespace A381534

/-- `(n+1)%2*C(n, 2)+n+1` -/
def P8596272691099592111.Spec : Prop :=
  ∀ n, (P8596272691099592111.a n : ℤ) = A381534 (n + 1)

end A381534

/-! ## A381534.P9719230337985918869

`C(2*n-lcm(2, n), 2)+n+1`
-/

namespace A381534.P9719230337985918869
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((2 * n : ℤ) - (Nat.lcm 2 n : ℤ)).toNat 2 + (n + 1)

end

end A381534.P9719230337985918869

namespace A381534

/-- `C(2*n-lcm(2, n), 2)+n+1` -/
def P9719230337985918869.Spec : Prop :=
  ∀ n, (P9719230337985918869.a n : ℤ) = A381534 (n + 1)

end A381534

/-! ## A381534.P14945679493303495698

`C(n*and(1, n+1), 2)+n+1`
-/

namespace A381534.P14945679493303495698
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n * Nat.land 1 (n + 1)) 2 + (n + 1)

end

end A381534.P14945679493303495698

namespace A381534

/-- `C(n*and(1, n+1), 2)+n+1` -/
def P14945679493303495698.Spec : Prop :=
  ∀ n, (P14945679493303495698.a n : ℤ) = A381534 (n + 1)

end A381534

/-! ## A381534.P14816516620472556699

`C(C(n, and(1, n+1)), 2)+n+1`
-/

namespace A381534.P14816516620472556699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose n (Nat.land 1 (n + 1))) 2 + (n + 1)

end

end A381534.P14816516620472556699

namespace A381534

/-- `C(C(n, and(1, n+1)), 2)+n+1` -/
def P14816516620472556699.Spec : Prop :=
  ∀ n, (P14816516620472556699.a n : ℤ) = A381534 (n + 1)

end A381534

/-! ## A381534.P8169795705111020683

`(∑[n]-n)*∑[(-1)^n]+n+1`
-/

namespace A381534.P8169795705111020683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)) * (∑ j ∈ Finset.range (n + 1), f2 j) + (n + 1 : ℤ)

end

end A381534.P8169795705111020683

namespace A381534

/-- `(∑[n]-n)*∑[(-1)^n]+n+1` -/
def P8169795705111020683.Spec : Prop :=
  ∀ n, P8169795705111020683.a n = A381534 (n + 1)

end A381534

/-! ## A381534.P2306699399197834548

`A053439(n)/A152271(n)`
-/

namespace A381534.P2306699399197834548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053439 n : ℚ) / (A152271 n : ℚ)

end

end A381534.P2306699399197834548

namespace A381534

/-- `A053439(n)/A152271(n)` -/
def P2306699399197834548.Spec : Prop :=
  ∀ n, P2306699399197834548.a n = (A381534 (n + 1) : ℚ)

end A381534

/-! ## A381534.P14265236147340153532

`gcd(A006000(n), A053439(n))`
-/

namespace A381534.P14265236147340153532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006000 n) (A053439 n)

end

end A381534.P14265236147340153532

namespace A381534

/-- `gcd(A006000(n), A053439(n))` -/
def P14265236147340153532.Spec : Prop :=
  ∀ n, (P14265236147340153532.a n : ℤ) = A381534 (n + 1)

end A381534

/-! ## A381534.P4434351545949426523

`A106247(A022998(n))`
-/

namespace A381534.P4434351545949426523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106247 (A022998 n).toNat

end

end A381534.P4434351545949426523

namespace A381534

/-- `A106247(A022998(n))` -/
def P4434351545949426523.Spec : Prop :=
  ∀ n, P4434351545949426523.a n = A381534 (n + 1)

end A381534

/-! ## A381534.P10285198801115020946

`A131250(A165157(n))`
-/

namespace A381534.P10285198801115020946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131250 (A165157 n).toNat

end

end A381534.P10285198801115020946

namespace A381534

/-- `A131250(A165157(n))` -/
def P10285198801115020946.Spec : Prop :=
  ∀ n, P10285198801115020946.a n = A381534 (n + 1)

end A381534

/-! ## A381534.P10236180487255965912

`A207616(A035106(n+1))`
-/

namespace A381534.P10236180487255965912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207616 (A035106 (n + 1)).toNat

end

end A381534.P10236180487255965912

namespace A381534

/-- `A207616(A035106(n+1))` -/
def P10236180487255965912.Spec : Prop :=
  ∀ n, P10236180487255965912.a n = A381534 (n + 1)

end A381534

/-! ## A381534.P12982430105548330679

`A207616(A130404(n+1))`
-/

namespace A381534.P12982430105548330679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207616 (A130404 (n + 1)).toNat

end

end A381534.P12982430105548330679

namespace A381534

/-- `A207616(A130404(n+1))` -/
def P12982430105548330679.Spec : Prop :=
  ∀ n, P12982430105548330679.a n = A381534 (n + 1)

end A381534

/-! ## A381534.P9396857398754593842

`A052509(A316671(n+2))`
-/

namespace A381534.P9396857398754593842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 (A316671 (n + 2)).toNat

end

end A381534.P9396857398754593842

namespace A381534

/-- `A052509(A316671(n+2))` -/
def P9396857398754593842.Spec : Prop :=
  ∀ n, P9396857398754593842.a n = A381534 (n + 1)

end A381534

/-! ## A381534.P402420519374332893

`A273342(A084265(n+1))`
-/

namespace A381534.P402420519374332893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273342 (A084265 (n + 1)).toNat

end

end A381534.P402420519374332893

namespace A381534

/-- `A273342(A084265(n+1))` -/
def P402420519374332893.Spec : Prop :=
  ∀ n, P402420519374332893.a n = A381534 (n + 1)

end A381534

/-! ## A381534.P14085903094893727328

`A244734(A128223(n))`
-/

namespace A381534.P14085903094893727328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244734 (A128223 n).toNat

end

end A381534.P14085903094893727328

namespace A381534

/-- `A244734(A128223(n))` -/
def P14085903094893727328.Spec : Prop :=
  ∀ n, P14085903094893727328.a n = A381534 (n + 1)

end A381534

/-! ## A381534.P4555756298304729539

`A104795(A135405(n))`
-/

namespace A381534.P4555756298304729539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104795 (A135405 n).toNat

end

end A381534.P4555756298304729539

namespace A381534

/-- `A104795(A135405(n))` -/
def P4555756298304729539.Spec : Prop :=
  ∀ n, P4555756298304729539.a n = A381534 (n + 1)

end A381534

/-! ## A381534.P8993117569361507769

`A051597(A266665(n))`
-/

namespace A381534.P8993117569361507769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 (A266665 n).toNat

end

end A381534.P8993117569361507769

namespace A381534

/-- `A051597(A266665(n))` -/
def P8993117569361507769.Spec : Prop :=
  ∀ n, P8993117569361507769.a n = A381534 (n + 1)

end A381534

/-!
# A381536: Number of labeled histories for rooted 4-furcating trees with 3n+1 leaves if simultaneous 4-furcations are not allowed.

The programs for A381536, there is no canonical definition to state claims against.
-/

/-! ## A381536.P13451157205049413353

`C(3*n+1, 4)*a(n-1)` with `a(0)=1`
-/

namespace A381536.P13451157205049413353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (3 * n + 1) 4 * a (n - 1)

end

end A381536.P13451157205049413353

/-! ## A381536.P3887122011764077473

`a(n-1)*A232713(n)` with `a(0)=1`
-/

namespace A381536.P3887122011764077473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A232713 n

end

end A381536.P3887122011764077473

/-! ## A381536.P17346941739823810338

`A000332(3*n+1)*a(n-1)` with `a(0)=1`
-/

namespace A381536.P17346941739823810338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000332 (3 * n + 1) * a (n - 1)

end

end A381536.P17346941739823810338

/-! ## A381536.P16825555200484691885

`(9+20/(1+n)-56/(2+n))*3*a(n-1)*A001296(n)` with `a(0)=1`
-/

namespace A381536.P16825555200484691885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (9 + 20 / (1 + n : ℚ) - 56 / (2 + n : ℚ)) * (3 * a (n - 1)) * (A001296 n : ℚ)

end

end A381536.P16825555200484691885

/-! ## A381536.P10238386386216322260

`∏[A232713(A000007(n)+n)]`
-/

namespace A381536.P10238386386216322260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232713 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A381536.P10238386386216322260

/-!
# A381538: Numbers of the form m^(m^k).

The programs for A381538, there is no canonical definition to state claims against.
-/

/-! ## A381538.P16497240425328959605

`∪[A097374(n+1), A374431(A025475(n+1))]`
-/

namespace A381538.P16497240425328959605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374431 (A025475 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A381538.P16497240425328959605

/-! ## A381538.P2302338075947618555

`∪[A097374(n+1), A374431(A070265(n+1))]`
-/

namespace A381538.P2302338075947618555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374431 (A070265 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A381538.P2302338075947618555

/-! ## A381538.P463408303120066110

`∪[A257309(n+3), A374431(A025475(n+1))]`
-/

namespace A381538.P463408303120066110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257309 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374431 (A025475 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A381538.P463408303120066110

/-! ## A381538.P4040624464283331392

`∪[A257309(n+3), A374431(A070265(n+1))]`
-/

namespace A381538.P4040624464283331392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257309 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374431 (A070265 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A381538.P4040624464283331392

/-!
# A381539: Number of permutations of [n] having exactly one pair of integers i<j in [n] such that their cycle minima have opposite sorting order.

The programs for A381539, there is no canonical definition to state claims against.
-/

/-! ## A381539.P5188160414099105680

`A002266(A231179(n)-A001855(n+1))`
-/

namespace A381539.P5188160414099105680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A231179 n - A001855 (n + 1)).toNat

end

end A381539.P5188160414099105680

/-!
# A381540: Numbers appearing only once in A048767 (Look-and-Say partition of prime indices).

The programs for A381540, there is no canonical definition to state claims against.
-/

/-! ## A381540.P3375121184842130066

`eq[1, A383706(A181819(n+1))]+1`
-/

namespace A381540.P3375121184842130066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383706 (A181819 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A381540.P3375121184842130066

/-! ## A381540.P9806602233686252968

`∩[A068937(n+1), A331593(n+1)]`
-/

namespace A381540.P9806602233686252968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381540.P9806602233686252968

/-! ## A381540.P16168689029921721628

`∩[A319237(n+1), A331593(n+1)]`
-/

namespace A381540.P16168689029921721628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381540.P16168689029921721628

/-! ## A381540.P2367806627650695878

`∩[A331593(n+1), A339889(n+1)]`
-/

namespace A381540.P2367806627650695878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381540.P2367806627650695878

/-! ## A381540.P16063231193260164503

`lt[A098489(A007425(n+1))+1, 2]+1`
-/

namespace A381540.P16063231193260164503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098489 (A007425 (n + 1)).toNat + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A381540.P16063231193260164503

/-!
# A381541: Numbers appearing more than once in A048767 (Look-and-Say partition of prime indices).

The programs for A381541, there is no canonical definition to state claims against.
-/

/-! ## A381541.P16865654995602036328

`lt[2, A070012(n+2)]+2`
-/

namespace A381541.P16865654995602036328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070012 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A381541.P16865654995602036328

/-! ## A381541.P1597840719550250217

`lt[2, A070012(A233583(n+1))]`
-/

namespace A381541.P1597840719550250217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070012 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A381541.P1597840719550250217

/-! ## A381541.P7520410756811926665

`lt[1, A383706(A181819(n+1))]+1`
-/

namespace A381541.P7520410756811926665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383706 (A181819 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A381541.P7520410756811926665

/-! ## A381541.P16896993882966158181

`lt[A304649(n+1), A050330(n+1)]+1`
-/

namespace A381541.P16896993882966158181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050330 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A381541.P16896993882966158181

/-! ## A381541.P17482388675004198301

`lt[A016001(n+1), A342086(n+1)]+1`
-/

namespace A381541.P17482388675004198301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342086 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A381541.P17482388675004198301

/-!
# A381542: Numbers > 1 whose greatest prime index equals their greatest prime multiplicity.

The programs for A381542, the canonical program `A381542.P14309629720636309362` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381542 has offset 1).

The definition of A381542 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381542.P14309629720636309362

`eq[A051903(n+1), A061395(2*(n+1))]+1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A381542

/-- `eq[A051903(n+1), A061395(2*(n+1))]+1` -/
def P14309629720636309362.Spec : Prop :=
  ∀ n, (P14309629720636309362.a n : ℤ) = A381542 (n + 1)

theorem P14309629720636309362.correct : P14309629720636309362.Spec := by
  intro n
  simp only [A381542, Nat.add_sub_cancel]

end A381542

/-! ## A381542.P15404136150193653317

`filter[A320474(n+1), A353566(#)]`
-/

namespace A381542.P15404136150193653317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353566 (f1 j).toNat = 1) n)

end

end A381542.P15404136150193653317

namespace A381542

/-- `filter[A320474(n+1), A353566(#)]` -/
def P15404136150193653317.Spec : Prop :=
  ∀ n, P15404136150193653317.a n = A381542 (n + 1)

end A381542

/-! ## A381542.P9219486333475399904

`filter[A154129(n+2), A353566(#)]`
-/

namespace A381542.P9219486333475399904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154129 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353566 (f1 j).toNat = 1) n)

end

end A381542.P9219486333475399904

namespace A381542

/-- `filter[A154129(n+2), A353566(#)]` -/
def P9219486333475399904.Spec : Prop :=
  ∀ n, P9219486333475399904.a n = A381542 (n + 1)

end A381542

/-!
# A381543: Numbers > 1 whose greatest prime index (A061395), number of distinct prime factors (A001221), and greatest prime multiplicity (A051903) are all equal.

The programs for A381543, there is no canonical definition to state claims against.
-/

/-! ## A381543.P3593061645551417382

`∩[A055932(n+1), A381542(n+1)]`
-/

namespace A381543.P3593061645551417382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381543.P3593061645551417382

/-! ## A381543.P2989992665829140691

`filter[A381542(n+1), A341629(#)]`
-/

namespace A381543.P2989992665829140691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341629 (f1 j).toNat = 1) n)

end

end A381543.P2989992665829140691

/-! ## A381543.P4226989150669695481

`filter[A212166(n+2), A341629(#)]`
-/

namespace A381543.P4226989150669695481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212166 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341629 (f1 j).toNat = 1) n)

end

end A381543.P4226989150669695481

/-! ## A381543.P13046655266795766

`∩[A212166(n+1), A381542(n+1)]`
-/

namespace A381543.P13046655266795766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381543.P13046655266795766

/-! ## A381543.P1748611850814552099

`∩[A325708(n+1), A381542(n+1)]`
-/

namespace A381543.P1748611850814552099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381543.P1748611850814552099

/-!
# A381544: Number of integer partitions of n not containing more ones than any other part.

The programs for A381544, there is no canonical definition to state claims against.
-/

/-! ## A381544.P11248760239688674453

`A382526(n)+A382303(n)`
-/

namespace A381544.P11248760239688674453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382526 n + A382303 n

end

end A381544.P11248760239688674453

/-!
# A381545: Number of permutations of [n] having exactly n pairs of integers i<j in [n] such that their cycle minima have opposite sorting order.

The programs for A381545, there is no canonical definition to state claims against.
-/

/-! ## A381545.P10499426947032995446

`A357828(n)%A122432(A000166(n))`
-/

namespace A381545.P10499426947032995446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357828 n) (A122432 (A000166 n).toNat)

end

end A381545.P10499426947032995446

/-! ## A381545.P11242175990813652169

`A279329(A003961(n+4)*A136358(n+1))`
-/

namespace A381545.P11242175990813652169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279329 (A003961 (n + 4) * A136358 (n + 1)).toNat

end

end A381545.P11242175990813652169

/-!
# A381546: Numbers with an odd number of abundant divisors.

The programs for A381546, the canonical program `A381546.P8234513332747089303` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381546 has offset 1).

The definition of A381546 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1834 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381546.P8234513332747089303

`eq[1, A080224(n+1)%2]+1`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A381546

/-- `eq[1, A080224(n+1)%2]+1` -/
def P8234513332747089303.Spec : Prop :=
  ∀ n, (P8234513332747089303.a n : ℤ) = A381546 (n + 1)

theorem P8234513332747089303.correct : P8234513332747089303.Spec := by
  intro n
  simp only [A381546, Nat.add_sub_cancel]

end A381546

/-!
# A381547: Odd numbers with an odd number of abundant divisors.

The programs for A381547, there is no canonical definition to state claims against.
-/

/-! ## A381547.P15904677023007411427

`∩[A005231(1+n), A381550(n+1)]`
-/

namespace A381547.P15904677023007411427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005231 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381547.P15904677023007411427

/-! ## A381547.P5417412682947691259

`∩[A174830(n+1), A381550(n+1)]`
-/

namespace A381547.P5417412682947691259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381547.P5417412682947691259

/-! ## A381547.P15630573442387730834

`∩[A294576(n+1), A381550(n+1)]`
-/

namespace A381547.P15630573442387730834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294576 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381547.P15630573442387730834

/-! ## A381547.P15087790225718302765

`∩[A036798(n+1), A381550(n+1)]`
-/

namespace A381547.P15087790225718302765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381547.P15087790225718302765

/-! ## A381547.P18184397413107680329

`∩[A119434(n+1), A381550(n+1)]`
-/

namespace A381547.P18184397413107680329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119434 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381547.P18184397413107680329

/-! ## A381547.P7242844405246110118

`∩[A068355(n+1), A381550(n+1)]`
-/

namespace A381547.P7242844405246110118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381547.P7242844405246110118

/-! ## A381547.P5260375874135102828

`filter[A381550(n+1), A360128(#)]`
-/

namespace A381547.P5260375874135102828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360128 (f1 j).toNat = 1) n)

end

end A381547.P5260375874135102828

/-! ## A381547.P12994604336423895468

`∩[A381550(n+1), A392437(n+1)]`
-/

namespace A381547.P12994604336423895468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381547.P12994604336423895468

/-!
# A381548: Numbers k such that k and k+1 both have an odd number of abundant divisors.

The programs for A381548, there is no canonical definition to state claims against.
-/

/-! ## A381548.P14023997288755490961

`A096399(lt[A330995(n), A162306(2*(n+2))])`
-/

namespace A381548.P14023997288755490961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330995 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162306 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096399 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A381548.P14023997288755490961

/-!
# A381550: Numbers whose sum of abundant divisors is odd.

The programs for A381550, there is no canonical definition to state claims against.
-/

/-! ## A381550.P10180530627361278361

`A392653(A361396(n+1))`
-/

namespace A381550.P10180530627361278361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392653 (A361396 (n + 1)).toNat

end

end A381550.P10180530627361278361

/-!
# A381551: Number of 2*n X 4 binary arrays with row sums 2 and column sums n, avoiding the patterns 010 and 101 in any row and column.

The programs for A381551, the canonical program `A381551.P3989034111407535555` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381551 has offset 0).

The definition of A381551 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381551.P3989034111407535555

`A078678(n)²`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A381551

/-- `A078678(n)²` -/
def P3989034111407535555.Spec : Prop :=
  ∀ n, P3989034111407535555.a n = A381551 n

theorem P3989034111407535555.correct : P3989034111407535555.Spec := by
  intro n
  simp only [A381551]

end A381551

/-! ## A381551.P2837813804169174652

`A078678(n)^A036453(n+1)`
-/

namespace A381551.P2837813804169174652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078678 n : ℚ) ^ (A036453 (n + 1) : ℤ)

end

end A381551.P2837813804169174652

namespace A381551

/-- `A078678(n)^A036453(n+1)` -/
def P2837813804169174652.Spec : Prop :=
  ∀ n, P2837813804169174652.a n = (A381551 n : ℚ)

end A381551

/-! ## A381551.P2894869489861949738

`root(A078678(n), 1/A040000(n))`
-/

namespace A381551.P2894869489861949738
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A078678 n : ℝ) ^ (1 / (1 / (A040000 n : ℚ) : ℝ))

end

end A381551.P2894869489861949738

namespace A381551

/-- `root(A078678(n), 1/A040000(n))` -/
def P2894869489861949738.Spec : Prop :=
  ∀ n, P2894869489861949738.a n = (A381551 n : ℝ)

end A381551

/-! ## A381551.P17924007834059060187

`A078678(n)^(2%A001792(n))`
-/

namespace A381551.P17924007834059060187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078678 n : ℚ) ^ (Int.tmod 2 (A001792 n) : ℤ)

end

end A381551.P17924007834059060187

namespace A381551

/-- `A078678(n)^(2%A001792(n))` -/
def P17924007834059060187.Spec : Prop :=
  ∀ n, P17924007834059060187.a n = (A381551 n : ℚ)

end A381551

/-! ## A381551.P258698118450085408

`A078678(n)^gcd(2, A173033(n))`
-/

namespace A381551.P258698118450085408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078678 n ^ Int.gcd 2 (A173033 n)

end

end A381551.P258698118450085408

namespace A381551

/-- `A078678(n)^gcd(2, A173033(n))` -/
def P258698118450085408.Spec : Prop :=
  ∀ n, P258698118450085408.a n = A381551 n

end A381551

/-! ## A381551.P4298328499099038008

`A078678(n)^and(3, A016825(n))`
-/

namespace A381551.P4298328499099038008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078678 n : ℚ) ^ (Int.land 3 (A016825 n) : ℤ)

end

end A381551.P4298328499099038008

namespace A381551

/-- `A078678(n)^and(3, A016825(n))` -/
def P4298328499099038008.Spec : Prop :=
  ∀ n, P4298328499099038008.a n = (A381551 n : ℚ)

end A381551

/-! ## A381551.P8396441997611015024

`record[(A000034(n)*A088518(n))²]`
-/

namespace A381551.P8396441997611015024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000034 n * A088518 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381551.P8396441997611015024

namespace A381551

/-- `record[(A000034(n)*A088518(n))²]` -/
def P8396441997611015024.Spec : Prop :=
  ∀ n, P8396441997611015024.a n = A381551 n

end A381551

/-! ## A381551.P16294209169953834941

`(A040000(n)*A088518(A004273(n)))²`
-/

namespace A381551.P16294209169953834941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040000 n * A088518 (A004273 n).toNat) ^ 2

end

end A381551.P16294209169953834941

namespace A381551

/-- `(A040000(n)*A088518(A004273(n)))²` -/
def P16294209169953834941.Spec : Prop :=
  ∀ n, P16294209169953834941.a n = A381551 n

end A381551

/-! ## A381551.P12003393484511111335

`(A040000(n)*A132893(A002620(n)))²`
-/

namespace A381551.P12003393484511111335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040000 n * A132893 (A002620 n).toNat) ^ 2

end

end A381551.P12003393484511111335

namespace A381551

/-- `(A040000(n)*A132893(A002620(n)))²` -/
def P12003393484511111335.Spec : Prop :=
  ∀ n, P12003393484511111335.a n = A381551 n

end A381551

/-! ## A381551.P2611189074813946642

`A078678(n)^A034444(A000040(n+1))`
-/

namespace A381551.P2611189074813946642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078678 n : ℚ) ^ (A034444 (A000040 (n + 1)).toNat : ℤ)

end

end A381551.P2611189074813946642

namespace A381551

/-- `A078678(n)^A034444(A000040(n+1))` -/
def P2611189074813946642.Spec : Prop :=
  ∀ n, P2611189074813946642.a n = (A381551 n : ℚ)

end A381551

/-! ## A381551.P9360715780752835878

`A078678(n)^A034444(A034444(n+1))`
-/

namespace A381551.P9360715780752835878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078678 n : ℚ) ^ (A034444 (A034444 (n + 1)).toNat : ℤ)

end

end A381551.P9360715780752835878

namespace A381551

/-- `A078678(n)^A034444(A034444(n+1))` -/
def P9360715780752835878.Spec : Prop :=
  ∀ n, P9360715780752835878.a n = (A381551 n : ℚ)

end A381551

/-! ## A381551.P17766005638521795027

`(A036453(n+1)*A088518(A004273(n)))²`
-/

namespace A381551.P17766005638521795027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036453 (n + 1) * A088518 (A004273 n).toNat) ^ 2

end

end A381551.P17766005638521795027

namespace A381551

/-- `(A036453(n+1)*A088518(A004273(n)))²` -/
def P17766005638521795027.Spec : Prop :=
  ∀ n, P17766005638521795027.a n = A381551 n

end A381551

/-! ## A381551.P7131438987843803046

`(A040000(n)*A088518(A004280(n+1)))²`
-/

namespace A381551.P7131438987843803046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040000 n * A088518 (A004280 (n + 1)).toNat) ^ 2

end

end A381551.P7131438987843803046

namespace A381551

/-- `(A040000(n)*A088518(A004280(n+1)))²` -/
def P7131438987843803046.Spec : Prop :=
  ∀ n, P7131438987843803046.a n = A381551 n

end A381551

/-!
# A381552: Triangle read by rows T(n,k) is the number of diamond coverings for a specific number of diamonds covering an odd length row of triangles.

The programs for A381552, there is no canonical definition to state claims against.
-/

/-! ## A381552.P12298126367025643858

`2*T(n-1,k)+T(n-1,k-1)-T(n-2,k)` with `a(0)=3, a(1)=4, a(2)=4`
-/

namespace A381552.P12298126367025643858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4, 4] fun n a =>
  2 * SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp2 a n

end

end A381552.P12298126367025643858

/-! ## A381552.P7917237458251745035

`T(n-1,k)+T(n-1,k-1)+T(n-1,k)-T(n-2,k)` with `a(0)=3, a(1)=4, a(2)=4`
-/

namespace A381552.P7917237458251745035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4, 4] fun n a =>
  SequenceMachineLib.triUp a n + (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n - SequenceMachineLib.triUp2 a n)

end

end A381552.P7917237458251745035

/-! ## A381552.P17173417641275006354

`A207607(n+1)+A207606(n+2)`
-/

namespace A381552.P17173417641275006354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207607 (n + 1) + A207606 (n + 2)

end

end A381552.P17173417641275006354

/-! ## A381552.P3307512083933643851

`A207607(n+1)+A085478(n)+A078812(n)`
-/

namespace A381552.P3307512083933643851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207607 (n + 1) + (A085478 n + A078812 n)

end

end A381552.P3307512083933643851

/-!
# A381553: Number of 2*n X 6 binary arrays with row sums 3 and column sums n, avoiding the patterns 010 and 101 in any row and column.

The programs for A381553, there is no canonical definition to state claims against.
-/

/-! ## A381553.P17593046185455933706

`A000201(A001405(n)*A057552(n))`
-/

namespace A381553.P17593046185455933706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A001405 n * A057552 n).toNat

end

end A381553.P17593046185455933706

/-!
# A381559: Number of minimum dominating sets in the n-triangular honeycomb bishop graph.

The programs for A381559, there is no canonical definition to state claims against.
-/

/-! ## A381559.P10904900329360358506

`Δ[(n+2)*ceil(n/2)!]`
-/

namespace A381559.P10904900329360358506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Nat.factorial ⌈(n : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A381559.P10904900329360358506

/-! ## A381559.P944298683578009956

`Δ[A065033(n)!*(n+2)]`
-/

namespace A381559.P944298683578009956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A065033 n).toNat * (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A381559.P944298683578009956

/-! ## A381559.P2211061638849467134

`Δ[A110654(n)!*(n+2)]`
-/

namespace A381559.P2211061638849467134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A110654 n).toNat * (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A381559.P2211061638849467134

/-! ## A381559.P7942585544838344230

`Δ[(n+2)*A081123(n+1)]`
-/

namespace A381559.P7942585544838344230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A081123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A381559.P7942585544838344230

/-! ## A381559.P17890667872815928300

`(n+1)*A028242(n)!/A000034(n)`
-/

namespace A381559.P17890667872815928300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((Nat.factorial (A028242 n).toNat : ℚ) / (A000034 n : ℚ))

end

end A381559.P17890667872815928300

/-!
# A381563: 2-tone chromatic number of a double wheel graph with n vertices.

The programs for A381563, there is no canonical definition to state claims against.
-/

/-! ## A381563.P4418710395901919018

`A350715(n+4)+1`
-/

namespace A381563.P4418710395901919018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350715 (n + 4) + 1

end

end A381563.P4418710395901919018

/-! ## A381563.P4381458695066051562

`A351120(n+3)+3`
-/

namespace A381563.P4381458695066051562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351120 (n + 3) + 3

end

end A381563.P4381458695066051562

/-! ## A381563.P15682635531805676520

`1+A350715(n+4)`
-/

namespace A381563.P15682635531805676520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A350715 (n + 4)

end

end A381563.P15682635531805676520

/-! ## A381563.P8399045893472085194

`A009005(A351120(n+3))`
-/

namespace A381563.P8399045893472085194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009005 (A351120 (n + 3)).toNat

end

end A381563.P8399045893472085194

/-! ## A381563.P3288875709983794407

`A249611(A350715(n+4))`
-/

namespace A381563.P3288875709983794407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249611 (A350715 (n + 4)).toNat

end

end A381563.P3288875709983794407

/-!
# A381564: 2-tone chromatic number of a path with n-2 vertices joined to two adjacent vertices.

The programs for A381564, there is no canonical definition to state claims against.
-/

/-! ## A381564.P16957765659807199114

`A366727(2+n)+2`
-/

namespace A381564.P16957765659807199114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366727 (2 + n) + 2

end

end A381564.P16957765659807199114

/-! ## A381564.P6929022164178330157

`A003619(A366727(2+n))`
-/

namespace A381564.P6929022164178330157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003619 (A366727 (2 + n)).toNat

end

end A381564.P6929022164178330157

/-! ## A381564.P8026252152922652747

`A000523(A167742(n+1)+A031520(n+1))`
-/

namespace A381564.P8026252152922652747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A167742 (n + 1) + A031520 (n + 1)).toNat

end

end A381564.P8026252152922652747

/-!
# A381565: 2-tone chromatic number of a particular class of planar graphs with 3n+3 vertices.

The programs for A381565, there is no canonical definition to state claims against.
-/

/-! ## A381565.P18444646497641364477

`fp[∑[floor((n-1)/e)]]`
-/

namespace A381565.P18444646497641364477
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 1 : ℝ) / Real.exp 1⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A381565.P18444646497641364477

/-! ## A381565.P9084729312595946535

`floor(sqrt(A314139(n+1)))+3`
-/

namespace A381565.P9084729312595946535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A314139 (n + 1)) + 3

end

end A381565.P9084729312595946535

/-! ## A381565.P6341230703261461683

`ceil(sqrt(A301724(n)+7))+2`
-/

namespace A381565.P6341230703261461683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A301724 n + 7 : ℝ)⌉ + 2

end

end A381565.P6341230703261461683

/-! ## A381565.P6493409947359149446

`row(row(A007742(2+n)))+3`
-/

namespace A381565.P6493409947359149446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (SequenceMachineLib.triRow (A007742 (2 + n)).toNat) + 3

end

end A381565.P6493409947359149446

/-! ## A381565.P5014388100492806157

`floor(sqrt(∑[A161885(3*(n+1))]))`
-/

namespace A381565.P5014388100492806157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161885 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A381565.P5014388100492806157

/-! ## A381565.P17506482956461740364

`row(A001951(2*(2+n)))+3`
-/

namespace A381565.P17506482956461740364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A001951 (2 * (2 + n))).toNat + 3

end

end A381565.P17506482956461740364

/-! ## A381565.P14168692602636873815

`round(sqrt(A022842(2*(n+2))+1))+2`
-/

namespace A381565.P14168692602636873815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A022842 (2 * (n + 2)) + 1 : ℝ)) + 2

end

end A381565.P14168692602636873815

/-! ## A381565.P16120593701155878002

`round(sqrt(3*(n+1)+A383397(n+1)+n))+3`
-/

namespace A381565.P16120593701155878002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((3 * (n + 1) : ℤ) + A383397 (n + 1) + (n : ℤ) : ℝ)) + 3

end

end A381565.P16120593701155878002

/-! ## A381565.P11082285920226844428

`A000196(A301712(1+n))+3`
-/

namespace A381565.P11082285920226844428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A301712 (1 + n)).toNat + 3

end

end A381565.P11082285920226844428

/-! ## A381565.P11824394207528504266

`A000196(A301726(n+1))+3`
-/

namespace A381565.P11824394207528504266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A301726 (n + 1)).toNat + 3

end

end A381565.P11824394207528504266

/-!
# A381566: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of B(x)^k, where B(x) is the g.f. of A087949.

The programs for A381566, there is no canonical definition to state claims against.
-/

/-! ## A381566.P7838822603097531762

`A384864(n)+A125005(A326323(n))`
-/

namespace A381566.P7838822603097531762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384864 n + A125005 (A326323 n).toNat

end

end A381566.P7838822603097531762

/-! ## A381566.P16386334786478513343

`2*(A291652(n)+A125005(A326323(n)))-A291652(n)`
-/

namespace A381566.P16386334786478513343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A291652 n + A125005 (A326323 n).toNat) - A291652 n

end

end A381566.P16386334786478513343

/-! ## A381566.P4899956559289949549

`A384864(n)+A089311(A094544(n))`
-/

namespace A381566.P4899956559289949549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384864 n + A089311 (A094544 n).toNat

end

end A381566.P4899956559289949549

/-! ## A381566.P9140465013771617852

`A384864(n)+A025469(A163661(n))`
-/

namespace A381566.P9140465013771617852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384864 n + A025469 (A163661 n).toNat

end

end A381566.P9140465013771617852

/-! ## A381566.P7115066947378174241

`A384864(n)+A277160(A156953(n))`
-/

namespace A381566.P7115066947378174241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384864 n + A277160 (A156953 n).toNat

end

end A381566.P7115066947378174241

/-!
# A381567: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of B(x)^k, where B(x) is the g.f. of A381568.

The programs for A381567, there is no canonical definition to state claims against.
-/

/-! ## A381567.P17107217412663708630

`A128899(A061579(n)%A226897(n+1))`
-/

namespace A381567.P17107217412663708630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128899 (Int.tmod (A061579 n) (A226897 (n + 1))).toNat

end

end A381567.P17107217412663708630

/-! ## A381567.P11948841434657901076

`A175585(A378238(n))%A175585(n+3)`
-/

namespace A381567.P11948841434657901076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175585 (A378238 n).toNat) (A175585 (n + 3))

end

end A381567.P11948841434657901076

/-! ## A381567.P5150258609814739821

`A059268(n)%3*A106452(A341268(n))`
-/

namespace A381567.P5150258609814739821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059268 n) 3 * A106452 (A341268 n).toNat

end

end A381567.P5150258609814739821

/-! ## A381567.P11085804080941500781

`A066099(A059268(n))*A106452(A341268(n))`
-/

namespace A381567.P11085804080941500781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (A059268 n).toNat * A106452 (A341268 n).toNat

end

end A381567.P11085804080941500781

/-! ## A381567.P6657905730815376856

`A175585(A378238(n))/A119266(A059268(n))`
-/

namespace A381567.P6657905730815376856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175585 (A378238 n).toNat : ℚ) / (A119266 (A059268 n).toNat : ℚ)

end

end A381567.P6657905730815376856

/-!
# A381568: G.f. A(x) satisfies A(x) = (1 + x*A(x*A(x)))^2.

The programs for A381568, there is no canonical definition to state claims against.
-/

/-! ## A381568.P4515494725908909468

`A381567(∑[n+2]-1)`
-/

namespace A381568.P4515494725908909468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381567 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A381568.P4515494725908909468

/-! ## A381568.P3033431999935856320

`record[A381567(A056943(n))]`
-/

namespace A381568.P3033431999935856320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381567 (A056943 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381568.P3033431999935856320

/-! ## A381568.P10715305586629422591

`record[A381567(n)/A104980(n+1)]`
-/

namespace A381568.P10715305586629422591
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A381567 n : ℚ) / (A104980 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381568.P10715305586629422591

/-! ## A381568.P6442700042287983551

`record[A381567(n)/A375858(n+2)]`
-/

namespace A381568.P6442700042287983551
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A381567 n : ℚ) / (A375858 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381568.P6442700042287983551

/-! ## A381568.P13150273572566718111

`record[gcd(A266213(n+1), A381567(n))]`
-/

namespace A381568.P13150273572566718111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A266213 (n + 1)) (A381567 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381568.P13150273572566718111

/-!
# A381569: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of B(x)^k, where B(x) is the g.f. of A381570.

The programs for A381569, there is no canonical definition to state claims against.
-/

/-! ## A381569.P13111630207215143825

`A119673(n)-A327407(A193842(n))`
-/

namespace A381569.P13111630207215143825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119673 n - A327407 (A193842 n).toNat

end

end A381569.P13111630207215143825

/-! ## A381569.P3767704563885455777

`A206916(A266488(n))-1`
-/

namespace A381569.P3767704563885455777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206916 (A266488 n).toNat - 1

end

end A381569.P3767704563885455777

/-! ## A381569.P5697930941959182914

`A396431(n*A291883(n))`
-/

namespace A381569.P5697930941959182914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396431 ((n : ℤ) * A291883 n).toNat

end

end A381569.P5697930941959182914

/-! ## A381569.P13852854008423137172

`A396431(n*A326474(n))`
-/

namespace A381569.P13852854008423137172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396431 ((n : ℤ) * A326474 n).toNat

end

end A381569.P13852854008423137172

/-! ## A381569.P16115135606246037664

`A396431(n*A326476(n))`
-/

namespace A381569.P16115135606246037664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396431 ((n : ℤ) * A326476 n).toNat

end

end A381569.P16115135606246037664

/-!
# A381570: G.f. A(x) satisfies A(x) = (1 + x*A(x*A(x)))^3.

The programs for A381570, there is no canonical definition to state claims against.
-/

/-! ## A381570.P700420613617396639

`A381569(∑[n+1]+n)`
-/

namespace A381570.P700420613617396639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381569 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A381570.P700420613617396639

/-! ## A381570.P12348714971097343885

`record[A381569(A056943(n))]`
-/

namespace A381570.P12348714971097343885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381569 (A056943 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381570.P12348714971097343885

/-! ## A381570.P14508769680914303318

`record[A381569(n)/A186020(n)]`
-/

namespace A381570.P14508769680914303318
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A381569 n : ℚ) / (A186020 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381570.P14508769680914303318

/-! ## A381570.P10685292651667106295

`record[gcd(A116598(n), A381569(n))]`
-/

namespace A381570.P10685292651667106295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A116598 n) (A381569 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381570.P10685292651667106295

/-! ## A381570.P17721935273019909

`record[A381569(n)/A007318(n+1)]`
-/

namespace A381570.P17721935273019909
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A381569 n : ℚ) / (A007318 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381570.P17721935273019909

/-!
# A381571: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of B(x)^k, where B(x) is the g.f. of A381572.

The programs for A381571, there is no canonical definition to state claims against.
-/

/-! ## A381571.P10258723416732341674

`A147968(A339350(n))`
-/

namespace A381571.P10258723416732341674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147968 (A339350 n).toNat

end

end A381571.P10258723416732341674

/-! ## A381571.P577274097160511667

`A147968(A381569(n))`
-/

namespace A381571.P577274097160511667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147968 (A381569 n).toNat

end

end A381571.P577274097160511667

/-! ## A381571.P7271401257982486146

`A147968(A381573(n))`
-/

namespace A381571.P7271401257982486146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147968 (A381573 n).toNat

end

end A381571.P7271401257982486146

/-! ## A381571.P15166598688893595841

`A175585(A378238(n))%(A000010(n+1)+7)`
-/

namespace A381571.P15166598688893595841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175585 (A378238 n).toNat) (A000010 (n + 1) + 7)

end

end A381571.P15166598688893595841

/-! ## A381571.P881006687877748964

`A072088(A384751(n))+A002113(A086617(n))`
-/

namespace A381571.P881006687877748964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A384751 n).toNat + A002113 (A086617 n).toNat

end

end A381571.P881006687877748964

/-!
# A381572: G.f. A(x) satisfies A(x) = 1/(1 - x*A(x*A(x)))^2.

The programs for A381572, there is no canonical definition to state claims against.
-/

/-! ## A381572.P574971257449247397

`A381571(∑[n+2]-1)`
-/

namespace A381572.P574971257449247397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381571 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A381572.P574971257449247397

/-! ## A381572.P6224958303835216242

`record[A381571(n+col(n)+1)]`
-/

namespace A381572.P6224958303835216242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381571 (n + SequenceMachineLib.triCol n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381572.P6224958303835216242

/-! ## A381572.P4619019673170659262

`record[A381571(A361639(n+2))]`
-/

namespace A381572.P4619019673170659262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381571 (A361639 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381572.P4619019673170659262

/-! ## A381572.P16700749673725535316

`record[gcd(A266213(n+1), A381571(n))]`
-/

namespace A381572.P16700749673725535316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A266213 (n + 1)) (A381571 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381572.P16700749673725535316

/-! ## A381572.P5292787629223943235

`record[A381571(n+1)-A381603(n+2)]`
-/

namespace A381572.P5292787629223943235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381571 (n + 1) - A381603 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381572.P5292787629223943235

/-!
# A381573: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of B(x)^k, where B(x) is the g.f. of A381574.

The programs for A381573, there is no canonical definition to state claims against.
-/

/-! ## A381573.P3174154928905621884

`A089854(A339350(n))`
-/

namespace A381573.P3174154928905621884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089854 (A339350 n).toNat

end

end A381573.P3174154928905621884

/-! ## A381573.P8656584890598541826

`A339350(n)%A265789(n+1)`
-/

namespace A381573.P8656584890598541826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339350 n) (A265789 (n + 1))

end

end A381573.P8656584890598541826

/-! ## A381573.P13885749139846422818

`A339350(n)+A185237(A055648(n))`
-/

namespace A381573.P13885749139846422818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339350 n + A185237 (A055648 n).toNat

end

end A381573.P13885749139846422818

/-! ## A381573.P4311515360752180927

`A339350(n)+A323239(A061992(n))`
-/

namespace A381573.P4311515360752180927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339350 n + A323239 (A061992 n).toNat

end

end A381573.P4311515360752180927

/-! ## A381573.P44663259201517298

`A339350(n)+A323239(A214201(n))`
-/

namespace A381573.P44663259201517298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339350 n + A323239 (A214201 n).toNat

end

end A381573.P44663259201517298

/-!
# A381574: G.f. A(x) satisfies A(x) = 1/(1 - x*A(x*A(x)))^3.

The programs for A381574, there is no canonical definition to state claims against.
-/

/-! ## A381574.P4111873573523239125

`A381573(∑[n+2]-1)`
-/

namespace A381574.P4111873573523239125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381573 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A381574.P4111873573523239125

/-! ## A381574.P9560510684040010206

`record[A381573(A056943(n))]`
-/

namespace A381574.P9560510684040010206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381573 (A056943 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381574.P9560510684040010206

/-! ## A381574.P815598990672763597

`record[gcd(A116598(n), A381573(n))]`
-/

namespace A381574.P815598990672763597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A116598 n) (A381573 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381574.P815598990672763597

/-! ## A381574.P7611522301660279898

`record[A381573(n)/A007318(n+1)]`
-/

namespace A381574.P7611522301660279898
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A381573 n : ℚ) / (A007318 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381574.P7611522301660279898

/-! ## A381574.P14538136177408801897

`record[A381573(n)/A213936(n+1)]`
-/

namespace A381574.P14538136177408801897
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A381573 n : ℚ) / (A213936 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381574.P14538136177408801897

/-!
# A381575: Number of disjoint-union partial algebras with zero on [n].

The programs for A381575, there is no canonical definition to state claims against.
-/

/-! ## A381575.P10512794881714705216

`A303540(n+1)+A174670(A000364(n))`
-/

namespace A381575.P10512794881714705216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303540 (n + 1) + A174670 (A000364 n).toNat

end

end A381575.P10512794881714705216

/-!
# A381577: Unique sequence of 0's, 1's, and 2's such that for any terms x and y with x < y, the subsequence of x's and y's becomes the Thue-Morse sequence after substitution x -> 0, y -> 1.

The programs for A381577, there is no canonical definition to state claims against.
-/

/-! ## A381577.P10036440845152092339

`A076826(floor(n/3)+n)`
-/

namespace A381577.P10036440845152092339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076826 (⌊(n : ℚ) / 3⌋ + (n : ℤ)).toNat

end

end A381577.P10036440845152092339

/-! ## A381577.P4110101702057607056

`A036580(comp[a(n-1)+4])` with `a(0)=3`
-/

namespace A381577.P4110101702057607056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + 4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036580 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A381577.P4110101702057607056

/-! ## A381577.P1057855614327548712

`A036580(lt[2^val(n+1, 2), 3])`
-/

namespace A381577.P1057855614327548712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036580 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A381577.P1057855614327548712

/-! ## A381577.P13974370712871291631

`A007413(ceil((4*n+1)/3))-1`
-/

namespace A381577.P13974370712871291631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007413 ⌈(4 * n + 1 : ℚ) / 3⌉.toNat - 1

end

end A381577.P13974370712871291631

/-! ## A381577.P2590395935394664595

`1-A029883(n+floor(n/3)+1)`
-/

namespace A381577.P2590395935394664595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A029883 ((n : ℤ) + ⌊(n : ℚ) / 3⌋ + 1).toNat

end

end A381577.P2590395935394664595

/-! ## A381577.P5661020975334789966

`A036580(A004773(n))`
-/

namespace A381577.P5661020975334789966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036580 (A004773 n).toNat

end

end A381577.P5661020975334789966

/-! ## A381577.P4215796388613725321

`A036580(A047462(n+1))`
-/

namespace A381577.P4215796388613725321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036580 (A047462 (n + 1)).toNat

end

end A381577.P4215796388613725321

/-! ## A381577.P7795365619657496494

`A036580(A047469(n+1))`
-/

namespace A381577.P7795365619657496494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036580 (A047469 (n + 1)).toNat

end

end A381577.P7795365619657496494

/-! ## A381577.P5289996286633254004

`A036577(A047556(n+1))`
-/

namespace A381577.P5289996286633254004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036577 (A047556 (n + 1)).toNat

end

end A381577.P5289996286633254004

/-! ## A381577.P1219186366212269167

`A036577(A047574(n+1))`
-/

namespace A381577.P1219186366212269167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036577 (A047574 (n + 1)).toNat

end

end A381577.P1219186366212269167

/-!
# A381579: The Chung-Graham representation of n: representation of n in base of even-indexed Fibonacci numbers.

The programs for A381579, the canonical program `A381579.P9755719263119690810` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381579 has offset 0).

The definition of A381579 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4267 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381579.P9755719263119690810

`A007089(A381608(n))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A381579

/-- `A007089(A381608(n))` -/
def P9755719263119690810.Spec : Prop :=
  ∀ n, P9755719263119690810.a n = A381579 n

theorem P9755719263119690810.correct : P9755719263119690810.Spec := by
  intro n
  simp only [A381579]

end A381579

/-! ## A381579.P10862976926749902025

`A007089(eq[A005812(n), A053735(n)])`
-/

namespace A381579.P10862976926749902025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A381579.P10862976926749902025

namespace A381579

/-- `A007089(eq[A005812(n), A053735(n)])` -/
def P10862976926749902025.Spec : Prop :=
  ∀ n, P10862976926749902025.a n = A381579 n

end A381579

/-! ## A381579.P9772176141768384344

`A007089(eq[A061282(n), A061295(n)])`
-/

namespace A381579.P9772176141768384344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061282 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A381579.P9772176141768384344

namespace A381579

/-- `A007089(eq[A061282(n), A061295(n)])` -/
def P9772176141768384344.Spec : Prop :=
  ∀ n, P9772176141768384344.a n = A381579 n

end A381579

/-! ## A381579.P18142836807022921859

`A007089(eq[A089643(n), A134024(n)])`
-/

namespace A381579.P18142836807022921859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089643 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A381579.P18142836807022921859

namespace A381579

/-- `A007089(eq[A089643(n), A134024(n)])` -/
def P18142836807022921859.Spec : Prop :=
  ∀ n, P18142836807022921859.a n = A381579 n

end A381579

/-! ## A381579.P5086962012383498859

`A007089(eq[A000989(n), A134022(n)])`
-/

namespace A381579.P5086962012383498859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A381579.P5086962012383498859

namespace A381579

/-- `A007089(eq[A000989(n), A134022(n)])` -/
def P5086962012383498859.Spec : Prop :=
  ∀ n, P5086962012383498859.a n = A381579 n

end A381579

/-! ## A381579.P1735339067725170904

`A007089(eq[A065361(n), A343228(n)])`
-/

namespace A381579.P1735339067725170904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343228 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A381579.P1735339067725170904

namespace A381579

/-- `A007089(eq[A065361(n), A343228(n)])` -/
def P1735339067725170904.Spec : Prop :=
  ∀ n, P1735339067725170904.a n = A381579 n

end A381579

/-!
# A381580: Numbers whose Chung-Graham representation (A381579) is palindromic.

The programs for A381580, there is no canonical definition to state claims against.
-/

/-! ## A381580.P2473268518609143695

`eq[A004086(A381579(n)), A381579(n)]`
-/

namespace A381580.P2473268518609143695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A381579 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381579 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381580.P2473268518609143695

/-! ## A381580.P14603588311193289647

`lt[0, A136522(A381579(n))]`
-/

namespace A381580.P14603588311193289647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 (A381579 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A381580.P14603588311193289647

/-! ## A381580.P4739899642484828190

`lt[A276434(A254788(n+1)), A306767(n+1)]`
-/

namespace A381580.P4739899642484828190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276434 (A254788 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306767 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A381580.P4739899642484828190

/-!
# A381582: Numbers k such that k and k+1 are both terms in A381581.

The programs for A381582, there is no canonical definition to state claims against.
-/

/-! ## A381582.P2316581893098012919

`∩[A381581(n+1)-1, A381581(n+1)]`
-/

namespace A381582.P2316581893098012919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381581 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381582.P2316581893098012919

/-! ## A381582.P430258943097196828

`∩[A023443(A381581(n+1)), A381581(n+1)]`
-/

namespace A381582.P430258943097196828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A381581 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381582.P430258943097196828

/-!
# A381583: Starts of runs of 3 consecutive integers that are all terms in A381581.

The programs for A381583, there is no canonical definition to state claims against.
-/

/-! ## A381583.P15466747509304306878

`∩[A381582(n+1)-1, A381582(n+1)]`
-/

namespace A381583.P15466747509304306878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381582 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381582 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381583.P15466747509304306878

/-! ## A381583.P6434865865189597527

`∩[A381582(n+1)-1, A381581(n+1)]`
-/

namespace A381583.P6434865865189597527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381582 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381583.P6434865865189597527

/-! ## A381583.P13789126895936551981

`∩[A023443(A381582(n+1)), A381581(n+1)]`
-/

namespace A381583.P13789126895936551981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A381582 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381583.P13789126895936551981

/-! ## A381583.P2537409014946186505

`∩[A023443(A381582(n+2)), A381582(n+1)]`
-/

namespace A381583.P2537409014946186505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A381582 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381582 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381583.P2537409014946186505

/-!
# A381584: Starts of runs of 4 consecutive integers that are all terms in A381581.

The programs for A381584, there is no canonical definition to state claims against.
-/

/-! ## A381584.P9286559091508637729

`∩[A381583(n+1)-1, A381583(n+1)]`
-/

namespace A381584.P9286559091508637729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381583 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381584.P9286559091508637729

/-!
# A381587: a(1) = 1; thereafter the sequence is extended by iteratively appending the run length transform of the reverse of the sequence thus far.

The programs for A381587, there is no canonical definition to state claims against.
-/

/-! ## A381587.P16322843059163279036

`A373672(A280943(n+1))`
-/

namespace A381587.P16322843059163279036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373672 (A280943 (n + 1)).toNat

end

end A381587.P16322843059163279036

/-! ## A381587.P13243790104827247034

`A057945(A068057(n+2)^A214568(n+4))`
-/

namespace A381587.P13243790104827247034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057945 (SequenceMachineLib.roundAway ((A068057 (n + 2) : ℚ) ^ (A214568 (n + 4) : ℤ))).toNat

end

end A381587.P13243790104827247034

/-! ## A381587.P11549676113104970845

`A001876(A328571(n+1)^A001876(3*(n+1)))`
-/

namespace A381587.P11549676113104970845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (SequenceMachineLib.roundAway ((A328571 (n + 1) : ℚ) ^ (A001876 (3 * (n + 1)) : ℤ))).toNat

end

end A381587.P11549676113104970845

/-! ## A381587.P2804377726276940044

`A257993(gcd(A007954(n), A019489(n)))`
-/

namespace A381587.P2804377726276940044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (Int.gcd (A007954 n) (A019489 n))

end

end A381587.P2804377726276940044

/-! ## A381587.P11550867463181348367

`gcd(A046206(n+1), A388721(A005708(n)))`
-/

namespace A381587.P11550867463181348367
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046206 (n + 1)) (A388721 (A005708 n).toNat)

end

end A381587.P11550867463181348367

/-!
# A381588: If n = Product (p_j^k_j) then a(n) = Product (lcm(p_j, k_j)), with a(1) = 1.

The programs for A381588, the canonical program `A381588.P6316090729294100752` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381588 has offset 1).

The definition of A381588 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381588.P6316090729294100752

`A005361(n+1)*A083346(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A381588

/-- `A005361(n+1)*A083346(n+1)` -/
def P6316090729294100752.Spec : Prop :=
  ∀ n, P6316090729294100752.a n = A381588 (n + 1)

theorem P6316090729294100752.correct : P6316090729294100752.Spec := by
  intro n
  simp only [A381588, Nat.add_sub_cancel]

end A381588

/-! ## A381588.P5490180004577512854

`A000026(1+n)/A369008(n+1)`
-/

namespace A381588.P5490180004577512854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000026 (1 + n) : ℚ) / (A369008 (n + 1) : ℚ)

end

end A381588.P5490180004577512854

namespace A381588

/-- `A000026(1+n)/A369008(n+1)` -/
def P5490180004577512854.Spec : Prop :=
  ∀ n, P5490180004577512854.a n = (A381588 (n + 1) : ℚ)

end A381588

/-! ## A381588.P7915171453528941526

`(A183094(n+1)+1)*A083346(n+1)`
-/

namespace A381588.P7915171453528941526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A183094 (n + 1) + 1) * A083346 (n + 1)

end

end A381588.P7915171453528941526

namespace A381588

/-- `(A183094(n+1)+1)*A083346(n+1)` -/
def P7915171453528941526.Spec : Prop :=
  ∀ n, P7915171453528941526.a n = A381588 (n + 1)

theorem P7915171453528941526.correct : P7915171453528941526.Spec := by
  intro n
  simp only [A381588, Nat.add_sub_cancel, A381588.P7915171453528941526.a, A381588.P6316090729294100752.a, A005361, A005361.P7238185687981551187.a, A083346, A083346.P9947900176606542140.f1, A083346.P9947900176606542140.a, A183094, A183094.P2300528291682876645.a, A000005, A000005.P16091521709108585461.a, A007913, A007913.P8131970495124731496.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A069891, A069891.P9601038511984379204.a, A085731, A085731.P17818604226734037125.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A349394, A349394.P210516795435731064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A381588

/-! ## A381588.P283196892052698389

`A000005(A003557(n+1))*A083346(n+1)`
-/

namespace A381588.P283196892052698389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A003557 (n + 1)).toNat * A083346 (n + 1)

end

end A381588.P283196892052698389

namespace A381588

/-- `A000005(A003557(n+1))*A083346(n+1)` -/
def P283196892052698389.Spec : Prop :=
  ∀ n, P283196892052698389.a n = A381588 (n + 1)

end A381588

/-! ## A381588.P18414350701302777622

`A381613(n+1)/A369008(n+1)*A381614(n+1)`
-/

namespace A381588.P18414350701302777622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A381613 (n + 1) : ℚ) / (A369008 (n + 1) : ℚ) * (A381614 (n + 1) : ℚ)

end

end A381588.P18414350701302777622

namespace A381588

/-- `A381613(n+1)/A369008(n+1)*A381614(n+1)` -/
def P18414350701302777622.Spec : Prop :=
  ∀ n, P18414350701302777622.a n = (A381588 (n + 1) : ℚ)

end A381588

/-!
# A381590: Primes with primitive root -100.

The programs for A381590, there is no canonical definition to state claims against.
-/

/-! ## A381590.P1535299391899856260

`∩[A002052(n+1), A137624(n+1)]`
-/

namespace A381590.P1535299391899856260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381590.P1535299391899856260

/-! ## A381590.P1537437208848545567

`∩[A002052(n+1), A168543(n+1)]`
-/

namespace A381590.P1537437208848545567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381590.P1537437208848545567

/-! ## A381590.P12583633250308928719

`∩[A002052(n+1), A308078(n+1)]`
-/

namespace A381590.P12583633250308928719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381590.P12583633250308928719

/-! ## A381590.P17280827843077875824

`A002145(lt[A259168(n), A259186(n+1)])`
-/

namespace A381590.P17280827843077875824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259168 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A381590.P17280827843077875824

/-! ## A381590.P5162713051425696369

`A002145(lt[A174617(n), A053186(3*n)])`
-/

namespace A381590.P5162713051425696369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174617 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A381590.P5162713051425696369

/-!
# A381591: Elimination order of the first person in a variation of the Josephus problem, where there are n people total and two people are skipped each time.

The programs for A381591, there is no canonical definition to state claims against.
-/

/-! ## A381591.P10313935642878537732

`1-A263390(Δ[n²])+n`
-/

namespace A381591.P10313935642878537732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A263390 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n : ℤ)

end

end A381591.P10313935642878537732

/-! ## A381591.P699804674216368731

`n+1-A263390(2*n+1)`
-/

namespace A381591.P699804674216368731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A263390 (2 * n + 1)

end

end A381591.P699804674216368731

/-! ## A381591.P888182714662798253

`2-A163491(2*(n+1))+n`
-/

namespace A381591.P888182714662798253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A163491 (2 * (n + 1)) + (n : ℤ)

end

end A381591.P888182714662798253

/-! ## A381591.P14079602903705393233

`A380195(∑[n]+1)`
-/

namespace A381591.P14079602903705393233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380195 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A381591.P14079602903705393233

/-! ## A381591.P9541892103007721816

`A382354(∑[1+n])`
-/

namespace A381591.P9541892103007721816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382354 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A381591.P9541892103007721816

/-!
# A381592: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of B(x)^k, where B(x) is the g.f. of A381600.

The programs for A381592, there is no canonical definition to state claims against.
-/

/-! ## A381592.P12171878159689204097

`A384620(n)+A000523(2^A392378(n))-A291652(n)`
-/

namespace A381592.P12171878159689204097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384620 n + A000523 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A392378 n : ℤ))).toNat - A291652 n

end

end A381592.P12171878159689204097

/-! ## A381592.P192264807858621314

`A384620(n)+A000523(2^A392378(n))-A381566(n)`
-/

namespace A381592.P192264807858621314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384620 n + A000523 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A392378 n : ℤ))).toNat - A381566 n

end

end A381592.P192264807858621314

/-! ## A381592.P5067333843385154838

`A384620(n)+A384581(n)-A000523(2^A392378(n))`
-/

namespace A381592.P5067333843385154838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384620 n + A384581 n - A000523 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A392378 n : ℤ))).toNat

end

end A381592.P5067333843385154838

/-! ## A381592.P17639148569169074182

`A384620(n)+A000523(2^A392378(n))-A384864(n)`
-/

namespace A381592.P17639148569169074182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384620 n + A000523 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A392378 n : ℤ))).toNat - A384864 n

end

end A381592.P17639148569169074182

/-! ## A381592.P15891136597605566177

`A384620(n)+A001222(3^A392378(n))-A378320(n)`
-/

namespace A381592.P15891136597605566177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384620 n + A001222 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A392378 n : ℤ))).toNat - A378320 n

end

end A381592.P15891136597605566177

/-!
# A381593: G.f. A(x) satisfies A(x) = 1/(1 - x * A(x) * A(x*A(x)))^2.

The programs for A381593, there is no canonical definition to state claims against.
-/

/-! ## A381593.P17135328083697081666

`abs(A107096(2+n))`
-/

namespace A381593.P17135328083697081666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A107096 (2 + n)|

end

end A381593.P17135328083697081666

/-! ## A381593.P7909956405591446982

`record[abs(A107096(A152271(n)))]`
-/

namespace A381593.P7909956405591446982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A107096 (A152271 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381593.P7909956405591446982

/-! ## A381593.P6795584281814542960

`record[A107096(A391618(2*(n+1)))*A134668(n)]`
-/

namespace A381593.P6795584281814542960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107096 (A391618 (2 * (n + 1))).toNat * A134668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381593.P6795584281814542960

/-! ## A381593.P9354748479107432264

`lcm(A049695(A000384(2*(n+1))), A107096(n+2))`
-/

namespace A381593.P9354748479107432264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A049695 (A000384 (2 * (n + 1))).toNat) (A107096 (n + 2))

end

end A381593.P9354748479107432264

/-! ## A381593.P1440549965609319693

`record[abs(A107096(A319416(n)))]`
-/

namespace A381593.P1440549965609319693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A107096 (A319416 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381593.P1440549965609319693

/-!
# A381594: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of B(x)^k, where B(x) is the g.f. of A381601.

The programs for A381594, there is no canonical definition to state claims against.
-/

/-! ## A381594.P2645451061861225544

`or(A072088(A355427(n)), A384623(n))`
-/

namespace A381594.P2645451061861225544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A072088 (A355427 n).toNat) (A384623 n)

end

end A381594.P2645451061861225544

/-! ## A381594.P13028104569760909722

`or(A057354(A185213(n)), A384623(n))`
-/

namespace A381594.P13028104569760909722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057354 (A185213 n).toNat) (A384623 n)

end

end A381594.P13028104569760909722

/-! ## A381594.P13746864931085136275

`A384623(A055648(n))`
-/

namespace A381594.P13746864931085136275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384623 (A055648 n).toNat

end

end A381594.P13746864931085136275

/-! ## A381594.P4753661063821999502

`A089867(A384623(n))`
-/

namespace A381594.P4753661063821999502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A384623 n).toNat

end

end A381594.P4753661063821999502

/-! ## A381594.P3157522797857770867

`A140473(A378238(n))`
-/

namespace A381594.P3157522797857770867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140473 (A378238 n).toNat

end

end A381594.P3157522797857770867

/-!
# A381595: G.f. A(x) satisfies A(x) = 1/(1 - x * A(x) * A(x*A(x)))^3.

The programs for A381595, there is no canonical definition to state claims against.
-/

/-! ## A381595.P9242211443103978527

`A381594(A000217(n+4)-4)`
-/

namespace A381595.P9242211443103978527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381594 (A000217 (n + 4) - 4).toNat

end

end A381595.P9242211443103978527

/-! ## A381595.P13637235152397808537

`A381594(lt[A035342(n+4), A065531(n+1)])`
-/

namespace A381595.P13637235152397808537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035342 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381594 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A381595.P13637235152397808537

/-! ## A381595.P16262937547281378385

`A381594(lt[A218897(n+5), A000040(n+1)])`
-/

namespace A381595.P16262937547281378385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218897 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381594 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A381595.P16262937547281378385

/-! ## A381595.P16966928742744151768

`A381594(lt[A364603(n+4), A055642(n+4)])`
-/

namespace A381595.P16966928742744151768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364603 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381594 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A381595.P16966928742744151768

/-!
# A381596: a(n) = number of real zeros (counted with multiplicity) of the polynomial P(n,z) = Sum_{i=1..n} A001223(i)*z^(i-1) where A001223(i) = differences between consecutive primes.

The programs for A381596, there is no canonical definition to state claims against.
-/

/-! ## A381596.P4439932572540724370

`A179759(A179759(n+5)+A046136(n+1))`
-/

namespace A381596.P4439932572540724370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179759 (A179759 (n + 5) + A046136 (n + 1)).toNat

end

end A381596.P4439932572540724370

/-! ## A381596.P11386512354690424780

`A045536(A227248(n+1))%A086520(n+2)`
-/

namespace A381596.P11386512354690424780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045536 (A227248 (n + 1)).toNat) (A086520 (n + 2))

end

end A381596.P11386512354690424780

/-! ## A381596.P3353927367858750353

`A139352(A164405(n))`
-/

namespace A381596.P3353927367858750353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A164405 n).toNat

end

end A381596.P3353927367858750353

/-! ## A381596.P7465146976835010546

`gcd(A257564(n), A347706(A250120(n+2)))`
-/

namespace A381596.P7465146976835010546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A257564 n) (A347706 (A250120 (n + 2)).toNat)

end

end A381596.P7465146976835010546

/-! ## A381596.P10242464699684822554

`A326787(4*xor(n, floor(n/2)))`
-/

namespace A381596.P10242464699684822554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326787 (4 * Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A381596.P10242464699684822554

/-!
# A381597: Lexicographically earliest sequence of positive integers such that for any t and k, with k>=1, where t = a(n) = a(n+k) = a(n+2*k), only one occurrence of k, for a given t, appears anywhere in the sequence.

The programs for A381597, there is no canonical definition to state claims against.
-/

/-! ## A381597.P18254963888874322884

`A001221(A322744(3*(n+1))^3)`
-/

namespace A381597.P18254963888874322884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A322744 (3 * (n + 1)) ^ 3).toNat

end

end A381597.P18254963888874322884

/-! ## A381597.P14628788320303187169

`A055642(gcd(A001792(n), A194271(3*n)))`
-/

namespace A381597.P14628788320303187169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (Int.gcd (A001792 n) (A194271 (3 * n)))

end

end A381597.P14628788320303187169

/-! ## A381597.P6592345424861947127

`A092782(A248230(n+1)+n)`
-/

namespace A381597.P6592345424861947127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092782 (A248230 (n + 1) + (n : ℤ)).toNat

end

end A381597.P6592345424861947127

/-! ## A381597.P9881628885564014306

`gcd(A001221(A387927(n+1)), A221578(n))`
-/

namespace A381597.P9881628885564014306
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (A387927 (n + 1)).toNat) (A221578 n)

end

end A381597.P9881628885564014306

/-! ## A381597.P4284184355040097176

`A043280(A013583(3*n+5)+A006000(n))`
-/

namespace A381597.P4284184355040097176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043280 (A013583 (3 * n + 5) + A006000 n).toNat

end

end A381597.P4284184355040097176

/-!
# A381599: Index where n first appears in A381597.

The programs for A381599, there is no canonical definition to state claims against.
-/

/-! ## A381599.P17194445545856314413

`A219052(A143293(n))+A063540(n)`
-/

namespace A381599.P17194445545856314413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219052 (A143293 n).toNat + A063540 n

end

end A381599.P17194445545856314413

