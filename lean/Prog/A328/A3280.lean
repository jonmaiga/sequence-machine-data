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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A328000: a(n) = Sum_{k=0..n}(k!*(n - k)!)/(floor(k/2)!*floor((n - k)/2)!)^2.

The programs for A328000, the canonical program `A328000.P10727157646822037908` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328000 has offset 0).

The definition of A328000 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A328000.P10727157646822037908

`12*a(n-2)-48*a(n-4)+64*a(n-6)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=16, a(4)=28, a(5)=96`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A328000

/-- `12*a(n-2)-48*a(n-4)+64*a(n-6)` -/
def P10727157646822037908.Spec : Prop :=
  ∀ n, P10727157646822037908.a n = A328000 n

theorem P10727157646822037908.correct : P10727157646822037908.Spec := by
  intro n
  simp only [A328000]

end A328000

/-! ## A328000.P8195681363643064566

`A033183(Δ[A141348(3*(n+2))])`
-/

namespace A328000.P8195681363643064566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141348 (3 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (f1 (n + 1) - f1 n).toNat

end

end A328000.P8195681363643064566

namespace A328000

/-- `A033183(Δ[A141348(3*(n+2))])` -/
def P8195681363643064566.Spec : Prop :=
  ∀ n, P8195681363643064566.a n = A328000 n

end A328000

/-!
# A328001: T(n, k) = k!*(n-k)!/(floor(k/2)!*floor((n-k)/2)!)^2. Triangle read by rows, 0 <= k <= n.

The programs for A328001, the canonical program `A328001.P14023335577725748191` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328001 has offset 0).

The definition of A328001 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A328001.P14023335577725748191

`col(n)!*(row(n)-col(n))!/(floor(col(n)/2)!*floor((row(n)-col(n))/2)!)²`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A328001

/-- `col(n)!*(row(n)-col(n))!/(floor(col(n)/2)!*floor((row(n)-col(n))/2)!)²` -/
def P14023335577725748191.Spec : Prop :=
  ∀ n, P14023335577725748191.a n = (A328001 n : ℚ)

end A328001

/-! ## A328001.P8787270632012708680

`A056040(A002262(n))*A056040(A025581(n))`
-/

namespace A328001.P8787270632012708680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (A002262 n).toNat * A056040 (A025581 n).toNat

end

end A328001.P8787270632012708680

namespace A328001

/-- `A056040(A002262(n))*A056040(A025581(n))` -/
def P8787270632012708680.Spec : Prop :=
  ∀ n, P8787270632012708680.a n = A328001 n

end A328001

/-! ## A328001.P3341552874237921134

`A182073(n)*A211226(n)`
-/

namespace A328001.P3341552874237921134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182073 n * A211226 n

end

end A328001.P3341552874237921134

namespace A328001

/-- `A182073(n)*A211226(n)` -/
def P3341552874237921134.Spec : Prop :=
  ∀ n, P3341552874237921134.a n = A328001 n

end A328001

/-! ## A328001.P2836868915702355112

`∏{e}[A036561(n), A056040(#)]`
-/

namespace A328001.P2836868915702355112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A056040 (Nat.factorization (f1 n).natAbs p)

end

end A328001.P2836868915702355112

namespace A328001

/-- `∏{e}[A036561(n), A056040(#)]` -/
def P2836868915702355112.Spec : Prop :=
  ∀ n, P2836868915702355112.a n = A328001 n

end A328001

/-! ## A328001.P6295100508202852070

`A246661(A089633(n))`
-/

namespace A328001.P6295100508202852070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246661 (A089633 n).toNat

end

end A328001.P6295100508202852070

namespace A328001

/-- `A246661(A089633(n))` -/
def P6295100508202852070.Spec : Prop :=
  ∀ n, P6295100508202852070.a n = A328001 n

end A328001

/-! ## A328001.P2099765388131126343

`A246661(A023758(n+2)-1)`
-/

namespace A328001.P2099765388131126343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246661 (A023758 (n + 2) - 1).toNat

end

end A328001.P2099765388131126343

namespace A328001

/-- `A246661(A023758(n+2)-1)` -/
def P2099765388131126343.Spec : Prop :=
  ∀ n, P2099765388131126343.a n = A328001 n

end A328001

/-! ## A328001.P16493786402892367114

`A246661(A099627(n)-A176224(n))`
-/

namespace A328001.P16493786402892367114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246661 (A099627 n - A176224 n).toNat

end

end A328001.P16493786402892367114

namespace A328001

/-- `A246661(A099627(n)-A176224(n))` -/
def P16493786402892367114.Spec : Prop :=
  ∀ n, P16493786402892367114.a n = A328001 n

end A328001

/-! ## A328001.P16212912868125137912

`A246661(eq[A000120(n), A000523(n+1)])`
-/

namespace A328001.P16212912868125137912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246661 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A328001.P16212912868125137912

namespace A328001

/-- `A246661(eq[A000120(n), A000523(n+1)])` -/
def P16212912868125137912.Spec : Prop :=
  ∀ n, P16212912868125137912.a n = A328001 n

end A328001

/-! ## A328001.P840428593603331527

`∏{e}[A175840(n), A056040(#)]`
-/

namespace A328001.P840428593603331527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A056040 (Nat.factorization (f1 n).natAbs p)

end

end A328001.P840428593603331527

namespace A328001

/-- `∏{e}[A175840(n), A056040(#)]` -/
def P840428593603331527.Spec : Prop :=
  ∀ n, P840428593603331527.a n = A328001 n

end A328001

/-! ## A328001.P10396294791112691275

`A246661(A043569(n+1)-2)`
-/

namespace A328001.P10396294791112691275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246661 (A043569 (n + 1) - 2).toNat

end

end A328001.P10396294791112691275

namespace A328001

/-- `A246661(A043569(n+1)-2)` -/
def P10396294791112691275.Spec : Prop :=
  ∀ n, P10396294791112691275.a n = A328001 n

end A328001

/-!
# A328002: a(n) = 2^n * Sum_{k=0..n} Product_{j=1..k} (2/j)^((-1)^j).

The programs for A328002, the canonical program `A328002.P5813959575759474995` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328002 has offset 0).

The definition of A328002 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328002.P5813959575759474995

`A056040(n)+2*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A328002

/-- `A056040(n)+2*a(n-1)` -/
def P5813959575759474995.Spec : Prop :=
  ∀ n, P5813959575759474995.a n = A328002 n

theorem P5813959575759474995.correct : P5813959575759474995.Spec := by
  intro n
  simp only [A328002]

end A328002

/-! ## A328002.P8642880763370996178

`2*a(n-1)-(A057977(n)-A275329(n))` with `a(0)=1`
-/

namespace A328002.P8642880763370996178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - (A057977 n - A275329 n)

end

end A328002.P8642880763370996178

namespace A328002

/-- `2*a(n-1)-(A057977(n)-A275329(n))` -/
def P8642880763370996178.Spec : Prop :=
  ∀ n, P8642880763370996178.a n = A328002 n

end A328002

/-! ## A328002.P7357435559553201331

`∑[A056040(n)/A000079(n)]*A000079(n)`
-/

namespace A328002.P7357435559553201331
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056040 n : ℚ) / (A000079 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000079 n : ℚ)

end

end A328002.P7357435559553201331

namespace A328002

/-- `∑[A056040(n)/A000079(n)]*A000079(n)` -/
def P7357435559553201331.Spec : Prop :=
  ∀ n, P7357435559553201331.a n = (A328002 n : ℚ)

end A328002

/-! ## A328002.P2902042947449067739

`A163649(A000096(n))+2*a(n-1)` with `a(0)=1`
-/

namespace A328002.P2902042947449067739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A163649 (A000096 n).toNat + 2 * a (n - 1)

end

end A328002.P2902042947449067739

namespace A328002

/-- `A163649(A000096(n))+2*a(n-1)` -/
def P2902042947449067739.Spec : Prop :=
  ∀ n, P2902042947449067739.a n = A328002 n

end A328002

/-! ## A328002.P1893627314907379024

`A182073(∑[n])+a(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A328002.P1893627314907379024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A182073 (∑ j ∈ Finset.range (n + 1), f1 j) + (a (n - 1) + a (n - 1))

end

end A328002.P1893627314907379024

namespace A328002

/-- `A182073(∑[n])+a(n-1)+a(n-1)` -/
def P1893627314907379024.Spec : Prop :=
  ∀ n, P1893627314907379024.a n = A328002 n

end A328002

/-!
# A328003: a(n) = ppi(2*n) - ppi(n). Number of prime powers (A246655) in the interval (n, 2*n]. See comments.

The programs for A328003, there is no canonical definition to state claims against.
-/

/-! ## A328003.P18114474752652436120

`A025528(A004277(n))-A025528(A028310(n))`
-/

namespace A328003.P18114474752652436120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (A004277 n).toNat - A025528 (A028310 n).toNat

end

end A328003.P18114474752652436120

/-! ## A328003.P9816880786494787352

`A065515(A000015(2*n+1))-A065515(A000015(n+1))`
-/

namespace A328003.P9816880786494787352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065515 (A000015 (2 * n + 1)).toNat - A065515 (A000015 (n + 1)).toNat

end

end A328003.P9816880786494787352

/-! ## A328003.P2453761507297977958

`A248805(A229372(n+1))+A000720(n+1)`
-/

namespace A328003.P2453761507297977958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248805 (A229372 (n + 1)).toNat + A000720 (n + 1)

end

end A328003.P2453761507297977958

/-! ## A328003.P8168188872338827526

`A220658(n)+A000035(A136378(n))`
-/

namespace A328003.P8168188872338827526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 n + A000035 (A136378 n).toNat

end

end A328003.P8168188872338827526

/-! ## A328003.P2753661160135776764

`A071673(∑[A028832(A209054(n+1))])`
-/

namespace A328003.P2753661160135776764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028832 (A209054 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071673 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A328003.P2753661160135776764

/-!
# A328004: Expansion of e.g.f. 1 / (1 - Sum_{k>=1} binomial(2*k,k) * x^k / k!).

The programs for A328004, there is no canonical definition to state claims against.
-/

/-! ## A328004.P13456404604945022626

`∑[A072099(A001813(n))-n]`
-/

namespace A328004.P13456404604945022626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072099 (A001813 n).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328004.P13456404604945022626

/-!
# A328005: Number of distinct coefficients in functional composition of 1 + x + ... + x^(n-1) with itself.

The programs for A328005, the canonical program `A328005.P8349493042729117322` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328005 has offset 0).

The definition of A328005 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328005.P12687169241179393660

`∑[char[C(2, n)+2*n]]+C(n, 2)`
-/

namespace A328005.P12687169241179393660
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 n + 2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose n 2

end

end A328005.P12687169241179393660

namespace A328005

/-- `∑[char[C(2, n)+2*n]]+C(n, 2)` -/
def P12687169241179393660.Spec : Prop :=
  ∀ n, (P12687169241179393660.a n : ℤ) = A328005 n

end A328005

/-! ## A328005.P14803757674465333840

`∑[abs(char[a(n-1)+2]-n)]` with `a(0)=2, a(1)=3, a(2)=7`
-/

namespace A328005.P14803757674465333840
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 7] fun n f2 =>
  f2 (n - 1) + 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328005.P14803757674465333840

namespace A328005

/-- `∑[abs(char[a(n-1)+2]-n)]` -/
def P14803757674465333840.Spec : Prop :=
  ∀ n, P14803757674465333840.a n = A328005 n

end A328005

/-! ## A328005.P8349493042729117322

`a(n-1)-(n*a(n-2))%2+n` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A328005

/-- `a(n-1)-(n*a(n-2))%2+n` -/
def P8349493042729117322.Spec : Prop :=
  ∀ n, P8349493042729117322.a n = A328005 n

theorem P8349493042729117322.correct : P8349493042729117322.Spec := by
  intro n
  simp only [A328005]

end A328005

/-! ## A328005.P2384416740456009016

`a(n-1)-a(n-2)%gcd(2, n+1)+n` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A328005.P2384416740456009016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 1) - Int.tmod (a (n - 2)) (Nat.gcd 2 (n + 1) : ℤ) + (n : ℤ)

end

end A328005.P2384416740456009016

namespace A328005

/-- `a(n-1)-a(n-2)%gcd(2, n+1)+n` -/
def P2384416740456009016.Spec : Prop :=
  ∀ n, P2384416740456009016.a n = A328005 n

end A328005

/-! ## A328005.P569620659179874606

`∑[abs(A000040(A100727(n))%2-n)]`
-/

namespace A328005.P569620659179874606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A000040 (A100727 n).toNat) 2 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328005.P569620659179874606

namespace A328005

/-- `∑[abs(A000040(A100727(n))%2-n)]` -/
def P569620659179874606.Spec : Prop :=
  ∀ n, P569620659179874606.a n = A328005 n

end A328005

/-! ## A328005.P17305387991496795455

`A123108(xor(n², A110592(n)))`
-/

namespace A328005.P17305387991496795455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (Int.xor (n ^ 2 : ℤ) (A110592 n)).toNat

end

end A328005.P17305387991496795455

namespace A328005

/-- `A123108(xor(n², A110592(n)))` -/
def P17305387991496795455.Spec : Prop :=
  ∀ n, P17305387991496795455.a n = A328005 n

end A328005

/-!
# A328006: Expansion of e.g.f. 1 / (1 - Sum_{k>=1} binomial(2*k,k) * x^k / (k + 1)!).

The programs for A328006, there is no canonical definition to state claims against.
-/

/-! ## A328006.P17272172994320834409

`A000108(n)+n*A008615(∏[∑[(n%3)!]]-1)`
-/

namespace A328006.P17272172994320834409
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n % 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (n : ℤ) * A008615 (∏ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A328006.P17272172994320834409

/-! ## A328006.P2026211634938054954

`A185194(A100793(n))+A075729(n)`
-/

namespace A328006.P2026211634938054954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185194 (A100793 n).toNat + A075729 n

end

end A328006.P2026211634938054954

/-!
# A328007: Expansion of e.g.f. 1 / (2 - exp(-x) / (1 - x)).

The programs for A328007, there is no canonical definition to state claims against.
-/

/-! ## A328007.P6688410989873613125

`A005843(A345697(n))-A000166(n)`
-/

namespace A328007.P6688410989873613125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A345697 n).toNat - A000166 n

end

end A328007.P6688410989873613125

/-! ## A328007.P1143157525216370903

`A005843(A345697(n))-abs(A182386(n))`
-/

namespace A328007.P1143157525216370903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A345697 n).toNat - |A182386 n|

end

end A328007.P1143157525216370903

/-! ## A328007.P6181071923631646575

`A005843(A345697(n))-A008290(∑[n])`
-/

namespace A328007.P6181071923631646575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A345697 n).toNat - A008290 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A328007.P6181071923631646575

/-! ## A328007.P8783925798271119142

`A005843(A345697(n))-A068106(∑[n])`
-/

namespace A328007.P8783925798271119142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A345697 n).toNat - A068106 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A328007.P8783925798271119142

/-!
# A328008: Expansion of e.g.f. 1 / (2 - exp(x) / (1 - x)).

The programs for A328008, there is no canonical definition to state claims against.
-/

/-! ## A328008.P2751070799623230154

`A285465(A008544(n))`
-/

namespace A328008.P2751070799623230154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285465 (A008544 n).toNat

end

end A328008.P2751070799623230154

/-!
# A328009: Irregular array read by rows in which row n lists the divisors of the n-th term of the sequence of amicable pairs (A259180).

The programs for A328009, there is no canonical definition to state claims against.
-/

/-! ## A328009.P1298484695739800691

`eq[lcm(20, n)/20, gcd(11, n)]`
-/

namespace A328009.P1298484695739800691
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 20 n : ℚ) / 20

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 11 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A328009.P1298484695739800691

/-! ## A328009.P8780898693606965809

`eq[11, A106621(lcm(11, n))]`
-/

namespace A328009.P8780898693606965809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106621 (Nat.lcm 11 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328009.P8780898693606965809

/-! ## A328009.P4172010195008350415

`eq[gcd(11, n), A106621(n)]`
-/

namespace A328009.P4172010195008350415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 11 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106621 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328009.P4172010195008350415

/-! ## A328009.P5300158314597268259

`eq[1, a(A350116(3*(n+1))%n)+1]` with `a(0)=0`
-/

namespace A328009.P5300158314597268259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (Int.tmod (A350116 (3 * (n + 1))) (n : ℤ)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328009.P5300158314597268259

/-! ## A328009.P8932932810829101650

`eq[1, A106621(A106612(n))]`
-/

namespace A328009.P8932932810829101650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106621 (A106612 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328009.P8932932810829101650

/-!
# A328010: The 5x + 1 sequence beginning at 17.

The programs for A328010, the canonical program `A328010.P12968265454826451526` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328010 has offset 0).

The definition of A328010 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A328010.P12968265454826451526

`a(n-10)` with `a(0)=17, a(1)=86, a(2)=43, a(3)=216, a(4)=108, a(5)=54, a(6)=27, a(7)=136, a(8)=68, a(9)=34`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A328010

/-- `a(n-10)` -/
def P12968265454826451526.Spec : Prop :=
  ∀ n, (P12968265454826451526.a n : ℤ) = A328010 n

theorem P12968265454826451526.correct : P12968265454826451526.Spec := by
  intro n
  simp only [A328010]

end A328010

/-!
# A328011: The 5x + 1 sequence beginning at 1.

The programs for A328011, the canonical program `A328011.P16236786602318890341` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328011 has offset 0).

The definition of A328011 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A328011.P16236786602318890341

`a(n-7)` with `a(0)=1, a(1)=6, a(2)=3, a(3)=16, a(4)=8, a(5)=4, a(6)=2`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A328011

/-- `a(n-7)` -/
def P16236786602318890341.Spec : Prop :=
  ∀ n, (P16236786602318890341.a n : ℤ) = A328011 n

theorem P16236786602318890341.correct : P16236786602318890341.Spec := by
  intro n
  simp only [A328011]

end A328011

/-!
# A328012: Numbers whose binary representations start and end with 1 and contain an even number of zeros between.

The programs for A328012, the canonical program `A328012.P3457687053191730346` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328012 has offset 1).

The definition of A328012 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328012.P3457687053191730346

`record[C(A059010(n), 2*n)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A328012

/-- `record[C(A059010(n), 2*n)]` -/
def P3457687053191730346.Spec : Prop :=
  ∀ n, (P3457687053191730346.a n : ℤ) = A328012 (n + 1)

theorem P3457687053191730346.correct : P3457687053191730346.Spec := by
  intro n
  simp only [A328012, Nat.add_sub_cancel]

end A328012

/-! ## A328012.P2517858860228353936

`record[C(2*n+1, A059009(n))]`
-/

namespace A328012.P2517858860228353936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) (A059009 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328012.P2517858860228353936

namespace A328012

/-- `record[C(2*n+1, A059009(n))]` -/
def P2517858860228353936.Spec : Prop :=
  ∀ n, (P2517858860228353936.a n : ℤ) = A328012 (n + 1)

end A328012

/-! ## A328012.P7034553842661896499

`A059009(comp[A059009(n+1)])+1`
-/

namespace A328012.P7034553842661896499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059009 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059009 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 1

end

end A328012.P7034553842661896499

namespace A328012

/-- `A059009(comp[A059009(n+1)])+1` -/
def P7034553842661896499.Spec : Prop :=
  ∀ n, P7034553842661896499.a n = A328012 (n + 1)

end A328012

/-! ## A328012.P12102205419696673707

`record[n*gcd(2, A080791(n))+1]`
-/

namespace A328012.P12102205419696673707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Int.gcd 2 (A080791 n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328012.P12102205419696673707

namespace A328012

/-- `record[n*gcd(2, A080791(n))+1]` -/
def P12102205419696673707.Spec : Prop :=
  ∀ n, (P12102205419696673707.a n : ℤ) = A328012 (n + 1)

end A328012

/-! ## A328012.P8085002677668161603

`eq[A059010(n), A267363(n)]`
-/

namespace A328012.P8085002677668161603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059010 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267363 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328012.P8085002677668161603

namespace A328012

/-- `eq[A059010(n), A267363(n)]` -/
def P8085002677668161603.Spec : Prop :=
  ∀ n, (P8085002677668161603.a n : ℤ) = A328012 (n + 1)

end A328012

/-! ## A328012.P15681494835545002122

`∩[A004273(n), A059010(n)]`
-/

namespace A328012.P15681494835545002122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059010 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328012.P15681494835545002122

namespace A328012

/-- `∩[A004273(n), A059010(n)]` -/
def P15681494835545002122.Spec : Prop :=
  ∀ n, (P15681494835545002122.a n : ℤ) = A328012 (n + 1)

end A328012

/-! ## A328012.P708868050507262705

`∩[A004274(n), A059010(n)]`
-/

namespace A328012.P708868050507262705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059010 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328012.P708868050507262705

namespace A328012

/-- `∩[A004274(n), A059010(n)]` -/
def P708868050507262705.Spec : Prop :=
  ∀ n, (P708868050507262705.a n : ℤ) = A328012 (n + 1)

end A328012

/-! ## A328012.P7165243307165631147

`∩[A059010(n), A060747(n)]`
-/

namespace A328012.P7165243307165631147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059010 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328012.P7165243307165631147

namespace A328012

/-- `∩[A059010(n), A060747(n)]` -/
def P7165243307165631147.Spec : Prop :=
  ∀ n, (P7165243307165631147.a n : ℤ) = A328012 (n + 1)

end A328012

/-! ## A328012.P10672053489970699685

`∩[A004280(n+1), A059010(n)]`
-/

namespace A328012.P10672053489970699685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059010 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328012.P10672053489970699685

namespace A328012

/-- `∩[A004280(n+1), A059010(n)]` -/
def P10672053489970699685.Spec : Prop :=
  ∀ n, (P10672053489970699685.a n : ℤ) = A328012 (n + 1)

end A328012

/-! ## A328012.P1378270022007704670

`∩[2*n+1, A053661(2*n+1)]`
-/

namespace A328012.P1378270022007704670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053661 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328012.P1378270022007704670

namespace A328012

/-- `∩[2*n+1, A053661(2*n+1)]` -/
def P1378270022007704670.Spec : Prop :=
  ∀ n, (P1378270022007704670.a n : ℤ) = A328012 (n + 1)

end A328012

/-! ## A328012.P3906155625389997014

`filter[A053661(2*n+1), A039982(#)]`
-/

namespace A328012.P3906155625389997014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053661 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A328012.P3906155625389997014

namespace A328012

/-- `filter[A053661(2*n+1), A039982(#)]` -/
def P3906155625389997014.Spec : Prop :=
  ∀ n, P3906155625389997014.a n = A328012 (n + 1)

end A328012

/-! ## A328012.P3260814070539685779

`filter[A053661(2*n+1), A098725(#)]`
-/

namespace A328012.P3260814070539685779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053661 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A328012.P3260814070539685779

namespace A328012

/-- `filter[A053661(2*n+1), A098725(#)]` -/
def P3260814070539685779.Spec : Prop :=
  ∀ n, P3260814070539685779.a n = A328012 (n + 1)

end A328012

/-! ## A328012.P14198398536368087735

`filter[A053661(2*n+1), A166486(#)]`
-/

namespace A328012.P14198398536368087735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053661 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A328012.P14198398536368087735

namespace A328012

/-- `filter[A053661(2*n+1), A166486(#)]` -/
def P14198398536368087735.Spec : Prop :=
  ∀ n, P14198398536368087735.a n = A328012 (n + 1)

end A328012

/-! ## A328012.P1298790404462335459

`filter[A053661(2*n+1), A359832(#)]`
-/

namespace A328012.P1298790404462335459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053661 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359832 (f1 j).toNat = 1) n)

end

end A328012.P1298790404462335459

namespace A328012

/-- `filter[A053661(2*n+1), A359832(#)]` -/
def P1298790404462335459.Spec : Prop :=
  ∀ n, P1298790404462335459.a n = A328012 (n + 1)

end A328012

/-! ## A328012.P9672842993947951981

`filter[2*n+1, A298952(#)]`
-/

namespace A328012.P9672842993947951981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A298952 (f1 j) = 1) n)

end

end A328012.P9672842993947951981

namespace A328012

/-- `filter[2*n+1, A298952(#)]` -/
def P9672842993947951981.Spec : Prop :=
  ∀ n, (P9672842993947951981.a n : ℤ) = A328012 (n + 1)

end A328012

/-! ## A328012.P17603215993956427500

`filter[A059010(n), A000035(#)]`
-/

namespace A328012.P17603215993956427500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A328012.P17603215993956427500

namespace A328012

/-- `filter[A059010(n), A000035(#)]` -/
def P17603215993956427500.Spec : Prop :=
  ∀ n, P17603215993956427500.a n = A328012 (n + 1)

end A328012

/-! ## A328012.P18350147065447117841

`eq[A035877(n), A059009(n)]`
-/

namespace A328012.P18350147065447117841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035877 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059009 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328012.P18350147065447117841

namespace A328012

/-- `eq[A035877(n), A059009(n)]` -/
def P18350147065447117841.Spec : Prop :=
  ∀ n, (P18350147065447117841.a n : ℤ) = A328012 (n + 1)

end A328012

/-! ## A328012.P189500070401319558

`eq[A059010(n), A059029(n)]`
-/

namespace A328012.P189500070401319558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059010 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328012.P189500070401319558

namespace A328012

/-- `eq[A059010(n), A059029(n)]` -/
def P189500070401319558.Spec : Prop :=
  ∀ n, (P189500070401319558.a n : ℤ) = A328012 (n + 1)

end A328012

/-! ## A328012.P9150675933973974356

`eq[A059010(n), A103831(n)]`
-/

namespace A328012.P9150675933973974356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059010 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103831 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328012.P9150675933973974356

namespace A328012

/-- `eq[A059010(n), A103831(n)]` -/
def P9150675933973974356.Spec : Prop :=
  ∀ n, (P9150675933973974356.a n : ℤ) = A328012 (n + 1)

end A328012

/-!
# A328014: Numbers whose powerful part (A057521) is larger than their powerfree part (A055231).

The programs for A328014, the canonical program `A328014.P12714233293390767781` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328014 has offset 1).

The definition of A328014 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1413 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328014.P217637886435564317

`lt[A055231(n+1)², n]+1`
-/

namespace A328014.P217637886435564317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A328014.P217637886435564317

namespace A328014

/-- `lt[A055231(n+1)², n]+1` -/
def P217637886435564317.Spec : Prop :=
  ∀ n, (P217637886435564317.a n : ℤ) = A328014 (n + 1)

end A328014

/-! ## A328014.P12714233293390767781

`lt[n+1, A057521(n+1)²]+1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A328014

/-- `lt[n+1, A057521(n+1)²]+1` -/
def P12714233293390767781.Spec : Prop :=
  ∀ n, (P12714233293390767781.a n : ℤ) = A328014 (n + 1)

theorem P12714233293390767781.correct : P12714233293390767781.Spec := by
  intro n
  simp only [A328014, Nat.add_sub_cancel]

end A328014

/-! ## A328014.P1483398934331071457

`lt[A055231(n+1), A057521(n+1)]+1`
-/

namespace A328014.P1483398934331071457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A328014.P1483398934331071457

namespace A328014

/-- `lt[A055231(n+1), A057521(n+1)]+1` -/
def P1483398934331071457.Spec : Prop :=
  ∀ n, (P1483398934331071457.a n : ℤ) = A328014 (n + 1)

end A328014

/-! ## A328014.P235203997341309699

`lt[n+1, gcd(((n+1)/∏{p}[n+1, #])², ∑[2*n])²]+1`
-/

namespace A328014.P235203997341309699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)) ^ 2)) ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A328014.P235203997341309699

namespace A328014

/-- `lt[n+1, gcd(((n+1)/∏{p}[n+1, #])², ∑[2*n])²]+1` -/
def P235203997341309699.Spec : Prop :=
  ∀ n, (P235203997341309699.a n : ℤ) = A328014 (n + 1)

end A328014

/-! ## A328014.P5475262302544123542

`lt[(∏{p}[n+1, #]/∏{p}[(n+1)/∏{p}[n+1, #], #])², n]+1`
-/

namespace A328014.P5475262302544123542
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f4 n), p : ℕ) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) / ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f3 n)).natAbs, p : ℕ) : ℚ)) ^ 2

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f5 j : ℚ)) n + 1

end

end A328014.P5475262302544123542

namespace A328014

/-- `lt[(∏{p}[n+1, #]/∏{p}[(n+1)/∏{p}[n+1, #], #])², n]+1` -/
def P5475262302544123542.Spec : Prop :=
  ∀ n, (P5475262302544123542.a n : ℤ) = A328014 (n + 1)

end A328014

/-! ## A328014.P17256106422480920184

`lt[A055231(A028310(n))², n]`
-/

namespace A328014.P17256106422480920184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A028310 n).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A328014.P17256106422480920184

namespace A328014

/-- `lt[A055231(A028310(n))², n]` -/
def P17256106422480920184.Spec : Prop :=
  ∀ n, (P17256106422480920184.a n : ℤ) = A328014 (n + 1)

end A328014

/-! ## A328014.P13699585199436910572

`A020725(lt[A055231(n+1)², n])`
-/

namespace A328014.P13699585199436910572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A328014.P13699585199436910572

namespace A328014

/-- `A020725(lt[A055231(n+1)², n])` -/
def P13699585199436910572.Spec : Prop :=
  ∀ n, P13699585199436910572.a n = A328014 (n + 1)

end A328014

/-! ## A328014.P5589494479990867360

`A061767(lt[A055231(n+1)², n])`
-/

namespace A328014.P5589494479990867360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A328014.P5589494479990867360

namespace A328014

/-- `A061767(lt[A055231(n+1)², n])` -/
def P5589494479990867360.Spec : Prop :=
  ∀ n, P5589494479990867360.a n = A328014 (n + 1)

end A328014

/-! ## A328014.P11075305540329958196

`A065475(lt[A055231(n+1)², n])`
-/

namespace A328014.P11075305540329958196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A328014.P11075305540329958196

namespace A328014

/-- `A065475(lt[A055231(n+1)², n])` -/
def P11075305540329958196.Spec : Prop :=
  ∀ n, P11075305540329958196.a n = A328014 (n + 1)

end A328014

/-! ## A328014.P8292629729795867563

`A020725(lt[A055231(n+1), A057521(n+1)])`
-/

namespace A328014.P8292629729795867563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A328014.P8292629729795867563

namespace A328014

/-- `A020725(lt[A055231(n+1), A057521(n+1)])` -/
def P8292629729795867563.Spec : Prop :=
  ∀ n, P8292629729795867563.a n = A328014 (n + 1)

end A328014

/-! ## A328014.P12553773918375464072

`A061767(lt[A055231(n+1), A057521(n+1)])`
-/

namespace A328014.P12553773918375464072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A328014.P12553773918375464072

namespace A328014

/-- `A061767(lt[A055231(n+1), A057521(n+1)])` -/
def P12553773918375464072.Spec : Prop :=
  ∀ n, P12553773918375464072.a n = A328014 (n + 1)

end A328014

/-! ## A328014.P4088081674058057561

`A065475(lt[A055231(n+1), A057521(n+1)])`
-/

namespace A328014.P4088081674058057561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A328014.P4088081674058057561

namespace A328014

/-- `A065475(lt[A055231(n+1), A057521(n+1)])` -/
def P4088081674058057561.Spec : Prop :=
  ∀ n, P4088081674058057561.a n = A328014 (n + 1)

end A328014

/-! ## A328014.P12183459805309993506

`A020725(lt[A055231(n+1), n/A055231(n+1)])`
-/

namespace A328014.P12183459805309993506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A055231 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A328014.P12183459805309993506

namespace A328014

/-- `A020725(lt[A055231(n+1), n/A055231(n+1)])` -/
def P12183459805309993506.Spec : Prop :=
  ∀ n, P12183459805309993506.a n = A328014 (n + 1)

end A328014

/-! ## A328014.P7653687119925198906

`A061767(lt[A055231(n+1), n/A055231(n+1)])`
-/

namespace A328014.P7653687119925198906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A055231 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A328014.P7653687119925198906

namespace A328014

/-- `A061767(lt[A055231(n+1), n/A055231(n+1)])` -/
def P7653687119925198906.Spec : Prop :=
  ∀ n, P7653687119925198906.a n = A328014 (n + 1)

end A328014

/-! ## A328014.P15875382898149614862

`A065475(lt[A055231(n+1), n/A055231(n+1)])`
-/

namespace A328014.P15875382898149614862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A055231 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A328014.P15875382898149614862

namespace A328014

/-- `A065475(lt[A055231(n+1), n/A055231(n+1)])` -/
def P15875382898149614862.Spec : Prop :=
  ∀ n, P15875382898149614862.a n = A328014 (n + 1)

end A328014

/-!
# A328016: Numbers k such that k, k+1, ... k+6 are all cubefree (A004709).

The programs for A328016, there is no canonical definition to state claims against.
-/

/-! ## A328016.P16767587906771602968

`and(-7, A167595(A016969(n)))`
-/

namespace A328016.P16767587906771602968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-7) (A167595 (A016969 n).toNat)

end

end A328016.P16767587906771602968

/-! ## A328016.P17614290693033372055

`A017077(A351870(n)+A057354(n))`
-/

namespace A328016.P17614290693033372055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 (A351870 n + A057354 n).toNat

end

end A328016.P17614290693033372055

/-! ## A328016.P1648489047691116983

`A085587(A072345(n))+8*A001951(n)`
-/

namespace A328016.P1648489047691116983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085587 (A072345 n).toNat + 8 * A001951 n

end

end A328016.P1648489047691116983

/-! ## A328016.P3891198694406768423

`∩[A135130(n+1), A017077(n)]`
-/

namespace A328016.P3891198694406768423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328016.P3891198694406768423

/-!
# A328018: If n is the k-th number divisible by 7 or containing a digit 7 (in base 10) then a(n) = a(k) otherwise a(n) = n.

The programs for A328018, there is no canonical definition to state claims against.
-/

/-! ## A328018.P10764569497385634260

`(n+1)%A071055(A223764(n+1))`
-/

namespace A328018.P10764569497385634260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A071055 (A223764 (n + 1)).toNat)

end

end A328018.P10764569497385634260

/-! ## A328018.P10268526647751241295

`A242603(n+1)%Δ[A193105(n+1)]`
-/

namespace A328018.P10268526647751241295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242603 (n + 1)) (f1 (n + 1) - f1 n)

end

end A328018.P10268526647751241295

/-!
# A328019: Positions of 1 in A328018.

The programs for A328019, there is no canonical definition to state claims against.
-/

/-! ## A328019.P9615987697333885175

`A092433(a(n-1))` with `a(0)=1`
-/

namespace A328019.P9615987697333885175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A092433 (a (n - 1)).toNat

end

end A328019.P9615987697333885175

/-! ## A328019.P5326018973265886595

`record[A092433(a(A025480(n)))]` with `a(0)=1`
-/

namespace A328019.P5326018973265886595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A092433 (f1 (A025480 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328019.P5326018973265886595

/-!
# A328020: Number of distinct tilings of an n X n square with free n-polyominoes.

The programs for A328020, there is no canonical definition to state claims against.
-/

/-! ## A328020.P6282717702150132173

`A100113(∏[n!])`
-/

namespace A328020.P6282717702150132173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100113 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A328020.P6282717702150132173

/-!
# A328023: Heinz number of the multiset of differences between consecutive divisors of n.

The programs for A328023, there is no canonical definition to state claims against.
-/

/-! ## A328023.P17071043789435219494

`A333219(A003602(∑{d}[n+1, 2^(#-1)]))`
-/

namespace A328023.P17071043789435219494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333219 (A003602 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (2 : ℚ) ^ ((d : ℤ) - 1 : ℤ))).toNat).toNat

end

end A328023.P17071043789435219494

/-!
# A328024: Heinz numbers of multisets representing the differences between some positive integer's consecutive divisors.

The programs for A328024, there is no canonical definition to state claims against.
-/

/-! ## A328024.P16538731481909977424

`lt[A278929(n), char[A328023(n+1)]]`
-/

namespace A328024.P16538731481909977424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278929 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328023 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A328024.P16538731481909977424

/-! ## A328024.P1279872870012994980

`∑[dr(A229825(A000667(n)))]`
-/

namespace A328024.P1279872870012994980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A229825 (A000667 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328024.P1279872870012994980

/-! ## A328024.P7937971913900218902

`∑[A039636(∑[A077247(n)])]`
-/

namespace A328024.P7937971913900218902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077247 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039636 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328024.P7937971913900218902

/-! ## A328024.P12906410903233076616

`A131209(A049887(n+1))+n`
-/

namespace A328024.P12906410903233076616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131209 (A049887 (n + 1)).toNat + (n : ℤ)

end

end A328024.P12906410903233076616

/-! ## A328024.P15777270806971035856

`A180101(A007504(n))+char[∑[n]]`
-/

namespace A328024.P15777270806971035856
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 (A007504 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A328024.P15777270806971035856

/-!
# A328025: Irregular triangle read by rows where row n gives the differences between consecutive divisors of n in weakly decreasing order.

The programs for A328025, there is no canonical definition to state claims against.
-/

/-! ## A328025.P14635058788267847215

`Δ[eq[1, A051778(n+3)]%A175486(n+1)]`
-/

namespace A328025.P14635058788267847215
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051778 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) (A175486 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A328025.P14635058788267847215

/-! ## A328025.P10443488490025448893

`Δ[eq[1, A051778(n+3)]%A141214(n)]`
-/

namespace A328025.P10443488490025448893
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051778 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) (A141214 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A328025.P10443488490025448893

/-! ## A328025.P4092416276326455925

`Δ[eq[1, A051778(n+3)^A049820(n+1)]]`
-/

namespace A328025.P4092416276326455925
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051778 (n + 3) : ℚ) ^ (A049820 (n + 1) : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℚ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A328025.P4092416276326455925

/-! ## A328025.P16848371392300330744

`Δ[eq[A010052(n²), A051778(n+3)]]`
-/

namespace A328025.P16848371392300330744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n ^ 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051778 (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A328025.P16848371392300330744

/-! ## A328025.P11741985467507462211

`A244415(A223801(n+1))`
-/

namespace A328025.P11741985467507462211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244415 (A223801 (n + 1)).toNat

end

end A328025.P11741985467507462211

/-!
# A328026: Number of divisible pairs of consecutive divisors of n.

The programs for A328026, there is no canonical definition to state claims against.
-/

/-! ## A328026.P17204422112657746313

`A000005(A075388(n+1))%A226452(n)`
-/

namespace A328026.P17204422112657746313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A075388 (n + 1)).toNat) (A226452 n)

end

end A328026.P17204422112657746313

/-! ## A328026.P6642800037709845762

`A000005(A075388(n+1))-A034876(A095970(n+1))`
-/

namespace A328026.P6642800037709845762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A075388 (n + 1)).toNat - A034876 (A095970 (n + 1)).toNat

end

end A328026.P6642800037709845762

/-! ## A328026.P17038433779732825991

`A056926(A007585(n))*A167447(A075388(n+1))`
-/

namespace A328026.P17038433779732825991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A007585 n).toNat * A167447 (A075388 (n + 1)).toNat

end

end A328026.P17038433779732825991

/-! ## A328026.P6058208259096319378

`A166469(A075388(n+1))%A096782(n+1)`
-/

namespace A328026.P6058208259096319378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166469 (A075388 (n + 1)).toNat) (A096782 (n + 1))

end

end A328026.P6058208259096319378

/-! ## A328026.P10268800595396244952

`A235875(n+1)+A178333(A330225(2*n+5))`
-/

namespace A328026.P10268800595396244952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235875 (n + 1) + A178333 (A330225 (2 * n + 5)).toNat

end

end A328026.P10268800595396244952

/-!
# A328027: Irregular triangle read by rows where row n lists, in weakly increasing order, the differences between consecutive divisors of n.

The programs for A328027, there is no canonical definition to state claims against.
-/

/-! ## A328027.P1942536919816382552

`A193829(n+2)-A165766(A222043(n+1))`
-/

namespace A328027.P1942536919816382552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193829 (n + 2) - A165766 (A222043 (n + 1)).toNat

end

end A328027.P1942536919816382552

/-! ## A328027.P4273211934408758373

`A193829(n+2)^A137993(A243835(3*n+4))`
-/

namespace A328027.P4273211934408758373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193829 (n + 2) : ℚ) ^ (A137993 (A243835 (3 * n + 4)).toNat : ℤ)

end

end A328027.P4273211934408758373

/-!
# A328028: Nonprime numbers n whose proper divisors (greater than 1 and less than n) have no consecutive divisibilities.

The programs for A328028, there is no canonical definition to state claims against.
-/

/-! ## A328028.P15798786168881011078

`filter[A328161(n+1), A005171(#)]`
-/

namespace A328028.P15798786168881011078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328161 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A328028.P15798786168881011078

/-! ## A328028.P2963101801934785572

`∩[A018252(n+1), A328161(n+1)]`
-/

namespace A328028.P2963101801934785572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328028.P2963101801934785572

/-! ## A328028.P7670051733483593377

`∩[A141468(n+1), A328161(n+1)]`
-/

namespace A328028.P7670051733483593377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328028.P7670051733483593377

/-! ## A328028.P16395970757680351923

`record[A191558(A328161(n+1))]`
-/

namespace A328028.P16395970757680351923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A328161 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328028.P16395970757680351923

/-! ## A328028.P17097770186606190758

`lt[and(13, A235875(n+1)), 1]+1`
-/

namespace A328028.P17097770186606190758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 13 (A235875 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A328028.P17097770186606190758

/-! ## A328028.P651860802104213511

`eq[2, A235875(A169585(n)+n)]`
-/

namespace A328028.P651860802104213511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235875 (A169585 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328028.P651860802104213511

/-!
# A328029: Lexicographically earliest permutation of [1,2,...,n] maximizing the determinant of an n X n circulant matrix that uses this permutation as first row, written as triangle T(n,k), k <= n.

The programs for A328029, there is no canonical definition to state claims against.
-/

/-! ## A328029.P923501442747382713

`A318475(A140430(n)+A095298(n+3))`
-/

namespace A328029.P923501442747382713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318475 (A140430 n + A095298 (n + 3)).toNat

end

end A328029.P923501442747382713

/-! ## A328029.P10405889767081128874

`A001221(A184414(n+1)+A112841(n)*A326623(n+1))`
-/

namespace A328029.P10405889767081128874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A184414 (n + 1) + A112841 n * A326623 (n + 1)).toNat

end

end A328029.P10405889767081128874

/-! ## A328029.P8361083432730042708

`A057077(n)+A001221(A022165(n))`
-/

namespace A328029.P8361083432730042708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n + A001221 (A022165 n).toNat

end

end A328029.P8361083432730042708

/-! ## A328029.P15746359857218178695

`A122375(or(A001539(n), A279151(n)))`
-/

namespace A328029.P15746359857218178695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122375 (Int.lor (A001539 n) (A279151 n)).toNat

end

end A328029.P15746359857218178695

/-! ## A328029.P15106877249862027590

`gcd(A000032(A022544(n+1)), A084700(n+1))`
-/

namespace A328029.P15106877249862027590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000032 (A022544 (n + 1)).toNat) (A084700 (n + 1))

end

end A328029.P15106877249862027590

/-!
# A328030: Maximum determinant of a circulant n X n matrix whose rows are permutations of [1,2,..,n].

The programs for A328030, there is no canonical definition to state claims against.
-/

/-! ## A328030.P6101159595670352174

`A309985(n)`
-/

namespace A328030.P6101159595670352174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309985 n

end

end A328030.P6101159595670352174

/-!
# A328031: Upper bound for the determinant of an n X n matrix whose entries are a permutation of the multiset {1^n,...,n^n}.

The programs for A328031, there is no canonical definition to state claims against.
-/

/-! ## A328031.P8141438207169165359

`floor(n^n*(n+1)*((n+1)/12)^((n-1)/2)/2)`
-/

namespace A328031.P8141438207169165359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ n * (n + 1) : ℝ) * ((n + 1 : ℚ) / 12 : ℝ) ^ (((n : ℤ) - 1 : ℚ) / 2 : ℝ) / 2⌋

end

end A328031.P8141438207169165359

/-! ## A328031.P15013955003413285853

`A193098(n+1)+A007954(A094037(n))`
-/

namespace A328031.P15013955003413285853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193098 (n + 1) + A007954 (A094037 n).toNat

end

end A328031.P15013955003413285853

/-!
# A328032: If there are m primes between 10^(n-1) and 10^n, a(n) is the middle prime if m is odd, otherwise the larger of the two middle primes.

The programs for A328032, there is no canonical definition to state claims against.
-/

/-! ## A328032.P12816261091341704947

`A000040(A006880(n)+floor(A006879(n+1)/2)+1)`
-/

namespace A328032.P12816261091341704947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A006880 n + ⌊(A006879 (n + 1) : ℚ) / 2⌋ + 1).toNat

end

end A328032.P12816261091341704947

/-!
# A328034: a(n) = 3n minus the largest power of 2 not exceeding 3n.

The programs for A328034, the canonical program `A328034.P17115087386491974071` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328034 has offset 1).

The definition of A328034 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A328034.P17115087386491974071

`A053645(3*(n+1))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A328034

/-- `A053645(3*(n+1))` -/
def P17115087386491974071.Spec : Prop :=
  ∀ n, P17115087386491974071.a n = A328034 (n + 1)

theorem P17115087386491974071.correct : P17115087386491974071.Spec := by
  intro n
  simp only [A328034, Nat.add_sub_cancel]

end A328034

/-! ## A328034.P15644448822043719498

`and(a(n-1)+3, 3*(n+1))` with `a(0)=1, a(1)=2`
-/

namespace A328034.P15644448822043719498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.land (a (n - 1) + 3) (3 * (n + 1))

end

end A328034.P15644448822043719498

namespace A328034

/-- `and(a(n-1)+3, 3*(n+1))` -/
def P15644448822043719498.Spec : Prop :=
  ∀ n, (P15644448822043719498.a n : ℤ) = A328034 (n + 1)

end A328034

/-! ## A328034.P1986232800270998787

`3*(n+1)-2^floor(log2(3*(n+1)))`
-/

namespace A328034.P1986232800270998787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - (2 ^ Nat.log 2 (3 * (n + 1)) : ℤ)

end

end A328034.P1986232800270998787

namespace A328034

/-- `3*(n+1)-2^floor(log2(3*(n+1)))` -/
def P1986232800270998787.Spec : Prop :=
  ∀ n, P1986232800270998787.a n = A328034 (n + 1)

end A328034

/-! ## A328034.P2140236306619987840

`(a(n-1)+3)%(3*n-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A328034.P2140236306619987840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.tmod (a (n - 1) + 3) ((3 * n : ℤ) - a (n - 1))

end

end A328034.P2140236306619987840

namespace A328034

/-- `(a(n-1)+3)%(3*n-a(n-1))` -/
def P2140236306619987840.Spec : Prop :=
  ∀ n, P2140236306619987840.a n = A328034 (n + 1)

end A328034

/-! ## A328034.P3818145506564221008

`floor(A006257(3*(n+1))/2)`
-/

namespace A328034.P3818145506564221008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006257 (3 * (n + 1)) : ℚ) / 2⌋

end

end A328034.P3818145506564221008

namespace A328034

/-- `floor(A006257(3*(n+1))/2)` -/
def P3818145506564221008.Spec : Prop :=
  ∀ n, P3818145506564221008.a n = A328034 (n + 1)

end A328034

/-! ## A328034.P2574349019122882947

`ceil(A006257(3*n+2)/2)`
-/

namespace A328034.P2574349019122882947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006257 (3 * n + 2) : ℚ) / 2⌉

end

end A328034.P2574349019122882947

namespace A328034

/-- `ceil(A006257(3*n+2)/2)` -/
def P2574349019122882947.Spec : Prop :=
  ∀ n, P2574349019122882947.a n = A328034 (n + 1)

end A328034

/-! ## A328034.P369015397822359585

`and(3*(n+1), A000203(2^floor(log2(n+1))))`
-/

namespace A328034.P369015397822359585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 * (n + 1) : ℤ) (A000203 (2 ^ Nat.log 2 (n + 1)))

end

end A328034.P369015397822359585

namespace A328034

/-- `and(3*(n+1), A000203(2^floor(log2(n+1))))` -/
def P369015397822359585.Spec : Prop :=
  ∀ n, P369015397822359585.a n = A328034 (n + 1)

end A328034

/-! ## A328034.P960866717736753732

`(3*(n+1))%∏[A014963(2*(n+1))]`
-/

namespace A328034.P960866717736753732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * (n + 1) : ℤ) (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A328034.P960866717736753732

namespace A328034

/-- `(3*(n+1))%∏[A014963(2*(n+1))]` -/
def P960866717736753732.Spec : Prop :=
  ∀ n, P960866717736753732.a n = A328034 (n + 1)

end A328034

/-! ## A328034.P13175961311421858744

`A003602(A006257(3*n+2))`
-/

namespace A328034.P13175961311421858744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A006257 (3 * n + 2)).toNat

end

end A328034.P13175961311421858744

namespace A328034

/-- `A003602(A006257(3*n+2))` -/
def P13175961311421858744.Spec : Prop :=
  ∀ n, P13175961311421858744.a n = A328034 (n + 1)

end A328034

/-! ## A328034.P15887282565292313964

`A220466(A006257(2*n+n+2))`
-/

namespace A328034.P15887282565292313964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220466 (A006257 (2 * n + (n + 2))).toNat

end

end A328034.P15887282565292313964

namespace A328034

/-- `A220466(A006257(2*n+n+2))` -/
def P15887282565292313964.Spec : Prop :=
  ∀ n, P15887282565292313964.a n = A328034 (n + 1)

end A328034

/-! ## A328034.P12183658724860780211

`A062050(3*n+2)`
-/

namespace A328034.P12183658724860780211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (3 * n + 2)

end

end A328034.P12183658724860780211

namespace A328034

/-- `A062050(3*n+2)` -/
def P12183658724860780211.Spec : Prop :=
  ∀ n, P12183658724860780211.a n = A328034 (n + 1)

end A328034

/-! ## A328034.P14292701373980741927

`A049773(A059893(2*n+n+2))`
-/

namespace A328034.P14292701373980741927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049773 (A059893 (2 * n + (n + 2))).toNat

end

end A328034.P14292701373980741927

namespace A328034

/-- `A049773(A059893(2*n+n+2))` -/
def P14292701373980741927.Spec : Prop :=
  ∀ n, P14292701373980741927.a n = A328034 (n + 1)

end A328034

/-! ## A328034.P1449033106367169914

`A181733(A139706(2*n+n+2))`
-/

namespace A328034.P1449033106367169914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181733 (A139706 (2 * n + (n + 2))).toNat

end

end A328034.P1449033106367169914

namespace A328034

/-- `A181733(A139706(2*n+n+2))` -/
def P1449033106367169914.Spec : Prop :=
  ∀ n, P1449033106367169914.a n = A328034 (n + 1)

end A328034

/-! ## A328034.P11136333252555990441

`A152423(3*(n+1))/2`
-/

namespace A328034.P11136333252555990441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152423 (3 * (n + 1)) : ℚ) / 2

end

end A328034.P11136333252555990441

namespace A328034

/-- `A152423(3*(n+1))/2` -/
def P11136333252555990441.Spec : Prop :=
  ∀ n, P11136333252555990441.a n = (A328034 (n + 1) : ℚ)

end A328034

/-! ## A328034.P2713946931950530352

`A035327(A054429(3*(n+1)))`
-/

namespace A328034.P2713946931950530352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A054429 (3 * (n + 1))).toNat

end

end A328034.P2713946931950530352

namespace A328034

/-- `A035327(A054429(3*(n+1)))` -/
def P2713946931950530352.Spec : Prop :=
  ∀ n, P2713946931950530352.a n = A328034 (n + 1)

end A328034

/-! ## A328034.P12172317039734620013

`A080079(A054429(3*(n+1))+1)`
-/

namespace A328034.P12172317039734620013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (A054429 (3 * (n + 1)) + 1).toNat

end

end A328034.P12172317039734620013

namespace A328034

/-- `A080079(A054429(3*(n+1))+1)` -/
def P12172317039734620013.Spec : Prop :=
  ∀ n, P12172317039734620013.a n = A328034 (n + 1)

end A328034

/-! ## A328034.P10179598440259813040

`A164089(6*(n+1))`
-/

namespace A328034.P10179598440259813040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164089 (6 * (n + 1))

end

end A328034.P10179598440259813040

namespace A328034

/-- `A164089(6*(n+1))` -/
def P10179598440259813040.Spec : Prop :=
  ∀ n, P10179598440259813040.a n = A328034 (n + 1)

end A328034

/-! ## A328034.P4076474495301229564

`A160588(A016957(n))`
-/

namespace A328034.P4076474495301229564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160588 (A016957 n).toNat

end

end A328034.P4076474495301229564

namespace A328034

/-- `A160588(A016957(n))` -/
def P4076474495301229564.Spec : Prop :=
  ∀ n, P4076474495301229564.a n = A328034 (n + 1)

end A328034

/-!
# A328035: Number of length n primitive (period n) bracelet structures which are not periodic palindromes using an infinite alphabet.

The programs for A328035, there is no canonical definition to state claims against.
-/

/-! ## A328035.P9101744284361811467

`A276548(n+1)-A285042(n+1)`
-/

namespace A328035.P9101744284361811467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276548 (n + 1) - A285042 (n + 1)

end

end A328035.P9101744284361811467

/-! ## A328035.P2304057342768526447

`A276547(n+1)+A001489(A320749(n+1))-A285042(n+1)`
-/

namespace A328035.P2304057342768526447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276547 (n + 1) + A001489 (A320749 (n + 1)).toNat - A285042 (n + 1)

end

end A328035.P2304057342768526447

/-! ## A328035.P8925041522174427991

`A028310(A276547(n+1)-A320749(n+1))-A285042(n+1)`
-/

namespace A328035.P8925041522174427991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A276547 (n + 1) - A320749 (n + 1)).toNat - A285042 (n + 1)

end

end A328035.P8925041522174427991

/-! ## A328035.P7532023236538194976

`A089247(A276547(n+1)-A320749(n+1))-A285042(n+1)`
-/

namespace A328035.P7532023236538194976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (A276547 (n + 1) - A320749 (n + 1)).toNat - A285042 (n + 1)

end

end A328035.P7532023236538194976

/-!
# A328036: Even semiprimes such that the next semiprime is also even.

The programs for A328036, there is no canonical definition to state claims against.
-/

/-! ## A328036.P10524380221169140175

`A001358(A174797(n+1))`
-/

namespace A328036.P10524380221169140175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A174797 (n + 1)).toNat

end

end A328036.P10524380221169140175

/-! ## A328036.P5276745813930044821

`A088707(A174797(gcd(n, n+1)+n))-1`
-/

namespace A328036.P5276745813930044821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (A174797 (Nat.gcd n (n + 1) + n)).toNat - 1

end

end A328036.P5276745813930044821

/-! ## A328036.P5875163300803715100

`A088707(A174797(n+1))-A057427(n+1)`
-/

namespace A328036.P5875163300803715100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (A174797 (n + 1)).toNat - A057427 (n + 1)

end

end A328036.P5875163300803715100

/-! ## A328036.P16078297328253183649

`A088707(A174797(n+1))-A000034(2*n)`
-/

namespace A328036.P16078297328253183649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (A174797 (n + 1)).toNat - A000034 (2 * n)

end

end A328036.P16078297328253183649

/-! ## A328036.P2594192321404206239

`A088707(A174797(n+1))-A028920(2*n)`
-/

namespace A328036.P2594192321404206239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (A174797 (n + 1)).toNat - A028920 (2 * n)

end

end A328036.P2594192321404206239

/-! ## A328036.P2995642482045157243

`A088707(A174797(n+1))-A007318(C(2, n))`
-/

namespace A328036.P2995642482045157243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (A174797 (n + 1)).toNat - A007318 (Nat.choose 2 n)

end

end A328036.P2995642482045157243

/-! ## A328036.P13085844928097854308

`A088707(A174797(n+1))-A000010(C(2, n)!)`
-/

namespace A328036.P13085844928097854308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (A174797 (n + 1)).toNat - A000010 (Nat.factorial (Nat.choose 2 n))

end

end A328036.P13085844928097854308

/-! ## A328036.P450573479307469189

`A088707(A174797(n+1))-A014963(6*(n+1))`
-/

namespace A328036.P450573479307469189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (A174797 (n + 1)).toNat - A014963 (6 * (n + 1))

end

end A328036.P450573479307469189

/-! ## A328036.P13208370935851998302

`A088707(A174797(n+1))-A000041(C(2, n+2))`
-/

namespace A328036.P13208370935851998302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (A174797 (n + 1)).toNat - A000041 (Nat.choose 2 (n + 2))

end

end A328036.P13208370935851998302

/-! ## A328036.P14205572851443603860

`A088707(A174797(n+1))-A000108(C(2, n+2))`
-/

namespace A328036.P14205572851443603860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (A174797 (n + 1)).toNat - A000108 (Nat.choose 2 (n + 2))

end

end A328036.P14205572851443603860

/-! ## A328036.P12222529914665083311

`A088707(A174797(n+1))-A007318(abs((-1)^n))`
-/

namespace A328036.P12222529914665083311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (A174797 (n + 1)).toNat - A007318 |(-1) ^ n|.toNat

end

end A328036.P12222529914665083311

/-! ## A328036.P11787337482745565905

`A088707(A174797(n+1))-A008683(n+1)²!`
-/

namespace A328036.P11787337482745565905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (A174797 (n + 1)).toNat - (Nat.factorial (A008683 (n + 1) ^ 2).toNat : ℤ)

end

end A328036.P11787337482745565905

/-! ## A328036.P13779896869891050366

`A088707(A174797(n+1))-log2(A020639(2*(n+1)))`
-/

namespace A328036.P13779896869891050366
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A088707 (A174797 (n + 1)).toNat : ℝ) - Real.logb 2 (A020639 (2 * (n + 1)) : ℝ)

end

end A328036.P13779896869891050366

/-! ## A328036.P15289275880841137193

`A075818(A174797(n+1))/A000010(5-(-1)^n)`
-/

namespace A328036.P15289275880841137193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075818 (A174797 (n + 1)).toNat : ℚ) / (A000010 (5 - (-1) ^ n).toNat : ℚ)

end

end A328036.P15289275880841137193

/-! ## A328036.P7025503440715726699

`A088707(A174797(n+1))-A000108(ceil(1/(n+1)))`
-/

namespace A328036.P7025503440715726699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (A174797 (n + 1)).toNat - A000108 ⌈1 / (n + 1 : ℚ)⌉.toNat

end

end A328036.P7025503440715726699

/-! ## A328036.P16641475655577334130

`A075818(A174797(n+1))/A020639(8*(8*n+4))`
-/

namespace A328036.P16641475655577334130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075818 (A174797 (n + 1)).toNat : ℚ) / (A020639 (8 * (8 * n + 4)) : ℚ)

end

end A328036.P16641475655577334130

/-! ## A328036.P6292788062506145512

`A088707(A174797(n+1))+A008683(A007918(n))`
-/

namespace A328036.P6292788062506145512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (A174797 (n + 1)).toNat + A008683 (A007918 n).toNat

end

end A328036.P6292788062506145512

/-! ## A328036.P9444717506447650993

`A088707(A174797(n+1))+A008683(A052369(n+1))`
-/

namespace A328036.P9444717506447650993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (A174797 (n + 1)).toNat + A008683 (A052369 (n + 1)).toNat

end

end A328036.P9444717506447650993

/-! ## A328036.P1675661484276531261

`A075818(A174797(n+1))/A000005(A005383(n+1))`
-/

namespace A328036.P1675661484276531261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075818 (A174797 (n + 1)).toNat : ℚ) / (A000005 (A005383 (n + 1)).toNat : ℚ)

end

end A328036.P1675661484276531261

/-!
# A328037: Irregular triangle T(n,k) read by rows: "quotient trajectories" in reduced Collatz sequences; i.e., T(n,k) = q-value(A256598(n,k)) where q-value(z) = (z - A259663(m,j))/2^(m+j) and (m,j) is the unique pair such that z == A259663(m,j) (mod 2^(m+j)). (See Comments for definitions.)

The programs for A328037, there is no canonical definition to state claims against.
-/

/-! ## A328037.P10829973749943307225

`val(A285573(3*(n+1)), A285573(A078822(n+4)))`
-/

namespace A328037.P10829973749943307225
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A285573 (3 * (n + 1))).toNat (A285573 (A078822 (n + 4)).toNat).toNat

end

end A328037.P10829973749943307225

/-! ## A328037.P11883172813632580384

`and(A005122(A255247(2*(n+1))), A118917(2*n+1))`
-/

namespace A328037.P11883172813632580384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005122 (A255247 (2 * (n + 1))).toNat) (A118917 (2 * n + 1))

end

end A328037.P11883172813632580384

/-! ## A328037.P15755933064736693788

`and(A052938(A255247(2*n+1)), A118917(2*n+1))`
-/

namespace A328037.P15755933064736693788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052938 (A255247 (2 * n + 1)).toNat) (A118917 (2 * n + 1))

end

end A328037.P15755933064736693788

/-! ## A328037.P16530363584567620491

`A131909(n)%A030394(A173599(n))`
-/

namespace A328037.P16530363584567620491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131909 n) (A030394 (A173599 n).toNat)

end

end A328037.P16530363584567620491

/-! ## A328037.P15376291953571058287

`record[A053117(n)]%A001221(A176892(n))`
-/

namespace A328037.P15376291953571058287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A001221 (A176892 n).toNat)

end

end A328037.P15376291953571058287

/-!
# A328038: Number of primitive (period n) n-bead bracelet structures which are not periodic palindromes using exactly three different colored beads.

The programs for A328038, there is no canonical definition to state claims against.
-/

/-! ## A328038.P10500100989266537065

`A056367(n+1)-A056519(n+1)`
-/

namespace A328038.P10500100989266537065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056367 (n + 1) - A056519 (n + 1)

end

end A328038.P10500100989266537065

/-! ## A328038.P8005290597717908804

`A309784(∑[n]+3)`
-/

namespace A328038.P8005290597717908804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309784 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A328038.P8005290597717908804

/-! ## A328038.P18259369536847413735

`A309784(A152950(n+1))%n!`
-/

namespace A328038.P18259369536847413735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309784 (A152950 (n + 1)).toNat) (Nat.factorial n : ℤ)

end

end A328038.P18259369536847413735

/-! ## A328038.P10923386024389943841

`A328657(n+1)-A309784(A133263(n))`
-/

namespace A328038.P10923386024389943841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328657 (n + 1) - A309784 (A133263 n).toNat

end

end A328038.P10923386024389943841

/-! ## A328038.P10291016532256347151

`A060576(n)*A309784(A152950(n+1))`
-/

namespace A328038.P10291016532256347151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A309784 (A152950 (n + 1)).toNat

end

end A328038.P10291016532256347151

/-! ## A328038.P12376452299454882854

`A157928(n)*A309784(A152950(n+1))`
-/

namespace A328038.P12376452299454882854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n * A309784 (A152950 (n + 1)).toNat

end

end A328038.P12376452299454882854

/-! ## A328038.P2475205336556451119

`A178334(n)*A309784(A152950(n+1))`
-/

namespace A328038.P2475205336556451119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A309784 (A152950 (n + 1)).toNat

end

end A328038.P2475205336556451119

/-!
# A328039: Number of primitive (period n) n-bead bracelet structures which are not periodic palindromes using exactly four different colored beads.

The programs for A328039, there is no canonical definition to state claims against.
-/

/-! ## A328039.P5763251367506685110

`A056368(n+1)-A056521(n+1)`
-/

namespace A328039.P5763251367506685110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056368 (n + 1) - A056521 (n + 1)

end

end A328039.P5763251367506685110

/-! ## A328039.P14834226337062451380

`A328658(n+1)-A328657(n+1)`
-/

namespace A328039.P14834226337062451380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328658 (n + 1) - A328657 (n + 1)

end

end A328039.P14834226337062451380

/-! ## A328039.P4624138326541368978

`A328658(n+1)+A057428(n)*A328657(n+1)`
-/

namespace A328039.P4624138326541368978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328658 (n + 1) + A057428 n * A328657 (n + 1)

end

end A328039.P4624138326541368978

/-! ## A328039.P7865470512272096103

`A309784(∑[n]+4)`
-/

namespace A328039.P7865470512272096103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309784 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A328039.P7865470512272096103

/-! ## A328039.P9787681405513751

`A057427(n)*A309784(A145018(n+1))`
-/

namespace A328039.P9787681405513751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A309784 (A145018 (n + 1)).toNat

end

end A328039.P9787681405513751

/-! ## A328039.P1795017628134551648

`A014963((n+1)*(n+2))*A309784(A145018(n+1))`
-/

namespace A328039.P1795017628134551648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ((n + 1) * (n + 2)) * A309784 (A145018 (n + 1)).toNat

end

end A328039.P1795017628134551648

/-!
# A328042: Number of parts in all proper twice partitions of n.

The programs for A328042, there is no canonical definition to state claims against.
-/

/-! ## A328042.P9566003784956814442

`A327631(∑[n+2]+4)`
-/

namespace A328042.P9566003784956814442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327631 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A328042.P9566003784956814442

/-! ## A328042.P10468719815132027789

`or(char[1], A327631(A167499(n)+n))`
-/

namespace A328042.P10468719815132027789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A327631 (A167499 n + (n : ℤ)).toNat)

end

end A328042.P10468719815132027789

/-! ## A328042.P2010414016294046835

`or(A000007(n), A327631(A167614(n+1)))`
-/

namespace A328042.P2010414016294046835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A327631 (A167614 (n + 1)).toNat)

end

end A328042.P2010414016294046835

/-! ## A328042.P1245303846255537163

`or(A036987(n), A327631(A167614(n+1)))`
-/

namespace A328042.P1245303846255537163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036987 n) (A327631 (A167614 (n + 1)).toNat)

end

end A328042.P1245303846255537163

/-! ## A328042.P10314244029708803809

`A327631(A167614(n+1))%A228067(n+1)`
-/

namespace A328042.P10314244029708803809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327631 (A167614 (n + 1)).toNat) (A228067 (n + 1))

end

end A328042.P10314244029708803809

/-! ## A328042.P13296649484747399247

`A327631(A167499(n)+n)%A140325(n+2)`
-/

namespace A328042.P13296649484747399247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327631 (A167499 n + (n : ℤ)).toNat) (A140325 (n + 2))

end

end A328042.P13296649484747399247

/-! ## A328042.P14177054439116311296

`A327631(A055998(n)+6)%A338225(2*(n+1))`
-/

namespace A328042.P14177054439116311296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327631 (A055998 n + 6).toNat) (A338225 (2 * (n + 1)))

end

end A328042.P14177054439116311296

/-!
# A328043: Number of divisors of the amicable pairs.

The programs for A328043, there is no canonical definition to state claims against.
-/

/-! ## A328043.P11858076950723374347

`A000005(A259180(n+1))`
-/

namespace A328043.P11858076950723374347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A259180 (n + 1)).toNat

end

end A328043.P11858076950723374347

/-! ## A328043.P16331917035710851293

`∑{d}[A259180(n+1), A008459(C(2, #))]`
-/

namespace A328043.P16331917035710851293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008459 (Nat.choose 2 d)

end

end A328043.P16331917035710851293

/-! ## A328043.P12471595623489259209

`∑{d}[A259180(n+1), A069626(C(2, #)+1)]`
-/

namespace A328043.P12471595623489259209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A069626 (Nat.choose 2 d + 1)

end

end A328043.P12471595623489259209

/-! ## A328043.P6842851877169655383

`∑{d}[A259180(n+1), A000041(C(2, 3*#))]`
-/

namespace A328043.P6842851877169655383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000041 (Nat.choose 2 (3 * d))

end

end A328043.P6842851877169655383

/-! ## A328043.P11027917908944834706

`A331308(A063990(n+1))`
-/

namespace A328043.P11027917908944834706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331308 (A063990 (n + 1)).toNat

end

end A328043.P11027917908944834706

/-!
# A328044: 

The programs for A328044, there is no canonical definition to state claims against.
-/

/-! ## A328044.P10875442994433521066

`A007047(n²)`
-/

namespace A328044.P10875442994433521066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007047 (n ^ 2)

end

end A328044.P10875442994433521066

/-! ## A328044.P7641300072322752389

`2*A002050(n²)+1`
-/

namespace A328044.P7641300072322752389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002050 (n ^ 2) + 1

end

end A328044.P7641300072322752389

/-! ## A328044.P10888015676533469

`or(1, A007047(A000290(n)))`
-/

namespace A328044.P10888015676533469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A007047 (A000290 n).toNat)

end

end A328044.P10888015676533469

/-! ## A328044.P2006002164255670762

`record[A007047(n)*A010052(n)]`
-/

namespace A328044.P2006002164255670762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007047 n * A010052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328044.P2006002164255670762

/-! ## A328044.P5109516098579696821

`A007047(A000290(n))+A056457(n+1)/2`
-/

namespace A328044.P5109516098579696821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007047 (A000290 n).toNat : ℚ) + (A056457 (n + 1) : ℚ) / 2

end

end A328044.P5109516098579696821

/-!
# A328046: G.f.: 1/2 + 1/(1 + AGM(1, sqrt(1-16*x))).

The programs for A328046, there is no canonical definition to state claims against.
-/

/-! ## A328046.P12385509959646785688

`A062300((n+3)^n-n)`
-/

namespace A328046.P12385509959646785688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062300 ((n + 3) ^ n - n)

end

end A328046.P12385509959646785688

/-!
# A328047: Permutation of positive integers: a(1) = 1. For n > 1, a(n) is the smallest positive integer not already in the sequence such that bigomega(a(n)) != bigomega(a(n-1)), where bigomega(i) is A001222(i).

The programs for A328047, there is no canonical definition to state claims against.
-/

/-! ## A328047.P493433451493637367

`∑[A328049(floor(acot(n)+n))]`
-/

namespace A328047.P493433451493637367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328049 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328047.P493433451493637367

/-! ## A328047.P15094138996884978352

`A328049(n)+a(n-1)` with `a(0)=1`
-/

namespace A328047.P15094138996884978352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A328049 n + a (n - 1)

end

end A328047.P15094138996884978352

/-! ## A328047.P12943014447880576184

`∑[A328049(round(sqrt(n²+1)))]`
-/

namespace A328047.P12943014447880576184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328049 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328047.P12943014447880576184

/-! ## A328047.P4773429435871653159

`∑[A328049(abs(1-n)+1)]-1`
-/

namespace A328047.P4773429435871653159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328049 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A328047.P4773429435871653159

/-! ## A328047.P12073517881374157088

`abs(∑[A328049(C(2, n+2)+n)])`
-/

namespace A328047.P12073517881374157088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328049 (Nat.choose 2 (n + 2) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A328047.P12073517881374157088

/-! ## A328047.P8684178807464089813

`abs(∑[A328049(A028310(n))])`
-/

namespace A328047.P8684178807464089813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328049 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A328047.P8684178807464089813

/-! ## A328047.P14014237378129208163

`abs(∑[A328049(A065033(2*n))])`
-/

namespace A328047.P14014237378129208163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328049 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A328047.P14014237378129208163

/-! ## A328047.P5244303671624404131

`∑[A328049(A193739(∑[n]))%6]`
-/

namespace A328047.P5244303671624404131
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328049 (A193739 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat) 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328047.P5244303671624404131

/-! ## A328047.P7114997416061268340

`abs(∑[A328049(A000007(n)+n)])`
-/

namespace A328047.P7114997416061268340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328049 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A328047.P7114997416061268340

/-!
# A328048: a(n) = A001222(A328047(n)).

The programs for A328048, there is no canonical definition to state claims against.
-/

/-! ## A328048.P10678606685231845855

`A001222(A328047(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328048.P10678606685231845855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A328047 (n + 1)).toNat

end

end A328048.P10678606685231845855

/-! ## A328048.P7010896764814811405

`∑{e}[A328049(n)+a(n-1), #]` with `a(0)=1`
-/

namespace A328048.P7010896764814811405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A328049 n + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A328048.P7010896764814811405

/-! ## A328048.P6863753720922169701

`∑{e}[∑[A328049(abs(1-n)+1)]-1, #]`
-/

namespace A328048.P6863753720922169701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328049 (|1 - (n : ℤ)| + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A328048.P6863753720922169701

/-! ## A328048.P3546236561303716608

`∑{e}[∑[A328049(C(3, 2*(n+1))+n)]+2, #]%15`
-/

namespace A328048.P3546236561303716608
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328049 (Nat.choose 3 (2 * (n + 1)) + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) % 15

end

end A328048.P3546236561303716608

/-! ## A328048.P12759022521525584026

`∑{e}[∑[A328049(A065033(2*n))], #]`
-/

namespace A328048.P12759022521525584026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328049 (A065033 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A328048.P12759022521525584026

/-! ## A328048.P11825914059323995274

`∑{e}[∑[A328049(A000007(n)+n)], #]`
-/

namespace A328048.P11825914059323995274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328049 (A000007 n + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A328048.P11825914059323995274

/-! ## A328048.P11158718319843994892

`A001222(∑[A328049(C(2, n+2)+n)])`
-/

namespace A328048.P11158718319843994892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328049 (Nat.choose 2 (n + 2) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A328048.P11158718319843994892

/-! ## A328048.P9958710821527274013

`A001222(∑[A328049(abs(1-n)+1)]-1)`
-/

namespace A328048.P9958710821527274013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328049 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A328048.P9958710821527274013

/-! ## A328048.P2563889811481192443

`A001222(∑[A328049(A028310(n))])`
-/

namespace A328048.P2563889811481192443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328049 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A328048.P2563889811481192443

/-! ## A328048.P13818639488241536800

`A001222(∑[A328049(n+1)]-A328049(n+1)+1)`
-/

namespace A328048.P13818639488241536800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j - A328049 (n + 1) + 1).toNat

end

end A328048.P13818639488241536800

/-!
# A328049: First differences of A328047.

The programs for A328049, there is no canonical definition to state claims against.
-/

/-! ## A328049.P7494226276076284759

`Δ[A328047(n+1)]`
-/

namespace A328049.P7494226276076284759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A328049.P7494226276076284759

/-! ## A328049.P7535402518432494677

`A328047(n+2)-A328047(n+1)`
-/

namespace A328049.P7535402518432494677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328047 (n + 2) - A328047 (n + 1)

end

end A328049.P7535402518432494677

/-! ## A328049.P10172331038063677920

`Δ[xor(A073846(n+1), A185284(3*n+1))]`
-/

namespace A328049.P10172331038063677920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A073846 (n + 1)) (A185284 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A328049.P10172331038063677920

/-!
# A328050: a(n) = abs(A328049(n)).

The programs for A328050, there is no canonical definition to state claims against.
-/

/-! ## A328050.P8149707370634498031

`abs(A328049(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328050.P8149707370634498031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A328049 (n + 1)|

end

end A328050.P8149707370634498031

/-! ## A328050.P1083172688795012230

`dr(A328049(n-log2(1/2)))`
-/

namespace A328050.P1083172688795012230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A328049 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat)

end

end A328050.P1083172688795012230

/-! ## A328050.P3666363840997893891

`dr(Δ[A328049(n)+a(n-1)])` with `a(0)=0`
-/

namespace A328050.P3666363840997893891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A328049 n + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n)

end

end A328050.P3666363840997893891

/-! ## A328050.P15401653485491901882

`gcd(60, A328049(round(sqrt((n+1)²+1))))`
-/

namespace A328050.P15401653485491901882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 60 (A328049 (SequenceMachineLib.roundAway (Real.sqrt ((n + 1) ^ 2 + 1 : ℝ))).toNat)

end

end A328050.P15401653485491901882

/-! ## A328050.P15570455200402077889

`lcm(A020985(n), A328049(n+1))`
-/

namespace A328050.P15570455200402077889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A328049 (n + 1))

end

end A328050.P15570455200402077889

/-! ## A328050.P6474327424858791833

`or(dr(A328049(n+1)), A000007(n))`
-/

namespace A328050.P6474327424858791833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.digitalRoot (A328049 (n + 1)) : ℤ) (A000007 n)

end

end A328050.P6474327424858791833

/-! ## A328050.P2940549103908666624

`dr(A007318(C(2, n))*A328049(n+1))`
-/

namespace A328050.P2940549103908666624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007318 (Nat.choose 2 n) * A328049 (n + 1))

end

end A328050.P2940549103908666624

/-! ## A328050.P2201988750415099111

`sqrt(A328049(n+1)^A020639(2*(n+1)))`
-/

namespace A328050.P2201988750415099111
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A328049 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ) : ℝ)

end

end A328050.P2201988750415099111

/-! ## A328050.P13133782206177731773

`gcd(A328049(n+1)+A000038(n), A000038(n))`
-/

namespace A328050.P13133782206177731773
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A328049 (n + 1) + A000038 n) (A000038 n)

end

end A328050.P13133782206177731773

/-! ## A328050.P3704901498599956488

`abs(Δ[A328047(n+1)])`
-/

namespace A328050.P3704901498599956488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A328050.P3704901498599956488

/-!
# A328051: Numbers m such that sigma(m)/(d(m)*sopf(m)) is an integer, where d is the number of divisors (A000005) and sopf the sum of prime factors without repetition (A008472).

The programs for A328051, there is no canonical definition to state claims against.
-/

/-! ## A328051.P1529718693388190058

`A348551(A361109(n+1)+A005651(n))`
-/

namespace A328051.P1529718693388190058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348551 (A361109 (n + 1) + A005651 n).toNat

end

end A328051.P1529718693388190058

/-!
# A328052: Value of sigma(m)/(d(m)*sopf(m)) for the integers m that make this expression an integer.

The programs for A328052, there is no canonical definition to state claims against.
-/

/-! ## A328052.P10083280897238570334

`A000203(A328051(n+1))/(A000005(A328051(n+1))*A008472(A328051(n+1)))`
-/

namespace A328052.P10083280897238570334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A328051 (n + 1)).toNat : ℚ) / (A000005 (A328051 (n + 1)).toNat * A008472 (A328051 (n + 1)).toNat : ℚ)

end

end A328052.P10083280897238570334

/-!
# A328054: Expansion of e.g.f. log(1 + x / (1 - x)^2).

The programs for A328054, there is no canonical definition to state claims against.
-/

/-! ## A328054.P11508376674375320140

`A104150(n)*A254745(n+5)`
-/

namespace A328054.P11508376674375320140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 n * A254745 (n + 5)

end

end A328054.P11508376674375320140

/-!
# A328055: Expansion of e.g.f. -log(1 - x / (1 - x)^2).

The programs for A328055, there is no canonical definition to state claims against.
-/

/-! ## A328055.P2848737218796571193

`(A000032(2*n)-2)*abs(1-n)!`
-/

namespace A328055.P2848737218796571193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000032 (2 * n) - 2) * (Nat.factorial |1 - (n : ℤ)|.toNat : ℤ)

end

end A328055.P2848737218796571193

/-! ## A328055.P8565517927430258178

`A052878(n)-A104150(n)`
-/

namespace A328055.P8565517927430258178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052878 n - A104150 n

end

end A328055.P8565517927430258178

/-! ## A328055.P15465069008869661609

`A001350(2*n)*A104150(n)`
-/

namespace A328055.P15465069008869661609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001350 (2 * n) * A104150 n

end

end A328055.P15465069008869661609

/-! ## A328055.P8831070551274017646

`A004146(n)*A098361(A000124(n))`
-/

namespace A328055.P8831070551274017646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004146 n * A098361 (A000124 n).toNat

end

end A328055.P8831070551274017646

/-! ## A328055.P928410098224562670

`A074392(A004273(n))*A104150(n)`
-/

namespace A328055.P928410098224562670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074392 (A004273 n).toNat * A104150 n

end

end A328055.P928410098224562670

/-! ## A328055.P12349604862781085302

`(A005592(n)-1)*A084938(A000124(n))`
-/

namespace A328055.P12349604862781085302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005592 n - 1) * A084938 (A000124 n).toNat

end

end A328055.P12349604862781085302

/-! ## A328055.P17909481671325207788

`A001350(2*n)*A132393(A000124(n))`
-/

namespace A328055.P17909481671325207788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001350 (2 * n) * A132393 (A000124 n).toNat

end

end A328055.P17909481671325207788

/-!
# A328056: Numbers k such that phi(k) > phi(k+1) > phi(k+2) where phi is the Euler totient function (A000010).

The programs for A328056, there is no canonical definition to state claims against.
-/

/-! ## A328056.P8050154202379913454

`A161963(n+1)-A267163(A114902(n))`
-/

namespace A328056.P8050154202379913454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161963 (n + 1) - A267163 (A114902 n).toNat

end

end A328056.P8050154202379913454

/-!
# A328057: Number of graphs with n nodes having fewer than n edges.

The programs for A328057, there is no canonical definition to state claims against.
-/

/-! ## A328057.P8588459703592227752

`A370315(n+1)-A001434(n+1)`
-/

namespace A328057.P8588459703592227752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370315 (n + 1) - A001434 (n + 1)

end

end A328057.P8588459703592227752

/-! ## A328057.P10439562965113196210

`A333865(n+1)+A001433(n+1)`
-/

namespace A328057.P10439562965113196210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333865 (n + 1) + A001433 (n + 1)

end

end A328057.P10439562965113196210

/-! ## A328057.P13950455644893376142

`A333865(n+1)+A008406(Δ[C(n+2, 4)+1+n])`
-/

namespace A328057.P13950455644893376142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 4 + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333865 (n + 1) + A008406 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A328057.P13950455644893376142

/-! ## A328057.P15372487148766114925

`A333865(n+1)+A008406(A000292(n)+1)`
-/

namespace A328057.P15372487148766114925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333865 (n + 1) + A008406 (A000292 n + 1).toNat

end

end A328057.P15372487148766114925

/-! ## A328057.P5729632975329396087

`A333865(n+1)+A008406(A126972(n+1))`
-/

namespace A328057.P5729632975329396087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333865 (n + 1) + A008406 (A126972 (n + 1)).toNat

end

end A328057.P5729632975329396087

/-!
# A328058: Primes p such that 2*p-1 is a semiprime.

The programs for A328058, there is no canonical definition to state claims against.
-/

/-! ## A328058.P13856926626325660523

`∪[A067756(n+1), A234098(n+1)]`
-/

namespace A328058.P13856926626325660523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328058.P13856926626325660523

/-! ## A328058.P10428523199649843123

`p?[A114454(n+1)]`
-/

namespace A328058.P10428523199649843123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A328058.P10428523199649843123

/-! ## A328058.P4616234693017154344

`∩[A066720(n+1), A114454(n+1)]`
-/

namespace A328058.P4616234693017154344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328058.P4616234693017154344

/-! ## A328058.P12887698321846627652

`∩[A045344(n+1), A114454(n+1)]`
-/

namespace A328058.P12887698321846627652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328058.P12887698321846627652

/-! ## A328058.P10501330585212308365

`∩[A065091(n+1), A114454(n+1)]`
-/

namespace A328058.P10501330585212308365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328058.P10501330585212308365

/-! ## A328058.P3316978135220990413

`∩[A000040(n+1), A114454(n+1)]`
-/

namespace A328058.P3316978135220990413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328058.P3316978135220990413

/-! ## A328058.P1662083433289507108

`∩[A006005(n+1), A114454(n+1)]`
-/

namespace A328058.P1662083433289507108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328058.P1662083433289507108

/-! ## A328058.P709655511302821770

`∩[A008578(n+1), A114454(n+1)]`
-/

namespace A328058.P709655511302821770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328058.P709655511302821770

/-! ## A328058.P7873127601965199931

`∩[A114454(n+1), A201879(n+1)]`
-/

namespace A328058.P7873127601965199931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328058.P7873127601965199931

/-! ## A328058.P11231485901295715376

`∩[A079603(n+1), A114454(n+1)]`
-/

namespace A328058.P11231485901295715376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328058.P11231485901295715376

/-! ## A328058.P16136550826485214515

`∩[A084111(n+1), A114454(n+1)]`
-/

namespace A328058.P16136550826485214515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328058.P16136550826485214515

/-! ## A328058.P1679072195543364927

`filter[A114454(n+1), A010051(#)]`
-/

namespace A328058.P1679072195543364927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A328058.P1679072195543364927

/-! ## A328058.P2676497423317997149

`filter[A114454(n+1), A066829(#)]`
-/

namespace A328058.P2676497423317997149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A328058.P2676497423317997149

/-! ## A328058.P10614280569931286308

`filter[A114454(n+1), A358751(#)]`
-/

namespace A328058.P10614280569931286308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A328058.P10614280569931286308

/-! ## A328058.P16970379116988326966

`filter[A114454(n+1), A358769(#)]`
-/

namespace A328058.P16970379116988326966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A328058.P16970379116988326966

/-! ## A328058.P13373824230814844476

`filter[A114454(n+1), A358770(#)]`
-/

namespace A328058.P13373824230814844476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358770 (f1 j).toNat = 1) n)

end

end A328058.P13373824230814844476

/-! ## A328058.P2762485494817469072

`filter[A114454(n+1), A359158(#)]`
-/

namespace A328058.P2762485494817469072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359158 (f1 j).toNat = 1) n)

end

end A328058.P2762485494817469072

/-! ## A328058.P10629762061895107986

`filter[A114454(n+1), A359172(#)]`
-/

namespace A328058.P10629762061895107986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359172 (f1 j).toNat = 1) n)

end

end A328058.P10629762061895107986

/-! ## A328058.P9322294213536525115

`filter[A114454(n+1), A359372(#)]`
-/

namespace A328058.P9322294213536525115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359372 (f1 j).toNat = 1) n)

end

end A328058.P9322294213536525115

/-! ## A328058.P2319860195517648012

`filter[A114454(n+1), A099104(#)]`
-/

namespace A328058.P2319860195517648012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A099104 (f1 j).toNat = 1) n)

end

end A328058.P2319860195517648012

/-!
# A328059: a(n) is the number of additions, subtractions and/or multiplications needed to calculate n using numbers a(n-a(n)) to a(n) in order and in single step calculations.

The programs for A328059, there is no canonical definition to state claims against.
-/

/-! ## A328059.P17692116545625037094

`A286267(A126106(2*n+5))%A032741(2*(n+1))`
-/

namespace A328059.P17692116545625037094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286267 (A126106 (2 * n + 5)).toNat) (A032741 (2 * (n + 1)))

end

end A328059.P17692116545625037094

/-! ## A328059.P13735029958554316875

`A318471(n+1)+A067029(A000213(n))`
-/

namespace A328059.P13735029958554316875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318471 (n + 1) + A067029 (A000213 n).toNat

end

end A328059.P13735029958554316875

/-! ## A328059.P7469492484801069684

`A058061(A053590(n+1)*A328023(n+1))`
-/

namespace A328059.P7469492484801069684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058061 (A053590 (n + 1) * A328023 (n + 1)).toNat

end

end A328059.P7469492484801069684

/-! ## A328059.P4547793096496105878

`A347706(A162488(n+1))+A000120(n)`
-/

namespace A328059.P4547793096496105878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347706 (A162488 (n + 1)).toNat + A000120 n

end

end A328059.P4547793096496105878

/-! ## A328059.P11987324587368043351

`A000002(3*n+4)*A001221(A101400(n))`
-/

namespace A328059.P11987324587368043351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (3 * n + 4) * A001221 (A101400 n).toNat

end

end A328059.P11987324587368043351

/-!
# A328062: Lexicographically earliest permutation of [1,2,...,n] minimizing the positive value of the determinant of an n X n circulant matrix that uses this permutation as first row, written as triangle T(n,k), k <= n.

The programs for A328062, there is no canonical definition to state claims against.
-/

/-! ## A328062.P9256558516817873065

`A332288(A132131(n+1)+1)`
-/

namespace A328062.P9256558516817873065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332288 (A132131 (n + 1) + 1).toNat

end

end A328062.P9256558516817873065

/-! ## A328062.P14541289934277030386

`A318473(A254688(n+5)+A247618(n))`
-/

namespace A328062.P14541289934277030386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318473 (A254688 (n + 5) + A247618 n).toNat

end

end A328062.P14541289934277030386

/-! ## A328062.P9108675517813210613

`A194884(A194884(n+2)+A063108(n+1))`
-/

namespace A328062.P9108675517813210613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194884 (A194884 (n + 2) + A063108 (n + 1)).toNat

end

end A328062.P9108675517813210613

/-! ## A328062.P15131924399778135811

`A106797(A000051(n+1)-A275811(n))`
-/

namespace A328062.P15131924399778135811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106797 (A000051 (n + 1) - A275811 n).toNat

end

end A328062.P15131924399778135811

/-! ## A328062.P4217094009080517768

`A001221(xor(A000073(n), A059413(n+1)))`
-/

namespace A328062.P4217094009080517768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.xor (A000073 n) (A059413 (n + 1))).toNat

end

end A328062.P4217094009080517768

/-!
# A328063: Amicable pairs with the property that the number of divisors of the smaller member is greater than the number of divisors of the larger member.

The programs for A328063, there is no canonical definition to state claims against.
-/

/-! ## A328063.P17748915813625411769

`A259180(lt[A232579(n+1), A163799(n+1)])`
-/

namespace A328063.P17748915813625411769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232579 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259180 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A328063.P17748915813625411769

/-!
# A328064: Amicable pairs with the property that both members have the same number of divisors.

The programs for A328064, there is no canonical definition to state claims against.
-/

/-! ## A328064.P5634019658943845004

`record[A259180(A328067(n+1)+1)]`
-/

namespace A328064.P5634019658943845004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259180 (A328067 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328064.P5634019658943845004

/-! ## A328064.P737033434200103255

`A259180(A000008(n+4)%A079928(2*n+5))`
-/

namespace A328064.P737033434200103255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259180 (Int.tmod (A000008 (n + 4)) (A079928 (2 * n + 5))).toNat

end

end A328064.P737033434200103255

/-! ## A328064.P12337128166674995279

`∩[A063990(n+1), A063990(n+2)+A014678(n)]`
-/

namespace A328064.P12337128166674995279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063990 (n + 2) + A014678 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328064.P12337128166674995279

/-!
# A328065: Amicable pairs with the property that the number of divisors of the smaller member is twice the number of divisors of the larger member.

The programs for A328065, there is no canonical definition to state claims against.
-/

/-! ## A328065.P686985881222298165

`filter[A328063(n+1), A324903(#)]`
-/

namespace A328065.P686985881222298165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324903 (f1 j).toNat = 1) n)

end

end A328065.P686985881222298165

/-! ## A328065.P10272427454488497514

`filter[A328063(n+1), A035263(#)]`
-/

namespace A328065.P10272427454488497514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A328065.P10272427454488497514

/-! ## A328065.P9613260461132792069

`filter[A328063(n+1), A115971(#)]`
-/

namespace A328065.P9613260461132792069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115971 (f1 j).toNat = 1) n)

end

end A328065.P9613260461132792069

/-!
# A328066: Terms in A327460, sorted.

The programs for A328066, there is no canonical definition to state claims against.
-/

/-! ## A328066.P13963354807628137049

`A328067(n)+a(n-1)` with `a(0)=1`
-/

namespace A328066.P13963354807628137049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A328067 n + a (n - 1)

end

end A328066.P13963354807628137049

/-! ## A328066.P10108100444457943471

`∑[A328067(A028310(n))]-1`
-/

namespace A328066.P10108100444457943471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328067 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A328066.P10108100444457943471

/-! ## A328066.P178932557346629593

`∑[A328067(n+1)]+1-A328067(n+1)`
-/

namespace A328066.P178932557346629593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A328067 (n + 1))

end

end A328066.P178932557346629593

/-! ## A328066.P2977259260045436658

`eq[char[A328068(n+1)], A000007(n)]`
-/

namespace A328066.P2977259260045436658
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328068 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A328066.P2977259260045436658

/-! ## A328066.P4267153041780145309

`lt[0, char[A327460(n+1)]]`
-/

namespace A328066.P4267153041780145309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327460 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328066.P4267153041780145309

/-!
# A328067: First differences of A328066 (A327460, sorted).

The programs for A328067, there is no canonical definition to state claims against.
-/

/-! ## A328067.P9826434931598318373

`Δ[A328066(n+1)]`
-/

namespace A328067.P9826434931598318373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A328067.P9826434931598318373

/-! ## A328067.P10194251476190987656

`Δ[record[A328066(A203814(n))]]`
-/

namespace A328067.P10194251476190987656
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328066 (A203814 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A328067.P10194251476190987656

/-! ## A328067.P1204766970229094549

`A328066(n+2)-A328066(n+1)`
-/

namespace A328067.P1204766970229094549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328066 (n + 2) - A328066 (n + 1)

end

end A328067.P1204766970229094549

/-! ## A328067.P6270057282878021970

`Δ[eq[1, char[A327460(n+1)]]]`
-/

namespace A328067.P6270057282878021970
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327460 (n + 1)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A328067.P6270057282878021970

/-! ## A328067.P6017584290301459230

`Δ[record[A328066(A137735(n))]]`
-/

namespace A328067.P6017584290301459230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328066 (A137735 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A328067.P6017584290301459230

/-!
# A328068: Numbers missing from A327460.

The programs for A328068, there is no canonical definition to state claims against.
-/

/-! ## A328068.P13749024603915256320

`eq[char[A328066(n+1)], A000007(n)]`
-/

namespace A328068.P13749024603915256320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328066 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A328068.P13749024603915256320

/-! ## A328068.P6628171320026383417

`eq[char[A328066(n+1)], A130706(n)]`
-/

namespace A328068.P6628171320026383417
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328066 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A328068.P6628171320026383417

/-! ## A328068.P95137536466973042

`eq[char[A328066(n+1)], A169585(n)]`
-/

namespace A328068.P95137536466973042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328066 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A328068.P95137536466973042

/-! ## A328068.P17601518019774207645

`comp[A327460(n+1)-1]+1`
-/

namespace A328068.P17601518019774207645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327460 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A328068.P17601518019774207645

/-! ## A328068.P2336533338597740098

`eq[char[A327460(n+1)], A000007(n)]`
-/

namespace A328068.P2336533338597740098
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327460 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A328068.P2336533338597740098

/-! ## A328068.P11608295632181831284

`eq[char[A327460(n+1)], A000038(n)]`
-/

namespace A328068.P11608295632181831284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327460 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A328068.P11608295632181831284

/-! ## A328068.P473047339406700218

`eq[char[A327460(n+1)], A130706(n)]`
-/

namespace A328068.P473047339406700218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327460 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A328068.P473047339406700218

/-!
# A328069: a(n) = A327460(2n+1).

The programs for A328069, there is no canonical definition to state claims against.
-/

/-! ## A328069.P9837156687836996865

`A327460(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328069.P9837156687836996865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327460 (2 * n + 1)

end

end A328069.P9837156687836996865

/-! ## A328069.P1113391198903657852

`A000027(A327460(n+1+n))`
-/

namespace A328069.P1113391198903657852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A327460 (n + 1 + n)).toNat

end

end A328069.P1113391198903657852

/-! ## A328069.P5002352036637690310

`A328070(n+1)-A327458(2*n+1)`
-/

namespace A328069.P5002352036637690310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328070 (n + 1) - A327458 (2 * n + 1)

end

end A328069.P5002352036637690310

/-! ## A328069.P13598261644142737287

`A327460((n+1)²-n²)%A003388(n+1)`
-/

namespace A328069.P13598261644142737287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327460 ((n + 1) ^ 2 - n ^ 2)) (A003388 (n + 1))

end

end A328069.P13598261644142737287

/-! ## A328069.P10664808151901226073

`A328071((n+1)*Δ[n²])`
-/

namespace A328069.P10664808151901226073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328071 ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A328069.P10664808151901226073

/-!
# A328070: a(n) = A327460(2n).

The programs for A328070, there is no canonical definition to state claims against.
-/

/-! ## A328070.P5681435136873561291

`A327460(2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328070.P5681435136873561291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327460 (2 * (n + 1))

end

end A328070.P5681435136873561291

/-! ## A328070.P15846506821909282163

`A000027(A327460(n+2+n))`
-/

namespace A328070.P15846506821909282163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A327460 (n + 2 + n)).toNat

end

end A328070.P15846506821909282163

/-! ## A328070.P7562184581508350855

`A328069(n)+A327458(2*n+1)`
-/

namespace A328070.P7562184581508350855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328069 n + A327458 (2 * n + 1)

end

end A328070.P7562184581508350855

/-! ## A328070.P13268461814449048881

`A327460(A005843(n+1))%A106648(n)`
-/

namespace A328070.P13268461814449048881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327460 (A005843 (n + 1)).toNat) (A106648 n)

end

end A328070.P13268461814449048881

/-! ## A328070.P6368368620018089189

`A328071((n+1)*(2*n+3))`
-/

namespace A328070.P6368368620018089189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328071 ((n + 1) * (2 * n + 3))

end

end A328070.P6368368620018089189

/-!
# A328072: List of Nyldon words over {0,1}.

The programs for A328072, there is no canonical definition to state claims against.
-/

/-! ## A328072.P4203385514863861278

`A211027(A028310(n))%A000041(A277189(n))`
-/

namespace A328072.P4203385514863861278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211027 (A028310 n).toNat) (A000041 (A277189 n).toNat)

end

end A328072.P4203385514863861278

/-! ## A328072.P7124710477687105213

`A015161(A015161(n))*A211027(A028310(n))`
-/

namespace A328072.P7124710477687105213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015161 (A015161 n).toNat * A211027 (A028310 n).toNat

end

end A328072.P7124710477687105213

/-! ## A328072.P17531434071870524053

`A211027(A028310(n))%A128838(n)`
-/

namespace A328072.P17531434071870524053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211027 (A028310 n).toNat) (A128838 n)

end

end A328072.P17531434071870524053

/-! ## A328072.P6472864447522789448

`A211027(A028310(n))-A000086(A027423(n+1))`
-/

namespace A328072.P6472864447522789448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211027 (A028310 n).toNat - A000086 (A027423 (n + 1)).toNat

end

end A328072.P6472864447522789448

/-! ## A328072.P7117255478908679324

`A007088(A334266(n+1)%A292884(n+1))`
-/

namespace A328072.P7117255478908679324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.tmod (A334266 (n + 1)) (A292884 (n + 1))).toNat

end

end A328072.P7117255478908679324

/-!
# A328073: List of Nyldon words over {1,2}.

The programs for A328073, there is no canonical definition to state claims against.
-/

/-! ## A328073.P9543592744930762484

`A048379(A328072(n+1))`
-/

namespace A328073.P9543592744930762484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (A328072 (n + 1)).toNat

end

end A328073.P9543592744930762484

/-! ## A328073.P7221080698427899195

`A216556(lcm(1-and(2, n), A328072(n+1)))`
-/

namespace A328073.P7221080698427899195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216556 (Int.lcm (1 - (Nat.land 2 n : ℤ)) (A328072 (n + 1)))

end

end A328073.P7221080698427899195

/-! ## A328073.P9119646706418417520

`A216556(A027828(n)*A328072(n+1))`
-/

namespace A328073.P9119646706418417520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216556 (A027828 n * A328072 (n + 1)).toNat

end

end A328073.P9119646706418417520

/-! ## A328073.P6424228903863294239

`A216556(A328072(n+1)^A027828(n))`
-/

namespace A328073.P6424228903863294239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216556 (SequenceMachineLib.roundAway ((A328072 (n + 1) : ℚ) ^ (A027828 n : ℤ))).toNat

end

end A328073.P6424228903863294239

/-! ## A328073.P7986897268284006127

`gcd(A015161(n), A216556(A328072(n+1)))`
-/

namespace A328073.P7986897268284006127
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A015161 n) (A216556 (A328072 (n + 1)).toNat)

end

end A328073.P7986897268284006127

/-!
# A328076: A309940 sorted and duplicates removed.

The programs for A328076, there is no canonical definition to state claims against.
-/

/-! ## A328076.P5347578444224233151

`record[A327076(record[A219607(n)])]`
-/

namespace A328076.P5347578444224233151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219607 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327076 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328076.P5347578444224233151

/-! ## A328076.P2895417648336654441

`eq[A027960(A321620(n+4)), A319916(n)]`
-/

namespace A328076.P2895417648336654441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027960 (A321620 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319916 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328076.P2895417648336654441

/-! ## A328076.P7383023287625464748

`A094802(A303365(n+1))`
-/

namespace A328076.P7383023287625464748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094802 (A303365 (n + 1)).toNat

end

end A328076.P7383023287625464748

/-! ## A328076.P14664670876748422449

`A377357(A338553(n+1))`
-/

namespace A328076.P14664670876748422449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377357 (A338553 (n + 1)).toNat

end

end A328076.P14664670876748422449

/-! ## A328076.P10412380889068385331

`A325863(A325835(n))+n`
-/

namespace A328076.P10412380889068385331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325863 (A325835 n).toNat + (n : ℤ)

end

end A328076.P10412380889068385331

/-!
# A328077: Complement of A192110.

The programs for A328077, the canonical program `A328077.P1379957031522904004` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328077 has offset 1).

The definition of A328077 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328077.P1379957031522904004

`comp[-A254027(n)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A328077

/-- `comp[-A254027(n)]` -/
def P1379957031522904004.Spec : Prop :=
  ∀ n, (P1379957031522904004.a n : ℤ) = A328077 (n + 1)

theorem P1379957031522904004.correct : P1379957031522904004.Spec := by
  intro n
  simp only [A328077, Nat.add_sub_cancel]

end A328077

/-! ## A328077.P11583960734107181709

`comp[A192110(n+1)]`
-/

namespace A328077.P11583960734107181709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A328077.P11583960734107181709

namespace A328077

/-- `comp[A192110(n+1)]` -/
def P11583960734107181709.Spec : Prop :=
  ∀ n, (P11583960734107181709.a n : ℤ) = A328077 (n + 1)

end A328077

/-! ## A328077.P5404845977033147696

`comp[floor(acot(n)²)-A254027(n+1)]`
-/

namespace A328077.P5404845977033147696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋ - A254027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A328077.P5404845977033147696

namespace A328077

/-- `comp[floor(acot(n)²)-A254027(n+1)]` -/
def P5404845977033147696.Spec : Prop :=
  ∀ n, (P5404845977033147696.a n : ℤ) = A328077 (n + 1)

end A328077

/-! ## A328077.P2740380558134084202

`comp[Δ[A192110(gcd(xor(1, n²), ∑[n]))]]`
-/

namespace A328077.P2740380558134084202
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192110 (Nat.gcd (Nat.xor 1 (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f3 j))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A328077.P2740380558134084202

namespace A328077

/-- `comp[Δ[A192110(gcd(xor(1, n²), ∑[n]))]]` -/
def P2740380558134084202.Spec : Prop :=
  ∀ n, (P2740380558134084202.a n : ℤ) = A328077 (n + 1)

end A328077

/-! ## A328077.P906697597602852421

`∪[A075824(n+1), A119432(n+1)]`
-/

namespace A328077.P906697597602852421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328077.P906697597602852421

namespace A328077

/-- `∪[A075824(n+1), A119432(n+1)]` -/
def P906697597602852421.Spec : Prop :=
  ∀ n, (P906697597602852421.a n : ℤ) = A328077 (n + 1)

end A328077

/-! ## A328077.P4257051964773118171

`∪[A075824(n+1), A325572(n+1)]`
-/

namespace A328077.P4257051964773118171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328077.P4257051964773118171

namespace A328077

/-- `∪[A075824(n+1), A325572(n+1)]` -/
def P4257051964773118171.Spec : Prop :=
  ∀ n, (P4257051964773118171.a n : ℤ) = A328077 (n + 1)

end A328077

/-! ## A328077.P12388629329358438184

`∪[A075824(n+1), A390445(n+1)]`
-/

namespace A328077.P12388629329358438184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390445 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328077.P12388629329358438184

namespace A328077

/-- `∪[A075824(n+1), A390445(n+1)]` -/
def P12388629329358438184.Spec : Prop :=
  ∀ n, (P12388629329358438184.a n : ℤ) = A328077 (n + 1)

end A328077

/-!
# A328078: Number of regions after n generations of Jim Conant's iterative dissection of a square.

The programs for A328078, there is no canonical definition to state claims against.
-/

/-! ## A328078.P3766319904107585863

`∑[A328079(abs(1-n))]`
-/

namespace A328078.P3766319904107585863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328079 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328078.P3766319904107585863

/-! ## A328078.P18289755588250208263

`A328079(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A328078.P18289755588250208263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A328079 (n - 1) + a (n - 1)

end

end A328078.P18289755588250208263

/-! ## A328078.P2660099070167659456

`∪[A328080(n)+A328079(2*n), A328080(n)]`
-/

namespace A328078.P2660099070167659456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328080 n + A328079 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328080 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328078.P2660099070167659456

/-! ## A328078.P10987614226795961541

`∪[A328080(n), A337262(n)]`
-/

namespace A328078.P10987614226795961541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328080 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337262 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328078.P10987614226795961541

/-! ## A328078.P17497325922756364573

`∪[A337262(n)-A328079(2*n), A337262(n)]`
-/

namespace A328078.P17497325922756364573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337262 n - A328079 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337262 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328078.P17497325922756364573

/-!
# A328079: First differences of A328078.

The programs for A328079, there is no canonical definition to state claims against.
-/

/-! ## A328079.P9017768457743944213

`Δ[A328078(n)]`
-/

namespace A328079.P9017768457743944213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A328079.P9017768457743944213

/-! ## A328079.P8320844568038198868

`A328078(n+1)-A328078(n)`
-/

namespace A328079.P8320844568038198868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328078 (n + 1) - A328078 n

end

end A328079.P8320844568038198868

/-! ## A328079.P12655255594186564588

`record[A328078(A008616(n))]-A328078(n)`
-/

namespace A328079.P12655255594186564588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328078 (A008616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A328078 n

end

end A328079.P12655255594186564588

/-! ## A328079.P14372902763253449959

`Δ[∪[A328080(n), A337262(n)]]`
-/

namespace A328079.P14372902763253449959
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328080 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337262 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A328079.P14372902763253449959

/-! ## A328079.P5560453987402680651

`A028310(A328078(n+1)%A328078(n))`
-/

namespace A328079.P5560453987402680651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A328078 (n + 1)) (A328078 n)).toNat

end

end A328079.P5560453987402680651

/-!
# A328080: Number of regions after 2n generations of Jim Conant's iterative dissection of a square.

The programs for A328080, there is no canonical definition to state claims against.
-/

/-! ## A328080.P3189241924274794017

`A328078(2*n)`
-/

namespace A328080.P3189241924274794017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328078 (2 * n)

end

end A328080.P3189241924274794017

/-! ## A328080.P6388477108679424110

`record[A328078(and(n, n+1))]`
-/

namespace A328080.P6388477108679424110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328078 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328080.P6388477108679424110

/-! ## A328080.P2386499285829765629

`record[A328078(n%or(1, n))]`
-/

namespace A328080.P2386499285829765629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328078 (n % Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328080.P2386499285829765629

/-! ## A328080.P12999022591374238532

`record[A328078(n)/(-1)^n]`
-/

namespace A328080.P12999022591374238532
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328078 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328080.P12999022591374238532

/-! ## A328080.P14374829561021710826

`record[A328078(A014681(n))]`
-/

namespace A328080.P14374829561021710826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328078 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328080.P14374829561021710826

/-!
# A328082: Triangle read by rows: columns are Fibonacci numbers F_{2i+1} shifted downwards.

The programs for A328082, the canonical program `A328082.P6912829529202186914` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328082 has offset 1).

The definition of A328082 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A328082.P6912829529202186914

`A000045(2*(row(n)-col(n))+1)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A328082

/-- `A000045(2*(row(n)-col(n))+1)` -/
def P6912829529202186914.Spec : Prop :=
  ∀ n, P6912829529202186914.a n = A328082 (n + 1)

theorem P6912829529202186914.correct : P6912829529202186914.Spec := by
  intro n
  simp only [A328082, Nat.add_sub_cancel]

end A328082

/-! ## A328082.P10157650322920470483

`A001519(row(n)-col(n)+1)`
-/

namespace A328082.P10157650322920470483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat

end

end A328082.P10157650322920470483

namespace A328082

/-- `A001519(row(n)-col(n)+1)` -/
def P10157650322920470483.Spec : Prop :=
  ∀ n, P10157650322920470483.a n = A328082 (n + 1)

end A328082

/-! ## A328082.P6902429400737621418

`A000045(row(n)-col(n)+1+row(n)-col(n))`
-/

namespace A328082.P6902429400737621418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))).toNat

end

end A328082.P6902429400737621418

namespace A328082

/-- `A000045(row(n)-col(n)+1+row(n)-col(n))` -/
def P6902429400737621418.Spec : Prop :=
  ∀ n, P6902429400737621418.a n = A328082 (n + 1)

theorem P6902429400737621418.correct : P6902429400737621418.Spec := by
  intro n
  simp only [A328082, Nat.add_sub_cancel, A328082.P6902429400737621418.a, A328082.P6912829529202186914.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A328082

/-! ## A328082.P10906278470018552644

`(-1)^(row(n)-col(n))*A099496(row(n)-col(n))`
-/

namespace A328082.P10906278470018552644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) * (A099496 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n) : ℚ)

end

end A328082.P10906278470018552644

namespace A328082

/-- `(-1)^(row(n)-col(n))*A099496(row(n)-col(n))` -/
def P10906278470018552644.Spec : Prop :=
  ∀ n, P10906278470018552644.a n = (A328082 (n + 1) : ℚ)

end A328082

/-! ## A328082.P5927494212009357182

`A000045(A099375(n))`
-/

namespace A328082.P5927494212009357182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A099375 n).toNat

end

end A328082.P5927494212009357182

namespace A328082

/-- `A000045(A099375(n))` -/
def P5927494212009357182.Spec : Prop :=
  ∀ n, P5927494212009357182.a n = A328082 (n + 1)

end A328082

/-! ## A328082.P7269693300592840810

`A122367(A025581(n))`
-/

namespace A328082.P7269693300592840810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 (A025581 n).toNat

end

end A328082.P7269693300592840810

namespace A328082

/-- `A122367(A025581(n))` -/
def P7269693300592840810.Spec : Prop :=
  ∀ n, P7269693300592840810.a n = A328082 (n + 1)

end A328082

/-! ## A328082.P2927383286274483848

`A001519(A004736(n+1))`
-/

namespace A328082.P2927383286274483848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (A004736 (n + 1)).toNat

end

end A328082.P2927383286274483848

namespace A328082

/-- `A001519(A004736(n+1))` -/
def P2927383286274483848.Spec : Prop :=
  ∀ n, P2927383286274483848.a n = A328082 (n + 1)

end A328082

/-! ## A328082.P15308290764333264448

`A001519(A025581(n)+1)`
-/

namespace A328082.P15308290764333264448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (A025581 n + 1).toNat

end

end A328082.P15308290764333264448

namespace A328082

/-- `A001519(A025581(n)+1)` -/
def P15308290764333264448.Spec : Prop :=
  ∀ n, P15308290764333264448.a n = A328082 (n + 1)

end A328082

/-! ## A328082.P1055823361668610275

`A094967(A185782(n+1))`
-/

namespace A328082.P1055823361668610275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094967 (A185782 (n + 1)).toNat

end

end A328082.P1055823361668610275

namespace A328082

/-- `A094967(A185782(n+1))` -/
def P1055823361668610275.Spec : Prop :=
  ∀ n, P1055823361668610275.a n = A328082 (n + 1)

end A328082

/-! ## A328082.P8215162761126583761

`A324969(A099375(n)+1)`
-/

namespace A328082.P8215162761126583761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (A099375 n + 1).toNat

end

end A328082.P8215162761126583761

namespace A328082

/-- `A324969(A099375(n)+1)` -/
def P8215162761126583761.Spec : Prop :=
  ∀ n, P8215162761126583761.a n = A328082 (n + 1)

end A328082

/-! ## A328082.P2760597718173276942

`A094967(2*A025581(n))`
-/

namespace A328082.P2760597718173276942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094967 (2 * A025581 n).toNat

end

end A328082.P2760597718173276942

namespace A328082

/-- `A094967(2*A025581(n))` -/
def P2760597718173276942.Spec : Prop :=
  ∀ n, P2760597718173276942.a n = A328082 (n + 1)

end A328082

/-! ## A328082.P5736247170197864265

`A053602(2*A099375(n))`
-/

namespace A328082.P5736247170197864265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * A099375 n).toNat

end

end A328082.P5736247170197864265

namespace A328082

/-- `A053602(2*A099375(n))` -/
def P5736247170197864265.Spec : Prop :=
  ∀ n, P5736247170197864265.a n = A328082 (n + 1)

end A328082

/-! ## A328082.P17077808103594195023

`A103609(2*A099375(n))`
-/

namespace A328082.P17077808103594195023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * A099375 n).toNat

end

end A328082.P17077808103594195023

namespace A328082

/-- `A103609(2*A099375(n))` -/
def P17077808103594195023.Spec : Prop :=
  ∀ n, P17077808103594195023.a n = A328082 (n + 1)

end A328082

/-! ## A328082.P17188985944458713834

`A302126(2*A099375(n))`
-/

namespace A328082.P17188985944458713834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (2 * A099375 n).toNat

end

end A328082.P17188985944458713834

namespace A328082

/-- `A302126(2*A099375(n))` -/
def P17188985944458713834.Spec : Prop :=
  ∀ n, P17188985944458713834.a n = A328082 (n + 1)

end A328082

/-! ## A328082.P13607853750865020058

`A000045(sqrt(A237587(n+1)))`
-/

namespace A328082.P13607853750865020058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (Real.sqrt (A237587 (n + 1) : ℝ))).toNat

end

end A328082.P13607853750865020058

namespace A328082

/-- `A000045(sqrt(A237587(n+1)))` -/
def P13607853750865020058.Spec : Prop :=
  ∀ n, P13607853750865020058.a n = A328082 (n + 1)

end A328082

/-! ## A328082.P11559527273580219986

`A000045(log2(A262616(n))+1)`
-/

namespace A328082.P11559527273580219986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (Real.logb 2 (A262616 n : ℝ) + 1)).toNat

end

end A328082.P11559527273580219986

namespace A328082

/-- `A000045(log2(A262616(n))+1)` -/
def P11559527273580219986.Spec : Prop :=
  ∀ n, P11559527273580219986.a n = A328082 (n + 1)

end A328082

/-! ## A328082.P612736610123607904

`A000045(log2(2*A262616(n)))`
-/

namespace A328082.P612736610123607904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (Real.logb 2 (2 * A262616 n : ℝ))).toNat

end

end A328082.P612736610123607904

namespace A328082

/-- `A000045(log2(2*A262616(n)))` -/
def P612736610123607904.Spec : Prop :=
  ∀ n, P612736610123607904.a n = A328082 (n + 1)

end A328082

/-! ## A328082.P17973004075583636290

`A000045(2*A025581(n)+1)`
-/

namespace A328082.P17973004075583636290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * A025581 n + 1).toNat

end

end A328082.P17973004075583636290

namespace A328082

/-- `A000045(2*A025581(n)+1)` -/
def P17973004075583636290.Spec : Prop :=
  ∀ n, P17973004075583636290.a n = A328082 (n + 1)

end A328082

/-! ## A328082.P4126784297557862944

`A212804(2*A004736(n+1))`
-/

namespace A328082.P4126784297557862944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (2 * A004736 (n + 1)).toNat

end

end A328082.P4126784297557862944

namespace A328082

/-- `A212804(2*A004736(n+1))` -/
def P4126784297557862944.Spec : Prop :=
  ∀ n, P4126784297557862944.a n = A328082 (n + 1)

end A328082

/-! ## A328082.P6604292437778785994

`A324969(2*A004736(n+1))`
-/

namespace A328082.P6604292437778785994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (2 * A004736 (n + 1)).toNat

end

end A328082.P6604292437778785994

namespace A328082

/-- `A324969(2*A004736(n+1))` -/
def P6604292437778785994.Spec : Prop :=
  ∀ n, P6604292437778785994.a n = A328082 (n + 1)

end A328082

/-!
# A328083: Triangle read by rows: T(n,k) is the number of nondecreasing Dyck paths of semilength n and height k (1<=k<=n).

The programs for A328083, there is no canonical definition to state claims against.
-/

/-! ## A328083.P7932420265818367329

`A085478(n)+Δ[A280737(A301784(n+1))²]`
-/

namespace A328083.P7932420265818367329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280737 (A301784 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 n + (f1 (n + 1) - f1 n)

end

end A328083.P7932420265818367329

/-! ## A328083.P3022399863796205820

`A204330(A263859(n+1))`
-/

namespace A328083.P3022399863796205820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204330 (A263859 (n + 1)).toNat

end

end A328083.P3022399863796205820

/-! ## A328083.P14512388249989846724

`A022290(A122317(A008277(n+1)))`
-/

namespace A328083.P14512388249989846724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A122317 (A008277 (n + 1)).toNat).toNat

end

end A328083.P14512388249989846724

/-! ## A328083.P702231104394771731

`A370174(n)-A010054(A298684(n+2))`
-/

namespace A328083.P702231104394771731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370174 n - A010054 (A298684 (n + 2)).toNat

end

end A328083.P702231104394771731

/-! ## A328083.P11728941297514775405

`A022290(A008277(n+1)%A155171(3*(n+1)))`
-/

namespace A328083.P11728941297514775405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (Int.tmod (A008277 (n + 1)) (A155171 (3 * (n + 1)))).toNat

end

end A328083.P11728941297514775405

/-!
# A328084: Irregular triangle read by rows: T(n,k) is the number of Dyck paths in the family D^{h,>}_n with maximal height equal to k (k>=1, n>=1).

The programs for A328084, there is no canonical definition to state claims against.
-/

/-! ## A328084.P15450113687790202095

`A226518(A113370(3*n+1)%A003817(2*(n+2))+1)`
-/

namespace A328084.P15450113687790202095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226518 (Int.tmod (A113370 (3 * n + 1)) (A003817 (2 * (n + 2))) + 1).toNat

end

end A328084.P15450113687790202095

/-! ## A328084.P15447093191423011760

`A005136(A058865(n+1))`
-/

namespace A328084.P15447093191423011760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (A058865 (n + 1)).toNat

end

end A328084.P15447093191423011760

/-! ## A328084.P694147054010568916

`A291652(∑[A003849(A082614(n))])`
-/

namespace A328084.P694147054010568916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A082614 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291652 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A328084.P694147054010568916

/-!
# A328085: Column sums of triangle A328084.

The programs for A328085, there is no canonical definition to state claims against.
-/

/-! ## A328085.P13055896865460608209

`A122928(n)+char[9]`
-/

namespace A328085.P13055896865460608209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122928 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A328085.P13055896865460608209

/-! ## A328085.P12487109464996858201

`round(γ*A173303(n))`
-/

namespace A328085.P12487109464996858201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.eulerMascheroniConstant * (A173303 n : ℝ))

end

end A328085.P12487109464996858201

/-! ## A328085.P16409674344316292049

`A241317(Δ[n²])+1`
-/

namespace A328085.P16409674344316292049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241317 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A328085.P16409674344316292049

/-! ## A328085.P12710186825679880527

`round(∑[A367398(n)/2])`
-/

namespace A328085.P12710186825679880527
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367398 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A328085.P12710186825679880527

/-! ## A328085.P5121634382036449542

`round(root(A001299(C(n+4, 4)), 3))`
-/

namespace A328085.P5121634382036449542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001299 (Nat.choose (n + 4) 4) : ℝ) ^ (1 / (3 : ℝ)))

end

end A328085.P5121634382036449542

/-!
# A328088: a(n) = Sum_{k=4..n} ( binomial(n,k)*(k-2)*(2^k-2*k-2) ) - (2^n-n-1).

The programs for A328088, the canonical program `A328088.P16886787238683442839` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328088 has offset 4).

The definition of A328088 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A328088.P16886787238683442839

`3^(n+3)*(2*(n+4)-6)+2^(n+3)*(n+4-(n+4)²+6)-(n+4)-1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A328088

/-- `3^(n+3)*(2*(n+4)-6)+2^(n+3)*(n+4-(n+4)²+6)-(n+4)-1` -/
def P16886787238683442839.Spec : Prop :=
  ∀ n, P16886787238683442839.a n = A328088 (n + 4)

theorem P16886787238683442839.correct : P16886787238683442839.Spec := by
  intro n
  simp only [A328088, Nat.add_sub_cancel]

end A328088

/-!
# A328089: Numbers k such that k+1 concatenated with k is a square.

The programs for A328089, there is no canonical definition to state claims against.
-/

/-! ## A328089.P536542263469405342

`A054214(n+1)-1`
-/

namespace A328089.P536542263469405342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054214 (n + 1) - 1

end

end A328089.P536542263469405342

/-! ## A328089.P697416561592036030

`record[A054214(A116549(n))-1]`
-/

namespace A328089.P697416561592036030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054214 (A116549 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328089.P697416561592036030

/-! ## A328089.P6439107978648785552

`record[A054214(A193592(n))-1]`
-/

namespace A328089.P6439107978648785552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054214 (A193592 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328089.P6439107978648785552

/-! ## A328089.P1724709584134315931

`record[A054214(A193739(n))-1]`
-/

namespace A328089.P1724709584134315931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054214 (A193739 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328089.P1724709584134315931

/-! ## A328089.P16300834389828842939

`A057428(n+1)+A054214(n+1)`
-/

namespace A328089.P16300834389828842939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A054214 (n + 1)

end

end A328089.P16300834389828842939

/-!
# A328090: If n even then round(n^2/48), otherwise round(n^2/49).

The programs for A328090, there is no canonical definition to state claims against.
-/

/-! ## A328090.P17431422374756522314

`A069905(ceil(n/2)%A261752(n+4))`
-/

namespace A328090.P17431422374756522314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (Int.tmod ⌈(n : ℚ) / 2⌉ (A261752 (n + 4))).toNat

end

end A328090.P17431422374756522314

/-! ## A328090.P7552436840747430581

`A069905(ceil(n/2))%A324698(2*n+1)`
-/

namespace A328090.P7552436840747430581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069905 ⌈(n : ℚ) / 2⌉.toNat) (A324698 (2 * n + 1))

end

end A328090.P7552436840747430581

/-! ## A328090.P10047723962905632071

`A069905(∑[(n%2)^A174480(2*(n+2))])`
-/

namespace A328090.P10047723962905632071
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℚ) ^ (A174480 (2 * (n + 2)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A328090.P10047723962905632071

/-! ## A328090.P14906742504362099199

`round(∑[A010892(A008264(2*(n+2)))]²/12)`
-/

namespace A328090.P14906742504362099199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A008264 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / 12)

end

end A328090.P14906742504362099199

/-! ## A328090.P15363027743792325947

`A069905(A070939(ceil(2^(n/2-1))-1)+1)`
-/

namespace A328090.P15363027743792325947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (A070939 (⌈(2 : ℝ) ^ ((n : ℚ) / 2 - 1 : ℝ)⌉ - 1).toNat + 1).toNat

end

end A328090.P15363027743792325947

/-!
# A328091: Card numbers (not equal to a power of 2) for top card reappearing at the top after three shuffles (Monthly problem 12008).

The programs for A328091, there is no canonical definition to state claims against.
-/

/-! ## A328091.P10645534791095274578

`filter[A328092(n+1), A347523(#)]`
-/

namespace A328091.P10645534791095274578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328092 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A328091.P10645534791095274578

/-! ## A328091.P7826507503939011390

`filter[A328092(n+2), A267579(#)]`
-/

namespace A328091.P7826507503939011390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328092 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267579 (f1 j).toNat = 1) n)

end

end A328091.P7826507503939011390

/-! ## A328091.P3079959759783089669

`∩[A057716(n), A328092(n+1)]`
-/

namespace A328091.P3079959759783089669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057716 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328091.P3079959759783089669

/-! ## A328091.P18246375791861142500

`∩[A136492(n+1), A328092(n+1)]`
-/

namespace A328091.P18246375791861142500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328091.P18246375791861142500

/-! ## A328091.P7971677815206105971

`∩[A281005(n+1), A328092(n+1)]`
-/

namespace A328091.P7971677815206105971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328091.P7971677815206105971

/-!
# A328092: Card numbers for top card reappearing at the top after three shuffles (Monthly problem 12008).

The programs for A328092, there is no canonical definition to state claims against.
-/

/-! ## A328092.P7415972998800245808

`A035149(A359039(n+1))`
-/

namespace A328092.P7415972998800245808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035149 (A359039 (n + 1)).toNat

end

end A328092.P7415972998800245808

/-! ## A328092.P6510591912751946414

`eq[A110916(n), A353849(n)]`
-/

namespace A328092.P6510591912751946414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110916 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353849 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328092.P6510591912751946414

/-! ## A328092.P4251411532635738165

`∩[A260113(n+1), A353848(n)]`
-/

namespace A328092.P4251411532635738165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353848 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328092.P4251411532635738165

/-! ## A328092.P16144102739022291132

`∩[A260113(n+1), A353857(n+1)]`
-/

namespace A328092.P16144102739022291132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328092.P16144102739022291132

/-! ## A328092.P10132735409890365839

`∩[A260113(n+1), A354908(n+1)]`
-/

namespace A328092.P10132735409890365839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328092.P10132735409890365839

/-!
# A328093: Expansion of (theta_3(z)*theta_3(23z) + theta_2(z)*theta_2(23z))^5.

The programs for A328093, there is no canonical definition to state claims against.
-/

/-! ## A328093.P15563596209526152214

`A006924(A107243(n))+A000132(n)`
-/

namespace A328093.P15563596209526152214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006924 (A107243 n).toNat + A000132 n

end

end A328093.P15563596209526152214

/-!
# A328094: Expansion of (theta_3(z)*theta_3(23z) + theta_2(z)*theta_2(23z))^6.

The programs for A328094, there is no canonical definition to state claims against.
-/

/-! ## A328094.P4067513393785988734

`or(A000141(n), A025437(A251759(3*(n+1))))`
-/

namespace A328094.P4067513393785988734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000141 n) (A025437 (A251759 (3 * (n + 1))).toNat)

end

end A328094.P4067513393785988734

/-!
# A328096: a(0) = 0; a(1) = 1; for n > 1, a(n) = number of terms between the two previous occurrences of a(n-1) if a(n-1) has appeared two or more times, otherwise a(n) = 0.

The programs for A328096, there is no canonical definition to state claims against.
-/

/-! ## A328096.P14417864101316894948

`A353778(A028310(n))%A177144(n)`
-/

namespace A328096.P14417864101316894948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353778 (A028310 n).toNat) (A177144 n)

end

end A328096.P14417864101316894948

/-! ## A328096.P9957474689212936438

`A051903(A018016(n*A096270(n)))`
-/

namespace A328096.P9957474689212936438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A018016 ((n : ℤ) * A096270 n).toNat).toNat

end

end A328096.P9957474689212936438

/-! ## A328096.P3721583751440304513

`A051903(A018017(n))*A096270(n)`
-/

namespace A328096.P3721583751440304513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A018017 n).toNat * A096270 n

end

end A328096.P3721583751440304513

/-! ## A328096.P18398356404174670926

`A188170(A158644(n)+A116471(n+1))`
-/

namespace A328096.P18398356404174670926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188170 (A158644 n + A116471 (n + 1)).toNat

end

end A328096.P18398356404174670926

/-! ## A328096.P14545372667815828713

`A366794(A124380(n+1))`
-/

namespace A328096.P14545372667815828713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366794 (A124380 (n + 1)).toNat

end

end A328096.P14545372667815828713

/-!
# A328098: If A327928(n) is zero, a(n) = A003415(n), otherwise a(n) = A327858(n) = gcd(A003415(n), A276086(n)).

The programs for A328098, there is no canonical definition to state claims against.
-/

/-! ## A328098.P12587580310375682787

`gcd(∑[A258057(n)], A328097(n+1))`
-/

namespace A328098.P12587580310375682787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A328097 (n + 1))

end

end A328098.P12587580310375682787

/-! ## A328098.P14632443621056593465

`gcd(A003415(n+1), A229979(A007494(n)))`
-/

namespace A328098.P14632443621056593465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003415 (n + 1)) (A229979 (A007494 n).toNat)

end

end A328098.P14632443621056593465

/-! ## A328098.P16650413127680276730

`A003415(n+1)^A219977(A008000(3*n+1))`
-/

namespace A328098.P16650413127680276730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (n + 1) : ℚ) ^ (A219977 (A008000 (3 * n + 1)).toNat : ℤ)

end

end A328098.P16650413127680276730

/-! ## A328098.P11819838039171127865

`gcd(A327928(A325709(n+1)), A327963(n+1))`
-/

namespace A328098.P11819838039171127865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A327928 (A325709 (n + 1)).toNat) (A327963 (n + 1))

end

end A328098.P11819838039171127865

/-! ## A328098.P8139198715224700466

`A003415(n+1)^A130851(A284610(3*(n+1)))`
-/

namespace A328098.P8139198715224700466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (n + 1) : ℚ) ^ (A130851 (A284610 (3 * (n + 1))).toNat : ℤ)

end

end A328098.P8139198715224700466

/-!
# A328099: a(n) = min(A003415(n), A276086(n)).

The programs for A328099, there is no canonical definition to state claims against.
-/

/-! ## A328099.P16772965258727437562

`A003415(n+1)%A008655(A183102(n+1))`
-/

namespace A328099.P16772965258727437562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 (n + 1)) (A008655 (A183102 (n + 1)).toNat)

end

end A328099.P16772965258727437562

/-! ## A328099.P117945683905925530

`A003415(A158377(n+1)%A200525(n+1))`
-/

namespace A328099.P117945683905925530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (Int.tmod (A158377 (n + 1)) (A200525 (n + 1))).toNat

end

end A328099.P117945683905925530

/-! ## A328099.P10958955720207581041

`A003415(A158377(n+1))%A221688(n+1)`
-/

namespace A328099.P10958955720207581041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 (A158377 (n + 1)).toNat) (A221688 (n + 1))

end

end A328099.P10958955720207581041

/-! ## A328099.P15253117826196385298

`A003415(A158377(n+1))^A007318(A034504(n+1))`
-/

namespace A328099.P15253117826196385298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (A158377 (n + 1)).toNat : ℚ) ^ (A007318 (A034504 (n + 1)).toNat : ℤ)

end

end A328099.P15253117826196385298

/-! ## A328099.P13032369810341001867

`A003415(n+1)%A129539(n)`
-/

namespace A328099.P13032369810341001867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 (n + 1)) (A129539 n)

end

end A328099.P13032369810341001867

