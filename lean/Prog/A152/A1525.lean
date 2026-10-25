import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A152504: 1/10 of the number of permutations of 4 indistinguishable copies of 1..n with exactly 2 local maxima.

The programs for A152504, the canonical program `A152504.P13215120483699205332` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152504 has offset 1).

The definition of A152504 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152504.P13215120483699205332

`45*a(n-1)-375*a(n-2)+875*a(n-3)` with `a(0)=0, a(1)=3, a(2)=140`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152504

/-- `45*a(n-1)-375*a(n-2)+875*a(n-3)` -/
def P13215120483699205332.Spec : Prop :=
  ∀ n, P13215120483699205332.a n = A152504 (n + 1)

theorem P13215120483699205332.correct : P13215120483699205332.Spec := by
  intro n
  simp only [A152504, Nat.add_sub_cancel]

end A152504

/-! ## A152504.P15885764980506769407

`(11*35^n-11*5^n-12*n*5^n)/90`
-/

namespace A152504.P15885764980506769407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 * 35 ^ n : ℤ) - (11 * 5 ^ n : ℤ) - (12 * n * 5 ^ n : ℤ) : ℚ) / 90

end

end A152504.P15885764980506769407

namespace A152504

/-- `(11*35^n-11*5^n-12*n*5^n)/90` -/
def P15885764980506769407.Spec : Prop :=
  ∀ n, P15885764980506769407.a n = (A152504 (n + 1) : ℚ)

theorem P15885764980506769407.correct : P15885764980506769407.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A152504, Nat.add_sub_cancel, A152504.P15885764980506769407.a, A152504.P13215120483699205332.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A152504, Nat.add_sub_cancel, A152504.P15885764980506769407.a, A152504.P13215120483699205332.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A152504

/-!
# A152509: 1/30 of the number of permutations of 5 indistinguishable copies of 1..n with exactly 2 local maxima.

The programs for A152509, the canonical program `A152509.P7855545340931931978` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152509 has offset 1).

The definition of A152509 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152509.P7855545340931931978

`(23*56^n-23*6^n-25*n*6^n)/500`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152509

/-- `(23*56^n-23*6^n-25*n*6^n)/500` -/
def P7855545340931931978.Spec : Prop :=
  ∀ n, P7855545340931931978.a n = (A152509 (n + 1) : ℚ)

end A152509

/-!
# A152513: 1/21 of the number of permutations of 6 indistinguishable copies of 1..n with exactly 2 local maxima.

The programs for A152513, the canonical program `A152513.P5480506187780368637` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152513 has offset 1).

The definition of A152513 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152513.P5480506187780368637

`(61*84^n-61*7^n-66*n*7^n)/847`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152513

/-- `(61*84^n-61*7^n-66*n*7^n)/847` -/
def P5480506187780368637.Spec : Prop :=
  ∀ n, P5480506187780368637.a n = (A152513 (n + 1) : ℚ)

end A152513

/-!
# A152517: 1/56 of the number of permutations of 7 indistinguishable copies of 1..n with exactly 2 local maxima.

The programs for A152517, the canonical program `A152517.P15665063827791706485` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152517 has offset 1).

The definition of A152517 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152517.P15665063827791706485

`(13*120^n-13*8^n-14*n*8^n)/448`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152517

/-- `(13*120^n-13*8^n-14*n*8^n)/448` -/
def P15665063827791706485.Spec : Prop :=
  ∀ n, P15665063827791706485.a n = (A152517 (n + 1) : ℚ)

end A152517

/-!
# A152521: Juxtaposition of prime(2n-1) and prime(2n) is a prime.

The programs for A152521, there is no canonical definition to state claims against.
-/

/-! ## A152521.P1411952894685565319

`∩[A007795(n+1), A030461(n+1)]`
-/

namespace A152521.P1411952894685565319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152521.P1411952894685565319

/-! ## A152521.P15385375469074018308

`∩[A007795(n+1), A068655(n+1)]`
-/

namespace A152521.P15385375469074018308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152521.P15385375469074018308

/-! ## A152521.P15357411762086186405

`∩[A007795(n+1), A280376(n+1)]`
-/

namespace A152521.P15357411762086186405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152521.P15357411762086186405

/-! ## A152521.P16016643434163059963

`∩[A007795(n+1), A280576(n+1)]`
-/

namespace A152521.P16016643434163059963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280576 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152521.P16016643434163059963

/-! ## A152521.P5168968865952544829

`∩[A045533(2*n+1), A030461(n+1)]`
-/

namespace A152521.P5168968865952544829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045533 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152521.P5168968865952544829

/-!
# A152522: a(n) is the least even number such that if p_i is the i-th prime then a(n)-p_i, i=1..n, are composite numbers.

The programs for A152522, there is no canonical definition to state claims against.
-/

/-! ## A152522.P6439360999479186685

`A298736(n+1)+A154115(n+1)`
-/

namespace A152522.P6439360999479186685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298736 (n + 1) + A154115 (n + 1)

end

end A152522.P6439360999479186685

/-! ## A152522.P1235200490054643759

`A298736(n+1)+record[A063070(n+1)]`
-/

namespace A152522.P1235200490054643759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298736 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152522.P1235200490054643759

/-! ## A152522.P5987719668345406179

`A298736(n+1)+record[A303603(n+1)]`
-/

namespace A152522.P5987719668345406179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303603 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298736 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152522.P5987719668345406179

/-! ## A152522.P15040298215494303849

`A051169(n+1)*A240086(A253106(2*n+3))`
-/

namespace A152522.P15040298215494303849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051169 (n + 1) * A240086 (A253106 (2 * n + 3)).toNat

end

end A152522.P15040298215494303849

/-! ## A152522.P7696064342515105989

`A051169(n+1)*A290542(A030430(n+1))`
-/

namespace A152522.P7696064342515105989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051169 (n + 1) * A290542 (A030430 (n + 1)).toNat

end

end A152522.P7696064342515105989

/-! ## A152522.P2796856220881676661

`A051169(n+1)*A290542(A109981(n+1))`
-/

namespace A152522.P2796856220881676661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051169 (n + 1) * A290542 (A109981 (n + 1)).toNat

end

end A152522.P2796856220881676661

/-! ## A152522.P16381573772766789419

`lcm(A051169(n+1)+A051169(n+1), A151934(n)!)`
-/

namespace A152522.P16381573772766789419
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A051169 (n + 1) + A051169 (n + 1)) (Nat.factorial (A151934 n).toNat : ℤ)

end

end A152522.P16381573772766789419

/-!
# A152523: Multiplicities of distinct terms in A152522.

The programs for A152523, there is no canonical definition to state claims against.
-/

/-! ## A152523.P14274932856634941485

`Δ[A116111(n+1)]`
-/

namespace A152523.P14274932856634941485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152523.P14274932856634941485

/-! ## A152523.P5512486046215239899

`abs(Δ[A116111(A348553(n))])`
-/

namespace A152523.P5512486046215239899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116111 (A348553 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A152523.P5512486046215239899

/-! ## A152523.P17073376128782294198

`Δ[record[A116111(A028920(n))]]`
-/

namespace A152523.P17073376128782294198
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116111 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152523.P17073376128782294198

/-!
# A152524: a(n) is the number of L-bit words in which, if up to k bits are perturbed, the resulting change in unsigned L-bit value is n, for L=8 and k=7.

The programs for A152524, the canonical program `A152524.P1325572287788964883` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152524 has offset 1).

The definition of A152524 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152524.P1325572287788964883

`511+(-1)^(n+1)-2*(n+1)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152524

/-- `511+(-1)^(n+1)-2*(n+1)` -/
def P1325572287788964883.Spec : Prop :=
  ∀ n, P1325572287788964883.a n = A152524 (n + 1)

theorem P1325572287788964883.correct : P1325572287788964883.Spec := by
  intro n
  simp only [A152524, Nat.add_sub_cancel]

end A152524

/-! ## A152524.P10153206229932522042

`2*(255-or(1, n))`
-/

namespace A152524.P10153206229932522042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (255 - (Nat.lor 1 n : ℤ))

end

end A152524.P10153206229932522042

namespace A152524

/-- `2*(255-or(1, n))` -/
def P10153206229932522042.Spec : Prop :=
  ∀ n, P10153206229932522042.a n = A152524 (n + 1)

end A152524

/-! ## A152524.P2471233332011745553

`4*(128-∑[and(1, n+1)])`
-/

namespace A152524.P2471233332011745553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (128 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A152524.P2471233332011745553

namespace A152524

/-- `4*(128-∑[and(1, n+1)])` -/
def P2471233332011745553.Spec : Prop :=
  ∀ n, P2471233332011745553.a n = A152524 (n + 1)

end A152524

/-! ## A152524.P17894822819758125378

`Δ[A076338(n)-A080335(n)]`
-/

namespace A152524.P17894822819758125378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076338 n - A080335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152524.P17894822819758125378

namespace A152524

/-- `Δ[A076338(n)-A080335(n)]` -/
def P17894822819758125378.Spec : Prop :=
  ∀ n, P17894822819758125378.a n = A152524 (n + 1)

end A152524

/-! ## A152524.P300641076109115743

`Δ[A157447(n+1)-A080335(n)]`
-/

namespace A152524.P300641076109115743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157447 (n + 1) - A080335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152524.P300641076109115743

namespace A152524

/-- `Δ[A157447(n+1)-A080335(n)]` -/
def P300641076109115743.Spec : Prop :=
  ∀ n, P300641076109115743.a n = A152524 (n + 1)

end A152524

/-! ## A152524.P6670968564649560523

`Δ[A157475(n+1)-A080335(n)]`
-/

namespace A152524.P6670968564649560523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157475 (n + 1) - A080335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152524.P6670968564649560523

namespace A152524

/-- `Δ[A157475(n+1)-A080335(n)]` -/
def P6670968564649560523.Spec : Prop :=
  ∀ n, P6670968564649560523.a n = A152524 (n + 1)

end A152524

/-! ## A152524.P9996658741773206993

`Δ[A076338(n)-A157502(A000124(n))]`
-/

namespace A152524.P9996658741773206993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076338 n - A157502 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152524.P9996658741773206993

namespace A152524

/-- `Δ[A076338(n)-A157502(A000124(n))]` -/
def P9996658741773206993.Spec : Prop :=
  ∀ n, P9996658741773206993.a n = A152524 (n + 1)

end A152524

/-!
# A152525: a(n) is the number of unordered pairs of disjoint set partitions of an n-element set.

The programs for A152525, there is no canonical definition to state claims against.
-/

/-! ## A152525.P14775680536226011278

`∑[A063949(A144301(n))]`
-/

namespace A152525.P14775680536226011278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063949 (A144301 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152525.P14775680536226011278

/-! ## A152525.P8603373808739161272

`A217657(record[Δ[A293053(n)]])`
-/

namespace A152525.P8603373808739161272
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293053 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A152525.P8603373808739161272

/-!
# A152526: Numbers k with property that (k^2 mod prime(k)) < 10.

The programs for A152526, there is no canonical definition to state claims against.
-/

/-! ## A152526.P5764559923423094515

`lt[A069547(n+1), 9]+1`
-/

namespace A152526.P5764559923423094515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069547 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A152526.P5764559923423094515

/-! ## A152526.P10802343152287438454

`lt[sqrt((n+1)²%record[A006530(n+2)]), 3]+1`
-/

namespace A152526.P10802343152287438454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.tmod ((n + 1) ^ 2 : ℤ) (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) : ℝ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n + 1

end

end A152526.P10802343152287438454

/-! ## A152526.P1541499087769193358

`record[A033273(A293253(n))]`
-/

namespace A152526.P1541499087769193358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (A293253 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152526.P1541499087769193358

/-! ## A152526.P10417459744777186121

`∩[A124067(n+1), A342094(n+1)]`
-/

namespace A152526.P10417459744777186121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152526.P10417459744777186121

/-! ## A152526.P12611468215876725380

`eq[A000005(n+1), A055093(A023893(n))]`
-/

namespace A152526.P12611468215876725380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055093 (A023893 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A152526.P12611468215876725380

/-!
# A152527: a(n) = (p(n)*p(n+1)-p(n+2))/2, where p(n) is the n-th odd prime.

The programs for A152527, the canonical program `A152527.P9049603254915990332` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152527 has offset 1).

The definition of A152527 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152527.P9049603254915990332

`A111071(n+2)/2`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A152527

/-- `A111071(n+2)/2` -/
def P9049603254915990332.Spec : Prop :=
  ∀ n, P9049603254915990332.a n = (A152527 (n + 1) : ℚ)

end A152527

/-! ## A152527.P14129509632370793101

`(A096379(n+2)+A037165(n+2))/2`
-/

namespace A152527.P14129509632370793101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096379 (n + 2) + A037165 (n + 2) : ℚ) / 2

end

end A152527.P14129509632370793101

namespace A152527

/-- `(A096379(n+2)+A037165(n+2))/2` -/
def P14129509632370793101.Spec : Prop :=
  ∀ n, P14129509632370793101.a n = (A152527 (n + 1) : ℚ)

end A152527

/-! ## A152527.P761462028018116235

`(A037166(n+2)-A031131(n+2))/2`
-/

namespace A152527.P761462028018116235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037166 (n + 2) - A031131 (n + 2) : ℚ) / 2

end

end A152527.P761462028018116235

namespace A152527

/-- `(A037166(n+2)-A031131(n+2))/2` -/
def P761462028018116235.Spec : Prop :=
  ∀ n, P761462028018116235.a n = (A152527 (n + 1) : ℚ)

end A152527

/-! ## A152527.P14528998856527757304

`(A126199(n+2)-A034961(n+2))/2`
-/

namespace A152527.P14528998856527757304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126199 (n + 2) - A034961 (n + 2) : ℚ) / 2

end

end A152527.P14528998856527757304

namespace A152527

/-- `(A126199(n+2)-A034961(n+2))/2` -/
def P14528998856527757304.Spec : Prop :=
  ∀ n, P14528998856527757304.a n = (A152527 (n + 1) : ℚ)

end A152527

/-! ## A152527.P14898200291158967626

`(A006094(n+2)-A215848(n+2))/2`
-/

namespace A152527.P14898200291158967626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006094 (n + 2) - A215848 (n + 2) : ℚ) / 2

end

end A152527.P14898200291158967626

namespace A152527

/-- `(A006094(n+2)-A215848(n+2))/2` -/
def P14898200291158967626.Spec : Prop :=
  ∀ n, P14898200291158967626.a n = (A152527 (n + 1) : ℚ)

end A152527

/-! ## A152527.P7912361242878443124

`A014682(A111071(n+2))`
-/

namespace A152527.P7912361242878443124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A111071 (n + 2)).toNat

end

end A152527.P7912361242878443124

namespace A152527

/-- `A014682(A111071(n+2))` -/
def P7912361242878443124.Spec : Prop :=
  ∀ n, P7912361242878443124.a n = A152527 (n + 1)

end A152527

/-! ## A152527.P2170493971142204539

`(A286624(n+2)-A111254(n+2))/2`
-/

namespace A152527.P2170493971142204539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286624 (n + 2) - A111254 (n + 2) : ℚ) / 2

end

end A152527.P2170493971142204539

namespace A152527

/-- `(A286624(n+2)-A111254(n+2))/2` -/
def P2170493971142204539.Spec : Prop :=
  ∀ n, P2170493971142204539.a n = (A152527 (n + 1) : ℚ)

end A152527

/-!
# A152528: a(n) = p(n)*p(n+2) - 3*p(n+1), where p(n) is the n-th prime.

The programs for A152528, the canonical program `A152528.P1727933196065479593` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152528 has offset 1).

The definition of A152528 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152528.P1727933196065479593

`A152532(n+1)-p?[a(n-1)+2]` with `a(0)=1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A152528

/-- `A152532(n+1)-p?[a(n-1)+2]` -/
def P1727933196065479593.Spec : Prop :=
  ∀ n, P1727933196065479593.a n = A152528 (n + 1)

theorem P1727933196065479593.correct : P1727933196065479593.Spec := by
  intro n
  simp only [A152528, Nat.add_sub_cancel]

end A152528

/-! ## A152528.P13485863830815313081

`A152532(n+1)-A065091(n+1)`
-/

namespace A152528.P13485863830815313081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152532 (n + 1) - A065091 (n + 1)

end

end A152528.P13485863830815313081

namespace A152528

/-- `A152532(n+1)-A065091(n+1)` -/
def P13485863830815313081.Spec : Prop :=
  ∀ n, P13485863830815313081.a n = A152528 (n + 1)

end A152528

/-! ## A152528.P12465359279158027046

`A090076(n+1)-A001748(n+2)`
-/

namespace A152528.P12465359279158027046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090076 (n + 1) - A001748 (n + 2)

end

end A152528.P12465359279158027046

namespace A152528

/-- `A090076(n+1)-A001748(n+2)` -/
def P12465359279158027046.Spec : Prop :=
  ∀ n, P12465359279158027046.a n = A152528 (n + 1)

end A152528

/-! ## A152528.P4240361960115040676

`A152532(n+1)+A152532(n+1)-A152530(n+1)`
-/

namespace A152528.P4240361960115040676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152532 (n + 1) + (A152532 (n + 1) - A152530 (n + 1))

end

end A152528.P4240361960115040676

namespace A152528

/-- `A152532(n+1)+A152532(n+1)-A152530(n+1)` -/
def P4240361960115040676.Spec : Prop :=
  ∀ n, P4240361960115040676.a n = A152528 (n + 1)

end A152528

/-! ## A152528.P7216647456244733170

`A152530(n+1)-A065091(n+1)-A065091(n+1)`
-/

namespace A152528.P7216647456244733170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152530 (n + 1) - A065091 (n + 1) - A065091 (n + 1)

end

end A152528.P7216647456244733170

namespace A152528

/-- `A152530(n+1)-A065091(n+1)-A065091(n+1)` -/
def P7216647456244733170.Spec : Prop :=
  ∀ n, P7216647456244733170.a n = A152528 (n + 1)

end A152528

/-! ## A152528.P3975532666470617356

`A152532(n+1)-A000040(n+2)`
-/

namespace A152528.P3975532666470617356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152532 (n + 1) - A000040 (n + 2)

end

end A152528.P3975532666470617356

namespace A152528

/-- `A152532(n+1)-A000040(n+2)` -/
def P3975532666470617356.Spec : Prop :=
  ∀ n, P3975532666470617356.a n = A152528 (n + 1)

end A152528

/-! ## A152528.P10038012342031221406

`A152530(n+1)-A100484(n+2)`
-/

namespace A152528.P10038012342031221406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152530 (n + 1) - A100484 (n + 2)

end

end A152528.P10038012342031221406

namespace A152528

/-- `A152530(n+1)-A100484(n+2)` -/
def P10038012342031221406.Spec : Prop :=
  ∀ n, P10038012342031221406.a n = A152528 (n + 1)

end A152528

/-! ## A152528.P14076737236858741089

`A152530(n+1)-A000040(n+2)-A000040(n+2)`
-/

namespace A152528.P14076737236858741089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152530 (n + 1) - A000040 (n + 2) - A000040 (n + 2)

end

end A152528.P14076737236858741089

namespace A152528

/-- `A152530(n+1)-A000040(n+2)-A000040(n+2)` -/
def P14076737236858741089.Spec : Prop :=
  ∀ n, P14076737236858741089.a n = A152528 (n + 1)

end A152528

/-!
# A152529: a(n) = (p(n)*p(n+2) - 3*p(n+1))/2, where p(n) is the n-th odd prime.

The programs for A152529, the canonical program `A152529.P6728657231019893610` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152529 has offset 1).

The definition of A152529 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152528, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A152529.P6728657231019893610

`A152528(n+2)/2`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A152529

/-- `A152528(n+2)/2` -/
def P6728657231019893610.Spec : Prop :=
  ∀ n, P6728657231019893610.a n = (A152529 (n + 1) : ℚ)

end A152529

/-! ## A152529.P11640242033107495320

`A152531(n+1)-A215848(n+1)`
-/

namespace A152529.P11640242033107495320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152531 (n + 1) - A215848 (n + 1)

end

end A152529.P11640242033107495320

namespace A152529

/-- `A152531(n+1)-A215848(n+1)` -/
def P11640242033107495320.Spec : Prop :=
  ∀ n, P11640242033107495320.a n = A152529 (n + 1)

end A152529

/-! ## A152529.P13081761416895756045

`A152531(n+1)-A065091(n+2)`
-/

namespace A152529.P13081761416895756045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152531 (n + 1) - A065091 (n + 2)

end

end A152529.P13081761416895756045

namespace A152529

/-- `A152531(n+1)-A065091(n+2)` -/
def P13081761416895756045.Spec : Prop :=
  ∀ n, P13081761416895756045.a n = A152529 (n + 1)

end A152529

/-! ## A152529.P4297692221343522218

`A152532(n+2)-A152531(n+1)`
-/

namespace A152529.P4297692221343522218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152532 (n + 2) - A152531 (n + 1)

end

end A152529.P4297692221343522218

namespace A152529

/-- `A152532(n+2)-A152531(n+1)` -/
def P4297692221343522218.Spec : Prop :=
  ∀ n, P4297692221343522218.a n = A152529 (n + 1)

end A152529

/-! ## A152529.P1811997131428221359

`A152531(n+1)-A000040(n+3)`
-/

namespace A152529.P1811997131428221359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152531 (n + 1) - A000040 (n + 3)

end

end A152529.P1811997131428221359

namespace A152529

/-- `A152531(n+1)-A000040(n+3)` -/
def P1811997131428221359.Spec : Prop :=
  ∀ n, P1811997131428221359.a n = A152529 (n + 1)

end A152529

/-! ## A152529.P11051735889477260542

`A152531(n+1)-p?[A091685(n)]`
-/

namespace A152529.P11051735889477260542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091685 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152531 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152529.P11051735889477260542

namespace A152529

/-- `A152531(n+1)-p?[A091685(n)]` -/
def P11051735889477260542.Spec : Prop :=
  ∀ n, P11051735889477260542.a n = A152529 (n + 1)

end A152529

/-! ## A152529.P2261065066035186851

`A014682(A152528(n+2))`
-/

namespace A152529.P2261065066035186851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A152528 (n + 2)).toNat

end

end A152529.P2261065066035186851

namespace A152529

/-- `A014682(A152528(n+2))` -/
def P2261065066035186851.Spec : Prop :=
  ∀ n, P2261065066035186851.a n = A152529 (n + 1)

end A152529

/-!
# A152530: a(n) = p(n)*p(n+2)-p(n+1), where p(n) is the n-th prime.

The programs for A152530, the canonical program `A152530.P2848620170226851519` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152530 has offset 1).

The definition of A152530 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152530.P2848620170226851519

`A152532(n+1)+A065091(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A152530

/-- `A152532(n+1)+A065091(n+1)` -/
def P2848620170226851519.Spec : Prop :=
  ∀ n, P2848620170226851519.a n = A152530 (n + 1)

theorem P2848620170226851519.correct : P2848620170226851519.Spec := by
  intro n
  simp only [A152530, Nat.add_sub_cancel]

end A152530

/-! ## A152530.P18160119671149548742

`A205955(n+1)+A037167(n+1)`
-/

namespace A152530.P18160119671149548742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205955 (n + 1) + A037167 (n + 1)

end

end A152530.P18160119671149548742

namespace A152530

/-- `A205955(n+1)+A037167(n+1)` -/
def P18160119671149548742.Spec : Prop :=
  ∀ n, P18160119671149548742.a n = A152530 (n + 1)

theorem P18160119671149548742.correct : P18160119671149548742.Spec := by
  intro n
  simp only [A152530, Nat.add_sub_cancel, A152530.P18160119671149548742.a, A152530.P2848620170226851519.a, A037167, A037167.P11043553757995377342.a, A065091, A065091.P6971844946592549357.a, A152532, A152532.P13496120299689407045.a, A205955, A205955.P11019694915119694483.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A037165, A037165.P11474511069064839000.a, A096379, A096379.P11420595779051591420.a, A001043, A001043.P18269783162673735460.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A152530

/-! ## A152530.P5812964817091420286

`A090076(n+1)-A065091(n+1)`
-/

namespace A152530.P5812964817091420286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090076 (n + 1) - A065091 (n + 1)

end

end A152530.P5812964817091420286

namespace A152530

/-- `A090076(n+1)-A065091(n+1)` -/
def P5812964817091420286.Spec : Prop :=
  ∀ n, P5812964817091420286.a n = A152530 (n + 1)

theorem P5812964817091420286.correct : P5812964817091420286.Spec := by
  intro n
  simp only [A152530, Nat.add_sub_cancel, A152530.P5812964817091420286.a, A152530.P2848620170226851519.a, A065091, A065091.P6971844946592549357.a, A090076, A090076.P14041092475761084439.a, A152532, A152532.P13496120299689407045.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006094, A006094.P10257567645245129766.a, A205955, A205955.P11019694915119694483.a, A096379, A096379.P11420595779051591420.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A152530

/-! ## A152530.P13868959191069721155

`(A152532(n+1)+A090076(n+1))/2`
-/

namespace A152530.P13868959191069721155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152532 (n + 1) + A090076 (n + 1) : ℚ) / 2

end

end A152530.P13868959191069721155

namespace A152530

/-- `(A152532(n+1)+A090076(n+1))/2` -/
def P13868959191069721155.Spec : Prop :=
  ∀ n, P13868959191069721155.a n = (A152530 (n + 1) : ℚ)

theorem P13868959191069721155.correct : P13868959191069721155.Spec := by
  intro n
  simp only [A152530, Nat.add_sub_cancel, A152530.P13868959191069721155.a, A152530.P2848620170226851519.a, A065091, A065091.P6971844946592549357.a, A090076, A090076.P14041092475761084439.a, A152532, A152532.P13496120299689407045.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006094, A006094.P10257567645245129766.a, A205955, A205955.P11019694915119694483.a, A096379, A096379.P11420595779051591420.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A152530

/-! ## A152530.P8587185577710261871

`A065091(n+1)+A152528(n+1)+A065091(n+1)`
-/

namespace A152530.P8587185577710261871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + (A152528 (n + 1) + A065091 (n + 1))

end

end A152530.P8587185577710261871

namespace A152530

/-- `A065091(n+1)+A152528(n+1)+A065091(n+1)` -/
def P8587185577710261871.Spec : Prop :=
  ∀ n, P8587185577710261871.a n = A152530 (n + 1)

end A152530

/-! ## A152530.P12179777638361501860

`A090076(n+1)-(A073272(n+1)+A073271(n+1))`
-/

namespace A152530.P12179777638361501860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090076 (n + 1) - (A073272 (n + 1) + A073271 (n + 1))

end

end A152530.P12179777638361501860

namespace A152530

/-- `A090076(n+1)-(A073272(n+1)+A073271(n+1))` -/
def P12179777638361501860.Spec : Prop :=
  ∀ n, P12179777638361501860.a n = A152530 (n + 1)

theorem P12179777638361501860.correct : P12179777638361501860.Spec := by
  intro n
  simp only [A152530, Nat.add_sub_cancel, A152530.P12179777638361501860.a, A152530.P2848620170226851519.a, A065091, A065091.P6971844946592549357.a, A073271, A073271.P12354206027556464355.a, A073272, A073272.P15073051830064550089.a, A090076, A090076.P14041092475761084439.a, A152532, A152532.P13496120299689407045.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006094, A006094.P10257567645245129766.a, A205955, A205955.P11019694915119694483.a, A096379, A096379.P11420595779051591420.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A152530

/-! ## A152530.P9270783302056029207

`A152532(n+1)+A152532(n+1)-A152528(n+1)`
-/

namespace A152530.P9270783302056029207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152532 (n + 1) + (A152532 (n + 1) - A152528 (n + 1))

end

end A152530.P9270783302056029207

namespace A152530

/-- `A152532(n+1)+A152532(n+1)-A152528(n+1)` -/
def P9270783302056029207.Spec : Prop :=
  ∀ n, P9270783302056029207.a n = A152530 (n + 1)

end A152530

/-! ## A152530.P17784365416070737621

`A152532(n+1)+A000040(n+2)`
-/

namespace A152530.P17784365416070737621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152532 (n + 1) + A000040 (n + 2)

end

end A152530.P17784365416070737621

namespace A152530

/-- `A152532(n+1)+A000040(n+2)` -/
def P17784365416070737621.Spec : Prop :=
  ∀ n, P17784365416070737621.a n = A152530 (n + 1)

end A152530

/-! ## A152530.P511689275668323457

`A152528(n+1)+A100484(n+2)`
-/

namespace A152530.P511689275668323457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152528 (n + 1) + A100484 (n + 2)

end

end A152530.P511689275668323457

namespace A152530

/-- `A152528(n+1)+A100484(n+2)` -/
def P511689275668323457.Spec : Prop :=
  ∀ n, P511689275668323457.a n = A152530 (n + 1)

end A152530

/-! ## A152530.P12634599537262444001

`A090076(n+1)-A000040(n+2)`
-/

namespace A152530.P12634599537262444001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090076 (n + 1) - A000040 (n + 2)

end

end A152530.P12634599537262444001

namespace A152530

/-- `A090076(n+1)-A000040(n+2)` -/
def P12634599537262444001.Spec : Prop :=
  ∀ n, P12634599537262444001.a n = A152530 (n + 1)

theorem P12634599537262444001.correct : P12634599537262444001.Spec := by
  intro n
  simp only [A152530, Nat.add_sub_cancel, A152530.P12634599537262444001.a, A152530.P2848620170226851519.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A065091, A065091.P6971844946592549357.a, A090076, A090076.P14041092475761084439.a, A152532, A152532.P13496120299689407045.a, A006094, A006094.P10257567645245129766.a, A205955, A205955.P11019694915119694483.a, A096379, A096379.P11420595779051591420.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A152530

/-! ## A152530.P7703728778669121891

`A000040(n+2)+A152528(n+1)+A000040(n+2)`
-/

namespace A152530.P7703728778669121891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) + (A152528 (n + 1) + A000040 (n + 2))

end

end A152530.P7703728778669121891

namespace A152530

/-- `A000040(n+2)+A152528(n+1)+A000040(n+2)` -/
def P7703728778669121891.Spec : Prop :=
  ∀ n, P7703728778669121891.a n = A152530 (n + 1)

end A152530

/-! ## A152530.P1019599447438913851

`A056221(n+1)+A324795(n+1)-A000040(n+2)`
-/

namespace A152530.P1019599447438913851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056221 (n + 1) + (A324795 (n + 1) - A000040 (n + 2))

end

end A152530.P1019599447438913851

namespace A152530

/-- `A056221(n+1)+A324795(n+1)-A000040(n+2)` -/
def P1019599447438913851.Spec : Prop :=
  ∀ n, P1019599447438913851.a n = A152530 (n + 1)

end A152530

/-! ## A152530.P17848117621825705205

`A001248(n+2)-(A056221(n+1)+A000040(n+2))`
-/

namespace A152530.P17848117621825705205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 2) - (A056221 (n + 1) + A000040 (n + 2))

end

end A152530.P17848117621825705205

namespace A152530

/-- `A001248(n+2)-(A056221(n+1)+A000040(n+2))` -/
def P17848117621825705205.Spec : Prop :=
  ∀ n, P17848117621825705205.a n = A152530 (n + 1)

end A152530

/-! ## A152530.P15341921020775153944

`A000040(n+1)*A065091(n+2)-A065091(n+1)`
-/

namespace A152530.P15341921020775153944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A065091 (n + 2) - A065091 (n + 1)

end

end A152530.P15341921020775153944

namespace A152530

/-- `A000040(n+1)*A065091(n+2)-A065091(n+1)` -/
def P15341921020775153944.Spec : Prop :=
  ∀ n, P15341921020775153944.a n = A152530 (n + 1)

theorem P15341921020775153944.correct : P15341921020775153944.Spec := by
  intro n
  simp only [A152530, Nat.add_sub_cancel, A152530.P15341921020775153944.a, A152530.P2848620170226851519.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A065091, A065091.P6971844946592549357.a, A152532, A152532.P13496120299689407045.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A152530

/-! ## A152530.P13500310437116149333

`A000040(n+1)*A045344(n+2)-A000040(n+2)`
-/

namespace A152530.P13500310437116149333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A045344 (n + 2) - A000040 (n + 2)

end

end A152530.P13500310437116149333

namespace A152530

/-- `A000040(n+1)*A045344(n+2)-A000040(n+2)` -/
def P13500310437116149333.Spec : Prop :=
  ∀ n, P13500310437116149333.a n = A152530 (n + 1)

end A152530

/-! ## A152530.P15161695276148458004

`A008578(n+2)*A065091(n+2)-A065091(n+1)`
-/

namespace A152530.P15161695276148458004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) * A065091 (n + 2) - A065091 (n + 1)

end

end A152530.P15161695276148458004

namespace A152530

/-- `A008578(n+2)*A065091(n+2)-A065091(n+1)` -/
def P15161695276148458004.Spec : Prop :=
  ∀ n, P15161695276148458004.a n = A152530 (n + 1)

end A152530

/-! ## A152530.P15778535886115253222

`A046301(n+1)/A000040(n+2)-A000040(n+2)`
-/

namespace A152530.P15778535886115253222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046301 (n + 1) : ℚ) / (A000040 (n + 2) : ℚ) - (A000040 (n + 2) : ℚ)

end

end A152530.P15778535886115253222

namespace A152530

/-- `A046301(n+1)/A000040(n+2)-A000040(n+2)` -/
def P15778535886115253222.Spec : Prop :=
  ∀ n, P15778535886115253222.a n = (A152530 (n + 1) : ℚ)

end A152530

/-! ## A152530.P12718615841324449721

`A090076(n+1)-A176098(n+2)/A158611(n+2)`
-/

namespace A152530.P12718615841324449721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090076 (n + 1) : ℚ) - (A176098 (n + 2) : ℚ) / (A158611 (n + 2) : ℚ)

end

end A152530.P12718615841324449721

namespace A152530

/-- `A090076(n+1)-A176098(n+2)/A158611(n+2)` -/
def P12718615841324449721.Spec : Prop :=
  ∀ n, P12718615841324449721.a n = (A152530 (n + 1) : ℚ)

end A152530

/-! ## A152530.P11276157730956548685

`A090076(n+1)-A008578(n+3)`
-/

namespace A152530.P11276157730956548685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090076 (n + 1) - A008578 (n + 3)

end

end A152530.P11276157730956548685

namespace A152530

/-- `A090076(n+1)-A008578(n+3)` -/
def P11276157730956548685.Spec : Prop :=
  ∀ n, P11276157730956548685.a n = A152530 (n + 1)

end A152530

/-! ## A152530.P13724749590846084380

`A176098(n+3)-A000040(n+2)`
-/

namespace A152530.P13724749590846084380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176098 (n + 3) - A000040 (n + 2)

end

end A152530.P13724749590846084380

namespace A152530

/-- `A176098(n+3)-A000040(n+2)` -/
def P13724749590846084380.Spec : Prop :=
  ∀ n, P13724749590846084380.a n = A152530 (n + 1)

end A152530

/-!
# A152531: a(n) = (p(n)*p(n+2) - p(n+1))/2, where p(n) is the n-th odd prime.

The programs for A152531, the canonical program `A152531.P4513964103738693439` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152531 has offset 1).

The definition of A152531 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A152531.P4513964103738693439

`A152530(n+2)/2`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A152531

/-- `A152530(n+2)/2` -/
def P4513964103738693439.Spec : Prop :=
  ∀ n, P4513964103738693439.a n = (A152531 (n + 1) : ℚ)

end A152531

/-! ## A152531.P86141337081226367

`A215848(n+1)+A152529(n+1)`
-/

namespace A152531.P86141337081226367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1) + A152529 (n + 1)

end

end A152531.P86141337081226367

namespace A152531

/-- `A215848(n+1)+A152529(n+1)` -/
def P86141337081226367.Spec : Prop :=
  ∀ n, P86141337081226367.a n = A152531 (n + 1)

end A152531

/-! ## A152531.P8135067651395430133

`A006094(n+1)+A152529(n+1)-A111071(n+1)`
-/

namespace A152531.P8135067651395430133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) + (A152529 (n + 1) - A111071 (n + 1))

end

end A152531.P8135067651395430133

namespace A152531

/-- `A006094(n+1)+A152529(n+1)-A111071(n+1)` -/
def P8135067651395430133.Spec : Prop :=
  ∀ n, P8135067651395430133.a n = A152531 (n + 1)

end A152531

/-! ## A152531.P17453914649657429327

`Δ[∑[A152530(Δ[n²]-n)]/2]`
-/

namespace A152531.P17453914649657429327
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152530 ((f3 (n + 1) : ℤ) - (f3 n : ℤ) - (n : ℤ)).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152531.P17453914649657429327

namespace A152531

/-- `Δ[∑[A152530(Δ[n²]-n)]/2]` -/
def P17453914649657429327.Spec : Prop :=
  ∀ n, P17453914649657429327.a n = (A152531 (n + 1) : ℚ)

end A152531

/-! ## A152531.P16016391612049058562

`A152529(n+1)+A065091(n+2)`
-/

namespace A152531.P16016391612049058562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152529 (n + 1) + A065091 (n + 2)

end

end A152531.P16016391612049058562

namespace A152531

/-- `A152529(n+1)+A065091(n+2)` -/
def P16016391612049058562.Spec : Prop :=
  ∀ n, P16016391612049058562.a n = A152531 (n + 1)

end A152531

/-! ## A152531.P1618452190660295592

`A152532(n+2)-A152529(n+1)`
-/

namespace A152531.P1618452190660295592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152532 (n + 2) - A152529 (n + 1)

end

end A152531.P1618452190660295592

namespace A152531

/-- `A152532(n+2)-A152529(n+1)` -/
def P1618452190660295592.Spec : Prop :=
  ∀ n, P1618452190660295592.a n = A152531 (n + 1)

end A152531

/-! ## A152531.P1478938120538398253

`A152529(n+1)+A000040(n+3)`
-/

namespace A152531.P1478938120538398253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152529 (n + 1) + A000040 (n + 3)

end

end A152531.P1478938120538398253

namespace A152531

/-- `A152529(n+1)+A000040(n+3)` -/
def P1478938120538398253.Spec : Prop :=
  ∀ n, P1478938120538398253.a n = A152531 (n + 1)

end A152531

/-! ## A152531.P17894557569748078244

`∑[A029578(Δ[A152530(n+1)])]`
-/

namespace A152531.P17894557569748078244
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152531.P17894557569748078244

namespace A152531

/-- `∑[A029578(Δ[A152530(n+1)])]` -/
def P17894557569748078244.Spec : Prop :=
  ∀ n, P17894557569748078244.a n = A152531 (n + 1)

end A152531

/-! ## A152531.P4521706527518654218

`A014682(A152530(n+2))`
-/

namespace A152531.P4521706527518654218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A152530 (n + 2)).toNat

end

end A152531.P4521706527518654218

namespace A152531

/-- `A014682(A152530(n+2))` -/
def P4521706527518654218.Spec : Prop :=
  ∀ n, P4521706527518654218.a n = A152531 (n + 1)

end A152531

/-!
# A152532: a(n) = prime(n) * prime(n+2) - 2 * prime(n+1).

The programs for A152532, the canonical program `A152532.P13496120299689407045` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152532 has offset 1).

The definition of A152532 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152532.P11928421987624462228

`A090076(n+1)-A100484(n+2)`
-/

namespace A152532.P11928421987624462228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090076 (n + 1) - A100484 (n + 2)

end

end A152532.P11928421987624462228

namespace A152532

/-- `A090076(n+1)-A100484(n+2)` -/
def P11928421987624462228.Spec : Prop :=
  ∀ n, P11928421987624462228.a n = A152532 (n + 1)

theorem P11928421987624462228.correct : P11928421987624462228.Spec := by
  intro n
  simp only [A152532, Nat.add_sub_cancel, A152532.P11928421987624462228.a, A152532.P13496120299689407045.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A090076, A090076.P14041092475761084439.a, A100484, A100484.P9678625670825099636.a, A006094, A006094.P10257567645245129766.a, A205955, A205955.P11019694915119694483.a, A096379, A096379.P11420595779051591420.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A152532

/-! ## A152532.P13496120299689407045

`A000040(n+1)*A000040(n+3)-2*A000040(n+2)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A152532

/-- `A000040(n+1)*A000040(n+3)-2*A000040(n+2)` -/
def P13496120299689407045.Spec : Prop :=
  ∀ n, P13496120299689407045.a n = A152532 (n + 1)

theorem P13496120299689407045.correct : P13496120299689407045.Spec := by
  intro n
  simp only [A152532, Nat.add_sub_cancel]

end A152532

/-! ## A152532.P3533408622331810988

`A152528(n+1)+A065091(n+1)`
-/

namespace A152532.P3533408622331810988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152528 (n + 1) + A065091 (n + 1)

end

end A152532.P3533408622331810988

namespace A152532

/-- `A152528(n+1)+A065091(n+1)` -/
def P3533408622331810988.Spec : Prop :=
  ∀ n, P3533408622331810988.a n = A152532 (n + 1)

end A152532

/-! ## A152532.P11715799122577013295

`A152530(n+1)-A065091(n+1)`
-/

namespace A152532.P11715799122577013295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152530 (n + 1) - A065091 (n + 1)

end

end A152532.P11715799122577013295

namespace A152532

/-- `A152530(n+1)-A065091(n+1)` -/
def P11715799122577013295.Spec : Prop :=
  ∀ n, P11715799122577013295.a n = A152532 (n + 1)

theorem P11715799122577013295.correct : P11715799122577013295.Spec := by
  intro n
  simp only [A152532, Nat.add_sub_cancel, A152532.P11715799122577013295.a, A152532.P13496120299689407045.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A065091, A065091.P6971844946592549357.a, A152530, A152530.P2848620170226851519.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A152532

/-! ## A152532.P16072863987483645475

`A090076(n+1)-2*A065091(n+1)`
-/

namespace A152532.P16072863987483645475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090076 (n + 1) - 2 * A065091 (n + 1)

end

end A152532.P16072863987483645475

namespace A152532

/-- `A090076(n+1)-2*A065091(n+1)` -/
def P16072863987483645475.Spec : Prop :=
  ∀ n, P16072863987483645475.a n = A152532 (n + 1)

theorem P16072863987483645475.correct : P16072863987483645475.Spec := by
  intro n
  simp only [A152532, Nat.add_sub_cancel, A152532.P16072863987483645475.a, A152532.P13496120299689407045.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A065091, A065091.P6971844946592549357.a, A090076, A090076.P14041092475761084439.a, A006094, A006094.P10257567645245129766.a, A205955, A205955.P11019694915119694483.a, A096379, A096379.P11420595779051591420.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A152532

/-! ## A152532.P13312258727165232179

`2*A152530(n+1)-A090076(n+1)`
-/

namespace A152532.P13312258727165232179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152530 (n + 1) - A090076 (n + 1)

end

end A152532.P13312258727165232179

namespace A152532

/-- `2*A152530(n+1)-A090076(n+1)` -/
def P13312258727165232179.Spec : Prop :=
  ∀ n, P13312258727165232179.a n = A152532 (n + 1)

theorem P13312258727165232179.correct : P13312258727165232179.Spec := by
  intro n
  simp only [A152532, Nat.add_sub_cancel, A152532.P13312258727165232179.a, A152532.P13496120299689407045.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A090076, A090076.P14041092475761084439.a, A152530, A152530.P2848620170226851519.a, A006094, A006094.P10257567645245129766.a, A065091, A065091.P6971844946592549357.a, A205955, A205955.P11019694915119694483.a, A096379, A096379.P11420595779051591420.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A152532

/-! ## A152532.P11575843998351218805

`A152528(n+1)+A000040(n+2)`
-/

namespace A152532.P11575843998351218805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152528 (n + 1) + A000040 (n + 2)

end

end A152532.P11575843998351218805

namespace A152532

/-- `A152528(n+1)+A000040(n+2)` -/
def P11575843998351218805.Spec : Prop :=
  ∀ n, P11575843998351218805.a n = A152532 (n + 1)

end A152532

/-! ## A152532.P15030244670095438294

`A152530(n+1)-A000040(n+2)`
-/

namespace A152532.P15030244670095438294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152530 (n + 1) - A000040 (n + 2)

end

end A152532.P15030244670095438294

namespace A152532

/-- `A152530(n+1)-A000040(n+2)` -/
def P15030244670095438294.Spec : Prop :=
  ∀ n, P15030244670095438294.a n = A152532 (n + 1)

theorem P15030244670095438294.correct : P15030244670095438294.Spec := by
  intro n
  simp only [A152532, Nat.add_sub_cancel, A152532.P15030244670095438294.a, A152532.P13496120299689407045.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A152530, A152530.P2848620170226851519.a, A065091, A065091.P6971844946592549357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A152532

/-! ## A152532.P15082394594948440940

`A090076(n+1)-A000040(n+2)-A000040(n+2)`
-/

namespace A152532.P15082394594948440940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090076 (n + 1) - A000040 (n + 2) - A000040 (n + 2)

end

end A152532.P15082394594948440940

namespace A152532

/-- `A090076(n+1)-A000040(n+2)-A000040(n+2)` -/
def P15082394594948440940.Spec : Prop :=
  ∀ n, P15082394594948440940.a n = A152532 (n + 1)

theorem P15082394594948440940.correct : P15082394594948440940.Spec := by
  intro n
  simp only [A152532, Nat.add_sub_cancel, A152532.P15082394594948440940.a, A152532.P13496120299689407045.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A090076, A090076.P14041092475761084439.a, A006094, A006094.P10257567645245129766.a, A205955, A205955.P11019694915119694483.a, A096379, A096379.P11420595779051591420.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A152532

/-! ## A152532.P2666204984549660491

`A000040(n+1)*A065091(n+2)-A100484(n+2)`
-/

namespace A152532.P2666204984549660491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A065091 (n + 2) - A100484 (n + 2)

end

end A152532.P2666204984549660491

namespace A152532

/-- `A000040(n+1)*A065091(n+2)-A100484(n+2)` -/
def P2666204984549660491.Spec : Prop :=
  ∀ n, P2666204984549660491.a n = A152532 (n + 1)

theorem P2666204984549660491.correct : P2666204984549660491.Spec := by
  intro n
  simp only [A152532, Nat.add_sub_cancel, A152532.P2666204984549660491.a, A152532.P13496120299689407045.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A065091, A065091.P6971844946592549357.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A152532

/-! ## A152532.P2625202954095939540

`A090076(n+1)-A001747(n+3)`
-/

namespace A152532.P2625202954095939540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090076 (n + 1) - A001747 (n + 3)

end

end A152532.P2625202954095939540

namespace A152532

/-- `A090076(n+1)-A001747(n+3)` -/
def P2625202954095939540.Spec : Prop :=
  ∀ n, P2625202954095939540.a n = A152532 (n + 1)

end A152532

/-! ## A152532.P14587787559030964163

`A333747(2*(n+1))-2*A000040(n+2)`
-/

namespace A152532.P14587787559030964163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333747 (2 * (n + 1)) - 2 * A000040 (n + 2)

end

end A152532.P14587787559030964163

namespace A152532

/-- `A333747(2*(n+1))-2*A000040(n+2)` -/
def P14587787559030964163.Spec : Prop :=
  ∀ n, P14587787559030964163.a n = A152532 (n + 1)

end A152532

/-! ## A152532.P11374005572033185092

`A152530(n+1)-p?[A003159(n+1)]`
-/

namespace A152532.P11374005572033185092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152530 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152532.P11374005572033185092

namespace A152532

/-- `A152530(n+1)-p?[A003159(n+1)]` -/
def P11374005572033185092.Spec : Prop :=
  ∀ n, P11374005572033185092.a n = A152532 (n + 1)

end A152532

/-! ## A152532.P14647636796921916910

`A152530(n+1)-p?[A003601(n+1)]`
-/

namespace A152532.P14647636796921916910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152530 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152532.P14647636796921916910

namespace A152532

/-- `A152530(n+1)-p?[A003601(n+1)]` -/
def P14647636796921916910.Spec : Prop :=
  ∀ n, P14647636796921916910.a n = A152532 (n + 1)

end A152532

/-! ## A152532.P1837468768095391405

`A090076(n+1)-A065387(A000040(n+2))`
-/

namespace A152532.P1837468768095391405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090076 (n + 1) - A065387 (A000040 (n + 2)).toNat

end

end A152532.P1837468768095391405

namespace A152532

/-- `A090076(n+1)-A065387(A000040(n+2))` -/
def P1837468768095391405.Spec : Prop :=
  ∀ n, P1837468768095391405.a n = A152532 (n + 1)

end A152532

/-! ## A152532.P16191919131981660082

`A152530(n+1)-p?[A003961(n+1)]`
-/

namespace A152532.P16191919131981660082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152530 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152532.P16191919131981660082

namespace A152532

/-- `A152530(n+1)-p?[A003961(n+1)]` -/
def P16191919131981660082.Spec : Prop :=
  ∀ n, P16191919131981660082.a n = A152532 (n + 1)

end A152532

/-!
# A152533: Numbers k>4 such that 10^k + 1111 is prime.

The programs for A152533, there is no canonical definition to state claims against.
-/

/-! ## A152533.P18136300245524828038

`A282172(A338660(n+1))+A113215(n)`
-/

namespace A152533.P18136300245524828038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282172 (A338660 (n + 1)).toNat + A113215 n

end

end A152533.P18136300245524828038

/-!
# A152535: a(n) = n*prime(n) - Sum_{i=1..n} prime(i).

The programs for A152535, the canonical program `A152535.P13397589103669949259` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152535 has offset 1).

The definition of A152535 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046992, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A152535.P3486091643876870820

`A033286(n+1)-A007504(n+1)`
-/

namespace A152535.P3486091643876870820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 1) - A007504 (n + 1)

end

end A152535.P3486091643876870820

namespace A152535

/-- `A033286(n+1)-A007504(n+1)` -/
def P3486091643876870820.Spec : Prop :=
  ∀ n, P3486091643876870820.a n = A152535 (n + 1)

end A152535

/-! ## A152535.P13397589103669949259

`A046992(A006093(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A152535

/-- `A046992(A006093(n+1))` -/
def P13397589103669949259.Spec : Prop :=
  ∀ n, P13397589103669949259.a n = A152535 (n + 1)

theorem P13397589103669949259.correct : P13397589103669949259.Spec := by
  intro n
  simp only [A152535, Nat.add_sub_cancel]

end A152535

/-! ## A152535.P14586971348400834955

`∑[n*A075526(n)]`
-/

namespace A152535.P14586971348400834955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152535.P14586971348400834955

namespace A152535

/-- `∑[n*A075526(n)]` -/
def P14586971348400834955.Spec : Prop :=
  ∀ n, P14586971348400834955.a n = A152535 (n + 1)

end A152535

/-! ## A152535.P6506092342717879224

`∑[n*Δ[A028815(n)]]`
-/

namespace A152535.P6506092342717879224
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152535.P6506092342717879224

namespace A152535

/-- `∑[n*Δ[A028815(n)]]` -/
def P6506092342717879224.Spec : Prop :=
  ∀ n, P6506092342717879224.a n = A152535 (n + 1)

end A152535

/-! ## A152535.P5904882921283895664

`∑[n*A054541(n+1)]`
-/

namespace A152535.P5904882921283895664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152535.P5904882921283895664

namespace A152535

/-- `∑[n*A054541(n+1)]` -/
def P5904882921283895664.Spec : Prop :=
  ∀ n, P5904882921283895664.a n = A152535 (n + 1)

end A152535

/-! ## A152535.P6688781917913270759

`∑[n*A125266(n+1)]`
-/

namespace A152535.P6688781917913270759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A125266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152535.P6688781917913270759

namespace A152535

/-- `∑[n*A125266(n+1)]` -/
def P6688781917913270759.Spec : Prop :=
  ∀ n, P6688781917913270759.a n = A152535 (n + 1)

end A152535

/-! ## A152535.P1818814113602384224

`∑[n*(A230846(n+1)-1)]`
-/

namespace A152535.P1818814113602384224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A230846 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152535.P1818814113602384224

namespace A152535

/-- `∑[n*(A230846(n+1)-1)]` -/
def P1818814113602384224.Spec : Prop :=
  ∀ n, P1818814113602384224.a n = A152535 (n + 1)

end A152535

/-! ## A152535.P18114401774829078924

`∑[n*(A230847(n+1)-1)]`
-/

namespace A152535.P18114401774829078924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A230847 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152535.P18114401774829078924

namespace A152535

/-- `∑[n*(A230847(n+1)-1)]` -/
def P18114401774829078924.Spec : Prop :=
  ∀ n, P18114401774829078924.a n = A152535 (n + 1)

end A152535

/-! ## A152535.P14495578377234475691

`∑[n*A230849(2*n+1)]`
-/

namespace A152535.P14495578377234475691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A230849 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152535.P14495578377234475691

namespace A152535

/-- `∑[n*A230849(2*n+1)]` -/
def P14495578377234475691.Spec : Prop :=
  ∀ n, P14495578377234475691.a n = A152535 (n + 1)

end A152535

/-! ## A152535.P2445002504097131873

`a(n-1)+A147967(n)+n` with `a(0)=0`
-/

namespace A152535.P2445002504097131873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A147967 n + (n : ℤ))

end

end A152535.P2445002504097131873

namespace A152535

/-- `a(n-1)+A147967(n)+n` -/
def P2445002504097131873.Spec : Prop :=
  ∀ n, P2445002504097131873.a n = A152535 (n + 1)

end A152535

/-! ## A152535.P10348105423887761887

`∑[n*A001223(A028310(n))]`
-/

namespace A152535.P10348105423887761887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001223 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152535.P10348105423887761887

namespace A152535

/-- `∑[n*A001223(A028310(n))]` -/
def P10348105423887761887.Spec : Prop :=
  ∀ n, P10348105423887761887.a n = A152535 (n + 1)

end A152535

/-! ## A152535.P4360835487157237857

`A117495(n+1)-A007504(n)`
-/

namespace A152535.P4360835487157237857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117495 (n + 1) - A007504 n

end

end A152535.P4360835487157237857

namespace A152535

/-- `A117495(n+1)-A007504(n)` -/
def P4360835487157237857.Spec : Prop :=
  ∀ n, P4360835487157237857.a n = A152535 (n + 1)

end A152535

/-! ## A152535.P17800018354125543732

`A240568(n+1)+A007504(n+1)`
-/

namespace A152535.P17800018354125543732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240568 (n + 1) + A007504 (n + 1)

end

end A152535.P17800018354125543732

namespace A152535

/-- `A240568(n+1)+A007504(n+1)` -/
def P17800018354125543732.Spec : Prop :=
  ∀ n, P17800018354125543732.a n = A152535 (n + 1)

end A152535

/-! ## A152535.P4062446265452970158

`A189892(n+1)-A000040(n+1)`
-/

namespace A152535.P4062446265452970158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189892 (n + 1) - A000040 (n + 1)

end

end A152535.P4062446265452970158

namespace A152535

/-- `A189892(n+1)-A000040(n+1)` -/
def P4062446265452970158.Spec : Prop :=
  ∀ n, P4062446265452970158.a n = A152535 (n + 1)

end A152535

/-! ## A152535.P8514229412455711987

`n*A000040(n+1)-A007504(n)`
-/

namespace A152535.P8514229412455711987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000040 (n + 1) - A007504 n

end

end A152535.P8514229412455711987

namespace A152535

/-- `n*A000040(n+1)-A007504(n)` -/
def P8514229412455711987.Spec : Prop :=
  ∀ n, P8514229412455711987.a n = A152535 (n + 1)

end A152535

/-! ## A152535.P2729400470726429705

`n*A006005(n+1)-A007504(n)`
-/

namespace A152535.P2729400470726429705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A006005 (n + 1) - A007504 n

end

end A152535.P2729400470726429705

namespace A152535

/-- `n*A006005(n+1)-A007504(n)` -/
def P2729400470726429705.Spec : Prop :=
  ∀ n, P2729400470726429705.a n = A152535 (n + 1)

end A152535

/-! ## A152535.P16959111863149134362

`A189892(n+1)-sqrt(A001248(n+1))`
-/

namespace A152535.P16959111863149134362
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A189892 (n + 1) : ℝ) - Real.sqrt (A001248 (n + 1) : ℝ)

end

end A152535.P16959111863149134362

namespace A152535

/-- `A189892(n+1)-sqrt(A001248(n+1))` -/
def P16959111863149134362.Spec : Prop :=
  ∀ n, P16959111863149134362.a n = (A152535 (n + 1) : ℝ)

end A152535

/-! ## A152535.P13637633439436739111

`A033286(n+1)-∑[A000040(n+1)]`
-/

namespace A152535.P13637633439436739111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152535.P13637633439436739111

namespace A152535

/-- `A033286(n+1)-∑[A000040(n+1)]` -/
def P13637633439436739111.Spec : Prop :=
  ∀ n, P13637633439436739111.a n = A152535 (n + 1)

end A152535

/-! ## A152535.P886797417483519545

`∑[A090942(n+1)-A000040(n+1)]`
-/

namespace A152535.P886797417483519545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090942 (n + 1) - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152535.P886797417483519545

namespace A152535

/-- `∑[A090942(n+1)-A000040(n+1)]` -/
def P886797417483519545.Spec : Prop :=
  ∀ n, P886797417483519545.a n = A152535 (n + 1)

end A152535

/-! ## A152535.P13661523213987734305

`∑[A141042(n+1)]-A141042(n+1)`
-/

namespace A152535.P13661523213987734305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A141042 (n + 1)

end

end A152535.P13661523213987734305

namespace A152535

/-- `∑[A141042(n+1)]-A141042(n+1)` -/
def P13661523213987734305.Spec : Prop :=
  ∀ n, P13661523213987734305.a n = A152535 (n + 1)

end A152535

/-!
# A152536: a(n) = Sum_{k=0..binomial(n,2)} (-1)^k*A152534(n,k).

The programs for A152536, there is no canonical definition to state claims against.
-/

/-! ## A152536.P11312231743369759452

`or(A071625(A018034(n)), A300442(n))`
-/

namespace A152536.P11312231743369759452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A071625 (A018034 n).toNat) (A300442 n)

end

end A152536.P11312231743369759452

/-! ## A152536.P10395999103002631514

`A300442(n)+A086077(A074032(n+1))`
-/

namespace A152536.P10395999103002631514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300442 n + A086077 (A074032 (n + 1)).toNat

end

end A152536.P10395999103002631514

/-! ## A152536.P2786819254389355078

`or(A001221(A022493(n)+1), A300442(n))`
-/

namespace A152536.P2786819254389355078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A022493 n + 1).toNat) (A300442 n)

end

end A152536.P2786819254389355078

/-! ## A152536.P14070934197387933850

`or(A124769(A288447(n+1)), A300442(n))`
-/

namespace A152536.P14070934197387933850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124769 (A288447 (n + 1)).toNat) (A300442 n)

end

end A152536.P14070934197387933850

/-! ## A152536.P10816244970271408241

`or(A001221(A124973(2*n)), A300442(n))`
-/

namespace A152536.P10816244970271408241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A124973 (2 * n)).toNat) (A300442 n)

end

end A152536.P10816244970271408241

/-!
# A152537: Convolution sequence: this sequence convolved with A000041 gives powers of 2, (A000079).

The programs for A152537, the canonical program `A152537.P6416251787973897900` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152537 has offset 0).

The definition of A152537 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152537.P7435412667640584130

`∑[A178841(n)]`
-/

namespace A152537.P7435412667640584130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152537.P7435412667640584130

namespace A152537

/-- `∑[A178841(n)]` -/
def P7435412667640584130.Spec : Prop :=
  ∀ n, P7435412667640584130.a n = A152537 n

end A152537

/-! ## A152537.P15132299544436746761

`A010815(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A152537.P15132299544436746761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010815 n + 2 * a (n - 1)

end

end A152537.P15132299544436746761

namespace A152537

/-- `A010815(n)+2*a(n-1)` -/
def P15132299544436746761.Spec : Prop :=
  ∀ n, P15132299544436746761.a n = A152537 n

end A152537

/-! ## A152537.P6416251787973897900

`a(n-1)+a(n-1)-A257628(n)` with `a(0)=1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A152537

/-- `a(n-1)+a(n-1)-A257628(n)` -/
def P6416251787973897900.Spec : Prop :=
  ∀ n, P6416251787973897900.a n = A152537 n

theorem P6416251787973897900.correct : P6416251787973897900.Spec := by
  intro n
  simp only [A152537]

end A152537

/-! ## A152537.P15527350576763541619

`2*A178841(n)-A010815(n)`
-/

namespace A152537.P15527350576763541619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A178841 n - A010815 n

end

end A152537.P15527350576763541619

namespace A152537

/-- `2*A178841(n)-A010815(n)` -/
def P15527350576763541619.Spec : Prop :=
  ∀ n, P15527350576763541619.a n = A152537 n

end A152537

/-! ## A152537.P7000740278039058793

`A178841(n+1)-A010815(n+1)`
-/

namespace A152537.P7000740278039058793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178841 (n + 1) - A010815 (n + 1)

end

end A152537.P7000740278039058793

namespace A152537

/-- `A178841(n+1)-A010815(n+1)` -/
def P7000740278039058793.Spec : Prop :=
  ∀ n, P7000740278039058793.a n = A152537 n

end A152537

/-! ## A152537.P9144408765568371673

`A178841(A000290(n)/n)+a(n-1)` with `a(0)=1`
-/

namespace A152537.P9144408765568371673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A178841 (SequenceMachineLib.roundAway ((A000290 n : ℚ) / (n : ℚ))).toNat + a (n - 1)

end

end A152537.P9144408765568371673

namespace A152537

/-- `A178841(A000290(n)/n)+a(n-1)` -/
def P9144408765568371673.Spec : Prop :=
  ∀ n, P9144408765568371673.a n = A152537 n

end A152537

/-! ## A152537.P4004346620868933741

`A178841(n%A087091(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A152537.P4004346620868933741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A178841 (Int.tmod (n : ℤ) (A087091 (n + 1))).toNat + a (n - 1)

end

end A152537.P4004346620868933741

namespace A152537

/-- `A178841(n%A087091(n+1))+a(n-1)` -/
def P4004346620868933741.Spec : Prop :=
  ∀ n, P4004346620868933741.a n = A152537 n

end A152537

/-! ## A152537.P7240357757596196659

`A152538(∑[n]+n)`
-/

namespace A152537.P7240357757596196659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152538 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A152537.P7240357757596196659

namespace A152537

/-- `A152538(∑[n]+n)` -/
def P7240357757596196659.Spec : Prop :=
  ∀ n, P7240357757596196659.a n = A152537 n

end A152537

/-!
# A152538: Triangle read by rows, A027293 * (A152537 * 0^(n-k)).

The programs for A152538, there is no canonical definition to state claims against.
-/

/-! ## A152538.P118699666878912609

`A027293(n+1)*A152537(A002262(n))`
-/

namespace A152538.P118699666878912609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027293 (n + 1) * A152537 (A002262 n).toNat

end

end A152538.P118699666878912609

/-! ## A152538.P6053560066075064960

`A058318(A144156(n))`
-/

namespace A152538.P6053560066075064960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058318 (A144156 n).toNat

end

end A152538.P6053560066075064960

/-! ## A152538.P15809075167908278132

`A274011(A152229(n))`
-/

namespace A152538.P15809075167908278132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274011 (A152229 n).toNat

end

end A152538.P15809075167908278132

/-! ## A152538.P7490664968898119324

`A058318(A145463(n+1))`
-/

namespace A152538.P7490664968898119324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058318 (A145463 (n + 1)).toNat

end

end A152538.P7490664968898119324

/-! ## A152538.P1540914490981346183

`A212625(A144107(n+1))`
-/

namespace A152538.P1540914490981346183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212625 (A144107 (n + 1)).toNat

end

end A152538.P1540914490981346183

/-!
# A152539: Partial sum of A146538.

The programs for A152539, the canonical program `A152539.P11128868835489364912` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152539 has offset 1).

The definition of A152539 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152539.P11128868835489364912

`∑[A146538(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A152539

/-- `∑[A146538(n+1)]` -/
def P11128868835489364912.Spec : Prop :=
  ∀ n, P11128868835489364912.a n = A152539 (n + 1)

theorem P11128868835489364912.correct : P11128868835489364912.Spec := by
  intro n
  simp only [A152539, Nat.add_sub_cancel]

end A152539

/-! ## A152539.P2847590259394932986

`∑[A007921(n+1)-1]`
-/

namespace A152539.P2847590259394932986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152539.P2847590259394932986

namespace A152539

/-- `∑[A007921(n+1)-1]` -/
def P2847590259394932986.Spec : Prop :=
  ∀ n, P2847590259394932986.a n = A152539 (n + 1)

end A152539

/-! ## A152539.P14815000891029475847

`∑[A309355(n+1)-2]`
-/

namespace A152539.P14815000891029475847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309355 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152539.P14815000891029475847

namespace A152539

/-- `∑[A309355(n+1)-2]` -/
def P14815000891029475847.Spec : Prop :=
  ∀ n, P14815000891029475847.a n = A152539 (n + 1)

theorem P14815000891029475847.correct : P14815000891029475847.Spec := by
  intro n
  simp only [A152539, Nat.add_sub_cancel, A152539.P14815000891029475847.f1, A152539.P14815000891029475847.a, A152539.P11128868835489364912.f1, A152539.P11128868835489364912.a, A146538, A146538.P8666981964067901687.a, A309355, A309355.P9345418795961828822.a, A007921, A007921.P2826303110664531110.f1, A007921.P2826303110664531110.f2, A007921.P2826303110664531110.a, A071904, A071904.P6554188440157640390.a, A370482, A370482.P9499058320465952393.f1, A370482.P9499058320465952393.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A152539

/-! ## A152539.P31459368749424240

`∑[A071904(n+1)-3]`
-/

namespace A152539.P31459368749424240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152539.P31459368749424240

namespace A152539

/-- `∑[A071904(n+1)-3]` -/
def P31459368749424240.Spec : Prop :=
  ∀ n, P31459368749424240.a n = A152539 (n + 1)

theorem P31459368749424240.correct : P31459368749424240.Spec := by
  intro n
  simp only [A152539, Nat.add_sub_cancel, A152539.P31459368749424240.f1, A152539.P31459368749424240.a, A152539.P11128868835489364912.f1, A152539.P11128868835489364912.a, A071904, A071904.P6554188440157640390.a, A146538, A146538.P8666981964067901687.a, A007921, A007921.P2826303110664531110.f1, A007921.P2826303110664531110.f2, A007921.P2826303110664531110.a, A370482, A370482.P9499058320465952393.f1, A370482.P9499058320465952393.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A152539

/-! ## A152539.P7642080868915747140

`∑[2*A153238(n+1)]`
-/

namespace A152539.P7642080868915747140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152539.P7642080868915747140

namespace A152539

/-- `∑[2*A153238(n+1)]` -/
def P7642080868915747140.Spec : Prop :=
  ∀ n, P7642080868915747140.a n = A152539 (n + 1)

end A152539

/-! ## A152539.P7690272100612726841

`∑[A171153(2*(n+1))]`
-/

namespace A152539.P7690272100612726841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171153 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152539.P7690272100612726841

namespace A152539

/-- `∑[A171153(2*(n+1))]` -/
def P7690272100612726841.Spec : Prop :=
  ∀ n, P7690272100612726841.a n = A152539 (n + 1)

end A152539

/-! ## A152539.P7908905939414675373

`∑[A014076(n+2)-3]`
-/

namespace A152539.P7908905939414675373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 2) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152539.P7908905939414675373

namespace A152539

/-- `∑[A014076(n+2)-3]` -/
def P7908905939414675373.Spec : Prop :=
  ∀ n, P7908905939414675373.a n = A152539 (n + 1)

end A152539

/-! ## A152539.P10642904554252212417

`∑[∑[A067970(n+1)]-2]`
-/

namespace A152539.P10642904554252212417
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067970 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152539.P10642904554252212417

namespace A152539

/-- `∑[∑[A067970(n+1)]-2]` -/
def P10642904554252212417.Spec : Prop :=
  ∀ n, P10642904554252212417.a n = A152539 (n + 1)

end A152539

/-! ## A152539.P12731669071069697941

`∑[A308833(2*(n+1))-1]`
-/

namespace A152539.P12731669071069697941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308833 (2 * (n + 1)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152539.P12731669071069697941

namespace A152539

/-- `∑[A308833(2*(n+1))-1]` -/
def P12731669071069697941.Spec : Prop :=
  ∀ n, P12731669071069697941.a n = A152539 (n + 1)

end A152539

/-! ## A152539.P1698037148035601034

`∑[2*(A053726(n+1)-2)]`
-/

namespace A152539.P1698037148035601034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A053726 (n + 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152539.P1698037148035601034

namespace A152539

/-- `∑[2*(A053726(n+1)-2)]` -/
def P1698037148035601034.Spec : Prop :=
  ∀ n, P1698037148035601034.a n = A152539 (n + 1)

end A152539

/-! ## A152539.P6244097113905772283

`∑[A068780(2*n+1)-2]`
-/

namespace A152539.P6244097113905772283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068780 (2 * n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152539.P6244097113905772283

namespace A152539

/-- `∑[A068780(2*n+1)-2]` -/
def P6244097113905772283.Spec : Prop :=
  ∀ n, P6244097113905772283.a n = A152539 (n + 1)

end A152539

/-! ## A152539.P16668909905692582897

`∑[lt[1, A325937(n+1)]-2]`
-/

namespace A152539.P16668909905692582897
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152539.P16668909905692582897

namespace A152539

/-- `∑[lt[1, A325937(n+1)]-2]` -/
def P16668909905692582897.Spec : Prop :=
  ∀ n, P16668909905692582897.a n = A152539 (n + 1)

end A152539

/-! ## A152539.P5710799999852107230

`∑[2*(A008508(n+1)+n)]`
-/

namespace A152539.P5710799999852107230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A008508 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152539.P5710799999852107230

namespace A152539

/-- `∑[2*(A008508(n+1)+n)]` -/
def P5710799999852107230.Spec : Prop :=
  ∀ n, P5710799999852107230.a n = A152539 (n + 1)

end A152539

/-! ## A152539.P12072627174001494863

`∑[2*lt[A060684(n+1), n]]`
-/

namespace A152539.P12072627174001494863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060684 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152539.P12072627174001494863

namespace A152539

/-- `∑[2*lt[A060684(n+1), n]]` -/
def P12072627174001494863.Spec : Prop :=
  ∀ n, (P12072627174001494863.a n : ℤ) = A152539 (n + 1)

end A152539

/-! ## A152539.P11160122720583738825

`A262044(n+1)-3*(n+1)`
-/

namespace A152539.P11160122720583738825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262044 (n + 1) - (3 * (n + 1) : ℤ)

end

end A152539.P11160122720583738825

namespace A152539

/-- `A262044(n+1)-3*(n+1)` -/
def P11160122720583738825.Spec : Prop :=
  ∀ n, P11160122720583738825.a n = A152539 (n + 1)

end A152539

/-! ## A152539.P17058114820727891479

`A163631(n+2)-(3*n+4)`
-/

namespace A152539.P17058114820727891479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163631 (n + 2) - (3 * n + 4 : ℤ)

end

end A152539.P17058114820727891479

namespace A152539

/-- `A163631(n+2)-(3*n+4)` -/
def P17058114820727891479.Spec : Prop :=
  ∀ n, P17058114820727891479.a n = A152539 (n + 1)

end A152539

/-! ## A152539.P12395673736056118922

`∑[A160522(n+1)]+(n+1)²`
-/

namespace A152539.P12395673736056118922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A152539.P12395673736056118922

namespace A152539

/-- `∑[A160522(n+1)]+(n+1)²` -/
def P12395673736056118922.Spec : Prop :=
  ∀ n, P12395673736056118922.a n = A152539 (n + 1)

end A152539

/-! ## A152539.P16513006650734778521

`∑[A165971(n+2)]+(n+1)²`
-/

namespace A152539.P16513006650734778521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165971 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A152539.P16513006650734778521

namespace A152539

/-- `∑[A165971(n+2)]+(n+1)²` -/
def P16513006650734778521.Spec : Prop :=
  ∀ n, P16513006650734778521.a n = A152539 (n + 1)

end A152539

/-! ## A152539.P10845486781971122691

`∑[2*lt[2, A000005(2*n+3)]]`
-/

namespace A152539.P10845486781971122691
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152539.P10845486781971122691

namespace A152539

/-- `∑[2*lt[2, A000005(2*n+3)]]` -/
def P10845486781971122691.Spec : Prop :=
  ∀ n, (P10845486781971122691.a n : ℤ) = A152539 (n + 1)

end A152539

/-! ## A152539.P7277296575751539742

`∑[lt[2, A020639(n+3)%(n+1)]]`
-/

namespace A152539.P7277296575751539742
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (n + 3)) (n + 1 : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152539.P7277296575751539742

namespace A152539

/-- `∑[lt[2, A020639(n+3)%(n+1)]]` -/
def P7277296575751539742.Spec : Prop :=
  ∀ n, (P7277296575751539742.a n : ℤ) = A152539 (n + 1)

end A152539

/-!
# A152540: Primes p of the form A152539(n) + 1.

The programs for A152540, there is no canonical definition to state claims against.
-/

/-! ## A152540.P17681867518862594515

`p?[A152539(n+1)+1]`
-/

namespace A152540.P17681867518862594515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152539 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152540.P17681867518862594515

/-! ## A152540.P17644040821109118942

`p?[A163631(n+1)-3*n]`
-/

namespace A152540.P17644040821109118942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163631 (n + 1) - (3 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152540.P17644040821109118942

/-! ## A152540.P18249926977863363867

`record[A006530(A152539(n+1)+1)]`
-/

namespace A152540.P18249926977863363867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A152539 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152540.P18249926977863363867

/-! ## A152540.P2056922557979607046

`record[A020639(A152539(n+1)+1)]`
-/

namespace A152540.P2056922557979607046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A152539 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152540.P2056922557979607046

/-! ## A152540.P10715409007494734284

`record[A006530(A262044(n+1)-(3*n+2))]`
-/

namespace A152540.P10715409007494734284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A262044 (n + 1) - (3 * n + 2 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152540.P10715409007494734284

/-!
# A152542: Column 0 of triangle A152541.

The programs for A152542, there is no canonical definition to state claims against.
-/

/-! ## A152542.P3551193239155842470

`A152541(∑[n])`
-/

namespace A152542.P3551193239155842470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152541 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A152542.P3551193239155842470

/-! ## A152542.P2658256837607632627

`record[A152541(n)]`
-/

namespace A152542.P2658256837607632627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152542.P2658256837607632627

/-! ## A152542.P4251465610938803729

`and(-1, A152541(A000217(n)))`
-/

namespace A152542.P4251465610938803729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A152541 (A000217 n).toNat)

end

end A152542.P4251465610938803729

/-! ## A152542.P4788059581304022568

`lcm(A094999(n), A152541(C(n+1, 2)))`
-/

namespace A152542.P4788059581304022568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A094999 n) (A152541 (Nat.choose (n + 1) 2))

end

end A152542.P4788059581304022568

/-! ## A152542.P5309215497997427476

`A152541(n²-C(n, 2))+A131531(3*n+4)`
-/

namespace A152542.P5309215497997427476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152541 (n ^ 2 - Nat.choose n 2) + A131531 (3 * n + 4)

end

end A152542.P5309215497997427476

/-!
# A152543: Column 1 of triangle A152541.

The programs for A152543, there is no canonical definition to state claims against.
-/

/-! ## A152543.P17740380141324485148

`record[A152541(comp[∑[n]])]`
-/

namespace A152543.P17740380141324485148
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152541 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152543.P17740380141324485148

/-! ## A152543.P16312899089673297261

`A152541(∑[n+1]+1)`
-/

namespace A152543.P16312899089673297261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152541 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A152543.P16312899089673297261

/-! ## A152543.P12836872974905812278

`lcm(2, A152541(A134869(n+1)))`
-/

namespace A152543.P12836872974905812278
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A152541 (A134869 (n + 1)).toNat)

end

end A152543.P12836872974905812278

/-! ## A152543.P13946197248759527800

`∑{digits}[n+1, A152541(A000124(#))]`
-/

namespace A152543.P13946197248759527800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A152541 (A000124 x).toNat).sum

end

end A152543.P13946197248759527800

/-!
# A152544: Column 2 of triangle A152541.

The programs for A152544, there is no canonical definition to state claims against.
-/

/-! ## A152544.P772743738802960350

`A152541(∑[n+2]+3)`
-/

namespace A152544.P772743738802960350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152541 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A152544.P772743738802960350

/-!
# A152545: Padovan-Fibonacci triangle, read by rows, where the first column equals the Padovan spiral numbers (A134816), while the row sums equal the Fibonacci numbers (A000045).

The programs for A152545, there is no canonical definition to state claims against.
-/

/-! ## A152545.P10448630612516819444

`floor(root(A178866(3*n+5), 7))`
-/

namespace A152545.P10448630612516819444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A178866 (3 * n + 5) : ℝ) ^ (1 / (7 : ℝ))⌋

end

end A152545.P10448630612516819444

/-! ## A152545.P16866375666131512300

`A043537(A220183(n)+A090048(n))`
-/

namespace A152545.P16866375666131512300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A220183 n + A090048 n).toNat

end

end A152545.P16866375666131512300

/-! ## A152545.P15176457447313299028

`A001221(A351982(n)+A067178(n+1))`
-/

namespace A152545.P15176457447313299028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A351982 n + A067178 (n + 1)).toNat

end

end A152545.P15176457447313299028

/-! ## A152545.P6993999882872699614

`A061704(2^A050360(n+1))`
-/

namespace A152545.P6993999882872699614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061704 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A050360 (n + 1) : ℤ))).toNat

end

end A152545.P6993999882872699614

/-! ## A152545.P14950787286791775691

`A344320(A392637(n))`
-/

namespace A152545.P14950787286791775691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344320 (A392637 n).toNat

end

end A152545.P14950787286791775691

/-!
# A152546: Sum of squared terms in rows of the Padovan-Fibonacci triangle A152545.

The programs for A152546, there is no canonical definition to state claims against.
-/

/-! ## A152546.P298463248279407812

`A293137(A148494(n)+A007837(n))`
-/

namespace A152546.P298463248279407812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293137 (A148494 n + A007837 n).toNat

end

end A152546.P298463248279407812

/-! ## A152546.P2164317168087080974

`A238430(2*n)+A079978(A047086(n))`
-/

namespace A152546.P2164317168087080974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238430 (2 * n) + A079978 (A047086 n).toNat

end

end A152546.P2164317168087080974

/-!
# A152547: Triangle, read by rows, derived from Pascal's triangle (see g.f. and example for generating methods), 0 <= k < A001405(n).

The programs for A152547, there is no canonical definition to state claims against.
-/

/-! ## A152547.P11937087920508711808

`A344618(lt[A338898(2*n+5), A344618(2*n)])`
-/

namespace A152547.P11937087920508711808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338898 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344618 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344618 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A152547.P11937087920508711808

/-!
# A152548: Sum of squared terms in rows of triangle A152547: a(n) = Sum_{k=0..C(n,[n/2])-1} A152547(n,k)^2.

The programs for A152548, the canonical program `A152548.P1256914078301777679` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152548 has offset 0).

The definition of A152548 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152548.P5003557873748271893

`4*(a(n-2)+(a(n-1)-a(n-2))/n)` with `a(0)=1, a(1)=4`
-/

namespace A152548.P5003557873748271893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 * (a (n - 2) + (a (n - 1) - a (n - 2)) / (n : ℚ))

end

end A152548.P5003557873748271893

namespace A152548

/-- `4*(a(n-2)+(a(n-1)-a(n-2))/n)` -/
def P5003557873748271893.Spec : Prop :=
  ∀ n, P5003557873748271893.a n = (A152548 n : ℚ)

end A152548

/-! ## A152548.P1256914078301777679

`A063886(n)+2*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A152548

/-- `A063886(n)+2*a(n-1)` -/
def P1256914078301777679.Spec : Prop :=
  ∀ n, P1256914078301777679.a n = A152548 n

theorem P1256914078301777679.correct : P1256914078301777679.Spec := by
  intro n
  simp only [A152548]

end A152548

/-! ## A152548.P17444809999244848423

`2*(A210736(n)+a(n-1))` with `a(0)=1`
-/

namespace A152548.P17444809999244848423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (A210736 n + a (n - 1))

end

end A152548.P17444809999244848423

namespace A152548

/-- `2*(A210736(n)+a(n-1))` -/
def P17444809999244848423.Spec : Prop :=
  ∀ n, P17444809999244848423.a n = A152548 n

end A152548

/-! ## A152548.P5920408644099627542

`(2*n+n%2+1)*(A014495(n)+1)`
-/

namespace A152548.P5920408644099627542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + (n % 2 + 1) : ℕ) : ℤ) * (A014495 n + 1)

end

end A152548.P5920408644099627542

namespace A152548

/-- `(2*n+n%2+1)*(A014495(n)+1)` -/
def P5920408644099627542.Spec : Prop :=
  ∀ n, P5920408644099627542.a n = A152548 n

end A152548

/-! ## A152548.P1190547749430357323

`A189391(n)+A099325(n)`
-/

namespace A152548.P1190547749430357323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189391 n + A099325 n

end

end A152548.P1190547749430357323

namespace A152548

/-- `A189391(n)+A099325(n)` -/
def P1190547749430357323.Spec : Prop :=
  ∀ n, P1190547749430357323.a n = A152548 n

end A152548

/-! ## A152548.P11932793063840528445

`A305612(n)+A210736(n)`
-/

namespace A152548.P11932793063840528445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305612 n + A210736 n

end

end A152548.P11932793063840528445

namespace A152548

/-- `A305612(n)+A210736(n)` -/
def P11932793063840528445.Spec : Prop :=
  ∀ n, P11932793063840528445.a n = A152548 n

theorem P11932793063840528445.correct : P11932793063840528445.Spec := by
  intro n
  simp only [A152548, Nat.add_sub_cancel, A152548.P11932793063840528445.a, A152548.P1256914078301777679.a, A063886, A063886.P2008880257839641201.a, A210736, A210736.P1250447749793702526.a, A305612, A305612.P1112257045889294607.a, A001405, A001405.P5205018418992951678.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A152548

/-! ## A152548.P14647910965077463016

`Δ[A317186(n)]*A001405(n)`
-/

namespace A152548.P14647910965077463016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001405 n

end

end A152548.P14647910965077463016

namespace A152548

/-- `Δ[A317186(n)]*A001405(n)` -/
def P14647910965077463016.Spec : Prop :=
  ∀ n, P14647910965077463016.a n = A152548 n

end A152548

/-! ## A152548.P5180319680304407000

`A001405(n)*A042948(n+1)`
-/

namespace A152548.P5180319680304407000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A042948 (n + 1)

end

end A152548.P5180319680304407000

namespace A152548

/-- `A001405(n)*A042948(n+1)` -/
def P5180319680304407000.Spec : Prop :=
  ∀ n, P5180319680304407000.a n = A152548 n

end A152548

/-! ## A152548.P14150794737264062603

`(A042948(n)+1)*A063886(n)`
-/

namespace A152548.P14150794737264062603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A042948 n + 1) * A063886 n

end

end A152548.P14150794737264062603

namespace A152548

/-- `(A042948(n)+1)*A063886(n)` -/
def P14150794737264062603.Spec : Prop :=
  ∀ n, P14150794737264062603.a n = A152548 n

end A152548

/-! ## A152548.P2415667216078404745

`A042963(n+1)*A063886(n)`
-/

namespace A152548.P2415667216078404745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (n + 1) * A063886 n

end

end A152548.P2415667216078404745

namespace A152548

/-- `A042963(n+1)*A063886(n)` -/
def P2415667216078404745.Spec : Prop :=
  ∀ n, P2415667216078404745.a n = A152548 n

end A152548

/-! ## A152548.P8666876871517418992

`A001405(n)*A338062(n+1)`
-/

namespace A152548.P8666876871517418992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A338062 (n + 1)

end

end A152548.P8666876871517418992

namespace A152548

/-- `A001405(n)*A338062(n+1)` -/
def P8666876871517418992.Spec : Prop :=
  ∀ n, P8666876871517418992.a n = A152548 n

end A152548

/-! ## A152548.P4550871063094794887

`A000079(n)+2*A189391(n)`
-/

namespace A152548.P4550871063094794887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + 2 * A189391 n

end

end A152548.P4550871063094794887

namespace A152548

/-- `A000079(n)+2*A189391(n)` -/
def P4550871063094794887.Spec : Prop :=
  ∀ n, P4550871063094794887.a n = A152548 n

end A152548

/-! ## A152548.P13889571385678049811

`2*A099325(n)-A000079(n)`
-/

namespace A152548.P13889571385678049811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099325 n - A000079 n

end

end A152548.P13889571385678049811

namespace A152548

/-- `2*A099325(n)-A000079(n)` -/
def P13889571385678049811.Spec : Prop :=
  ∀ n, P13889571385678049811.a n = A152548 n

end A152548

/-! ## A152548.P8595932388714489286

`A063886(n)*A098180(2*n)`
-/

namespace A152548.P8595932388714489286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 n * A098180 (2 * n)

end

end A152548.P8595932388714489286

namespace A152548

/-- `A063886(n)*A098180(2*n)` -/
def P8595932388714489286.Spec : Prop :=
  ∀ n, P8595932388714489286.a n = A152548 n

end A152548

/-! ## A152548.P13335772670306989831

`A042948(n+1)*A210736(n+1)`
-/

namespace A152548.P13335772670306989831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (n + 1) * A210736 (n + 1)

end

end A152548.P13335772670306989831

namespace A152548

/-- `A042948(n+1)*A210736(n+1)` -/
def P13335772670306989831.Spec : Prop :=
  ∀ n, P13335772670306989831.a n = A152548 n

end A152548

/-! ## A152548.P10409265605453104896

`A210736(n+1)*A338062(n+1)`
-/

namespace A152548.P10409265605453104896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (n + 1) * A338062 (n + 1)

end

end A152548.P10409265605453104896

namespace A152548

/-- `A210736(n+1)*A338062(n+1)` -/
def P10409265605453104896.Spec : Prop :=
  ∀ n, P10409265605453104896.a n = A152548 n

end A152548

/-! ## A152548.P1344452363963781008

`A100071(n+1)+2*A100071(n)`
-/

namespace A152548.P1344452363963781008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100071 (n + 1) + 2 * A100071 n

end

end A152548.P1344452363963781008

namespace A152548

/-- `A100071(n+1)+2*A100071(n)` -/
def P1344452363963781008.Spec : Prop :=
  ∀ n, P1344452363963781008.a n = A152548 n

end A152548

/-! ## A152548.P4541103594324860523

`(A093178(n+1)+n)*A128014(n+1)`
-/

namespace A152548.P4541103594324860523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A093178 (n + 1) + (n : ℤ)) * A128014 (n + 1)

end

end A152548.P4541103594324860523

namespace A152548

/-- `(A093178(n+1)+n)*A128014(n+1)` -/
def P4541103594324860523.Spec : Prop :=
  ∀ n, P4541103594324860523.a n = A152548 n

end A152548

/-! ## A152548.P14431062332950015937

`(A109613(n+1)+n)*A210736(n+1)`
-/

namespace A152548.P14431062332950015937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109613 (n + 1) + (n : ℤ)) * A210736 (n + 1)

end

end A152548.P14431062332950015937

namespace A152548

/-- `(A109613(n+1)+n)*A210736(n+1)` -/
def P14431062332950015937.Spec : Prop :=
  ∀ n, P14431062332950015937.a n = A152548 n

end A152548

/-! ## A152548.P9949072553500299560

`A305612(n)+gcd(A056040(n), A305612(n))`
-/

namespace A152548.P9949072553500299560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305612 n + (Int.gcd (A056040 n) (A305612 n) : ℤ)

end

end A152548.P9949072553500299560

namespace A152548

/-- `A305612(n)+gcd(A056040(n), A305612(n))` -/
def P9949072553500299560.Spec : Prop :=
  ∀ n, P9949072553500299560.a n = A152548 n

end A152548

/-!
# A152549: Decimal expansion of log_3(18).

The programs for A152549, there is no canonical definition to state claims against.
-/

/-! ## A152549.P18104204981826839463

`A153459(n)+A000007(n)`
-/

namespace A152549.P18104204981826839463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153459 (n + 1) + A000007 n

end

end A152549.P18104204981826839463

/-! ## A152549.P5833145740319831474

`A054977(n)*A153459(n)`
-/

namespace A152549.P5833145740319831474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A153459 (n + 1)

end

end A152549.P5833145740319831474

/-! ## A152549.P9040376977389786764

`A141044(n+1)*A153459(n)`
-/

namespace A152549.P9040376977389786764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 (n + 1) * A153459 (n + 1)

end

end A152549.P9040376977389786764

/-! ## A152549.P6774542401791169215

`A153459(n)+A008458(n)%2`
-/

namespace A152549.P6774542401791169215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153459 (n + 1) + Int.tmod (A008458 n) 2

end

end A152549.P6774542401791169215

/-! ## A152549.P17978805583912024049

`A153459(n*A228710(a(n-1)))` with `a(0)=2`
-/

namespace A152549.P17978805583912024049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A153459 (((n : ℤ) * A228710 (a (n - 1)).toNat).toNat + 1)

end

end A152549.P17978805583912024049

/-! ## A152549.P4714051026097035729

`floor(A153459(n)+A000010(n+1)/(n+1))`
-/

namespace A152549.P4714051026097035729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A153459 (n + 1) : ℚ) + (A000010 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A152549.P4714051026097035729

/-! ## A152549.P2879914299633831149

`A153459(n)+A008683(A008574(n))`
-/

namespace A152549.P2879914299633831149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153459 (n + 1) + A008683 (A008574 n).toNat

end

end A152549.P2879914299633831149

/-! ## A152549.P13388953697141104764

`A153459(n)-A008683(2*A008574(n))`
-/

namespace A152549.P13388953697141104764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153459 (n + 1) - A008683 (2 * A008574 n).toNat

end

end A152549.P13388953697141104764

/-!
# A152551: a(n) = (2*n+1)^floor((n-1)/2).

The programs for A152551, the canonical program `A152551.P6133712211478418592` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152551 has offset 0).

The definition of A152551 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152551.P6133712211478418592

`(2*n+1)^floor((n-1)/2)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152551

/-- `(2*n+1)^floor((n-1)/2)` -/
def P6133712211478418592.Spec : Prop :=
  ∀ n, P6133712211478418592.a n = (A152551 n : ℚ)

end A152551

/-! ## A152551.P10420781839574236972

`abs(Δ[n²]^(∑[n%2]-1))`
-/

namespace A152551.P10420781839574236972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) ^ (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1 : ℤ)|

end

end A152551.P10420781839574236972

namespace A152551

/-- `abs(Δ[n²]^(∑[n%2]-1))` -/
def P10420781839574236972.Spec : Prop :=
  ∀ n, P10420781839574236972.a n = (A152551 n : ℚ)

end A152551

/-! ## A152551.P787017600937989475

`floor(or(1, 2*n)^floor((n-1)/2))`
-/

namespace A152551.P787017600937989475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 (2 * n) : ℚ) ^ (⌊((n : ℤ) - 1 : ℚ) / 2⌋ : ℤ)⌋

end

end A152551.P787017600937989475

namespace A152551

/-- `floor(or(1, 2*n)^floor((n-1)/2))` -/
def P787017600937989475.Spec : Prop :=
  ∀ n, P787017600937989475.a n = A152551 n

end A152551

/-! ## A152551.P11710404605280834797

`or(1, (2*n+1)^floor(n*tan(79)))`
-/

namespace A152551.P11710404605280834797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway ((2 * n + 1 : ℚ) ^ (⌊(n : ℝ) * Real.tan (79 : ℝ)⌋ : ℤ)))

end

end A152551.P11710404605280834797

namespace A152551

/-- `or(1, (2*n+1)^floor(n*tan(79)))` -/
def P11710404605280834797.Spec : Prop :=
  ∀ n, P11710404605280834797.a n = A152551 n

end A152551

/-! ## A152551.P2692887621015812806

`or(1, (2*n+1)^(ceil(n/2)-1))`
-/

namespace A152551.P2692887621015812806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway ((2 * n + 1 : ℚ) ^ (⌈(n : ℚ) / 2⌉ - 1 : ℤ)))

end

end A152551.P2692887621015812806

namespace A152551

/-- `or(1, (2*n+1)^(ceil(n/2)-1))` -/
def P2692887621015812806.Spec : Prop :=
  ∀ n, P2692887621015812806.a n = A152551 n

end A152551

/-! ## A152551.P13302534261140335804

`abs(Δ[n²]^A140106(n+1))`
-/

namespace A152551.P13302534261140335804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) ^ (A140106 (n + 1) : ℤ)|

end

end A152551.P13302534261140335804

namespace A152551

/-- `abs(Δ[n²]^A140106(n+1))` -/
def P13302534261140335804.Spec : Prop :=
  ∀ n, P13302534261140335804.a n = (A152551 n : ℚ)

end A152551

/-! ## A152551.P17673341482415593225

`floor(A005408(n)^floor((n-1)/2))`
-/

namespace A152551.P17673341482415593225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005408 n : ℚ) ^ (⌊((n : ℤ) - 1 : ℚ) / 2⌋ : ℤ)⌋

end

end A152551.P17673341482415593225

namespace A152551

/-- `floor(A005408(n)^floor((n-1)/2))` -/
def P17673341482415593225.Spec : Prop :=
  ∀ n, P17673341482415593225.a n = A152551 n

end A152551

/-! ## A152551.P14740415240549053629

`(2*n+1)^A110654(n)/(2*n+1)`
-/

namespace A152551.P14740415240549053629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) ^ (A110654 n : ℤ) / (2 * n + 1 : ℚ)

end

end A152551.P14740415240549053629

namespace A152551

/-- `(2*n+1)^A110654(n)/(2*n+1)` -/
def P14740415240549053629.Spec : Prop :=
  ∀ n, P14740415240549053629.a n = (A152551 n : ℚ)

end A152551

/-! ## A152551.P12129377098655566390

`A005408(n)^A065033(n)/A005408(n)`
-/

namespace A152551.P12129377098655566390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n : ℚ) ^ (A065033 n : ℤ) / (A005408 n : ℚ)

end

end A152551.P12129377098655566390

namespace A152551

/-- `A005408(n)^A065033(n)/A005408(n)` -/
def P12129377098655566390.Spec : Prop :=
  ∀ n, P12129377098655566390.a n = (A152551 n : ℚ)

end A152551

/-! ## A152551.P1494541193139893399

`sqrt((2*n+1)^(n-gcd(2, n)))`
-/

namespace A152551.P1494541193139893399
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((2 * n + 1 : ℚ) ^ ((n : ℤ) - (Nat.gcd 2 n : ℤ) : ℤ) : ℝ)

end

end A152551.P1494541193139893399

namespace A152551

/-- `sqrt((2*n+1)^(n-gcd(2, n)))` -/
def P1494541193139893399.Spec : Prop :=
  ∀ n, P1494541193139893399.a n = (A152551 n : ℝ)

end A152551

/-!
# A152554: Largest term in row n of triangle A152550.

The programs for A152554, there is no canonical definition to state claims against.
-/

/-! ## A152554.P3140463884106282514

`A138995(or(∑[n], A249791(n)))`
-/

namespace A152554.P3140463884106282514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138995 (Int.lor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A249791 n)).toNat

end

end A152554.P3140463884106282514

/-! ## A152554.P5735707439957718320

`∏{e}[n, n*#+1]*A356232(A099152(n))`
-/

namespace A152554.P5735707439957718320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (n * Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) * A356232 (A099152 n).toNat

end

end A152554.P5735707439957718320

/-!
# A152556: a(n) = 2*(2*n+2)^floor((n-1)/2).

The programs for A152556, the canonical program `A152556.P14194884887529651227` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152556 has offset 0).

The definition of A152556 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152556.P14194884887529651227

`2*(2*n+2)^floor((n-1)/2)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152556

/-- `2*(2*n+2)^floor((n-1)/2)` -/
def P14194884887529651227.Spec : Prop :=
  ∀ n, P14194884887529651227.a n = (A152556 n : ℚ)

end A152556

/-! ## A152556.P8694171234799341520

`(2*(n+1))^∑[n%2]/(n+1)`
-/

namespace A152556.P8694171234799341520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1)) ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)

end

end A152556.P8694171234799341520

namespace A152556

/-- `(2*(n+1))^∑[n%2]/(n+1)` -/
def P8694171234799341520.Spec : Prop :=
  ∀ n, P8694171234799341520.a n = (A152556 n : ℚ)

end A152556

/-! ## A152556.P13207591906123812075

`(2*(n+1))^A004526(n+1)/(n+1)`
-/

namespace A152556.P13207591906123812075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℚ) ^ (A004526 (n + 1) : ℤ) / (n + 1 : ℚ)

end

end A152556.P13207591906123812075

namespace A152556

/-- `(2*(n+1))^A004526(n+1)/(n+1)` -/
def P13207591906123812075.Spec : Prop :=
  ∀ n, P13207591906123812075.a n = (A152556 n : ℚ)

end A152556

/-! ## A152556.P13331819450402781137

`A103517(n)^A065033(n)/(n+1)`
-/

namespace A152556.P13331819450402781137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103517 n : ℚ) ^ (A065033 n : ℤ) / (n + 1 : ℚ)

end

end A152556.P13331819450402781137

namespace A152556

/-- `A103517(n)^A065033(n)/(n+1)` -/
def P13331819450402781137.Spec : Prop :=
  ∀ n, P13331819450402781137.a n = (A152556 n : ℚ)

end A152556

/-! ## A152556.P400646067100598582

`A103517(n)^A110654(n)/(n+1)`
-/

namespace A152556.P400646067100598582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103517 n : ℚ) ^ (A110654 n : ℤ) / (n + 1 : ℚ)

end

end A152556.P400646067100598582

namespace A152556

/-- `A103517(n)^A110654(n)/(n+1)` -/
def P400646067100598582.Spec : Prop :=
  ∀ n, P400646067100598582.a n = (A152556 n : ℚ)

end A152556

/-!
# A152559: Largest term in row n of triangle A152555.

The programs for A152559, there is no canonical definition to state claims against.
-/

/-! ## A152559.P9669667479328009482

`or(A005130(n+1), A133237(A013598(n+1)))`
-/

namespace A152559.P9669667479328009482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005130 (n + 1)) (A133237 (A013598 (n + 1)).toNat)

end

end A152559.P9669667479328009482

/-! ## A152559.P14837509658855777424

`A152555(lt[A152550(2*n+3), A152567(2*n+3)])`
-/

namespace A152559.P14837509658855777424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152550 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152567 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152555 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A152559.P14837509658855777424

/-!
# A152560: a(n) = A131205(A005578(n)).

The programs for A152560, the canonical program `A152560.P8053713699117801611` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152560 has offset 0).

The definition of A152560 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152560.P8053713699117801611

`A131205(A005578(n))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A152560

/-- `A131205(A005578(n))` -/
def P8053713699117801611.Spec : Prop :=
  ∀ n, P8053713699117801611.a n = A152560 n

theorem P8053713699117801611.correct : P8053713699117801611.Spec := by
  intro n
  simp only [A152560]

end A152560

/-! ## A152560.P8423554921076590642

`A000123(A001045(n+1))/2`
-/

namespace A152560.P8423554921076590642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000123 (A001045 (n + 1)).toNat : ℚ) / 2

end

end A152560.P8423554921076590642

namespace A152560

/-- `A000123(A001045(n+1))/2` -/
def P8423554921076590642.Spec : Prop :=
  ∀ n, P8423554921076590642.a n = (A152560 n : ℚ)

end A152560

/-! ## A152560.P8140251959747394594

`A033485(A001045(n+1))`
-/

namespace A152560.P8140251959747394594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033485 (A001045 (n + 1)).toNat

end

end A152560.P8140251959747394594

namespace A152560

/-- `A033485(A001045(n+1))` -/
def P8140251959747394594.Spec : Prop :=
  ∀ n, P8140251959747394594.a n = A152560 n

end A152560

/-! ## A152560.P15724392092263756792

`A033485(A152046(n+1))`
-/

namespace A152560.P15724392092263756792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033485 (A152046 (n + 1)).toNat

end

end A152560.P15724392092263756792

namespace A152560

/-- `A033485(A152046(n+1))` -/
def P15724392092263756792.Spec : Prop :=
  ∀ n, P15724392092263756792.a n = A152560 n

end A152560

/-! ## A152560.P2660103659547355674

`A033485(A167167(n+1))`
-/

namespace A152560.P2660103659547355674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033485 (A167167 (n + 1)).toNat

end

end A152560.P2660103659547355674

namespace A152560

/-- `A033485(A167167(n+1))` -/
def P2660103659547355674.Spec : Prop :=
  ∀ n, P2660103659547355674.a n = A152560 n

end A152560

/-!
# A152561: Smallest m such that 2^m begins with a 1 and n 0's.

The programs for A152561, there is no canonical definition to state claims against.
-/

/-! ## A152561.P1775138927541189835

`A018856(10^n)`
-/

namespace A152561.P1775138927541189835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018856 (10 ^ n)

end

end A152561.P1775138927541189835

/-!
# A152562: Smallest number m such that sigma(m) has exactly n distinct prime factors.

The programs for A152562, there is no canonical definition to state claims against.
-/

/-! ## A152562.P2582583785440941838

`A177501((∑[∑{e}[n+1, #]+n]+3)*a(n-1)+1)` with `a(0)=2`
-/

namespace A152562.P2582583785440941838
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + n

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A177501 (((∑ j ∈ Finset.range (n + 1), f1 j + 3 : ℕ) : ℤ) * a (n - 1) + 1).toNat

end

end A152562.P2582583785440941838

/-!
# A152563: Primes in A152535.

The programs for A152563, the canonical program `A152563.P13954880354621690569` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152563 has offset 1).

The definition of A152563 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1199 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152563.P13954880354621690569

`∩[A122516(n+1), A152535(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A152563

/-- `∩[A122516(n+1), A152535(n+1)]` -/
def P13954880354621690569.Spec : Prop :=
  ∀ n, (P13954880354621690569.a n : ℤ) = A152563 (n + 1)

theorem P13954880354621690569.correct : P13954880354621690569.Spec := by
  intro n
  simp only [A152563, Nat.add_sub_cancel]

end A152563

/-! ## A152563.P14037388453155459424

`∩[A122516(n+1), a(n-1)+A147967(n)+n]` with `a(0)=0`
-/

namespace A152563.P14037388453155459424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122516 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) + (A147967 n + (n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152563.P14037388453155459424

namespace A152563

/-- `∩[A122516(n+1), a(n-1)+A147967(n)+n]` -/
def P14037388453155459424.Spec : Prop :=
  ∀ n, (P14037388453155459424.a n : ℤ) = A152563 (n + 1)

end A152563

/-! ## A152563.P2206722329442031818

`∩[A033286(n+1)-A007504(n+1), A122516(n+1)]`
-/

namespace A152563.P2206722329442031818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 1) - A007504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122516 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152563.P2206722329442031818

namespace A152563

/-- `∩[A033286(n+1)-A007504(n+1), A122516(n+1)]` -/
def P2206722329442031818.Spec : Prop :=
  ∀ n, (P2206722329442031818.a n : ℤ) = A152563 (n + 1)

end A152563

/-! ## A152563.P6258842217849252678

`∩[A122516(n+1), n*A006005(n+1)-A007504(n)]`
-/

namespace A152563.P6258842217849252678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122516 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A006005 (n + 1) - A007504 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152563.P6258842217849252678

namespace A152563

/-- `∩[A122516(n+1), n*A006005(n+1)-A007504(n)]` -/
def P6258842217849252678.Spec : Prop :=
  ∀ n, (P6258842217849252678.a n : ℤ) = A152563 (n + 1)

end A152563

/-! ## A152563.P8039136224154733578

`p?[A152535(n+1)]`
-/

namespace A152563.P8039136224154733578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152563.P8039136224154733578

namespace A152563

/-- `p?[A152535(n+1)]` -/
def P8039136224154733578.Spec : Prop :=
  ∀ n, P8039136224154733578.a n = A152563 (n + 1)

end A152563

/-! ## A152563.P507077484127092938

`p?[∑[A141042(n+1)]]`
-/

namespace A152563.P507077484127092938
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141042 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152563.P507077484127092938

namespace A152563

/-- `p?[∑[A141042(n+1)]]` -/
def P507077484127092938.Spec : Prop :=
  ∀ n, P507077484127092938.a n = A152563 (n + 1)

end A152563

/-! ## A152563.P6604708965612150776

`p?[Δ[A062020(n+1)]]`
-/

namespace A152563.P6604708965612150776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062020 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152563.P6604708965612150776

namespace A152563

/-- `p?[Δ[A062020(n+1)]]` -/
def P6604708965612150776.Spec : Prop :=
  ∀ n, P6604708965612150776.a n = A152563 (n + 1)

end A152563

/-! ## A152563.P6322767461579171480

`p?[A368616(p?[2*n+1])]`
-/

namespace A152563.P6322767461579171480
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368616 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152563.P6322767461579171480

namespace A152563

/-- `p?[A368616(p?[2*n+1])]` -/
def P6322767461579171480.Spec : Prop :=
  ∀ n, P6322767461579171480.a n = A152563 (n + 1)

end A152563

/-! ## A152563.P1347564801135765891

`p?[∑[n*A054541(n+1)]]`
-/

namespace A152563.P1347564801135765891
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A054541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152563.P1347564801135765891

namespace A152563

/-- `p?[∑[n*A054541(n+1)]]` -/
def P1347564801135765891.Spec : Prop :=
  ∀ n, P1347564801135765891.a n = A152563 (n + 1)

end A152563

/-! ## A152563.P6274761614432146075

`p?[∑[(n+1)*Δ[A000040(n+1)]]]`
-/

namespace A152563.P6274761614432146075
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f3 (n + 1) - f3 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152563.P6274761614432146075

namespace A152563

/-- `p?[∑[(n+1)*Δ[A000040(n+1)]]]` -/
def P6274761614432146075.Spec : Prop :=
  ∀ n, P6274761614432146075.a n = A152563 (n + 1)

end A152563

/-! ## A152563.P17464750957138261315

`p?[A117495(n+1)-A007504(n)]`
-/

namespace A152563.P17464750957138261315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117495 (n + 1) - A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152563.P17464750957138261315

namespace A152563

/-- `p?[A117495(n+1)-A007504(n)]` -/
def P17464750957138261315.Spec : Prop :=
  ∀ n, P17464750957138261315.a n = A152563 (n + 1)

end A152563

/-! ## A152563.P17791190869094855029

`p?[A033286(n+1)-A007504(n+1)]`
-/

namespace A152563.P17791190869094855029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 1) - A007504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152563.P17791190869094855029

namespace A152563

/-- `p?[A033286(n+1)-A007504(n+1)]` -/
def P17791190869094855029.Spec : Prop :=
  ∀ n, P17791190869094855029.a n = A152563 (n + 1)

end A152563

/-! ## A152563.P5040480920952520267

`p?[n*A000040(n+1)-A007504(n)]`
-/

namespace A152563.P5040480920952520267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000040 (n + 1) - A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152563.P5040480920952520267

namespace A152563

/-- `p?[n*A000040(n+1)-A007504(n)]` -/
def P5040480920952520267.Spec : Prop :=
  ∀ n, P5040480920952520267.a n = A152563 (n + 1)

end A152563

/-! ## A152563.P5401740391279393294

`p?[A189892(n+1)-(A008864(n+1)-1)]`
-/

namespace A152563.P5401740391279393294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189892 (n + 1) - (A008864 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152563.P5401740391279393294

namespace A152563

/-- `p?[A189892(n+1)-(A008864(n+1)-1)]` -/
def P5401740391279393294.Spec : Prop :=
  ∀ n, P5401740391279393294.a n = A152563 (n + 1)

end A152563

/-! ## A152563.P17192901638049028984

`p?[A189892(n+1)-(A040976(n+1)+2)]`
-/

namespace A152563.P17192901638049028984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189892 (n + 1) - (A040976 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152563.P17192901638049028984

namespace A152563

/-- `p?[A189892(n+1)-(A040976(n+1)+2)]` -/
def P17192901638049028984.Spec : Prop :=
  ∀ n, P17192901638049028984.a n = A152563 (n + 1)

end A152563

/-! ## A152563.P16934270833553379921

`p?[∑[(n+1)*(A000040(n+2)-A000040(n+1))]]`
-/

namespace A152563.P16934270833553379921
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000040 (n + 2) - A000040 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152563.P16934270833553379921

namespace A152563

/-- `p?[∑[(n+1)*(A000040(n+2)-A000040(n+1))]]` -/
def P16934270833553379921.Spec : Prop :=
  ∀ n, P16934270833553379921.a n = A152563 (n + 1)

end A152563

/-!
# A152565: Decimal expansion of log_3(7).

The programs for A152565, there is no canonical definition to state claims against.
-/

/-! ## A152565.P6708791917226034526

`A155541(C(3, n+2)+n)`
-/

namespace A152565.P6708791917226034526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155541 (Nat.choose 3 (n + 2) + n + 1)

end

end A152565.P6708791917226034526

/-! ## A152565.P11705597755285487505

`A155541(n)-C(2, A254963(n))`
-/

namespace A152565.P11705597755285487505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155541 (n + 1) - (Nat.choose 2 (A254963 n).toNat : ℤ)

end

end A152565.P11705597755285487505

/-! ## A152565.P6713621155723694344

`A155541(n)-C(n, A033547(n))`
-/

namespace A152565.P6713621155723694344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155541 (n + 1) - (Nat.choose n (A033547 n).toNat : ℤ)

end

end A152565.P6713621155723694344

/-! ## A152565.P3695762704333950809

`A155541(n)-A231772(2*n+1)`
-/

namespace A152565.P3695762704333950809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155541 (n + 1) - A231772 (2 * n + 1)

end

end A152565.P3695762704333950809

/-! ## A152565.P3470120188575455471

`A155541(n)-A292242(A231772(n))`
-/

namespace A152565.P3470120188575455471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155541 (n + 1) - A292242 (A231772 n).toNat

end

end A152565.P3470120188575455471

/-! ## A152565.P17345404780971882675

`A155541(n)-A008683(A235249(n+1))`
-/

namespace A152565.P17345404780971882675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155541 (n + 1) - A008683 (A235249 (n + 1)).toNat

end

end A152565.P17345404780971882675

/-! ## A152565.P3378576775876165473

`A155541(n)+A008683(2*A235249(n+1))`
-/

namespace A152565.P3378576775876165473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155541 (n + 1) + A008683 (2 * A235249 (n + 1)).toNat

end

end A152565.P3378576775876165473

/-! ## A152565.P16553217732232549696

`A155541(n)/A014963(A046087(n+1))`
-/

namespace A152565.P16553217732232549696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155541 (n + 1) : ℚ) / (A014963 (A046087 (n + 1)).toNat : ℚ)

end

end A152565.P16553217732232549696

/-! ## A152565.P13011663497406271676

`A155541(n)-A292242(A049580(n+1))`
-/

namespace A152565.P13011663497406271676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155541 (n + 1) - A292242 (A049580 (n + 1)).toNat

end

end A152565.P13011663497406271676

/-! ## A152565.P14039310527025251707

`A155541(n)-A008683((n+1)²)`
-/

namespace A152565.P14039310527025251707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155541 (n + 1) - A008683 ((n + 1) ^ 2)

end

end A152565.P14039310527025251707

/-!
# A152567: Numbers k such that A049445(k) is odd.

The programs for A152567, the canonical program `A152567.P4256859840278819106` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152567 has offset 1).

The definition of A152567 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4201 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152567.P4256859840278819106

`eq[1, A049445(n+1)%2]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A152567

/-- `eq[1, A049445(n+1)%2]+1` -/
def P4256859840278819106.Spec : Prop :=
  ∀ n, (P4256859840278819106.a n : ℤ) = A152567 (n + 1)

theorem P4256859840278819106.correct : P4256859840278819106.Spec := by
  intro n
  simp only [A152567, Nat.add_sub_cancel]

end A152567

/-! ## A152567.P383671408323157510

`record[(A005408(n)-n)*and(1, A049445(n+1))]`
-/

namespace A152567.P383671408323157510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005408 n - (n : ℤ)) * Int.land 1 (A049445 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152567.P383671408323157510

namespace A152567

/-- `record[(A005408(n)-n)*and(1, A049445(n+1))]` -/
def P383671408323157510.Spec : Prop :=
  ∀ n, P383671408323157510.a n = A152567 (n + 1)

end A152567

/-! ## A152567.P1215541838623916555

`record[and(1, A049445(n+1))*A008619(2*n)]`
-/

namespace A152567.P1215541838623916555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A049445 (n + 1)) * A008619 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152567.P1215541838623916555

namespace A152567

/-- `record[and(1, A049445(n+1))*A008619(2*n)]` -/
def P1215541838623916555.Spec : Prop :=
  ∀ n, P1215541838623916555.a n = A152567 (n + 1)

end A152567

/-! ## A152567.P3214693464017320833

`record[and(1, A049445(n+1))*A028242(2*n)]`
-/

namespace A152567.P3214693464017320833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A049445 (n + 1)) * A028242 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152567.P3214693464017320833

namespace A152567

/-- `record[and(1, A049445(n+1))*A028242(2*n)]` -/
def P3214693464017320833.Spec : Prop :=
  ∀ n, P3214693464017320833.a n = A152567 (n + 1)

end A152567

/-! ## A152567.P1144611886667021433

`record[A000027(n+1)*A088705(A049445(n+1))]`
-/

namespace A152567.P1144611886667021433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A088705 (A049445 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152567.P1144611886667021433

namespace A152567

/-- `record[A000027(n+1)*A088705(A049445(n+1))]` -/
def P1144611886667021433.Spec : Prop :=
  ∀ n, P1144611886667021433.a n = A152567 (n + 1)

end A152567

/-! ## A152567.P8990708336663813860

`record[A008619(2*n)*A088705(A049445(n+1))]`
-/

namespace A152567.P8990708336663813860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) * A088705 (A049445 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152567.P8990708336663813860

namespace A152567

/-- `record[A008619(2*n)*A088705(A049445(n+1))]` -/
def P8990708336663813860.Spec : Prop :=
  ∀ n, P8990708336663813860.a n = A152567 (n + 1)

end A152567

/-!
# A152568: Triangle T(n,k) read by rows: T(n,n) = -1, T(n,0) = 2^(n - 1), T(n,k) = -2^(n - k - 1), 1 <= k <= n - 1.

The programs for A152568, the canonical program `A152568.P4268834110349744832` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152568 has offset 0).

The definition of A152568 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152568.P9300097121563159660

`A152571(n)/A155038(n+1)`
-/

namespace A152568.P9300097121563159660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152571 n : ℚ) / (A155038 (n + 1) : ℚ)

end

end A152568.P9300097121563159660

namespace A152568

/-- `A152571(n)/A155038(n+1)` -/
def P9300097121563159660.Spec : Prop :=
  ∀ n, P9300097121563159660.a n = (A152568 n : ℚ)

end A152568

/-! ## A152568.P4268834110349744832

`Δ[A034008(A004736(abs(1-n)+1))]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A152568

/-- `Δ[A034008(A004736(abs(1-n)+1))]` -/
def P4268834110349744832.Spec : Prop :=
  ∀ n, P4268834110349744832.a n = A152568 n

theorem P4268834110349744832.correct : P4268834110349744832.Spec := by
  intro n
  simp only [A152568]

end A152568

/-! ## A152568.P13736634556562925181

`A152571(n)/A057728(n+2)`
-/

namespace A152568.P13736634556562925181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152571 n : ℚ) / (A057728 (n + 2) : ℚ)

end

end A152568.P13736634556562925181

namespace A152568

/-- `A152571(n)/A057728(n+2)` -/
def P13736634556562925181.Spec : Prop :=
  ∀ n, P13736634556562925181.a n = (A152568 n : ℚ)

end A152568

/-! ## A152568.P14435667115321695085

`Δ[and(-A068913(n), A130321(n))]`
-/

namespace A152568.P14435667115321695085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A068913 n) (A130321 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152568.P14435667115321695085

namespace A152568

/-- `Δ[and(-A068913(n), A130321(n))]` -/
def P14435667115321695085.Spec : Prop :=
  ∀ n, P14435667115321695085.a n = A152568 n

end A152568

/-! ## A152568.P1059348535910951832

`round(Δ[A130321(n)^A167407(n)])`
-/

namespace A152568.P1059348535910951832
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130321 n : ℚ) ^ (A167407 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A152568.P1059348535910951832

namespace A152568

/-- `round(Δ[A130321(n)^A167407(n)])` -/
def P1059348535910951832.Spec : Prop :=
  ∀ n, P1059348535910951832.a n = A152568 n

end A152568

/-! ## A152568.P450161319984207647

`Δ[A057728(n+1)-A073424(n)]`
-/

namespace A152568.P450161319984207647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1) - A073424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152568.P450161319984207647

namespace A152568

/-- `Δ[A057728(n+1)-A073424(n)]` -/
def P450161319984207647.Spec : Prop :=
  ∀ n, P450161319984207647.a n = A152568 n

end A152568

/-! ## A152568.P14474020473486719302

`Δ[and(A036561(n), A057728(n+1))]`
-/

namespace A152568.P14474020473486719302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A036561 n) (A057728 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152568.P14474020473486719302

namespace A152568

/-- `Δ[and(A036561(n), A057728(n+1))]` -/
def P14474020473486719302.Spec : Prop :=
  ∀ n, P14474020473486719302.a n = A152568 n

end A152568

/-! ## A152568.P2938876526494099082

`Δ[and(A057728(n+1), A130321(n))]`
-/

namespace A152568.P2938876526494099082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057728 (n + 1)) (A130321 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152568.P2938876526494099082

namespace A152568

/-- `Δ[and(A057728(n+1), A130321(n))]` -/
def P2938876526494099082.Spec : Prop :=
  ∀ n, P2938876526494099082.a n = A152568 n

end A152568

/-! ## A152568.P8684821433158633261

`Δ[and(A057728(n+1), A175332(n+1))]`
-/

namespace A152568.P8684821433158633261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057728 (n + 1)) (A175332 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152568.P8684821433158633261

namespace A152568

/-- `Δ[and(A057728(n+1), A175332(n+1))]` -/
def P8684821433158633261.Spec : Prop :=
  ∀ n, P8684821433158633261.a n = A152568 n

end A152568

/-! ## A152568.P16734160547002925618

`Δ[A008619(A130321(abs(1-n)))]`
-/

namespace A152568.P16734160547002925618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A130321 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152568.P16734160547002925618

namespace A152568

/-- `Δ[A008619(A130321(abs(1-n)))]` -/
def P16734160547002925618.Spec : Prop :=
  ∀ n, P16734160547002925618.a n = A152568 n

end A152568

/-!
# A152571: Triangle T(n,k) read by rows: T(n,n) = -1, T(n,0) = 4^(n - 1), T(n,k) = -4^(n - k - 1), 1 <= k <= n - 1.

The programs for A152571, the canonical program `A152571.P12656702999726682672` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152571 has offset 0).

The definition of A152571 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152571.P12656702999726682672

`abs(A152568(n))*A152568(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A152571

/-- `abs(A152568(n))*A152568(n)` -/
def P12656702999726682672.Spec : Prop :=
  ∀ n, P12656702999726682672.a n = A152571 n

theorem P12656702999726682672.correct : P12656702999726682672.Spec := by
  intro n
  simp only [A152571]

end A152571

/-! ## A152571.P15745476948371464313

`Δ[A089633(n)]*A152568(n)`
-/

namespace A152571.P15745476948371464313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A152568 n

end

end A152571.P15745476948371464313

namespace A152571

/-- `Δ[A089633(n)]*A152568(n)` -/
def P15745476948371464313.Spec : Prop :=
  ∀ n, P15745476948371464313.a n = A152571 n

end A152571

/-! ## A152571.P8909058545282253325

`A152568(n)*A155038(n+1)`
-/

namespace A152571.P8909058545282253325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152568 n * A155038 (n + 1)

end

end A152571.P8909058545282253325

namespace A152571

/-- `A152568(n)*A155038(n+1)` -/
def P8909058545282253325.Spec : Prop :=
  ∀ n, P8909058545282253325.a n = A152571 n

theorem P8909058545282253325.correct : P8909058545282253325.Spec := by
  intro n
  simp only [A152571, Nat.add_sub_cancel, A152571.P8909058545282253325.a, A152571.P12656702999726682672.a, A152568, A152568.P4268834110349744832.f1, A152568.P4268834110349744832.a, A155038, A155038.P358977146080396517.a, A004736, A004736.P10337537277358081527.a, A034008, A034008.P7593150546580332811.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A152571

/-! ## A152571.P10544615627959940797

`A011782(A025581(n))*A152568(n)`
-/

namespace A152571.P10544615627959940797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A025581 n).toNat * A152568 n

end

end A152571.P10544615627959940797

namespace A152571

/-- `A011782(A025581(n))*A152568(n)` -/
def P10544615627959940797.Spec : Prop :=
  ∀ n, P10544615627959940797.a n = A152571 n

end A152571

/-! ## A152571.P6394709752962666483

`gcd(A000038(n), A152568(n))*A152568(n)`
-/

namespace A152571.P6394709752962666483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000038 n) (A152568 n) : ℤ) * A152568 n

end

end A152571.P6394709752962666483

namespace A152571

/-- `gcd(A000038(n), A152568(n))*A152568(n)` -/
def P6394709752962666483.Spec : Prop :=
  ∀ n, P6394709752962666483.a n = A152571 n

end A152571

/-! ## A152571.P4857210136882094633

`lcm(A020985(n), A152568(n))*A152568(n)`
-/

namespace A152571.P4857210136882094633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A020985 n) (A152568 n) : ℤ) * A152568 n

end

end A152571.P4857210136882094633

namespace A152571

/-- `lcm(A020985(n), A152568(n))*A152568(n)` -/
def P4857210136882094633.Spec : Prop :=
  ∀ n, P4857210136882094633.a n = A152571 n

end A152571

/-! ## A152571.P9726799731914568088

`A057728(n+2)*A152568(n)`
-/

namespace A152571.P9726799731914568088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 2) * A152568 n

end

end A152571.P9726799731914568088

namespace A152571

/-- `A057728(n+2)*A152568(n)` -/
def P9726799731914568088.Spec : Prop :=
  ∀ n, P9726799731914568088.a n = A152571 n

end A152571

/-! ## A152571.P7562745064677778152

`Δ[A043569(n+1)/2]*A152568(n)`
-/

namespace A152571.P7562745064677778152
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043569 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (A152568 n : ℚ)

end

end A152571.P7562745064677778152

namespace A152571

/-- `Δ[A043569(n+1)/2]*A152568(n)` -/
def P7562745064677778152.Spec : Prop :=
  ∀ n, P7562745064677778152.a n = (A152571 n : ℚ)

end A152571

/-! ## A152571.P2349882393228498442

`Δ[A023758(n+2)]*A152568(n)`
-/

namespace A152571.P2349882393228498442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A152568 n

end

end A152571.P2349882393228498442

namespace A152571

/-- `Δ[A023758(n+2)]*A152568(n)` -/
def P2349882393228498442.Spec : Prop :=
  ∀ n, P2349882393228498442.a n = A152571 n

end A152571

/-! ## A152571.P12094971868623251120

`∑{d}[A152568(n), A000010(#)*A152568(n)]`
-/

namespace A152571.P12094971868623251120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152568 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d * A152568 n

end

end A152571.P12094971868623251120

namespace A152571

/-- `∑{d}[A152568(n), A000010(#)*A152568(n)]` -/
def P12094971868623251120.Spec : Prop :=
  ∀ n, P12094971868623251120.a n = A152571 n

end A152571

/-! ## A152571.P17753086436743051241

`A000010(A130321(n))*A152568(n)`
-/

namespace A152571.P17753086436743051241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A130321 n).toNat * A152568 n

end

end A152571.P17753086436743051241

namespace A152571

/-- `A000010(A130321(n))*A152568(n)` -/
def P17753086436743051241.Spec : Prop :=
  ∀ n, P17753086436743051241.a n = A152571 n

end A152571

/-! ## A152571.P5720548510936050882

`A152568(n)*A160467(A054582(n))`
-/

namespace A152571.P5720548510936050882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152568 n * A160467 (A054582 n).toNat

end

end A152571.P5720548510936050882

namespace A152571

/-- `A152568(n)*A160467(A054582(n))` -/
def P5720548510936050882.Spec : Prop :=
  ∀ n, P5720548510936050882.a n = A152571 n

end A152571

/-!
# A152572: Triangle T(n,k) read by rows: T(n,n) = -1, T(n,0) = 5^(n - 1), T(n,k) = -5^(n - k - 1), 1 <= k <= n - 1.

The programs for A152572, there is no canonical definition to state claims against.
-/

/-! ## A152572.P2187019513689603741

`A007284(A152568(n)²)/A152568(n)`
-/

namespace A152572.P2187019513689603741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007284 (A152568 n ^ 2).toNat : ℚ) / (A152568 n : ℚ)

end

end A152572.P2187019513689603741

/-!
# A152576: Number of equivalence classes of patterns of length n.

The programs for A152576, there is no canonical definition to state claims against.
-/

/-! ## A152576.P17553939526407975719

`A159710(n)+A001519(n)`
-/

namespace A152576.P17553939526407975719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159710 n + A001519 n

end

end A152576.P17553939526407975719

/-! ## A152576.P18314550758876071271

`A384686(n)+A071742(n)`
-/

namespace A152576.P18314550758876071271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384686 n + A071742 n

end

end A152576.P18314550758876071271

/-! ## A152576.P1671903374632952641

`A391030(n)+A384686(n)`
-/

namespace A152576.P1671903374632952641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391030 n + A384686 n

end

end A152576.P1671903374632952641

/-!
# A152577: a(n) = 10^(2*n - 1) + 1.

The programs for A152577, the canonical program `A152577.P4733613335079571859` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152577 has offset 1).

The definition of A152577 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152577.P607856356471209509

`100*a(n-1)-99` with `a(0)=11`
-/

namespace A152577.P607856356471209509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11] fun n a =>
  100 * a (n - 1) - 99

end

end A152577.P607856356471209509

namespace A152577

/-- `100*a(n-1)-99` -/
def P607856356471209509.Spec : Prop :=
  ∀ n, P607856356471209509.a n = A152577 (n + 1)

end A152577

/-! ## A152577.P2606081381547733726

`10^(2*(n+1)-1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152577.P2606081381547733726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ ((2 * (n + 1) : ℤ) - 1 : ℤ) + 1

end

end A152577.P2606081381547733726

namespace A152577

/-- `10^(2*(n+1)-1)+1` -/
def P2606081381547733726.Spec : Prop :=
  ∀ n, P2606081381547733726.a n = (A152577 (n + 1) : ℚ)

end A152577

/-! ## A152577.P4733613335079571859

`11*A095372(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A152577

/-- `11*A095372(n)` -/
def P4733613335079571859.Spec : Prop :=
  ∀ n, P4733613335079571859.a n = A152577 (n + 1)

theorem P4733613335079571859.correct : P4733613335079571859.Spec := by
  intro n
  simp only [A152577, Nat.add_sub_cancel]

end A152577

/-! ## A152577.P12106827816435283048

`or(1, 10^Δ[n²])`
-/

namespace A152577.P12106827816435283048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway ((10 : ℚ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℤ)))

end

end A152577.P12106827816435283048

namespace A152577

/-- `or(1, 10^Δ[n²])` -/
def P12106827816435283048.Spec : Prop :=
  ∀ n, P12106827816435283048.a n = A152577 (n + 1)

end A152577

/-! ## A152577.P18299974371094362841

`xor(1, 10^Δ[n²])`
-/

namespace A152577.P18299974371094362841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (SequenceMachineLib.roundAway ((10 : ℚ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℤ)))

end

end A152577.P18299974371094362841

namespace A152577

/-- `xor(1, 10^Δ[n²])` -/
def P18299974371094362841.Spec : Prop :=
  ∀ n, P18299974371094362841.a n = A152577 (n + 1)

end A152577

/-! ## A152577.P14213120955859169965

`record[1-(-10)^(n+1)]`
-/

namespace A152577.P14213120955859169965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (-10) ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152577.P14213120955859169965

namespace A152577

/-- `record[1-(-10)^(n+1)]` -/
def P14213120955859169965.Spec : Prop :=
  ∀ n, P14213120955859169965.a n = A152577 (n + 1)

end A152577

/-! ## A152577.P12214107652439128397

`abs(xor(10*(10^n)², -1))`
-/

namespace A152577.P12214107652439128397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (10 * (10 ^ n) ^ 2 : ℤ) (-1)|

end

end A152577.P12214107652439128397

namespace A152577

/-- `abs(xor(10*(10^n)², -1))` -/
def P12214107652439128397.Spec : Prop :=
  ∀ n, P12214107652439128397.a n = A152577 (n + 1)

end A152577

/-! ## A152577.P12897784713522821623

`-xor(-1, 10^(2*n+1))`
-/

namespace A152577.P12897784713522821623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) (10 ^ (2 * n + 1) : ℤ)

end

end A152577.P12897784713522821623

namespace A152577

/-- `-xor(-1, 10^(2*n+1))` -/
def P12897784713522821623.Spec : Prop :=
  ∀ n, P12897784713522821623.a n = A152577 (n + 1)

end A152577

/-! ## A152577.P5724128920547447955

`-or(1, -or(1, 10*(10^n)²))`
-/

namespace A152577.P5724128920547447955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (-(Nat.lor 1 (10 * (10 ^ n) ^ 2) : ℤ))

end

end A152577.P5724128920547447955

namespace A152577

/-- `-or(1, -or(1, 10*(10^n)²))` -/
def P5724128920547447955.Spec : Prop :=
  ∀ n, P5724128920547447955.a n = A152577 (n + 1)

end A152577

/-! ## A152577.P9321268270774868509

`floor(atan(n+2)+10^(2*n+1))`
-/

namespace A152577.P9321268270774868509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n + 2 : ℝ) + (10 ^ (2 * n + 1) : ℝ)⌋

end

end A152577.P9321268270774868509

namespace A152577

/-- `floor(atan(n+2)+10^(2*n+1))` -/
def P9321268270774868509.Spec : Prop :=
  ∀ n, P9321268270774868509.a n = A152577 (n + 1)

end A152577

/-!
# A152578: a(n) = 5^(2^(n-1)) + 2.

The programs for A152578, the canonical program `A152578.P13017314330441483721` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152578 has offset 1).

The definition of A152578 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^2^n+2` (program `A152578.P13017314330441483721`, by `A152578.P13017314330441483721.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152578.P13017314330441483721

`5^2^n+2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152578

/-- `5^2^n+2` -/
def P13017314330441483721.Spec : Prop :=
  ∀ n, (P13017314330441483721.a n : ℤ) = A152578 (n + 1)

theorem P13017314330441483721.correct : P13017314330441483721.Spec := by
  intro n
  simp only [A152578, Nat.add_sub_cancel]

end A152578

/-! ## A152578.P5170870125862646811

`or(2, 5^2^n)`
-/

namespace A152578.P5170870125862646811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (5 ^ 2 ^ n)

end

end A152578.P5170870125862646811

namespace A152578

/-- `or(2, 5^2^n)` -/
def P5170870125862646811.Spec : Prop :=
  ∀ n, (P5170870125862646811.a n : ℤ) = A152578 (n + 1)

end A152578

/-! ## A152578.P16408750292862238119

`xor(2, 5^2^n)`
-/

namespace A152578.P16408750292862238119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (5 ^ 2 ^ n)

end

end A152578.P16408750292862238119

namespace A152578

/-- `xor(2, 5^2^n)` -/
def P16408750292862238119.Spec : Prop :=
  ∀ n, (P16408750292862238119.a n : ℤ) = A152578 (n + 1)

end A152578

/-! ## A152578.P5084695572162381192

`A242328(2^n)`
-/

namespace A152578.P5084695572162381192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242328 (2 ^ n)

end

end A152578.P5084695572162381192

namespace A152578

/-- `A242328(2^n)` -/
def P5084695572162381192.Spec : Prop :=
  ∀ n, P5084695572162381192.a n = A152578 (n + 1)

end A152578

/-!
# A152579: a(n) = (10*n+3)*(10*n+17).

The programs for A152579, the canonical program `A152579.P3400092835437329374` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152579 has offset 0).

The definition of A152579 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+3)*(10*n+17)` (program `A152579.P3400092835437329374`, by `A152579.P3400092835437329374.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152579.P12909600063507788385

`100*(n+1)²-49`
-/

namespace A152579.P12909600063507788385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (100 * (n + 1) ^ 2 : ℤ) - 49

end

end A152579.P12909600063507788385

namespace A152579

/-- `100*(n+1)²-49` -/
def P12909600063507788385.Spec : Prop :=
  ∀ n, P12909600063507788385.a n = A152579 n

theorem P12909600063507788385.correct : P12909600063507788385.Spec := by
  intro n
  simp only [A152579, Nat.add_sub_cancel, A152579.P12909600063507788385.a, A152579.P3400092835437329374.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A152579

/-! ## A152579.P3400092835437329374

`(10*n+3)*(10*n+17)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152579

/-- `(10*n+3)*(10*n+17)` -/
def P3400092835437329374.Spec : Prop :=
  ∀ n, (P3400092835437329374.a n : ℤ) = A152579 n

theorem P3400092835437329374.correct : P3400092835437329374.Spec := by
  intro n
  simp only [A152579]

end A152579

/-! ## A152579.P12620138530800884296

`A098848(A017305(n))`
-/

namespace A152579.P12620138530800884296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098848 (A017305 n).toNat

end

end A152579.P12620138530800884296

namespace A152579

/-- `A098848(A017305(n))` -/
def P12620138530800884296.Spec : Prop :=
  ∀ n, P12620138530800884296.a n = A152579 n

end A152579

/-! ## A152579.P9977021597476956658

`A045805(A082109(n))`
-/

namespace A152579.P9977021597476956658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045805 (A082109 n).toNat

end

end A152579.P9977021597476956658

namespace A152579

/-- `A045805(A082109(n))` -/
def P9977021597476956658.Spec : Prop :=
  ∀ n, P9977021597476956658.a n = A152579 n

end A152579

/-! ## A152579.P12949790249750086486

`A158060(A060626(n))`
-/

namespace A152579.P12949790249750086486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158060 (A060626 n).toNat

end

end A152579.P12949790249750086486

namespace A152579

/-- `A158060(A060626(n))` -/
def P12949790249750086486.Spec : Prop :=
  ∀ n, P12949790249750086486.a n = A152579 n

end A152579

/-! ## A152579.P13660948414659085618

`∩[A045805(n+1), A098848(n)]`
-/

namespace A152579.P13660948414659085618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098848 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152579.P13660948414659085618

namespace A152579

/-- `∩[A045805(n+1), A098848(n)]` -/
def P13660948414659085618.Spec : Prop :=
  ∀ n, (P13660948414659085618.a n : ℤ) = A152579 n

end A152579

/-!
# A152580: a(n) = 7^(2^n) + 2.

The programs for A152580, the canonical program `A152580.P16170510460977009622` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152580 has offset 0).

The definition of A152580 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^2^n+2` (program `A152580.P16170510460977009622`, by `A152580.P16170510460977009622.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152580.P16170510460977009622

`7^2^n+2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152580

/-- `7^2^n+2` -/
def P16170510460977009622.Spec : Prop :=
  ∀ n, (P16170510460977009622.a n : ℤ) = A152580 n

theorem P16170510460977009622.correct : P16170510460977009622.Spec := by
  intro n
  simp only [A152580]

end A152580

/-! ## A152580.P8950182305838843115

`or(1, A078304(n))`
-/

namespace A152580.P8950182305838843115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A078304 n)

end

end A152580.P8950182305838843115

namespace A152580

/-- `or(1, A078304(n))` -/
def P8950182305838843115.Spec : Prop :=
  ∀ n, P8950182305838843115.a n = A152580 n

end A152580

/-! ## A152580.P4595806701857585761

`xor(A001222(A273947(n+1)), A078304(n))`
-/

namespace A152580.P4595806701857585761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A273947 (n + 1)).toNat) (A078304 n)

end

end A152580.P4595806701857585761

namespace A152580

/-- `xor(A001222(A273947(n+1)), A078304(n))` -/
def P4595806701857585761.Spec : Prop :=
  ∀ n, P4595806701857585761.a n = A152580 n

end A152580

/-!
# A152581: Generalized Fermat numbers: a(n) = 8^(2^n) + 1, n >= 0.

The programs for A152581, the canonical program `A152581.P4723210677243315383` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152581 has offset 0).

The definition of A152581 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^2^n+1` (program `A152581.P4723210677243315383`, by `A152581.P4723210677243315383.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152581.P4723210677243315383

`8^2^n+1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152581

/-- `8^2^n+1` -/
def P4723210677243315383.Spec : Prop :=
  ∀ n, (P4723210677243315383.a n : ℤ) = A152581 n

theorem P4723210677243315383.correct : P4723210677243315383.Spec := by
  intro n
  simp only [A152581]

end A152581

/-! ## A152581.P15546746318001879624

`or(1, 8^2^n)`
-/

namespace A152581.P15546746318001879624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (8 ^ 2 ^ n)

end

end A152581.P15546746318001879624

namespace A152581

/-- `or(1, 8^2^n)` -/
def P15546746318001879624.Spec : Prop :=
  ∀ n, (P15546746318001879624.a n : ℤ) = A152581 n

end A152581

/-! ## A152581.P2081320582332627248

`A178427(n+1)`
-/

namespace A152581.P2081320582332627248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178427 (n + 1)

end

end A152581.P2081320582332627248

namespace A152581

/-- `A178427(n+1)` -/
def P2081320582332627248.Spec : Prop :=
  ∀ n, P2081320582332627248.a n = A152581 n

end A152581

/-!
# A152582: Numbers of the form 9^(2^n) + 2.

The programs for A152582, there is no canonical definition to state claims against.
-/

/-! ## A152582.P13135697517533808996

`9^2^n+2`
-/

namespace A152582.P13135697517533808996
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ 2 ^ n + 2

end

end A152582.P13135697517533808996

/-! ## A152582.P15627018115364481930

`or(2, 9^2^n)`
-/

namespace A152582.P15627018115364481930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (9 ^ 2 ^ n)

end

end A152582.P15627018115364481930

/-! ## A152582.P9712994442158345099

`xor(2, 9^2^n)`
-/

namespace A152582.P9712994442158345099
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (9 ^ 2 ^ n)

end

end A152582.P9712994442158345099

/-!
# A152583: 

The programs for A152583, there is no canonical definition to state claims against.
-/

/-! ## A152583.P11716854317267232615

`11^2^n+2`
-/

namespace A152583.P11716854317267232615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 ^ 2 ^ n + 2

end

end A152583.P11716854317267232615

/-! ## A152583.P17106955125317503023

`xor(1, A034524(A000079(n)))`
-/

namespace A152583.P17106955125317503023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A034524 (A000079 n).toNat)

end

end A152583.P17106955125317503023

/-!
# A152585: 

The programs for A152585, there is no canonical definition to state claims against.
-/

/-! ## A152585.P10615881851298735075

`12^2^n+1`
-/

namespace A152585.P10615881851298735075
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 ^ 2 ^ n + 1

end

end A152585.P10615881851298735075

/-! ## A152585.P12109282967282788694

`xor(1, (∑[char[9*n]]-a(n-1))²)` with `a(0)=13`
-/

namespace A152585.P12109282967282788694
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.rec [13] fun n a =>
  Int.xor 1 ((((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)) ^ 2)

end

end A152585.P12109282967282788694

/-! ## A152585.P8462804331025840633

`A178426(n+1)`
-/

namespace A152585.P8462804331025840633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178426 (n + 1)

end

end A152585.P8462804331025840633

/-!
# A152586: 

The programs for A152586, there is no canonical definition to state claims against.
-/

/-! ## A152586.P6297208797772806687

`13^2^n+2`
-/

namespace A152586.P6297208797772806687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 ^ 2 ^ n + 2

end

end A152586.P6297208797772806687

/-! ## A152586.P11321606143637115385

`or(2, 13^2^n)`
-/

namespace A152586.P11321606143637115385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (13 ^ 2 ^ n)

end

end A152586.P11321606143637115385

/-! ## A152586.P565786801812557137

`xor(2, 13^2^n)`
-/

namespace A152586.P565786801812557137
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (13 ^ 2 ^ n)

end

end A152586.P565786801812557137

/-!
# A152587: 

The programs for A152587, there is no canonical definition to state claims against.
-/

/-! ## A152587.P10215848433156321300

`14^2^n+1`
-/

namespace A152587.P10215848433156321300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 ^ 2 ^ n + 1

end

end A152587.P10215848433156321300

/-! ## A152587.P12853893337886432425

`or(1, 14^2^n)`
-/

namespace A152587.P12853893337886432425
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (14 ^ 2 ^ n)

end

end A152587.P12853893337886432425

/-! ## A152587.P13003101062318565671

`xor(1, 14^2^n)`
-/

namespace A152587.P13003101062318565671
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (14 ^ 2 ^ n)

end

end A152587.P13003101062318565671

/-!
# A152588: 

The programs for A152588, there is no canonical definition to state claims against.
-/

/-! ## A152588.P10013877518276917978

`15^2^n+2`
-/

namespace A152588.P10013877518276917978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15 ^ 2 ^ n + 2

end

end A152588.P10013877518276917978

/-! ## A152588.P16847434690743551335

`∑[abs(Δ[a(n-1)²])]` with `a(0)=-2, a(1)=15`
-/

namespace A152588.P16847434690743551335
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-2, 15] fun n f2 =>
  f2 (n - 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152588.P16847434690743551335

/-!
# A152591: 

The programs for A152591, there is no canonical definition to state claims against.
-/

/-! ## A152591.P15665781308946354486

`17^2^n+2`
-/

namespace A152591.P15665781308946354486
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 ^ 2 ^ n + 2

end

end A152591.P15665781308946354486

/-! ## A152591.P16508689348539091964

`or(2, or(3, A224384(2^n)))`
-/

namespace A152591.P16508689348539091964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (Int.lor 3 (A224384 (2 ^ n)))

end

end A152591.P16508689348539091964

/-! ## A152591.P8457673790448592698

`or(3, A001026(A000079(n)))`
-/

namespace A152591.P8457673790448592698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A001026 (A000079 n).toNat)

end

end A152591.P8457673790448592698

/-!
# A152594: a(n) = -5*a(n-1)-2*a(n-2), n>1 ; a(0)=1, a(1)=-1 .

The programs for A152594, the canonical program `A152594.P676374788137930074` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152594 has offset 0).

The definition of A152594 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-5*a(n-1)-2*a(n-2)` (program `A152594.P676374788137930074`, by `A152594.P676374788137930074.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152594.P676374788137930074

`-5*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=-1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152594

/-- `-5*a(n-1)-2*a(n-2)` -/
def P676374788137930074.Spec : Prop :=
  ∀ n, P676374788137930074.a n = A152594 n

theorem P676374788137930074.correct : P676374788137930074.Spec := by
  intro n
  simp only [A152594]

end A152594

/-! ## A152594.P8183012034158365732

`ogf((1+4x)/(1+5x+2x^2))`
-/

namespace A152594.P8183012034158365732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4] [1, 5, 2] n

end

end A152594.P8183012034158365732

namespace A152594

/-- `ogf((1+4x)/(1+5x+2x^2))` -/
def P8183012034158365732.Spec : Prop :=
  ∀ n, P8183012034158365732.a n = A152594 n

end A152594

/-! ## A152594.P9920617752978505353

`A033999(n)*A249581(A111284(n+1))`
-/

namespace A152594.P9920617752978505353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A249581 (A111284 (n + 1)).toNat

end

end A152594.P9920617752978505353

namespace A152594

/-- `A033999(n)*A249581(A111284(n+1))` -/
def P9920617752978505353.Spec : Prop :=
  ∀ n, P9920617752978505353.a n = A152594 n

end A152594

/-! ## A152594.P6349440860134332611

`A056594(2*n)*A249581(A111284(n+1))`
-/

namespace A152594.P6349440860134332611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A249581 (A111284 (n + 1)).toNat

end

end A152594.P6349440860134332611

namespace A152594

/-- `A056594(2*n)*A249581(A111284(n+1))` -/
def P6349440860134332611.Spec : Prop :=
  ∀ n, P6349440860134332611.a n = A152594 n

end A152594

/-! ## A152594.P7190819629456533003

`A010892(A008585(n))*A249581(A111284(n+1))`
-/

namespace A152594.P7190819629456533003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A008585 n).toNat * A249581 (A111284 (n + 1)).toNat

end

end A152594.P7190819629456533003

namespace A152594

/-- `A010892(A008585(n))*A249581(A111284(n+1))` -/
def P7190819629456533003.Spec : Prop :=
  ∀ n, P7190819629456533003.a n = A152594 n

end A152594

/-! ## A152594.P2403460581771308006

`A009001(A001105(n))*A249581(A111284(n+1))`
-/

namespace A152594.P2403460581771308006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A001105 n).toNat * A249581 (A111284 (n + 1)).toNat

end

end A152594.P2403460581771308006

namespace A152594

/-- `A009001(A001105(n))*A249581(A111284(n+1))` -/
def P2403460581771308006.Spec : Prop :=
  ∀ n, P2403460581771308006.a n = A152594 n

end A152594

/-!
# A152595: a(n) = the number of integers i in [1,n] that can be expressed as the sum of two squares of positive integers.

The programs for A152595, there is no canonical definition to state claims against.
-/

/-! ## A152595.P12965933812282906373

`∑[and(A025451(n), A320472(3*(n+1)))]`
-/

namespace A152595.P12965933812282906373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025451 n) (A320472 (3 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152595.P12965933812282906373

/-! ## A152595.P8711742327931024647

`∑[A023969(A108652(A265903(n+1)))]`
-/

namespace A152595.P8711742327931024647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023969 (A108652 (A265903 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152595.P8711742327931024647

/-! ## A152595.P9025012010603700780

`∑[A320472(3*(n+1))%A000005(A025451(n)+1)]`
-/

namespace A152595.P9025012010603700780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320472 (3 * (n + 1))) (A000005 (A025451 n + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152595.P9025012010603700780

/-!
# A152596: a(n) = 7*a(n-1) - 6*a(n-2), n>1; a(0)=1, a(1)=3.

The programs for A152596, the canonical program `A152596.P1002002758530176290` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152596 has offset 0).

The definition of A152596 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*a(n-1)-6*a(n-2)` (program `A152596.P1002002758530176290`, by `A152596.P1002002758530176290.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152596.P3225072073350448834

`1/5*(3+2*6^n)`
-/

namespace A152596.P3225072073350448834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 5 * (3 + 2 * 6 ^ n : ℚ)

end

end A152596.P3225072073350448834

namespace A152596

/-- `1/5*(3+2*6^n)` -/
def P3225072073350448834.Spec : Prop :=
  ∀ n, P3225072073350448834.a n = (A152596 n : ℚ)

theorem P3225072073350448834.correct : P3225072073350448834.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A152596, Nat.add_sub_cancel, A152596.P3225072073350448834.a, A152596.P1002002758530176290.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A152596, Nat.add_sub_cancel, A152596.P3225072073350448834.a, A152596.P1002002758530176290.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A152596

/-! ## A152596.P1002002758530176290

`7*a(n-1)-6*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152596

/-- `7*a(n-1)-6*a(n-2)` -/
def P1002002758530176290.Spec : Prop :=
  ∀ n, P1002002758530176290.a n = A152596 n

theorem P1002002758530176290.correct : P1002002758530176290.Spec := by
  intro n
  simp only [A152596]

end A152596

/-! ## A152596.P11291375093837649190

`ogf((1-4x)/(1-7x+6x^2))`
-/

namespace A152596.P11291375093837649190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4] [1, -7, 6] n

end

end A152596.P11291375093837649190

namespace A152596

/-- `ogf((1-4x)/(1-7x+6x^2))` -/
def P11291375093837649190.Spec : Prop :=
  ∀ n, P11291375093837649190.a n = A152596 n

end A152596

/-! ## A152596.P13399696246802635993

`6*a(n-1)-3` with `a(0)=1`
-/

namespace A152596.P13399696246802635993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) - 3

end

end A152596.P13399696246802635993

namespace A152596

/-- `6*a(n-1)-3` -/
def P13399696246802635993.Spec : Prop :=
  ∀ n, P13399696246802635993.a n = A152596 n

end A152596

/-! ## A152596.P11342322454882031712

`lcm(18, a(n-1))-3` with `a(0)=1, a(1)=3`
-/

namespace A152596.P11342322454882031712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (Int.lcm 18 (a (n - 1)) : ℤ) - 3

end

end A152596.P11342322454882031712

namespace A152596

/-- `lcm(18, a(n-1))-3` -/
def P11342322454882031712.Spec : Prop :=
  ∀ n, P11342322454882031712.a n = A152596 n

end A152596

/-! ## A152596.P746595943839480617

`∑[A167747(n)]`
-/

namespace A152596.P746595943839480617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152596.P746595943839480617

namespace A152596

/-- `∑[A167747(n)]` -/
def P746595943839480617.Spec : Prop :=
  ∀ n, P746595943839480617.a n = A152596 n

end A152596

/-! ## A152596.P12812110171815914014

`2*A003464(n)+1`
-/

namespace A152596.P12812110171815914014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003464 n + 1

end

end A152596.P12812110171815914014

namespace A152596

/-- `2*A003464(n)+1` -/
def P12812110171815914014.Spec : Prop :=
  ∀ n, P12812110171815914014.a n = A152596 n

end A152596

/-! ## A152596.P11894289943653581234

`2*A047851(n)-1`
-/

namespace A152596.P11894289943653581234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047851 n - 1

end

end A152596.P11894289943653581234

namespace A152596

/-- `2*A047851(n)-1` -/
def P11894289943653581234.Spec : Prop :=
  ∀ n, P11894289943653581234.a n = A152596 n

end A152596

/-! ## A152596.P7557381148732124006

`A329115(2*(n+1))+1`
-/

namespace A152596.P7557381148732124006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329115 (2 * (n + 1)) + 1

end

end A152596.P7557381148732124006

namespace A152596

/-- `A329115(2*(n+1))+1` -/
def P7557381148732124006.Spec : Prop :=
  ∀ n, P7557381148732124006.a n = A152596 n

end A152596

/-! ## A152596.P12790563046888801058

`2*A329114(2*n+1)+1`
-/

namespace A152596.P12790563046888801058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A329114 (2 * n + 1) + 1

end

end A152596.P12790563046888801058

namespace A152596

/-- `2*A329114(2*n+1)+1` -/
def P12790563046888801058.Spec : Prop :=
  ∀ n, P12790563046888801058.a n = A152596 n

end A152596

/-! ## A152596.P9433131436534083969

`a(n-1)+A164559(n)+1` with `a(0)=1`
-/

namespace A152596.P9433131436534083969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A164559 n + 1)

end

end A152596.P9433131436534083969

namespace A152596

/-- `a(n-1)+A164559(n)+1` -/
def P9433131436534083969.Spec : Prop :=
  ∀ n, P9433131436534083969.a n = A152596 n

end A152596

/-! ## A152596.P11626877638593913149

`ceil(lcm(4, 2*6^n)/5)`
-/

namespace A152596.P11626877638593913149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm 4 (2 * 6 ^ n) : ℚ) / 5⌉

end

end A152596.P11626877638593913149

namespace A152596

/-- `ceil(lcm(4, 2*6^n)/5)` -/
def P11626877638593913149.Spec : Prop :=
  ∀ n, P11626877638593913149.a n = A152596 n

end A152596

/-! ## A152596.P7345873893374044167

`a(n-1)+6^n/3` with `a(0)=1`
-/

namespace A152596.P7345873893374044167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (6 ^ n : ℚ) / 3

end

end A152596.P7345873893374044167

namespace A152596

/-- `a(n-1)+6^n/3` -/
def P7345873893374044167.Spec : Prop :=
  ∀ n, P7345873893374044167.a n = (A152596 n : ℚ)

end A152596

/-! ## A152596.P5223477799357593001

`ceil(A083066(n)/2)`
-/

namespace A152596.P5223477799357593001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A083066 n : ℚ) / 2⌉

end

end A152596.P5223477799357593001

namespace A152596

/-- `ceil(A083066(n)/2)` -/
def P5223477799357593001.Spec : Prop :=
  ∀ n, P5223477799357593001.a n = A152596 n

end A152596

/-! ## A152596.P10270501362148752408

`ceil(A005618(n)/6)`
-/

namespace A152596.P10270501362148752408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005618 n : ℚ) / 6⌉

end

end A152596.P10270501362148752408

namespace A152596

/-- `ceil(A005618(n)/6)` -/
def P10270501362148752408.Spec : Prop :=
  ∀ n, P10270501362148752408.a n = A152596 n

end A152596

/-! ## A152596.P9199731193207335871

`A105281(n)/3+1`
-/

namespace A152596.P9199731193207335871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105281 n : ℚ) / 3 + 1

end

end A152596.P9199731193207335871

namespace A152596

/-- `A105281(n)/3+1` -/
def P9199731193207335871.Spec : Prop :=
  ∀ n, P9199731193207335871.a n = (A152596 n : ℚ)

end A152596

/-! ## A152596.P1862997969074390149

`(A199317(n)+2)/5`
-/

namespace A152596.P1862997969074390149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199317 n + 2 : ℚ) / 5

end

end A152596.P1862997969074390149

namespace A152596

/-- `(A199317(n)+2)/5` -/
def P1862997969074390149.Spec : Prop :=
  ∀ n, P1862997969074390149.a n = (A152596 n : ℚ)

theorem P1862997969074390149.correct : P1862997969074390149.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A152596, Nat.add_sub_cancel, A152596.P1862997969074390149.a, A152596.P1002002758530176290.a, A199317, A199317.P340006666861304313.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A152596, Nat.add_sub_cancel, A152596.P1862997969074390149.a, A152596.P1002002758530176290.a, A199317, A199317.P340006666861304313.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A152596

/-! ## A152596.P1372108573842162706

`ceil(A164559(n+1)/5)`
-/

namespace A152596.P1372108573842162706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A164559 (n + 1) : ℚ) / 5⌉

end

end A152596.P1372108573842162706

namespace A152596

/-- `ceil(A164559(n+1)/5)` -/
def P1372108573842162706.Spec : Prop :=
  ∀ n, P1372108573842162706.a n = A152596 n

end A152596

/-! ## A152596.P7806962505981752606

`ceil(A005610(n+1)/6)`
-/

namespace A152596.P7806962505981752606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005610 (n + 1) : ℚ) / 6⌉

end

end A152596.P7806962505981752606

namespace A152596

/-- `ceil(A005610(n+1)/6)` -/
def P7806962505981752606.Spec : Prop :=
  ∀ n, P7806962505981752606.a n = A152596 n

end A152596

/-! ## A152596.P14717098390596108503

`(∑[A067411(n)]+1)/2`
-/

namespace A152596.P14717098390596108503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067411 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2

end

end A152596.P14717098390596108503

namespace A152596

/-- `(∑[A067411(n)]+1)/2` -/
def P14717098390596108503.Spec : Prop :=
  ∀ n, P14717098390596108503.a n = (A152596 n : ℚ)

end A152596

/-!
# A152597: Where records occur in A001917.

The programs for A152597, there is no canonical definition to state claims against.
-/

/-! ## A152597.P8533017151776797161

`A000720(A226216(n+1))`
-/

namespace A152597.P8533017151776797161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A226216 (n + 1)).toNat

end

end A152597.P8533017151776797161

/-! ## A152597.P11340128659894259524

`A061395(p?[A226216(n+1)])`
-/

namespace A152597.P11340128659894259524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A152597.P11340128659894259524

/-! ## A152597.P4175719419815289105

`A066328(p?[A226216(n+1)])`
-/

namespace A152597.P4175719419815289105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A152597.P4175719419815289105

/-! ## A152597.P16257261504949720869

`A061395(or(1, A226216(n+1)))`
-/

namespace A152597.P16257261504949720869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A226216 (n + 1))).toNat

end

end A152597.P16257261504949720869

/-! ## A152597.P8325532491647712035

`A003963(A226216(n+1)*A375932(n+1))`
-/

namespace A152597.P8325532491647712035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A226216 (n + 1) * A375932 (n + 1)).toNat

end

end A152597.P8325532491647712035

/-!
# A152598: Records in A001917.

The programs for A152598, there is no canonical definition to state claims against.
-/

/-! ## A152598.P6713916392139657233

`A001917(A152597(n+1))`
-/

namespace A152598.P6713916392139657233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001917 (A152597 (n + 1)).toNat

end

end A152598.P6713916392139657233

/-! ## A152598.P6109414819874976421

`record[A001917(n+2)]`
-/

namespace A152598.P6109414819874976421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001917 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152598.P6109414819874976421

/-! ## A152598.P18128076731958875989

`record[(A065091(n+1)-1)/A014664(n+2)]`
-/

namespace A152598.P18128076731958875989
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065091 (n + 1) - 1 : ℚ) / (A014664 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152598.P18128076731958875989

/-! ## A152598.P5641976386659120817

`A001917(A000720(A226216(n+1)))`
-/

namespace A152598.P5641976386659120817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001917 (A000720 (A226216 (n + 1)).toNat).toNat

end

end A152598.P5641976386659120817

/-! ## A152598.P14489397546008312857

`A000010(A226216(n+1))/A014664(A152597(n+1))`
-/

namespace A152598.P14489397546008312857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A226216 (n + 1)).toNat : ℚ) / (A014664 (A152597 (n + 1)).toNat : ℚ)

end

end A152598.P14489397546008312857

/-!
# A152599: a(n) = 10*a(n-1) - 12*a(n-2) for n > 1; a(0) = 1, a(1) = 4 .

The programs for A152599, the canonical program `A152599.P10240506746300059634` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152599 has offset 0).

The definition of A152599 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)-12*a(n-2)` (program `A152599.P10240506746300059634`, by `A152599.P10240506746300059634.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152599.P10240506746300059634

`10*a(n-1)-12*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152599

/-- `10*a(n-1)-12*a(n-2)` -/
def P10240506746300059634.Spec : Prop :=
  ∀ n, P10240506746300059634.a n = A152599 n

theorem P10240506746300059634.correct : P10240506746300059634.Spec := by
  intro n
  simp only [A152599]

end A152599

/-! ## A152599.P10787468156306265352

`2^n*A052961(n)`
-/

namespace A152599.P10787468156306265352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A052961 n

end

end A152599.P10787468156306265352

namespace A152599

/-- `2^n*A052961(n)` -/
def P10787468156306265352.Spec : Prop :=
  ∀ n, P10787468156306265352.a n = A152599 n

end A152599

/-! ## A152599.P8834595083535574668

`ogf((1-6x)/(1-10x+12x^2))`
-/

namespace A152599.P8834595083535574668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -6] [1, -10, 12] n

end

end A152599.P8834595083535574668

namespace A152599

/-- `ogf((1-6x)/(1-10x+12x^2))` -/
def P8834595083535574668.Spec : Prop :=
  ∀ n, P8834595083535574668.a n = A152599 n

end A152599

/-! ## A152599.P13732883030349391996

`∑[A011782(n)*A081704(n)]`
-/

namespace A152599.P13732883030349391996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A081704 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152599.P13732883030349391996

namespace A152599

/-- `∑[A011782(n)*A081704(n)]` -/
def P13732883030349391996.Spec : Prop :=
  ∀ n, P13732883030349391996.a n = A152599 n

end A152599

/-! ## A152599.P4726971981929807175

`abs(Δ[A000079(n)]*A052961(n))`
-/

namespace A152599.P4726971981929807175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * A052961 n|

end

end A152599.P4726971981929807175

namespace A152599

/-- `abs(Δ[A000079(n)]*A052961(n))` -/
def P4726971981929807175.Spec : Prop :=
  ∀ n, P4726971981929807175.a n = A152599 n

end A152599

/-! ## A152599.P11934486353121467540

`∑[∑[A095939(n)]*A011782(n)]`
-/

namespace A152599.P11934486353121467540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095939 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152599.P11934486353121467540

namespace A152599

/-- `∑[∑[A095939(n)]*A011782(n)]` -/
def P11934486353121467540.Spec : Prop :=
  ∀ n, P11934486353121467540.a n = A152599 n

end A152599

/-! ## A152599.P13109720915332275923

`A052961(n)*A054582(A000217(n))`
-/

namespace A152599.P13109720915332275923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052961 n * A054582 (A000217 n).toNat

end

end A152599.P13109720915332275923

namespace A152599

/-- `A052961(n)*A054582(A000217(n))` -/
def P13109720915332275923.Spec : Prop :=
  ∀ n, P13109720915332275923.a n = A152599 n

end A152599

/-! ## A152599.P11553849102534184730

`A052961(n)*A084326(n+1)/A001906(n+1)`
-/

namespace A152599.P11553849102534184730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052961 n * A084326 (n + 1) : ℚ) / (A001906 (n + 1) : ℚ)

end

end A152599.P11553849102534184730

namespace A152599

/-- `A052961(n)*A084326(n+1)/A001906(n+1)` -/
def P11553849102534184730.Spec : Prop :=
  ∀ n, P11553849102534184730.a n = (A152599 n : ℚ)

end A152599

