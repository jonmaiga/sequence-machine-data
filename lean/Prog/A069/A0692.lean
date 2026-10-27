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
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A069201: a(n) = Sum_{k=1..n} mu(k)^2 * 2^omega(k) where omega(k) is the number of distinct primes in the factorization of k.

The programs for A069201, the canonical program `A069201.P12441175603725894320` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069201 has offset 1).

The definition of A069201 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069201.P12441175603725894320

`∑[∏{e}[n+1, C(2, #²)]]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069201

/-- `∑[∏{e}[n+1, C(2, #²)]]` -/
def P12441175603725894320.Spec : Prop :=
  ∀ n, (P12441175603725894320.a n : ℤ) = A069201 (n + 1)

theorem P12441175603725894320.correct : P12441175603725894320.Spec := by
  intro n
  simp only [A069201, Nat.add_sub_cancel]

end A069201

/-! ## A069201.P2130341499745385844

`∑[∏{e}[n+1, and(2, 2^#)]]`
-/

namespace A069201.P2130341499745385844
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.land 2 (2 ^ Nat.factorization (f2 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069201.P2130341499745385844

namespace A069201

/-- `∑[∏{e}[n+1, and(2, 2^#)]]` -/
def P2130341499745385844.Spec : Prop :=
  ∀ n, (P2130341499745385844.a n : ℤ) = A069201 (n + 1)

end A069201

/-! ## A069201.P9075814779223655570

`∑[∏{e}[n+1, floor(2/#²)]]`
-/

namespace A069201.P9075814779223655570
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ⌊2 / (Nat.factorization (f2 n) p ^ 2 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069201.P9075814779223655570

namespace A069201

/-- `∑[∏{e}[n+1, floor(2/#²)]]` -/
def P9075814779223655570.Spec : Prop :=
  ∀ n, P9075814779223655570.a n = A069201 (n + 1)

end A069201

/-! ## A069201.P11353148413764155616

`∑[sqrt(∏{e}[n+1, C(4, 3*#)])]`
-/

namespace A069201.P11353148413764155616
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((∏ p ∈ Nat.primeFactors (f2 n), Nat.choose 4 (3 * Nat.factorization (f2 n) p) : ℕ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069201.P11353148413764155616

namespace A069201

/-- `∑[sqrt(∏{e}[n+1, C(4, 3*#)])]` -/
def P11353148413764155616.Spec : Prop :=
  ∀ n, P11353148413764155616.a n = (A069201 (n + 1) : ℝ)

end A069201

/-! ## A069201.P17956165751556884693

`∑[A074823(n+1)]`
-/

namespace A069201.P17956165751556884693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074823 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069201.P17956165751556884693

namespace A069201

/-- `∑[A074823(n+1)]` -/
def P17956165751556884693.Spec : Prop :=
  ∀ n, P17956165751556884693.a n = A069201 (n + 1)

end A069201

/-! ## A069201.P14813272685521299685

`∑[abs(A226177(n+1))]`
-/

namespace A069201.P14813272685521299685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A226177 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069201.P14813272685521299685

namespace A069201

/-- `∑[abs(A226177(n+1))]` -/
def P14813272685521299685.Spec : Prop :=
  ∀ n, P14813272685521299685.a n = A069201 (n + 1)

end A069201

/-! ## A069201.P10746037670584203733

`∑[sqrt(A351521(n+1))]`
-/

namespace A069201.P10746037670584203733
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A351521 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069201.P10746037670584203733

namespace A069201

/-- `∑[sqrt(A351521(n+1))]` -/
def P10746037670584203733.Spec : Prop :=
  ∀ n, P10746037670584203733.a n = (A069201 (n + 1) : ℝ)

end A069201

/-! ## A069201.P8433730337257418601

`∑[A114811(4*(n+1))]`
-/

namespace A069201.P8433730337257418601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114811 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069201.P8433730337257418601

namespace A069201

/-- `∑[A114811(4*(n+1))]` -/
def P8433730337257418601.Spec : Prop :=
  ∀ n, P8433730337257418601.a n = A069201 (n + 1)

end A069201

/-! ## A069201.P2587579245143863670

`∑[and(∏{e}[n+1, #+1], A046644(n+1))]`
-/

namespace A069201.P2587579245143863670
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ) (A046644 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069201.P2587579245143863670

namespace A069201

/-- `∑[and(∏{e}[n+1, #+1], A046644(n+1))]` -/
def P2587579245143863670.Spec : Prop :=
  ∀ n, P2587579245143863670.a n = A069201 (n + 1)

end A069201

/-! ## A069201.P14489506733563183996

`∑[A000005(n+1)*A008966(n+1)]`
-/

namespace A069201.P14489506733563183996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A008966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069201.P14489506733563183996

namespace A069201

/-- `∑[A000005(n+1)*A008966(n+1)]` -/
def P14489506733563183996.Spec : Prop :=
  ∀ n, P14489506733563183996.a n = A069201 (n + 1)

end A069201

/-! ## A069201.P14291022761677384063

`∑[lcm(A000005(n+1), A008683(n+1))]`
-/

namespace A069201.P14291022761677384063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (n + 1)) (A008683 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069201.P14291022761677384063

namespace A069201

/-- `∑[lcm(A000005(n+1), A008683(n+1))]` -/
def P14291022761677384063.Spec : Prop :=
  ∀ n, (P14291022761677384063.a n : ℤ) = A069201 (n + 1)

end A069201

/-! ## A069201.P12953750307171684826

`∑[A008683(n+1)²*Δ[A006218(n)]]`
-/

namespace A069201.P12953750307171684826
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) ^ 2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069201.P12953750307171684826

namespace A069201

/-- `∑[A008683(n+1)²*Δ[A006218(n)]]` -/
def P12953750307171684826.Spec : Prop :=
  ∀ n, P12953750307171684826.a n = A069201 (n + 1)

end A069201

/-! ## A069201.P504409264834745979

`∑[abs(A008683(n+1)*A293442(n+1))]`
-/

namespace A069201.P504409264834745979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (n + 1) * A293442 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069201.P504409264834745979

namespace A069201

/-- `∑[abs(A008683(n+1)*A293442(n+1))]` -/
def P504409264834745979.Spec : Prop :=
  ∀ n, P504409264834745979.a n = A069201 (n + 1)

end A069201

/-! ## A069201.P17383469018114893265

`∑[A008683(n+1)²*A073184(n+1)]`
-/

namespace A069201.P17383469018114893265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) ^ 2 * A073184 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069201.P17383469018114893265

namespace A069201

/-- `∑[A008683(n+1)²*A073184(n+1)]` -/
def P17383469018114893265.Spec : Prop :=
  ∀ n, P17383469018114893265.a n = A069201 (n + 1)

end A069201

/-! ## A069201.P1971277434693132220

`∑[A008683(n+1)²*A286324(n+1)]`
-/

namespace A069201.P1971277434693132220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) ^ 2 * A286324 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069201.P1971277434693132220

namespace A069201

/-- `∑[A008683(n+1)²*A286324(n+1)]` -/
def P1971277434693132220.Spec : Prop :=
  ∀ n, P1971277434693132220.a n = A069201 (n + 1)

end A069201

/-! ## A069201.P15918926034281662267

`∑[A008683(n+1)²*A303809(n+1)]`
-/

namespace A069201.P15918926034281662267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) ^ 2 * A303809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069201.P15918926034281662267

namespace A069201

/-- `∑[A008683(n+1)²*A303809(n+1)]` -/
def P15918926034281662267.Spec : Prop :=
  ∀ n, P15918926034281662267.a n = A069201 (n + 1)

end A069201

/-! ## A069201.P3680461288097140219

`∑[and(2^A001221(n+1), A303809(n+1))]`
-/

namespace A069201.P3680461288097140219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A001221 (n + 1) : ℤ))) (A303809 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069201.P3680461288097140219

namespace A069201

/-- `∑[and(2^A001221(n+1), A303809(n+1))]` -/
def P3680461288097140219.Spec : Prop :=
  ∀ n, P3680461288097140219.a n = A069201 (n + 1)

end A069201

/-! ## A069201.P3507227951632790329

`∑[A008683(2*n+1-n)²*A000005(n+1)]`
-/

namespace A069201.P3507227951632790329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * n + 1 - n) ^ 2 * A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069201.P3507227951632790329

namespace A069201

/-- `∑[A008683(2*n+1-n)²*A000005(n+1)]` -/
def P3507227951632790329.Spec : Prop :=
  ∀ n, P3507227951632790329.a n = A069201 (n + 1)

end A069201

/-! ## A069201.P9534121218565823854

`∑[char[∏{p}[n, #]-1]*∏{e}[n+1, #+1]]`
-/

namespace A069201.P9534121218565823854
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℤ) - 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) * (∏ p ∈ Nat.primeFactors (f4 n), (Nat.factorization (f4 n) p + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069201.P9534121218565823854

namespace A069201

/-- `∑[char[∏{p}[n, #]-1]*∏{e}[n+1, #+1]]` -/
def P9534121218565823854.Spec : Prop :=
  ∀ n, (P9534121218565823854.a n : ℤ) = A069201 (n + 1)

end A069201

/-! ## A069201.P572681019383206420

`∑[A326814((n+1)²)]`
-/

namespace A069201.P572681019383206420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326814 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069201.P572681019383206420

namespace A069201

/-- `∑[A326814((n+1)²)]` -/
def P572681019383206420.Spec : Prop :=
  ∀ n, P572681019383206420.a n = A069201 (n + 1)

end A069201

/-!
# A069202: A Collatz-Fibonacci mixture: a(1) = 1, a(2) = 2, a(n+2) = a(n+1)/2+a(n)/2 if a(n+1) and a(n) have the same parity, a(n+2) = a(n+1)+a(n) otherwise.

The programs for A069202, the canonical program `A069202.P16255708417769733214` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069202 has offset 1).

The definition of A069202 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 942 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069202.P16255708417769733214

`(a(n-1)+a(n-2))/gcd(2, a(n-1)+a(n-2))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069202

/-- `(a(n-1)+a(n-2))/gcd(2, a(n-1)+a(n-2))` -/
def P16255708417769733214.Spec : Prop :=
  ∀ n, P16255708417769733214.a n = (A069202 (n + 1) : ℚ)

end A069202

/-! ## A069202.P6564498226909971422

`(a(n-1)+a(n-2))/a(and(1, and(a(n-1), a(n-2))))` with `a(0)=1, a(1)=2`
-/

namespace A069202.P6564498226909971422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (a (n - 1) + a (n - 2)) / a (Int.land 1 (Int.land (SequenceMachineLib.roundAway (a (n - 1))) (SequenceMachineLib.roundAway (a (n - 2))))).toNat

end

end A069202.P6564498226909971422

namespace A069202

/-- `(a(n-1)+a(n-2))/a(and(1, and(a(n-1), a(n-2))))` -/
def P6564498226909971422.Spec : Prop :=
  ∀ n, P6564498226909971422.a n = (A069202 (n + 1) : ℚ)

end A069202

/-! ## A069202.P384446260635786460

`lcm(2, a(n-1)+a(n-2))/2` with `a(0)=1, a(1)=2`
-/

namespace A069202.P384446260635786460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (Int.lcm 2 (SequenceMachineLib.roundAway (a (n - 1) + a (n - 2))) : ℚ) / 2

end

end A069202.P384446260635786460

namespace A069202

/-- `lcm(2, a(n-1)+a(n-2))/2` -/
def P384446260635786460.Spec : Prop :=
  ∀ n, P384446260635786460.a n = (A069202 (n + 1) : ℚ)

end A069202

/-! ## A069202.P18309105725536982448

`(a(n-1)+a(n-2))/a((a(n-1)*a(n-2))%2)` with `a(0)=1, a(1)=2`
-/

namespace A069202.P18309105725536982448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (a (n - 1) + a (n - 2)) / a (Int.tmod (SequenceMachineLib.roundAway (a (n - 1) * a (n - 2))) 2).toNat

end

end A069202.P18309105725536982448

namespace A069202

/-- `(a(n-1)+a(n-2))/a((a(n-1)*a(n-2))%2)` -/
def P18309105725536982448.Spec : Prop :=
  ∀ n, P18309105725536982448.a n = (A069202 (n + 1) : ℚ)

end A069202

/-! ## A069202.P806725025921039695

`A026741(a(n-1)+a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A069202.P806725025921039695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A026741 (a (n - 1) + a (n - 2)).toNat

end

end A069202.P806725025921039695

namespace A069202

/-- `A026741(a(n-1)+a(n-2))` -/
def P806725025921039695.Spec : Prop :=
  ∀ n, P806725025921039695.a n = A069202 (n + 1)

end A069202

/-!
# A069203: a(1)=0 a(2)=3 a(n+2)=(a(n+1)+a(n))/3 if (a(n+1)+a(n)==0 (mod 3)); a(n+2)=a(n+1)+a(n) otherwise.

The programs for A069203, the canonical program `A069203.P15124050852643630807` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069203 has offset 1).

The definition of A069203 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1203 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069203.P15124050852643630807

`(a(n-1)+a(n-2))/gcd(3, a(n-1)+a(n-2))` with `a(0)=0, a(1)=3`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069203

/-- `(a(n-1)+a(n-2))/gcd(3, a(n-1)+a(n-2))` -/
def P15124050852643630807.Spec : Prop :=
  ∀ n, P15124050852643630807.a n = (A069203 (n + 1) : ℚ)

end A069203

/-! ## A069203.P6080907796171030288

`lcm(3, a(n-1)+a(n-2))/3` with `a(0)=0, a(1)=3`
-/

namespace A069203.P6080907796171030288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 3] fun n a =>
  (Int.lcm 3 (SequenceMachineLib.roundAway (a (n - 1) + a (n - 2))) : ℚ) / 3

end

end A069203.P6080907796171030288

namespace A069203

/-- `lcm(3, a(n-1)+a(n-2))/3` -/
def P6080907796171030288.Spec : Prop :=
  ∀ n, P6080907796171030288.a n = (A069203 (n + 1) : ℚ)

end A069203

/-! ## A069203.P5745948634959477709

`A051176(a(n-1)+a(n-2))` with `a(0)=0, a(1)=3`
-/

namespace A069203.P5745948634959477709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  A051176 (a (n - 1) + a (n - 2)).toNat

end

end A069203.P5745948634959477709

namespace A069203

/-- `A051176(a(n-1)+a(n-2))` -/
def P5745948634959477709.Spec : Prop :=
  ∀ n, P5745948634959477709.a n = A069203 (n + 1)

end A069203

/-! ## A069203.P13149709005385487508

`A051176(a(n-1)-floor(-a(n-2)))` with `a(0)=0, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A069203.P13149709005385487508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  A051176 (a (n - 1) - (-a (n - 2))).toNat

end

end A069203.P13149709005385487508

namespace A069203

/-- `A051176(a(n-1)-floor(-a(n-2)))` -/
def P13149709005385487508.Spec : Prop :=
  ∀ n, P13149709005385487508.a n = A069203 (n + 1)

end A069203

/-! ## A069203.P10632043331604911111

`A051176(a(n-1)-ceil(-a(n-2)))` with `a(0)=0, a(1)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A069203.P10632043331604911111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  A051176 (a (n - 1) - (-a (n - 2))).toNat

end

end A069203.P10632043331604911111

namespace A069203

/-- `A051176(a(n-1)-ceil(-a(n-2)))` -/
def P10632043331604911111.Spec : Prop :=
  ∀ n, P10632043331604911111.a n = A069203 (n + 1)

end A069203

/-! ## A069203.P5935552742024890239

`A051176(a(n-1)-round(-a(n-2)))` with `a(0)=0, a(1)=3`

`round` is left out, it is the identity on integers.
-/

namespace A069203.P5935552742024890239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  A051176 (a (n - 1) - (-a (n - 2))).toNat

end

end A069203.P5935552742024890239

namespace A069203

/-- `A051176(a(n-1)-round(-a(n-2)))` -/
def P5935552742024890239.Spec : Prop :=
  ∀ n, P5935552742024890239.a n = A069203 (n + 1)

end A069203

/-!
# A069204: Emirps congruent to their reversal mod 4.

The programs for A069204, there is no canonical definition to state claims against.
-/

/-! ## A069204.P12709189140885604370

`p?[∑[A038822(A113369(n))]]`
-/

namespace A069204.P12709189140885604370
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038822 (A113369 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069204.P12709189140885604370

/-!
# A069205: a(n) = Sum_{k=1..n} 2^bigomega(k).

The programs for A069205, the canonical program `A069205.P17294942075327287708` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069205 has offset 1).

The definition of A069205 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069205.P10445379694951712239

`∑[2^∑{e}[n+1, #]]`
-/

namespace A069205.P10445379694951712239
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069205.P10445379694951712239

namespace A069205

/-- `∑[2^∑{e}[n+1, #]]` -/
def P10445379694951712239.Spec : Prop :=
  ∀ n, (P10445379694951712239.a n : ℤ) = A069205 (n + 1)

end A069205

/-! ## A069205.P17294942075327287708

`∑[∏{e}[n+1, 2^#]]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069205

/-- `∑[∏{e}[n+1, 2^#]]` -/
def P17294942075327287708.Spec : Prop :=
  ∀ n, (P17294942075327287708.a n : ℤ) = A069205 (n + 1)

theorem P17294942075327287708.correct : P17294942075327287708.Spec := by
  intro n
  simp only [A069205, Nat.add_sub_cancel]

end A069205

/-! ## A069205.P9447029132790723721

`∑[2^∑{p}[n+1, val(n+1, #)]]`
-/

namespace A069205.P9447029132790723721
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation (n + 1) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069205.P9447029132790723721

namespace A069205

/-- `∑[2^∑{p}[n+1, val(n+1, #)]]` -/
def P9447029132790723721.Spec : Prop :=
  ∀ n, (P9447029132790723721.a n : ℤ) = A069205 (n + 1)

end A069205

/-! ## A069205.P18392602856847561764

`∑[∏{p}[n+1, 2^val(n+1, #)]]`
-/

namespace A069205.P18392602856847561764
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), 2 ^ SequenceMachineLib.valuation (n + 1) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069205.P18392602856847561764

namespace A069205

/-- `∑[∏{p}[n+1, 2^val(n+1, #)]]` -/
def P18392602856847561764.Spec : Prop :=
  ∀ n, (P18392602856847561764.a n : ℤ) = A069205 (n + 1)

end A069205

/-! ## A069205.P11651562384191717080

`a(n-1)+2^∑{e}[n+1, #]` with `a(0)=1`
-/

namespace A069205.P11651562384191717080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A069205.P11651562384191717080

namespace A069205

/-- `a(n-1)+2^∑{e}[n+1, #]` -/
def P11651562384191717080.Spec : Prop :=
  ∀ n, (P11651562384191717080.a n : ℤ) = A069205 (n + 1)

end A069205

/-! ## A069205.P8743164992644376295

`∏{e}[n+1, 2^#]+a(n-1)` with `a(0)=1`
-/

namespace A069205.P8743164992644376295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p + a (n - 1)

end

end A069205.P8743164992644376295

namespace A069205

/-- `∏{e}[n+1, 2^#]+a(n-1)` -/
def P8743164992644376295.Spec : Prop :=
  ∀ n, (P8743164992644376295.a n : ℤ) = A069205 (n + 1)

end A069205

/-! ## A069205.P3643118215832054447

`∑[A061142(n+1)]`
-/

namespace A069205.P3643118215832054447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069205.P3643118215832054447

namespace A069205

/-- `∑[A061142(n+1)]` -/
def P3643118215832054447.Spec : Prop :=
  ∀ n, P3643118215832054447.a n = A069205 (n + 1)

end A069205

/-! ## A069205.P15296739935876930614

`∑[abs(A165872(n+1))]`
-/

namespace A069205.P15296739935876930614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A165872 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069205.P15296739935876930614

namespace A069205

/-- `∑[abs(A165872(n+1))]` -/
def P15296739935876930614.Spec : Prop :=
  ∀ n, P15296739935876930614.a n = A069205 (n + 1)

end A069205

/-! ## A069205.P8781346148683815534

`∑[sqrt(A165825(n+1))]`
-/

namespace A069205.P8781346148683815534
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A165825 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069205.P8781346148683815534

namespace A069205

/-- `∑[sqrt(A165825(n+1))]` -/
def P8781346148683815534.Spec : Prop :=
  ∀ n, P8781346148683815534.a n = (A069205 (n + 1) : ℝ)

end A069205

/-! ## A069205.P2158105617977567703

`∑[2^A001222(n+1)]`
-/

namespace A069205.P2158105617977567703
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001222 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069205.P2158105617977567703

namespace A069205

/-- `∑[2^A001222(n+1)]` -/
def P2158105617977567703.Spec : Prop :=
  ∀ n, P2158105617977567703.a n = (A069205 (n + 1) : ℚ)

end A069205

/-! ## A069205.P17240370559703979116

`∑[A123667(n+1)/(n+1)]`
-/

namespace A069205.P17240370559703979116
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123667 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069205.P17240370559703979116

namespace A069205

/-- `∑[A123667(n+1)/(n+1)]` -/
def P17240370559703979116.Spec : Prop :=
  ∀ n, P17240370559703979116.a n = (A069205 (n + 1) : ℚ)

end A069205

/-! ## A069205.P17937978024184073915

`∑[A000079(A001222(n+1))]`
-/

namespace A069205.P17937978024184073915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A001222 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069205.P17937978024184073915

namespace A069205

/-- `∑[A000079(A001222(n+1))]` -/
def P17937978024184073915.Spec : Prop :=
  ∀ n, P17937978024184073915.a n = A069205 (n + 1)

end A069205

/-! ## A069205.P12499436098740465638

`∑[A122111(A105560(n+1))]`
-/

namespace A069205.P12499436098740465638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A105560 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069205.P12499436098740465638

namespace A069205

/-- `∑[A122111(A105560(n+1))]` -/
def P12499436098740465638.Spec : Prop :=
  ∀ n, P12499436098740465638.a n = A069205 (n + 1)

end A069205

/-! ## A069205.P16394671933637238220

`∑[A011782(A001222(n+1)+1)]`
-/

namespace A069205.P16394671933637238220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A001222 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069205.P16394671933637238220

namespace A069205

/-- `∑[A011782(A001222(n+1)+1)]` -/
def P16394671933637238220.Spec : Prop :=
  ∀ n, P16394671933637238220.a n = A069205 (n + 1)

end A069205

/-! ## A069205.P4061887269345526825

`∑[A050732(A001222(n+1)+1)]`
-/

namespace A069205.P4061887269345526825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050732 (A001222 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069205.P4061887269345526825

namespace A069205

/-- `∑[A050732(A001222(n+1)+1)]` -/
def P4061887269345526825.Spec : Prop :=
  ∀ n, P4061887269345526825.a n = A069205 (n + 1)

end A069205

/-! ## A069205.P4192919520763124645

`∑[A016116(2*A001222(n+1))]`
-/

namespace A069205.P4192919520763124645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * A001222 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069205.P4192919520763124645

namespace A069205

/-- `∑[A016116(2*A001222(n+1))]` -/
def P4192919520763124645.Spec : Prop :=
  ∀ n, P4192919520763124645.a n = A069205 (n + 1)

end A069205

/-! ## A069205.P13005437930171037705

`∑[A060546(2*A001222(n+1))]`
-/

namespace A069205.P13005437930171037705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (2 * A001222 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069205.P13005437930171037705

namespace A069205

/-- `∑[A060546(2*A001222(n+1))]` -/
def P13005437930171037705.Spec : Prop :=
  ∀ n, P13005437930171037705.a n = A069205 (n + 1)

end A069205

/-! ## A069205.P6553734238198099635

`∑[∏{d}[n+1, A000005(A014963(#))]]`
-/

namespace A069205.P6553734238198099635
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), A000005 (A014963 d).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069205.P6553734238198099635

namespace A069205

/-- `∑[∏{d}[n+1, A000005(A014963(#))]]` -/
def P6553734238198099635.Spec : Prop :=
  ∀ n, P6553734238198099635.a n = A069205 (n + 1)

end A069205

/-! ## A069205.P6626562077721097186

`∑[A068794(2*(n+1))/2]`
-/

namespace A069205.P6626562077721097186
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068794 (2 * (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069205.P6626562077721097186

namespace A069205

/-- `∑[A068794(2*(n+1))/2]` -/
def P6626562077721097186.Spec : Prop :=
  ∀ n, P6626562077721097186.a n = (A069205 (n + 1) : ℚ)

end A069205

/-! ## A069205.P15889860361249753871

`∑[A016116(A001222((n+1)²))]`
-/

namespace A069205.P15889860361249753871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A001222 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069205.P15889860361249753871

namespace A069205

/-- `∑[A016116(A001222((n+1)²))]` -/
def P15889860361249753871.Spec : Prop :=
  ∀ n, P15889860361249753871.a n = A069205 (n + 1)

end A069205

/-!
# A069208: a(n) = Sum_{ d divides n } phi(n)/phi(d).

The programs for A069208, the canonical program `A069208.P5783639011279016630` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069208 has offset 1).

The definition of A069208 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069208.P7075147376467865056

`∑{d}[n+1, A384039(#)]`
-/

namespace A069208.P7075147376467865056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A384039 d

end

end A069208.P7075147376467865056

namespace A069208

/-- `∑{d}[n+1, A384039(#)]` -/
def P7075147376467865056.Spec : Prop :=
  ∀ n, P7075147376467865056.a n = A069208 (n + 1)

end A069208

/-! ## A069208.P5783639011279016630

`∑{d}[n+1, #*A112526((n+1)/#)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A069208

/-- `∑{d}[n+1, #*A112526((n+1)/#)]` -/
def P5783639011279016630.Spec : Prop :=
  ∀ n, P5783639011279016630.a n = A069208 (n + 1)

theorem P5783639011279016630.correct : P5783639011279016630.Spec := by
  intro n
  simp only [A069208, Nat.add_sub_cancel]

end A069208

/-! ## A069208.P7278300518000676498

`∑{d}[n+1, A000010(n+1)/A000010(#)]`
-/

namespace A069208.P7278300518000676498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 (n + 1) : ℚ) / (A000010 d : ℚ)

end

end A069208.P7278300518000676498

namespace A069208

/-- `∑{d}[n+1, A000010(n+1)/A000010(#)]` -/
def P7278300518000676498.Spec : Prop :=
  ∀ n, P7278300518000676498.a n = (A069208 (n + 1) : ℚ)

end A069208

/-! ## A069208.P12306753599985450184

`∑{d}[A003557(n+1), (n+1)/A064549(#)]`
-/

namespace A069208.P12306753599985450184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (n + 1 : ℚ) / (A064549 d : ℚ)

end

end A069208.P12306753599985450184

namespace A069208

/-- `∑{d}[A003557(n+1), (n+1)/A064549(#)]` -/
def P12306753599985450184.Spec : Prop :=
  ∀ n, P12306753599985450184.a n = (A069208 (n + 1) : ℚ)

end A069208

/-! ## A069208.P655991071260678712

`∑{d}[n+1, A000203(#)*A363551((n+1)/#)]`
-/

namespace A069208.P655991071260678712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A363551 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069208.P655991071260678712

namespace A069208

/-- `∑{d}[n+1, A000203(#)*A363551((n+1)/#)]` -/
def P655991071260678712.Spec : Prop :=
  ∀ n, P655991071260678712.a n = A069208 (n + 1)

end A069208

/-! ## A069208.P53212377314651258

`∑{d}[n+1, A063659(#)*A332712((n+1)/#)]`
-/

namespace A069208.P53212377314651258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063659 d * A332712 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069208.P53212377314651258

namespace A069208

/-- `∑{d}[n+1, A063659(#)*A332712((n+1)/#)]` -/
def P53212377314651258.Spec : Prop :=
  ∀ n, P53212377314651258.a n = A069208 (n + 1)

end A069208

/-! ## A069208.P5116594498757848069

`∑{d}[n+1, A206369(#)*A368248((n+1)/#)]`
-/

namespace A069208.P5116594498757848069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A206369 d * A368248 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069208.P5116594498757848069

namespace A069208

/-- `∑{d}[n+1, A206369(#)*A368248((n+1)/#)]` -/
def P5116594498757848069.Spec : Prop :=
  ∀ n, P5116594498757848069.a n = A069208 (n + 1)

end A069208

/-!
# A069209: Orders of non-Abelian Z-groups.

The programs for A069209, the canonical program `A069209.P1495088304037464611` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069209 has offset 1).

The definition of A069209 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069209.P1495088304037464611

`lt[1, A126864(n+1)]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A069209

/-- `lt[1, A126864(n+1)]+1` -/
def P1495088304037464611.Spec : Prop :=
  ∀ n, (P1495088304037464611.a n : ℤ) = A069209 (n + 1)

theorem P1495088304037464611.correct : P1495088304037464611.Spec := by
  intro n
  simp only [A069209, Nat.add_sub_cancel]

end A069209

/-! ## A069209.P205264577147028790

`lt[1, A348928(n+1)]+1`
-/

namespace A069209.P205264577147028790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348928 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A069209.P205264577147028790

namespace A069209

/-- `lt[1, A348928(n+1)]+1` -/
def P205264577147028790.Spec : Prop :=
  ∀ n, (P205264577147028790.a n : ℤ) = A069209 (n + 1)

end A069209

/-! ## A069209.P4683186044350135512

`lt[A109395(n+1), A007947(n+1)]+1`
-/

namespace A069209.P4683186044350135512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A069209.P4683186044350135512

namespace A069209

/-- `lt[A109395(n+1), A007947(n+1)]+1` -/
def P4683186044350135512.Spec : Prop :=
  ∀ n, (P4683186044350135512.a n : ℤ) = A069209 (n + 1)

end A069209

/-! ## A069209.P7582837902045538016

`lt[0, A001222(gcd(n+1, A003958(n+1)))]+1`
-/

namespace A069209.P7582837902045538016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (n + 1 : ℤ) (A003958 (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A069209.P7582837902045538016

namespace A069209

/-- `lt[0, A001222(gcd(n+1, A003958(n+1)))]+1` -/
def P7582837902045538016.Spec : Prop :=
  ∀ n, (P7582837902045538016.a n : ℤ) = A069209 (n + 1)

end A069209

/-! ## A069209.P7569900037400597045

`lt[A295126(n+1), n]+1`
-/

namespace A069209.P7569900037400597045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295126 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A069209.P7569900037400597045

namespace A069209

/-- `lt[A295126(n+1), n]+1` -/
def P7569900037400597045.Spec : Prop :=
  ∀ n, (P7569900037400597045.a n : ℤ) = A069209 (n + 1)

end A069209

/-! ## A069209.P15806832868227671817

`lt[A003557(n+1), A009195(n+1)]+1`
-/

namespace A069209.P15806832868227671817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A069209.P15806832868227671817

namespace A069209

/-- `lt[A003557(n+1), A009195(n+1)]+1` -/
def P15806832868227671817.Spec : Prop :=
  ∀ n, (P15806832868227671817.a n : ℤ) = A069209 (n + 1)

end A069209

/-! ## A069209.P11467313131732844620

`lt[A003557(n+1), A072994(n+1)]+1`
-/

namespace A069209.P11467313131732844620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072994 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A069209.P11467313131732844620

namespace A069209

/-- `lt[A003557(n+1), A072994(n+1)]+1` -/
def P11467313131732844620.Spec : Prop :=
  ∀ n, (P11467313131732844620.a n : ℤ) = A069209 (n + 1)

end A069209

/-! ## A069209.P13009480345184865507

`A020725(lt[A003557(n+1), A009195(n+1)])`
-/

namespace A069209.P13009480345184865507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A069209.P13009480345184865507

namespace A069209

/-- `A020725(lt[A003557(n+1), A009195(n+1)])` -/
def P13009480345184865507.Spec : Prop :=
  ∀ n, P13009480345184865507.a n = A069209 (n + 1)

end A069209

/-! ## A069209.P6427643499985658779

`A020725(lt[A109395(n+1), A007947(n+1)])`
-/

namespace A069209.P6427643499985658779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A069209.P6427643499985658779

namespace A069209

/-- `A020725(lt[A109395(n+1), A007947(n+1)])` -/
def P6427643499985658779.Spec : Prop :=
  ∀ n, P6427643499985658779.a n = A069209 (n + 1)

end A069209

/-! ## A069209.P10011042023616625516

`A065475(lt[A003557(n+1), A072994(n+1)])`
-/

namespace A069209.P10011042023616625516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A069209.P10011042023616625516

namespace A069209

/-- `A065475(lt[A003557(n+1), A072994(n+1)])` -/
def P10011042023616625516.Spec : Prop :=
  ∀ n, P10011042023616625516.a n = A069209 (n + 1)

end A069209

/-! ## A069209.P9270972011027191499

`A061767(lt[A109395(n+1), A007947(n+1)])`
-/

namespace A069209.P9270972011027191499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A069209.P9270972011027191499

namespace A069209

/-- `A061767(lt[A109395(n+1), A007947(n+1)])` -/
def P9270972011027191499.Spec : Prop :=
  ∀ n, P9270972011027191499.a n = A069209 (n + 1)

end A069209

/-! ## A069209.P1312194899700549699

`lt[A295126(A233583(n+1)), n]`
-/

namespace A069209.P1312194899700549699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295126 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A069209.P1312194899700549699

namespace A069209

/-- `lt[A295126(A233583(n+1)), n]` -/
def P1312194899700549699.Spec : Prop :=
  ∀ n, (P1312194899700549699.a n : ℤ) = A069209 (n + 1)

end A069209

/-!
# A069210: a(1)=a(2)=1, a(n+2) = a(n+1)+1 if sign(sin(a(n+1))) = sign(sin(a(n))), a(n+2) = a(n)+1 otherwise.

The programs for A069210, the canonical program `A069210.P17992503597027194116` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069210 has offset 1).

The definition of A069210 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069210.P8152883798526652696

`n-floor(a(n-1)/π)` with `a(0)=1`
-/

namespace A069210.P8152883798526652696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - ⌊(a (n - 1) : ℝ) / Real.pi⌋

end

end A069210.P8152883798526652696

namespace A069210

/-- `n-floor(a(n-1)/π)` -/
def P8152883798526652696.Spec : Prop :=
  ∀ n, P8152883798526652696.a n = A069210 (n + 1)

end A069210

/-! ## A069210.P17488954047654478427

`ceil(n-a(n-1)/π)` with `a(0)=1`
-/

namespace A069210.P17488954047654478427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(n : ℝ) - (a (n - 1) : ℝ) / Real.pi⌉

end

end A069210.P17488954047654478427

namespace A069210

/-- `ceil(n-a(n-1)/π)` -/
def P17488954047654478427.Spec : Prop :=
  ∀ n, P17488954047654478427.a n = A069210 (n + 1)

end A069210

/-! ## A069210.P17992503597027194116

`n-A032615(a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A069210

/-- `n-A032615(a(n-1))` -/
def P17992503597027194116.Spec : Prop :=
  ∀ n, P17992503597027194116.a n = A069210 (n + 1)

theorem P17992503597027194116.correct : P17992503597027194116.Spec := by
  intro n
  simp only [A069210, Nat.add_sub_cancel]

end A069210

/-! ## A069210.P574857910339841191

`n+1-A296357(a(n-1))` with `a(0)=1`
-/

namespace A069210.P574857910339841191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) - A296357 (a (n - 1)).toNat

end

end A069210.P574857910339841191

namespace A069210

/-- `n+1-A296357(a(n-1))` -/
def P574857910339841191.Spec : Prop :=
  ∀ n, P574857910339841191.a n = A069210 (n + 1)

end A069210

/-! ## A069210.P457985858753367277

`∑[char[A059531(n+1)+1]]+1`
-/

namespace A069210.P457985858753367277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059531 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A069210.P457985858753367277

namespace A069210

/-- `∑[char[A059531(n+1)+1]]+1` -/
def P457985858753367277.Spec : Prop :=
  ∀ n, (P457985858753367277.a n : ℤ) = A069210 (n + 1)

end A069210

/-!
# A069212: a(n) = Sum_{k=1..n} 3^omega(k).

The programs for A069212, the canonical program `A069212.P3742178347837280383` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069212 has offset 1).

The definition of A069212 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069212.P3742178347837280383

`∑[∏{p}[n+1, 3%#²]]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069212

/-- `∑[∏{p}[n+1, 3%#²]]` -/
def P3742178347837280383.Spec : Prop :=
  ∀ n, (P3742178347837280383.a n : ℤ) = A069212 (n + 1)

theorem P3742178347837280383.correct : P3742178347837280383.Spec := by
  intro n
  simp only [A069212, Nat.add_sub_cancel]

end A069212

/-! ## A069212.P1475560817483384926

`∑[∏{p}[n+1, gcd(3, 3*#)]]`
-/

namespace A069212.P1475560817483384926
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.gcd 3 (3 * p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069212.P1475560817483384926

namespace A069212

/-- `∑[∏{p}[n+1, gcd(3, 3*#)]]` -/
def P1475560817483384926.Spec : Prop :=
  ∀ n, (P1475560817483384926.a n : ℤ) = A069212 (n + 1)

end A069212

/-! ## A069212.P10125335232590416770

`∑[∏{p}[n+1, gcd(n, #)+2]]`
-/

namespace A069212.P10125335232590416770
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.gcd n p + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069212.P10125335232590416770

namespace A069212

/-- `∑[∏{p}[n+1, gcd(n, #)+2]]` -/
def P10125335232590416770.Spec : Prop :=
  ∀ n, (P10125335232590416770.a n : ℤ) = A069212 (n + 1)

end A069212

/-! ## A069212.P2189571504485104449

`∑[∏{p}[n+1, val(n, #)+3]]`
-/

namespace A069212.P2189571504485104449
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (SequenceMachineLib.valuation n p + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069212.P2189571504485104449

namespace A069212

/-- `∑[∏{p}[n+1, val(n, #)+3]]` -/
def P2189571504485104449.Spec : Prop :=
  ∀ n, (P2189571504485104449.a n : ℤ) = A069212 (n + 1)

end A069212

/-! ## A069212.P4119078513857121533

`∑[∏{e}[n+1, root(3^#, #)]]`
-/

namespace A069212.P4119078513857121533
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (3 ^ Nat.factorization (f2 n) p : ℝ) ^ (1 / (Nat.factorization (f2 n) p : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069212.P4119078513857121533

namespace A069212

/-- `∑[∏{e}[n+1, root(3^#, #)]]` -/
def P4119078513857121533.Spec : Prop :=
  ∀ n, P4119078513857121533.a n = (A069212 (n + 1) : ℝ)

end A069212

/-! ## A069212.P10389426055420731

`∑[∏{p}[n+1, xor(#, xor(3, #))]]`
-/

namespace A069212.P10389426055420731
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.xor p (Nat.xor 3 p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069212.P10389426055420731

namespace A069212

/-- `∑[∏{p}[n+1, xor(#, xor(3, #))]]` -/
def P10389426055420731.Spec : Prop :=
  ∀ n, (P10389426055420731.a n : ℤ) = A069212 (n + 1)

end A069212

/-! ## A069212.P4829298157993786632

`∑[3^∑{e}[∏{p}[n+1, #], #]]`
-/

namespace A069212.P4829298157993786632
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069212.P4829298157993786632

namespace A069212

/-- `∑[3^∑{e}[∏{p}[n+1, #], #]]` -/
def P4829298157993786632.Spec : Prop :=
  ∀ n, (P4829298157993786632.a n : ℤ) = A069212 (n + 1)

end A069212

/-! ## A069212.P4281903862397401018

`∑[∏{p}[n+1, (n+1)%#+3]]`
-/

namespace A069212.P4281903862397401018
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((n + 1) % p + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069212.P4281903862397401018

namespace A069212

/-- `∑[∏{p}[n+1, (n+1)%#+3]]` -/
def P4281903862397401018.Spec : Prop :=
  ∀ n, (P4281903862397401018.a n : ℤ) = A069212 (n + 1)

end A069212

/-! ## A069212.P17469969490096184624

`∑[A074816(n+1)]`
-/

namespace A069212.P17469969490096184624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074816 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069212.P17469969490096184624

namespace A069212

/-- `∑[A074816(n+1)]` -/
def P17469969490096184624.Spec : Prop :=
  ∀ n, P17469969490096184624.a n = A069212 (n + 1)

end A069212

/-! ## A069212.P2694268374272315145

`∑[sqrt(A344337(n+1))]`
-/

namespace A069212.P2694268374272315145
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A344337 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069212.P2694268374272315145

namespace A069212

/-- `∑[sqrt(A344337(n+1))]` -/
def P2694268374272315145.Spec : Prop :=
  ∀ n, P2694268374272315145.a n = (A069212 (n + 1) : ℝ)

end A069212

/-! ## A069212.P10148591986843297382

`∑[3^A001221(n+1)]`
-/

namespace A069212.P10148591986843297382
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A001221 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069212.P10148591986843297382

namespace A069212

/-- `∑[3^A001221(n+1)]` -/
def P10148591986843297382.Spec : Prop :=
  ∀ n, P10148591986843297382.a n = (A069212 (n + 1) : ℚ)

end A069212

/-! ## A069212.P13416047350278939138

`∑[∏{p}[n+1, A001221(#)+2]]`
-/

namespace A069212.P13416047350278939138
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (A001221 p + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069212.P13416047350278939138

namespace A069212

/-- `∑[∏{p}[n+1, A001221(#)+2]]` -/
def P13416047350278939138.Spec : Prop :=
  ∀ n, P13416047350278939138.a n = A069212 (n + 1)

end A069212

/-! ## A069212.P16063950737520687360

`∑[∏{p}[n+1, A001222(#)+2]]`
-/

namespace A069212.P16063950737520687360
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (A001222 p + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069212.P16063950737520687360

namespace A069212

/-- `∑[∏{p}[n+1, A001222(#)+2]]` -/
def P16063950737520687360.Spec : Prop :=
  ∀ n, P16063950737520687360.a n = A069212 (n + 1)

end A069212

/-! ## A069212.P15918515629059322604

`∑[∏{p}[n+1, 2-A008683(#)]]`
-/

namespace A069212.P15918515629059322604
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (2 - A008683 p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069212.P15918515629059322604

namespace A069212

/-- `∑[∏{p}[n+1, 2-A008683(#)]]` -/
def P15918515629059322604.Spec : Prop :=
  ∀ n, P15918515629059322604.a n = A069212 (n + 1)

end A069212

/-! ## A069212.P7873253405044370399

`∑[A007425(A007947(n+1))]`
-/

namespace A069212.P7873253405044370399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A007947 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069212.P7873253405044370399

namespace A069212

/-- `∑[A007425(A007947(n+1))]` -/
def P7873253405044370399.Spec : Prop :=
  ∀ n, P7873253405044370399.a n = A069212 (n + 1)

end A069212

/-! ## A069212.P5828637310356281381

`∑[∑{d}[A007947(n+1), A000005(#)]]`
-/

namespace A069212.P5828637310356281381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A000005 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069212.P5828637310356281381

namespace A069212

/-- `∑[∑{d}[A007947(n+1), A000005(#)]]` -/
def P5828637310356281381.Spec : Prop :=
  ∀ n, P5828637310356281381.a n = A069212 (n + 1)

end A069212

/-! ## A069212.P4127386648273896259

`∑[A000005(A007947(n+1)²)]`
-/

namespace A069212.P4127386648273896259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007947 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069212.P4127386648273896259

namespace A069212

/-- `∑[A000005(A007947(n+1)²)]` -/
def P4127386648273896259.Spec : Prop :=
  ∀ n, P4127386648273896259.a n = A069212 (n + 1)

end A069212

/-! ## A069212.P10672676258977226798

`∑[∏{p}[n+1, root(3^#, #)]]`
-/

namespace A069212.P10672676258977226798
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (3 ^ p : ℝ) ^ (1 / (p : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069212.P10672676258977226798

namespace A069212

/-- `∑[∏{p}[n+1, root(3^#, #)]]` -/
def P10672676258977226798.Spec : Prop :=
  ∀ n, P10672676258977226798.a n = (A069212 (n + 1) : ℝ)

end A069212

/-! ## A069212.P6517118982437484433

`∑[A073184((n+1)²)]`
-/

namespace A069212.P6517118982437484433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073184 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069212.P6517118982437484433

namespace A069212

/-- `∑[A073184((n+1)²)]` -/
def P6517118982437484433.Spec : Prop :=
  ∀ n, P6517118982437484433.a n = A069212 (n + 1)

end A069212

/-! ## A069212.P13438189941612257726

`∑[3^A056170((n+1)²)]`
-/

namespace A069212.P13438189941612257726
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A056170 ((n + 1) ^ 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069212.P13438189941612257726

namespace A069212

/-- `∑[3^A056170((n+1)²)]` -/
def P13438189941612257726.Spec : Prop :=
  ∀ n, P13438189941612257726.a n = (A069212 (n + 1) : ℚ)

end A069212

/-!
# A069213: a(n) = n-th positive integer relatively prime to n.

The programs for A069213, there is no canonical definition to state claims against.
-/

/-! ## A069213.P13469136778168993030

`A077665(n+1)-(n+1)`
-/

namespace A069213.P13469136778168993030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077665 (n + 1) - (n + 1 : ℤ)

end

end A069213.P13469136778168993030

/-! ## A069213.P5859695497464363220

`A077148(n+1)-(n+2)`
-/

namespace A069213.P5859695497464363220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077148 (n + 1) - (n + 2 : ℤ)

end

end A069213.P5859695497464363220

/-! ## A069213.P4729569628799568453

`A001478(n+1)+A077665(n+1)`
-/

namespace A069213.P4729569628799568453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + A077665 (n + 1)

end

end A069213.P4729569628799568453

/-! ## A069213.P5456396264651423165

`A077666(n+1)-A081501(n+1)`
-/

namespace A069213.P5456396264651423165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077666 (n + 1) - A081501 (n + 1)

end

end A069213.P5456396264651423165

/-! ## A069213.P6471908522310353367

`A001489(n+1)+A077665(n+1)`
-/

namespace A069213.P6471908522310353367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (n + 1) + A077665 (n + 1)

end

end A069213.P6471908522310353367

/-! ## A069213.P16181313709028347352

`A023443(A077665(n+1)-n)`
-/

namespace A069213.P16181313709028347352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A077665 (n + 1) - (n : ℤ)).toNat

end

end A069213.P16181313709028347352

/-! ## A069213.P135176673470080981

`A023443(A077665(n+1))+A001489(n)`
-/

namespace A069213.P135176673470080981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A077665 (n + 1)).toNat + A001489 n

end

end A069213.P135176673470080981

/-! ## A069213.P2816788614852222319

`A126571(∑[n+1])`
-/

namespace A069213.P2816788614852222319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126571 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A069213.P2816788614852222319

/-! ## A069213.P174411686579384354

`or(char[1], A126571(A008795(2*n)))`
-/

namespace A069213.P174411686579384354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A126571 (A008795 (2 * n)).toNat)

end

end A069213.P174411686579384354

/-! ## A069213.P2552394308726180396

`A028310(A126571(∑[n-log2(1/2)]))`
-/

namespace A069213.P2552394308726180396
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A126571 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A069213.P2552394308726180396

/-! ## A069213.P16003879915696826369

`A126571(A000217(n+1))%(n+2)²`
-/

namespace A069213.P16003879915696826369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126571 (A000217 (n + 1)).toNat) ((n + 2) ^ 2 : ℤ)

end

end A069213.P16003879915696826369

/-! ## A069213.P5279395396496008499

`A000027(A126571(∑[1-(n-2*n)]))`
-/

namespace A069213.P5279395396496008499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n : ℤ) - (2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A126571 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A069213.P5279395396496008499

/-! ## A069213.P4609200263007595389

`A077581(∑[n+1])`
-/

namespace A069213.P4609200263007595389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077581 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A069213.P4609200263007595389

/-! ## A069213.P13356012363300877602

`A077664(∑[n+1])-(n+1)`
-/

namespace A069213.P13356012363300877602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077664 (∑ j ∈ Finset.range (n + 1), f1 j) - (n + 1 : ℤ)

end

end A069213.P13356012363300877602

/-!
# A069214: Let u(n,k) be the recursion defined by u(n,1)=1, u(n,2)=2, u(n,3)=n, and u(n,k+3) = (u(n,k+2) + u(n,k+1))/u(n,k) if u(n,k) divides u(n,k+2) + u(n,k+1), u(n,k+3) = u(n,k) otherwise. Then u(n,k) is periodic and a(n) = Max(u(n,k), k >= 1).

The programs for A069214, the canonical program `A069214.P8682733862485696210` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069214 has offset 1).

The definition of A069214 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069214.P8682733862485696210

`2*a(n-2)-a(n-4)` with `a(0)=5, a(1)=4, a(2)=5, a(3)=6, a(4)=8`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069214

/-- `2*a(n-2)-a(n-4)` -/
def P8682733862485696210.Spec : Prop :=
  ∀ n, P8682733862485696210.a n = A069214 (n + 1)

theorem P8682733862485696210.correct : P8682733862485696210.Spec := by
  intro n
  simp only [A069214, Nat.add_sub_cancel]

end A069214

/-! ## A069214.P17987136894069102088

`gcd(2, n)+a(n-2)+1` with `a(0)=5, a(1)=4, a(2)=5`
-/

namespace A069214.P17987136894069102088
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 4, 5] fun n a =>
  Nat.gcd 2 n + (a (n - 2) + 1)

end

end A069214.P17987136894069102088

namespace A069214

/-- `gcd(2, n)+a(n-2)+1` -/
def P17987136894069102088.Spec : Prop :=
  ∀ n, (P17987136894069102088.a n : ℤ) = A069214 (n + 1)

end A069214

/-! ## A069214.P2195581433770341042

`a(n-2)+3-n%2` with `a(0)=5, a(1)=4, a(2)=5`
-/

namespace A069214.P2195581433770341042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 4, 5] fun n a =>
  a (n - 2) + (3 - ((n % 2 : ℕ) : ℤ))

end

end A069214.P2195581433770341042

namespace A069214

/-- `a(n-2)+3-n%2` -/
def P2195581433770341042.Spec : Prop :=
  ∀ n, P2195581433770341042.a n = A069214 (n + 1)

end A069214

/-! ## A069214.P2656105531114286972

`n+1-floor((n+1)/(n-a(n-1)))` with `a(0)=5, a(1)=4`
-/

namespace A069214.P2656105531114286972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 4] fun n a =>
  (n + 1 : ℤ) - ⌊(n + 1 : ℚ) / ((n : ℤ) - a (n - 1) : ℚ)⌋

end

end A069214.P2656105531114286972

namespace A069214

/-- `n+1-floor((n+1)/(n-a(n-1)))` -/
def P2656105531114286972.Spec : Prop :=
  ∀ n, P2656105531114286972.a n = A069214 (n + 1)

end A069214

/-! ## A069214.P10075434619849894986

`A195013(abs(1-n)+1)+2`
-/

namespace A069214.P10075434619849894986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195013 (|1 - (n : ℤ)| + 1).toNat + 2

end

end A069214.P10075434619849894986

namespace A069214

/-- `A195013(abs(1-n)+1)+2` -/
def P10075434619849894986.Spec : Prop :=
  ∀ n, P10075434619849894986.a n = A069214 (n + 1)

end A069214

/-! ## A069214.P1315098660236919975

`A071054(n)+A054977(n)²`
-/

namespace A069214.P1315098660236919975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071054 n + A054977 n ^ 2

end

end A069214.P1315098660236919975

namespace A069214

/-- `A071054(n)+A054977(n)²` -/
def P1315098660236919975.Spec : Prop :=
  ∀ n, P1315098660236919975.a n = A069214 (n + 1)

end A069214

/-! ## A069214.P13700600236052756587

`(A000007(n)+1)²+abs(2*n-A006370(n))+1`
-/

namespace A069214.P13700600236052756587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + 1) ^ 2 + (|(2 * n : ℤ) - A006370 n| + 1)

end

end A069214.P13700600236052756587

namespace A069214

/-- `(A000007(n)+1)²+abs(2*n-A006370(n))+1` -/
def P13700600236052756587.Spec : Prop :=
  ∀ n, P13700600236052756587.a n = A069214 (n + 1)

end A069214

/-! ## A069214.P14714224683408550914

`A065033(n)*A094290(A094290(n+1))+2`
-/

namespace A069214.P14714224683408550914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n * A094290 (A094290 (n + 1)).toNat + 2

end

end A069214.P14714224683408550914

namespace A069214

/-- `A065033(n)*A094290(A094290(n+1))+2` -/
def P14714224683408550914.Spec : Prop :=
  ∀ n, P14714224683408550914.a n = A069214 (n + 1)

end A069214

/-! ## A069214.P10303585975110560775

`A071054(n)+(A151935(n)^(2*n)+1)²`
-/

namespace A069214.P10303585975110560775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071054 n + (A151935 n ^ (2 * n) + 1) ^ 2

end

end A069214.P10303585975110560775

namespace A069214

/-- `A071054(n)+(A151935(n)^(2*n)+1)²` -/
def P10303585975110560775.Spec : Prop :=
  ∀ n, P10303585975110560775.a n = A069214 (n + 1)

end A069214

/-! ## A069214.P9784153430563162443

`A071054(n)+A000285(A151934(n))`
-/

namespace A069214.P9784153430563162443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071054 n + A000285 (A151934 n).toNat

end

end A069214.P9784153430563162443

namespace A069214

/-- `A071054(n)+A000285(A151934(n))` -/
def P9784153430563162443.Spec : Prop :=
  ∀ n, P9784153430563162443.a n = A069214 (n + 1)

end A069214

/-!
# A069215: Numbers n such that phi(n) = reversal(n).

The programs for A069215, there is no canonical definition to state claims against.
-/

/-! ## A069215.P14213660308895031584

`filter[A113622(n+1), A083035(#)]`
-/

namespace A069215.P14213660308895031584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A083035 (f1 j).toNat = 1) n)

end

end A069215.P14213660308895031584

/-! ## A069215.P17652777749927258661

`filter[A113622(n+1), A166280(#)]`
-/

namespace A069215.P17652777749927258661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166280 (f1 j).toNat = 1) n)

end

end A069215.P17652777749927258661

/-! ## A069215.P3743158873167231226

`filter[A113622(n+1), A188395(#)]`
-/

namespace A069215.P3743158873167231226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188395 (f1 j).toNat = 1) n)

end

end A069215.P3743158873167231226

/-!
# A069216: Numbers k such that sigma(k) = reversal(k).

The programs for A069216, there is no canonical definition to state claims against.
-/

/-! ## A069216.P3292422882020439590

`A115920(A083272(n))`
-/

namespace A069216.P3292422882020439590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115920 (A083272 n).toNat

end

end A069216.P3292422882020439590

/-!
# A069217: Numbers n such that phi(n) + sigma(n) = n + reversal(n).

The programs for A069217, the canonical program `A069217.P12658703530570607042` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069217 has offset 1).

The definition of A069217 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 700 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069217.P14675687564297429584

`A002385(n/a(val(n, n+1)))` with `a(0)=1`
-/

namespace A069217.P14675687564297429584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002385 (SequenceMachineLib.roundAway ((n : ℚ) / (a (SequenceMachineLib.valuation n (n + 1)) : ℚ))).toNat

end

end A069217.P14675687564297429584

namespace A069217

/-- `A002385(n/a(val(n, n+1)))` -/
def P14675687564297429584.Spec : Prop :=
  ∀ n, P14675687564297429584.a n = A069217 (n + 1)

end A069217

/-! ## A069217.P15987770280695186609

`A037010(n-1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A069217.P15987770280695186609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A037010 (n - 1) + a (n - 1)

end

end A069217.P15987770280695186609

namespace A069217

/-- `A037010(n-1)+a(n-1)` -/
def P15987770280695186609.Spec : Prop :=
  ∀ n, P15987770280695186609.a n = A069217 (n + 1)

end A069217

/-! ## A069217.P2546451185607587190

`A002385(n-a(val(n, n+1))+1)` with `a(0)=1`
-/

namespace A069217.P2546451185607587190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002385 ((n : ℤ) - a (SequenceMachineLib.valuation n (n + 1)) + 1).toNat

end

end A069217.P2546451185607587190

namespace A069217

/-- `A002385(n-a(val(n, n+1))+1)` -/
def P2546451185607587190.Spec : Prop :=
  ∀ n, P2546451185607587190.a n = A069217 (n + 1)

end A069217

/-! ## A069217.P17717203480347247994

`∩[A062687(n+1), A083137(n+1)]`
-/

namespace A069217.P17717203480347247994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069217.P17717203480347247994

namespace A069217

/-- `∩[A062687(n+1), A083137(n+1)]` -/
def P17717203480347247994.Spec : Prop :=
  ∀ n, (P17717203480347247994.a n : ℤ) = A069217 (n + 1)

end A069217

/-! ## A069217.P6508592788495095184

`∩[A071251(n+1), A084092(n+1)]`
-/

namespace A069217.P6508592788495095184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069217.P6508592788495095184

namespace A069217

/-- `∩[A071251(n+1), A084092(n+1)]` -/
def P6508592788495095184.Spec : Prop :=
  ∀ n, (P6508592788495095184.a n : ℤ) = A069217 (n + 1)

end A069217

/-! ## A069217.P12658703530570607042

`∩[A084092(n+1), A169829(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A069217

/-- `∩[A084092(n+1), A169829(n+1)]` -/
def P12658703530570607042.Spec : Prop :=
  ∀ n, (P12658703530570607042.a n : ℤ) = A069217 (n + 1)

theorem P12658703530570607042.correct : P12658703530570607042.Spec := by
  intro n
  simp only [A069217, Nat.add_sub_cancel]

end A069217

/-! ## A069217.P17809053974609059030

`∩[A083137(n+1), A192139(n+1)]`
-/

namespace A069217.P17809053974609059030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069217.P17809053974609059030

namespace A069217

/-- `∩[A083137(n+1), A192139(n+1)]` -/
def P17809053974609059030.Spec : Prop :=
  ∀ n, (P17809053974609059030.a n : ℤ) = A069217 (n + 1)

end A069217

/-! ## A069217.P11954750506610131129

`∩[A071251(n+1), A265641(n+1)]`
-/

namespace A069217.P11954750506610131129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069217.P11954750506610131129

namespace A069217

/-- `∩[A071251(n+1), A265641(n+1)]` -/
def P11954750506610131129.Spec : Prop :=
  ∀ n, (P11954750506610131129.a n : ℤ) = A069217 (n + 1)

end A069217

/-! ## A069217.P2273604783854779121

`∩[A002113(n+1), A350836(n+1)]`
-/

namespace A069217.P2273604783854779121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069217.P2273604783854779121

namespace A069217

/-- `∩[A002113(n+1), A350836(n+1)]` -/
def P2273604783854779121.Spec : Prop :=
  ∀ n, (P2273604783854779121.a n : ℤ) = A069217 (n + 1)

end A069217

/-! ## A069217.P4937523372623757430

`∩[A062687(n+1), A350836(n+1)]`
-/

namespace A069217.P4937523372623757430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069217.P4937523372623757430

namespace A069217

/-- `∩[A062687(n+1), A350836(n+1)]` -/
def P4937523372623757430.Spec : Prop :=
  ∀ n, (P4937523372623757430.a n : ℤ) = A069217 (n + 1)

end A069217

/-! ## A069217.P15987520076994420918

`∩[A084092(n+1), A350836(n+1)]`
-/

namespace A069217.P15987520076994420918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069217.P15987520076994420918

namespace A069217

/-- `∩[A084092(n+1), A350836(n+1)]` -/
def P15987520076994420918.Spec : Prop :=
  ∀ n, (P15987520076994420918.a n : ℤ) = A069217 (n + 1)

end A069217

/-! ## A069217.P17409248214561329484

`∩[A098897(n+1), A350836(n+1)]`
-/

namespace A069217.P17409248214561329484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069217.P17409248214561329484

namespace A069217

/-- `∩[A098897(n+1), A350836(n+1)]` -/
def P17409248214561329484.Spec : Prop :=
  ∀ n, (P17409248214561329484.a n : ℤ) = A069217 (n + 1)

end A069217

/-! ## A069217.P12984327049854602494

`∩[A169829(n+1), A340252(n+1)]`
-/

namespace A069217.P12984327049854602494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069217.P12984327049854602494

namespace A069217

/-- `∩[A169829(n+1), A340252(n+1)]` -/
def P12984327049854602494.Spec : Prop :=
  ∀ n, (P12984327049854602494.a n : ℤ) = A069217 (n + 1)

end A069217

/-! ## A069217.P16542758616235336939

`∩[A169829(n+1), A350836(n+1)]`
-/

namespace A069217.P16542758616235336939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069217.P16542758616235336939

namespace A069217

/-- `∩[A169829(n+1), A350836(n+1)]` -/
def P16542758616235336939.Spec : Prop :=
  ∀ n, (P16542758616235336939.a n : ℤ) = A069217 (n + 1)

end A069217

/-! ## A069217.P10930138045402781049

`∩[A324988(n+1), A350836(n+1)]`
-/

namespace A069217.P10930138045402781049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069217.P10930138045402781049

namespace A069217

/-- `∩[A324988(n+1), A350836(n+1)]` -/
def P10930138045402781049.Spec : Prop :=
  ∀ n, (P10930138045402781049.a n : ℤ) = A069217 (n + 1)

end A069217

/-! ## A069217.P17634580076654367712

`∩[A324989(n+1), A350836(n+1)]`
-/

namespace A069217.P17634580076654367712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069217.P17634580076654367712

namespace A069217

/-- `∩[A324989(n+1), A350836(n+1)]` -/
def P17634580076654367712.Spec : Prop :=
  ∀ n, (P17634580076654367712.a n : ℤ) = A069217 (n + 1)

end A069217

/-! ## A069217.P1702531488697201548

`∩[A327325(n+1), A350836(n+1)]`
-/

namespace A069217.P1702531488697201548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069217.P1702531488697201548

namespace A069217

/-- `∩[A327325(n+1), A350836(n+1)]` -/
def P1702531488697201548.Spec : Prop :=
  ∀ n, (P1702531488697201548.a n : ℤ) = A069217 (n + 1)

end A069217

/-! ## A069217.P2917982416999282849

`∪[A002385(n+1), A051470(n+1)]`
-/

namespace A069217.P2917982416999282849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051470 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A069217.P2917982416999282849

namespace A069217

/-- `∪[A002385(n+1), A051470(n+1)]` -/
def P2917982416999282849.Spec : Prop :=
  ∀ n, (P2917982416999282849.a n : ℤ) = A069217 (n + 1)

end A069217

/-! ## A069217.P1742353592331625391

`A002385(n-gcd(a(n-1), A000040(n+1))+1)` with `a(0)=1`
-/

namespace A069217.P1742353592331625391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002385 ((n : ℤ) - (Int.gcd (a (n - 1)) (A000040 (n + 1)) : ℤ) + 1).toNat

end

end A069217.P1742353592331625391

namespace A069217

/-- `A002385(n-gcd(a(n-1), A000040(n+1))+1)` -/
def P1742353592331625391.Spec : Prop :=
  ∀ n, P1742353592331625391.a n = A069217 (n + 1)

end A069217

/-! ## A069217.P3752685642572987361

`A002385(n)*A068101(a(A001222(n)))` with `a(0)=1`
-/

namespace A069217.P3752685642572987361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002385 n * A068101 (a (A001222 n).toNat).toNat

end

end A069217.P3752685642572987361

namespace A069217

/-- `A002385(n)*A068101(a(A001222(n)))` -/
def P3752685642572987361.Spec : Prop :=
  ∀ n, P3752685642572987361.a n = A069217 (n + 1)

end A069217

/-!
# A069220: Denominator of Sum_{1<=k<=n, gcd(k,n)=1} 1/k.

The programs for A069220, there is no canonical definition to state claims against.
-/

/-! ## A069220.P12704764789734783223

`A249226(n+1)/gcd(A000010(n+1), A249226(n+1))`
-/

namespace A069220.P12704764789734783223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249226 (n + 1) : ℚ) / (Int.gcd (A000010 (n + 1)) (A249226 (n + 1)) : ℚ)

end

end A069220.P12704764789734783223

/-! ## A069220.P483124882376167785

`A001783(n+1)/gcd(A001783(n+1), A056855(n+1))`
-/

namespace A069220.P483124882376167785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001783 (n + 1) : ℚ) / (Int.gcd (A001783 (n + 1)) (A056855 (n + 1)) : ℚ)

end

end A069220.P483124882376167785

/-! ## A069220.P7856291389334357811

`gcd(5, A227429(n+1))*A237873(n+1)`
-/

namespace A069220.P7856291389334357811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 5 (A227429 (n + 1)) : ℤ) * A237873 (n + 1)

end

end A069220.P7856291389334357811

/-! ## A069220.P15303564291750057763

`A038610(n+1)/A097031(A066838(n+1))`
-/

namespace A069220.P15303564291750057763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038610 (n + 1) : ℚ) / (A097031 (A066838 (n + 1)).toNat : ℚ)

end

end A069220.P15303564291750057763

/-! ## A069220.P15199795355839427646

`A038610(n+1)/A356936(A339857(n+1))`
-/

namespace A069220.P15199795355839427646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038610 (n + 1) : ℚ) / (A356936 (A339857 (n + 1)).toNat : ℚ)

end

end A069220.P15199795355839427646

/-!
# A069221: a(1) = a(2) = 1; a(n) = <>(a(n-1)) + <>(a(n-2)) for n > 2, where <>(k) denotes the concatenation of k with itself.

The programs for A069221, there is no canonical definition to state claims against.
-/

/-! ## A069221.P10058031915724726072

`A020338(a(n-1))+A020338(a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A069221.P10058031915724726072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A020338 (a (n - 1)).toNat + A020338 (a (n - 2)).toNat

end

end A069221.P10058031915724726072

/-!
# A069223: Generalized Bell numbers: row 3 of A090210.

The programs for A069223, there is no canonical definition to state claims against.
-/

/-! ## A069223.P1466268252842721281

`A090210(∑[n+2]+4)`
-/

namespace A069223.P1466268252842721281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090210 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A069223.P1466268252842721281

/-! ## A069223.P12749177076688673870

`A090210(A167614(n+1))^ceil(acot(n))`
-/

namespace A069223.P12749177076688673870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090210 (A167614 (n + 1)).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A069223.P12749177076688673870

/-!
# A069224: Numbers n such that n^2 + n + A007918(n+2) is prime.

The programs for A069224, there is no canonical definition to state claims against.
-/

/-! ## A069224.P17454287512075801110

`eq[1, A001222(A066169(n+1)+n²+n)]`
-/

namespace A069224.P17454287512075801110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A066169 (n + 1) + (n ^ 2 : ℤ) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069224.P17454287512075801110

/-!
# A069226: a(n) = gcd(n, 2^n + 1).

The programs for A069226, the canonical program `A069226.P812798564728484573` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069226 has offset 0).

The definition of A069226 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n, 2^n+1)` (program `A069226.P812798564728484573`, by `A069226.P812798564728484573.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A069226.P812798564728484573

`gcd(n, 2^n+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069226

/-- `gcd(n, 2^n+1)` -/
def P812798564728484573.Spec : Prop :=
  ∀ n, (P812798564728484573.a n : ℤ) = A069226 n

theorem P812798564728484573.correct : P812798564728484573.Spec := by
  intro n
  simp only [A069226]

end A069226

/-! ## A069226.P2385132889969996171

`A000027(gcd(n, A000051(n)))`
-/

namespace A069226.P2385132889969996171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.gcd (n : ℤ) (A000051 n))

end

end A069226.P2385132889969996171

namespace A069226

/-- `A000027(gcd(n, A000051(n)))` -/
def P2385132889969996171.Spec : Prop :=
  ∀ n, P2385132889969996171.a n = A069226 n

end A069226

/-! ## A069226.P10183884952985549186

`A010054(3*n+2)+gcd(A000051(n)+n, n²)`
-/

namespace A069226.P10183884952985549186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (3 * n + 2) + (Int.gcd (A000051 n + (n : ℤ)) (n ^ 2 : ℤ) : ℤ)

end

end A069226.P10183884952985549186

namespace A069226

/-- `A010054(3*n+2)+gcd(A000051(n)+n, n²)` -/
def P10183884952985549186.Spec : Prop :=
  ∀ n, P10183884952985549186.a n = A069226 n

end A069226

/-! ## A069226.P5109796369910961338

`A000027(gcd(A005126(n), A026741(n)))`
-/

namespace A069226.P5109796369910961338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.gcd (A005126 n) (A026741 n))

end

end A069226.P5109796369910961338

namespace A069226

/-- `A000027(gcd(A005126(n), A026741(n)))` -/
def P5109796369910961338.Spec : Prop :=
  ∀ n, P5109796369910961338.a n = A069226 n

end A069226

/-! ## A069226.P6489673778616571061

`A000027(gcd(A005843(n), A176691(n)))`
-/

namespace A069226.P6489673778616571061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.gcd (A005843 n) (A176691 n))

end

end A069226.P6489673778616571061

namespace A069226

/-- `A000027(gcd(A005843(n), A176691(n)))` -/
def P6489673778616571061.Spec : Prop :=
  ∀ n, P6489673778616571061.a n = A069226 n

end A069226

/-!
# A069227: a(1)=1, a(2)=2; a(n+2) = (a(n+1) + a(n))/b(n) where b(n) = gcd(a(n+1) + a(n), 4).

The programs for A069227, the canonical program `A069227.P3085962389755517761` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069227 has offset 1).

The definition of A069227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7628 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069227.P3085962389755517761

`(a(n-1)+a(n-2))/gcd(4, a(n-1)+a(n-2))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069227

/-- `(a(n-1)+a(n-2))/gcd(4, a(n-1)+a(n-2))` -/
def P3085962389755517761.Spec : Prop :=
  ∀ n, P3085962389755517761.a n = (A069227 (n + 1) : ℚ)

end A069227

/-! ## A069227.P9050513913167604086

`lcm(4, a(n-1)+a(n-2))/4` with `a(0)=1, a(1)=2`
-/

namespace A069227.P9050513913167604086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (Int.lcm 4 (SequenceMachineLib.roundAway (a (n - 1) + a (n - 2))) : ℚ) / 4

end

end A069227.P9050513913167604086

namespace A069227

/-- `lcm(4, a(n-1)+a(n-2))/4` -/
def P9050513913167604086.Spec : Prop :=
  ∀ n, P9050513913167604086.a n = (A069227 (n + 1) : ℚ)

end A069227

/-! ## A069227.P16917592260357754214

`A060819(a(n-1)+a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A069227.P16917592260357754214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A060819 (a (n - 1) + a (n - 2)).toNat

end

end A069227.P16917592260357754214

namespace A069227

/-- `A060819(a(n-1)+a(n-2))` -/
def P16917592260357754214.Spec : Prop :=
  ∀ n, P16917592260357754214.a n = A069227 (n + 1)

end A069227

/-! ## A069227.P13611443217412904629

`A060819(a(n-1)-floor(-a(n-2)))` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A069227.P13611443217412904629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A060819 (a (n - 1) - (-a (n - 2))).toNat

end

end A069227.P13611443217412904629

namespace A069227

/-- `A060819(a(n-1)-floor(-a(n-2)))` -/
def P13611443217412904629.Spec : Prop :=
  ∀ n, P13611443217412904629.a n = A069227 (n + 1)

end A069227

/-! ## A069227.P15895892711442831323

`A060819(a(n-1)-ceil(-a(n-2)))` with `a(0)=1, a(1)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A069227.P15895892711442831323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A060819 (a (n - 1) - (-a (n - 2))).toNat

end

end A069227.P15895892711442831323

namespace A069227

/-- `A060819(a(n-1)-ceil(-a(n-2)))` -/
def P15895892711442831323.Spec : Prop :=
  ∀ n, P15895892711442831323.a n = A069227 (n + 1)

end A069227

/-! ## A069227.P2988278499902019622

`A060819(a(n-1)-round(-a(n-2)))` with `a(0)=1, a(1)=2`

`round` is left out, it is the identity on integers.
-/

namespace A069227.P2988278499902019622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A060819 (a (n - 1) - (-a (n - 2))).toNat

end

end A069227.P2988278499902019622

namespace A069227

/-- `A060819(a(n-1)-round(-a(n-2)))` -/
def P2988278499902019622.Spec : Prop :=
  ∀ n, P2988278499902019622.a n = A069227 (n + 1)

end A069227

/-! ## A069227.P17427714932094161141

`A060819(a(n-1)-(char[1]-a(n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A069227.P17427714932094161141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A060819 (a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))).toNat

end

end A069227.P17427714932094161141

namespace A069227

/-- `A060819(a(n-1)-(char[1]-a(n-2)))` -/
def P17427714932094161141.Spec : Prop :=
  ∀ n, P17427714932094161141.a n = A069227 (n + 1)

end A069227

/-! ## A069227.P8567606113115884931

`A026741(A026741(a(n-1)+a(n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A069227.P8567606113115884931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A026741 (A026741 (a (n - 1) + a (n - 2)).toNat).toNat

end

end A069227.P8567606113115884931

namespace A069227

/-- `A026741(A026741(a(n-1)+a(n-2)))` -/
def P8567606113115884931.Spec : Prop :=
  ∀ n, P8567606113115884931.a n = A069227 (n + 1)

end A069227

/-!
# A069228: a(1)=1, a(2)=4, a(n+2)=(a(n+1)+a(n))/b(n), where b(n)=gcd(a(n+1)+a(n),4).

The programs for A069228, the canonical program `A069228.P16667992663740849314` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069228 has offset 1).

The definition of A069228 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069228.P16667992663740849314

`(a(n-1)+a(n-2))/gcd(a(n-1)+a(n-2), 4)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069228

/-- `(a(n-1)+a(n-2))/gcd(a(n-1)+a(n-2), 4)` -/
def P16667992663740849314.Spec : Prop :=
  ∀ n, P16667992663740849314.a n = (A069228 (n + 1) : ℚ)

end A069228

/-! ## A069228.P5698430344993310539

`lcm(4, a(n-1)+a(n-2))/4` with `a(0)=1, a(1)=4`
-/

namespace A069228.P5698430344993310539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  (Int.lcm 4 (SequenceMachineLib.roundAway (a (n - 1) + a (n - 2))) : ℚ) / 4

end

end A069228.P5698430344993310539

namespace A069228

/-- `lcm(4, a(n-1)+a(n-2))/4` -/
def P5698430344993310539.Spec : Prop :=
  ∀ n, P5698430344993310539.a n = (A069228 (n + 1) : ℚ)

end A069228

/-! ## A069228.P3852903642624321013

`A060819(a(n-1)+a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A069228.P3852903642624321013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A060819 (a (n - 1) + a (n - 2)).toNat

end

end A069228.P3852903642624321013

namespace A069228

/-- `A060819(a(n-1)+a(n-2))` -/
def P3852903642624321013.Spec : Prop :=
  ∀ n, P3852903642624321013.a n = A069228 (n + 1)

end A069228

/-! ## A069228.P15626887734590199715

`A060819(a(n-1)-floor(-a(n-2)))` with `a(0)=1, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A069228.P15626887734590199715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A060819 (a (n - 1) - (-a (n - 2))).toNat

end

end A069228.P15626887734590199715

namespace A069228

/-- `A060819(a(n-1)-floor(-a(n-2)))` -/
def P15626887734590199715.Spec : Prop :=
  ∀ n, P15626887734590199715.a n = A069228 (n + 1)

end A069228

/-! ## A069228.P13854983537648093951

`A060819(a(n-1)-ceil(-a(n-2)))` with `a(0)=1, a(1)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A069228.P13854983537648093951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A060819 (a (n - 1) - (-a (n - 2))).toNat

end

end A069228.P13854983537648093951

namespace A069228

/-- `A060819(a(n-1)-ceil(-a(n-2)))` -/
def P13854983537648093951.Spec : Prop :=
  ∀ n, P13854983537648093951.a n = A069228 (n + 1)

end A069228

/-! ## A069228.P4764198949341104191

`A060819(a(n-1)-round(-a(n-2)))` with `a(0)=1, a(1)=4`

`round` is left out, it is the identity on integers.
-/

namespace A069228.P4764198949341104191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A060819 (a (n - 1) - (-a (n - 2))).toNat

end

end A069228.P4764198949341104191

namespace A069228

/-- `A060819(a(n-1)-round(-a(n-2)))` -/
def P4764198949341104191.Spec : Prop :=
  ∀ n, P4764198949341104191.a n = A069228 (n + 1)

end A069228

/-! ## A069228.P8073894238113854974

`A060819(a(n-1)-(char[1]-a(n-2)))` with `a(0)=1, a(1)=4`
-/

namespace A069228.P8073894238113854974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A060819 (a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))).toNat

end

end A069228.P8073894238113854974

namespace A069228

/-- `A060819(a(n-1)-(char[1]-a(n-2)))` -/
def P8073894238113854974.Spec : Prop :=
  ∀ n, P8073894238113854974.a n = A069228 (n + 1)

end A069228

/-! ## A069228.P3887637271680841550

`A060819(2-(4/2-a(n-1)-a(n-2)))` with `a(0)=1, a(1)=4`
-/

namespace A069228.P3887637271680841550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A060819 (SequenceMachineLib.roundAway (2 - ((4 : ℚ) / 2 - (a (n - 1) : ℚ) - (a (n - 2) : ℚ)))).toNat

end

end A069228.P3887637271680841550

namespace A069228

/-- `A060819(2-(4/2-a(n-1)-a(n-2)))` -/
def P3887637271680841550.Spec : Prop :=
  ∀ n, P3887637271680841550.a n = A069228 (n + 1)

end A069228

/-! ## A069228.P14105470691712386815

`A026741(A026741(a(n-1)+a(n-2)))` with `a(0)=1, a(1)=4`
-/

namespace A069228.P14105470691712386815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A026741 (A026741 (a (n - 1) + a (n - 2)).toNat).toNat

end

end A069228.P14105470691712386815

namespace A069228

/-- `A026741(A026741(a(n-1)+a(n-2)))` -/
def P14105470691712386815.Spec : Prop :=
  ∀ n, P14105470691712386815.a n = A069228 (n + 1)

end A069228

/-! ## A069228.P2742606293354767605

`A026741(A026741(2-(4/2-a(n-1)-a(n-2))))` with `a(0)=1, a(1)=4`
-/

namespace A069228.P2742606293354767605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A026741 (A026741 (SequenceMachineLib.roundAway (2 - ((4 : ℚ) / 2 - (a (n - 1) : ℚ) - (a (n - 2) : ℚ)))).toNat).toNat

end

end A069228.P2742606293354767605

namespace A069228

/-- `A026741(A026741(2-(4/2-a(n-1)-a(n-2))))` -/
def P2742606293354767605.Spec : Prop :=
  ∀ n, P2742606293354767605.a n = A069228 (n + 1)

end A069228

/-!
# A069229: a(n) = n*(2^n + 1).

The programs for A069229, the canonical program `A069229.P9777305323734948243` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069229 has offset 0).

The definition of A069229 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(2^n+1)` (program `A069229.P9777305323734948243`, by `A069229.P9777305323734948243.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A069229.P9777305323734948243

`n*(2^n+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069229

/-- `n*(2^n+1)` -/
def P9777305323734948243.Spec : Prop :=
  ∀ n, (P9777305323734948243.a n : ℤ) = A069229 n

theorem P9777305323734948243.correct : P9777305323734948243.Spec := by
  intro n
  simp only [A069229]

end A069229

/-! ## A069229.P901403015742439653

`n+A036289(n)`
-/

namespace A069229.P901403015742439653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A036289 n

end

end A069229.P901403015742439653

namespace A069229

/-- `n+A036289(n)` -/
def P901403015742439653.Spec : Prop :=
  ∀ n, P901403015742439653.a n = A069229 n

theorem P901403015742439653.correct : P901403015742439653.Spec := by
  intro n
  simp only [A069229, Nat.add_sub_cancel, A069229.P901403015742439653.a, A069229.P9777305323734948243.a, A036289, A036289.P13525419631139213940.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069229

/-! ## A069229.P12570376269563678378

`6*a(n-1)-13*a(n-2)+12*a(n-3)-4*a(n-4)` with `a(0)=0, a(1)=3, a(2)=10, a(3)=27`
-/

namespace A069229.P12570376269563678378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 10, 27] fun n a =>
  6 * a (n - 1) - 13 * a (n - 2) + 12 * a (n - 3) - 4 * a (n - 4)

end

end A069229.P12570376269563678378

namespace A069229

/-- `6*a(n-1)-13*a(n-2)+12*a(n-3)-4*a(n-4)` -/
def P12570376269563678378.Spec : Prop :=
  ∀ n, P12570376269563678378.a n = A069229 n

theorem P12570376269563678378.correct : P12570376269563678378.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A069229, Nat.add_sub_cancel, A069229.P12570376269563678378.a, A069229.P9777305323734948243.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A069229, Nat.add_sub_cancel, A069229.P12570376269563678378.a, A069229.P9777305323734948243.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A069229

/-! ## A069229.P18179156135471259354

`or(n, n*2^n)`
-/

namespace A069229.P18179156135471259354
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n * 2 ^ n)

end

end A069229.P18179156135471259354

namespace A069229

/-- `or(n, n*2^n)` -/
def P18179156135471259354.Spec : Prop :=
  ∀ n, (P18179156135471259354.a n : ℤ) = A069229 n

end A069229

/-! ## A069229.P17089014878809328864

`xor(n, n*2^n)`
-/

namespace A069229.P17089014878809328864
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n * 2 ^ n)

end

end A069229.P17089014878809328864

namespace A069229

/-- `xor(n, n*2^n)` -/
def P17089014878809328864.Spec : Prop :=
  ∀ n, (P17089014878809328864.a n : ℤ) = A069229 n

end A069229

/-! ## A069229.P13075115175955202726

`floor(n*∑[2*a(n-1)])` with `a(0)=2, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A069229.P13075115175955202726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A069229.P13075115175955202726

namespace A069229

/-- `floor(n*∑[2*a(n-1)])` -/
def P13075115175955202726.Spec : Prop :=
  ∀ n, (P13075115175955202726.a n : ℤ) = A069229 n

end A069229

/-! ## A069229.P12054527298611593737

`n*∑[2*a(n-1)]+n` with `a(0)=1, a(1)=1`
-/

namespace A069229.P12054527298611593737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j) + n

end

end A069229.P12054527298611593737

namespace A069229

/-- `n*∑[2*a(n-1)]+n` -/
def P12054527298611593737.Spec : Prop :=
  ∀ n, (P12054527298611593737.a n : ℤ) = A069229 n

end A069229

/-! ## A069229.P17312700310447527671

`n-n*∑[2*a(n-1)]` with `a(0)=-1, a(1)=-1`
-/

namespace A069229.P17312700310447527671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, -1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A069229.P17312700310447527671

namespace A069229

/-- `n-n*∑[2*a(n-1)]` -/
def P17312700310447527671.Spec : Prop :=
  ∀ n, P17312700310447527671.a n = A069229 n

end A069229

/-! ## A069229.P15698662850576847800

`∑[∑[ogf((1-2x+2x^3)/(1-4x+4x^2))]]-1`
-/

namespace A069229.P15698662850576847800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 0, 2] [1, -4, 4] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A069229.P15698662850576847800

namespace A069229

/-- `∑[∑[ogf((1-2x+2x^3)/(1-4x+4x^2))]]-1` -/
def P15698662850576847800.Spec : Prop :=
  ∀ n, P15698662850576847800.a n = A069229 n

end A069229

/-! ## A069229.P14780101503093086207

`4*(a(n-1)-(a(n-2)+1))+n` with `a(0)=0, a(1)=3`
-/

namespace A069229.P14780101503093086207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  4 * (a (n - 1) - (a (n - 2) + 1)) + (n : ℤ)

end

end A069229.P14780101503093086207

namespace A069229

/-- `4*(a(n-1)-(a(n-2)+1))+n` -/
def P14780101503093086207.Spec : Prop :=
  ∀ n, P14780101503093086207.a n = A069229 n

theorem P14780101503093086207.correct : P14780101503093086207.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A069229, Nat.add_sub_cancel, A069229.P14780101503093086207.a, A069229.P9777305323734948243.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A069229, Nat.add_sub_cancel, A069229.P14780101503093086207.a, A069229.P9777305323734948243.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A069229

/-! ## A069229.P6152198546540158575

`n-4*(1-(a(n-1)-a(n-2)))` with `a(0)=0, a(1)=3`
-/

namespace A069229.P6152198546540158575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  (n : ℤ) - 4 * (1 - (a (n - 1) - a (n - 2)))

end

end A069229.P6152198546540158575

namespace A069229

/-- `n-4*(1-(a(n-1)-a(n-2)))` -/
def P6152198546540158575.Spec : Prop :=
  ∀ n, P6152198546540158575.a n = A069229 n

theorem P6152198546540158575.correct : P6152198546540158575.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A069229, Nat.add_sub_cancel, A069229.P6152198546540158575.a, A069229.P9777305323734948243.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A069229, Nat.add_sub_cancel, A069229.P6152198546540158575.a, A069229.P9777305323734948243.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A069229

/-! ## A069229.P13807322742661386528

`A097064(n+1)+n`
-/

namespace A069229.P13807322742661386528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097064 (n + 1) + (n : ℤ)

end

end A069229.P13807322742661386528

namespace A069229

/-- `A097064(n+1)+n` -/
def P13807322742661386528.Spec : Prop :=
  ∀ n, P13807322742661386528.a n = A069229 n

end A069229

/-! ## A069229.P6317730741726065416

`A002064(n)-1+n`
-/

namespace A069229.P6317730741726065416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002064 n - 1 + (n : ℤ)

end

end A069229.P6317730741726065416

namespace A069229

/-- `A002064(n)-1+n` -/
def P6317730741726065416.Spec : Prop :=
  ∀ n, P6317730741726065416.a n = A069229 n

theorem P6317730741726065416.correct : P6317730741726065416.Spec := by
  intro n
  simp only [A069229, Nat.add_sub_cancel, A069229.P6317730741726065416.a, A069229.P9777305323734948243.a, A002064, A002064.P16424863031535762998.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069229

/-! ## A069229.P1733589976962440778

`2*A001787(n)+n`
-/

namespace A069229.P1733589976962440778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001787 n + (n : ℤ)

end

end A069229.P1733589976962440778

namespace A069229

/-- `2*A001787(n)+n` -/
def P1733589976962440778.Spec : Prop :=
  ∀ n, P1733589976962440778.a n = A069229 n

end A069229

/-! ## A069229.P13106173697353215889

`A066524(n)+2*n`
-/

namespace A069229.P13106173697353215889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066524 n + (2 * n : ℤ)

end

end A069229.P13106173697353215889

namespace A069229

/-- `A066524(n)+2*n` -/
def P13106173697353215889.Spec : Prop :=
  ∀ n, P13106173697353215889.a n = A069229 n

theorem P13106173697353215889.correct : P13106173697353215889.Spec := by
  intro n
  simp only [A069229, Nat.add_sub_cancel, A069229.P13106173697353215889.a, A069229.P9777305323734948243.a, A066524, A066524.P7942145865934771605.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069229

/-! ## A069229.P5398352324915099448

`A093968(2*n)+n`
-/

namespace A069229.P5398352324915099448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093968 (2 * n) + (n : ℤ)

end

end A069229.P5398352324915099448

namespace A069229

/-- `A093968(2*n)+n` -/
def P5398352324915099448.Spec : Prop :=
  ∀ n, P5398352324915099448.a n = A069229 n

end A069229

/-! ## A069229.P17240838981707239258

`2*A215149(n)-n`
-/

namespace A069229.P17240838981707239258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A215149 n - (n : ℤ)

end

end A069229.P17240838981707239258

namespace A069229

/-- `2*A215149(n)-n` -/
def P17240838981707239258.Spec : Prop :=
  ∀ n, P17240838981707239258.a n = A069229 n

end A069229

/-! ## A069229.P2367235932020370682

`n*A000079(n)+n`
-/

namespace A069229.P2367235932020370682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000079 n + (n : ℤ)

end

end A069229.P2367235932020370682

namespace A069229

/-- `n*A000079(n)+n` -/
def P2367235932020370682.Spec : Prop :=
  ∀ n, P2367235932020370682.a n = A069229 n

theorem P2367235932020370682.correct : P2367235932020370682.Spec := by
  intro n
  simp only [A069229, Nat.add_sub_cancel, A069229.P2367235932020370682.a, A069229.P9777305323734948243.a, A000079, A000079.P10855139691139572931.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069229

/-! ## A069229.P11717318205953983351

`n*A155559(n)+n`
-/

namespace A069229.P11717318205953983351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A155559 n + (n : ℤ)

end

end A069229.P11717318205953983351

namespace A069229

/-- `n*A155559(n)+n` -/
def P11717318205953983351.Spec : Prop :=
  ∀ n, P11717318205953983351.a n = A069229 n

end A069229

/-!
# A069230: Number of primes p such that n < p < n + tau(n)^2 where tau(n) = A000005(n).

The programs for A069230, the canonical program `A069230.P4570500113169538551` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069230 has offset 1).

The definition of A069230 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069230.P4570500113169538551

`A000720(A000005(n+1)²+n)-A000720(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A069230

/-- `A000720(A000005(n+1)²+n)-A000720(n+1)` -/
def P4570500113169538551.Spec : Prop :=
  ∀ n, P4570500113169538551.a n = A069230 (n + 1)

theorem P4570500113169538551.correct : P4570500113169538551.Spec := by
  intro n
  simp only [A069230, Nat.add_sub_cancel]

end A069230

/-!
# A069231: Numbers n such that there are exactly 3 primes p satisfying the inequality n < p < n + tau(n)^2 where tau(n) = A000005(n).

The programs for A069231, the canonical program `A069231.P1710982746878742749` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069231 has offset 1).

The definition of A069231 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 628 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069231.P1710982746878742749

`eq[3, A069230(n+1)]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A069231

/-- `eq[3, A069230(n+1)]+1` -/
def P1710982746878742749.Spec : Prop :=
  ∀ n, (P1710982746878742749.a n : ℤ) = A069231 (n + 1)

theorem P1710982746878742749.correct : P1710982746878742749.Spec := by
  intro n
  simp only [A069231, Nat.add_sub_cancel]

end A069231

/-! ## A069231.P9091195739349657925

`eq[3, A069230(A028310(n))]`
-/

namespace A069231.P9091195739349657925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069230 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069231.P9091195739349657925

namespace A069231

/-- `eq[3, A069230(A028310(n))]` -/
def P9091195739349657925.Spec : Prop :=
  ∀ n, (P9091195739349657925.a n : ℤ) = A069231 (n + 1)

end A069231

/-! ## A069231.P3792623074796276447

`eq[3, A069230(A000007(n)+n)]`
-/

namespace A069231.P3792623074796276447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069230 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069231.P3792623074796276447

namespace A069231

/-- `eq[3, A069230(A000007(n)+n)]` -/
def P3792623074796276447.Spec : Prop :=
  ∀ n, (P3792623074796276447.a n : ℤ) = A069231 (n + 1)

end A069231

/-! ## A069231.P6385681495747733989

`eq[3, A069230(A123108(2*n))]`
-/

namespace A069231.P6385681495747733989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069230 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069231.P6385681495747733989

namespace A069231

/-- `eq[3, A069230(A123108(2*n))]` -/
def P6385681495747733989.Spec : Prop :=
  ∀ n, (P6385681495747733989.a n : ℤ) = A069231 (n + 1)

end A069231

/-! ## A069231.P3370583443261130966

`A113484(eq[3, A069230(n+1)])`
-/

namespace A069231.P3370583443261130966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A069231.P3370583443261130966

namespace A069231

/-- `A113484(eq[3, A069230(n+1)])` -/
def P3370583443261130966.Spec : Prop :=
  ∀ n, P3370583443261130966.a n = A069231 (n + 1)

end A069231

/-! ## A069231.P6895526286249480696

`eq[3, A069230(A233583(n+1))]`
-/

namespace A069231.P6895526286249480696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069230 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069231.P6895526286249480696

namespace A069231

/-- `eq[3, A069230(A233583(n+1))]` -/
def P6895526286249480696.Spec : Prop :=
  ∀ n, (P6895526286249480696.a n : ℤ) = A069231 (n + 1)

end A069231

/-!
# A069232: Numbers n such that there are exactly 2 primes p satisfying the inequality n < p < n + tau(n)^2 where tau(n) = A000005(n).

The programs for A069232, the canonical program `A069232.P17517502900018142505` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069232 has offset 1).

The definition of A069232 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1034 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069232.P17517502900018142505

`eq[2, A069230(n+1)]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A069232

/-- `eq[2, A069230(n+1)]+1` -/
def P17517502900018142505.Spec : Prop :=
  ∀ n, (P17517502900018142505.a n : ℤ) = A069232 (n + 1)

theorem P17517502900018142505.correct : P17517502900018142505.Spec := by
  intro n
  simp only [A069232, Nat.add_sub_cancel]

end A069232

/-! ## A069232.P16935638392816778358

`eq[2, A069230(A028310(n))]`
-/

namespace A069232.P16935638392816778358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069230 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069232.P16935638392816778358

namespace A069232

/-- `eq[2, A069230(A028310(n))]` -/
def P16935638392816778358.Spec : Prop :=
  ∀ n, (P16935638392816778358.a n : ℤ) = A069232 (n + 1)

end A069232

/-! ## A069232.P3372930421572177252

`A020725(eq[2, A069230(n+1)])`
-/

namespace A069232.P3372930421572177252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A069232.P3372930421572177252

namespace A069232

/-- `A020725(eq[2, A069230(n+1)])` -/
def P3372930421572177252.Spec : Prop :=
  ∀ n, P3372930421572177252.a n = A069232 (n + 1)

end A069232

/-! ## A069232.P7237688300378545634

`eq[2, A069230(A000007(n)+n)]`
-/

namespace A069232.P7237688300378545634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069230 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069232.P7237688300378545634

namespace A069232

/-- `eq[2, A069230(A000007(n)+n)]` -/
def P7237688300378545634.Spec : Prop :=
  ∀ n, (P7237688300378545634.a n : ℤ) = A069232 (n + 1)

end A069232

/-! ## A069232.P5947023501408056036

`eq[2, A069230(gcd(n, A008706(n)))]`
-/

namespace A069232.P5947023501408056036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069230 (Int.gcd (n : ℤ) (A008706 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069232.P5947023501408056036

namespace A069232

/-- `eq[2, A069230(gcd(n, A008706(n)))]` -/
def P5947023501408056036.Spec : Prop :=
  ∀ n, (P5947023501408056036.a n : ℤ) = A069232 (n + 1)

end A069232

/-! ## A069232.P9990177117689475875

`eq[2, A069230(A123108(2*n))]`
-/

namespace A069232.P9990177117689475875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069230 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069232.P9990177117689475875

namespace A069232

/-- `eq[2, A069230(A123108(2*n))]` -/
def P9990177117689475875.Spec : Prop :=
  ∀ n, (P9990177117689475875.a n : ℤ) = A069232 (n + 1)

end A069232

/-!
# A069233: Numbers k such that there is exactly 1 prime p satisfying the inequality k < p < k + tau(k)^2 where tau(k) = A000005(k).

The programs for A069233, the canonical program `A069233.P13448844956543040906` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069233 has offset 1).

The definition of A069233 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1029 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069233.P13448844956543040906

`eq[1, A069230(n+1)]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A069233

/-- `eq[1, A069230(n+1)]+1` -/
def P13448844956543040906.Spec : Prop :=
  ∀ n, (P13448844956543040906.a n : ℤ) = A069233 (n + 1)

theorem P13448844956543040906.correct : P13448844956543040906.Spec := by
  intro n
  simp only [A069233, Nat.add_sub_cancel]

end A069233

/-! ## A069233.P1206408525656244086

`eq[1, A069230(A028310(n))]`
-/

namespace A069233.P1206408525656244086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069230 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069233.P1206408525656244086

namespace A069233

/-- `eq[1, A069230(A028310(n))]` -/
def P1206408525656244086.Spec : Prop :=
  ∀ n, (P1206408525656244086.a n : ℤ) = A069233 (n + 1)

end A069233

/-! ## A069233.P4681317665954792718

`A020725(eq[1, A069230(n+1)])`
-/

namespace A069233.P4681317665954792718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A069233.P4681317665954792718

namespace A069233

/-- `A020725(eq[1, A069230(n+1)])` -/
def P4681317665954792718.Spec : Prop :=
  ∀ n, P4681317665954792718.a n = A069233 (n + 1)

end A069233

/-! ## A069233.P12484867515975412036

`A153152(eq[1, A069230(n+1)])`
-/

namespace A069233.P12484867515975412036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A069233.P12484867515975412036

namespace A069233

/-- `A153152(eq[1, A069230(n+1)])` -/
def P12484867515975412036.Spec : Prop :=
  ∀ n, P12484867515975412036.a n = A069233 (n + 1)

end A069233

/-! ## A069233.P11315738325511615386

`eq[1, A069230(A000007(n)+n)]`
-/

namespace A069233.P11315738325511615386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069230 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069233.P11315738325511615386

namespace A069233

/-- `eq[1, A069230(A000007(n)+n)]` -/
def P11315738325511615386.Spec : Prop :=
  ∀ n, (P11315738325511615386.a n : ℤ) = A069233 (n + 1)

end A069233

/-! ## A069233.P14046799196287629965

`eq[1, A069230(gcd(n, A008706(n)))]`
-/

namespace A069233.P14046799196287629965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069230 (Int.gcd (n : ℤ) (A008706 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069233.P14046799196287629965

namespace A069233

/-- `eq[1, A069230(gcd(n, A008706(n)))]` -/
def P14046799196287629965.Spec : Prop :=
  ∀ n, (P14046799196287629965.a n : ℤ) = A069233 (n + 1)

end A069233

/-! ## A069233.P12588481531685309635

`eq[1, A069230(A123108(2*n))]`
-/

namespace A069233.P12588481531685309635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069230 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069233.P12588481531685309635

namespace A069233

/-- `eq[1, A069230(A123108(2*n))]` -/
def P12588481531685309635.Spec : Prop :=
  ∀ n, (P12588481531685309635.a n : ℤ) = A069233 (n + 1)

end A069233

/-! ## A069233.P11830061152917268365

`eq[1, A069230(A233583(n+1))]`
-/

namespace A069233.P11830061152917268365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069230 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069233.P11830061152917268365

namespace A069233

/-- `eq[1, A069230(A233583(n+1))]` -/
def P11830061152917268365.Spec : Prop :=
  ∀ n, (P11830061152917268365.a n : ℤ) = A069233 (n + 1)

end A069233

/-!
# A069234: Numbers k such that the sum over the prime divisors of k equals the number of divisors of k.

The programs for A069234, there is no canonical definition to state claims against.
-/

/-! ## A069234.P12059879845259540749

`eq[A000005(n+1), A008472(n+1)]+1`
-/

namespace A069234.P12059879845259540749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A069234.P12059879845259540749

/-! ## A069234.P7173605991698837415

`eq[A023890(n+1), A065608(n+1)]+1`
-/

namespace A069234.P7173605991698837415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065608 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A069234.P7173605991698837415

/-! ## A069234.P10975638500145174417

`eq[A033273(n+1), A055631(n+1)]+1`
-/

namespace A069234.P10975638500145174417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055631 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A069234.P10975638500145174417

/-! ## A069234.P14853683312261393570

`eq[A000005(n+1)², A235323(n+1)]+1`
-/

namespace A069234.P14853683312261393570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235323 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A069234.P14853683312261393570

/-! ## A069234.P18012481152523036173

`A020725(eq[A033273(n+1), A055631(n+1)])`
-/

namespace A069234.P18012481152523036173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055631 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A069234.P18012481152523036173

/-!
# A069235: Numbers k, not perfect squares, such that the squarefree part of k divides sigma(k).

The programs for A069235, there is no canonical definition to state claims against.
-/

/-! ## A069235.P14926755799230260980

`A011775(lt[1, A274040(n+1)])`
-/

namespace A069235.P14926755799230260980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011775 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A069235.P14926755799230260980

/-! ## A069235.P4489854882795288323

`∩[A011775(n+1), A304435(n+1)]`
-/

namespace A069235.P4489854882795288323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069235.P4489854882795288323

/-! ## A069235.P4033894554191361952

`∩[A015707(n+1), A304435(n+1)]`
-/

namespace A069235.P4033894554191361952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069235.P4033894554191361952

/-!
# A069237: Composite numbers k such that tau(k) divides phi(k), where tau(k) is the number of divisors of k and phi(k) the Euler totient function.

The programs for A069237, the canonical program `A069237.P17398213092990108187` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069237 has offset 1).

The definition of A069237 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8499 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069237.P17081745225702091983

`eq[C(A020639(n+1), n)+1, A124331(n+1)]+1`
-/

namespace A069237.P17081745225702091983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 1)).toNat n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124331 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A069237.P17081745225702091983

namespace A069237

/-- `eq[C(A020639(n+1), n)+1, A124331(n+1)]+1` -/
def P17081745225702091983.Spec : Prop :=
  ∀ n, (P17081745225702091983.a n : ℤ) = A069237 (n + 1)

end A069237

/-! ## A069237.P17398213092990108187

`filter[A020491(n+1), A066247(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A069237

/-- `filter[A020491(n+1), A066247(#)]` -/
def P17398213092990108187.Spec : Prop :=
  ∀ n, P17398213092990108187.a n = A069237 (n + 1)

theorem P17398213092990108187.correct : P17398213092990108187.Spec := by
  intro n
  simp only [A069237, Nat.add_sub_cancel]

end A069237

/-! ## A069237.P6719398404563224873

`filter[A020491(n+2), A005171(#)]`
-/

namespace A069237.P6719398404563224873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020491 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A069237.P6719398404563224873

namespace A069237

/-- `filter[A020491(n+2), A005171(#)]` -/
def P6719398404563224873.Spec : Prop :=
  ∀ n, P6719398404563224873.a n = A069237 (n + 1)

end A069237

/-! ## A069237.P11321085555882316068

`∩[A002808(n+1), A020491(n+1)]`
-/

namespace A069237.P11321085555882316068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069237.P11321085555882316068

namespace A069237

/-- `∩[A002808(n+1), A020491(n+1)]` -/
def P11321085555882316068.Spec : Prop :=
  ∀ n, (P11321085555882316068.a n : ℤ) = A069237 (n + 1)

end A069237

/-! ## A069237.P3367141588229096121

`∩[A020491(n+1), A018252(n+2)]`
-/

namespace A069237.P3367141588229096121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069237.P3367141588229096121

namespace A069237

/-- `∩[A020491(n+1), A018252(n+2)]` -/
def P3367141588229096121.Spec : Prop :=
  ∀ n, (P3367141588229096121.a n : ℤ) = A069237 (n + 1)

end A069237

/-! ## A069237.P2607921584868886741

`A026239(p?[A026239(A020491(n+1))])`
-/

namespace A069237.P2607921584868886741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A020491 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A069237.P2607921584868886741

namespace A069237

/-- `A026239(p?[A026239(A020491(n+1))])` -/
def P2607921584868886741.Spec : Prop :=
  ∀ n, P2607921584868886741.a n = A069237 (n + 1)

end A069237

/-!
# A069238: Numerator of coefficient G_n defined by Sum_{ (m,m') != (0,0)} 1/(m+m'*sqrt(-2))^(2*n) = (4*w)^(2*n)*G_n/(2*n)!, where 2w is one of the periods of the associated Weierstrass P-function.

The programs for A069238, there is no canonical definition to state claims against.
-/

/-! ## A069238.P12422353884707445481

`A054930(A007054(n))`
-/

namespace A069238.P12422353884707445481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054930 (A007054 n).toNat

end

end A069238.P12422353884707445481

/-!
# A069239: Denominator of coefficient G_n defined by Sum_{ (m,m') != (0,0)} 1/(m+m'*sqrt(-2))^(2*n) = (4*w)^(2*n)*G_n/(2*n)!, where 2w is one of the periods of the associated Weierstrass P-function.

The programs for A069239, there is no canonical definition to state claims against.
-/

/-! ## A069239.P10585811170263186618

`gcd(A012003(n+2), A012009(n+1))`
-/

namespace A069239.P10585811170263186618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A012003 (n + 2)) (A012009 (n + 1))

end

end A069239.P10585811170263186618

/-! ## A069239.P16041957566823783996

`A391186(A001897(n+1))`
-/

namespace A069239.P16041957566823783996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391186 (A001897 (n + 1)).toNat

end

end A069239.P16041957566823783996

/-! ## A069239.P17670535684908458624

`A008486(A093574(n+1)^A093555(n+1))`
-/

namespace A069239.P17670535684908458624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.roundAway ((A093574 (n + 1) : ℚ) ^ (A093555 (n + 1) : ℤ))).toNat

end

end A069239.P17670535684908458624

/-! ## A069239.P12531949940198662507

`A086959(A093574(n+1)^A093555(n+1))`
-/

namespace A069239.P12531949940198662507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086959 (SequenceMachineLib.roundAway ((A093574 (n + 1) : ℚ) ^ (A093555 (n + 1) : ℤ))).toNat

end

end A069239.P12531949940198662507

/-!
# A069240: Integers arising from partial fraction decomposition of numbers G_n defined by A069238/A069239.

The programs for A069240, there is no canonical definition to state claims against.
-/

/-! ## A069240.P8377376333165399524

`A032778(A097514(n))-n`
-/

namespace A069240.P8377376333165399524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032778 (A097514 n).toNat - (n : ℤ)

end

end A069240.P8377376333165399524

/-! ## A069240.P17276398463535835728

`A191990(A362381(n))-n`
-/

namespace A069240.P17276398463535835728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191990 (A362381 n).toNat - (n : ℤ)

end

end A069240.P17276398463535835728

/-!
# A069241: Number of Hamiltonian paths in the graph on n vertices {1,...,n}, with i adjacent to j iff |i-j| <= 2.

The programs for A069241, the canonical program `A069241.P2240930364742614384` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069241 has offset 0).

The definition of A069241 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069241.P2240930364742614384

`3*a(n-1)-3*a(n-2)+2*a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=6`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069241

/-- `3*a(n-1)-3*a(n-2)+2*a(n-3)-2*a(n-4)+a(n-5)` -/
def P2240930364742614384.Spec : Prop :=
  ∀ n, P2240930364742614384.a n = A069241 n

theorem P2240930364742614384.correct : P2240930364742614384.Spec := by
  intro n
  simp only [A069241]

end A069241

/-! ## A069241.P10837232301778999439

`∑[ogf((1+x^3)/(1-x-x^3))]-n`
-/

namespace A069241.P10837232301778999439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 1] [1, -1, 0, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A069241.P10837232301778999439

namespace A069241

/-- `∑[ogf((1+x^3)/(1-x-x^3))]-n` -/
def P10837232301778999439.Spec : Prop :=
  ∀ n, P10837232301778999439.a n = A069241 n

end A069241

/-! ## A069241.P4459200965048499249

`∑[a(n-1)+a(n-3)+1]` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A069241.P4459200965048499249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n f1 =>
  f1 (n - 1) + (f1 (n - 3) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069241.P4459200965048499249

namespace A069241

/-- `∑[a(n-1)+a(n-3)+1]` -/
def P4459200965048499249.Spec : Prop :=
  ∀ n, (P4459200965048499249.a n : ℤ) = A069241 n

end A069241

/-! ## A069241.P4139749789037507444

`a(n-1)-2+a(n-3)+n` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A069241.P4139749789037507444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) - 2 + (a (n - 3) + (n : ℤ))

end

end A069241.P4139749789037507444

namespace A069241

/-- `a(n-1)-2+a(n-3)+n` -/
def P4139749789037507444.Spec : Prop :=
  ∀ n, P4139749789037507444.a n = A069241 n

end A069241

/-! ## A069241.P2141889899070147321

`a(n-1)-(2-a(n-3)-n)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A069241.P2141889899070147321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) - (2 - a (n - 3) - (n : ℤ))

end

end A069241.P2141889899070147321

namespace A069241

/-- `a(n-1)-(2-a(n-3)-n)` -/
def P2141889899070147321.Spec : Prop :=
  ∀ n, P2141889899070147321.a n = A069241 n

end A069241

/-! ## A069241.P6263953253372406942

`∑[A179070(n+1)]-n`
-/

namespace A069241.P6263953253372406942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A069241.P6263953253372406942

namespace A069241

/-- `∑[A179070(n+1)]-n` -/
def P6263953253372406942.Spec : Prop :=
  ∀ n, P6263953253372406942.a n = A069241 n

end A069241

/-! ## A069241.P13199847010744766564

`A196382(n+3)-(n+1)`
-/

namespace A069241.P13199847010744766564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196382 (n + 3) - (n + 1 : ℤ)

end

end A069241.P13199847010744766564

namespace A069241

/-- `A196382(n+3)-(n+1)` -/
def P13199847010744766564.Spec : Prop :=
  ∀ n, P13199847010744766564.a n = A069241 n

end A069241

/-! ## A069241.P32741957253259043

`A288429(n+1)-(n+3)`
-/

namespace A069241.P32741957253259043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288429 (n + 1) - (n + 3 : ℤ)

end

end A069241.P32741957253259043

namespace A069241

/-- `A288429(n+1)-(n+3)` -/
def P32741957253259043.Spec : Prop :=
  ∀ n, P32741957253259043.a n = A069241 n

end A069241

/-! ## A069241.P12376186170081986900

`A170933(n)-A020715(n)`
-/

namespace A069241.P12376186170081986900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170933 n - A020715 n

end

end A069241.P12376186170081986900

namespace A069241

/-- `A170933(n)-A020715(n)` -/
def P12376186170081986900.Spec : Prop :=
  ∀ n, P12376186170081986900.a n = A069241 n

end A069241

/-! ## A069241.P1100034937140477752

`A000930(n)+∑[A000930(n)-1]`
-/

namespace A069241.P1100034937140477752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069241.P1100034937140477752

namespace A069241

/-- `A000930(n)+∑[A000930(n)-1]` -/
def P1100034937140477752.Spec : Prop :=
  ∀ n, P1100034937140477752.a n = A069241 n

end A069241

/-! ## A069241.P15945697937013533145

`A077868(n)+∑[A078012(n)-1]`
-/

namespace A069241.P15945697937013533145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077868 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069241.P15945697937013533145

namespace A069241

/-- `A077868(n)+∑[A078012(n)-1]` -/
def P15945697937013533145.Spec : Prop :=
  ∀ n, P15945697937013533145.a n = A069241 n

end A069241

/-! ## A069241.P1260645483263747050

`∑[A277253(n)+A306276(n)-1]`
-/

namespace A069241.P1260645483263747050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277253 n + (A306276 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069241.P1260645483263747050

namespace A069241

/-- `∑[A277253(n)+A306276(n)-1]` -/
def P1260645483263747050.Spec : Prop :=
  ∀ n, P1260645483263747050.a n = A069241 n

end A069241

/-! ## A069241.P822145772277172754

`∑[A179070(n+4)%A288429(n)]`
-/

namespace A069241.P822145772277172754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179070 (n + 4)) (A288429 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069241.P822145772277172754

namespace A069241

/-- `∑[A179070(n+4)%A288429(n)]` -/
def P822145772277172754.Spec : Prop :=
  ∀ n, P822145772277172754.a n = A069241 n

end A069241

/-! ## A069241.P10943033486583427873

`A038718(n+1)+∑[A058278(n)-1]`
-/

namespace A069241.P10943033486583427873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058278 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038718 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069241.P10943033486583427873

namespace A069241

/-- `A038718(n+1)+∑[A058278(n)-1]` -/
def P10943033486583427873.Spec : Prop :=
  ∀ n, P10943033486583427873.a n = A069241 n

end A069241

/-! ## A069241.P3622198510625483862

`∑[A003410(n)-A058278(n+2)]-n`
-/

namespace A069241.P3622198510625483862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003410 n - A058278 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A069241.P3622198510625483862

namespace A069241

/-- `∑[A003410(n)-A058278(n+2)]-n` -/
def P3622198510625483862.Spec : Prop :=
  ∀ n, P3622198510625483862.a n = A069241 n

end A069241

/-! ## A069241.P15566656848856798240

`∑[record[A135851(n+1)]-A135851(n)]-n`
-/

namespace A069241.P15566656848856798240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - A135851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A069241.P15566656848856798240

namespace A069241

/-- `∑[record[A135851(n+1)]-A135851(n)]-n` -/
def P15566656848856798240.Spec : Prop :=
  ∀ n, P15566656848856798240.a n = A069241 n

end A069241

/-! ## A069241.P2376346308560139992

`ceil(A003274(n)/2)`
-/

namespace A069241.P2376346308560139992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003274 n : ℚ) / 2⌉

end

end A069241.P2376346308560139992

namespace A069241

/-- `ceil(A003274(n)/2)` -/
def P2376346308560139992.Spec : Prop :=
  ∀ n, P2376346308560139992.a n = A069241 n

end A069241

/-! ## A069241.P7154322710694961557

`Δ[A170933(n+2)]-(n+2)`
-/

namespace A069241.P7154322710694961557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170933 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 2 : ℤ)

end

end A069241.P7154322710694961557

namespace A069241

/-- `Δ[A170933(n+2)]-(n+2)` -/
def P7154322710694961557.Spec : Prop :=
  ∀ n, P7154322710694961557.a n = A069241 n

end A069241

/-! ## A069241.P14793086645696717200

`A003274(n)/gcd(2, A302118(n))`
-/

namespace A069241.P14793086645696717200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003274 n : ℚ) / (Int.gcd 2 (A302118 n) : ℚ)

end

end A069241.P14793086645696717200

namespace A069241

/-- `A003274(n)/gcd(2, A302118(n))` -/
def P14793086645696717200.Spec : Prop :=
  ∀ n, P14793086645696717200.a n = (A069241 n : ℚ)

end A069241

/-!
# A069246: Primes which yield a prime whenever a 1 is inserted anywhere in them (including at the beginning or end).

The programs for A069246, there is no canonical definition to state claims against.
-/

/-! ## A069246.P1191766791859959887

`p?[A068679(n+1)]`
-/

namespace A069246.P1191766791859959887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069246.P1191766791859959887

/-! ## A069246.P16727778954561987030

`p?[record[A068679(A109785(n))]]`
-/

namespace A069246.P16727778954561987030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068679 (A109785 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069246.P16727778954561987030

/-! ## A069246.P3082230929235213774

`p?[record[A068679(A126759(n))]]`
-/

namespace A069246.P3082230929235213774
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068679 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069246.P3082230929235213774

/-! ## A069246.P13874126500832020754

`p?[record[A068679(A293428(n))]]`
-/

namespace A069246.P13874126500832020754
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068679 (A293428 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069246.P13874126500832020754

/-! ## A069246.P12668153852667875264

`p?[record[A068679(A324347(n))]]`
-/

namespace A069246.P12668153852667875264
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068679 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069246.P12668153852667875264

/-!
# A069247: Expansion of Molien series for Clifford group for the Quebbemann codes over F_8.

The programs for A069247, there is no canonical definition to state claims against.
-/

/-! ## A069247.P1790019817796006011

`A205793(60*a(n-2)+3)` with `a(0)=1, a(1)=2, a(2)=10`
-/

namespace A069247.P1790019817796006011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 10] fun n a =>
  A205793 (60 * a (n - 2) + 3).toNat

end

end A069247.P1790019817796006011

/-!
# A069248: Number of positive divisors of n themselves divisible by largest prime that divides n.

The programs for A069248, the canonical program `A069248.P9014950504553219046` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069248 has offset 1).

The definition of A069248 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9593 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069248.P4801183018460244632

`A069157(A130065(n+1))`
-/

namespace A069248.P4801183018460244632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (A130065 (n + 1)).toNat

end

end A069248.P4801183018460244632

namespace A069248

/-- `A069157(A130065(n+1))` -/
def P4801183018460244632.Spec : Prop :=
  ∀ n, P4801183018460244632.a n = A069248 (n + 1)

end A069248

/-! ## A069248.P13244599010807010033

`A000005(A052126(n+1))%(n+1)`
-/

namespace A069248.P13244599010807010033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A052126 (n + 1)).toNat) (n + 1 : ℤ)

end

end A069248.P13244599010807010033

namespace A069248

/-- `A000005(A052126(n+1))%(n+1)` -/
def P13244599010807010033.Spec : Prop :=
  ∀ n, P13244599010807010033.a n = A069248 (n + 1)

end A069248

/-! ## A069248.P11346125056193153742

`A000005((n+1)/A006530(n+1))%(n+1)`
-/

namespace A069248.P11346125056193153742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat) (n + 1 : ℤ)

end

end A069248.P11346125056193153742

namespace A069248

/-- `A000005((n+1)/A006530(n+1))%(n+1)` -/
def P11346125056193153742.Spec : Prop :=
  ∀ n, P11346125056193153742.a n = A069248 (n + 1)

end A069248

/-! ## A069248.P11340905590394346817

`A000005(A052126(n+1))-A000007(n)`
-/

namespace A069248.P11340905590394346817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A052126 (n + 1)).toNat - A000007 n

end

end A069248.P11340905590394346817

namespace A069248

/-- `A000005(A052126(n+1))-A000007(n)` -/
def P11340905590394346817.Spec : Prop :=
  ∀ n, P11340905590394346817.a n = A069248 (n + 1)

end A069248

/-! ## A069248.P12368264020522028083

`A183063(A103517(n)/A006530(n+1))`
-/

namespace A069248.P12368264020522028083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (SequenceMachineLib.roundAway ((A103517 n : ℚ) / (A006530 (n + 1) : ℚ))).toNat

end

end A069248.P12368264020522028083

namespace A069248

/-- `A183063(A103517(n)/A006530(n+1))` -/
def P12368264020522028083.Spec : Prop :=
  ∀ n, P12368264020522028083.a n = A069248 (n + 1)

end A069248

/-! ## A069248.P8213277728256535441

`A000005(n+1)-A000005(A051119(n+1))`
-/

namespace A069248.P8213277728256535441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A000005 (A051119 (n + 1)).toNat

end

end A069248.P8213277728256535441

namespace A069248

/-- `A000005(n+1)-A000005(A051119(n+1))` -/
def P8213277728256535441.Spec : Prop :=
  ∀ n, P8213277728256535441.a n = A069248 (n + 1)

end A069248

/-! ## A069248.P2595812043596432163

`lcm(A000005(A052126(n+1)), A071178(n+1))`
-/

namespace A069248.P2595812043596432163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (A052126 (n + 1)).toNat) (A071178 (n + 1))

end

end A069248.P2595812043596432163

namespace A069248

/-- `lcm(A000005(A052126(n+1)), A071178(n+1))` -/
def P2595812043596432163.Spec : Prop :=
  ∀ n, (P2595812043596432163.a n : ℤ) = A069248 (n + 1)

end A069248

/-! ## A069248.P14364555802079443665

`A000005(A052126(n+1))-A010051(2*(n+1))`
-/

namespace A069248.P14364555802079443665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A052126 (n + 1)).toNat - A010051 (2 * (n + 1))

end

end A069248.P14364555802079443665

namespace A069248

/-- `A000005(A052126(n+1))-A010051(2*(n+1))` -/
def P14364555802079443665.Spec : Prop :=
  ∀ n, P14364555802079443665.a n = A069248 (n + 1)

end A069248

/-! ## A069248.P15152784661624398720

`(A114003(n+1)-A114003(A051119(n+1)))/2`
-/

namespace A069248.P15152784661624398720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114003 (n + 1) - A114003 (A051119 (n + 1)).toNat : ℚ) / 2

end

end A069248.P15152784661624398720

namespace A069248

/-- `(A114003(n+1)-A114003(A051119(n+1)))/2` -/
def P15152784661624398720.Spec : Prop :=
  ∀ n, P15152784661624398720.a n = (A069248 (n + 1) : ℚ)

end A069248

/-! ## A069248.P5182756103100668295

`(A000005(n+1)-A000005(A052126(n+1)))*A071178(n+1)`
-/

namespace A069248.P5182756103100668295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) - A000005 (A052126 (n + 1)).toNat) * A071178 (n + 1)

end

end A069248.P5182756103100668295

namespace A069248

/-- `(A000005(n+1)-A000005(A052126(n+1)))*A071178(n+1)` -/
def P5182756103100668295.Spec : Prop :=
  ∀ n, P5182756103100668295.a n = A069248 (n + 1)

end A069248

/-! ## A069248.P10502259250294301173

`A000005(n+1)-A000005(n+1)/A000005(A053585(n+1))`
-/

namespace A069248.P10502259250294301173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) - (A000005 (n + 1) : ℚ) / (A000005 (A053585 (n + 1)).toNat : ℚ)

end

end A069248.P10502259250294301173

namespace A069248

/-- `A000005(n+1)-A000005(n+1)/A000005(A053585(n+1))` -/
def P10502259250294301173.Spec : Prop :=
  ∀ n, P10502259250294301173.a n = (A069248 (n + 1) : ℚ)

end A069248

/-! ## A069248.P9014950504553219046

`A032741(A052126(n+1))+A001222(A008578(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A069248

/-- `A032741(A052126(n+1))+A001222(A008578(n+1))` -/
def P9014950504553219046.Spec : Prop :=
  ∀ n, P9014950504553219046.a n = A069248 (n + 1)

theorem P9014950504553219046.correct : P9014950504553219046.Spec := by
  intro n
  simp only [A069248, Nat.add_sub_cancel]

end A069248

/-! ## A069248.P9246485894320620851

`A056924(A253550(n+1))`
-/

namespace A069248.P9246485894320620851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (A253550 (n + 1)).toNat

end

end A069248.P9246485894320620851

namespace A069248

/-- `A056924(A253550(n+1))` -/
def P9246485894320620851.Spec : Prop :=
  ∀ n, P9246485894320620851.a n = A069248 (n + 1)

end A069248

/-! ## A069248.P14839025976711030475

`A183063(A052126(2*(n+1)))`
-/

namespace A069248.P14839025976711030475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A052126 (2 * (n + 1))).toNat

end

end A069248.P14839025976711030475

namespace A069248

/-- `A183063(A052126(2*(n+1)))` -/
def P14839025976711030475.Spec : Prop :=
  ∀ n, P14839025976711030475.a n = A069248 (n + 1)

end A069248

/-! ## A069248.P13553237623934481225

`A293234(A342768(n+1))`
-/

namespace A069248.P13553237623934481225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293234 (A342768 (n + 1)).toNat

end

end A069248.P13553237623934481225

namespace A069248

/-- `A293234(A342768(n+1))` -/
def P13553237623934481225.Spec : Prop :=
  ∀ n, P13553237623934481225.a n = A069248 (n + 1)

end A069248

/-! ## A069248.P6566276305009269015

`A293234(A129597(n+1))`
-/

namespace A069248.P6566276305009269015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293234 (A129597 (n + 1)).toNat

end

end A069248.P6566276305009269015

namespace A069248

/-- `A293234(A129597(n+1))` -/
def P6566276305009269015.Spec : Prop :=
  ∀ n, P6566276305009269015.a n = A069248 (n + 1)

end A069248

/-! ## A069248.P1913703918478534617

`A069157(A069799(n+1))`
-/

namespace A069248.P1913703918478534617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (A069799 (n + 1)).toNat

end

end A069248.P1913703918478534617

namespace A069248

/-- `A069157(A069799(n+1))` -/
def P1913703918478534617.Spec : Prop :=
  ∀ n, P1913703918478534617.a n = A069248 (n + 1)

end A069248

/-! ## A069248.P8419350285564159118

`A069157(A105119(n+1))`
-/

namespace A069248.P8419350285564159118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (A105119 (n + 1)).toNat

end

end A069248.P8419350285564159118

namespace A069248

/-- `A069157(A105119(n+1))` -/
def P8419350285564159118.Spec : Prop :=
  ∀ n, P8419350285564159118.a n = A069248 (n + 1)

end A069248

/-! ## A069248.P9279602104677367831

`A069157(A137502(n+1))`
-/

namespace A069248.P9279602104677367831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (A137502 (n + 1)).toNat

end

end A069248.P9279602104677367831

namespace A069248

/-- `A069157(A137502(n+1))` -/
def P9279602104677367831.Spec : Prop :=
  ∀ n, P9279602104677367831.a n = A069248 (n + 1)

end A069248

/-! ## A069248.P18277652929593693930

`A069157(A293448(n+1))`
-/

namespace A069248.P18277652929593693930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (A293448 (n + 1)).toNat

end

end A069248.P18277652929593693930

namespace A069248

/-- `A069157(A293448(n+1))` -/
def P18277652929593693930.Spec : Prop :=
  ∀ n, P18277652929593693930.a n = A069248 (n + 1)

end A069248

/-!
# A069249: a(n) = n^2 - phi(n)*sigma(n).

The programs for A069249, the canonical program `A069249.P7873536691773802356` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069249 has offset 1).

The definition of A069249 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)²-A000010(n+1)*A000203(n+1)` (program `A069249.P7873536691773802356`, by `A069249.P7873536691773802356.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A069249.P10807043676143783363

`(n+1)²-A062354(n+1)`
-/

namespace A069249.P10807043676143783363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A062354 (n + 1)

end

end A069249.P10807043676143783363

namespace A069249

/-- `(n+1)²-A062354(n+1)` -/
def P10807043676143783363.Spec : Prop :=
  ∀ n, P10807043676143783363.a n = A069249 (n + 1)

theorem P10807043676143783363.correct : P10807043676143783363.Spec := by
  intro n
  simp only [A069249, Nat.add_sub_cancel, A069249.P10807043676143783363.a, A069249.P7873536691773802356.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A062354, A062354.P12090896162141185075.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069249

/-! ## A069249.P7873536691773802356

`(n+1)²-A000010(n+1)*A000203(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A069249

/-- `(n+1)²-A000010(n+1)*A000203(n+1)` -/
def P7873536691773802356.Spec : Prop :=
  ∀ n, P7873536691773802356.a n = A069249 (n + 1)

theorem P7873536691773802356.correct : P7873536691773802356.Spec := by
  intro n
  simp only [A069249, Nat.add_sub_cancel]

end A069249

/-! ## A069249.P9099457345769103008

`A324331(n+1)+Δ[n²]`
-/

namespace A069249.P9099457345769103008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324331 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A069249.P9099457345769103008

namespace A069249

/-- `A324331(n+1)+Δ[n²]` -/
def P9099457345769103008.Spec : Prop :=
  ∀ n, P9099457345769103008.a n = A069249 (n + 1)

theorem P9099457345769103008.correct : P9099457345769103008.Spec := by
  intro n
  simp only [A069249, Nat.add_sub_cancel, A069249.P9099457345769103008.f1, A069249.P9099457345769103008.a, A069249.P7873536691773802356.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A324331, A324331.P7732218609313798886.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069249

/-! ## A069249.P140289100798072662

`A053650(n+1)-A007517(n+1)`
-/

namespace A069249.P140289100798072662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053650 (n + 1) - A007517 (n + 1)

end

end A069249.P140289100798072662

namespace A069249

/-- `A053650(n+1)-A007517(n+1)` -/
def P140289100798072662.Spec : Prop :=
  ∀ n, P140289100798072662.a n = A069249 (n + 1)

theorem P140289100798072662.correct : P140289100798072662.Spec := by
  intro n
  simp only [A069249, Nat.add_sub_cancel, A069249.P140289100798072662.a, A069249.P7873536691773802356.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007517, A007517.P15231311022357601297.a, A053650, A053650.P6469571087341810863.a, A003557, A003557.P6364735403900941810.a, A051953, A051953.P11179276897610979764.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069249

/-! ## A069249.P2111237707810650139

`A067558(n+1)-A072780(n+1)`
-/

namespace A069249.P2111237707810650139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067558 (n + 1) - A072780 (n + 1)

end

end A069249.P2111237707810650139

namespace A069249

/-- `A067558(n+1)-A072780(n+1)` -/
def P2111237707810650139.Spec : Prop :=
  ∀ n, P2111237707810650139.a n = A069249 (n + 1)

theorem P2111237707810650139.correct : P2111237707810650139.Spec := by
  intro n
  simp only [A069249, Nat.add_sub_cancel, A069249.P2111237707810650139.a, A069249.P7873536691773802356.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A067558, A067558.P16712056113848255202.a, A072780, A072780.P8498790961619866691.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069249

/-! ## A069249.P15602932380903953227

`A000027(n+1)²%A062354(n+1)`
-/

namespace A069249.P15602932380903953227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1) ^ 2) (A062354 (n + 1))

end

end A069249.P15602932380903953227

namespace A069249

/-- `A000027(n+1)²%A062354(n+1)` -/
def P15602932380903953227.Spec : Prop :=
  ∀ n, P15602932380903953227.a n = A069249 (n + 1)

end A069249

/-! ## A069249.P12326742953635175081

`A000217(n+1)+A000217(n)-A062354(n+1)`
-/

namespace A069249.P12326742953635175081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A000217 n - A062354 (n + 1))

end

end A069249.P12326742953635175081

namespace A069249

/-- `A000217(n+1)+A000217(n)-A062354(n+1)` -/
def P12326742953635175081.Spec : Prop :=
  ∀ n, P12326742953635175081.a n = A069249 (n + 1)

theorem P12326742953635175081.correct : P12326742953635175081.Spec := by
  intro n
  simp only [A069249, Nat.add_sub_cancel, A069249.P12326742953635175081.a, A069249.P7873536691773802356.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000217, A000217.P10269402890581615239.a, A062354, A062354.P12090896162141185075.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A069249

/-! ## A069249.P10622039259606652715

`A051953(n+1)²-A000010(n+1)*A051709(n+1)`
-/

namespace A069249.P10622039259606652715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) ^ 2 - A000010 (n + 1) * A051709 (n + 1)

end

end A069249.P10622039259606652715

namespace A069249

/-- `A051953(n+1)²-A000010(n+1)*A051709(n+1)` -/
def P10622039259606652715.Spec : Prop :=
  ∀ n, P10622039259606652715.a n = A069249 (n + 1)

theorem P10622039259606652715.correct : P10622039259606652715.Spec := by
  intro n
  simp only [A069249, Nat.add_sub_cancel, A069249.P10622039259606652715.a, A069249.P7873536691773802356.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A051709, A051709.P8066883811744733228.a, A051953, A051953.P11179276897610979764.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069249

/-! ## A069249.P6228559513403141486

`(n+1)²-A152958((n+1)²)`
-/

namespace A069249.P6228559513403141486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A152958 ((n + 1) ^ 2)

end

end A069249.P6228559513403141486

namespace A069249

/-- `(n+1)²-A152958((n+1)²)` -/
def P6228559513403141486.Spec : Prop :=
  ∀ n, P6228559513403141486.a n = A069249 (n + 1)

end A069249

/-!
# A069250: Sum of the reversals of the proper divisors of n.

The programs for A069250, there is no canonical definition to state claims against.
-/

/-! ## A069250.P7676498726198070172

`A069192(n+1)-A004086(n+1)`
-/

namespace A069250.P7676498726198070172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069192 (n + 1) - A004086 (n + 1)

end

end A069250.P7676498726198070172

/-! ## A069250.P6741308559430097018

`∑{d}[n+1, A004086(#%(n+1))]`
-/

namespace A069250.P6741308559430097018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A004086 (d % (n + 1))

end

end A069250.P6741308559430097018

/-! ## A069250.P7302110136561460583

`∑{d}[n+1, A004086(#)]-A004086(n+1)`
-/

namespace A069250.P7302110136561460583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A004086 d - A004086 (n + 1)

end

end A069250.P7302110136561460583

/-! ## A069250.P13913752169206037014

`∑{d}[n+1, A069192(#)*A157658((n+1)/#)]`
-/

namespace A069250.P13913752169206037014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069192 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069250.P13913752169206037014

/-! ## A069250.P9858504594020226155

`A069192(n+1)-A135020(2*(n+1))`
-/

namespace A069250.P9858504594020226155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069192 (n + 1) - A135020 (2 * (n + 1))

end

end A069250.P9858504594020226155

/-!
# A069251: Number of basis partitions of n+64 with Durfee square size 8.

The programs for A069251, there is no canonical definition to state claims against.
-/

/-! ## A069251.P18443810829120836701

`A316723(A056000(n+5)+1)`
-/

namespace A069251.P18443810829120836701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A056000 (n + 5) + 1).toNat

end

end A069251.P18443810829120836701

/-! ## A069251.P5228185278889154332

`A316723(A055999(n+6)-3)`
-/

namespace A069251.P5228185278889154332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A055999 (n + 6) - 3).toNat

end

end A069251.P5228185278889154332

/-! ## A069251.P5513689748318941517

`A316723(A052905(n+6)-4)`
-/

namespace A069251.P5513689748318941517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A052905 (n + 6) - 4).toNat

end

end A069251.P5513689748318941517

/-! ## A069251.P7516579872546231934

`A316723(A134227(n+7)-3)`
-/

namespace A069251.P7516579872546231934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A134227 (n + 7) - 3).toNat

end

end A069251.P7516579872546231934

/-! ## A069251.P16035820504998961766

`A316723(A046691(n+7)-5)`
-/

namespace A069251.P16035820504998961766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A046691 (n + 7) - 5).toNat

end

end A069251.P16035820504998961766

/-! ## A069251.P6486522196849359499

`A316723(A027379(n+7)-6)`
-/

namespace A069251.P6486522196849359499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A027379 (n + 7) - 6).toNat

end

end A069251.P6486522196849359499

/-! ## A069251.P377679482367810675

`A316723(A056119(n+3)+12)`
-/

namespace A069251.P377679482367810675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A056119 (n + 3) + 12).toNat

end

end A069251.P377679482367810675

/-! ## A069251.P8266561293019854343

`A316723(A000217(n+9)-9)`
-/

namespace A069251.P8266561293019854343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A000217 (n + 9) - 9).toNat

end

end A069251.P8266561293019854343

/-! ## A069251.P12912742760372024355

`A316723(A000124(n+9)-10)`
-/

namespace A069251.P12912742760372024355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A000124 (n + 9) - 10).toNat

end

end A069251.P12912742760372024355

/-! ## A069251.P7342551530198731447

`A316723(A179865(n+10)-9)`
-/

namespace A069251.P7342551530198731447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A179865 (n + 10) - 9).toNat

end

end A069251.P7342551530198731447

/-! ## A069251.P8027634243011427554

`A316723(A000096(n+7)+n+1)`
-/

namespace A069251.P8027634243011427554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A000096 (n + 7) + (n + 1 : ℤ)).toNat

end

end A069251.P8027634243011427554

/-! ## A069251.P13647700976724115334

`A316723(n+6+A055999(n+5))`
-/

namespace A069251.P13647700976724115334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 ((n + 6 : ℤ) + A055999 (n + 5)).toNat

end

end A069251.P13647700976724115334

/-!
# A069252: Number of basis partitions of n+81 with Durfee square size 9.

The programs for A069252, there is no canonical definition to state claims against.
-/

/-! ## A069252.P15107122297901244322

`A316723(A056000(n+6))`
-/

namespace A069252.P15107122297901244322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A056000 (n + 6)).toNat

end

end A069252.P15107122297901244322

/-! ## A069252.P2835575425657829422

`A316723(A051936(n+10)-1)`
-/

namespace A069252.P2835575425657829422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A051936 (n + 10) - 1).toNat

end

end A069252.P2835575425657829422

/-! ## A069252.P5525971776742060121

`A316723(A055999(n+7)-4)`
-/

namespace A069252.P5525971776742060121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A055999 (n + 7) - 4).toNat

end

end A069252.P5525971776742060121

/-! ## A069252.P14894754470982588712

`A316723(A052905(n+7)-5)`
-/

namespace A069252.P14894754470982588712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A052905 (n + 7) - 5).toNat

end

end A069252.P14894754470982588712

/-! ## A069252.P9850572421079712650

`A316723(A134227(n+8)-4)`
-/

namespace A069252.P9850572421079712650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A134227 (n + 8) - 4).toNat

end

end A069252.P9850572421079712650

/-! ## A069252.P17291137721935568402

`A316723(A000217(n+10)-10)`
-/

namespace A069252.P17291137721935568402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A000217 (n + 10) - 10).toNat

end

end A069252.P17291137721935568402

/-! ## A069252.P18216857096796762649

`A316723(A000124(n+10)-11)`
-/

namespace A069252.P18216857096796762649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A000124 (n + 10) - 11).toNat

end

end A069252.P18216857096796762649

/-! ## A069252.P12506190182776606830

`A316723(A179865(n+11)-10)`
-/

namespace A069252.P12506190182776606830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A179865 (n + 11) - 10).toNat

end

end A069252.P12506190182776606830

/-! ## A069252.P262889097611052337

`A316723(A167499(n+9)-15)`
-/

namespace A069252.P262889097611052337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A167499 (n + 9) - 15).toNat

end

end A069252.P262889097611052337

/-! ## A069252.P14209240278465577606

`A316723(n+6+A055999(n+6))`
-/

namespace A069252.P14209240278465577606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 ((n + 6 : ℤ) + A055999 (n + 6)).toNat

end

end A069252.P14209240278465577606

/-!
# A069253: Number of basis partitions of n+100 with Durfee square size 10.

The programs for A069253, there is no canonical definition to state claims against.
-/

/-! ## A069253.P7289105968503411368

`A316723(A183905(n+8))`
-/

namespace A069253.P7289105968503411368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A183905 (n + 8)).toNat

end

end A069253.P7289105968503411368

/-! ## A069253.P5693261611622494784

`A316723(A056121(n+4)+17)`
-/

namespace A069253.P5693261611622494784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A056121 (n + 4) + 17).toNat

end

end A069253.P5693261611622494784

/-! ## A069253.P2630109616919967599

`A316723(A000217(n+11)-11)`
-/

namespace A069253.P2630109616919967599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A000217 (n + 11) - 11).toNat

end

end A069253.P2630109616919967599

/-! ## A069253.P2081065259269260122

`A316723(A161680(n+12)-11)`
-/

namespace A069253.P2081065259269260122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A161680 (n + 12) - 11).toNat

end

end A069253.P2081065259269260122

/-! ## A069253.P7807461285537129659

`A316723(Δ[A000292(n+10)]-11)`
-/

namespace A069253.P7807461285537129659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (f1 (n + 1) - f1 n - 11).toNat

end

end A069253.P7807461285537129659

/-! ## A069253.P4815517470321053191

`A316723(n+6+A055999(n+7))`
-/

namespace A069253.P4815517470321053191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 ((n + 6 : ℤ) + A055999 (n + 7)).toNat

end

end A069253.P4815517470321053191

/-! ## A069253.P17539892678859079713

`A316723((n+9)²-A167499(n+5))`
-/

namespace A069253.P17539892678859079713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (((n + 9) ^ 2 : ℤ) - A167499 (n + 5)).toNat

end

end A069253.P17539892678859079713

/-! ## A069253.P13914841621342238959

`A316723(Δ[n²]+A000124(n+9)+8)`
-/

namespace A069253.P13914841621342238959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A000124 (n + 9) + 8)).toNat

end

end A069253.P13914841621342238959

/-! ## A069253.P2770134960627353384

`A316723(A179865(n+10)+A005843(n+5))`
-/

namespace A069253.P2770134960627353384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A179865 (n + 10) + A005843 (n + 5)).toNat

end

end A069253.P2770134960627353384

/-!
# A069254: k/10 when gcd(k, 2^k+1) = 5.

The programs for A069254, there is no canonical definition to state claims against.
-/

/-! ## A069254.P16590000219044539338

`record[A123901(A302255(n))%A199424(n+1)]`
-/

namespace A069254.P16590000219044539338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123901 (A302255 n).toNat) (A199424 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069254.P16590000219044539338

/-! ## A069254.P8048983677405276104

`A045572(∑[A193238(A260218(n+1))])`
-/

namespace A069254.P8048983677405276104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A260218 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A069254.P8048983677405276104

/-! ## A069254.P3285345607672800890

`lt[A134564(A120680(n+1)), A256480(n)]`
-/

namespace A069254.P3285345607672800890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134564 (A120680 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256480 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A069254.P3285345607672800890

/-! ## A069254.P7454144867159991703

`lt[A270390(A248601(n+1)), A256480(n)]`
-/

namespace A069254.P7454144867159991703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270390 (A248601 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256480 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A069254.P7454144867159991703

/-! ## A069254.P17679447300679925291

`eq[A015899(A133310(n)), A186436(n+1)]`
-/

namespace A069254.P17679447300679925291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015899 (A133310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186436 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069254.P17679447300679925291

/-!
# A069255: 

The programs for A069255, there is no canonical definition to state claims against.
-/

/-! ## A069255.P12246958455221025171

`A007583(A046092(n))/A007583(n)`
-/

namespace A069255.P12246958455221025171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007583 (A046092 n).toNat : ℚ) / (A007583 n : ℚ)

end

end A069255.P12246958455221025171

/-!
# A069256: Size of the Sylow 2-subgroup of the group GL_2(Z_n): maximal power of 2 that divides A000252(n).

The programs for A069256, the canonical program `A069256.P11047273582001152722` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069256 has offset 1).

The definition of A069256 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069256.P3817423011294822069

`2^val(A000252(n+1), 2)`
-/

namespace A069256.P3817423011294822069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (A000252 (n + 1)).toNat 2

end

end A069256.P3817423011294822069

namespace A069256

/-- `2^val(A000252(n+1), 2)` -/
def P3817423011294822069.Spec : Prop :=
  ∀ n, (P3817423011294822069.a n : ℤ) = A069256 (n + 1)

end A069256

/-! ## A069256.P11047273582001152722

`A000079(val(A000252(n+1), 2))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A069256

/-- `A000079(val(A000252(n+1), 2))` -/
def P11047273582001152722.Spec : Prop :=
  ∀ n, P11047273582001152722.a n = A069256 (n + 1)

theorem P11047273582001152722.correct : P11047273582001152722.Spec := by
  intro n
  simp only [A069256, Nat.add_sub_cancel]

end A069256

/-! ## A069256.P6496018242056856646

`A016116(val(A000252(n+1)², 2))`
-/

namespace A069256.P6496018242056856646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (SequenceMachineLib.valuation (A000252 (n + 1) ^ 2).toNat 2)

end

end A069256.P6496018242056856646

namespace A069256

/-- `A016116(val(A000252(n+1)², 2))` -/
def P6496018242056856646.Spec : Prop :=
  ∀ n, P6496018242056856646.a n = A069256 (n + 1)

end A069256

/-! ## A069256.P13757319059261534067

`A000225(val(A000252(n+1), 2))+1`
-/

namespace A069256.P13757319059261534067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (SequenceMachineLib.valuation (A000252 (n + 1)).toNat 2) + 1

end

end A069256.P13757319059261534067

namespace A069256

/-- `A000225(val(A000252(n+1), 2))+1` -/
def P13757319059261534067.Spec : Prop :=
  ∀ n, P13757319059261534067.a n = A069256 (n + 1)

theorem P13757319059261534067.correct : P13757319059261534067.Spec := by
  intro n
  simp only [A069256, Nat.add_sub_cancel, A069256.P13757319059261534067.a, A069256.P11047273582001152722.a, A000079, A000079.P10855139691139572931.a, A000225, A000225.P6535533121115206393.a, A000252, A000252.P10509989210323719014.a, A000010, A000010.P4673923239450215316.a, A000056, A000056.P18166110637332708364.a, A003557, A003557.P6364735403900941810.a, A007434, A007434.P3432859153295839493.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A001615, A001615.P12078511981713404634.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069256

/-! ## A069256.P8684586503089298864

`A011782(val(A000252(n+1), 2)+1)`
-/

namespace A069256.P8684586503089298864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (SequenceMachineLib.valuation (A000252 (n + 1)).toNat 2 + 1)

end

end A069256.P8684586503089298864

namespace A069256

/-- `A011782(val(A000252(n+1), 2)+1)` -/
def P8684586503089298864.Spec : Prop :=
  ∀ n, P8684586503089298864.a n = A069256 (n + 1)

end A069256

/-! ## A069256.P3034956454975456957

`A000051(val(A000252(n+1), 2))-1`
-/

namespace A069256.P3034956454975456957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (SequenceMachineLib.valuation (A000252 (n + 1)).toNat 2) - 1

end

end A069256.P3034956454975456957

namespace A069256

/-- `A000051(val(A000252(n+1), 2))-1` -/
def P3034956454975456957.Spec : Prop :=
  ∀ n, P3034956454975456957.a n = A069256 (n + 1)

theorem P3034956454975456957.correct : P3034956454975456957.Spec := by
  intro n
  simp only [A069256, Nat.add_sub_cancel, A069256.P3034956454975456957.a, A069256.P11047273582001152722.a, A000051, A000051.P14067217022188782580.a, A000079, A000079.P10855139691139572931.a, A000252, A000252.P10509989210323719014.a, A000010, A000010.P4673923239450215316.a, A000056, A000056.P18166110637332708364.a, A003557, A003557.P6364735403900941810.a, A007434, A007434.P3432859153295839493.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A001615, A001615.P12078511981713404634.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069256

/-! ## A069256.P4092656318251182911

`A016116(2*val(A000252(n+1), 2))`
-/

namespace A069256.P4092656318251182911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * SequenceMachineLib.valuation (A000252 (n + 1)).toNat 2)

end

end A069256.P4092656318251182911

namespace A069256

/-- `A016116(2*val(A000252(n+1), 2))` -/
def P4092656318251182911.Spec : Prop :=
  ∀ n, P4092656318251182911.a n = A069256 (n + 1)

end A069256

/-! ## A069256.P10321365186054080860

`gcd(A000252(n+1), A020707(n))`
-/

namespace A069256.P10321365186054080860
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000252 (n + 1)) (A020707 n)

end

end A069256.P10321365186054080860

namespace A069256

/-- `gcd(A000252(n+1), A020707(n))` -/
def P10321365186054080860.Spec : Prop :=
  ∀ n, (P10321365186054080860.a n : ℤ) = A069256 (n + 1)

end A069256

/-!
# A069258: Triangle T(n,k) = number of partitions of 2*n into n-k prime parts, n>1, 0 <= k <= n-2.

The programs for A069258, there is no canonical definition to state claims against.
-/

/-! ## A069258.P678180767635500882

`A124725(and(A138547(n), A145111(n)))`
-/

namespace A069258.P678180767635500882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124725 (Int.land (A138547 n) (A145111 n)).toNat

end

end A069258.P678180767635500882

/-! ## A069258.P15590532439593504955

`A254123(A002260(n+1)^A242784(n))`
-/

namespace A069258.P15590532439593504955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254123 (SequenceMachineLib.roundAway ((A002260 (n + 1) : ℚ) ^ (A242784 n : ℤ))).toNat

end

end A069258.P15590532439593504955

/-! ## A069258.P17831098644804841975

`A111630(lcm(A002260(n+1), A004070(n)))`
-/

namespace A069258.P17831098644804841975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111630 (Int.lcm (A002260 (n + 1)) (A004070 n))

end

end A069258.P17831098644804841975

/-! ## A069258.P7467693275444757336

`A037833(2*A369288(n))+1`
-/

namespace A069258.P7467693275444757336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (2 * A369288 n).toNat + 1

end

end A069258.P7467693275444757336

/-! ## A069258.P12531700161534611583

`A090822(A294950(n)+A111957(n+1))`
-/

namespace A069258.P12531700161534611583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (A294950 n + A111957 (n + 1)).toNat

end

end A069258.P12531700161534611583

/-!
# A069259: Limit of A069258(k,n) = number of partitions of 2*k into k-n prime parts, as k tends to infinity.

The programs for A069259, there is no canonical definition to state claims against.
-/

/-! ## A069259.P15982886536828860654

`A069258(A064225(n)+1)`
-/

namespace A069259.P15982886536828860654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069258 (A064225 n + 1).toNat

end

end A069259.P15982886536828860654

/-! ## A069259.P3349549085752684303

`A069258(A276819(n)+1)`
-/

namespace A069259.P3349549085752684303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069258 (A276819 n + 1).toNat

end

end A069259.P3349549085752684303

/-! ## A069259.P12020499141277315071

`A069258(A004526(2*n+3)+A000124(3*n))`
-/

namespace A069259.P12020499141277315071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069258 (A004526 (2 * n + 3) + A000124 (3 * n)).toNat

end

end A069259.P12020499141277315071

/-! ## A069259.P3386935796754183551

`A069258(A002378(2*n+3)+∑[n])`
-/

namespace A069259.P3386935796754183551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069258 (A002378 (2 * n + 3) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A069259.P3386935796754183551

/-! ## A069259.P16342996775390519239

`A117278(2*A064225(n))`
-/

namespace A069259.P16342996775390519239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117278 (2 * A064225 n).toNat

end

end A069259.P16342996775390519239

/-!
# A069260: a(n) = core(1)*core(2)*...*core(n) where core(n) is the squarefree part of n (A007913).

The programs for A069260, there is no canonical definition to state claims against.
-/

/-! ## A069260.P10720398384881861418

`∏[(n+1)/∏{p}[n+1, #^val(n+1, #²)]²]`
-/

namespace A069260.P10720398384881861418
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (((∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2 : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A069260.P10720398384881861418

/-! ## A069260.P17869026044039494438

`∏[Δ[A069891(n)]]`
-/

namespace A069260.P17869026044039494438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069891 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A069260.P17869026044039494438

/-! ## A069260.P13182637409972845913

`∏[A007913(n+1)]`
-/

namespace A069260.P13182637409972845913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A069260.P13182637409972845913

/-! ## A069260.P1661499060721511679

`∏[A056554((n+1)²)]`
-/

namespace A069260.P1661499060721511679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056554 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A069260.P1661499060721511679

/-! ## A069260.P2944839020021469763

`∏[sqrt(A055491(n+1))]`
-/

namespace A069260.P2944839020021469763
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055491 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A069260.P2944839020021469763

/-! ## A069260.P4969180946007759266

`∏[A352780(∑[n+1])]`
-/

namespace A069260.P4969180946007759266
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352780 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A069260.P4969180946007759266

/-! ## A069260.P731228872436169555

`∏[A117811(2*n+1)]`
-/

namespace A069260.P731228872436169555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117811 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A069260.P731228872436169555

/-! ## A069260.P14634571302616846621

`∏[A364900(2*n+1)]`
-/

namespace A069260.P14634571302616846621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364900 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A069260.P14634571302616846621

/-! ## A069260.P12136636847335519476

`∏[A038387(2*(n+1))/2]`
-/

namespace A069260.P12136636847335519476
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038387 (2 * (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A069260.P12136636847335519476

/-! ## A069260.P2887955828216497122

`∏[1-A326128(n+1)+n]`
-/

namespace A069260.P2887955828216497122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A326128 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A069260.P2887955828216497122

/-!
# A069262: a(n) = 4*prime(n)^2.

The programs for A069262, the canonical program `A069262.P1637468412186767431` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069262 has offset 1).

The definition of A069262 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*A000040(n+1)²` (program `A069262.P1637468412186767431`, by `A069262.P1637468412186767431.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A069262.P10024290030674562984

`4*A001248(n+1)`
-/

namespace A069262.P10024290030674562984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001248 (n + 1)

end

end A069262.P10024290030674562984

namespace A069262

/-- `4*A001248(n+1)` -/
def P10024290030674562984.Spec : Prop :=
  ∀ n, P10024290030674562984.a n = A069262 (n + 1)

end A069262

/-! ## A069262.P1637468412186767431

`4*A000040(n+1)²`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A069262

/-- `4*A000040(n+1)²` -/
def P1637468412186767431.Spec : Prop :=
  ∀ n, P1637468412186767431.a n = A069262 (n + 1)

theorem P1637468412186767431.correct : P1637468412186767431.Spec := by
  intro n
  simp only [A069262, Nat.add_sub_cancel]

end A069262

/-! ## A069262.P15476773250480651888

`A100484(n+1)²`
-/

namespace A069262.P15476773250480651888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) ^ 2

end

end A069262.P15476773250480651888

namespace A069262

/-- `A100484(n+1)²` -/
def P15476773250480651888.Spec : Prop :=
  ∀ n, P15476773250480651888.a n = A069262 (n + 1)

theorem P15476773250480651888.correct : P15476773250480651888.Spec := by
  intro n
  simp only [A069262, Nat.add_sub_cancel, A069262.P15476773250480651888.a, A069262.P1637468412186767431.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069262

/-! ## A069262.P10600469310237636148

`A060429(n+1)-1`
-/

namespace A069262.P10600469310237636148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060429 (n + 1) - 1

end

end A069262.P10600469310237636148

namespace A069262

/-- `A060429(n+1)-1` -/
def P10600469310237636148.Spec : Prop :=
  ∀ n, P10600469310237636148.a n = A069262 (n + 1)

theorem P10600469310237636148.correct : P10600469310237636148.Spec := by
  intro n
  simp only [A069262, Nat.add_sub_cancel, A069262.P10600469310237636148.a, A069262.P1637468412186767431.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A060429, A060429.P17554722288178337545.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069262

/-! ## A069262.P15099037828237785553

`2*A079704(n+1)`
-/

namespace A069262.P15099037828237785553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079704 (n + 1)

end

end A069262.P15099037828237785553

namespace A069262

/-- `2*A079704(n+1)` -/
def P15099037828237785553.Spec : Prop :=
  ∀ n, P15099037828237785553.a n = A069262 (n + 1)

theorem P15099037828237785553.correct : P15099037828237785553.Spec := by
  intro n
  simp only [A069262, Nat.add_sub_cancel, A069262.P15099037828237785553.a, A069262.P1637468412186767431.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A079704, A079704.P2518524558801344655.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069262

/-! ## A069262.P11744987950238291832

`2*(A153480(n)+4)`
-/

namespace A069262.P11744987950238291832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A153480 n + 4)

end

end A069262.P11744987950238291832

namespace A069262

/-- `2*(A153480(n)+4)` -/
def P11744987950238291832.Spec : Prop :=
  ∀ n, P11744987950238291832.a n = A069262 (n + 1)

theorem P11744987950238291832.correct : P11744987950238291832.Spec := by
  intro n
  simp only [A069262, Nat.add_sub_cancel, A069262.P11744987950238291832.a, A069262.P1637468412186767431.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A153480, A153480.P7601742437354690742.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069262

/-! ## A069262.P3592761796940747409

`Δ[2*A007504(n)]²`
-/

namespace A069262.P3592761796940747409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A069262.P3592761796940747409

namespace A069262

/-- `Δ[2*A007504(n)]²` -/
def P3592761796940747409.Spec : Prop :=
  ∀ n, P3592761796940747409.a n = A069262 (n + 1)

end A069262

/-! ## A069262.P1780943447571928604

`Δ[2*A008348(n)]²`
-/

namespace A069262.P1780943447571928604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A069262.P1780943447571928604

namespace A069262

/-- `Δ[2*A008348(n)]²` -/
def P1780943447571928604.Spec : Prop :=
  ∀ n, P1780943447571928604.a n = A069262 (n + 1)

end A069262

/-! ## A069262.P420183090415369515

`Δ[2*A022837(n)]²`
-/

namespace A069262.P420183090415369515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A069262.P420183090415369515

namespace A069262

/-- `Δ[2*A022837(n)]²` -/
def P420183090415369515.Spec : Prop :=
  ∀ n, P420183090415369515.a n = A069262 (n + 1)

end A069262

/-! ## A069262.P13308381139861120824

`Δ[2*A064365(n)]²`
-/

namespace A069262.P13308381139861120824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A069262.P13308381139861120824

namespace A069262

/-- `Δ[2*A064365(n)]²` -/
def P13308381139861120824.Spec : Prop :=
  ∀ n, P13308381139861120824.a n = A069262 (n + 1)

end A069262

/-! ## A069262.P12519251689194160936

`Δ[2*A309222(n)]²`
-/

namespace A069262.P12519251689194160936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A309222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A069262.P12519251689194160936

namespace A069262

/-- `Δ[2*A309222(n)]²` -/
def P12519251689194160936.Spec : Prop :=
  ∀ n, P12519251689194160936.a n = A069262 (n + 1)

end A069262

/-! ## A069262.P11818874135806560686

`(A037168(n+1)+2)²`
-/

namespace A069262.P11818874135806560686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A037168 (n + 1) + 2) ^ 2

end

end A069262.P11818874135806560686

namespace A069262

/-- `(A037168(n+1)+2)²` -/
def P11818874135806560686.Spec : Prop :=
  ∀ n, P11818874135806560686.a n = A069262 (n + 1)

theorem P11818874135806560686.correct : P11818874135806560686.Spec := by
  intro n
  simp only [A069262, Nat.add_sub_cancel, A069262.P11818874135806560686.a, A069262.P1637468412186767431.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A037168, A037168.P225285487484933431.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069262

/-! ## A069262.P18186708889445301851

`(1-A072055(n+1))²`
-/

namespace A069262.P18186708889445301851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A072055 (n + 1)) ^ 2

end

end A069262.P18186708889445301851

namespace A069262

/-- `(1-A072055(n+1))²` -/
def P18186708889445301851.Spec : Prop :=
  ∀ n, P18186708889445301851.a n = A069262 (n + 1)

theorem P18186708889445301851.correct : P18186708889445301851.Spec := by
  intro n
  simp only [A069262, Nat.add_sub_cancel, A069262.P18186708889445301851.a, A069262.P1637468412186767431.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A072055, A072055.P8252801676711237860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069262

/-! ## A069262.P968814208983315265

`(2-A089241(n+1))²`
-/

namespace A069262.P968814208983315265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A089241 (n + 1)) ^ 2

end

end A069262.P968814208983315265

namespace A069262

/-- `(2-A089241(n+1))²` -/
def P968814208983315265.Spec : Prop :=
  ∀ n, P968814208983315265.a n = A069262 (n + 1)

theorem P968814208983315265.correct : P968814208983315265.Spec := by
  intro n
  simp only [A069262, Nat.add_sub_cancel, A069262.P968814208983315265.a, A069262.P1637468412186767431.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A089241, A089241.P14705987553220613803.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069262

/-! ## A069262.P3033397857946232861

`(A001749(n+1)/2)²`
-/

namespace A069262.P3033397857946232861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A001749 (n + 1) : ℚ) / 2) ^ 2

end

end A069262.P3033397857946232861

namespace A069262

/-- `(A001749(n+1)/2)²` -/
def P3033397857946232861.Spec : Prop :=
  ∀ n, P3033397857946232861.a n = (A069262 (n + 1) : ℚ)

theorem P3033397857946232861.correct : P3033397857946232861.Spec := by
  intro n
  simp only [A069262, Nat.add_sub_cancel, A069262.P3033397857946232861.a, A069262.P1637468412186767431.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001749, A001749.P16106244962881767471.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069262

/-! ## A069262.P6666280541054423144

`(A138636(n+1)/3)²`
-/

namespace A069262.P6666280541054423144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A138636 (n + 1) : ℚ) / 3) ^ 2

end

end A069262.P6666280541054423144

namespace A069262

/-- `(A138636(n+1)/3)²` -/
def P6666280541054423144.Spec : Prop :=
  ∀ n, P6666280541054423144.a n = (A069262 (n + 1) : ℚ)

theorem P6666280541054423144.correct : P6666280541054423144.Spec := by
  intro n
  simp only [A069262, Nat.add_sub_cancel, A069262.P6666280541054423144.a, A069262.P1637468412186767431.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A138636, A138636.P18275506092715506513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069262

/-! ## A069262.P15204077352163887481

`4*(A084920(n+1)+1)`
-/

namespace A069262.P15204077352163887481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A084920 (n + 1) + 1)

end

end A069262.P15204077352163887481

namespace A069262

/-- `4*(A084920(n+1)+1)` -/
def P15204077352163887481.Spec : Prop :=
  ∀ n, P15204077352163887481.a n = A069262 (n + 1)

theorem P15204077352163887481.correct : P15204077352163887481.Spec := by
  intro n
  simp only [A069262, Nat.add_sub_cancel, A069262.P15204077352163887481.a, A069262.P1637468412186767431.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A084920, A084920.P13392903182497119137.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069262

/-! ## A069262.P12855524890835390385

`4*(A049001(n+1)+2)`
-/

namespace A069262.P12855524890835390385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A049001 (n + 1) + 2)

end

end A069262.P12855524890835390385

namespace A069262

/-- `4*(A049001(n+1)+2)` -/
def P12855524890835390385.Spec : Prop :=
  ∀ n, P12855524890835390385.a n = A069262 (n + 1)

theorem P12855524890835390385.correct : P12855524890835390385.Spec := by
  intro n
  simp only [A069262, Nat.add_sub_cancel, A069262.P12855524890835390385.a, A069262.P1637468412186767431.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A049001, A049001.P8777299766092042792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069262

/-! ## A069262.P13766280164124256619

`4*(A066872(n+1)-1)`
-/

namespace A069262.P13766280164124256619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A066872 (n + 1) - 1)

end

end A069262.P13766280164124256619

namespace A069262

/-- `4*(A066872(n+1)-1)` -/
def P13766280164124256619.Spec : Prop :=
  ∀ n, P13766280164124256619.a n = A069262 (n + 1)

theorem P13766280164124256619.correct : P13766280164124256619.Spec := by
  intro n
  simp only [A069262, Nat.add_sub_cancel, A069262.P13766280164124256619.a, A069262.P1637468412186767431.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A066872, A066872.P16166098773502812344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069262

/-!
# A069263: (Sum of digits of n)^3 = sum of digits of n^3.

The programs for A069263, there is no canonical definition to state claims against.
-/

/-! ## A069263.P12382956535264072962

`∩[A069494(n+1), A188264(n+1)]`
-/

namespace A069263.P12382956535264072962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069263.P12382956535264072962

/-! ## A069263.P1864133272656469692

`∩[A069494(n+1), A395817(n+1)]`
-/

namespace A069263.P1864133272656469692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069263.P1864133272656469692

/-! ## A069263.P7910405104250925172

`∩[A061910(n+1), A069494(n+1)]`
-/

namespace A069263.P7910405104250925172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069263.P7910405104250925172

/-! ## A069263.P14396292531807747674

`eq[A007318(A003132(n)), A054055(n)]`
-/

namespace A069263.P14396292531807747674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A003132 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069263.P14396292531807747674

/-! ## A069263.P3596036305289217435

`eq[A004525(A003132(n)), A214950(n)]`
-/

namespace A069263.P3596036305289217435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A003132 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214950 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069263.P3596036305289217435

/-!
# A069264: Inverse Moebius transform of bigomega(n).

The programs for A069264, the canonical program `A069264.P13901458901501386413` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069264 has offset 1).

The definition of A069264 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069264.P13901458901501386413

`A000005(n+1)*A001222(n+1)/2`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A069264

/-- `A000005(n+1)*A001222(n+1)/2` -/
def P13901458901501386413.Spec : Prop :=
  ∀ n, P13901458901501386413.a n = (A069264 (n + 1) : ℚ)

end A069264

/-! ## A069264.P6375647708085553291

`∑{e}[n+1, #]*∏{e}[n+1, #+1]/2`
-/

namespace A069264.P6375647708085553291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)) : ℕ) : ℚ) / 2

end

end A069264.P6375647708085553291

namespace A069264

/-- `∑{e}[n+1, #]*∏{e}[n+1, #+1]/2` -/
def P6375647708085553291.Spec : Prop :=
  ∀ n, P6375647708085553291.a n = (A069264 (n + 1) : ℚ)

end A069264

/-! ## A069264.P478180637415029585

`∑{d}[n+1, A001222(#)]`
-/

namespace A069264.P478180637415029585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001222 d

end

end A069264.P478180637415029585

namespace A069264

/-- `∑{d}[n+1, A001222(#)]` -/
def P478180637415029585.Spec : Prop :=
  ∀ n, P478180637415029585.a n = A069264 (n + 1)

end A069264

/-! ## A069264.P9562559770750993337

`A064680(∑{e}[n+1, #]*∏{e}[n+1, #+1])`
-/

namespace A069264.P9562559770750993337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)))

end

end A069264.P9562559770750993337

namespace A069264

/-- `A064680(∑{e}[n+1, #]*∏{e}[n+1, #+1])` -/
def P9562559770750993337.Spec : Prop :=
  ∀ n, P9562559770750993337.a n = A069264 (n + 1)

end A069264

/-! ## A069264.P6189736621986107196

`A078898(∑{e}[n+1, #]*∏{e}[n+1, #+1])`
-/

namespace A069264.P6189736621986107196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)))

end

end A069264.P6189736621986107196

namespace A069264

/-- `A078898(∑{e}[n+1, #]*∏{e}[n+1, #+1])` -/
def P6189736621986107196.Spec : Prop :=
  ∀ n, P6189736621986107196.a n = A069264 (n + 1)

end A069264

/-! ## A069264.P10096323926954806945

`A130472(∑{e}[n+1, #]*∏{e}[n+1, #+1])`
-/

namespace A069264.P10096323926954806945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)))

end

end A069264.P10096323926954806945

namespace A069264

/-- `A130472(∑{e}[n+1, #]*∏{e}[n+1, #+1])` -/
def P10096323926954806945.Spec : Prop :=
  ∀ n, P10096323926954806945.a n = A069264 (n + 1)

end A069264

/-! ## A069264.P17241049072206319850

`A330018(n+1)+A062799(n+1)`
-/

namespace A069264.P17241049072206319850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330018 (n + 1) + A062799 (n + 1)

end

end A069264.P17241049072206319850

namespace A069264

/-- `A330018(n+1)+A062799(n+1)` -/
def P17241049072206319850.Spec : Prop :=
  ∀ n, P17241049072206319850.a n = A069264 (n + 1)

end A069264

/-! ## A069264.P8122674459187894565

`A001222(n+1)/2*Δ[A006218(n)]`
-/

namespace A069264.P8122674459187894565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (n + 1) : ℚ) / 2 * (f1 (n + 1) - f1 n : ℚ)

end

end A069264.P8122674459187894565

namespace A069264

/-- `A001222(n+1)/2*Δ[A006218(n)]` -/
def P8122674459187894565.Spec : Prop :=
  ∀ n, P8122674459187894565.a n = (A069264 (n + 1) : ℚ)

end A069264

/-! ## A069264.P17450389969900989580

`A000005(n+1)/2*Δ[A022559(n)]`
-/

namespace A069264.P17450389969900989580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / 2 * (f1 (n + 1) - f1 n : ℚ)

end

end A069264.P17450389969900989580

namespace A069264

/-- `A000005(n+1)/2*Δ[A022559(n)]` -/
def P17450389969900989580.Spec : Prop :=
  ∀ n, P17450389969900989580.a n = (A069264 (n + 1) : ℚ)

end A069264

/-! ## A069264.P16072893904472720293

`A001222(n+1)/2*Δ[A054519(n)]`
-/

namespace A069264.P16072893904472720293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (n + 1) : ℚ) / 2 * (f1 (n + 1) - f1 n : ℚ)

end

end A069264.P16072893904472720293

namespace A069264

/-- `A001222(n+1)/2*Δ[A054519(n)]` -/
def P16072893904472720293.Spec : Prop :=
  ∀ n, P16072893904472720293.a n = (A069264 (n + 1) : ℚ)

end A069264

/-! ## A069264.P936585703702854160

`A001222(n+1)/2*sqrt(A035116(n+1))`
-/

namespace A069264.P936585703702854160
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A001222 (n + 1) : ℚ) / 2 : ℝ) * Real.sqrt (A035116 (n + 1) : ℝ)

end

end A069264.P936585703702854160

namespace A069264

/-- `A001222(n+1)/2*sqrt(A035116(n+1))` -/
def P936585703702854160.Spec : Prop :=
  ∀ n, P936585703702854160.a n = (A069264 (n + 1) : ℝ)

end A069264

/-! ## A069264.P18083304426456677341

`val(A165825(n+1), 4)/2*Δ[A006218(n)]`
-/

namespace A069264.P18083304426456677341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A165825 (n + 1)).toNat 4 : ℚ) / 2 * (f1 (n + 1) - f1 n : ℚ)

end

end A069264.P18083304426456677341

namespace A069264

/-- `val(A165825(n+1), 4)/2*Δ[A006218(n)]` -/
def P18083304426456677341.Spec : Prop :=
  ∀ n, P18083304426456677341.a n = (A069264 (n + 1) : ℚ)

end A069264

/-! ## A069264.P9563484506672817388

`∑{d}[n+1, A000005(#)*A069513((n+1)/#)]`
-/

namespace A069264.P9563484506672817388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A069513 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069264.P9563484506672817388

namespace A069264

/-- `∑{d}[n+1, A000005(#)*A069513((n+1)/#)]` -/
def P9563484506672817388.Spec : Prop :=
  ∀ n, P9563484506672817388.a n = A069264 (n + 1)

end A069264

/-! ## A069264.P1797416928206191446

`∑{d}[n+1, A095112(#)*A130054((n+1)/#)]`
-/

namespace A069264.P1797416928206191446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A095112 d * A130054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069264.P1797416928206191446

namespace A069264

/-- `∑{d}[n+1, A095112(#)*A130054((n+1)/#)]` -/
def P1797416928206191446.Spec : Prop :=
  ∀ n, P1797416928206191446.a n = A069264 (n + 1)

end A069264

/-! ## A069264.P17787138395081311091

`∑{d}[n+1, A023900(#)*A329347((n+1)/#)]`
-/

namespace A069264.P17787138395081311091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A329347 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069264.P17787138395081311091

namespace A069264

/-- `∑{d}[n+1, A023900(#)*A329347((n+1)/#)]` -/
def P17787138395081311091.Spec : Prop :=
  ∀ n, P17787138395081311091.a n = A069264 (n + 1)

end A069264

/-! ## A069264.P17309517242578904579

`∑{d}[n+1, A008966(#)*A345344((n+1)/#)]`
-/

namespace A069264.P17309517242578904579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A345344 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069264.P17309517242578904579

namespace A069264

/-- `∑{d}[n+1, A008966(#)*A345344((n+1)/#)]` -/
def P17309517242578904579.Spec : Prop :=
  ∀ n, P17309517242578904579.a n = A069264 (n + 1)

end A069264

/-! ## A069264.P13517581351114152561

`∑{d}[n+1, A038712(#)*A317531((n+1)/#)]`
-/

namespace A069264.P13517581351114152561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038712 d * A317531 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069264.P13517581351114152561

namespace A069264

/-- `∑{d}[n+1, A038712(#)*A317531((n+1)/#)]` -/
def P13517581351114152561.Spec : Prop :=
  ∀ n, P13517581351114152561.a n = A069264 (n + 1)

end A069264

/-! ## A069264.P10083740017430207834

`A004526(A000005(n+1)*A001222(n+1))`
-/

namespace A069264.P10083740017430207834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000005 (n + 1) * A001222 (n + 1)).toNat

end

end A069264.P10083740017430207834

namespace A069264

/-- `A004526(A000005(n+1)*A001222(n+1))` -/
def P10083740017430207834.Spec : Prop :=
  ∀ n, P10083740017430207834.a n = A069264 (n + 1)

end A069264

/-! ## A069264.P10612728775707084660

`A006370(A000005(n+1)*A001222(n+1))`
-/

namespace A069264.P10612728775707084660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A000005 (n + 1) * A001222 (n + 1)).toNat

end

end A069264.P10612728775707084660

namespace A069264

/-- `A006370(A000005(n+1)*A001222(n+1))` -/
def P10612728775707084660.Spec : Prop :=
  ∀ n, P10612728775707084660.a n = A069264 (n + 1)

end A069264

/-! ## A069264.P4609207417465133463

`A028242(A000005(n+1)*A001222(n+1)+1)`
-/

namespace A069264.P4609207417465133463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A000005 (n + 1) * A001222 (n + 1) + 1).toNat

end

end A069264.P4609207417465133463

namespace A069264

/-- `A028242(A000005(n+1)*A001222(n+1)+1)` -/
def P4609207417465133463.Spec : Prop :=
  ∀ n, P4609207417465133463.a n = A069264 (n + 1)

end A069264

/-!
# A069265: Numbers k such that Sum_{d|k} d/core(d) > k, where core(d) is the squarefree part of d.

The programs for A069265, the canonical program `A069265.P4815336299590380564` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069265 has offset 1).

The definition of A069265 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069265.P4815336299590380564

`lt[n+1, A068976(A028310(n))]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A069265

/-- `lt[n+1, A068976(A028310(n))]` -/
def P4815336299590380564.Spec : Prop :=
  ∀ n, (P4815336299590380564.a n : ℤ) = A069265 (n + 1)

theorem P4815336299590380564.correct : P4815336299590380564.Spec := by
  intro n
  simp only [A069265, Nat.add_sub_cancel]

end A069265

/-! ## A069265.P6203997024682632757

`A020725(lt[n+1, A068976(n+1)])`
-/

namespace A069265.P6203997024682632757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A069265.P6203997024682632757

namespace A069265

/-- `A020725(lt[n+1, A068976(n+1)])` -/
def P6203997024682632757.Spec : Prop :=
  ∀ n, P6203997024682632757.a n = A069265 (n + 1)

end A069265

/-! ## A069265.P6715791191094103357

`A065475(lt[n+1, A068976(n+1)])`
-/

namespace A069265.P6715791191094103357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A069265.P6715791191094103357

namespace A069265

/-- `A065475(lt[n+1, A068976(n+1)])` -/
def P6715791191094103357.Spec : Prop :=
  ∀ n, P6715791191094103357.a n = A069265 (n + 1)

end A069265

/-! ## A069265.P6486233968290523332

`lt[A327171(n+1), A068976(n+1)]+1`
-/

namespace A069265.P6486233968290523332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068976 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A069265.P6486233968290523332

namespace A069265

/-- `lt[A327171(n+1), A068976(n+1)]+1` -/
def P6486233968290523332.Spec : Prop :=
  ∀ n, (P6486233968290523332.a n : ℤ) = A069265 (n + 1)

end A069265

/-! ## A069265.P9442053696638986349

`record[A069189(n+1)%A068976(A069189(n+1))]`
-/

namespace A069265.P9442053696638986349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069189 (n + 1)) (A068976 (A069189 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069265.P9442053696638986349

namespace A069265

/-- `record[A069189(n+1)%A068976(A069189(n+1))]` -/
def P9442053696638986349.Spec : Prop :=
  ∀ n, P9442053696638986349.a n = A069265 (n + 1)

end A069265

/-! ## A069265.P14648769168560374820

`A113484(lt[n+1, A068976(n+1)])`
-/

namespace A069265.P14648769168560374820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A069265.P14648769168560374820

namespace A069265

/-- `A113484(lt[n+1, A068976(n+1)])` -/
def P14648769168560374820.Spec : Prop :=
  ∀ n, P14648769168560374820.a n = A069265 (n + 1)

end A069265

/-!
# A069266: Numbers k such that Sum_{d|k} d/core(d) > 2*k, where core(d) is the squarefree part of d.

The programs for A069266, there is no canonical definition to state claims against.
-/

/-! ## A069266.P10754313990087784100

`A376445(A055649(n)+1)²`
-/

namespace A069266.P10754313990087784100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376445 (A055649 n + 1).toNat ^ 2

end

end A069266.P10754313990087784100

/-! ## A069266.P16782341520807477816

`A376445(A061378(n)+1)²`
-/

namespace A069266.P16782341520807477816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376445 (A061378 n + 1).toNat ^ 2

end

end A069266.P16782341520807477816

/-! ## A069266.P17063895365952314449

`A376445(A062399(n)+1)²`
-/

namespace A069266.P17063895365952314449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376445 (A062399 n + 1).toNat ^ 2

end

end A069266.P17063895365952314449

/-!
# A069267: a(n) = (2^(n-1)/(2n)!)*Product_{k=1..n} q(k) where q(n) is the denominator of B(2n), the 2n-th Bernoulli number.

The programs for A069267, the canonical program `A069267.P225979577722711314` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069267 has offset 1).

The definition of A069267 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069267.P225979577722711314

`A002444(n+1)/2`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A069267

/-- `A002444(n+1)/2` -/
def P225979577722711314.Spec : Prop :=
  ∀ n, P225979577722711314.a n = (A069267 (n + 1) : ℚ)

end A069267

/-! ## A069267.P17799010586310636313

`Δ[∑[A002444(n)]/2]`
-/

namespace A069267.P17799010586310636313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002444 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069267.P17799010586310636313

namespace A069267

/-- `Δ[∑[A002444(n)]/2]` -/
def P17799010586310636313.Spec : Prop :=
  ∀ n, P17799010586310636313.a n = (A069267 (n + 1) : ℚ)

end A069267

/-! ## A069267.P5815073353151303722

`A001897(n+1)*A266911(n)`
-/

namespace A069267.P5815073353151303722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001897 (n + 1) * A266911 n

end

end A069267.P5815073353151303722

namespace A069267

/-- `A001897(n+1)*A266911(n)` -/
def P5815073353151303722.Spec : Prop :=
  ∀ n, P5815073353151303722.a n = A069267 (n + 1)

end A069267

/-! ## A069267.P16090835452430936935

`2^A008683(A125256(n+2))*A002444(n+1)`
-/

namespace A069267.P16090835452430936935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A125256 (n + 2)).toNat : ℤ) * (A002444 (n + 1) : ℚ)

end

end A069267.P16090835452430936935

namespace A069267

/-- `2^A008683(A125256(n+2))*A002444(n+1)` -/
def P16090835452430936935.Spec : Prop :=
  ∀ n, P16090835452430936935.a n = (A069267 (n + 1) : ℚ)

end A069267

/-! ## A069267.P18436941563991871399

`lcm(A261274(n+1), A266911(n))`
-/

namespace A069267.P18436941563991871399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A261274 (n + 1)) (A266911 n)

end

end A069267.P18436941563991871399

namespace A069267

/-- `lcm(A261274(n+1), A266911(n))` -/
def P18436941563991871399.Spec : Prop :=
  ∀ n, (P18436941563991871399.a n : ℤ) = A069267 (n + 1)

end A069267

/-!
# A069268: Greatest common divisor of n! and n*(n+1)/2.

The programs for A069268, the canonical program `A069268.P6799013220524912252` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069268 has offset 1).

The definition of A069268 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069268.P6799013220524912252

`gcd((n+1)!, (n+1)*(n+2)/2)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069268

/-- `gcd((n+1)!, (n+1)*(n+2)/2)` -/
def P6799013220524912252.Spec : Prop :=
  ∀ n, (P6799013220524912252.a n : ℤ) = A069268 (n + 1)

theorem P6799013220524912252.correct : P6799013220524912252.Spec := by
  intro n
  simp only [A069268, Nat.add_sub_cancel]

end A069268

/-! ## A069268.P10288420952855393266

`∑[n+1]/A090585(n+1)`
-/

namespace A069268.P10288420952855393266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A090585 (n + 1) : ℚ)

end

end A069268.P10288420952855393266

namespace A069268

/-- `∑[n+1]/A090585(n+1)` -/
def P10288420952855393266.Spec : Prop :=
  ∀ n, P10288420952855393266.a n = (A069268 (n + 1) : ℚ)

end A069268

/-! ## A069268.P2039150532766903054

`gcd(∑[n+1], A175567(n+1))`
-/

namespace A069268.P2039150532766903054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A175567 (n + 1))

end

end A069268.P2039150532766903054

namespace A069268

/-- `gcd(∑[n+1], A175567(n+1))` -/
def P2039150532766903054.Spec : Prop :=
  ∀ n, (P2039150532766903054.a n : ℤ) = A069268 (n + 1)

end A069268

/-! ## A069268.P9962078007221715120

`gcd(A089594(n+1), A119690(n+1))`
-/

namespace A069268.P9962078007221715120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A089594 (n + 1)) (A119690 (n + 1))

end

end A069268.P9962078007221715120

namespace A069268

/-- `gcd(A089594(n+1), A119690(n+1))` -/
def P9962078007221715120.Spec : Prop :=
  ∀ n, (P9962078007221715120.a n : ℤ) = A069268 (n + 1)

end A069268

/-! ## A069268.P15798157713568869078

`gcd(A175567(n+1)², A000217(n+1))`
-/

namespace A069268.P15798157713568869078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A175567 (n + 1) ^ 2) (A000217 (n + 1))

end

end A069268.P15798157713568869078

namespace A069268

/-- `gcd(A175567(n+1)², A000217(n+1))` -/
def P15798157713568869078.Spec : Prop :=
  ∀ n, (P15798157713568869078.a n : ℤ) = A069268 (n + 1)

end A069268

/-! ## A069268.P12438911025181760773

`∑[n+1]/A000265((n+1)*A010051(n+2)+1)`
-/

namespace A069268.P12438911025181760773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A000265 ((n + 1 : ℤ) * A010051 (n + 2) + 1).toNat : ℚ)

end

end A069268.P12438911025181760773

namespace A069268

/-- `∑[n+1]/A000265((n+1)*A010051(n+2)+1)` -/
def P12438911025181760773.Spec : Prop :=
  ∀ n, P12438911025181760773.a n = (A069268 (n + 1) : ℚ)

end A069268

/-! ## A069268.P17059381567522754368

`A000217(n+1)-A010051(n+2)*A093353(n)`
-/

namespace A069268.P17059381567522754368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - A010051 (n + 2) * A093353 n

end

end A069268.P17059381567522754368

namespace A069268

/-- `A000217(n+1)-A010051(n+2)*A093353(n)` -/
def P17059381567522754368.Spec : Prop :=
  ∀ n, P17059381567522754368.a n = A069268 (n + 1)

end A069268

/-! ## A069268.P17114144249029799238

`A000217(n+1)/A000265(n+2)*A171435(n+2)`
-/

namespace A069268.P17114144249029799238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (n + 1) : ℚ) / (A000265 (n + 2) : ℚ) * (A171435 (n + 2) : ℚ)

end

end A069268.P17114144249029799238

namespace A069268

/-- `A000217(n+1)/A000265(n+2)*A171435(n+2)` -/
def P17114144249029799238.Spec : Prop :=
  ∀ n, P17114144249029799238.a n = (A069268 (n + 1) : ℚ)

end A069268

/-! ## A069268.P16187638761430571717

`lcm(A000217(n+1), A034694(n+1))/A034694(n+1)`
-/

namespace A069268.P16187638761430571717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000217 (n + 1)) (A034694 (n + 1)) : ℚ) / (A034694 (n + 1) : ℚ)

end

end A069268.P16187638761430571717

namespace A069268

/-- `lcm(A000217(n+1), A034694(n+1))/A034694(n+1)` -/
def P16187638761430571717.Spec : Prop :=
  ∀ n, P16187638761430571717.a n = (A069268 (n + 1) : ℚ)

end A069268

/-! ## A069268.P5545412114724868009

`A117818(2*(n+1))/2*A005451(n+2)`
-/

namespace A069268.P5545412114724868009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117818 (2 * (n + 1)) : ℚ) / 2 * (A005451 (n + 2) : ℚ)

end

end A069268.P5545412114724868009

namespace A069268

/-- `A117818(2*(n+1))/2*A005451(n+2)` -/
def P5545412114724868009.Spec : Prop :=
  ∀ n, P5545412114724868009.a n = (A069268 (n + 1) : ℚ)

end A069268

/-! ## A069268.P10092651933783243022

`A089026(2*(n+1))/A089026(n+2)*A000217(n+1)`
-/

namespace A069268.P10092651933783243022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089026 (2 * (n + 1)) : ℚ) / (A089026 (n + 2) : ℚ) * (A000217 (n + 1) : ℚ)

end

end A069268.P10092651933783243022

namespace A069268

/-- `A089026(2*(n+1))/A089026(n+2)*A000217(n+1)` -/
def P10092651933783243022.Spec : Prop :=
  ∀ n, P10092651933783243022.a n = (A069268 (n + 1) : ℚ)

end A069268

/-! ## A069268.P9969788086239988648

`gcd(A253145(n), A392539(n))`
-/

namespace A069268.P9969788086239988648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A253145 n) (A392539 n)

end

end A069268.P9969788086239988648

namespace A069268

/-- `gcd(A253145(n), A392539(n))` -/
def P9969788086239988648.Spec : Prop :=
  ∀ n, (P9969788086239988648.a n : ℤ) = A069268 (n + 1)

end A069268

/-! ## A069268.P7485739581586618723

`gcd(∑[n+1], A001898(n))`
-/

namespace A069268.P7485739581586618723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A001898 n)

end

end A069268.P7485739581586618723

namespace A069268

/-- `gcd(∑[n+1], A001898(n))` -/
def P7485739581586618723.Spec : Prop :=
  ∀ n, (P7485739581586618723.a n : ℤ) = A069268 (n + 1)

end A069268

/-! ## A069268.P6404340348019403273

`A325563(A005451(n+2)*(n+1))`
-/

namespace A069268.P6404340348019403273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325563 (A005451 (n + 2) * (n + 1 : ℤ)).toNat

end

end A069268.P6404340348019403273

namespace A069268

/-- `A325563(A005451(n+2)*(n+1))` -/
def P6404340348019403273.Spec : Prop :=
  ∀ n, P6404340348019403273.a n = A069268 (n + 1)

end A069268

/-! ## A069268.P12791496123456522826

`A325641(A005451(n+2)*(n+1))`
-/

namespace A069268.P12791496123456522826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325641 (A005451 (n + 2) * (n + 1 : ℤ)).toNat

end

end A069268.P12791496123456522826

namespace A069268

/-- `A325641(A005451(n+2)*(n+1))` -/
def P12791496123456522826.Spec : Prop :=
  ∀ n, P12791496123456522826.a n = A069268 (n + 1)

end A069268

/-! ## A069268.P1283309139084678124

`A032742(A005451(n+2)*(n+1))`
-/

namespace A069268.P1283309139084678124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A005451 (n + 2) * (n + 1 : ℤ)).toNat

end

end A069268.P1283309139084678124

namespace A069268

/-- `A032742(A005451(n+2)*(n+1))` -/
def P1283309139084678124.Spec : Prop :=
  ∀ n, P1283309139084678124.a n = A069268 (n + 1)

end A069268

/-! ## A069268.P7770870507372999375

`A004526((A028310(n)-A089026(n+2)+3)*(n+1))`
-/

namespace A069268.P7770870507372999375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((A028310 n - A089026 (n + 2) + 3) * (n + 1 : ℤ)).toNat

end

end A069268.P7770870507372999375

namespace A069268

/-- `A004526((A028310(n)-A089026(n+2)+3)*(n+1))` -/
def P7770870507372999375.Spec : Prop :=
  ∀ n, P7770870507372999375.a n = A069268 (n + 1)

end A069268

/-! ## A069268.P10161845765639382389

`A064680((A028310(n)-A089026(n+2)+3)*(n+1))`
-/

namespace A069268.P10161845765639382389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 ((A028310 n - A089026 (n + 2) + 3) * (n + 1 : ℤ)).toNat

end

end A069268.P10161845765639382389

namespace A069268

/-- `A064680((A028310(n)-A089026(n+2)+3)*(n+1))` -/
def P10161845765639382389.Spec : Prop :=
  ∀ n, P10161845765639382389.a n = A069268 (n + 1)

end A069268

/-!
# A069269: Second level generalization of Catalan triangle (0th level is Pascal's triangle A007318; first level is Catalan triangle A009766; 3rd level is A069270).

The programs for A069269, the canonical program `A069269.P11970287897824763173` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069269 has offset 0).

The definition of A069269 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069269.P11970287897824763173

`C(row(n)+2*col(n), col(n))*(row(n)-col(n)+1)/(row(n)+col(n)+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069269

/-- `C(row(n)+2*col(n), col(n))*(row(n)-col(n)+1)/(row(n)+col(n)+1)` -/
def P11970287897824763173.Spec : Prop :=
  ∀ n, P11970287897824763173.a n = (A069269 n : ℚ)

end A069269

/-! ## A069269.P8771196163907015264

`A110616(∑[2*n]%comp[∑[n]])`
-/

namespace A069269.P8771196163907015264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110616 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A069269.P8771196163907015264

namespace A069269

/-- `A110616(∑[2*n]%comp[∑[n]])` -/
def P8771196163907015264.Spec : Prop :=
  ∀ n, P8771196163907015264.a n = A069269 n

end A069269

/-! ## A069269.P12918654627864731412

`A110616(∑[char[∑[n]]]²-(n+1))`
-/

namespace A069269.P12918654627864731412
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110616 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A069269.P12918654627864731412

namespace A069269

/-- `A110616(∑[char[∑[n]]]²-(n+1))` -/
def P12918654627864731412.Spec : Prop :=
  ∀ n, P12918654627864731412.a n = A069269 n

end A069269

/-! ## A069269.P5877060948997778940

`A110616(A061579(n))+A000038(2*n+3)`
-/

namespace A069269.P5877060948997778940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110616 (A061579 n).toNat + A000038 (2 * n + 3)

end

end A069269.P5877060948997778940

namespace A069269

/-- `A110616(A061579(n))+A000038(2*n+3)` -/
def P5877060948997778940.Spec : Prop :=
  ∀ n, P5877060948997778940.a n = A069269 n

end A069269

/-! ## A069269.P7104160817919872123

`A006519(2*n+3)*A110616(A061579(n))`
-/

namespace A069269.P7104160817919872123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (2 * n + 3) * A110616 (A061579 n).toNat

end

end A069269.P7104160817919872123

namespace A069269

/-- `A006519(2*n+3)*A110616(A061579(n))` -/
def P7104160817919872123.Spec : Prop :=
  ∀ n, P7104160817919872123.a n = A069269 n

end A069269

/-! ## A069269.P6204538043946047075

`A167763(A245300(n))`
-/

namespace A069269.P6204538043946047075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167763 (A245300 n).toNat

end

end A069269.P6204538043946047075

namespace A069269

/-- `A167763(A245300(n))` -/
def P6204538043946047075.Spec : Prop :=
  ∀ n, P6204538043946047075.a n = A069269 n

end A069269

/-! ## A069269.P17808991447894215426

`A110616(A061579(n))+A047764(2*n+3)`
-/

namespace A069269.P17808991447894215426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110616 (A061579 n).toNat + A047764 (2 * n + 3)

end

end A069269.P17808991447894215426

namespace A069269

/-- `A110616(A061579(n))+A047764(2*n+3)` -/
def P17808991447894215426.Spec : Prop :=
  ∀ n, P17808991447894215426.a n = A069269 n

end A069269

/-!
# A069270: Third level generalization of Catalan triangle (0th level is Pascal's triangle A007318; first level is Catalan triangle A009766; 2nd level is A069269).

The programs for A069270, the canonical program `A069270.P14830751721265264800` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069270 has offset 0).

The definition of A069270 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069270.P14830751721265264800

`C(row(n)+3*col(n), col(n))*(row(n)-col(n)+1)/(row(n)+2*col(n)+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069270

/-- `C(row(n)+3*col(n), col(n))*(row(n)-col(n)+1)/(row(n)+2*col(n)+1)` -/
def P14830751721265264800.Spec : Prop :=
  ∀ n, P14830751721265264800.a n = (A069270 n : ℚ)

end A069270

/-! ## A069270.P3325543918811634974

`A023604(A194583(n))`
-/

namespace A069270.P3325543918811634974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023604 (A194583 n).toNat

end

end A069270.P3325543918811634974

namespace A069270

/-- `A023604(A194583(n))` -/
def P3325543918811634974.Spec : Prop :=
  ∀ n, P3325543918811634974.a n = A069270 n

end A069270

/-! ## A069270.P12728796432668597363

`A390394(A397420(n))`
-/

namespace A069270.P12728796432668597363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390394 (A397420 n).toNat

end

end A069270.P12728796432668597363

namespace A069270

/-- `A390394(A397420(n))` -/
def P12728796432668597363.Spec : Prop :=
  ∀ n, P12728796432668597363.a n = A069270 n

end A069270

/-! ## A069270.P14128874265484671723

`A123580(A117297(n+1))`
-/

namespace A069270.P14128874265484671723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123580 (A117297 (n + 1)).toNat

end

end A069270.P14128874265484671723

namespace A069270

/-- `A123580(A117297(n+1))` -/
def P14128874265484671723.Spec : Prop :=
  ∀ n, P14128874265484671723.a n = A069270 n

end A069270

/-! ## A069270.P7993428355212584746

`A161334(A156953(n))+A014473(n)`
-/

namespace A069270.P7993428355212584746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161334 (A156953 n).toNat + A014473 n

end

end A069270.P7993428355212584746

namespace A069270

/-- `A161334(A156953(n))+A014473(n)` -/
def P7993428355212584746.Spec : Prop :=
  ∀ n, P7993428355212584746.a n = A069270 n

end A069270

/-!
# A069271: a(n) = binomial(4*n+1,n)*2/(3*n+2).

The programs for A069271, the canonical program `A069271.P14577300285001042328` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069271 has offset 0).

The definition of A069271 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069271.P14577300285001042328

`A005810(n)*A016813(n)/A060544(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A069271

/-- `A005810(n)*A016813(n)/A060544(n+1)` -/
def P14577300285001042328.Spec : Prop :=
  ∀ n, P14577300285001042328.a n = (A069271 n : ℚ)

end A069271

/-! ## A069271.P16878940217540234927

`C(4*n+2, n)/(2*n+1)`
-/

namespace A069271.P16878940217540234927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (4 * n + 2) n : ℚ) / (2 * n + 1 : ℚ)

end

end A069271.P16878940217540234927

namespace A069271

/-- `C(4*n+2, n)/(2*n+1)` -/
def P16878940217540234927.Spec : Prop :=
  ∀ n, P16878940217540234927.a n = (A069271 n : ℚ)

end A069271

/-! ## A069271.P15199431235321545784

`C(4*n+1, n)*2/(3*n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A069271.P15199431235321545784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (4 * n + 1) n * 2 : ℚ) / (3 * n + 2 : ℚ)

end

end A069271.P15199431235321545784

namespace A069271

/-- `C(4*n+1, n)*2/(3*n+2)` -/
def P15199431235321545784.Spec : Prop :=
  ∀ n, P15199431235321545784.a n = (A069271 n : ℚ)

end A069271

/-! ## A069271.P15021142033379374811

`A369472(Δ[n²])`
-/

namespace A069271.P15021142033379374811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369472 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A069271.P15021142033379374811

namespace A069271

/-- `A369472(Δ[n²])` -/
def P15021142033379374811.Spec : Prop :=
  ∀ n, P15021142033379374811.a n = A069271 n

end A069271

/-! ## A069271.P2786835532980894322

`A188108(∑[n]+1)`
-/

namespace A069271.P2786835532980894322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188108 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A069271.P2786835532980894322

namespace A069271

/-- `A188108(∑[n]+1)` -/
def P2786835532980894322.Spec : Prop :=
  ∀ n, P2786835532980894322.a n = A069271 n

end A069271

/-! ## A069271.P15866255103335643703

`record[A188108(n+1)]`
-/

namespace A069271.P15866255103335643703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069271.P15866255103335643703

namespace A069271

/-- `record[A188108(n+1)]` -/
def P15866255103335643703.Spec : Prop :=
  ∀ n, P15866255103335643703.a n = A069271 n

end A069271

/-! ## A069271.P17512270352975060887

`A124753(3*n+1)`
-/

namespace A069271.P17512270352975060887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124753 (3 * n + 1)

end

end A069271.P17512270352975060887

namespace A069271

/-- `A124753(3*n+1)` -/
def P17512270352975060887.Spec : Prop :=
  ∀ n, P17512270352975060887.a n = A069271 n

end A069271

/-! ## A069271.P7652717753423104184

`(n+1)*A000260(n)`
-/

namespace A069271.P7652717753423104184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000260 n

end

end A069271.P7652717753423104184

namespace A069271

/-- `(n+1)*A000260(n)` -/
def P7652717753423104184.Spec : Prop :=
  ∀ n, P7652717753423104184.a n = A069271 n

end A069271

/-! ## A069271.P12402452729094647748

`A069270(∑[n+2]-1)`
-/

namespace A069271.P12402452729094647748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069270 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A069271.P12402452729094647748

namespace A069271

/-- `A069270(∑[n+2]-1)` -/
def P12402452729094647748.Spec : Prop :=
  ∀ n, P12402452729094647748.a n = A069271 n

end A069271

/-! ## A069271.P11833279116513331657

`(n+1)*A146305(∑[n])`
-/

namespace A069271.P11833279116513331657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A146305 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A069271.P11833279116513331657

namespace A069271

/-- `(n+1)*A146305(∑[n])` -/
def P11833279116513331657.Spec : Prop :=
  ∀ n, P11833279116513331657.a n = A069271 n

end A069271

/-! ## A069271.P507248455266282464

`lcm(n+1, A369472(2*n+1))`
-/

namespace A069271.P507248455266282464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A369472 (2 * n + 1))

end

end A069271.P507248455266282464

namespace A069271

/-- `lcm(n+1, A369472(2*n+1))` -/
def P507248455266282464.Spec : Prop :=
  ∀ n, (P507248455266282464.a n : ℤ) = A069271 n

end A069271

/-! ## A069271.P8857120629962899859

`(n+1)/(2*n+1)*A006632(n+1)`
-/

namespace A069271.P8857120629962899859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 * n + 1 : ℚ) * (A006632 (n + 1) : ℚ)

end

end A069271.P8857120629962899859

namespace A069271

/-- `(n+1)/(2*n+1)*A006632(n+1)` -/
def P8857120629962899859.Spec : Prop :=
  ∀ n, P8857120629962899859.a n = (A069271 n : ℚ)

end A069271

/-! ## A069271.P11807493601243241024

`(A006632(n+1)+A000260(n))/2`
-/

namespace A069271.P11807493601243241024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006632 (n + 1) + A000260 n : ℚ) / 2

end

end A069271.P11807493601243241024

namespace A069271

/-- `(A006632(n+1)+A000260(n))/2` -/
def P11807493601243241024.Spec : Prop :=
  ∀ n, P11807493601243241024.a n = (A069271 n : ℚ)

end A069271

/-! ## A069271.P16318907719212070893

`A069270(∑[n+1]+n)^(A000040(n+1)%2)`
-/

namespace A069271.P16318907719212070893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069270 (∑ j ∈ Finset.range (n + 1), f1 j + n) : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A069271.P16318907719212070893

namespace A069271

/-- `A069270(∑[n+1]+n)^(A000040(n+1)%2)` -/
def P16318907719212070893.Spec : Prop :=
  ∀ n, P16318907719212070893.a n = (A069271 n : ℚ)

end A069271

/-! ## A069271.P2444851705764987213

`A002293(n)+A027836(n)-A000260(n)`
-/

namespace A069271.P2444851705764987213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 n + (A027836 n - A000260 n)

end

end A069271.P2444851705764987213

namespace A069271

/-- `A002293(n)+A027836(n)-A000260(n)` -/
def P2444851705764987213.Spec : Prop :=
  ∀ n, P2444851705764987213.a n = A069271 n

end A069271

/-! ## A069271.P13619194966166449402

`A000260(n)/A006013(n)*A045721(n)`
-/

namespace A069271.P13619194966166449402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000260 n : ℚ) / (A006013 n : ℚ) * (A045721 n : ℚ)

end

end A069271.P13619194966166449402

namespace A069271

/-- `A000260(n)/A006013(n)*A045721(n)` -/
def P13619194966166449402.Spec : Prop :=
  ∀ n, P13619194966166449402.a n = (A069271 n : ℚ)

end A069271

/-! ## A069271.P5389056319328592896

`A026005(n)/(n+1)`
-/

namespace A069271.P5389056319328592896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026005 n : ℚ) / (n + 1 : ℚ)

end

end A069271.P5389056319328592896

namespace A069271

/-- `A026005(n)/(n+1)` -/
def P5389056319328592896.Spec : Prop :=
  ∀ n, P5389056319328592896.a n = (A069271 n : ℚ)

end A069271

/-! ## A069271.P2826462278825188402

`A257633(n)/Δ[n²]`
-/

namespace A069271.P2826462278825188402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257633 n : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A069271.P2826462278825188402

namespace A069271

/-- `A257633(n)/Δ[n²]` -/
def P2826462278825188402.Spec : Prop :=
  ∀ n, P2826462278825188402.a n = (A069271 n : ℚ)

end A069271

/-!
# A069272: 11-almost primes (generalization of semiprimes).

The programs for A069272, there is no canonical definition to state claims against.
-/

/-! ## A069272.P1968930359495600868

`A069273(n+1)/A015910(A000040(3*n+2))`
-/

namespace A069272.P1968930359495600868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069273 (n + 1) : ℚ) / (A015910 (A000040 (3 * n + 2)).toNat : ℚ)

end

end A069272.P1968930359495600868

/-! ## A069272.P6861090656522385513

`A000027(A069273(n+1))/2`
-/

namespace A069272.P6861090656522385513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (A069273 (n + 1)).toNat : ℚ) / 2

end

end A069272.P6861090656522385513

/-! ## A069272.P5108092380076290822

`A069273(n+1)/A300247(A033215(2*n+5))`
-/

namespace A069272.P5108092380076290822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069273 (n + 1) : ℚ) / (A300247 (A033215 (2 * n + 5)).toNat : ℚ)

end

end A069272.P5108092380076290822

/-! ## A069272.P16152340193415742503

`A069273(n+1)/A319357(A242244(n+1))`
-/

namespace A069272.P16152340193415742503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069273 (n + 1) : ℚ) / (A319357 (A242244 (n + 1)).toNat : ℚ)

end

end A069272.P16152340193415742503

/-! ## A069272.P7863744885046293594

`A069276(n+1)/A040056(A156040(n))`
-/

namespace A069272.P7863744885046293594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069276 (n + 1) : ℚ) / (A040056 (A156040 n).toNat : ℚ)

end

end A069272.P7863744885046293594

/-! ## A069272.P9560151585560654458

`A101695(n+1)/A101695(n+2)*A069273(n+2)`
-/

namespace A069272.P9560151585560654458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101695 (n + 1) : ℚ) / (A101695 (n + 2) : ℚ) * (A069273 (n + 2) : ℚ)

end

end A069272.P9560151585560654458

/-! ## A069272.P8465324137027051520

`A069273(n+1)/A046698(A038593(n+1))`
-/

namespace A069272.P8465324137027051520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069273 (n + 1) : ℚ) / (A046698 (A038593 (n + 1)).toNat : ℚ)

end

end A069272.P8465324137027051520

/-! ## A069272.P5717357090703621750

`A069273(n+1)/A020639(A272183(n+1))`
-/

namespace A069272.P5717357090703621750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069273 (n + 1) : ℚ) / (A020639 (A272183 (n + 1)).toNat : ℚ)

end

end A069272.P5717357090703621750

/-! ## A069272.P4888103292961746071

`2*A069273(n+1)/A030727(A030736(n+1))`
-/

namespace A069272.P4888103292961746071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A069273 (n + 1) : ℚ) / (A030727 (A030736 (n + 1)).toNat : ℚ))

end

end A069272.P4888103292961746071

/-! ## A069272.P8045790629156384107

`A069273(n+1)/A319357(A155140(n+1))`
-/

namespace A069272.P8045790629156384107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069273 (n + 1) : ℚ) / (A319357 (A155140 (n + 1)).toNat : ℚ)

end

end A069272.P8045790629156384107

/-! ## A069272.P157136933438436714

`A069273(n+1)/A020639(A294873(n+2))`
-/

namespace A069272.P157136933438436714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069273 (n + 1) : ℚ) / (A020639 (A294873 (n + 2)).toNat : ℚ)

end

end A069272.P157136933438436714

/-! ## A069272.P18096973171381366113

`A069279(n+1)/A061142(A046308(n+1))`
-/

namespace A069272.P18096973171381366113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069279 (n + 1) : ℚ) / (A061142 (A046308 (n + 1)).toNat : ℚ)

end

end A069272.P18096973171381366113

/-! ## A069272.P513422488573163824

`A069275(n+1)/A073093(A046308(n+1))`
-/

namespace A069272.P513422488573163824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069275 (n + 1) : ℚ) / (A073093 (A046308 (n + 1)).toNat : ℚ)

end

end A069272.P513422488573163824

/-! ## A069272.P537225706699264148

`A069275(n+1)/A000005(A046401(n+1))`
-/

namespace A069272.P537225706699264148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069275 (n + 1) : ℚ) / (A000005 (A046401 (n + 1)).toNat : ℚ)

end

end A069272.P537225706699264148

/-! ## A069272.P7753341745440499399

`A046314(n+1)*A085058(A105093(n+1))`
-/

namespace A069272.P7753341745440499399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046314 (n + 1) * A085058 (A105093 (n + 1)).toNat

end

end A069272.P7753341745440499399

/-! ## A069272.P4844249922395804477

`A001222(A014613(A141881(n+1)))*A046312(n+1)`
-/

namespace A069272.P4844249922395804477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A014613 (A141881 (n + 1)).toNat).toNat * A046312 (n + 1)

end

end A069272.P4844249922395804477

/-! ## A069272.P3967540899058977476

`2*2*A046312(A002260(∑[n+1]))`
-/

namespace A069272.P3967540899058977476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * A046312 (A002260 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat)

end

end A069272.P3967540899058977476

/-! ## A069272.P17508549894712132485

`A046312(n+1)*A276620(A000124(n))`
-/

namespace A069272.P17508549894712132485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046312 (n + 1) * A276620 (A000124 n).toNat

end

end A069272.P17508549894712132485

/-!
# A069273: 12-almost primes (generalization of semiprimes).

The programs for A069273, there is no canonical definition to state claims against.
-/

/-! ## A069273.P11276690950530864978

`A069274(n+1)/A000005(A005383(n+1))`
-/

namespace A069273.P11276690950530864978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069274 (n + 1) : ℚ) / (A000005 (A005383 (n + 1)).toNat : ℚ)

end

end A069273.P11276690950530864978

/-! ## A069273.P13849093899568984223

`A069274(n+1)/A166469(A000040(3*n+4))`
-/

namespace A069273.P13849093899568984223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069274 (n + 1) : ℚ) / (A166469 (A000040 (3 * n + 4)).toNat : ℚ)

end

end A069273.P13849093899568984223

/-! ## A069273.P15026691164723803990

`A069274(n+1)/A327527(A334096(n+1))`
-/

namespace A069273.P15026691164723803990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069274 (n + 1) : ℚ) / (A327527 (A334096 (n + 1)).toNat : ℚ)

end

end A069273.P15026691164723803990

/-! ## A069273.P2732681313500532434

`A069274(n+1)/A001227(A258038(n+1))`
-/

namespace A069273.P2732681313500532434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069274 (n + 1) : ℚ) / (A001227 (A258038 (n + 1)).toNat : ℚ)

end

end A069273.P2732681313500532434

/-! ## A069273.P16154933988318546133

`A069278(n+1)/A171440(A006005(2*n+3))`
-/

namespace A069273.P16154933988318546133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069278 (n + 1) : ℚ) / (A171440 (A006005 (2 * n + 3)).toNat : ℚ)

end

end A069273.P16154933988318546133

/-! ## A069273.P10987310934884476259

`A069274(n+1)/A001227(A000040(2*(n+2)))`
-/

namespace A069273.P10987310934884476259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069274 (n + 1) : ℚ) / (A001227 (A000040 (2 * (n + 2))).toNat : ℚ)

end

end A069273.P10987310934884476259

/-! ## A069273.P4580194322993235284

`A069274(n+1)/A001227(A191040(n+1))`
-/

namespace A069273.P4580194322993235284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069274 (n + 1) : ℚ) / (A001227 (A191040 (n + 1)).toNat : ℚ)

end

end A069273.P4580194322993235284

/-! ## A069273.P10534455292677962420

`A069274(n+1)/A077982(A105184(n+1))`
-/

namespace A069273.P10534455292677962420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069274 (n + 1) : ℚ) / (A077982 (A105184 (n + 1)).toNat : ℚ)

end

end A069273.P10534455292677962420

/-! ## A069273.P2620023324480815262

`A069276(n+1)/A001222(A110296(n+1))`
-/

namespace A069273.P2620023324480815262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069276 (n + 1) : ℚ) / (A001222 (A110296 (n + 1)).toNat : ℚ)

end

end A069273.P2620023324480815262

/-! ## A069273.P2343881941043389236

`A069272(n+1)*A284260(A017641(2*n+1))`
-/

namespace A069273.P2343881941043389236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069272 (n + 1) * A284260 (A017641 (2 * n + 1)).toNat

end

end A069273.P2343881941043389236

/-! ## A069273.P12992294427349036244

`A000005(A109308(2*n+5))*A069272(n+1)`
-/

namespace A069273.P12992294427349036244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A109308 (2 * n + 5)).toNat * A069272 (n + 1)

end

end A069273.P12992294427349036244

/-! ## A069273.P17224816722428769147

`A000005(A006512(3*n+4))*A069272(n+1)`
-/

namespace A069273.P17224816722428769147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A006512 (3 * n + 4)).toNat * A069272 (n + 1)

end

end A069273.P17224816722428769147

/-! ## A069273.P415080395077187883

`A000005(A001359(3*n+5))*A069272(n+1)`
-/

namespace A069273.P415080395077187883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001359 (3 * n + 5)).toNat * A069272 (n + 1)

end

end A069273.P415080395077187883

/-! ## A069273.P10875555753103836057

`A000027(2*A069272(n+1))`
-/

namespace A069273.P10875555753103836057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (2 * A069272 (n + 1)).toNat

end

end A069273.P10875555753103836057

/-! ## A069273.P5428538106808022436

`A069275(n+1)/A036453(A045802(n+1))²`
-/

namespace A069273.P5428538106808022436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069275 (n + 1) : ℚ) / (A036453 (A045802 (n + 1)).toNat ^ 2 : ℚ)

end

end A069273.P5428538106808022436

/-! ## A069273.P14649960667966859136

`2*A069276(n+1)/A040056(A156040(n))`
-/

namespace A069273.P14649960667966859136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A069276 (n + 1) : ℚ) / (A040056 (A156040 n).toNat : ℚ))

end

end A069273.P14649960667966859136

/-! ## A069273.P14201934012560517168

`A069275(n+1)/8*A000005(A134517(5*n+18))`
-/

namespace A069273.P14201934012560517168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069275 (n + 1) : ℚ) / 8 * (A000005 (A134517 (5 * n + 18)).toNat : ℚ)

end

end A069273.P14201934012560517168

/-! ## A069273.P2163545739761111572

`A007913(2*(n+2)²)*A069272(n+1)`
-/

namespace A069273.P2163545739761111572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (2 * (n + 2) ^ 2) * A069272 (n + 1)

end

end A069273.P2163545739761111572

/-! ## A069273.P8339460438716451285

`2*A069275(n+1)/A000005(A046401(n+1))`
-/

namespace A069273.P8339460438716451285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A069275 (n + 1) : ℚ) / (A000005 (A046401 (n + 1)).toNat : ℚ))

end

end A069273.P8339460438716451285

/-!
# A069274: 13-almost primes (generalization of semiprimes).

The programs for A069274, there is no canonical definition to state claims against.
-/

/-! ## A069274.P9777991392196389881

`A069275(n+1)/A069230(A069232(n+1))`
-/

namespace A069274.P9777991392196389881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069275 (n + 1) : ℚ) / (A069230 (A069232 (n + 1)).toNat : ℚ)

end

end A069274.P9777991392196389881

/-! ## A069274.P919713941008271412

`A069276(n+1)/A069230(A069232(n+1))²`
-/

namespace A069274.P919713941008271412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069276 (n + 1) : ℚ) / (A069230 (A069232 (n + 1)).toNat ^ 2 : ℚ)

end

end A069274.P919713941008271412

/-! ## A069274.P8686415496618542811

`A069278(n+1)/A171418(A069232(n+4))`
-/

namespace A069274.P8686415496618542811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069278 (n + 1) : ℚ) / (A171418 (A069232 (n + 4)).toNat : ℚ)

end

end A069274.P8686415496618542811

/-! ## A069274.P11162930230670832321

`A069278(n+1)/A171418(A017353(n))`
-/

namespace A069274.P11162930230670832321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069278 (n + 1) : ℚ) / (A171418 (A017353 n).toNat : ℚ)

end

end A069274.P11162930230670832321

/-! ## A069274.P4675195459030148825

`A069275(n+1)/A000005(A128547(n+1))`
-/

namespace A069274.P4675195459030148825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069275 (n + 1) : ℚ) / (A000005 (A128547 (n + 1)).toNat : ℚ)

end

end A069274.P4675195459030148825

/-! ## A069274.P18207552069702610986

`A069275(n+1)/A355830(A249803(n+1))`
-/

namespace A069274.P18207552069702610986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069275 (n + 1) : ℚ) / (A355830 (A249803 (n + 1)).toNat : ℚ)

end

end A069274.P18207552069702610986

/-! ## A069274.P8796439652135147588

`A069275(n+1)/A278523(A118958(n+1))`
-/

namespace A069274.P8796439652135147588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069275 (n + 1) : ℚ) / (A278523 (A118958 (n + 1)).toNat : ℚ)

end

end A069274.P8796439652135147588

/-! ## A069274.P5045834043340434301

`A069275(n+1)/A000005(A062326(2*n+3))`
-/

namespace A069274.P5045834043340434301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069275 (n + 1) : ℚ) / (A000005 (A062326 (2 * n + 3)).toNat : ℚ)

end

end A069274.P5045834043340434301

/-! ## A069274.P16934191598854574336

`A069276(n+1)/A000005(A108605(n+1))`
-/

namespace A069274.P16934191598854574336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069276 (n + 1) : ℚ) / (A000005 (A108605 (n + 1)).toNat : ℚ)

end

end A069274.P16934191598854574336

/-! ## A069274.P3608831980002851849

`A046698(A228228(n+1))*A069273(n+1)`
-/

namespace A069274.P3608831980002851849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 (A228228 (n + 1)).toNat * A069273 (n + 1)

end

end A069274.P3608831980002851849

/-! ## A069274.P6521844608704019705

`A069280(n+1)/A000005(A264498(n+1))²`
-/

namespace A069274.P6521844608704019705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069280 (n + 1) : ℚ) / (A000005 (A264498 (n + 1)).toNat ^ 2 : ℚ)

end

end A069274.P6521844608704019705

/-! ## A069274.P10508235457123970723

`A069275(n+1)/A036453(A045802(n+1))`
-/

namespace A069274.P10508235457123970723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069275 (n + 1) : ℚ) / (A036453 (A045802 (n + 1)).toNat : ℚ)

end

end A069274.P10508235457123970723

/-! ## A069274.P12272514672833827040

`A101695(n+1)/A101695(n+2)*A069275(n+2)`
-/

namespace A069274.P12272514672833827040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101695 (n + 1) : ℚ) / (A101695 (n + 2) : ℚ) * (A069275 (n + 2) : ℚ)

end

end A069274.P12272514672833827040

/-! ## A069274.P11342802973343382007

`4*A069275(n+1)/A000005(A046401(n+1))`
-/

namespace A069274.P11342802973343382007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((A069275 (n + 1) : ℚ) / (A000005 (A046401 (n + 1)).toNat : ℚ))

end

end A069274.P11342802973343382007

/-! ## A069274.P13537478804680389298

`2*A046314(n+1)*A001222(A046330(n+1))`
-/

namespace A069274.P13537478804680389298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046314 (n + 1) * A001222 (A046330 (n + 1)).toNat

end

end A069274.P13537478804680389298

/-! ## A069274.P7528778238805290316

`8*A069275(n+1)/A040056(A157924(n+1))`
-/

namespace A069274.P7528778238805290316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 * ((A069275 (n + 1) : ℚ) / (A040056 (A157924 (n + 1)).toNat : ℚ))

end

end A069274.P7528778238805290316

/-! ## A069274.P2309970761214524350

`A069273(A172471(∑[n+1]))+A069273(n+1)`
-/

namespace A069274.P2309970761214524350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069273 (A172471 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A069273 (n + 1)

end

end A069274.P2309970761214524350

/-! ## A069274.P4605310996009436426

`2*A020639(Δ[n^3]+1)*A069272(n+1)`
-/

namespace A069274.P4605310996009436426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A020639 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat * A069272 (n + 1))

end

end A069274.P4605310996009436426

/-! ## A069274.P18244887406916470098

`A276620(A000124(n))²*A046312(n+1)`
-/

namespace A069274.P18244887406916470098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276620 (A000124 n).toNat ^ 2 * A046312 (n + 1)

end

end A069274.P18244887406916470098

/-!
# A069275: 14-almost primes (generalization of semiprimes).

The programs for A069275, there is no canonical definition to state claims against.
-/

/-! ## A069275.P8242516012276726549

`A069277(n+1)/A296078(A007522(n+1))²`
-/

namespace A069275.P8242516012276726549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069277 (n + 1) : ℚ) / (A296078 (A007522 (n + 1)).toNat ^ 2 : ℚ)

end

end A069275.P8242516012276726549

/-! ## A069275.P10163817963234731225

`A069276(n+1)/A000005(A006567(n+1))`
-/

namespace A069275.P10163817963234731225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069276 (n + 1) : ℚ) / (A000005 (A006567 (n + 1)).toNat : ℚ)

end

end A069275.P10163817963234731225

/-! ## A069275.P16138568019491600931

`A069276(n+1)/A000005(A002145(3*n+2))`
-/

namespace A069275.P16138568019491600931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069276 (n + 1) : ℚ) / (A000005 (A002145 (3 * n + 2)).toNat : ℚ)

end

end A069275.P16138568019491600931

/-! ## A069275.P17200412144169698837

`A069276(n+1)/A000005(A235482(n+1))`
-/

namespace A069275.P17200412144169698837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069276 (n + 1) : ℚ) / (A000005 (A235482 (n + 1)).toNat : ℚ)

end

end A069275.P17200412144169698837

/-! ## A069275.P12011208616090815663

`A069278(n+1)/A001222(A046310(n+1))`
-/

namespace A069275.P12011208616090815663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069278 (n + 1) : ℚ) / (A001222 (A046310 (n + 1)).toNat : ℚ)

end

end A069275.P12011208616090815663

/-! ## A069275.P2958674126973480056

`A069281(n+1)/A001222(A046310(n+1))²`
-/

namespace A069275.P2958674126973480056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069281 (n + 1) : ℚ) / (A001222 (A046310 (n + 1)).toNat ^ 2 : ℚ)

end

end A069275.P2958674126973480056

/-! ## A069275.P3466834656020919586

`A069276(n+1)/A010846(A000040(n+1))`
-/

namespace A069275.P3466834656020919586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069276 (n + 1) : ℚ) / (A010846 (A000040 (n + 1)).toNat : ℚ)

end

end A069275.P3466834656020919586

/-! ## A069275.P12876153187202801604

`A069276(n+1)/A000005(A077800(2*n+5))`
-/

namespace A069275.P12876153187202801604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069276 (n + 1) : ℚ) / (A000005 (A077800 (2 * n + 5)).toNat : ℚ)

end

end A069275.P12876153187202801604

/-! ## A069275.P1781467427504746223

`A069277(n+1)/A323168(A156658(n+1))²`
-/

namespace A069275.P1781467427504746223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069277 (n + 1) : ℚ) / (A323168 (A156658 (n + 1)).toNat ^ 2 : ℚ)

end

end A069275.P1781467427504746223

/-! ## A069275.P16316090810234360238

`A069276(n+1)/A000005(A056983(n+1))`
-/

namespace A069275.P16316090810234360238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069276 (n + 1) : ℚ) / (A000005 (A056983 (n + 1)).toNat : ℚ)

end

end A069275.P16316090810234360238

/-! ## A069275.P1498224117710209845

`A069276(n+1)/A069230(A069232(n+1))`
-/

namespace A069275.P1498224117710209845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069276 (n + 1) : ℚ) / (A069230 (A069232 (n + 1)).toNat : ℚ)

end

end A069275.P1498224117710209845

/-! ## A069275.P14884290924132750222

`A069277(n+1)/A069230(A069232(n+1))²`
-/

namespace A069275.P14884290924132750222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069277 (n + 1) : ℚ) / (A069230 (A069232 (n + 1)).toNat ^ 2 : ℚ)

end

end A069275.P14884290924132750222

/-! ## A069275.P17033595372655656280

`A069276(n+1)/A000005(A262275(n+1))`
-/

namespace A069275.P17033595372655656280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069276 (n + 1) : ℚ) / (A000005 (A262275 (n + 1)).toNat : ℚ)

end

end A069275.P17033595372655656280

/-! ## A069275.P15154832653325128591

`A069276(n+1)/A130130(A135641(2*(n+1)))`
-/

namespace A069275.P15154832653325128591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069276 (n + 1) : ℚ) / (A130130 (A135641 (2 * (n + 1))).toNat : ℚ)

end

end A069275.P15154832653325128591

/-! ## A069275.P16778417573986529663

`A069276(n+1)/A020639(A301722(3*n+4))`
-/

namespace A069275.P16778417573986529663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069276 (n + 1) : ℚ) / (A020639 (A301722 (3 * n + 4)).toNat : ℚ)

end

end A069275.P16778417573986529663

/-! ## A069275.P4091766585698282911

`A069276(n+1)/(A000005(A108605(n+1))-2)`
-/

namespace A069275.P4091766585698282911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069276 (n + 1) : ℚ) / (A000005 (A108605 (n + 1)).toNat - 2 : ℚ)

end

end A069275.P4091766585698282911

/-! ## A069275.P15643586792481505950

`A001227(A002145(n+1))*A069274(n+1)`
-/

namespace A069275.P15643586792481505950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A002145 (n + 1)).toNat * A069274 (n + 1)

end

end A069275.P15643586792481505950

/-!
# A069276: 15-almost primes (generalization of semiprimes).

The programs for A069276, there is no canonical definition to state claims against.
-/

/-! ## A069276.P1054231378841602684

`A069277(n+1)/A281118(A001358(n+1))`
-/

namespace A069276.P1054231378841602684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069277 (n + 1) : ℚ) / (A281118 (A001358 (n + 1)).toNat : ℚ)

end

end A069276.P1054231378841602684

/-! ## A069276.P18444205739584051756

`A069278(n+1)/A038548(A001358(n+1))²`
-/

namespace A069276.P18444205739584051756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069278 (n + 1) : ℚ) / (A038548 (A001358 (n + 1)).toNat ^ 2 : ℚ)

end

end A069276.P18444205739584051756

/-! ## A069276.P9618356034769176598

`A069277(n+1)/A323168(A000040(3*n+1))`
-/

namespace A069276.P9618356034769176598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069277 (n + 1) : ℚ) / (A323168 (A000040 (3 * n + 1)).toNat : ℚ)

end

end A069276.P9618356034769176598

/-! ## A069276.P816721629714751719

`A069278(n+1)/A020639(A295641(n+1))²`
-/

namespace A069276.P816721629714751719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069278 (n + 1) : ℚ) / (A020639 (A295641 (n + 1)).toNat ^ 2 : ℚ)

end

end A069276.P816721629714751719

/-! ## A069276.P2525551460553705094

`A069278(n+1)/A000005(A295642(n+1))²`
-/

namespace A069276.P2525551460553705094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069278 (n + 1) : ℚ) / (A000005 (A295642 (n + 1)).toNat ^ 2 : ℚ)

end

end A069276.P2525551460553705094

/-! ## A069276.P9885892328649338293

`A069278(n+1)/A001227(A046388(n+1))`
-/

namespace A069276.P9885892328649338293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069278 (n + 1) : ℚ) / (A001227 (A046388 (n + 1)).toNat : ℚ)

end

end A069276.P9885892328649338293

/-! ## A069276.P7025147796971471943

`A069277(n+1)/A000005(A007500(n+1))`
-/

namespace A069276.P7025147796971471943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069277 (n + 1) : ℚ) / (A000005 (A007500 (n + 1)).toNat : ℚ)

end

end A069276.P7025147796971471943

/-! ## A069276.P15423647804753862552

`A069278(n+1)/A131291(A168326(2*n+1))`
-/

namespace A069276.P15423647804753862552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069278 (n + 1) : ℚ) / (A131291 (A168326 (2 * n + 1)).toNat : ℚ)

end

end A069276.P15423647804753862552

/-! ## A069276.P11341586376987620222

`A069277(n+1)/A296078(A007522(n+1))`
-/

namespace A069276.P11341586376987620222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069277 (n + 1) : ℚ) / (A296078 (A007522 (n + 1)).toNat : ℚ)

end

end A069276.P11341586376987620222

/-! ## A069276.P9737357767713614544

`A069277(n+1)/A296078(A002476(2*(n+1)))`
-/

namespace A069276.P9737357767713614544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069277 (n + 1) : ℚ) / (A296078 (A002476 (2 * (n + 1))).toNat : ℚ)

end

end A069276.P9737357767713614544

/-! ## A069276.P6950841359943163500

`A069277(n+1)/A000005(A080608(3*n+1))`
-/

namespace A069276.P6950841359943163500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069277 (n + 1) : ℚ) / (A000005 (A080608 (3 * n + 1)).toNat : ℚ)

end

end A069276.P6950841359943163500

/-! ## A069276.P16169990757021980777

`A069278(n+1)/A000005(A340750(n+1))²`
-/

namespace A069276.P16169990757021980777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069278 (n + 1) : ℚ) / (A000005 (A340750 (n + 1)).toNat ^ 2 : ℚ)

end

end A069276.P16169990757021980777

/-! ## A069276.P14001902727514881680

`A069277(n+1)/A046523(A000040(n+1))`
-/

namespace A069276.P14001902727514881680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069277 (n + 1) : ℚ) / (A046523 (A000040 (n + 1)).toNat : ℚ)

end

end A069276.P14001902727514881680

/-! ## A069276.P10534230512434909367

`A069277(n+1)/A323168(A156658(n+1))`
-/

namespace A069276.P10534230512434909367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069277 (n + 1) : ℚ) / (A323168 (A156658 (n + 1)).toNat : ℚ)

end

end A069276.P10534230512434909367

/-! ## A069276.P9399861566234725202

`A000005(A134517(n+1))*A069275(n+1)`
-/

namespace A069276.P9399861566234725202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A134517 (n + 1)).toNat * A069275 (n + 1)

end

end A069276.P9399861566234725202

/-! ## A069276.P18077401626038760033

`A000005(A006450(n+1))*A069275(n+1)`
-/

namespace A069276.P18077401626038760033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A006450 (n + 1)).toNat * A069275 (n + 1)

end

end A069276.P18077401626038760033

/-! ## A069276.P6536510270831163618

`A000005(A005384(n+1))*A069275(n+1)`
-/

namespace A069276.P6536510270831163618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A005384 (n + 1)).toNat * A069275 (n + 1)

end

end A069276.P6536510270831163618

/-! ## A069276.P17450050033912113458

`A000005(A128547(n+1))*A069275(n+1)`
-/

namespace A069276.P17450050033912113458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A128547 (n + 1)).toNat * A069275 (n + 1)

end

end A069276.P17450050033912113458

/-! ## A069276.P1983992700222372716

`A101695(n+1)/A101695(n+2)*A069277(n+2)`
-/

namespace A069276.P1983992700222372716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101695 (n + 1) : ℚ) / (A101695 (n + 2) : ℚ) * (A069277 (n + 2) : ℚ)

end

end A069276.P1983992700222372716

/-!
# A069277: 16-almost primes (generalization of semiprimes).

The programs for A069277, there is no canonical definition to state claims against.
-/

/-! ## A069277.P1189360821986988836

`A069278(n+1)/A020639(A295639(n+1))`
-/

namespace A069277.P1189360821986988836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069278 (n + 1) : ℚ) / (A020639 (A295639 (n + 1)).toNat : ℚ)

end

end A069277.P1189360821986988836

/-! ## A069277.P10040386297871718499

`2*A069280(n+1)/A171418(A033987(n+1))`
-/

namespace A069277.P10040386297871718499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A069280 (n + 1) : ℚ) / (A171418 (A033987 (n + 1)).toNat : ℚ)

end

end A069277.P10040386297871718499

/-! ## A069277.P478006733739057341

`A069278(n+1)/A096342(3*n+1)%3`
-/

namespace A069277.P478006733739057341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069278 (n + 1) : ℚ) / (Int.tmod (A096342 (3 * n + 1)) 3 : ℚ)

end

end A069277.P478006733739057341

/-! ## A069277.P15556678701469465620

`A069278(n+1)/A168361(A168329(n+1))`
-/

namespace A069277.P15556678701469465620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069278 (n + 1) : ℚ) / (A168361 (A168329 (n + 1)).toNat : ℚ)

end

end A069277.P15556678701469465620

/-! ## A069277.P12104318941234080745

`A069280(n+1)/A339323(A053760(3*n+1))`
-/

namespace A069277.P12104318941234080745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069280 (n + 1) : ℚ) / (A339323 (A053760 (3 * n + 1)).toNat : ℚ)

end

end A069277.P12104318941234080745

/-! ## A069277.P1556061313581348622

`A069280(n+1)/dr(A016995(3*n+4))`
-/

namespace A069277.P1556061313581348622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069280 (n + 1) : ℚ) / (SequenceMachineLib.digitalRoot (A016995 (3 * n + 4)) : ℚ)

end

end A069277.P1556061313581348622

/-! ## A069277.P8889359957878043648

`A069278(n+1)/A000005(A000040(3*n+4))`
-/

namespace A069277.P8889359957878043648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069278 (n + 1) : ℚ) / (A000005 (A000040 (3 * n + 4)).toNat : ℚ)

end

end A069277.P8889359957878043648

/-! ## A069277.P7402831166855360597

`A038548(A001358(n+1))*A069276(n+1)`
-/

namespace A069277.P7402831166855360597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A001358 (n + 1)).toNat * A069276 (n + 1)

end

end A069277.P7402831166855360597

/-! ## A069277.P16273425450097863089

`A069278(n+1)/A038548(A001358(n+1))`
-/

namespace A069277.P16273425450097863089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069278 (n + 1) : ℚ) / (A038548 (A001358 (n + 1)).toNat : ℚ)

end

end A069277.P16273425450097863089

/-! ## A069277.P15559640228477758628

`A069276(n+1)*A130130(A078174(2*(n+1)))`
-/

namespace A069277.P15559640228477758628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069276 (n + 1) * A130130 (A078174 (2 * (n + 1))).toNat

end

end A069277.P15559640228477758628

/-! ## A069277.P17878228030100710709

`A069276(n+1)*A130130(A005408(2*(n+2)))`
-/

namespace A069277.P17878228030100710709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069276 (n + 1) * A130130 (A005408 (2 * (n + 2))).toNat

end

end A069277.P17878228030100710709

/-! ## A069277.P13825705388190816925

`A000005(A007528(2*n+3))*A069276(n+1)`
-/

namespace A069277.P13825705388190816925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007528 (2 * n + 3)).toNat * A069276 (n + 1)

end

end A069277.P13825705388190816925

/-! ## A069277.P13783752603101685176

`A069276(n+1)*A327163(A074834(n+1))`
-/

namespace A069277.P13783752603101685176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069276 (n + 1) * A327163 (A074834 (n + 1)).toNat

end

end A069277.P13783752603101685176

/-! ## A069277.P368358947483974564

`A069278(n+1)/A020639(A295641(n+1))`
-/

namespace A069277.P368358947483974564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069278 (n + 1) : ℚ) / (A020639 (A295641 (n + 1)).toNat : ℚ)

end

end A069277.P368358947483974564

/-! ## A069277.P15991008349349431722

`A069278(n+1)/A000005(A295642(n+1))`
-/

namespace A069277.P15991008349349431722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069278 (n + 1) : ℚ) / (A000005 (A295642 (n + 1)).toNat : ℚ)

end

end A069277.P15991008349349431722

/-! ## A069277.P15945736046315326121

`A000005(A106856(2*(n+1)))*A069276(n+1)`
-/

namespace A069277.P15945736046315326121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A106856 (2 * (n + 1))).toNat * A069276 (n + 1)

end

end A069277.P15945736046315326121

/-! ## A069277.P3313154217875640312

`A069280(n+1)/A083948(2*n+1)`
-/

namespace A069277.P3313154217875640312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069280 (n + 1) : ℚ) / (A083948 (2 * n + 1) : ℚ)

end

end A069277.P3313154217875640312

/-!
# A069278: 17-almost primes (generalization of semiprimes).

The programs for A069278, there is no canonical definition to state claims against.
-/

/-! ## A069278.P5061437054303553770

`A069279(n+1)/A000005(A164368(n+1))`
-/

namespace A069278.P5061437054303553770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069279 (n + 1) : ℚ) / (A000005 (A164368 (n + 1)).toNat : ℚ)

end

end A069278.P5061437054303553770

/-! ## A069278.P10185093949830556616

`A069279(n+1)/A006928(A025505(n+1))`
-/

namespace A069278.P10185093949830556616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069279 (n + 1) : ℚ) / (A006928 (A025505 (n + 1)).toNat : ℚ)

end

end A069278.P10185093949830556616

/-! ## A069278.P10036993898340851784

`A069279(n+1)/A053669(2*n+1)`
-/

namespace A069278.P10036993898340851784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069279 (n + 1) : ℚ) / (A053669 (2 * n + 1) : ℚ)

end

end A069278.P10036993898340851784

/-! ## A069278.P11099276166938709818

`A069280(n+1)/A001358(A152271(2*n))`
-/

namespace A069278.P11099276166938709818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069280 (n + 1) : ℚ) / (A001358 (A152271 (2 * n)).toNat : ℚ)

end

end A069278.P11099276166938709818

/-! ## A069278.P15300340863024731945

`A069280(n+1)/A046109(A097706(2*n+1))`
-/

namespace A069278.P15300340863024731945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069280 (n + 1) : ℚ) / (A046109 (A097706 (2 * n + 1)).toNat : ℚ)

end

end A069278.P15300340863024731945

/-! ## A069278.P7374294282645669214

`A069279(n+1)/A324347(A038573(2*(n+1)))`
-/

namespace A069278.P7374294282645669214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069279 (n + 1) : ℚ) / (A324347 (A038573 (2 * (n + 1))).toNat : ℚ)

end

end A069278.P7374294282645669214

/-! ## A069278.P6604653223629850367

`A069280(n+1)/A001358(A122458(2*(n+2)))`
-/

namespace A069278.P6604653223629850367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069280 (n + 1) : ℚ) / (A001358 (A122458 (2 * (n + 2))).toNat : ℚ)

end

end A069278.P6604653223629850367

/-! ## A069278.P14957287912819207470

`A069280(n+1)/A053806(A001511(2*n+5))`
-/

namespace A069278.P14957287912819207470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069280 (n + 1) : ℚ) / (A053806 (A001511 (2 * n + 5)).toNat : ℚ)

end

end A069278.P14957287912819207470

/-! ## A069278.P596111166555991127

`A000005(A106856(n+1))*A069277(n+1)`
-/

namespace A069278.P596111166555991127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A106856 (n + 1)).toNat * A069277 (n + 1)

end

end A069278.P596111166555991127

/-! ## A069278.P177051074689283028

`A069277(n+1)*A272565(A001615(n+3))`
-/

namespace A069278.P177051074689283028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069277 (n + 1) * A272565 (A001615 (n + 3)).toNat

end

end A069278.P177051074689283028

/-! ## A069278.P211914062070174403

`A069280(n+1)/A001222(A014613(3*n+1))`
-/

namespace A069278.P211914062070174403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069280 (n + 1) : ℚ) / (A001222 (A014613 (3 * n + 1)).toNat : ℚ)

end

end A069278.P211914062070174403

/-! ## A069278.P13318588663622725327

`A069279(n+1)/A014963(A303809(3*n+2))`
-/

namespace A069278.P13318588663622725327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069279 (n + 1) : ℚ) / (A014963 (A303809 (3 * n + 2)).toNat : ℚ)

end

end A069278.P13318588663622725327

/-! ## A069278.P11546349686791211287

`A000005(A000040(3*n+5))*A069277(n+1)`
-/

namespace A069278.P11546349686791211287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000040 (3 * n + 5)).toNat * A069277 (n + 1)

end

end A069278.P11546349686791211287

/-! ## A069278.P8145686578400248405

`A000005(A077321(n+1))*A069277(n+1)`
-/

namespace A069278.P8145686578400248405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A077321 (n + 1)).toNat * A069277 (n + 1)

end

end A069278.P8145686578400248405

/-! ## A069278.P5631206529793034586

`A001222(A046310(n+1))*A069275(n+1)`
-/

namespace A069278.P5631206529793034586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A046310 (n + 1)).toNat * A069275 (n + 1)

end

end A069278.P5631206529793034586

/-! ## A069278.P15687946924567762535

`A069281(n+1)/A001222(A046310(n+1))`
-/

namespace A069278.P15687946924567762535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069281 (n + 1) : ℚ) / (A001222 (A046310 (n + 1)).toNat : ℚ)

end

end A069278.P15687946924567762535

/-! ## A069278.P10200401265421222100

`A069277(n+1)*A117004(A000040(n+1))`
-/

namespace A069278.P10200401265421222100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069277 (n + 1) * A117004 (A000040 (n + 1)).toNat

end

end A069278.P10200401265421222100

/-! ## A069278.P1377603300761547599

`A069230(A069232(n+1))*A069277(n+1)`
-/

namespace A069278.P1377603300761547599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069230 (A069232 (n + 1)).toNat * A069277 (n + 1)

end

end A069278.P1377603300761547599

/-!
# A069279: Products of exactly 18 primes (generalization of semiprimes).

The programs for A069279, there is no canonical definition to state claims against.
-/

/-! ## A069279.P7217256438024049140

`A069280(n+1)/2`
-/

namespace A069279.P7217256438024049140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069280 (n + 1) : ℚ) / 2

end

end A069279.P7217256438024049140

/-! ## A069279.P2074075914129620039

`A069281(n+1)/4`
-/

namespace A069279.P2074075914129620039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069281 (n + 1) : ℚ) / 4

end

end A069279.P2074075914129620039

/-! ## A069279.P11473215410352266986

`2*A069278(A338295(2*n+1))`
-/

namespace A069279.P11473215410352266986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069278 (A338295 (2 * n + 1)).toNat

end

end A069279.P11473215410352266986

/-! ## A069279.P8297038205834772892

`A000040(A001511(2*n+1))*A069278(n+1)`
-/

namespace A069279.P8297038205834772892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A001511 (2 * n + 1)).toNat * A069278 (n + 1)

end

end A069279.P8297038205834772892

/-! ## A069279.P7184199063286821888

`A020639(A082075(2*n+1))*A069278(n+1)`
-/

namespace A069279.P7184199063286821888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A082075 (2 * n + 1)).toNat * A069278 (n + 1)

end

end A069279.P7184199063286821888

/-! ## A069279.P13647268466094904668

`A000005(A198162(2*n+1))*A069278(n+1)`
-/

namespace A069279.P13647268466094904668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A198162 (2 * n + 1)).toNat * A069278 (n + 1)

end

end A069279.P13647268466094904668

/-! ## A069279.P3727705320226783108

`A020639(A278230(2*n+1))*A069278(n+1)`
-/

namespace A069279.P3727705320226783108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A278230 (2 * n + 1)).toNat * A069278 (n + 1)

end

end A069279.P3727705320226783108

/-! ## A069279.P5943317834882852999

`2*A069278(A065033(2*(n+1)))`
-/

namespace A069279.P5943317834882852999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069278 (A065033 (2 * (n + 1))).toNat

end

end A069279.P5943317834882852999

/-! ## A069279.P8124433123288931208

`A000005(A234345(2*(n+2)))*A069278(n+1)`
-/

namespace A069279.P8124433123288931208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A234345 (2 * (n + 2))).toNat * A069278 (n + 1)

end

end A069279.P8124433123288931208

/-! ## A069279.P8979059934599455558

`A000005(A000040(2*n+3))*A069278(n+1)`
-/

namespace A069279.P8979059934599455558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000040 (2 * n + 3)).toNat * A069278 (n + 1)

end

end A069279.P8979059934599455558

/-! ## A069279.P5793500321808780768

`A001222(A046310(n+1))*A069276(n+1)`
-/

namespace A069279.P5793500321808780768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A046310 (n + 1)).toNat * A069276 (n + 1)

end

end A069279.P5793500321808780768

/-! ## A069279.P18373040575982736083

`A000005(A340750(n+1))*A069278(n+1)`
-/

namespace A069279.P18373040575982736083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A340750 (n + 1)).toNat * A069278 (n + 1)

end

end A069279.P18373040575982736083

/-! ## A069279.P14657173047531245317

`2*A069276(n+1)*A000005(A108605(n+1))`
-/

namespace A069279.P14657173047531245317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069276 (n + 1) * A000005 (A108605 (n + 1)).toNat

end

end A069279.P14657173047531245317

/-! ## A069279.P389727390346329653

`A001222(A110296(n+1))*A069276(n+1)`
-/

namespace A069279.P389727390346329653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A110296 (n + 1)).toNat * A069276 (n + 1)

end

end A069279.P389727390346329653

/-! ## A069279.P15270388182650689705

`A069276(n+1)/2*A040056(A156040(n))`
-/

namespace A069279.P15270388182650689705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069276 (n + 1) : ℚ) / 2 * (A040056 (A156040 n).toNat : ℚ)

end

end A069279.P15270388182650689705

/-! ## A069279.P8306834875690846435

`A001222(30*A014614(n+1))*A069276(n+1)`
-/

namespace A069279.P8306834875690846435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (30 * A014614 (n + 1)).toNat * A069276 (n + 1)

end

end A069279.P8306834875690846435

/-! ## A069279.P16379484950749063284

`A040056(A260618(n+1))*A069275(n+1)`
-/

namespace A069279.P16379484950749063284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040056 (A260618 (n + 1)).toNat * A069275 (n + 1)

end

end A069279.P16379484950749063284

/-!
# A069280: 19-almost primes (generalization of semiprimes).

The programs for A069280, there is no canonical definition to state claims against.
-/

/-! ## A069280.P15363953866710051225

`2*A069279(n+1)`
-/

namespace A069280.P15363953866710051225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069279 (n + 1)

end

end A069280.P15363953866710051225

/-! ## A069280.P6567495534082369170

`A069281(n+1)/2`
-/

namespace A069280.P6567495534082369170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069281 (n + 1) : ℚ) / 2

end

end A069280.P6567495534082369170

/-! ## A069280.P4160707070932810332

`A069279(A000027(n+1))+A069279(n+1)`
-/

namespace A069280.P4160707070932810332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069279 (A000027 (n + 1)).toNat + A069279 (n + 1)

end

end A069280.P4160707070932810332

/-! ## A069280.P14704259722688412466

`A069281(n+1)-A069279(n+1)-A069279(n+1)`
-/

namespace A069280.P14704259722688412466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069281 (n + 1) - A069279 (n + 1) - A069279 (n + 1)

end

end A069280.P14704259722688412466

/-! ## A069280.P11859774278776187962

`A069279(n+1)+A069279((n+1)%A046092(n+1))`
-/

namespace A069280.P11859774278776187962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069279 (n + 1) + A069279 (Int.tmod (n + 1 : ℤ) (A046092 (n + 1))).toNat

end

end A069280.P11859774278776187962

/-! ## A069280.P938160312127373598

`A001222(A046310(n+1))*A069277(n+1)`
-/

namespace A069280.P938160312127373598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A046310 (n + 1)).toNat * A069277 (n + 1)

end

end A069280.P938160312127373598

/-! ## A069280.P10462964440964599191

`A001222(A046310(n+1))/2*A069278(n+1)`
-/

namespace A069280.P10462964440964599191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A046310 (n + 1)).toNat : ℚ) / 2 * (A069278 (n + 1) : ℚ)

end

end A069280.P10462964440964599191

/-! ## A069280.P11447098776675827970

`A069230(A069232(n+1))²²*A069276(n+1)`
-/

namespace A069280.P11447098776675827970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A069230 (A069232 (n + 1)).toNat ^ 2) ^ 2 * A069276 (n + 1)

end

end A069280.P11447098776675827970

/-! ## A069280.P3435432233235632949

`A000005(A108605(n+1))²*A069276(n+1)`
-/

namespace A069280.P3435432233235632949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A108605 (n + 1)).toNat ^ 2 * A069276 (n + 1)

end

end A069280.P3435432233235632949

/-! ## A069280.P14268724072652128882

`2*A069276(n+1)*A001222(A110296(n+1))`
-/

namespace A069280.P14268724072652128882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069276 (n + 1) * A001222 (A110296 (n + 1)).toNat

end

end A069280.P14268724072652128882

/-! ## A069280.P4324435608958527101

`A040056(A156040(n))*A069276(n+1)`
-/

namespace A069280.P4324435608958527101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040056 (A156040 n).toNat * A069276 (n + 1)

end

end A069280.P4324435608958527101

/-! ## A069280.P1036618686680098410

`2*A069275(n+1)*A040056(A260618(n+1))`
-/

namespace A069280.P1036618686680098410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069275 (n + 1) * A040056 (A260618 (n + 1)).toNat

end

end A069280.P1036618686680098410

/-! ## A069280.P18314086241890163512

`A000005(A046401(n+1))²*A069274(n+1)`
-/

namespace A069280.P18314086241890163512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A046401 (n + 1)).toNat ^ 2 * A069274 (n + 1)

end

end A069280.P18314086241890163512

/-! ## A069280.P7511091360520419756

`2*A069275(n+1)*A040056(A157924(n+1))`
-/

namespace A069280.P7511091360520419756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069275 (n + 1) * A040056 (A157924 (n + 1)).toNat

end

end A069280.P7511091360520419756

/-! ## A069280.P15129021014685661302

`2*A069275(n+1)*A040056(A000124(n))`
-/

namespace A069280.P15129021014685661302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069275 (n + 1) * A040056 (A000124 n).toNat

end

end A069280.P15129021014685661302

/-! ## A069280.P12878589896040389790

`A001222(A001358(n+1)²)²*A069276(n+1)`
-/

namespace A069280.P12878589896040389790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001358 (n + 1) ^ 2).toNat ^ 2 * A069276 (n + 1)

end

end A069280.P12878589896040389790

/-!
# A069281: 20-almost primes (generalization of semiprimes).

The programs for A069281, there is no canonical definition to state claims against.
-/

/-! ## A069281.P17498972531217638142

`2*A069280(n+1)`
-/

namespace A069281.P17498972531217638142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069280 (n + 1)

end

end A069281.P17498972531217638142

/-! ## A069281.P7360310667481066777

`4*A069279(n+1)`
-/

namespace A069281.P7360310667481066777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A069279 (n + 1)

end

end A069281.P7360310667481066777

/-! ## A069281.P2935069305597386782

`A069280(n+1)²/A069279(n+1)`
-/

namespace A069281.P2935069305597386782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069280 (n + 1) ^ 2 : ℚ) / (A069279 (n + 1) : ℚ)

end

end A069281.P2935069305597386782

/-! ## A069281.P7695837728907786053

`A069280(A000027(n+1))+A069280(n+1)`
-/

namespace A069281.P7695837728907786053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069280 (A000027 (n + 1)).toNat + A069280 (n + 1)

end

end A069281.P7695837728907786053

/-! ## A069281.P13790388007350623810

`A069280(n+1)+A069280((n+1)%A000969(n+1))`
-/

namespace A069281.P13790388007350623810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069280 (n + 1) + A069280 (Int.tmod (n + 1 : ℤ) (A000969 (n + 1))).toNat

end

end A069281.P13790388007350623810

/-! ## A069281.P1789052464972374645

`A069280(n+1)+A069280(n+1)+A000007(n+1)`
-/

namespace A069281.P1789052464972374645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069280 (n + 1) + (A069280 (n + 1) + A000007 (n + 1))

end

end A069281.P1789052464972374645

/-! ## A069281.P17271779142902571420

`A001222(A046310(n+1))*A069278(n+1)`
-/

namespace A069281.P17271779142902571420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A046310 (n + 1)).toNat * A069278 (n + 1)

end

end A069281.P17271779142902571420

/-! ## A069281.P1235855781200247468

`A069230(A069232(n+1))²²*A069277(n+1)`
-/

namespace A069281.P1235855781200247468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A069230 (A069232 (n + 1)).toNat ^ 2) ^ 2 * A069277 (n + 1)

end

end A069281.P1235855781200247468

/-! ## A069281.P4574450415447848132

`2*A069276(n+1)*A040056(A156040(n))`
-/

namespace A069281.P4574450415447848132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069276 (n + 1) * A040056 (A156040 n).toNat

end

end A069281.P4574450415447848132

/-! ## A069281.P2049726968926452921

`A030727(A030736(n+1))²²*A069273(n+1)`
-/

namespace A069281.P2049726968926452921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A030727 (A030736 (n + 1)).toNat ^ 2) ^ 2 * A069273 (n + 1)

end

end A069281.P2049726968926452921

/-! ## A069281.P16226391105487607411

`A073093(A046308(n+1))²*A069275(n+1)`
-/

namespace A069281.P16226391105487607411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (A046308 (n + 1)).toNat ^ 2 * A069275 (n + 1)

end

end A069281.P16226391105487607411

/-! ## A069281.P12593506822547916975

`A000005(A046401(n+1))²*A069275(n+1)`
-/

namespace A069281.P12593506822547916975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A046401 (n + 1)).toNat ^ 2 * A069275 (n + 1)

end

end A069281.P12593506822547916975

/-! ## A069281.P8277605083291687231

`A069278(n+1)*A301454(A034962(n+1))`
-/

namespace A069281.P8277605083291687231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069278 (n + 1) * A301454 (A034962 (n + 1)).toNat

end

end A069281.P8277605083291687231

/-! ## A069281.P3348821169643696567

`A000005(A333747(n+1))²²*A069273(n+1)`
-/

namespace A069281.P3348821169643696567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000005 (A333747 (n + 1)).toNat ^ 2) ^ 2 * A069273 (n + 1)

end

end A069281.P3348821169643696567

/-! ## A069281.P3224086165522418704

`A301454(A157924(n+1))²*A069275(n+1)`
-/

namespace A069281.P3224086165522418704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301454 (A157924 (n + 1)).toNat ^ 2 * A069275 (n + 1)

end

end A069281.P3224086165522418704

/-!
# A069283: a(n) = -1 + number of odd divisors of n.

The programs for A069283, the canonical program `A069283.P13755877573305704475` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069283 has offset 0).

The definition of A069283 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069283.P13755877573305704475

`∑{d}[n, (#%#²)%2]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069283

/-- `∑{d}[n, (#%#²)%2]` -/
def P13755877573305704475.Spec : Prop :=
  ∀ n, (P13755877573305704475.a n : ℤ) = A069283 n

theorem P13755877573305704475.correct : P13755877573305704475.Spec := by
  intro n
  simp only [A069283]

end A069283

/-! ## A069283.P10492608250313260114

`∑{d}[n, and(1, -#)%#]`
-/

namespace A069283.P10492608250313260114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (Int.land 1 (-(d : ℤ))) (d : ℤ)

end

end A069283.P10492608250313260114

namespace A069283

/-- `∑{d}[n, and(1, -#)%#]` -/
def P10492608250313260114.Spec : Prop :=
  ∀ n, P10492608250313260114.a n = A069283 n

end A069283

/-! ## A069283.P4949193759210307738

`∑{d}[n, and(#, ceil(2/#))]`
-/

namespace A069283.P4949193759210307738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.land (d : ℤ) ⌈2 / (d : ℚ)⌉

end

end A069283.P4949193759210307738

namespace A069283

/-- `∑{d}[n, and(#, ceil(2/#))]` -/
def P4949193759210307738.Spec : Prop :=
  ∀ n, P4949193759210307738.a n = A069283 n

end A069283

/-! ## A069283.P14333234842789076472

`∑{d}[n, A266070(#)]`
-/

namespace A069283.P14333234842789076472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A266070 d

end

end A069283.P14333234842789076472

namespace A069283

/-- `∑{d}[n, A266070(#)]` -/
def P14333234842789076472.Spec : Prop :=
  ∀ n, P14333234842789076472.a n = A069283 n

end A069283

/-! ## A069283.P5970795943574681715

`Δ[A248517(abs(1-n))]`
-/

namespace A069283.P5970795943574681715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248517 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069283.P5970795943574681715

namespace A069283

/-- `Δ[A248517(abs(1-n))]` -/
def P5970795943574681715.Spec : Prop :=
  ∀ n, P5970795943574681715.a n = A069283 n

end A069283

/-! ## A069283.P11432162002911551949

`∑{d}[n, 1-A135528(#)]`
-/

namespace A069283.P11432162002911551949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - A135528 d)

end

end A069283.P11432162002911551949

namespace A069283

/-- `∑{d}[n, 1-A135528(#)]` -/
def P11432162002911551949.Spec : Prop :=
  ∀ n, P11432162002911551949.a n = A069283 n

end A069283

/-! ## A069283.P18385229847891703077

`∑{d}[n, val(A019431(#), 2)]`
-/

namespace A069283.P18385229847891703077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (A019431 d).toNat 2

end

end A069283.P18385229847891703077

namespace A069283

/-- `∑{d}[n, val(A019431(#), 2)]` -/
def P18385229847891703077.Spec : Prop :=
  ∀ n, (P18385229847891703077.a n : ℤ) = A069283 n

end A069283

/-! ## A069283.P15482794328065515865

`A001227(abs(1-n)+1)-1`
-/

namespace A069283.P15482794328065515865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (|1 - (n : ℤ)| + 1).toNat - 1

end

end A069283.P15482794328065515865

namespace A069283

/-- `A001227(abs(1-n)+1)-1` -/
def P15482794328065515865.Spec : Prop :=
  ∀ n, P15482794328065515865.a n = A069283 n

end A069283

/-! ## A069283.P10140289690192783776

`∑{d}[abs(1-n)+1, A000035(#)]-1`
-/

namespace A069283.P10140289690192783776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000035 d - 1

end

end A069283.P10140289690192783776

namespace A069283

/-- `∑{d}[abs(1-n)+1, A000035(#)]-1` -/
def P10140289690192783776.Spec : Prop :=
  ∀ n, P10140289690192783776.a n = A069283 n

end A069283

/-! ## A069283.P3429473173611727797

`∑{d}[n, A000035(A103528(#))]`
-/

namespace A069283.P3429473173611727797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000035 (A103528 d).toNat

end

end A069283.P3429473173611727797

namespace A069283

/-- `∑{d}[n, A000035(A103528(#))]` -/
def P3429473173611727797.Spec : Prop :=
  ∀ n, P3429473173611727797.a n = A069283 n

end A069283

/-! ## A069283.P7360034235678156009

`∑{d}[n, A094918(A020639(#))]`
-/

namespace A069283.P7360034235678156009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A094918 (A020639 d).toNat

end

end A069283.P7360034235678156009

namespace A069283

/-- `∑{d}[n, A094918(A020639(#))]` -/
def P7360034235678156009.Spec : Prop :=
  ∀ n, P7360034235678156009.a n = A069283 n

end A069283

/-! ## A069283.P17611251999428304989

`∏{e}[A000265(A004277(n)), #+1]-1`
-/

namespace A069283.P17611251999428304989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) : ℕ) : ℤ) - 1

end

end A069283.P17611251999428304989

namespace A069283

/-- `∏{e}[A000265(A004277(n)), #+1]-1` -/
def P17611251999428304989.Spec : Prop :=
  ∀ n, P17611251999428304989.a n = A069283 n

end A069283

/-! ## A069283.P8990921149091208897

`A000005(A000265(abs(1-n)+1))-1`
-/

namespace A069283.P8990921149091208897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000265 (|1 - (n : ℤ)| + 1).toNat).toNat - 1

end

end A069283.P8990921149091208897

namespace A069283

/-- `A000005(A000265(abs(1-n)+1))-1` -/
def P8990921149091208897.Spec : Prop :=
  ∀ n, P8990921149091208897.a n = A069283 n

end A069283

/-! ## A069283.P3550221758792529288

`A000005(A336158(abs(1-n)+1))-1`
-/

namespace A069283.P3550221758792529288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A336158 (|1 - (n : ℤ)| + 1).toNat).toNat - 1

end

end A069283.P3550221758792529288

namespace A069283

/-- `A000005(A336158(abs(1-n)+1))-1` -/
def P3550221758792529288.Spec : Prop :=
  ∀ n, P3550221758792529288.a n = A069283 n

end A069283

/-! ## A069283.P7838966040473082506

`A248517(n)-A248517(A004273(n)-n)`
-/

namespace A069283.P7838966040473082506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248517 n - A248517 (A004273 n - (n : ℤ)).toNat

end

end A069283.P7838966040473082506

namespace A069283

/-- `A248517(n)-A248517(A004273(n)-n)` -/
def P7838966040473082506.Spec : Prop :=
  ∀ n, P7838966040473082506.a n = A069283 n

end A069283

/-! ## A069283.P6827347191385774630

`A111775(A004277(n))`
-/

namespace A069283.P6827347191385774630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111775 (A004277 n).toNat

end

end A069283.P6827347191385774630

namespace A069283

/-- `A111775(A004277(n))` -/
def P6827347191385774630.Spec : Prop :=
  ∀ n, P6827347191385774630.a n = A069283 n

end A069283

/-! ## A069283.P10385996887082414358

`A072670(A129343(n))`
-/

namespace A069283.P10385996887082414358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 (A129343 n).toNat

end

end A069283.P10385996887082414358

namespace A069283

/-- `A072670(A129343(n))` -/
def P10385996887082414358.Spec : Prop :=
  ∀ n, P10385996887082414358.a n = A069283 n

end A069283

/-! ## A069283.P11751726198541722592

`A111775(A004275(n+1))`
-/

namespace A069283.P11751726198541722592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111775 (A004275 (n + 1)).toNat

end

end A069283.P11751726198541722592

namespace A069283

/-- `A111775(A004275(n+1))` -/
def P11751726198541722592.Spec : Prop :=
  ∀ n, P11751726198541722592.a n = A069283 n

end A069283

/-! ## A069283.P10521659299409843622

`A111775(A092535(n+1))`
-/

namespace A069283.P10521659299409843622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111775 (A092535 (n + 1)).toNat

end

end A069283.P10521659299409843622

namespace A069283

/-- `A111775(A092535(n+1))` -/
def P10521659299409843622.Spec : Prop :=
  ∀ n, P10521659299409843622.a n = A069283 n

end A069283

/-! ## A069283.P10408671620070438309

`A111775(A316571(n+1))`
-/

namespace A069283.P10408671620070438309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111775 (A316571 (n + 1)).toNat

end

end A069283.P10408671620070438309

namespace A069283

/-- `A111775(A316571(n+1))` -/
def P10408671620070438309.Spec : Prop :=
  ∀ n, P10408671620070438309.a n = A069283 n

end A069283

/-!
# A069288: Number of odd divisors of n <= sqrt(n).

The programs for A069288, there is no canonical definition to state claims against.
-/

/-! ## A069288.P15255423799710692049

`A364387(n+1)+A364358(n+1)`
-/

namespace A069288.P15255423799710692049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364387 (n + 1) + A364358 (n + 1)

end

end A069288.P15255423799710692049

/-! ## A069288.P1604406855158232900

`A001227(n+1)-A341594(n+1)`
-/

namespace A069288.P1604406855158232900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A341594 (n + 1)

end

end A069288.P1604406855158232900

/-! ## A069288.P13141241644754497987

`∑{digits}[A303818(n+1), A025435(A303818(#))]`
-/

namespace A069288.P13141241644754497987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A025435 (A303818 x).toNat).sum

end

end A069288.P13141241644754497987

/-! ## A069288.P13429172388671297070

`A000005(A064989(n+1))-A341594(n+1)`
-/

namespace A069288.P13429172388671297070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A064989 (n + 1)).toNat - A341594 (n + 1)

end

end A069288.P13429172388671297070

/-! ## A069288.P9232193627462478198

`A000005(A332819(n+1))-A341594(n+1)`
-/

namespace A069288.P9232193627462478198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A332819 (n + 1)).toNat - A341594 (n + 1)

end

end A069288.P9232193627462478198

/-! ## A069288.P10220114753060820099

`A000005(A336158(n+1))-A341594(n+1)`
-/

namespace A069288.P10220114753060820099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A336158 (n + 1)).toNat - A341594 (n + 1)

end

end A069288.P10220114753060820099

/-! ## A069288.P6118278143566633272

`Δ[A060831(n)]-A341594(n+1)`
-/

namespace A069288.P6118278143566633272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A341594 (n + 1)

end

end A069288.P6118278143566633272

/-! ## A069288.P1524237283587975548

`and(A196655(n), A347173(n+1))`
-/

namespace A069288.P1524237283587975548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A196655 n) (A347173 (n + 1))

end

end A069288.P1524237283587975548

/-! ## A069288.P7596979264538726144

`and(A196655(n), A347175(n+1))`
-/

namespace A069288.P7596979264538726144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A196655 n) (A347175 (n + 1))

end

end A069288.P7596979264538726144

/-! ## A069288.P906364227046389515

`and(A147597(n+1), A347173(n+1))`
-/

namespace A069288.P906364227046389515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A147597 (n + 1)) (A347173 (n + 1))

end

end A069288.P906364227046389515

/-! ## A069288.P13899550985467507635

`and(A147597(n+1), A347175(n+1))`
-/

namespace A069288.P13899550985467507635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A147597 (n + 1)) (A347175 (n + 1))

end

end A069288.P13899550985467507635

/-! ## A069288.P1376540800811719915

`A002377(A347175(n+1))`
-/

namespace A069288.P1376540800811719915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A347175 (n + 1)).toNat

end

end A069288.P1376540800811719915

/-! ## A069288.P971087414981379133

`A005811(A069289(n+1))%A260082(n+1)`
-/

namespace A069288.P971087414981379133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005811 (A069289 (n + 1)).toNat) (A260082 (n + 1))

end

end A069288.P971087414981379133

/-!
# A069289: Sum of odd divisors of n <= sqrt(n).

The programs for A069289, there is no canonical definition to state claims against.
-/

/-! ## A069289.P6979812752195516668

`A347174(n+1)%A070939(A276156(n+4))`
-/

namespace A069289.P6979812752195516668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347174 (n + 1)) (A070939 (A276156 (n + 4)).toNat)

end

end A069289.P6979812752195516668

/-! ## A069289.P1555493326668179931

`A274138(A347174(n+1))`
-/

namespace A069289.P1555493326668179931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274138 (A347174 (n + 1)).toNat

end

end A069289.P1555493326668179931

/-! ## A069289.P11490616345183987597

`A298614(3*A347175(n+1))`
-/

namespace A069289.P11490616345183987597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298614 (3 * A347175 (n + 1)).toNat

end

end A069289.P11490616345183987597

/-! ## A069289.P8896323510361716594

`A293432(A396079(n+1))`
-/

namespace A069289.P8896323510361716594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293432 (A396079 (n + 1)).toNat

end

end A069289.P8896323510361716594

/-! ## A069289.P11398450977607545793

`A293432(A072504(n+1)^A083382(n+1))`
-/

namespace A069289.P11398450977607545793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293432 (SequenceMachineLib.roundAway ((A072504 (n + 1) : ℚ) ^ (A083382 (n + 1) : ℤ))).toNat

end

end A069289.P11398450977607545793

/-!
# A069290: Sum of the square roots of the square divisors of n.

The programs for A069290, the canonical program `A069290.P6266587800206818294` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069290 has offset 1).

The definition of A069290 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069290.P6266587800206818294

`A000203(A000188(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A069290

/-- `A000203(A000188(n+1))` -/
def P6266587800206818294.Spec : Prop :=
  ∀ n, P6266587800206818294.a n = A069290 (n + 1)

theorem P6266587800206818294.correct : P6266587800206818294.Spec := by
  intro n
  simp only [A069290, Nat.add_sub_cancel]

end A069290

/-! ## A069290.P12414705797909687655

`∑{d}[∏{p}[n+1, #^val(n+1, #²)], #]`
-/

namespace A069290.P12414705797909687655
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A069290.P12414705797909687655

namespace A069290

/-- `∑{d}[∏{p}[n+1, #^val(n+1, #²)], #]` -/
def P12414705797909687655.Spec : Prop :=
  ∀ n, (P12414705797909687655.a n : ℤ) = A069290 (n + 1)

end A069290

/-! ## A069290.P14043466990203986603

`∑{d}[n+1, A037213(#)]`
-/

namespace A069290.P14043466990203986603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A037213 d

end

end A069290.P14043466990203986603

namespace A069290

/-- `∑{d}[n+1, A037213(#)]` -/
def P14043466990203986603.Spec : Prop :=
  ∀ n, P14043466990203986603.a n = A069290 (n + 1)

end A069290

/-! ## A069290.P18094374969593769255

`∑{d}[sqrt(A008833(n+1)), #]`
-/

namespace A069290.P18094374969593769255
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008833 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A069290.P18094374969593769255

namespace A069290

/-- `∑{d}[sqrt(A008833(n+1)), #]` -/
def P18094374969593769255.Spec : Prop :=
  ∀ n, (P18094374969593769255.a n : ℤ) = A069290 (n + 1)

end A069290

/-! ## A069290.P7787256101049083348

`∑{d}[A057918(n+1)+1, #]`
-/

namespace A069290.P7787256101049083348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A069290.P7787256101049083348

namespace A069290

/-- `∑{d}[A057918(n+1)+1, #]` -/
def P7787256101049083348.Spec : Prop :=
  ∀ n, (P7787256101049083348.a n : ℤ) = A069290 (n + 1)

end A069290

/-! ## A069290.P2397477152307999922

`∑{d}[A337101(2*(n+1)), #]`
-/

namespace A069290.P2397477152307999922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A069290.P2397477152307999922

namespace A069290

/-- `∑{d}[A337101(2*(n+1)), #]` -/
def P2397477152307999922.Spec : Prop :=
  ∀ n, (P2397477152307999922.a n : ℤ) = A069290 (n + 1)

end A069290

/-! ## A069290.P4027363039434356401

`∑[n+1]-A338231(n+1)`
-/

namespace A069290.P4027363039434356401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A338231 (n + 1)

end

end A069290.P4027363039434356401

namespace A069290

/-- `∑[n+1]-A338231(n+1)` -/
def P4027363039434356401.Spec : Prop :=
  ∀ n, P4027363039434356401.a n = A069290 (n + 1)

end A069290

/-! ## A069290.P1869533274146902961

`A000203(∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A069290.P1869533274146902961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))

end

end A069290.P1869533274146902961

namespace A069290

/-- `A000203(∏{p}[n+1, #^val(n+1, #²)])` -/
def P1869533274146902961.Spec : Prop :=
  ∀ n, P1869533274146902961.a n = A069290 (n + 1)

end A069290

/-! ## A069290.P7940540201379200301

`A365347(A003557(n+1))`
-/

namespace A069290.P7940540201379200301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365347 (A003557 (n + 1)).toNat

end

end A069290.P7940540201379200301

namespace A069290

/-- `A365347(A003557(n+1))` -/
def P7940540201379200301.Spec : Prop :=
  ∀ n, P7940540201379200301.a n = A069290 (n + 1)

end A069290

/-! ## A069290.P11692603050583795523

`A365347(A008833(n+1))`
-/

namespace A069290.P11692603050583795523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365347 (A008833 (n + 1)).toNat

end

end A069290.P11692603050583795523

namespace A069290

/-- `A365347(A008833(n+1))` -/
def P11692603050583795523.Spec : Prop :=
  ∀ n, P11692603050583795523.a n = A069290 (n + 1)

end A069290

/-! ## A069290.P8981977916600524762

`A335341(A355261(n+1))`
-/

namespace A069290.P8981977916600524762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335341 (A355261 (n + 1)).toNat

end

end A069290.P8981977916600524762

namespace A069290

/-- `A335341(A355261(n+1))` -/
def P8981977916600524762.Spec : Prop :=
  ∀ n, P8981977916600524762.a n = A069290 (n + 1)

end A069290

/-! ## A069290.P18047408222434659478

`A000203(sqrt(A008833(n+1)))`
-/

namespace A069290.P18047408222434659478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (Real.sqrt (A008833 (n + 1) : ℝ))).toNat

end

end A069290.P18047408222434659478

namespace A069290

/-- `A000203(sqrt(A008833(n+1)))` -/
def P18047408222434659478.Spec : Prop :=
  ∀ n, P18047408222434659478.a n = A069290 (n + 1)

end A069290

/-! ## A069290.P13872346114567617000

`A000203(A057918(n+1)+1)`
-/

namespace A069290.P13872346114567617000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A057918 (n + 1) + 1).toNat

end

end A069290.P13872346114567617000

namespace A069290

/-- `A000203(A057918(n+1)+1)` -/
def P13872346114567617000.Spec : Prop :=
  ∀ n, P13872346114567617000.a n = A069290 (n + 1)

theorem P13872346114567617000.correct : P13872346114567617000.Spec := by
  intro n
  simp only [A069290, Nat.add_sub_cancel, A069290.P13872346114567617000.a, A069290.P6266587800206818294.a, A000188, A000188.P18128357374562736993.f1, A000188.P18128357374562736993.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A057918, A057918.P8779601029509101892.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069290

/-! ## A069290.P17954853622431421860

`A000203(A337101(2*(n+1)))`
-/

namespace A069290.P17954853622431421860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A337101 (2 * (n + 1))).toNat

end

end A069290.P17954853622431421860

namespace A069290

/-- `A000203(A337101(2*(n+1)))` -/
def P17954853622431421860.Spec : Prop :=
  ∀ n, P17954853622431421860.a n = A069290 (n + 1)

end A069290

/-! ## A069290.P16425742945708221474

`A146076(2*A000188(n+1))/2`
-/

namespace A069290.P16425742945708221474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146076 (2 * A000188 (n + 1)).toNat : ℚ) / 2

end

end A069290.P16425742945708221474

namespace A069290

/-- `A146076(2*A000188(n+1))/2` -/
def P16425742945708221474.Spec : Prop :=
  ∀ n, P16425742945708221474.a n = (A069290 (n + 1) : ℚ)

end A069290

/-! ## A069290.P887848155885058870

`A000203(n+1)-A345320(n+1)`
-/

namespace A069290.P887848155885058870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A345320 (n + 1)

end

end A069290.P887848155885058870

namespace A069290

/-- `A000203(n+1)-A345320(n+1)` -/
def P887848155885058870.Spec : Prop :=
  ∀ n, P887848155885058870.a n = A069290 (n + 1)

theorem P887848155885058870.correct : P887848155885058870.Spec := by
  intro n
  simp only [A069290, Nat.add_sub_cancel, A069290.P887848155885058870.a, A069290.P6266587800206818294.a, A000188, A000188.P18128357374562736993.f1, A000188.P18128357374562736993.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A345320, A345320.P2768063189840868714.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069290

/-! ## A069290.P12251335358796199176

`A179865(n+1)-A338234(n+1)`
-/

namespace A069290.P12251335358796199176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (n + 1) - A338234 (n + 1)

end

end A069290.P12251335358796199176

namespace A069290

/-- `A179865(n+1)-A338234(n+1)` -/
def P12251335358796199176.Spec : Prop :=
  ∀ n, P12251335358796199176.a n = A069290 (n + 1)

end A069290

/-! ## A069290.P42969199921258586

`A000203((n+1)/A019554(n+1))`
-/

namespace A069290.P42969199921258586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A019554 (n + 1) : ℚ))).toNat

end

end A069290.P42969199921258586

namespace A069290

/-- `A000203((n+1)/A019554(n+1))` -/
def P42969199921258586.Spec : Prop :=
  ∀ n, P42969199921258586.a n = A069290 (n + 1)

end A069290

/-! ## A069290.P14266280544439135446

`A000203(A355264(n+1)/(n+1))`
-/

namespace A069290.P14266280544439135446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A355264 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A069290.P14266280544439135446

namespace A069290

/-- `A000203(A355264(n+1)/(n+1))` -/
def P14266280544439135446.Spec : Prop :=
  ∀ n, P14266280544439135446.a n = A069290 (n + 1)

end A069290

/-! ## A069290.P13581410918637196165

`A340774(n+1)/A019554(n+1)`
-/

namespace A069290.P13581410918637196165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340774 (n + 1) : ℚ) / (A019554 (n + 1) : ℚ)

end

end A069290.P13581410918637196165

namespace A069290

/-- `A340774(n+1)/A019554(n+1)` -/
def P13581410918637196165.Spec : Prop :=
  ∀ n, P13581410918637196165.a n = (A069290 (n + 1) : ℚ)

end A069290

/-!
# A069291: Number of square divisors of n <= sqrt(n).

The programs for A069291, there is no canonical definition to state claims against.
-/

/-! ## A069291.P840624951106894337

`A124769(4*A069293(n+1))`
-/

namespace A069291.P840624951106894337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 (4 * A069293 (n + 1)).toNat

end

end A069291.P840624951106894337

/-! ## A069291.P9627968151033259090

`A027748(A069293(n+1)^3)`
-/

namespace A069291.P9627968151033259090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027748 (A069293 (n + 1) ^ 3).toNat

end

end A069291.P9627968151033259090

/-! ## A069291.P15282060360798509479

`A295659(A072499(n+1))+1`
-/

namespace A069291.P15282060360798509479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295659 (A072499 (n + 1)).toNat + 1

end

end A069291.P15282060360798509479

/-! ## A069291.P8141040974109692082

`A014673(2^A069293(n+1))`
-/

namespace A069291.P8141040974109692082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A069293 (n + 1) : ℤ))).toNat

end

end A069291.P8141040974109692082

/-! ## A069291.P5996126823338558884

`A175800(8*A069293(n+1))`
-/

namespace A069291.P5996126823338558884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175800 (8 * A069293 (n + 1)).toNat

end

end A069291.P5996126823338558884

/-! ## A069291.P12137593011784746270

`A240595(3*A069292(n+1)²)`
-/

namespace A069291.P12137593011784746270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240595 (3 * A069292 (n + 1) ^ 2).toNat

end

end A069291.P12137593011784746270

/-! ## A069291.P11794095642903006952

`∏{e}[A069292(n+1)²²², A006530(#)]`
-/

namespace A069291.P11794095642903006952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A069292 (n + 1) ^ 2) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A006530 (Nat.factorization (f1 n).natAbs p)

end

end A069291.P11794095642903006952

/-! ## A069291.P9443129248690771400

`gcd(2, A000010(A069292(n+1)²²²+1))`
-/

namespace A069291.P9443129248690771400
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A000010 (((A069292 (n + 1) ^ 2) ^ 2) ^ 2 + 1).toNat)

end

end A069291.P9443129248690771400

/-! ## A069291.P2138135927323742115

`A003842(A027379(A069293(n+1)²))`
-/

namespace A069291.P2138135927323742115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 (A027379 (A069293 (n + 1) ^ 2).toNat).toNat

end

end A069291.P2138135927323742115

/-! ## A069291.P7058113406565195381

`A003842(A055998(A069293(n+1)²))`
-/

namespace A069291.P7058113406565195381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 (A055998 (A069293 (n + 1) ^ 2).toNat).toNat

end

end A069291.P7058113406565195381

/-! ## A069291.P6741484038640295298

`A344417(gcd(A072504(n+1), A332213(n+1)))`
-/

namespace A069291.P6741484038640295298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344417 (Int.gcd (A072504 (n + 1)) (A332213 (n + 1)))

end

end A069291.P6741484038640295298

/-!
# A069292: Sum of square roots of square divisors of n <= sqrt(n).

The programs for A069292, there is no canonical definition to state claims against.
-/

/-! ## A069292.P1496147946221353547

`A341052(8*A069293(n+1))`
-/

namespace A069292.P1496147946221353547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341052 (8 * A069293 (n + 1)).toNat

end

end A069292.P1496147946221353547

/-! ## A069292.P7655353235959650647

`A324025(C(A069293(n+1), 2))`
-/

namespace A069292.P7655353235959650647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324025 (Nat.choose (A069293 (n + 1)).toNat 2)

end

end A069292.P7655353235959650647

/-! ## A069292.P5677273189495546989

`A043276(A069293(n+1)²²)`
-/

namespace A069292.P5677273189495546989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 ((A069293 (n + 1) ^ 2) ^ 2).toNat

end

end A069292.P5677273189495546989

/-! ## A069292.P5887638794596018748

`A098280(A069293(n+1)²+3)`
-/

namespace A069292.P5887638794596018748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098280 (A069293 (n + 1) ^ 2 + 3).toNat

end

end A069292.P5887638794596018748

/-! ## A069292.P18058466037753037253

`A251719(A069293(n+1)%A005994((n+1)²))`
-/

namespace A069292.P18058466037753037253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251719 (Int.tmod (A069293 (n + 1)) (A005994 ((n + 1) ^ 2))).toNat

end

end A069292.P18058466037753037253

/-! ## A069292.P15025964768815804573

`A002024(A069293(n+1)%A342388(n+1))`
-/

namespace A069292.P15025964768815804573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (Int.tmod (A069293 (n + 1)) (A342388 (n + 1))).toNat

end

end A069292.P15025964768815804573

/-! ## A069292.P5429361170881790755

`A251719(A069293(n+1))%A259379(2*n+5)`
-/

namespace A069292.P5429361170881790755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251719 (A069293 (n + 1)).toNat) (A259379 (2 * n + 5))

end

end A069292.P5429361170881790755

/-! ## A069292.P16176497972348694132

`A282904(A069293(n+1)²)`
-/

namespace A069292.P16176497972348694132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282904 (A069293 (n + 1) ^ 2).toNat

end

end A069292.P16176497972348694132

/-! ## A069292.P108768745891195227

`A333632(A069293(n+1)²)`
-/

namespace A069292.P108768745891195227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333632 (A069293 (n + 1) ^ 2).toNat

end

end A069292.P108768745891195227

/-!
# A069293: Sum of square divisors of n <= sqrt(n).

The programs for A069293, there is no canonical definition to state claims against.
-/

/-! ## A069293.P7627556338742815453

`A360560(A069292(n+1)^A069292(3*n+2))`
-/

namespace A069293.P7627556338742815453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360560 (SequenceMachineLib.roundAway ((A069292 (n + 1) : ℚ) ^ (A069292 (3 * n + 2) : ℤ))).toNat

end

end A069293.P7627556338742815453

/-! ## A069293.P14571171822846197572

`A225546(A366523(n+1)²)`
-/

namespace A069293.P14571171822846197572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225546 (A366523 (n + 1) ^ 2).toNat

end

end A069293.P14571171822846197572

/-! ## A069293.P17880520608116281127

`A045778(A366523(n+1)!)`
-/

namespace A069293.P17880520608116281127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (Nat.factorial (A366523 (n + 1)).toNat)

end

end A069293.P17880520608116281127

/-! ## A069293.P88014357828285118

`A089355(A366523(n+1)!)`
-/

namespace A069293.P88014357828285118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089355 (Nat.factorial (A366523 (n + 1)).toNat)

end

end A069293.P88014357828285118

/-! ## A069293.P16710862957640808621

`A098008(A366523(n+1)!)`
-/

namespace A069293.P16710862957640808621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098008 (Nat.factorial (A366523 (n + 1)).toNat)

end

end A069293.P16710862957640808621

/-! ## A069293.P14894970145116772769

`A366568(A366523(n+1)!)`
-/

namespace A069293.P14894970145116772769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366568 (Nat.factorial (A366523 (n + 1)).toNat)

end

end A069293.P14894970145116772769

/-! ## A069293.P13357709271796542967

`A178867(2^A366523(n+1))`
-/

namespace A069293.P13357709271796542967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178867 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A366523 (n + 1) : ℤ))).toNat

end

end A069293.P13357709271796542967

/-! ## A069293.P15736219404781593682

`A092437(A069292(n+1)^3)`
-/

namespace A069293.P15736219404781593682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092437 (A069292 (n + 1) ^ 3).toNat

end

end A069293.P15736219404781593682

/-! ## A069293.P6799505955517442535

`A102522(4^A069292(n+1))`
-/

namespace A069293.P6799505955517442535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102522 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A069292 (n + 1) : ℤ))).toNat

end

end A069293.P6799505955517442535

/-! ## A069293.P14841950250354784318

`A133299(A069292(n+1)^4)`
-/

namespace A069293.P14841950250354784318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133299 (A069292 (n + 1) ^ 4).toNat

end

end A069293.P14841950250354784318

