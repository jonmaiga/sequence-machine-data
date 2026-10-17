import SequenceMachineLib
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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
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
import Seq.Opaque.C026

/-!
# A087800: a(n) = 12*a(n-1) - a(n-2), with a(0) = 2 and a(1) = 12.

The programs for A087800, the canonical program `A087800.P4041613005393009252` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087800 has offset 0).

The definition of A087800 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*a(n-1)-a(n-2)` (program `A087800.P4041613005393009252`, by `A087800.P4041613005393009252.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A087800.P4041613005393009252

`12*a(n-1)-a(n-2)` with `a(0)=2, a(1)=12`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A087800

/-- `12*a(n-1)-a(n-2)` -/
def P4041613005393009252.Spec : Prop :=
  ∀ n, P4041613005393009252.a n = A087800 n

theorem P4041613005393009252.correct : P4041613005393009252.Spec := by
  intro n
  simp only [A087800]

end A087800

/-! ## A087800.P14601144892239126426

`2*A023038(n)`
-/

namespace A087800.P14601144892239126426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023038 n

end

end A087800.P14601144892239126426

namespace A087800

/-- `2*A023038(n)` -/
def P14601144892239126426.Spec : Prop :=
  ∀ n, P14601144892239126426.a n = A087800 n

end A087800

/-! ## A087800.P4087080295992342167

`(6+sqrt(35))^n+(6-sqrt(35))^n`
-/

namespace A087800.P4087080295992342167
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (6 + Real.sqrt (35 : ℝ)) ^ n + (6 - Real.sqrt (35 : ℝ)) ^ n

end

end A087800.P4087080295992342167

namespace A087800

/-- `(6+sqrt(35))^n+(6-sqrt(35))^n` -/
def P4087080295992342167.Spec : Prop :=
  ∀ n, P4087080295992342167.a n = (A087800 n : ℝ)

end A087800

/-! ## A087800.P3812902635801960123

`A164826(Δ[n²])`
-/

namespace A087800.P3812902635801960123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164826 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A087800.P3812902635801960123

namespace A087800

/-- `A164826(Δ[n²])` -/
def P3812902635801960123.Spec : Prop :=
  ∀ n, P3812902635801960123.a n = A087800 n

end A087800

/-! ## A087800.P5139211629315115807

`2*A080875(2*n)`
-/

namespace A087800.P5139211629315115807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080875 (2 * n)

end

end A087800.P5139211629315115807

namespace A087800

/-- `2*A080875(2*n)` -/
def P5139211629315115807.Spec : Prop :=
  ∀ n, P5139211629315115807.a n = A087800 n

end A087800

/-! ## A087800.P4989302181437201218

`lcm(2, A164826(2*n+1))`
-/

namespace A087800.P4989302181437201218
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A164826 (2 * n + 1))

end

end A087800.P4989302181437201218

namespace A087800

/-- `lcm(2, A164826(2*n+1))` -/
def P4989302181437201218.Spec : Prop :=
  ∀ n, (P4989302181437201218.a n : ℤ) = A087800 n

end A087800

/-! ## A087800.P8911378206415657900

`2*(A041058(2*n+1)-A041058(2*n))`
-/

namespace A087800.P8911378206415657900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A041058 (2 * n + 1) - A041058 (2 * n))

end

end A087800.P8911378206415657900

namespace A087800

/-- `2*(A041058(2*n+1)-A041058(2*n))` -/
def P8911378206415657900.Spec : Prop :=
  ∀ n, P8911378206415657900.a n = A087800 n

end A087800

/-! ## A087800.P13429843454274139858

`record[A080875(n)+A080875(A237420(n))]`
-/

namespace A087800.P13429843454274139858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080875 n + A080875 (A237420 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087800.P13429843454274139858

namespace A087800

/-- `record[A080875(n)+A080875(A237420(n))]` -/
def P13429843454274139858.Spec : Prop :=
  ∀ n, P13429843454274139858.a n = A087800 n

end A087800

/-! ## A087800.P11772887610654741742

`Δ[A164826(2*(n+1))-A164826(2*n+1)]`
-/

namespace A087800.P11772887610654741742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164826 (2 * (n + 1)) - A164826 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087800.P11772887610654741742

namespace A087800

/-- `Δ[A164826(2*(n+1))-A164826(2*n+1)]` -/
def P11772887610654741742.Spec : Prop :=
  ∀ n, P11772887610654741742.a n = A087800 n

end A087800

/-!
# A087801: Greatest common divisor of tau(n)+sigma(n) and tau(n)*sigma(n), where tau = A000005 and sigma = A000203.

The programs for A087801, the canonical program `A087801.P12729956612022285424` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087801 has offset 1).

The definition of A087801 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087801.P12729956612022285424

`gcd(∑{d}[n+1, #]², ∑{d}[n+1, #+1])`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A087801

/-- `gcd(∑{d}[n+1, #]², ∑{d}[n+1, #+1])` -/
def P12729956612022285424.Spec : Prop :=
  ∀ n, (P12729956612022285424.a n : ℤ) = A087801 (n + 1)

theorem P12729956612022285424.correct : P12729956612022285424.Spec := by
  intro n
  simp only [A087801, Nat.add_sub_cancel]

end A087801

/-! ## A087801.P11476684070391341735

`gcd(∑{d}[n+1, #+1], A064840(n+1))`
-/

namespace A087801.P11476684070391341735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℤ) (A064840 (n + 1))

end

end A087801.P11476684070391341735

namespace A087801

/-- `gcd(∑{d}[n+1, #+1], A064840(n+1))` -/
def P11476684070391341735.Spec : Prop :=
  ∀ n, (P11476684070391341735.a n : ℤ) = A087801 (n + 1)

end A087801

/-! ## A087801.P3437445185607657168

`gcd(Δ[A257644(n)], A072861(n+1))`
-/

namespace A087801.P3437445185607657168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257644 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A072861 (n + 1))

end

end A087801.P3437445185607657168

namespace A087801

/-- `gcd(Δ[A257644(n)], A072861(n+1))` -/
def P3437445185607657168.Spec : Prop :=
  ∀ n, (P3437445185607657168.a n : ℤ) = A087801 (n + 1)

end A087801

/-! ## A087801.P4065723315645827272

`gcd(A007503(n+1), A035116(n+1))`
-/

namespace A087801.P4065723315645827272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007503 (n + 1)) (A035116 (n + 1))

end

end A087801.P4065723315645827272

namespace A087801

/-- `gcd(A007503(n+1), A035116(n+1))` -/
def P4065723315645827272.Spec : Prop :=
  ∀ n, (P4065723315645827272.a n : ℤ) = A087801 (n + 1)

end A087801

/-! ## A087801.P3267684479113488007

`gcd(A007503(A000027(n+1)), A064840(n+1))`
-/

namespace A087801.P3267684479113488007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007503 (A000027 (n + 1)).toNat) (A064840 (n + 1))

end

end A087801.P3267684479113488007

namespace A087801

/-- `gcd(A007503(A000027(n+1)), A064840(n+1))` -/
def P3267684479113488007.Spec : Prop :=
  ∀ n, (P3267684479113488007.a n : ℤ) = A087801 (n + 1)

end A087801

/-! ## A087801.P11232365242705931762

`gcd(A000203(n+1)+A000005(n+1), A000005(n+1)²)`
-/

namespace A087801.P11232365242705931762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1) + A000005 (n + 1)) (A000005 (n + 1) ^ 2)

end

end A087801.P11232365242705931762

namespace A087801

/-- `gcd(A000203(n+1)+A000005(n+1), A000005(n+1)²)` -/
def P11232365242705931762.Spec : Prop :=
  ∀ n, (P11232365242705931762.a n : ℤ) = A087801 (n + 1)

end A087801

/-!
# A087802: a(n) = Sum_{d|n, d nonprime} mu(d), where mu = A008683.

The programs for A087802, the canonical program `A087802.P13427432822188134513` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087802 has offset 1).

The definition of A087802 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087802.P13427432822188134513

`∏{e}[∏{e}[∏{p}[n+1, #²], #], #]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A087802

/-- `∏{e}[∏{e}[∏{p}[n+1, #²], #], #]` -/
def P13427432822188134513.Spec : Prop :=
  ∀ n, (P13427432822188134513.a n : ℤ) = A087802 (n + 1)

theorem P13427432822188134513.correct : P13427432822188134513.Spec := by
  intro n
  simp only [A087802, Nat.add_sub_cancel]

end A087802

/-! ## A087802.P2628367915643562210

`A297155(n+1)+1`
-/

namespace A087802.P2628367915643562210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297155 (n + 1) + 1

end

end A087802.P2628367915643562210

namespace A087802

/-- `A297155(n+1)+1` -/
def P2628367915643562210.Spec : Prop :=
  ∀ n, P2628367915643562210.a n = A087802 (n + 1)

end A087802

/-! ## A087802.P16350064685402024931

`ceil(sqrt(A259936(n+1)))`
-/

namespace A087802.P16350064685402024931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A259936 (n + 1) : ℝ)⌉

end

end A087802.P16350064685402024931

namespace A087802

/-- `ceil(sqrt(A259936(n+1)))` -/
def P16350064685402024931.Spec : Prop :=
  ∀ n, P16350064685402024931.a n = A087802 (n + 1)

end A087802

/-! ## A087802.P6827715648769831327

`round(sqrt(A034444(n+1)))`
-/

namespace A087802.P6827715648769831327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A034444 (n + 1) : ℝ))

end

end A087802.P6827715648769831327

namespace A087802

/-- `round(sqrt(A034444(n+1)))` -/
def P6827715648769831327.Spec : Prop :=
  ∀ n, P6827715648769831327.a n = A087802 (n + 1)

end A087802

/-! ## A087802.P17653213203720558953

`A086436(∏{p}[n+1, #])`
-/

namespace A087802.P17653213203720558953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A087802.P17653213203720558953

namespace A087802

/-- `A086436(∏{p}[n+1, #])` -/
def P17653213203720558953.Spec : Prop :=
  ∀ n, P17653213203720558953.a n = A087802 (n + 1)

end A087802

/-! ## A087802.P9670751165946089754

`A163377(∏{p}[n+1, #])`
-/

namespace A087802.P9670751165946089754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163377 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A087802.P9670751165946089754

namespace A087802

/-- `A163377(∏{p}[n+1, #])` -/
def P9670751165946089754.Spec : Prop :=
  ∀ n, P9670751165946089754.a n = A087802 (n + 1)

end A087802

/-! ## A087802.P9838923716547311575

`A240231(∏{p}[n+1, #])`
-/

namespace A087802.P9838923716547311575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240231 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A087802.P9838923716547311575

namespace A087802

/-- `A240231(∏{p}[n+1, #])` -/
def P9838923716547311575.Spec : Prop :=
  ∀ n, P9838923716547311575.a n = A087802 (n + 1)

end A087802

/-! ## A087802.P13747153933712784015

`∏{e}[A074816(n+1), #]`
-/

namespace A087802.P13747153933712784015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074816 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A087802.P13747153933712784015

namespace A087802

/-- `∏{e}[A074816(n+1), #]` -/
def P13747153933712784015.Spec : Prop :=
  ∀ n, (P13747153933712784015.a n : ℤ) = A087802 (n + 1)

end A087802

/-! ## A087802.P17330495468561032677

`∏{e}[A082476(n+1), #]`
-/

namespace A087802.P17330495468561032677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082476 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A087802.P17330495468561032677

namespace A087802

/-- `∏{e}[A082476(n+1), #]` -/
def P17330495468561032677.Spec : Prop :=
  ∀ n, (P17330495468561032677.a n : ℤ) = A087802 (n + 1)

end A087802

/-! ## A087802.P18303516629950398359

`∏{e}[A158522(n+1), #]`
-/

namespace A087802.P18303516629950398359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158522 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A087802.P18303516629950398359

namespace A087802

/-- `∏{e}[A158522(n+1), #]` -/
def P18303516629950398359.Spec : Prop :=
  ∀ n, (P18303516629950398359.a n : ℤ) = A087802 (n + 1)

end A087802

/-! ## A087802.P11837556499030365776

`A001221(ceil(acot(n)+n))`
-/

namespace A087802.P11837556499030365776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat

end

end A087802.P11837556499030365776

namespace A087802

/-- `A001221(ceil(acot(n)+n))` -/
def P11837556499030365776.Spec : Prop :=
  ∀ n, P11837556499030365776.a n = A087802 (n + 1)

end A087802

/-! ## A087802.P11007507831775340170

`A001221(abs(1-n)+2)`
-/

namespace A087802.P11007507831775340170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (|1 - (n : ℤ)| + 2).toNat

end

end A087802.P11007507831775340170

namespace A087802

/-- `A001221(abs(1-n)+2)` -/
def P11007507831775340170.Spec : Prop :=
  ∀ n, P11007507831775340170.a n = A087802 (n + 1)

end A087802

/-! ## A087802.P821251147056225421

`log2(A007875(n+1))+1`
-/

namespace A087802.P821251147056225421
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A007875 (n + 1) : ℝ) + 1

end

end A087802.P821251147056225421

namespace A087802

/-- `log2(A007875(n+1))+1` -/
def P821251147056225421.Spec : Prop :=
  ∀ n, P821251147056225421.a n = (A087802 (n + 1) : ℝ)

end A087802

/-! ## A087802.P4885860242150966609

`gcd(C(2, n), A001221(n+1))`
-/

namespace A087802.P4885860242150966609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 n : ℤ) (A001221 (n + 1))

end

end A087802.P4885860242150966609

namespace A087802

/-- `gcd(C(2, n), A001221(n+1))` -/
def P4885860242150966609.Spec : Prop :=
  ∀ n, (P4885860242150966609.a n : ℤ) = A087802 (n + 1)

end A087802

/-! ## A087802.P16375804602437336962

`round(sqrt(A304326(n+1)+1))`
-/

namespace A087802.P16375804602437336962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A304326 (n + 1) + 1 : ℝ))

end

end A087802.P16375804602437336962

namespace A087802

/-- `round(sqrt(A304326(n+1)+1))` -/
def P16375804602437336962.Spec : Prop :=
  ∀ n, P16375804602437336962.a n = A087802 (n + 1)

end A087802

/-! ## A087802.P5481901413590136922

`∏{e}[A309307(n+1)+1, #]`
-/

namespace A087802.P5481901413590136922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309307 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A087802.P5481901413590136922

namespace A087802

/-- `∏{e}[A309307(n+1)+1, #]` -/
def P5481901413590136922.Spec : Prop :=
  ∀ n, (P5481901413590136922.a n : ℤ) = A087802 (n + 1)

end A087802

/-! ## A087802.P14687823615306304347

`round(sqrt(A000005(∏{p}[n+1, #])))`
-/

namespace A087802.P14687823615306304347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A000005 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℝ))

end

end A087802.P14687823615306304347

namespace A087802

/-- `round(sqrt(A000005(∏{p}[n+1, #])))` -/
def P14687823615306304347.Spec : Prop :=
  ∀ n, P14687823615306304347.a n = A087802 (n + 1)

end A087802

/-! ## A087802.P12790093484597230369

`A248211(n)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A087802.P12790093484597230369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A248211 n + a (n - 1)

end

end A087802.P12790093484597230369

namespace A087802

/-- `A248211(n)+a(n-1)` -/
def P12790093484597230369.Spec : Prop :=
  ∀ n, P12790093484597230369.a n = A087802 (n + 1)

end A087802

/-!
# A087803: Number of unlabeled rooted trees with at most n nodes.

The programs for A087803, there is no canonical definition to state claims against.
-/

/-! ## A087803.P16393940438387469583

`∑[∑[A174145(n)]]`
-/

namespace A087803.P16393940438387469583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087803.P16393940438387469583

/-! ## A087803.P13937248397120836022

`∑[A000081(n+1)]`
-/

namespace A087803.P13937248397120836022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087803.P13937248397120836022

/-! ## A087803.P13938206003210382414

`∑[A038001(Δ[n²])]`
-/

namespace A087803.P13938206003210382414
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038001 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087803.P13938206003210382414

/-! ## A087803.P332199921251377617

`A255170(n+1)+n`
-/

namespace A087803.P332199921251377617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255170 (n + 1) + (n : ℤ)

end

end A087803.P332199921251377617

/-! ## A087803.P1811758931657886116

`A123467(n)+a(n-1)` with `a(0)=1`
-/

namespace A087803.P1811758931657886116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A123467 n + a (n - 1)

end

end A087803.P1811758931657886116

/-! ## A087803.P15305478516336116566

`∑[A123467(A028310(n))]`
-/

namespace A087803.P15305478516336116566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123467 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087803.P15305478516336116566

/-! ## A087803.P14979641077447431795

`∑[A123467(n+1)]+1-A123467(n+1)`
-/

namespace A087803.P14979641077447431795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123467 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A123467 (n + 1))

end

end A087803.P14979641077447431795

/-! ## A087803.P11215820730027304586

`∑[A002861(n+1)-A002862(n+1)]`
-/

namespace A087803.P11215820730027304586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002861 (n + 1) - A002862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087803.P11215820730027304586

/-! ## A087803.P11659462312048696355

`A173761(n+1)-∑[A002862(n+1)]`
-/

namespace A087803.P11659462312048696355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173761 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087803.P11659462312048696355

/-! ## A087803.P16359197452358380110

`∑[A055544(n+1)/(n+1)]`
-/

namespace A087803.P16359197452358380110
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055544 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087803.P16359197452358380110

/-! ## A087803.P16272903228889890177

`∑[A095341(n+2)/(n+2)]`
-/

namespace A087803.P16272903228889890177
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095341 (n + 2) : ℚ) / (n + 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087803.P16272903228889890177

/-! ## A087803.P2704616360925108034

`∑[A339067(∑[n]+1)]`
-/

namespace A087803.P2704616360925108034
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339067 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087803.P2704616360925108034

/-! ## A087803.P9736708379167823979

`∑[A033185(∑[n]+1)]`
-/

namespace A087803.P9736708379167823979
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033185 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087803.P9736708379167823979

/-! ## A087803.P4895424174486481727

`∑[A106236(∑[n]+1)]`
-/

namespace A087803.P4895424174486481727
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106236 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087803.P4895424174486481727

/-! ## A087803.P11613552843939657201

`∑[A144018(∑[n]+1)]`
-/

namespace A087803.P11613552843939657201
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144018 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087803.P11613552843939657201

/-! ## A087803.P4255098879145350279

`∑[sqrt(A001257(n))]`
-/

namespace A087803.P4255098879145350279
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001257 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087803.P4255098879145350279

/-! ## A087803.P13227336325566463662

`∑[A318753(2*(n+1)²)]`
-/

namespace A087803.P13227336325566463662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087803.P13227336325566463662

/-! ## A087803.P2264192833740261395

`∑[A318757(2*(n+1)²)]`
-/

namespace A087803.P2264192833740261395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087803.P2264192833740261395

/-!
# A087804: Binomial transform of squares of Catalan numbers.

The programs for A087804, there is no canonical definition to state claims against.
-/

/-! ## A087804.P9682227897958027000

`A349088(n)+A004525(A268619(2*n+1))`
-/

namespace A087804.P9682227897958027000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349088 n + A004525 (A268619 (2 * n + 1)).toNat

end

end A087804.P9682227897958027000

/-!
# A087805: Partial sums of b(k) where {b(k)}_{k>=0} = lim_{n->oo} {A080578(k)-2k : k=2^n,2^n+1,2^n+2,...}.

The programs for A087805, there is no canonical definition to state claims against.
-/

/-! ## A087805.P18387379722287622922

`∑[comp[a(floor(n/2))+n]-2*n]` with `a(0)=1`
-/

namespace A087805.P18387379722287622922
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 ⌊(n : ℚ) / 2⌋.toNat + n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087805.P18387379722287622922

/-! ## A087805.P1717153718023882686

`∑[comp[val(n, 2)-a(n-1)]-2*n]` with `a(0)=1`
-/

namespace A087805.P1717153718023882686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (SequenceMachineLib.valuation n 2 : ℤ) - f2 (n - 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087805.P1717153718023882686

/-! ## A087805.P8421973952799461

`∑[comp[a(n-1)+val(n, 2)]-n-n]` with `a(0)=1`
-/

namespace A087805.P8421973952799461
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + SequenceMachineLib.valuation n 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087805.P8421973952799461

/-! ## A087805.P8205857215717665882

`∑[dr(A169683(n))]`
-/

namespace A087805.P8205857215717665882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A169683 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087805.P8205857215717665882

/-! ## A087805.P6898264596068610214

`∑[dr(record[A322000(n)])]`
-/

namespace A087805.P6898264596068610214
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322000 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087805.P6898264596068610214

/-! ## A087805.P4725542435233305246

`A029715(n)-(∑[n]+1)`
-/

namespace A087805.P4725542435233305246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029715 n - ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A087805.P4725542435233305246

/-! ## A087805.P4316832263047267617

`∑[A007843(n)-n]-1`
-/

namespace A087805.P4316832263047267617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007843 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A087805.P4316832263047267617

/-! ## A087805.P9683830704617252700

`A100661(n)+a(n-1)` with `a(0)=0`
-/

namespace A087805.P9683830704617252700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A100661 n + a (n - 1)

end

end A087805.P9683830704617252700

/-! ## A087805.P7056263370742752260

`∑[comp[A101925(n)]-2*n]`
-/

namespace A087805.P7056263370742752260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101925 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087805.P7056263370742752260

/-! ## A087805.P6493596593985166744

`∑[A080578(n+1)-Δ[n²]]`
-/

namespace A087805.P6493596593985166744
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080578 (n + 1) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087805.P6493596593985166744

/-!
# A087806: Inverse binomial transform of squares of Catalan numbers.

The programs for A087806, there is no canonical definition to state claims against.
-/

/-! ## A087806.P4966363625207526169

`A287707(A097801(n))-A209655(n+1)`
-/

namespace A087806.P4966363625207526169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287707 (A097801 n).toNat - A209655 (n + 1)

end

end A087806.P4966363625207526169

/-! ## A087806.P10168578445160048772

`xor(A008611(A321965(n)), A166387(3*n+4))`
-/

namespace A087806.P10168578445160048772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008611 (A321965 n).toNat) (A166387 (3 * n + 4))

end

end A087806.P10168578445160048772

/-!
# A087808: a(0) = 0; a(2n) = 2a(n), a(2n+1) = a(n) + 1.

The programs for A087808, the canonical program `A087808.P16247753325195176989` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087808 has offset 0).

The definition of A087808 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A048675, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A087808.P16247753325195176989

`A048675(A005940(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A087808

/-- `A048675(A005940(n+1))` -/
def P16247753325195176989.Spec : Prop :=
  ∀ n, P16247753325195176989.a n = A087808 n

theorem P16247753325195176989.correct : P16247753325195176989.Spec := by
  intro n
  simp only [A087808]

end A087808

/-! ## A087808.P14451699735192234460

`n%2+gcd(2, n)*a(floor(n/2))` with `a(0)=0`
-/

namespace A087808.P14451699735192234460
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n % 2 + Nat.gcd 2 n * a ⌊(n : ℚ) / 2⌋.toNat

end

end A087808.P14451699735192234460

namespace A087808

/-- `n%2+gcd(2, n)*a(floor(n/2))` -/
def P14451699735192234460.Spec : Prop :=
  ∀ n, (P14451699735192234460.a n : ℤ) = A087808 n

end A087808

/-! ## A087808.P11115105869714529635

`(a(floor(n/2))+n%2)*A040001(n)` with `a(0)=0`
-/

namespace A087808.P11115105869714529635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (a ⌊(n : ℚ) / 2⌋.toNat + ((n % 2 : ℕ) : ℤ)) * A040001 n

end

end A087808.P11115105869714529635

namespace A087808

/-- `(a(floor(n/2))+n%2)*A040001(n)` -/
def P11115105869714529635.Spec : Prop :=
  ∀ n, P11115105869714529635.a n = A087808 n

end A087808

/-! ## A087808.P11766406733639710764

`A135542(2*n+1)-A080100(n)`
-/

namespace A087808.P11766406733639710764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135542 (2 * n + 1) - A080100 n

end

end A087808.P11766406733639710764

namespace A087808

/-- `A135542(2*n+1)-A080100(n)` -/
def P11766406733639710764.Spec : Prop :=
  ∀ n, P11766406733639710764.a n = A087808 n

end A087808

/-! ## A087808.P12835423409232858206

`A086845(2*(n+1))-(A086845(2*n+1)+1)`
-/

namespace A087808.P12835423409232858206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086845 (2 * (n + 1)) - (A086845 (2 * n + 1) + 1)

end

end A087808.P12835423409232858206

namespace A087808

/-- `A086845(2*(n+1))-(A086845(2*n+1)+1)` -/
def P12835423409232858206.Spec : Prop :=
  ∀ n, P12835423409232858206.a n = A087808 n

end A087808

/-! ## A087808.P449244965170065544

`A135529(A054429(2*n+1))-1`
-/

namespace A087808.P449244965170065544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135529 (A054429 (2 * n + 1)).toNat - 1

end

end A087808.P449244965170065544

namespace A087808

/-- `A135529(A054429(2*n+1))-1` -/
def P449244965170065544.Spec : Prop :=
  ∀ n, P449244965170065544.a n = A087808 n

end A087808

/-! ## A087808.P1311127021782096853

`A135529(A115304(2*n+1))-1`
-/

namespace A087808.P1311127021782096853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135529 (A115304 (2 * n + 1)).toNat - 1

end

end A087808.P1311127021782096853

namespace A087808

/-- `A135529(A115304(2*n+1))-1` -/
def P1311127021782096853.Spec : Prop :=
  ∀ n, P1311127021782096853.a n = A087808 n

end A087808

/-! ## A087808.P5814484428600823047

`A135529(A117120(2*n+1))-1`
-/

namespace A087808.P5814484428600823047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135529 (A117120 (2 * n + 1)).toNat - 1

end

end A087808.P5814484428600823047

namespace A087808

/-- `A135529(A117120(2*n+1))-1` -/
def P5814484428600823047.Spec : Prop :=
  ∀ n, P5814484428600823047.a n = A087808 n

end A087808

/-! ## A087808.P3536777460519494530

`A135529(A010078(n+1))-A080100(n)`
-/

namespace A087808.P3536777460519494530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135529 (A010078 (n + 1)).toNat - A080100 n

end

end A087808.P3536777460519494530

namespace A087808

/-- `A135529(A010078(n+1))-A080100(n)` -/
def P3536777460519494530.Spec : Prop :=
  ∀ n, P3536777460519494530.a n = A087808 n

end A087808

/-! ## A087808.P4653560049780555011

`A135529(A010078(n+1))-A048896(A054429(n+1))`
-/

namespace A087808.P4653560049780555011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135529 (A010078 (n + 1)).toNat - A048896 (A054429 (n + 1)).toNat

end

end A087808.P4653560049780555011

namespace A087808

/-- `A135529(A010078(n+1))-A048896(A054429(n+1))` -/
def P4653560049780555011.Spec : Prop :=
  ∀ n, P4653560049780555011.a n = A087808 n

end A087808

/-! ## A087808.P18190768477476421850

`n-A323905(A324641(n+1)-A324640(n+1))`
-/

namespace A087808.P18190768477476421850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A323905 (A324641 (n + 1) - A324640 (n + 1)).toNat

end

end A087808.P18190768477476421850

namespace A087808

/-- `n-A323905(A324641(n+1)-A324640(n+1))` -/
def P18190768477476421850.Spec : Prop :=
  ∀ n, P18190768477476421850.a n = A087808 n

end A087808

/-! ## A087808.P12713236252329777549

`A275728(A276082(n))`
-/

namespace A087808.P12713236252329777549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275728 (A276082 n).toNat

end

end A087808.P12713236252329777549

namespace A087808

/-- `A275728(A276082(n))` -/
def P12713236252329777549.Spec : Prop :=
  ∀ n, P12713236252329777549.a n = A087808 n

end A087808

/-! ## A087808.P12305243298332933447

`A275729(A276083(n))`
-/

namespace A087808.P12305243298332933447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275729 (A276083 n).toNat

end

end A087808.P12305243298332933447

namespace A087808

/-- `A275729(A276083(n))` -/
def P12305243298332933447.Spec : Prop :=
  ∀ n, P12305243298332933447.a n = A087808 n

end A087808

/-! ## A087808.P17987352283081118063

`∑{d}[A005940(n+1), A297108(#)]`
-/

namespace A087808.P17987352283081118063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297108 d

end

end A087808.P17987352283081118063

namespace A087808

/-- `∑{d}[A005940(n+1), A297108(#)]` -/
def P17987352283081118063.Spec : Prop :=
  ∀ n, P17987352283081118063.a n = A087808 n

end A087808

/-! ## A087808.P6113317641468381556

`A048675(A364499(n+1)+n+1)`
-/

namespace A087808.P6113317641468381556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A364499 (n + 1) + (n + 1 : ℤ)).toNat

end

end A087808.P6113317641468381556

namespace A087808

/-- `A048675(A364499(n+1)+n+1)` -/
def P6113317641468381556.Spec : Prop :=
  ∀ n, P6113317641468381556.a n = A087808 n

end A087808

/-! ## A087808.P17011323742020024863

`A048675(A324641(n+1)-A324640(n+1))`
-/

namespace A087808.P17011323742020024863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A324641 (n + 1) - A324640 (n + 1)).toNat

end

end A087808.P17011323742020024863

namespace A087808

/-- `A048675(A324641(n+1)-A324640(n+1))` -/
def P17011323742020024863.Spec : Prop :=
  ∀ n, P17011323742020024863.a n = A087808 n

end A087808

/-! ## A087808.P14570803640089644246

`A048675(A253563(A156552(A253563(n))))`
-/

namespace A087808.P14570803640089644246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A253563 (A156552 (A253563 n).toNat).toNat).toNat

end

end A087808.P14570803640089644246

namespace A087808

/-- `A048675(A253563(A156552(A253563(n))))` -/
def P14570803640089644246.Spec : Prop :=
  ∀ n, P14570803640089644246.a n = A087808 n

end A087808

/-!
# A087809: Number of triangulations (by Euclidean triangles) having 3+3n vertices of a triangle with each side subdivided by n additional points.

The programs for A087809, there is no canonical definition to state claims against.
-/

/-! ## A087809.P10650941775456812475

`A047098(n)+A321957(n)/2`
-/

namespace A087809.P10650941775456812475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047098 n : ℚ) + (A321957 n : ℚ) / 2

end

end A087809.P10650941775456812475

/-! ## A087809.P2190919877212991699

`A395602(∑[n+1]+3)`
-/

namespace A087809.P2190919877212991699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395602 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A087809.P2190919877212991699

/-!
# A087810: First differences of A029931.

The programs for A087810, the canonical program `A087810.P1099437572016167841` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087810 has offset 1).

The definition of A087810 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087810.P1099437572016167841

`1-C(val(n+1, 2), 2)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A087810

/-- `1-C(val(n+1, 2), 2)` -/
def P1099437572016167841.Spec : Prop :=
  ∀ n, P1099437572016167841.a n = A087810 (n + 1)

theorem P1099437572016167841.correct : P1099437572016167841.Spec := by
  intro n
  simp only [A087810, Nat.add_sub_cancel]

end A087810

/-! ## A087810.P8316608894836303070

`log2(ratio[2*a(n-gcd(floor(n/2), a(n-1)))])` with `a(0)=1`
-/

namespace A087810.P8316608894836303070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - Int.gcd ⌊(n : ℚ) / 2⌋ (f1 (n - 1) : ℤ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)

end

end A087810.P8316608894836303070

namespace A087810

/-- `log2(ratio[2*a(n-gcd(floor(n/2), a(n-1)))])` -/
def P8316608894836303070.Spec : Prop :=
  ∀ n, P8316608894836303070.a n = (A087810 (n + 1) : ℝ)

end A087810

/-! ## A087810.P16256338161176557786

`A080956(val(n+1, 2))`
-/

namespace A087810.P16256338161176557786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080956 (SequenceMachineLib.valuation (n + 1) 2)

end

end A087810.P16256338161176557786

namespace A087810

/-- `A080956(val(n+1, 2))` -/
def P16256338161176557786.Spec : Prop :=
  ∀ n, P16256338161176557786.a n = A087810 (n + 1)

end A087810

/-! ## A087810.P13733682446840970426

`1-A161680(val(n+1, 2))`
-/

namespace A087810.P13733682446840970426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A161680 (SequenceMachineLib.valuation (n + 1) 2)

end

end A087810.P13733682446840970426

namespace A087810

/-- `1-A161680(val(n+1, 2))` -/
def P13733682446840970426.Spec : Prop :=
  ∀ n, P13733682446840970426.a n = A087810 (n + 1)

end A087810

/-! ## A087810.P5008418721238832956

`1-C(A007814(n+1), 2)`
-/

namespace A087810.P5008418721238832956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose (A007814 (n + 1)).toNat 2 : ℤ)

end

end A087810.P5008418721238832956

namespace A087810

/-- `1-C(A007814(n+1), 2)` -/
def P5008418721238832956.Spec : Prop :=
  ∀ n, P5008418721238832956.a n = A087810 (n + 1)

end A087810

/-! ## A087810.P6846472255893394600

`1-C(1-Δ[A000120(n)], 2)`
-/

namespace A087810.P6846472255893394600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose (1 - (f1 (n + 1) - f1 n)).toNat 2 : ℤ)

end

end A087810.P6846472255893394600

namespace A087810

/-- `1-C(1-Δ[A000120(n)], 2)` -/
def P6846472255893394600.Spec : Prop :=
  ∀ n, P6846472255893394600.a n = A087810 (n + 1)

end A087810

/-! ## A087810.P17462663962194686834

`∑{d}[A006519(n+1), 1-log2(#)]`
-/

namespace A087810.P17462663962194686834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (1 - Real.logb 2 (d : ℝ))

end

end A087810.P17462663962194686834

namespace A087810

/-- `∑{d}[A006519(n+1), 1-log2(#)]` -/
def P17462663962194686834.Spec : Prop :=
  ∀ n, P17462663962194686834.a n = (A087810 (n + 1) : ℝ)

end A087810

/-! ## A087810.P6985583127143008739

`val(n+1, 2)+1-A000217(val(n+1, 2))`
-/

namespace A087810.P6985583127143008739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) - A000217 (SequenceMachineLib.valuation (n + 1) 2)

end

end A087810.P6985583127143008739

namespace A087810

/-- `val(n+1, 2)+1-A000217(val(n+1, 2))` -/
def P6985583127143008739.Spec : Prop :=
  ∀ n, P6985583127143008739.a n = A087810 (n + 1)

end A087810

/-! ## A087810.P9338927284344462012

`A080956(A007814(n+1))`
-/

namespace A087810.P9338927284344462012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080956 (A007814 (n + 1)).toNat

end

end A087810.P9338927284344462012

namespace A087810

/-- `A080956(A007814(n+1))` -/
def P9338927284344462012.Spec : Prop :=
  ∀ n, P9338927284344462012.a n = A087810 (n + 1)

end A087810

/-! ## A087810.P4062260560351614096

`A288571(A006519(n+1))`
-/

namespace A087810.P4062260560351614096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288571 (A006519 (n + 1)).toNat

end

end A087810.P4062260560351614096

namespace A087810

/-- `A288571(A006519(n+1))` -/
def P4062260560351614096.Spec : Prop :=
  ∀ n, P4062260560351614096.a n = A087810 (n + 1)

end A087810

/-! ## A087810.P13211046971328735515

`A317301(A037227(n+1))`
-/

namespace A087810.P13211046971328735515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317301 (A037227 (n + 1)).toNat

end

end A087810.P13211046971328735515

namespace A087810

/-- `A317301(A037227(n+1))` -/
def P13211046971328735515.Spec : Prop :=
  ∀ n, P13211046971328735515.a n = A087810 (n + 1)

end A087810

/-! ## A087810.P5225927159691960106

`A302764(A115364(n+1))`
-/

namespace A087810.P5225927159691960106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302764 (A115364 (n + 1)).toNat

end

end A087810.P5225927159691960106

namespace A087810

/-- `A302764(A115364(n+1))` -/
def P5225927159691960106.Spec : Prop :=
  ∀ n, P5225927159691960106.a n = A087810 (n + 1)

end A087810

/-! ## A087810.P5668969600571325423

`1-A073642(A135481(n))`
-/

namespace A087810.P5668969600571325423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A073642 (A135481 n).toNat

end

end A087810.P5668969600571325423

namespace A087810

/-- `1-A073642(A135481(n))` -/
def P5668969600571325423.Spec : Prop :=
  ∀ n, P5668969600571325423.a n = A087810 (n + 1)

end A087810

/-! ## A087810.P1920214524999823367

`A080956(2-Δ[A092391(n)])`
-/

namespace A087810.P1920214524999823367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080956 (2 - (f1 (n + 1) - f1 n)).toNat

end

end A087810.P1920214524999823367

namespace A087810

/-- `A080956(2-Δ[A092391(n)])` -/
def P1920214524999823367.Spec : Prop :=
  ∀ n, P1920214524999823367.a n = A087810 (n + 1)

end A087810

/-! ## A087810.P15718401051801041671

`A080956(A001511(n+1)-1)`
-/

namespace A087810.P15718401051801041671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080956 (A001511 (n + 1) - 1).toNat

end

end A087810.P15718401051801041671

namespace A087810

/-- `A080956(A001511(n+1)-1)` -/
def P15718401051801041671.Spec : Prop :=
  ∀ n, P15718401051801041671.a n = A087810 (n + 1)

end A087810

/-! ## A087810.P15871989834617618867

`A288571(2*A160467(n+1))`
-/

namespace A087810.P15871989834617618867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288571 (2 * A160467 (n + 1)).toNat

end

end A087810.P15871989834617618867

namespace A087810

/-- `A288571(2*A160467(n+1))` -/
def P15871989834617618867.Spec : Prop :=
  ∀ n, P15871989834617618867.a n = A087810 (n + 1)

end A087810

/-! ## A087810.P14582782572048658514

`∑{d}[A055975(n+1), A048272(#)]`
-/

namespace A087810.P14582782572048658514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A048272 d

end

end A087810.P14582782572048658514

namespace A087810

/-- `∑{d}[A055975(n+1), A048272(#)]` -/
def P14582782572048658514.Spec : Prop :=
  ∀ n, P14582782572048658514.a n = A087810 (n + 1)

end A087810

/-! ## A087810.P18046274339675830103

`∑{d}[A055975(n+1), A088705(#)]`
-/

namespace A087810.P18046274339675830103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A088705 d

end

end A087810.P18046274339675830103

namespace A087810

/-- `∑{d}[A055975(n+1), A088705(#)]` -/
def P18046274339675830103.Spec : Prop :=
  ∀ n, P18046274339675830103.a n = A087810 (n + 1)

end A087810

/-! ## A087810.P18222798364498880226

`1-A161680(A001511(n+1)-1)`
-/

namespace A087810.P18222798364498880226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A161680 (A001511 (n + 1) - 1).toNat

end

end A087810.P18222798364498880226

namespace A087810

/-- `1-A161680(A001511(n+1)-1)` -/
def P18222798364498880226.Spec : Prop :=
  ∀ n, P18222798364498880226.a n = A087810 (n + 1)

end A087810

/-! ## A087810.P12318482646958091224

`A366839(n+1)-A115364(n+1)`
-/

namespace A087810.P12318482646958091224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366839 (n + 1) - A115364 (n + 1)

end

end A087810.P12318482646958091224

namespace A087810

/-- `A366839(n+1)-A115364(n+1)` -/
def P12318482646958091224.Spec : Prop :=
  ∀ n, P12318482646958091224.a n = A087810 (n + 1)

end A087810

/-!
# A087811: Numbers k such that ceiling(sqrt(k)) divides k.

The programs for A087811, the canonical program `A087811.P8717670463538044569` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087811 has offset 1).

The definition of A087811 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087811.P8717670463538044569

`A024206(n+1)+1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A087811

/-- `A024206(n+1)+1` -/
def P8717670463538044569.Spec : Prop :=
  ∀ n, P8717670463538044569.a n = A087811 (n + 1)

theorem P8717670463538044569.correct : P8717670463538044569.Spec := by
  intro n
  simp only [A087811, Nat.add_sub_cancel]

end A087811

/-! ## A087811.P4102266469628591030

`∑[∑[log2(gcd(2, n))]]`
-/

namespace A087811.P4102266469628591030
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087811.P4102266469628591030

namespace A087811

/-- `∑[∑[log2(gcd(2, n))]]` -/
def P4102266469628591030.Spec : Prop :=
  ∀ n, P4102266469628591030.a n = (A087811 (n + 1) : ℝ)

end A087811

/-! ## A087811.P8111029882580257311

`∑[∑[char[2*n]]]`
-/

namespace A087811.P8111029882580257311
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087811.P8111029882580257311

namespace A087811

/-- `∑[∑[char[2*n]]]` -/
def P8111029882580257311.Spec : Prop :=
  ∀ n, (P8111029882580257311.a n : ℤ) = A087811 (n + 1)

end A087811

/-! ## A087811.P12186963126805789355

`round(∑[∑[cos(n)²]])`
-/

namespace A087811.P12186963126805789355
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ) ^ 2

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A087811.P12186963126805789355

namespace A087811

/-- `round(∑[∑[cos(n)²]])` -/
def P12186963126805789355.Spec : Prop :=
  ∀ n, P12186963126805789355.a n = A087811 (n + 1)

end A087811

/-! ## A087811.P16938769877253122081

`floor(cosh(log(n+2))²)`
-/

namespace A087811.P16938769877253122081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log (n + 2 : ℝ)) ^ 2⌋

end

end A087811.P16938769877253122081

namespace A087811

/-- `floor(cosh(log(n+2))²)` -/
def P16938769877253122081.Spec : Prop :=
  ∀ n, P16938769877253122081.a n = A087811 (n + 1)

end A087811

/-! ## A087811.P2081378640197307721

`ceil(sinh(log(n+2))²)`
-/

namespace A087811.P2081378640197307721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sinh (Real.log (n + 2 : ℝ)) ^ 2⌉

end

end A087811.P2081378640197307721

namespace A087811

/-- `ceil(sinh(log(n+2))²)` -/
def P2081378640197307721.Spec : Prop :=
  ∀ n, P2081378640197307721.a n = A087811 (n + 1)

end A087811

/-! ## A087811.P838685354294530973

`round(sinh(log(n+2))²)`
-/

namespace A087811.P838685354294530973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (Real.log (n + 2 : ℝ)) ^ 2)

end

end A087811.P838685354294530973

namespace A087811

/-- `round(sinh(log(n+2))²)` -/
def P838685354294530973.Spec : Prop :=
  ∀ n, P838685354294530973.a n = A087811 (n + 1)

end A087811

/-! ## A087811.P17708886655600614637

`∑[or(1, n)+1]/2`
-/

namespace A087811.P17708886655600614637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A087811.P17708886655600614637

namespace A087811

/-- `∑[or(1, n)+1]/2` -/
def P17708886655600614637.Spec : Prop :=
  ∀ n, P17708886655600614637.a n = (A087811 (n + 1) : ℚ)

end A087811

/-! ## A087811.P15697416205279878749

`record[floor((1-n/2)²)]`
-/

namespace A087811.P15697416205279878749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(1 - (n : ℚ) / 2) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087811.P15697416205279878749

namespace A087811

/-- `record[floor((1-n/2)²)]` -/
def P15697416205279878749.Spec : Prop :=
  ∀ n, P15697416205279878749.a n = A087811 (n + 1)

end A087811

/-! ## A087811.P7328766228088544002

`round(record[(1-n/2)²])`
-/

namespace A087811.P7328766228088544002
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℚ) / 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A087811.P7328766228088544002

namespace A087811

/-- `round(record[(1-n/2)²])` -/
def P7328766228088544002.Spec : Prop :=
  ∀ n, P7328766228088544002.a n = A087811 (n + 1)

end A087811

/-! ## A087811.P8989243039192574068

`abs(∑[∑[1-n%2]])`
-/

namespace A087811.P8989243039192574068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n % 2 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A087811.P8989243039192574068

namespace A087811

/-- `abs(∑[∑[1-n%2]])` -/
def P8989243039192574068.Spec : Prop :=
  ∀ n, P8989243039192574068.a n = A087811 (n + 1)

end A087811

/-! ## A087811.P6368385373540217394

`abs(∑[∑[1-and(1, n)]])`
-/

namespace A087811.P6368385373540217394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 1 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A087811.P6368385373540217394

namespace A087811

/-- `abs(∑[∑[1-and(1, n)]])` -/
def P6368385373540217394.Spec : Prop :=
  ∀ n, P6368385373540217394.a n = A087811 (n + 1)

end A087811

/-! ## A087811.P12627337570683341229

`-∑[∑[and(1, n)-1]]`
-/

namespace A087811.P12627337570683341229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A087811.P12627337570683341229

namespace A087811

/-- `-∑[∑[and(1, n)-1]]` -/
def P12627337570683341229.Spec : Prop :=
  ∀ n, P12627337570683341229.a n = A087811 (n + 1)

end A087811

/-! ## A087811.P12407084998294010525

`ceil(cot(2/(n+2))²)`
-/

namespace A087811.P12407084998294010525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (2 / (n + 2 : ℚ) : ℝ) ^ 2⌉

end

end A087811.P12407084998294010525

namespace A087811

/-- `ceil(cot(2/(n+2))²)` -/
def P12407084998294010525.Spec : Prop :=
  ∀ n, P12407084998294010525.a n = A087811 (n + 1)

end A087811

/-! ## A087811.P3263365648911504461

`round(cot((2/(n+2))²))`
-/

namespace A087811.P3263365648911504461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot ((2 / (n + 2 : ℚ)) ^ 2 : ℝ))

end

end A087811.P3263365648911504461

namespace A087811

/-- `round(cot((2/(n+2))²))` -/
def P3263365648911504461.Spec : Prop :=
  ∀ n, P3263365648911504461.a n = A087811 (n + 1)

end A087811

/-! ## A087811.P17680580047921518836

`abs(∑[∑[or(1, n)-n]])`
-/

namespace A087811.P17680580047921518836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A087811.P17680580047921518836

namespace A087811

/-- `abs(∑[∑[or(1, n)-n]])` -/
def P17680580047921518836.Spec : Prop :=
  ∀ n, P17680580047921518836.a n = A087811 (n + 1)

end A087811

/-! ## A087811.P9745411450229887121

`-∑[∑[n-or(1, n)]]`
-/

namespace A087811.P9745411450229887121
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.lor 1 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A087811.P9745411450229887121

namespace A087811

/-- `-∑[∑[n-or(1, n)]]` -/
def P9745411450229887121.Spec : Prop :=
  ∀ n, P9745411450229887121.a n = A087811 (n + 1)

end A087811

/-! ## A087811.P15083303515556470062

`∑[comp[lcm(3, n)]]-∑[n]`
-/

namespace A087811.P15083303515556470062
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A087811.P15083303515556470062

namespace A087811

/-- `∑[comp[lcm(3, n)]]-∑[n]` -/
def P15083303515556470062.Spec : Prop :=
  ∀ n, P15083303515556470062.a n = A087811 (n + 1)

end A087811

/-! ## A087811.P15384621565942889656

`round(∑[∑[sin(n+1)²]])`
-/

namespace A087811.P15384621565942889656
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n + 1 : ℝ) ^ 2

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A087811.P15384621565942889656

namespace A087811

/-- `round(∑[∑[sin(n+1)²]])` -/
def P15384621565942889656.Spec : Prop :=
  ∀ n, P15384621565942889656.a n = A087811 (n + 1)

end A087811

/-! ## A087811.P14860562908789489121

`round(∑[∑[1-sin(n)²]])`
-/

namespace A087811.P14860562908789489121
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 - Real.sin (n : ℝ) ^ 2

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A087811.P14860562908789489121

namespace A087811

/-- `round(∑[∑[1-sin(n)²]])` -/
def P14860562908789489121.Spec : Prop :=
  ∀ n, P14860562908789489121.a n = A087811 (n + 1)

end A087811

/-!
# A087812: Sum of MoebiusMu for numbers between n and 2n inclusive.

The programs for A087812, the canonical program `A087812.P9290405347029471729` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087812 has offset 1).

The definition of A087812 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087812.P9290405347029471729

`A063473(n+1)-A002321(or(1, n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A087812

/-- `A063473(n+1)-A002321(or(1, n))` -/
def P9290405347029471729.Spec : Prop :=
  ∀ n, P9290405347029471729.a n = A087812 (n + 1)

theorem P9290405347029471729.correct : P9290405347029471729.Spec := by
  intro n
  simp only [A087812, Nat.add_sub_cancel]

end A087812

/-! ## A087812.P11214878255795841937

`A063473(n+1)-A063473(A008619(n))`
-/

namespace A087812.P11214878255795841937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063473 (n + 1) - A063473 (A008619 n).toNat

end

end A087812.P11214878255795841937

namespace A087812

/-- `A063473(n+1)-A063473(A008619(n))` -/
def P11214878255795841937.Spec : Prop :=
  ∀ n, P11214878255795841937.a n = A087812 (n + 1)

end A087812

/-! ## A087812.P11888700698164621660

`A063473(n+1)-A002321(A109613(n))`
-/

namespace A087812.P11888700698164621660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063473 (n + 1) - A002321 (A109613 n).toNat

end

end A087812.P11888700698164621660

namespace A087812

/-- `A063473(n+1)-A002321(A109613(n))` -/
def P11888700698164621660.Spec : Prop :=
  ∀ n, P11888700698164621660.a n = A087812 (n + 1)

end A087812

/-! ## A087812.P2941777492608297553

`A063473(n+1)-A063473(A004526(n)+1)`
-/

namespace A087812.P2941777492608297553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063473 (n + 1) - A063473 (A004526 n + 1).toNat

end

end A087812.P2941777492608297553

namespace A087812

/-- `A063473(n+1)-A063473(A004526(n)+1)` -/
def P2941777492608297553.Spec : Prop :=
  ∀ n, P2941777492608297553.a n = A087812 (n + 1)

end A087812

/-! ## A087812.P3386732123782962914

`A002321(Δ[n²])-A002321(or(1, n))`
-/

namespace A087812.P3386732123782962914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A002321 (Nat.lor 1 n)

end

end A087812.P3386732123782962914

namespace A087812

/-- `A002321(Δ[n²])-A002321(or(1, n))` -/
def P3386732123782962914.Spec : Prop :=
  ∀ n, P3386732123782962914.a n = A087812 (n + 1)

end A087812

/-! ## A087812.P7660233126270278327

`A092149(2*(n+1))+A008683(n+1)`
-/

namespace A087812.P7660233126270278327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092149 (2 * (n + 1)) + A008683 (n + 1)

end

end A087812.P7660233126270278327

namespace A087812

/-- `A092149(2*(n+1))+A008683(n+1)` -/
def P7660233126270278327.Spec : Prop :=
  ∀ n, P7660233126270278327.a n = A087812 (n + 1)

end A087812

/-! ## A087812.P17433783294643942608

`A092149(2*(n+1))-A092152(2*(n+1))`
-/

namespace A087812.P17433783294643942608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092149 (2 * (n + 1)) - A092152 (2 * (n + 1))

end

end A087812.P17433783294643942608

namespace A087812

/-- `A092149(2*(n+1))-A092152(2*(n+1))` -/
def P17433783294643942608.Spec : Prop :=
  ∀ n, P17433783294643942608.a n = A087812 (n + 1)

end A087812

/-! ## A087812.P18185481637663543591

`A002321(2*(n+1))-A002321(abs(1-n)+1)`
-/

namespace A087812.P18185481637663543591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (2 * (n + 1)) - A002321 (|1 - (n : ℤ)| + 1).toNat

end

end A087812.P18185481637663543591

namespace A087812

/-- `A002321(2*(n+1))-A002321(abs(1-n)+1)` -/
def P18185481637663543591.Spec : Prop :=
  ∀ n, P18185481637663543591.a n = A087812 (n + 1)

end A087812

/-! ## A087812.P14633875274375350191

`(A002321(2*n+1)-A002321(or(1, n)))%(n+7)`
-/

namespace A087812.P14633875274375350191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002321 (2 * n + 1) - A002321 (Nat.lor 1 n)) (n + 7 : ℤ)

end

end A087812.P14633875274375350191

namespace A087812

/-- `(A002321(2*n+1)-A002321(or(1, n)))%(n+7)` -/
def P14633875274375350191.Spec : Prop :=
  ∀ n, P14633875274375350191.a n = A087812 (n + 1)

end A087812

/-! ## A087812.P16568596366231972239

`(A092149(A004277(n+1))+A008683(n+1))%C(n+3, 3)`
-/

namespace A087812.P16568596366231972239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092149 (A004277 (n + 1)).toNat + A008683 (n + 1)) (Nat.choose (n + 3) 3 : ℤ)

end

end A087812.P16568596366231972239

namespace A087812

/-- `(A092149(A004277(n+1))+A008683(n+1))%C(n+3, 3)` -/
def P16568596366231972239.Spec : Prop :=
  ∀ n, P16568596366231972239.a n = A087812 (n + 1)

end A087812

/-!
# A087813: (1/p)*(binomial(2p,p)-2^p) as p runs through the primes.

The programs for A087813, there is no canonical definition to state claims against.
-/

/-! ## A087813.P16224891611923861135

`A006173(A000040(n+1))`
-/

namespace A087813.P16224891611923861135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006173 (A000040 (n + 1)).toNat

end

end A087813.P16224891611923861135

/-! ## A087813.P11192856811081662664

`A006173(A049551(n+1))`
-/

namespace A087813.P11192856811081662664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006173 (A049551 (n + 1)).toNat

end

end A087813.P11192856811081662664

/-! ## A087813.P5594402274755846713

`A006173(A008864(n+1)-1)`
-/

namespace A087813.P5594402274755846713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006173 (A008864 (n + 1) - 1).toNat

end

end A087813.P5594402274755846713

/-! ## A087813.P9252670449746950761

`A006173(record[A361632(n+2)])`
-/

namespace A087813.P9252670449746950761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361632 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006173 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A087813.P9252670449746950761

/-! ## A087813.P2920566024811126815

`A006173(eq[1, A321452(n)])`
-/

namespace A087813.P2920566024811126815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006173 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A087813.P2920566024811126815

/-!
# A087815: Terms in A087816 that occur in a run of length more than 1.

The programs for A087815, there is no canonical definition to state claims against.
-/

/-! ## A087815.P3990031025161917303

`lt[0, A209641(n)%4]`
-/

namespace A087815.P3990031025161917303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209641 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A087815.P3990031025161917303

/-! ## A087815.P7243491593660205784

`lt[1, Δ[A087686(n+1)]]`
-/

namespace A087815.P7243491593660205784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A087815.P7243491593660205784

/-! ## A087815.P14552853544539317913

`∑[A265332(floor(acot(n)+n))]`
-/

namespace A087815.P14552853544539317913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265332 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087815.P14552853544539317913

/-! ## A087815.P10126997245835365914

`A266412(2*(n+1))-1`
-/

namespace A087815.P10126997245835365914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266412 (2 * (n + 1)) - 1

end

end A087815.P10126997245835365914

/-! ## A087815.P17019571714415946333

`eq[1, A265754(n+1)]+1`
-/

namespace A087815.P17019571714415946333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265754 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A087815.P17019571714415946333

/-! ## A087815.P6129495822813010095

`a(A080677(n)-1)+n` with `a(0)=1`
-/

namespace A087815.P6129495822813010095
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A080677 n - 1).toNat + n

end

end A087815.P6129495822813010095

/-! ## A087815.P15581427810343201340

`A265332(n)+a(n-1)` with `a(0)=1`
-/

namespace A087815.P15581427810343201340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A265332 n + a (n - 1)

end

end A087815.P15581427810343201340

/-! ## A087815.P17841773534091092650

`A051135(n)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A087815.P17841773534091092650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A051135 n + a (n - 1)

end

end A087815.P17841773534091092650

/-!
# A087816: a(n) = a(a(n-1)) + a(n - 1 - a(n-1)) with a(1) = a(2) = 1.

The programs for A087816, the canonical program `A087816.P18112214849068138881` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087816 has offset 1).

The definition of A087816 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080677, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A087816.P18112214849068138881

`A080677(n+2)-1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A087816

/-- `A080677(n+2)-1` -/
def P18112214849068138881.Spec : Prop :=
  ∀ n, P18112214849068138881.a n = A087816 (n + 1)

theorem P18112214849068138881.correct : P18112214849068138881.Spec := by
  intro n
  simp only [A087816, Nat.add_sub_cancel]

end A087816

/-! ## A087816.P8627015739177522306

`a(a(n-1)-1)+a(n-(a(n-1)+1))` with `a(0)=1, a(1)=1`
-/

namespace A087816.P8627015739177522306
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (a (n - 1) - 1) + a (n - (a (n - 1) + 1))

end

end A087816.P8627015739177522306

namespace A087816

/-- `a(a(n-1)-1)+a(n-(a(n-1)+1))` -/
def P8627015739177522306.Spec : Prop :=
  ∀ n, (P8627015739177522306.a n : ℤ) = A087816 (n + 1)

end A087816

/-! ## A087816.P9933965909090328202

`∑[1-A093879(n+1)]`
-/

namespace A087816.P9933965909090328202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A093879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087816.P9933965909090328202

namespace A087816

/-- `∑[1-A093879(n+1)]` -/
def P9933965909090328202.Spec : Prop :=
  ∀ n, P9933965909090328202.a n = A087816 (n + 1)

end A087816

/-! ## A087816.P324040862357146867

`∑[char[A087686(n+1)-2]]`
-/

namespace A087816.P324040862357146867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087686 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087816.P324040862357146867

namespace A087816

/-- `∑[char[A087686(n+1)-2]]` -/
def P324040862357146867.Spec : Prop :=
  ∀ n, (P324040862357146867.a n : ℤ) = A087816 (n + 1)

end A087816

/-! ## A087816.P18137087190793109257

`(n-A004074(n+2))/2+1`
-/

namespace A087816.P18137087190793109257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A004074 (n + 2) : ℚ) / 2 + 1

end

end A087816.P18137087190793109257

namespace A087816

/-- `(n-A004074(n+2))/2+1` -/
def P18137087190793109257.Spec : Prop :=
  ∀ n, P18137087190793109257.a n = (A087816 (n + 1) : ℚ)

end A087816

/-! ## A087816.P13164177997212418040

`A008619(n-A004074(n+2))`
-/

namespace A087816.P13164177997212418040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((n : ℤ) - A004074 (n + 2)).toNat

end

end A087816.P13164177997212418040

namespace A087816

/-- `A008619(n-A004074(n+2))` -/
def P13164177997212418040.Spec : Prop :=
  ∀ n, P13164177997212418040.a n = A087816 (n + 1)

end A087816

/-! ## A087816.P16285554526445775263

`A028242(n-A004074(n+2))`
-/

namespace A087816.P16285554526445775263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 ((n : ℤ) - A004074 (n + 2)).toNat

end

end A087816.P16285554526445775263

namespace A087816

/-- `A028242(n-A004074(n+2))` -/
def P16285554526445775263.Spec : Prop :=
  ∀ n, P16285554526445775263.a n = A087816 (n + 1)

end A087816

/-! ## A087816.P7570458688398782468

`A080513(n-A004074(n+2))`
-/

namespace A087816.P7570458688398782468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 ((n : ℤ) - A004074 (n + 2)).toNat

end

end A087816.P7570458688398782468

namespace A087816

/-- `A080513(n-A004074(n+2))` -/
def P7570458688398782468.Spec : Prop :=
  ∀ n, P7570458688398782468.a n = A087816 (n + 1)

end A087816

/-! ## A087816.P9425589182871370222

`A266349(n+1)+A053645(n+1)`
-/

namespace A087816.P9425589182871370222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266349 (n + 1) + A053645 (n + 1)

end

end A087816.P9425589182871370222

namespace A087816

/-- `A266349(n+1)+A053645(n+1)` -/
def P9425589182871370222.Spec : Prop :=
  ∀ n, P9425589182871370222.a n = A087816 (n + 1)

end A087816

/-! ## A087816.P14178136218204768828

`∑[abs(Δ[A080677(n+1)])]`
-/

namespace A087816.P14178136218204768828
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080677 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087816.P14178136218204768828

namespace A087816

/-- `∑[abs(Δ[A080677(n+1)])]` -/
def P14178136218204768828.Spec : Prop :=
  ∀ n, P14178136218204768828.a n = A087816 (n + 1)

end A087816

/-! ## A087816.P4043116999587599870

`∑[floor(atan(A051135(n+2)))]`
-/

namespace A087816.P4043116999587599870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A051135 (n + 2) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087816.P4043116999587599870

namespace A087816

/-- `∑[floor(atan(A051135(n+2)))]` -/
def P4043116999587599870.Spec : Prop :=
  ∀ n, P4043116999587599870.a n = A087816 (n + 1)

end A087816

/-! ## A087816.P10751748631202173453

`2-A004001(n+2)+n`
-/

namespace A087816.P10751748631202173453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A004001 (n + 2) + (n : ℤ)

end

end A087816.P10751748631202173453

namespace A087816

/-- `2-A004001(n+2)+n` -/
def P10751748631202173453.Spec : Prop :=
  ∀ n, P10751748631202173453.a n = A087816 (n + 1)

end A087816

/-! ## A087816.P13955521771555371278

`∑[A157928(A265332(n+2))]`
-/

namespace A087816.P13955521771555371278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (A265332 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087816.P13955521771555371278

namespace A087816

/-- `∑[A157928(A265332(n+2))]` -/
def P13955521771555371278.Spec : Prop :=
  ∀ n, P13955521771555371278.a n = A087816 (n + 1)

end A087816

/-! ## A087816.P2650796552776455295

`∑[A000045(Δ[A080677(n+1)])]`
-/

namespace A087816.P2650796552776455295
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080677 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087816.P2650796552776455295

namespace A087816

/-- `∑[A000045(Δ[A080677(n+1)])]` -/
def P2650796552776455295.Spec : Prop :=
  ∀ n, P2650796552776455295.a n = A087816 (n + 1)

end A087816

/-! ## A087816.P996945731672666458

`n+1-A209861(A266341(A209862(n+1)))`
-/

namespace A087816.P996945731672666458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A209861 (A266341 (A209862 (n + 1)).toNat).toNat

end

end A087816.P996945731672666458

namespace A087816

/-- `n+1-A209861(A266341(A209862(n+1)))` -/
def P996945731672666458.Spec : Prop :=
  ∀ n, P996945731672666458.a n = A087816 (n + 1)

end A087816

/-! ## A087816.P2488548771932112935

`A062050(A266349(n+1)+n)`
-/

namespace A087816.P2488548771932112935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (A266349 (n + 1) + (n : ℤ)).toNat

end

end A087816.P2488548771932112935

namespace A087816

/-- `A062050(A266349(n+1)+n)` -/
def P2488548771932112935.Spec : Prop :=
  ∀ n, P2488548771932112935.a n = A087816 (n + 1)

end A087816

/-! ## A087816.P12396341761112925229

`∑[A000035(A267111(n+2)+1)]`
-/

namespace A087816.P12396341761112925229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A267111 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087816.P12396341761112925229

namespace A087816

/-- `∑[A000035(A267111(n+2)+1)]` -/
def P12396341761112925229.Spec : Prop :=
  ∀ n, P12396341761112925229.a n = A087816 (n + 1)

end A087816

/-! ## A087816.P3062807836737304796

`∑[A276441(n+2)%2]`
-/

namespace A087816.P3062807836737304796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276441 (n + 2)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087816.P3062807836737304796

namespace A087816

/-- `∑[A276441(n+2)%2]` -/
def P3062807836737304796.Spec : Prop :=
  ∀ n, P3062807836737304796.a n = A087816 (n + 1)

end A087816

/-! ## A087816.P13136127343365894994

`∑[1-A010060(A276445(n+2))]`
-/

namespace A087816.P13136127343365894994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010060 (A276445 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087816.P13136127343365894994

namespace A087816

/-- `∑[1-A010060(A276445(n+2))]` -/
def P13136127343365894994.Spec : Prop :=
  ∀ n, P13136127343365894994.a n = A087816 (n + 1)

end A087816

/-! ## A087816.P2377627232072608712

`A267110(A088359(n+2)-(n+2))`
-/

namespace A087816.P2377627232072608712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267110 (A088359 (n + 2) - (n + 2 : ℤ)).toNat

end

end A087816.P2377627232072608712

namespace A087816

/-- `A267110(A088359(n+2)-(n+2))` -/
def P2377627232072608712.Spec : Prop :=
  ∀ n, P2377627232072608712.a n = A087816 (n + 1)

end A087816

/-!
# A087823: a(1) = a(2) = 1; for n > 2, a(n) = a(a(a(n-2))) + a(n-a(n-2)).

The programs for A087823, the canonical program `A087823.P9559590851994368609` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087823 has offset 1).

The definition of A087823 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087823.P9559590851994368609

`a(n-a(n-2))+a(a(a(n-2)-1)-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A087823

/-- `a(n-a(n-2))+a(a(a(n-2)-1)-1)` -/
def P9559590851994368609.Spec : Prop :=
  ∀ n, (P9559590851994368609.a n : ℤ) = A087823 (n + 1)

theorem P9559590851994368609.correct : P9559590851994368609.Spec := by
  intro n
  simp only [A087823, Nat.add_sub_cancel]

end A087823

/-! ## A087823.P15694515636728956401

`A000523(A218572(n)+A084937(n+1))`
-/

namespace A087823.P15694515636728956401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A218572 (n + 11) + A084937 (n + 1)).toNat

end

end A087823.P15694515636728956401

namespace A087823

/-- `A000523(A218572(n)+A084937(n+1))` -/
def P15694515636728956401.Spec : Prop :=
  ∀ n, P15694515636728956401.a n = A087823 (n + 1)

end A087823

/-! ## A087823.P4237128719016510357

`round(log(A182995(n+1)/((n%4)!%3+n)))`
-/

namespace A087823.P4237128719016510357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log ((A182995 (n + 1) : ℚ) / ((Nat.factorial (n % 4) % 3 + n : ℕ) : ℚ) : ℝ))

end

end A087823.P4237128719016510357

namespace A087823

/-- `round(log(A182995(n+1)/((n%4)!%3+n)))` -/
def P4237128719016510357.Spec : Prop :=
  ∀ n, P4237128719016510357.a n = A087823 (n + 1)

end A087823

/-! ## A087823.P16134077683484523477

`A130822(∑[A290103(A281965(n))])`
-/

namespace A087823.P16134077683484523477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (A281965 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130822 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A087823.P16134077683484523477

namespace A087823

/-- `A130822(∑[A290103(A281965(n))])` -/
def P16134077683484523477.Spec : Prop :=
  ∀ n, P16134077683484523477.a n = A087823 (n + 1)

end A087823

/-! ## A087823.P8759155088055604671

`A003056(∑[A185316(A087808(n))])`
-/

namespace A087823.P8759155088055604671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185316 (A087808 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A087823.P8759155088055604671

namespace A087823

/-- `A003056(∑[A185316(A087808(n))])` -/
def P8759155088055604671.Spec : Prop :=
  ∀ n, P8759155088055604671.a n = A087823 (n + 1)

end A087823

/-!
# A087824: a(n) = number of times n occurs in A087817.

The programs for A087824, there is no canonical definition to state claims against.
-/

/-! ## A087824.P2172561821010386463

`A023133(A072189(n)+1+n)`
-/

namespace A087824.P2172561821010386463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023133 (A072189 n + 1 + (n : ℤ)).toNat

end

end A087824.P2172561821010386463

/-! ## A087824.P16466861826844149452

`A023133(n+1)+A000122((3*n+1)*10*n)`
-/

namespace A087824.P16466861826844149452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023133 (n + 1) + A000122 ((3 * n + 1) * (10 * n))

end

end A087824.P16466861826844149452

/-! ## A087824.P5903182832737178245

`A023133(n+1)+A000007(A023109(n))`
-/

namespace A087824.P5903182832737178245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023133 (n + 1) + A000007 (A023109 n).toNat

end

end A087824.P5903182832737178245

/-! ## A087824.P4116938772328812412

`A101455(A087997(n+1))+A023133(n+1)`
-/

namespace A087824.P4116938772328812412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 (A087997 (n + 1)).toNat + A023133 (n + 1)

end

end A087824.P4116938772328812412

/-!
# A087825: a(n) = number of times n occurs in A087823.

The programs for A087825, there is no canonical definition to state claims against.
-/

/-! ## A087825.P12158579218243983618

`A000700(n+1)+A000002(A298119(2*(n+2)))`
-/

namespace A087825.P12158579218243983618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (n + 1) + A000002 (A298119 (2 * (n + 2))).toNat

end

end A087825.P12158579218243983618

/-! ## A087825.P1699914657559192233

`A007895(A291719(3*n+5)+A005836(3*n+4))`
-/

namespace A087825.P1699914657559192233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A291719 (3 * n + 5) + A005836 (3 * n + 4)).toNat

end

end A087825.P1699914657559192233

/-! ## A087825.P8624357688531100092

`A322338(A017017(n))+A133801(n+1)`
-/

namespace A087825.P8624357688531100092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322338 (A017017 n).toNat + A133801 (n + 1)

end

end A087825.P8624357688531100092

/-!
# A087826: a(n) = a(n-a(n-1)) + a(a(n-a(n-2))).

The programs for A087826, the canonical program `A087826.P2960150435277069079` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087826 has offset 1).

The definition of A087826 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087826.P2960150435277069079

`a(n-a(n-1))+a(a(n-a(n-2))-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A087826

/-- `a(n-a(n-1))+a(a(n-a(n-2))-1)` -/
def P2960150435277069079.Spec : Prop :=
  ∀ n, (P2960150435277069079.a n : ℤ) = A087826 (n + 1)

theorem P2960150435277069079.correct : P2960150435277069079.Spec := by
  intro n
  simp only [A087826, Nat.add_sub_cancel]

end A087826

/-!
# A087831: a(n) = a(abs(n-a(n-1))) + a(a(abs(n-a(n-4)))) if n>4, a(n) = 1 otherwise.

The programs for A087831, the canonical program `A087831.P3426740610933966246` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087831 has offset 0).

The definition of A087831 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(abs(n-a(n-1)))+a(a(abs(n-a(n-4))))` (program `A087831.P3426740610933966246`, by `A087831.P3426740610933966246.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A087831.P3426740610933966246

`a(abs(n-a(n-1)))+a(a(abs(n-a(n-4))))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A087831

/-- `a(abs(n-a(n-1)))+a(a(abs(n-a(n-4))))` -/
def P3426740610933966246.Spec : Prop :=
  ∀ n, (P3426740610933966246.a n : ℤ) = A087831 n

theorem P3426740610933966246.correct : P3426740610933966246.Spec := by
  intro n
  simp only [A087831]

end A087831

/-! ## A087831.P16928695210920774257

`a(n-a(n-1))+a(a(n-a(n-4)))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A087831.P16928695210920774257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 1] fun n a =>
  a (n - a (n - 1)) + a (a (n - a (n - 4)))

end

end A087831.P16928695210920774257

namespace A087831

/-- `a(n-a(n-1))+a(a(n-a(n-4)))` -/
def P16928695210920774257.Spec : Prop :=
  ∀ n, (P16928695210920774257.a n : ℤ) = A087831 n

end A087831

/-!
# A087834: a[n] =a[a[a[n-1]]] + a[n -1- a[n-2]].

The programs for A087834, there is no canonical definition to state claims against.
-/

/-! ## A087834.P11769888094833156883

`∑[A298934(p?[A131967(n+3)])]`
-/

namespace A087834.P11769888094833156883
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131967 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298934 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087834.P11769888094833156883

/-! ## A087834.P5736956512318328262

`A055980(A177263(n+1)+A085195(n))`
-/

namespace A087834.P5736956512318328262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055980 (A177263 (n + 1) + A085195 n).toNat

end

end A087834.P5736956512318328262

/-! ## A087834.P15949749869070581204

`∑[A186719(A177853(A167289(n+1)))]`
-/

namespace A087834.P15949749869070581204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186719 (A177853 (A167289 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087834.P15949749869070581204

/-! ## A087834.P17963306137089670522

`∑[A051731(n+1)*A054521(A246695(n))]`
-/

namespace A087834.P17963306137089670522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A054521 (A246695 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087834.P17963306137089670522

/-!
# A087836: a(n) = a(a(a(a(n-1)))) + a(n - a(n-1)) with a(1)=a(2)=1.

The programs for A087836, there is no canonical definition to state claims against.
-/

/-! ## A087836.P753104679132720190

`∑[A010054(A106179(n+2)+n)]`
-/

namespace A087836.P753104679132720190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A106179 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087836.P753104679132720190

/-! ## A087836.P10200294208850881699

`A107436(n+1)+A102681(A330195(n))`
-/

namespace A087836.P10200294208850881699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107436 (n + 1) + A102681 (A330195 n).toNat

end

end A087836.P10200294208850881699

/-! ## A087836.P11866683010779790948

`gcd(∏[n+2]/2, round(sqrt(2*n)))`
-/

namespace A087836.P11866683010779790948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2)) (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)))

end

end A087836.P11866683010779790948

/-! ## A087836.P12492495072580229867

`round(sqrt(2*A352520(n)+1))`
-/

namespace A087836.P12492495072580229867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A352520 n + 1 : ℝ))

end

end A087836.P12492495072580229867

/-! ## A087836.P10796517265326608687

`A136673(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A087836.P10796517265326608687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A136673 n + a (n - 3)

end

end A087836.P10796517265326608687

/-! ## A087836.P8197264057481829886

`A002024(A352520(n)+1)`
-/

namespace A087836.P8197264057481829886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A352520 n + 1).toNat

end

end A087836.P8197264057481829886

/-! ## A087836.P6216188370463250927

`round(sqrt(A096603(n+1)))`
-/

namespace A087836.P6216188370463250927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A096603 (n + 1) : ℝ))

end

end A087836.P6216188370463250927

/-! ## A087836.P2731319989014997808

`round(sqrt(A098177(n+1)))`
-/

namespace A087836.P2731319989014997808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A098177 (n + 1) : ℝ))

end

end A087836.P2731319989014997808

/-! ## A087836.P14550061601449987266

`round(sqrt(A131396(n+1)))`
-/

namespace A087836.P14550061601449987266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A131396 (n + 1) : ℝ))

end

end A087836.P14550061601449987266

/-! ## A087836.P18232750916281088087

`floor(sqrt(A136272(n+1)))`
-/

namespace A087836.P18232750916281088087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A136272 (n + 1))

end

end A087836.P18232750916281088087

/-!
# A087838: a[n] =a[a[a[a[n-2]]]]+ a[n - a[n-2]].

The programs for A087838, there is no canonical definition to state claims against.
-/

/-! ## A087838.P16017760927376446277

`A000194(A008611(n)+record[A132426(n+1)])`
-/

namespace A087838.P16017760927376446277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132426 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A008611 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A087838.P16017760927376446277

/-! ## A087838.P13222662904309339160

`A081604(∑[A029837(3*n+1)*A109449(n)])`
-/

namespace A087838.P13222662904309339160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (3 * n + 1) * A109449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A087838.P13222662904309339160

/-!
# A087839: a(n) = a(a(a(a(a(n-2))))) + a(n - a(n-2)).

The programs for A087839, the canonical program `A087839.P6831167784717967391` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087839 has offset 1).

The definition of A087839 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087839.P6831167784717967391

`A121934(n+1)%A003057(n+2)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A087839

/-- `A121934(n+1)%A003057(n+2)` -/
def P6831167784717967391.Spec : Prop :=
  ∀ n, P6831167784717967391.a n = A087839 (n + 1)

theorem P6831167784717967391.correct : P6831167784717967391.Spec := by
  intro n
  simp only [A087839, Nat.add_sub_cancel]

end A087839

/-! ## A087839.P17985813539815831970

`comp[∑[n]]%(n+2)-A057428(A029138(n))`
-/

namespace A087839.P17985813539815831970
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % (n + 2) : ℕ) : ℤ) - A057428 (A029138 n).toNat

end

end A087839.P17985813539815831970

namespace A087839

/-- `comp[∑[n]]%(n+2)-A057428(A029138(n))` -/
def P17985813539815831970.Spec : Prop :=
  ∀ n, P17985813539815831970.a n = A087839 (n + 1)

end A087839

/-! ## A087839.P3913112968426893646

`A267848(A005384(n+1))+A003056(n)`
-/

namespace A087839.P3913112968426893646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267848 (A005384 (n + 1)).toNat + A003056 n

end

end A087839.P3913112968426893646

namespace A087839

/-- `A267848(A005384(n+1))+A003056(n)` -/
def P3913112968426893646.Spec : Prop :=
  ∀ n, P3913112968426893646.a n = A087839 (n + 1)

end A087839

/-! ## A087839.P5301917794680362805

`A121373(A001748(3*n+4))+A002024(n+1)`
-/

namespace A087839.P5301917794680362805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A001748 (3 * n + 4)).toNat + A002024 (n + 1)

end

end A087839.P5301917794680362805

namespace A087839

/-- `A121373(A001748(3*n+4))+A002024(n+1)` -/
def P5301917794680362805.Spec : Prop :=
  ∀ n, P5301917794680362805.a n = A087839 (n + 1)

end A087839

/-! ## A087839.P18235882840084839306

`A144328(∑[A010054(n)+n]+1)`
-/

namespace A087839.P18235882840084839306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A087839.P18235882840084839306

namespace A087839

/-- `A144328(∑[A010054(n)+n]+1)` -/
def P18235882840084839306.Spec : Prop :=
  ∀ n, P18235882840084839306.a n = A087839 (n + 1)

end A087839

/-! ## A087839.P2512300686192409492

`A002024(n+1)/A051340(A000124(n))`
-/

namespace A087839.P2512300686192409492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) : ℚ) / (A051340 (A000124 n).toNat : ℚ)

end

end A087839.P2512300686192409492

namespace A087839

/-- `A002024(n+1)/A051340(A000124(n))` -/
def P2512300686192409492.Spec : Prop :=
  ∀ n, P2512300686192409492.a n = (A087839 (n + 1) : ℚ)

end A087839

/-! ## A087839.P4980094128809943074

`A267848(n²)+A003056(n)`
-/

namespace A087839.P4980094128809943074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267848 (n ^ 2) + A003056 n

end

end A087839.P4980094128809943074

namespace A087839

/-- `A267848(n²)+A003056(n)` -/
def P4980094128809943074.Spec : Prop :=
  ∀ n, P4980094128809943074.a n = A087839 (n + 1)

end A087839

/-! ## A087839.P14073107427754129816

`A000194(A000194(A213077(n))+n+1)`
-/

namespace A087839.P14073107427754129816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A000194 (A213077 n).toNat + (n + 1 : ℤ)).toNat

end

end A087839.P14073107427754129816

namespace A087839

/-- `A000194(A000194(A213077(n))+n+1)` -/
def P14073107427754129816.Spec : Prop :=
  ∀ n, P14073107427754129816.a n = A087839 (n + 1)

end A087839

/-!
# A087840: Sequence of primes P(i) such that j*P(i)# - P(i+1) and j*P(i)# + P(i+1) are consecutive primes with 0 < j < P(i+1).

The programs for A087840, there is no canonical definition to state claims against.
-/

/-! ## A087840.P10349359753636631456

`p?[A162189(3*n+2)-(A162202(3*(n+1))+1)]`
-/

namespace A087840.P10349359753636631456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162189 (3 * n + 2) - (A162202 (3 * (n + 1)) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087840.P10349359753636631456

/-!
# A087842: a(n) = a(a(a(n - a(n-1)))) + a(n - a(n-2)).

The programs for A087842, there is no canonical definition to state claims against.
-/

/-! ## A087842.P5953288977498140905

`A320656(A320681(n+7))+A000720(n+1)`
-/

namespace A087842.P5953288977498140905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320656 (A320681 (n + 7)).toNat + A000720 (n + 1)

end

end A087842.P5953288977498140905

/-! ## A087842.P17415039698666932502

`A096268(A155118(A285275(n+1)))+A000720(n+1)`
-/

namespace A087842.P17415039698666932502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 (A155118 (A285275 (n + 1)).toNat).toNat + A000720 (n + 1)

end

end A087842.P17415039698666932502

/-! ## A087842.P2740148115865526545

`A238598(A155761(n)+∑[A346697(n+1)])`
-/

namespace A087842.P2740148115865526545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238598 (A155761 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A087842.P2740148115865526545

/-! ## A087842.P9127848654617764764

`A101349(A092193(n+2))+A000720(n+1)`
-/

namespace A087842.P9127848654617764764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101349 (A092193 (n + 2)).toNat + A000720 (n + 1)

end

end A087842.P9127848654617764764

/-! ## A087842.P10588096149497726475

`A171588(A199636(3*n+7))+A000720(n+1)`
-/

namespace A087842.P10588096149497726475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171588 (A199636 (3 * n + 7)).toNat + A000720 (n + 1)

end

end A087842.P10588096149497726475

/-!
# A087845: a[n] =a[Min[n-1,Abs[n - a[n-1]]]] + a[a[a[Abs[n - a[n-3]]]]].

The programs for A087845, there is no canonical definition to state claims against.
-/

/-! ## A087845.P4330040617944369426

`floor(log2(or(2, A086070(n+1))))`
-/

namespace A087845.P4330040617944369426
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (Int.lor 2 (A086070 (n + 1))).toNat

end

end A087845.P4330040617944369426

/-! ## A087845.P15527589252048353672

`lt[n, A332363(n+2)]-(n-1)`
-/

namespace A087845.P15527589252048353672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332363 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - ((n : ℤ) - 1)

end

end A087845.P15527589252048353672

/-! ## A087845.P4357922903056766690

`lt[n-2, A241168(n+1)]-n+1`
-/

namespace A087845.P4357922903056766690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - (n : ℤ) + 1

end

end A087845.P4357922903056766690

/-! ## A087845.P61643809640904851

`A244317(A318155(n))`
-/

namespace A087845.P61643809640904851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244317 (A318155 n).toNat

end

end A087845.P61643809640904851

/-! ## A087845.P11113624342710464241

`A255270(A298029(∑[n]))`
-/

namespace A087845.P11113624342710464241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 (A298029 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A087845.P11113624342710464241

/-!
# A087847: a(n) = a(|n - a(n-1)|) + a(a(a(|n - a(n-4)|))).

The programs for A087847, there is no canonical definition to state claims against.
-/

/-! ## A087847.P16399927615041299563

`A081604(A361852(n+4)-A080197(2*(n+2)))`
-/

namespace A087847.P16399927615041299563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A361852 (n + 4) - A080197 (2 * (n + 2))).toNat

end

end A087847.P16399927615041299563

/-! ## A087847.P12038875835005150679

`A185679(A218570(n+9))`
-/

namespace A087847.P12038875835005150679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185679 (A218570 (n + 9)).toNat

end

end A087847.P12038875835005150679

/-! ## A087847.P6566893216258594204

`A084556(A237714(n+1))`
-/

namespace A087847.P6566893216258594204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084556 (A237714 (n + 1)).toNat

end

end A087847.P6566893216258594204

/-! ## A087847.P4568965956869490853

`A069624(A332638(n))`
-/

namespace A087847.P4568965956869490853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069624 (A332638 n).toNat

end

end A087847.P4568965956869490853

/-! ## A087847.P17084430012359474473

`A285481(A051040(n+1))`
-/

namespace A087847.P17084430012359474473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285481 (A051040 (n + 1)).toNat

end

end A087847.P17084430012359474473

/-!
# A087849: a(n) = a(a(a(n-1))) + abs(2*a(n-1)-n) starting with 1,1.

The programs for A087849, there is no canonical definition to state claims against.
-/

/-! ## A087849.P6635422734427157955

`A185284(A035607(n))+A087850(n+1)`
-/

namespace A087849.P6635422734427157955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A035607 n).toNat + A087850 (n + 1)

end

end A087849.P6635422734427157955

/-! ## A087849.P9967455063310359905

`A185238(A096956(n))+A087850(n+1)`
-/

namespace A087849.P9967455063310359905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 (A096956 n).toNat + A087850 (n + 1)

end

end A087849.P9967455063310359905

/-! ## A087849.P2968799050717430704

`A107846(A181586(n))+A087850(n+1)`
-/

namespace A087849.P2968799050717430704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A181586 n).toNat + A087850 (n + 1)

end

end A087849.P2968799050717430704

/-! ## A087849.P10042184319422509385

`A185238(A123349(n))+A087850(n+1)`
-/

namespace A087849.P10042184319422509385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 (A123349 n).toNat + A087850 (n + 1)

end

end A087849.P10042184319422509385

/-! ## A087849.P2245313261541266140

`A185238(A187503(n))+A087850(n+1)`
-/

namespace A087849.P2245313261541266140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 (A187503 n).toNat + A087850 (n + 1)

end

end A087849.P2245313261541266140

/-!
# A087850: a(n) = a(a(a(a(a(n-1))))) + abs(2*a(n-1)-n).

The programs for A087850, there is no canonical definition to state claims against.
-/

/-! ## A087850.P10912723488509509166

`A087849(n+1)-A185238(A096956(n))`
-/

namespace A087850.P10912723488509509166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087849 (n + 1) - A185238 (A096956 n).toNat

end

end A087850.P10912723488509509166

/-! ## A087850.P7502167543771283483

`A087849(n+1)-A107846(A181586(n))`
-/

namespace A087850.P7502167543771283483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087849 (n + 1) - A107846 (A181586 n).toNat

end

end A087850.P7502167543771283483

/-! ## A087850.P11399992462986433244

`A087849(n+1)-A185238(A123349(n))`
-/

namespace A087850.P11399992462986433244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087849 (n + 1) - A185238 (A123349 n).toNat

end

end A087850.P11399992462986433244

/-!
# A087851: a(n) = abs(a(n-1) - floor(n*phi)), where phi=(1+sqrt(5))/2, with a(1) = a(2) = 1.

The programs for A087851, the canonical program `A087851.P1286531590995797042` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087851 has offset 1).

The definition of A087851 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087851.P5242547999093009696

`floor(ϕ*(n+1)-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A087851.P5242547999093009696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌊Real.goldenRatio * (n + 1 : ℝ) - (a (n - 1) : ℝ)⌋

end

end A087851.P5242547999093009696

namespace A087851

/-- `floor(ϕ*(n+1)-a(n-1))` -/
def P5242547999093009696.Spec : Prop :=
  ∀ n, P5242547999093009696.a n = A087851 (n + 1)

end A087851

/-! ## A087851.P324584639003209343

`Δ[ceil(ϕ*n)]+a(n-2)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A087851.P324584639003209343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  f1 (n + 1) - f1 n + a (n - 2)

end

end A087851.P324584639003209343

namespace A087851

/-- `Δ[ceil(ϕ*n)]+a(n-2)` -/
def P324584639003209343.Spec : Prop :=
  ∀ n, P324584639003209343.a n = A087851 (n + 1)

end A087851

/-! ## A087851.P18287871230402187292

`-ceil(a(n-1)-ϕ*(n+1))` with `a(0)=1, a(1)=1`
-/

namespace A087851.P18287871230402187292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  -⌈(a (n - 1) : ℝ) - Real.goldenRatio * (n + 1 : ℝ)⌉

end

end A087851.P18287871230402187292

namespace A087851

/-- `-ceil(a(n-1)-ϕ*(n+1))` -/
def P18287871230402187292.Spec : Prop :=
  ∀ n, P18287871230402187292.a n = A087851 (n + 1)

end A087851

/-! ## A087851.P15337992097234771841

`abs(comp[floor(n*ϕ²)]-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A087851.P15337992097234771841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  |(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - a (n - 1)|

end

end A087851.P15337992097234771841

namespace A087851

/-- `abs(comp[floor(n*ϕ²)]-a(n-1))` -/
def P15337992097234771841.Spec : Prop :=
  ∀ n, P15337992097234771841.a n = A087851 (n + 1)

end A087851

/-! ## A087851.P5092220711318074811

`ceil(ϕ*(n+1))-a(n-1)-1` with `a(0)=1, a(1)=1`
-/

namespace A087851.P5092220711318074811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌈Real.goldenRatio * (n + 1 : ℝ)⌉ - a (n - 1) - 1

end

end A087851.P5092220711318074811

namespace A087851

/-- `ceil(ϕ*(n+1))-a(n-1)-1` -/
def P5092220711318074811.Spec : Prop :=
  ∀ n, P5092220711318074811.a n = A087851 (n + 1)

end A087851

/-! ## A087851.P4771889118528841457

`Δ[a(n-2)+floor(n/(ϕ-1))]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A087851.P4771889118528841457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  f1 (n - 2) + ⌊(n : ℝ) / (Real.goldenRatio - 1)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087851.P4771889118528841457

namespace A087851

/-- `Δ[a(n-2)+floor(n/(ϕ-1))]` -/
def P4771889118528841457.Spec : Prop :=
  ∀ n, P4771889118528841457.a n = A087851 (n + 1)

end A087851

/-! ## A087851.P1286531590995797042

`a(n-2)+A001468(n)` with `a(0)=1, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A087851

/-- `a(n-2)+A001468(n)` -/
def P1286531590995797042.Spec : Prop :=
  ∀ n, P1286531590995797042.a n = A087851 (n + 1)

theorem P1286531590995797042.correct : P1286531590995797042.Spec := by
  intro n
  simp only [A087851, Nat.add_sub_cancel]

end A087851

/-! ## A087851.P17912941392100293786

`abs(∑[A000201(n+1)*A105812(n)])`
-/

namespace A087851.P17912941392100293786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1) * A105812 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A087851.P17912941392100293786

namespace A087851

/-- `abs(∑[A000201(n+1)*A105812(n)])` -/
def P17912941392100293786.Spec : Prop :=
  ∀ n, P17912941392100293786.a n = A087851 (n + 1)

end A087851

/-! ## A087851.P16816414066669761400

`A129229(n+1)+A105812(n+1)`
-/

namespace A087851.P16816414066669761400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129229 (n + 1) + A105812 (n + 1)

end

end A087851.P16816414066669761400

namespace A087851

/-- `A129229(n+1)+A105812(n+1)` -/
def P16816414066669761400.Spec : Prop :=
  ∀ n, P16816414066669761400.a n = A087851 (n + 1)

end A087851

/-!
# A087854: Triangle read by rows: T(n,k) is the number of n-bead necklaces with exactly k different colored beads.

The programs for A087854, there is no canonical definition to state claims against.
-/

/-! ## A087854.P13480055648518351603

`A305541(n+1)+A273891(n+1)`
-/

namespace A087854.P13480055648518351603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305541 (n + 1) + A273891 (n + 1)

end

end A087854.P13480055648518351603

/-! ## A087854.P15237475288982312825

`A305541(n+1)+A214306(n+1)/A135278(n)`
-/

namespace A087854.P15237475288982312825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305541 (n + 1) : ℚ) + (A214306 (n + 1) : ℚ) / (A135278 n : ℚ)

end

end A087854.P15237475288982312825

/-! ## A087854.P10461907749104981801

`A305541(n+1)+A214306(n+1)/A074909(n+1)`
-/

namespace A087854.P10461907749104981801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305541 (n + 1) : ℚ) + (A214306 (n + 1) : ℚ) / (A074909 (n + 1) : ℚ)

end

end A087854.P10461907749104981801

/-! ## A087854.P1896061093209118908

`A305541(n+1)+A214306(n+1)/A007318(A014132(n+1))`
-/

namespace A087854.P1896061093209118908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305541 (n + 1) : ℚ) + (A214306 (n + 1) : ℚ) / (A007318 (A014132 (n + 1)).toNat : ℚ)

end

end A087854.P1896061093209118908

/-! ## A087854.P7005960630861954904

`A213935(n+1)/A135278(n)`
-/

namespace A087854.P7005960630861954904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213935 (n + 1) : ℚ) / (A135278 n : ℚ)

end

end A087854.P7005960630861954904

/-! ## A087854.P5384986370228041250

`A213935(n+1)/A074909(n+1)`
-/

namespace A087854.P5384986370228041250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213935 (n + 1) : ℚ) / (A074909 (n + 1) : ℚ)

end

end A087854.P5384986370228041250

/-! ## A087854.P633127913345067064

`A213935(n+1)/A007318(A014132(n+1))`
-/

namespace A087854.P633127913345067064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213935 (n + 1) : ℚ) / (A007318 (A014132 (n + 1)).toNat : ℚ)

end

end A087854.P633127913345067064

/-!
# A087855: a(n) = number of values k such that A086567(k) = n.

The programs for A087855, there is no canonical definition to state claims against.
-/

/-! ## A087855.P16249416092562547729

`A124737(A124750(n)+A033950(n+1))`
-/

namespace A087855.P16249416092562547729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124737 (A124750 n + A033950 (n + 1)).toNat

end

end A087855.P16249416092562547729

/-! ## A087855.P17178224437696049227

`A060130((n-1)^A000283(floor(sqrt(n))))`
-/

namespace A087855.P17178224437696049227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) ^ (A000283 (Nat.sqrt n) : ℤ))).toNat

end

end A087855.P17178224437696049227

/-! ## A087855.P17253475853682403342

`A001221(A109389(n)+A035047(n+1))`
-/

namespace A087855.P17253475853682403342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A109389 n + A035047 (n + 1)).toNat

end

end A087855.P17253475853682403342

/-! ## A087855.P497511990961398321

`A001221(abs(A323978(n)+A001333(n)))`
-/

namespace A087855.P497511990961398321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 |A323978 n + A001333 n|.toNat

end

end A087855.P497511990961398321

/-! ## A087855.P16178264252415605157

`A076493(A235310(n+1)+A014486(n))`
-/

namespace A087855.P16178264252415605157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076493 (A235310 (n + 1) + A014486 n).toNat

end

end A087855.P16178264252415605157

/-!
# A087856: Primes of the form 16*m^2 + 25, m=1,3,5,...

The programs for A087856, there is no canonical definition to state claims against.
-/

/-! ## A087856.P8024466482071724439

`∩[A087857(n+1), A142943(n+1)]`
-/

namespace A087856.P8024466482071724439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087856.P8024466482071724439

/-! ## A087856.P5240906241138478087

`∩[A142943(n+1), A346145(n+1)]`
-/

namespace A087856.P5240906241138478087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087856.P5240906241138478087

/-! ## A087856.P3909590856565137559

`∩[A087857(n+1), A142038(n+1)]`
-/

namespace A087856.P3909590856565137559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087856.P3909590856565137559

/-! ## A087856.P14430646133878043305

`∩[A142038(n+1), A346145(n+1)]`
-/

namespace A087856.P14430646133878043305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087856.P14430646133878043305

/-! ## A087856.P6331851570723939367

`∩[A087857(n+1), A105389(n+1)]`
-/

namespace A087856.P6331851570723939367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087856.P6331851570723939367

/-!
# A087857: Primes of the form 16*m^2 + 25 for m=1,2,3,...

The programs for A087857, there is no canonical definition to state claims against.
-/

/-! ## A087857.P15010443255526790901

`∩[A105126(n+1), A346145(n+1)]`
-/

namespace A087857.P15010443255526790901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087857.P15010443255526790901

/-! ## A087857.P14813062146702728878

`∩[A107145(n+1), A346145(n+1)]`
-/

namespace A087857.P14813062146702728878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087857.P14813062146702728878

/-! ## A087857.P16405853125779524382

`p?[(4*n)²+25]`
-/

namespace A087857.P16405853125779524382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * n) ^ 2 + 25

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A087857.P16405853125779524382

/-! ## A087857.P4388751069131994742

`∩[A007519(n+1), A346145(n+1)]`
-/

namespace A087857.P4388751069131994742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087857.P4388751069131994742

/-! ## A087857.P9053490342477996745

`∩[A033201(n+1), A346145(n+1)]`
-/

namespace A087857.P9053490342477996745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087857.P9053490342477996745

/-! ## A087857.P4004336764050491193

`∩[A045390(n+1), A346145(n+1)]`
-/

namespace A087857.P4004336764050491193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087857.P4004336764050491193

/-! ## A087857.P140758071768725775

`∩[A141180(n+1), A346145(n+1)]`
-/

namespace A087857.P140758071768725775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087857.P140758071768725775

/-! ## A087857.P2251781876272717539

`∩[A209544(n+1), A346145(n+1)]`
-/

namespace A087857.P2251781876272717539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087857.P2251781876272717539

/-! ## A087857.P13858570117537980132

`∩[A279392(n+1), A346145(n+1)]`
-/

namespace A087857.P13858570117537980132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087857.P13858570117537980132

/-! ## A087857.P1103669759352369921

`∩[A004625(n+1), A346145(n+1)]`
-/

namespace A087857.P1103669759352369921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087857.P1103669759352369921

/-!
# A087858: Lesser of twin primes p such that 2^p-1 is prime.

The programs for A087858, there is no canonical definition to state claims against.
-/

/-! ## A087858.P11127533005767489619

`A077800(ceil(sqrt(7^n)))`
-/

namespace A087858.P11127533005767489619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077800 ⌈Real.sqrt (7 ^ n : ℝ)⌉.toNat

end

end A087858.P11127533005767489619

/-!
# A087860: Expansion of e.g.f.: (1-exp(x/(x-1)))/(1-x).

The programs for A087860, there is no canonical definition to state claims against.
-/

/-! ## A087860.P13293246939098046371

`n!-A009940(n)`
-/

namespace A087860.P13293246939098046371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A009940 n

end

end A087860.P13293246939098046371

/-! ## A087860.P16615858013209112173

`A066668(n-1)+n*a(n-1)` with `a(0)=0`
-/

namespace A087860.P16615858013209112173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A066668 (n - 1) + (n : ℤ) * a (n - 1)

end

end A087860.P16615858013209112173

/-! ## A087860.P10965615164521672949

`A000142(n)-A009940(n)`
-/

namespace A087860.P10965615164521672949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A009940 n

end

end A087860.P10965615164521672949

/-! ## A087860.P4875238575302219807

`A028421(∑[n])-A009940(n)`
-/

namespace A087860.P4875238575302219807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028421 (∑ j ∈ Finset.range (n + 1), f1 j) - A009940 n

end

end A087860.P4875238575302219807

/-! ## A087860.P9411365769501747070

`A047920(∑[n])-A009940(n)`
-/

namespace A087860.P9411365769501747070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (∑ j ∈ Finset.range (n + 1), f1 j) - A009940 n

end

end A087860.P9411365769501747070

/-! ## A087860.P1897136138257043838

`Δ[A003422(n)]-A009940(n)`
-/

namespace A087860.P1897136138257043838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A009940 n

end

end A087860.P1897136138257043838

/-! ## A087860.P9579900498252014359

`∏[A028310(n)]-A009940(n)`
-/

namespace A087860.P9579900498252014359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A009940 n

end

end A087860.P9579900498252014359

/-! ## A087860.P4351347198770809583

`A021009(∑[n])-A009940(n)`
-/

namespace A087860.P4351347198770809583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021009 (∑ j ∈ Finset.range (n + 1), f1 j) - A009940 n

end

end A087860.P4351347198770809583

/-! ## A087860.P16836225033397906381

`A000142(n)+A331326(n)-A331325(n)`
-/

namespace A087860.P16836225033397906381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n + (A331326 n - A331325 n)

end

end A087860.P16836225033397906381

/-!
# A087861: Primes of the form 16*m^2 + 81, m=1,2,3,...

The programs for A087861, there is no canonical definition to state claims against.
-/

/-! ## A087861.P2109221820049656183

`∩[A142398(n+1), A256775(n+1)]`
-/

namespace A087861.P2109221820049656183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087861.P2109221820049656183

/-! ## A087861.P15060142788109856634

`∩[A094407(n+1), A256775(n+1)]`
-/

namespace A087861.P15060142788109856634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087861.P15060142788109856634

/-! ## A087861.P255036439558531764

`∩[A107008(n+1), A256775(n+1)]`
-/

namespace A087861.P255036439558531764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087861.P255036439558531764

/-! ## A087861.P11484650848754314758

`p?[(4*n)²+81]`
-/

namespace A087861.P11484650848754314758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * n) ^ 2 + 81

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A087861.P11484650848754314758

/-! ## A087861.P8220344297240161754

`xor(1, p?[A028872(4*(n+1))+84])+1`
-/

namespace A087861.P8220344297240161754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028872 (4 * (n + 1)) + 84

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) + 1

end

end A087861.P8220344297240161754

/-!
# A087862: Primes of the form 16*m^2 + 169, m=1,2,3,...

The programs for A087862, there is no canonical definition to state claims against.
-/

/-! ## A087862.P1975113942729412261

`p?[16*(n²+11)-7]`
-/

namespace A087862.P1975113942729412261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (16 * (n ^ 2 + 11) : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087862.P1975113942729412261

/-!
# A087863: a(n) = (n^3 + 24*n^2 + 65*n + 36)/6.

The programs for A087863, the canonical program `A087863.P9255048535300697742` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087863 has offset 0).

The definition of A087863 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087863.P9255048535300697742

`(n^3+24*n²+65*n+36)/6`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A087863

/-- `(n^3+24*n²+65*n+36)/6` -/
def P9255048535300697742.Spec : Prop :=
  ∀ n, P9255048535300697742.a n = (A087863 n : ℚ)

end A087863

/-! ## A087863.P6786017779200635746

`xor(-1, ∑[∑[-(n+7)]])`
-/

namespace A087863.P6786017779200635746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n + 7 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A087863.P6786017779200635746

namespace A087863

/-- `xor(-1, ∑[∑[-(n+7)]])` -/
def P6786017779200635746.Spec : Prop :=
  ∀ n, P6786017779200635746.a n = A087863 n

end A087863

/-! ## A087863.P16263931038234981393

`∑[n+7]+a(n-1)` with `a(0)=6`
-/

namespace A087863.P16263931038234981393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 7

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A087863.P16263931038234981393

namespace A087863

/-- `∑[n+7]+a(n-1)` -/
def P16263931038234981393.Spec : Prop :=
  ∀ n, (P16263931038234981393.a n : ℤ) = A087863 n

end A087863

/-! ## A087863.P16058857349712451913

`∑[A103517(n)+∑[n+5]]`
-/

namespace A087863.P16058857349712451913
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087863.P16058857349712451913

namespace A087863

/-- `∑[A103517(n)+∑[n+5]]` -/
def P16058857349712451913.Spec : Prop :=
  ∀ n, P16058857349712451913.a n = A087863 n

end A087863

/-! ## A087863.P10308359231485740429

`∑[xor(∑[n+7], A000007(n))]`
-/

namespace A087863.P10308359231485740429
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) (A000007 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087863.P10308359231485740429

namespace A087863

/-- `∑[xor(∑[n+7], A000007(n))]` -/
def P10308359231485740429.Spec : Prop :=
  ∀ n, P10308359231485740429.a n = A087863 n

end A087863

/-! ## A087863.P103104094055356971

`∑[A253145(n)+6*(n+1)]`
-/

namespace A087863.P103104094055356971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n + (6 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087863.P103104094055356971

namespace A087863

/-- `∑[A253145(n)+6*(n+1)]` -/
def P103104094055356971.Spec : Prop :=
  ∀ n, P103104094055356971.a n = A087863 n

end A087863

/-! ## A087863.P5349604646980945310

`∑[A133263(n)+7*n+5]`
-/

namespace A087863.P5349604646980945310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 n + (7 * n + 5 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087863.P5349604646980945310

namespace A087863

/-- `∑[A133263(n)+7*n+5]` -/
def P5349604646980945310.Spec : Prop :=
  ∀ n, P5349604646980945310.a n = A087863 n

end A087863

/-! ## A087863.P14881405520216192331

`A096957(n)+A000096(n)`
-/

namespace A087863.P14881405520216192331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096957 n + A000096 n

end

end A087863.P14881405520216192331

namespace A087863

/-- `A096957(n)+A000096(n)` -/
def P14881405520216192331.Spec : Prop :=
  ∀ n, P14881405520216192331.a n = A087863 n

end A087863

/-! ## A087863.P16177061410770190632

`A096941(n)+A028387(n)`
-/

namespace A087863.P16177061410770190632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096941 n + A028387 n

end

end A087863.P16177061410770190632

namespace A087863

/-- `A096941(n)+A028387(n)` -/
def P16177061410770190632.Spec : Prop :=
  ∀ n, P16177061410770190632.a n = A087863 n

end A087863

/-! ## A087863.P10178004176701625688

`A101853(n+1)+A005563(n)`
-/

namespace A087863.P10178004176701625688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101853 (n + 1) + A005563 n

end

end A087863.P10178004176701625688

namespace A087863

/-- `A101853(n+1)+A005563(n)` -/
def P10178004176701625688.Spec : Prop :=
  ∀ n, P10178004176701625688.a n = A087863 n

end A087863

/-! ## A087863.P3553295100110637134

`A268581(n)+A134465(n+1)`
-/

namespace A087863.P3553295100110637134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268581 n + A134465 (n + 1)

end

end A087863.P3553295100110637134

namespace A087863

/-- `A268581(n)+A134465(n+1)` -/
def P3553295100110637134.Spec : Prop :=
  ∀ n, P3553295100110637134.a n = A087863 n

end A087863

/-! ## A087863.P12971311141921662193

`A302906(n)+A222001(n+1)`
-/

namespace A087863.P12971311141921662193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302906 n + A222001 (n + 1)

end

end A087863.P12971311141921662193

namespace A087863

/-- `A302906(n)+A222001(n+1)` -/
def P12971311141921662193.Spec : Prop :=
  ∀ n, P12971311141921662193.a n = A087863 n

end A087863

/-! ## A087863.P11064138307285193660

`A224141(n+1)-A158842(n)`
-/

namespace A087863.P11064138307285193660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224141 (n + 1) - A158842 n

end

end A087863.P11064138307285193660

namespace A087863

/-- `A224141(n+1)-A158842(n)` -/
def P11064138307285193660.Spec : Prop :=
  ∀ n, P11064138307285193660.a n = A087863 n

end A087863

/-! ## A087863.P5765250387757786670

`A051941(n+8)-A161680(n)`
-/

namespace A087863.P5765250387757786670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051941 (n + 8) - A161680 n

end

end A087863.P5765250387757786670

namespace A087863

/-- `A051941(n+8)-A161680(n)` -/
def P5765250387757786670.Spec : Prop :=
  ∀ n, P5765250387757786670.a n = A087863 n

end A087863

/-! ## A087863.P6153757458950918048

`∑[A340266(n+1)+A016873(n)]`
-/

namespace A087863.P6153757458950918048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340266 (n + 1) + A016873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087863.P6153757458950918048

namespace A087863

/-- `∑[A340266(n+1)+A016873(n)]` -/
def P6153757458950918048.Spec : Prop :=
  ∀ n, P6153757458950918048.a n = A087863 n

end A087863

/-! ## A087863.P16595725893147159022

`A115067(n+1)+A023545(n+1)`
-/

namespace A087863.P16595725893147159022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115067 (n + 1) + A023545 (n + 1)

end

end A087863.P16595725893147159022

namespace A087863

/-- `A115067(n+1)+A023545(n+1)` -/
def P16595725893147159022.Spec : Prop :=
  ∀ n, P16595725893147159022.a n = A087863 n

end A087863

/-! ## A087863.P10562566884355908075

`A099776(n+1)+A006416(n+2)`
-/

namespace A087863.P10562566884355908075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099776 (n + 1) + A006416 (n + 2)

end

end A087863.P10562566884355908075

namespace A087863

/-- `A099776(n+1)+A006416(n+2)` -/
def P10562566884355908075.Spec : Prop :=
  ∀ n, P10562566884355908075.a n = A087863 n

end A087863

/-! ## A087863.P939850766383128051

`A073577(n+1)-A254749(n+1)`
-/

namespace A087863.P939850766383128051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073577 (n + 1) - A254749 (n + 1)

end

end A087863.P939850766383128051

namespace A087863

/-- `A073577(n+1)-A254749(n+1)` -/
def P939850766383128051.Spec : Prop :=
  ∀ n, P939850766383128051.a n = A087863 n

end A087863

/-! ## A087863.P4283450195448702116

`A095794(n+1)+A055831(n+4)`
-/

namespace A087863.P4283450195448702116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095794 (n + 1) + A055831 (n + 4)

end

end A087863.P4283450195448702116

namespace A087863

/-- `A095794(n+1)+A055831(n+4)` -/
def P4283450195448702116.Spec : Prop :=
  ∀ n, P4283450195448702116.a n = A087863 n

end A087863

/-! ## A087863.P12384719659297250791

`∑[A089071(n+1)+A004770(n+1)]`
-/

namespace A087863.P12384719659297250791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089071 (n + 1) + A004770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087863.P12384719659297250791

namespace A087863

/-- `∑[A089071(n+1)+A004770(n+1)]` -/
def P12384719659297250791.Spec : Prop :=
  ∀ n, P12384719659297250791.a n = A087863 n

end A087863

/-!
# A087864: Primes generated from A039726.

The programs for A087864, there is no canonical definition to state claims against.
-/

/-! ## A087864.P3344667633319401864

`∏[A039726(n+1)]+1`
-/

namespace A087864.P3344667633319401864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039726 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A087864.P3344667633319401864

/-! ## A087864.P5688115997752363041

`∏[A000040(record[A227481(n)])]+1`
-/

namespace A087864.P5688115997752363041
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227481 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A087864.P5688115997752363041

/-! ## A087864.P5732150846971448008

`∏[record[A083771(n+1)%A083781(3*n+4)]]+1`
-/

namespace A087864.P5732150846971448008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083771 (n + 1)) (A083781 (3 * n + 4))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A087864.P5732150846971448008

/-! ## A087864.P13669211674249428177

`∏[A000040(A211544(n+3)%A323605(n+3))]+1`
-/

namespace A087864.P13669211674249428177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A211544 (n + 3)) (A323605 (n + 3))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A087864.P13669211674249428177

/-!
# A087865: Prime numbers of the form primepi(3^m), for some integer m.

The programs for A087865, there is no canonical definition to state claims against.
-/

/-! ## A087865.P13377950043993134732

`A055729(A251965(n+1))`
-/

namespace A087865.P13377950043993134732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055729 (A251965 (n + 1)).toNat

end

end A087865.P13377950043993134732

/-!
# A087866: Composition length of the n-th symmetric power of the natural representation of a finite subgroup of SL(2,C) of type E_8 (binary icosahedral group).

The programs for A087866, the canonical program `A087866.P558709570200697978` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087866 has offset 0).

The definition of A087866 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087866.P558709570200697978

`∑[(-1)^n*A008651(n)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A087866

/-- `∑[(-1)^n*A008651(n)]` -/
def P558709570200697978.Spec : Prop :=
  ∀ n, P558709570200697978.a n = A087866 n

theorem P558709570200697978.correct : P558709570200697978.Spec := by
  intro n
  simp only [A087866]

end A087866

/-! ## A087866.P12915456869943583160

`∑[A008651(n)*A033999(n)]`
-/

namespace A087866.P12915456869943583160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087866.P12915456869943583160

namespace A087866

/-- `∑[A008651(n)*A033999(n)]` -/
def P12915456869943583160.Spec : Prop :=
  ∀ n, P12915456869943583160.a n = A087866 n

end A087866

/-! ## A087866.P8894703559522409279

`∑[A008651(n)*A009001(2*n)]`
-/

namespace A087866.P8894703559522409279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 n * A009001 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087866.P8894703559522409279

namespace A087866

/-- `∑[A008651(n)*A009001(2*n)]` -/
def P8894703559522409279.Spec : Prop :=
  ∀ n, P8894703559522409279.a n = A087866 n

end A087866

/-! ## A087866.P12232717736086040611

`∑[A008651(n)*A056594(2*n)]`
-/

namespace A087866.P12232717736086040611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 n * A056594 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087866.P12232717736086040611

namespace A087866

/-- `∑[A008651(n)*A056594(2*n)]` -/
def P12232717736086040611.Spec : Prop :=
  ∀ n, P12232717736086040611.a n = A087866 n

end A087866

/-! ## A087866.P1475124280158051346

`∑[A008651(n)*A034947(2*n+1)]`
-/

namespace A087866.P1475124280158051346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 n * A034947 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087866.P1475124280158051346

namespace A087866

/-- `∑[A008651(n)*A034947(2*n+1)]` -/
def P1475124280158051346.Spec : Prop :=
  ∀ n, P1475124280158051346.a n = A087866 n

end A087866

/-! ## A087866.P15308342662531694653

`∑[A008651(n)/A056594(A005843(n))]`
-/

namespace A087866.P15308342662531694653
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008651 n : ℚ) / (A056594 (A005843 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087866.P15308342662531694653

namespace A087866

/-- `∑[A008651(n)/A056594(A005843(n))]` -/
def P15308342662531694653.Spec : Prop :=
  ∀ n, P15308342662531694653.a n = (A087866 n : ℚ)

end A087866

/-! ## A087866.P8798653627603146651

`A033182(A008591(n)-A059029(n))`
-/

namespace A087866.P8798653627603146651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (A008591 n - A059029 n).toNat

end

end A087866.P8798653627603146651

namespace A087866

/-- `A033182(A008591(n)-A059029(n))` -/
def P8798653627603146651.Spec : Prop :=
  ∀ n, P8798653627603146651.a n = A087866 n

end A087866

/-! ## A087866.P12500623085430191099

`A008651(A008591(n)-A059029(n))`
-/

namespace A087866.P12500623085430191099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A008591 n - A059029 n).toNat

end

end A087866.P12500623085430191099

namespace A087866

/-- `A008651(A008591(n)-A059029(n))` -/
def P12500623085430191099.Spec : Prop :=
  ∀ n, P12500623085430191099.a n = A087866 n

end A087866

/-!
# A087867: n^2-79*n+1601 as n runs through the lucky numbers.

The programs for A087867, there is no canonical definition to state claims against.
-/

/-! ## A087867.P6357933318097260617

`A060566(A000959(n+1))`
-/

namespace A087867.P6357933318097260617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060566 (A000959 (n + 1)).toNat

end

end A087867.P6357933318097260617

/-! ## A087867.P9211308169229658755

`A060566(sqrt(A032598(n+1)))`
-/

namespace A087867.P9211308169229658755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060566 (SequenceMachineLib.roundAway (Real.sqrt (A032598 (n + 1) : ℝ))).toNat

end

end A087867.P9211308169229658755

/-! ## A087867.P7858099179401667596

`A060566(A139269(n+1)/2)`
-/

namespace A087867.P7858099179401667596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060566 (SequenceMachineLib.roundAway ((A139269 (n + 1) : ℚ) / 2)).toNat

end

end A087867.P7858099179401667596

/-! ## A087867.P16280782514725959816

`A060566(A032602(n+1)-A000040(n+1))`
-/

namespace A087867.P16280782514725959816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060566 (A032602 (n + 1) - A000040 (n + 1)).toNat

end

end A087867.P16280782514725959816

/-! ## A087867.P9268013626490222306

`A060566(A032599(n+1)/A032598(n+1))`
-/

namespace A087867.P9268013626490222306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060566 (SequenceMachineLib.roundAway ((A032599 (n + 1) : ℚ) / (A032598 (n + 1) : ℚ))).toNat

end

end A087867.P9268013626490222306

/-!
# A087870: Primes of the form (4n+1)^2 + (4m+2)^2 where n=1,2,3.., m=1,2,3..

The programs for A087870, there is no canonical definition to state claims against.
-/

/-! ## A087870.P12449432666134733242

`∩[A087879(n+1), A113911(n+1)]`
-/

namespace A087870.P12449432666134733242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087870.P12449432666134733242

/-!
# A087871: Primes of the form (4*k + 1)^2 + (4*k + 2)^2 where k=0,1,2,3,...

The programs for A087871, there is no canonical definition to state claims against.
-/

/-! ## A087871.P186725081573409059

`record[A293958(4*n+1)]`
-/

namespace A087871.P186725081573409059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293958 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087871.P186725081573409059

/-! ## A087871.P4567706605286030867

`record[A125256(8*n+3)]`
-/

namespace A087871.P4567706605286030867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125256 (8 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087871.P4567706605286030867

/-! ## A087871.P11934473825121653939

`record[or(1, A293958(A016813(n)))]`
-/

namespace A087871.P11934473825121653939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A293958 (A016813 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087871.P11934473825121653939

/-! ## A087871.P5859675881817130575

`record[A293958(A016813(n))]%A017033(n)`
-/

namespace A087871.P5859675881817130575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293958 (A016813 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A017033 n)

end

end A087871.P5859675881817130575

/-! ## A087871.P1945975671161689313

`record[A293958(A016813(n))%A055268(n+1)]`
-/

namespace A087871.P1945975671161689313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293958 (A016813 n).toNat) (A055268 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087871.P1945975671161689313

/-! ## A087871.P2035425261045132033

`record[A014442(8*n+3)]`
-/

namespace A087871.P2035425261045132033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (8 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087871.P2035425261045132033

/-! ## A087871.P5204026153161860860

`record[A259036(A168381(n+1)+1)]`
-/

namespace A087871.P5204026153161860860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259036 (A168381 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087871.P5204026153161860860

/-! ## A087871.P15201375931507595836

`record[A259036(A004273(2*or(1, n)))]`
-/

namespace A087871.P15201375931507595836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259036 (A004273 (2 * Nat.lor 1 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087871.P15201375931507595836

/-!
# A087872: Primes of the form (4*k + 3)^2 + (4*k + 2)^2 where k=0,1,2,3,...

The programs for A087872, the canonical program `A087872.P6196615648730476235` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087872 has offset 1).

The definition of A087872 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 787 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087872.P6196615648730476235

`∩[A102083(2*n+1), A027862(n+2)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A087872

/-- `∩[A102083(2*n+1), A027862(n+2)]` -/
def P6196615648730476235.Spec : Prop :=
  ∀ n, (P6196615648730476235.a n : ℤ) = A087872 (n + 1)

theorem P6196615648730476235.correct : P6196615648730476235.Spec := by
  intro n
  simp only [A087872, Nat.add_sub_cancel]

end A087872

/-! ## A087872.P1932356119397950216

`record[A293958(4*n+2)]`
-/

namespace A087872.P1932356119397950216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293958 (4 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087872.P1932356119397950216

namespace A087872

/-- `record[A293958(4*n+2)]` -/
def P1932356119397950216.Spec : Prop :=
  ∀ n, P1932356119397950216.a n = A087872 (n + 1)

end A087872

/-! ## A087872.P17100346506902681176

`record[A125256(8*n+5)]`
-/

namespace A087872.P17100346506902681176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125256 (8 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087872.P17100346506902681176

namespace A087872

/-- `record[A125256(8*n+5)]` -/
def P17100346506902681176.Spec : Prop :=
  ∀ n, P17100346506902681176.a n = A087872 (n + 1)

end A087872

/-! ## A087872.P11187656166658307530

`record[or(1, A293958(A016825(n)))]`
-/

namespace A087872.P11187656166658307530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A293958 (A016825 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087872.P11187656166658307530

namespace A087872

/-- `record[or(1, A293958(A016825(n)))]` -/
def P11187656166658307530.Spec : Prop :=
  ∀ n, P11187656166658307530.a n = A087872 (n + 1)

end A087872

/-! ## A087872.P14069474106039229655

`A000007(n+1)+record[A293958(A016825(n))]`
-/

namespace A087872.P14069474106039229655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293958 (A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087872.P14069474106039229655

namespace A087872

/-- `A000007(n+1)+record[A293958(A016825(n))]` -/
def P14069474106039229655.Spec : Prop :=
  ∀ n, P14069474106039229655.a n = A087872 (n + 1)

end A087872

/-! ## A087872.P10057545132552320699

`record[A125256(A016813(n+1))/A033999(n)]`
-/

namespace A087872.P10057545132552320699
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125256 (A016813 (n + 1)).toNat : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087872.P10057545132552320699

namespace A087872

/-- `record[A125256(A016813(n+1))/A033999(n)]` -/
def P10057545132552320699.Spec : Prop :=
  ∀ n, P10057545132552320699.a n = (A087872 (n + 1) : ℚ)

end A087872

/-! ## A087872.P11270252974924433574

`∩[A102083(2*n+1), A163251(n+2)]`
-/

namespace A087872.P11270252974924433574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102083 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163251 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087872.P11270252974924433574

namespace A087872

/-- `∩[A102083(2*n+1), A163251(n+2)]` -/
def P11270252974924433574.Spec : Prop :=
  ∀ n, (P11270252974924433574.a n : ℤ) = A087872 (n + 1)

end A087872

/-!
# A087876: a[n] =PrimePi[PrimePi[n-2]] + a[n - a[n-2]].

The programs for A087876, there is no canonical definition to state claims against.
-/

/-! ## A087876.P4374653648117668961

`∑[and(A210971(n+1), A254377(n))]`
-/

namespace A087876.P4374653648117668961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A210971 (n + 1)) (A254377 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087876.P4374653648117668961

/-! ## A087876.P18443863511047867398

`∑[A285301(A065883(A141213(n+8)))]`
-/

namespace A087876.P18443863511047867398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285301 (A065883 (A141213 (n + 8)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087876.P18443863511047867398

/-!
# A087877: Primes of the form (4n+1)^2 + (4m)^2, m,n = 0,1,2..

The programs for A087877, there is no canonical definition to state claims against.
-/

/-! ## A087877.P3088461617382598659

`filter[A279392(n+1), A014577(#)]`
-/

namespace A087877.P3088461617382598659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014577 (f1 j).toNat = 1) n)

end

end A087877.P3088461617382598659

/-! ## A087877.P9605612899046627735

`filter[A279392(n+1), A130198(#)]`
-/

namespace A087877.P9605612899046627735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A130198 (f1 j).toNat = 1) n)

end

end A087877.P9605612899046627735

/-! ## A087877.P8791928213433555306

`filter[A279392(n+1), A131078(#)]`
-/

namespace A087877.P8791928213433555306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131078 (f1 j).toNat = 1) n)

end

end A087877.P8791928213433555306

/-! ## A087877.P14661769491894025323

`filter[A279392(n+1), A165211(#)]`
-/

namespace A087877.P14661769491894025323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A165211 (f1 j).toNat = 1) n)

end

end A087877.P14661769491894025323

/-! ## A087877.P11572759328500168151

`filter[A279392(n+1), A260397(#)]`
-/

namespace A087877.P11572759328500168151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260397 (f1 j).toNat = 1) n)

end

end A087877.P11572759328500168151

/-!
# A087878: Primes of the form (4n+3)^2 + (4m)^2, m,n = 0,1,2..

The programs for A087878, there is no canonical definition to state claims against.
-/

/-! ## A087878.P5272108170502006051

`filter[A279393(n+1), A014577(#)]`
-/

namespace A087878.P5272108170502006051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279393 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014577 (f1 j).toNat = 1) n)

end

end A087878.P5272108170502006051

/-! ## A087878.P14021719383631626879

`filter[A279393(n+1), A130198(#)]`
-/

namespace A087878.P14021719383631626879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279393 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A130198 (f1 j).toNat = 1) n)

end

end A087878.P14021719383631626879

/-! ## A087878.P5574526793587312809

`filter[A279393(n+1), A131078(#)]`
-/

namespace A087878.P5574526793587312809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279393 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131078 (f1 j).toNat = 1) n)

end

end A087878.P5574526793587312809

/-! ## A087878.P6219769542071239679

`filter[A279393(n+1), A165211(#)]`
-/

namespace A087878.P6219769542071239679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279393 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A165211 (f1 j).toNat = 1) n)

end

end A087878.P6219769542071239679

/-! ## A087878.P18232535866146268922

`filter[A279393(n+1), A260397(#)]`
-/

namespace A087878.P18232535866146268922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279393 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260397 (f1 j).toNat = 1) n)

end

end A087878.P18232535866146268922

/-!
# A087879: Primes of the form (4k+1)^2 + (4m+2)^2, k,m >= 0.

The programs for A087879, there is no canonical definition to state claims against.
-/

/-! ## A087879.P3021676037151861537

`∩[A007521(n+1), A279393(n+1)]`
-/

namespace A087879.P3021676037151861537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087879.P3021676037151861537

/-! ## A087879.P3994487622551882141

`∩[A045366(n+1), A279393(n+1)]`
-/

namespace A087879.P3994487622551882141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087879.P3994487622551882141

/-! ## A087879.P10861239595158204610

`∩[A004627(n+1), A279393(n+1)]`
-/

namespace A087879.P10861239595158204610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087879.P10861239595158204610

/-! ## A087879.P8348687799820262646

`∩[A003628(n+1), A279393(n+1)]`
-/

namespace A087879.P8348687799820262646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087879.P8348687799820262646

/-! ## A087879.P1422567444678283631

`∩[A045355(n+1), A279393(n+1)]`
-/

namespace A087879.P1422567444678283631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087879.P1422567444678283631

/-! ## A087879.P13523744118644171224

`∩[A228228(n+1), A279393(n+1)]`
-/

namespace A087879.P13523744118644171224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087879.P13523744118644171224

/-! ## A087879.P10334425987401189348

`∩[A003629(n+1), A279393(n+1)]`
-/

namespace A087879.P10334425987401189348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087879.P10334425987401189348

/-! ## A087879.P6282638721332239395

`∩[A042999(n+1), A279393(n+1)]`
-/

namespace A087879.P6282638721332239395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087879.P6282638721332239395

/-! ## A087879.P11276332372098462215

`∩[A279393(n+1), A319041(n+1)]`
-/

namespace A087879.P11276332372098462215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087879.P11276332372098462215

/-! ## A087879.P319349045880000483

`∩[A270699(n+1), A279393(n+1)]`
-/

namespace A087879.P319349045880000483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087879.P319349045880000483

/-! ## A087879.P14371107453245953698

`∩[A042987(n+1), A279393(n+1)]`
-/

namespace A087879.P14371107453245953698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087879.P14371107453245953698

/-! ## A087879.P13981158668555477045

`∩[A045395(n+1), A279393(n+1)]`
-/

namespace A087879.P13981158668555477045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087879.P13981158668555477045

/-! ## A087879.P18193559671022297846

`∩[A004770(n+1), A279393(n+1)]`
-/

namespace A087879.P18193559671022297846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087879.P18193559671022297846

/-! ## A087879.P12992239933309111165

`∩[A055045(n+1), A279393(n+1)]`
-/

namespace A087879.P12992239933309111165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087879.P12992239933309111165

/-! ## A087879.P5731872911496682743

`∩[A269819(n+1), A279393(n+1)]`
-/

namespace A087879.P5731872911496682743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087879.P5731872911496682743

/-! ## A087879.P13997445186968484043

`∩[A227146(n+1), A279393(n+1)]`
-/

namespace A087879.P13997445186968484043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087879.P13997445186968484043

/-! ## A087879.P2871671539468141384

`∩[A180636(n+1), A279393(n+1)]`
-/

namespace A087879.P2871671539468141384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087879.P2871671539468141384

/-! ## A087879.P18256869352108928523

`∩[A047436(n+1), A279393(n+1)]`
-/

namespace A087879.P18256869352108928523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087879.P18256869352108928523

/-! ## A087879.P15963677576420666472

`∩[A047550(n+1), A279393(n+1)]`
-/

namespace A087879.P15963677576420666472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087879.P15963677576420666472

/-!
# A087880: Primes of the form (4n+3)^2 + (4m+2)^2, m,n = 0,1,2..

The programs for A087880, there is no canonical definition to state claims against.
-/

/-! ## A087880.P9643977315740479130

`∩[A007521(n+1), A279392(n+1)]`
-/

namespace A087880.P9643977315740479130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087880.P9643977315740479130

/-! ## A087880.P11630362899144138544

`∩[A045366(n+1), A279392(n+1)]`
-/

namespace A087880.P11630362899144138544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087880.P11630362899144138544

/-! ## A087880.P5766099256162078704

`∩[A004627(n+1), A279392(n+1)]`
-/

namespace A087880.P5766099256162078704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087880.P5766099256162078704

/-! ## A087880.P13123086874459878452

`∩[A003628(n+1), A279392(n+1)]`
-/

namespace A087880.P13123086874459878452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087880.P13123086874459878452

/-! ## A087880.P7528713176358813180

`∩[A045355(n+1), A279392(n+1)]`
-/

namespace A087880.P7528713176358813180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087880.P7528713176358813180

/-! ## A087880.P8434890052461232474

`∩[A228228(n+1), A279392(n+1)]`
-/

namespace A087880.P8434890052461232474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087880.P8434890052461232474

/-! ## A087880.P14990005207818338041

`∩[A003629(n+1), A279392(n+1)]`
-/

namespace A087880.P14990005207818338041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087880.P14990005207818338041

/-! ## A087880.P12605790440638509196

`∩[A042999(n+1), A279392(n+1)]`
-/

namespace A087880.P12605790440638509196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087880.P12605790440638509196

/-! ## A087880.P11876885369364113657

`∩[A279392(n+1), A319041(n+1)]`
-/

namespace A087880.P11876885369364113657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087880.P11876885369364113657

/-! ## A087880.P10335466831991591813

`∩[A270699(n+1), A279392(n+1)]`
-/

namespace A087880.P10335466831991591813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087880.P10335466831991591813

/-! ## A087880.P10888951745735630415

`∩[A042987(n+1), A279392(n+1)]`
-/

namespace A087880.P10888951745735630415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087880.P10888951745735630415

/-! ## A087880.P17590588135584383151

`∩[A045395(n+1), A279392(n+1)]`
-/

namespace A087880.P17590588135584383151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087880.P17590588135584383151

/-! ## A087880.P1645401861326279174

`∩[A004770(n+1), A279392(n+1)]`
-/

namespace A087880.P1645401861326279174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087880.P1645401861326279174

/-! ## A087880.P2984828833229127275

`∩[A055045(n+1), A279392(n+1)]`
-/

namespace A087880.P2984828833229127275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087880.P2984828833229127275

/-! ## A087880.P2968217017034773410

`∩[A269819(n+1), A279392(n+1)]`
-/

namespace A087880.P2968217017034773410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087880.P2968217017034773410

/-! ## A087880.P5754099883363682407

`∩[A227146(n+1), A279392(n+1)]`
-/

namespace A087880.P5754099883363682407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087880.P5754099883363682407

/-! ## A087880.P4443709954156976876

`∩[A180636(n+1), A279392(n+1)]`
-/

namespace A087880.P4443709954156976876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087880.P4443709954156976876

/-! ## A087880.P11816136440735433756

`∩[A047436(n+1), A279392(n+1)]`
-/

namespace A087880.P11816136440735433756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087880.P11816136440735433756

/-! ## A087880.P6441429776396735416

`∩[A047550(n+1), A279392(n+1)]`
-/

namespace A087880.P6441429776396735416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087880.P6441429776396735416

/-!
# A087881: a(n) = Prime[Prime[n-1]] + PrimePi[Abs[n - PrimePi[n-1]]].

The programs for A087881, there is no canonical definition to state claims against.
-/

/-! ## A087881.P8221919775308187836

`ceil(acot(n))²*A087883(n+2)`
-/

namespace A087881.P8221919775308187836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ ^ 2 * A087883 (n + 2)

end

end A087881.P8221919775308187836

/-! ## A087881.P16385799781951424194

`A178915(A087883(n+2))`
-/

namespace A087881.P16385799781951424194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178915 (A087883 (n + 2)).toNat

end

end A087881.P16385799781951424194

/-! ## A087881.P11594179242959063139

`xor(A020761(n), A087883(n+2))`
-/

namespace A087881.P11594179242959063139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020761 n) (A087883 (n + 2))

end

end A087881.P11594179242959063139

/-! ## A087881.P11321226835936746519

`A054977(n)²*A087883(n+2)`
-/

namespace A087881.P11321226835936746519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n ^ 2 * A087883 (n + 2)

end

end A087881.P11321226835936746519

/-! ## A087881.P3094216018708252558

`A087883(n+2)+3*A000007(n)`
-/

namespace A087881.P3094216018708252558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087883 (n + 2) + 3 * A000007 n

end

end A087881.P3094216018708252558

/-! ## A087881.P3302791064138355445

`gcd(2, A000040(n+1))²*A087883(n+2)`
-/

namespace A087881.P3302791064138355445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000040 (n + 1)) ^ 2 : ℤ) * A087883 (n + 2)

end

end A087881.P3302791064138355445

/-! ## A087881.P4879434696227145718

`gcd(4, p?[A000010(n+1)+n])²*A087883(n+2)`
-/

namespace A087881.P4879434696227145718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 4 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) ^ 2 : ℤ) * A087883 (n + 2)

end

end A087881.P4879434696227145718

/-! ## A087881.P16886548219673357003

`A339918(A151933(n))+A087883(n+2)`
-/

namespace A087881.P16886548219673357003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339918 (A151933 n).toNat + A087883 (n + 2)

end

end A087881.P16886548219673357003

/-! ## A087881.P18207050559525440882

`A014963(A016825(n))²*A087883(n+2)`
-/

namespace A087881.P18207050559525440882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A016825 n).toNat ^ 2 * A087883 (n + 2)

end

end A087881.P18207050559525440882

/-! ## A087881.P7602353676060555304

`A000720(A062298(n+1)+1)+A000040(A000040(n+1))`
-/

namespace A087881.P7602353676060555304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A062298 (n + 1) + 1).toNat + A000040 (A000040 (n + 1)).toNat

end

end A087881.P7602353676060555304

/-!
# A087883: a(n) = PrimePi[n-PrimePi[n-1]] + Prime[Abs[n - Prime[n-2]]].

The programs for A087883, there is no canonical definition to state claims against.
-/

/-! ## A087883.P17581368355123677997

`A087881(3^C(a(n-1), 68)+n)` with `a(0)=1, a(1)=1`
-/

namespace A087883.P17581368355123677997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A087881 (3 ^ Nat.choose (a (n - 1)).toNat 68 + n)

end

end A087883.P17581368355123677997

/-!
# A087884: a(n) = PrimePi[PrimePi[n-1]] + Prime[Abs[n - Prime[n-1]]].

The programs for A087884, there is no canonical definition to state claims against.
-/

/-! ## A087884.P18224836935542005692

`A008578(A014689(n+3))+A000720(A000720(n+3))`
-/

namespace A087884.P18224836935542005692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A014689 (n + 3)).toNat + A000720 (A000720 (n + 3)).toNat

end

end A087884.P18224836935542005692

/-!
# A087885: Numbers k such that 5^k + 2 is a prime.

The programs for A087885, there is no canonical definition to state claims against.
-/

/-! ## A087885.P6634345567359459732

`lt[A013599(n), 3]`
-/

namespace A087885.P6634345567359459732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013599 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A087885.P6634345567359459732

/-! ## A087885.P2568454896761807186

`eq[A000034(n), A013599(n)]`
-/

namespace A087885.P2568454896761807186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013599 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087885.P2568454896761807186

/-!
# A087886: Numbers k such that 29^k + 2 is prime.

The programs for A087886, there is no canonical definition to state claims against.
-/

/-! ## A087886.P1648458163702613539

`eq[A310642(n), A310645(A001065(n+1))]`
-/

namespace A087886.P1648458163702613539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310645 (A001065 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087886.P1648458163702613539

/-!
# A087887: a(n) = 18*n^3 + 6*n^2.

The programs for A087887, the canonical program `A087887.P10011487220671445220` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087887 has offset 0).

The definition of A087887 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `18*n^3+6*n²` (program `A087887.P10011487220671445220`, by `A087887.P10011487220671445220.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A087887.P10011487220671445220

`18*n^3+6*n²`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A087887

/-- `18*n^3+6*n²` -/
def P10011487220671445220.Spec : Prop :=
  ∀ n, (P10011487220671445220.a n : ℤ) = A087887 n

theorem P10011487220671445220.correct : P10011487220671445220.Spec := by
  intro n
  simp only [A087887]

end A087887

/-! ## A087887.P3181450553498177435

`2*A085409(n)`
-/

namespace A087887.P3181450553498177435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085409 n

end

end A087887.P3181450553498177435

namespace A087887

/-- `2*A085409(n)` -/
def P3181450553498177435.Spec : Prop :=
  ∀ n, P3181450553498177435.a n = A087887 n

end A087887

/-! ## A087887.P4215127320433895

`6*A294315(n)`
-/

namespace A087887.P4215127320433895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A294315 n

end

end A087887.P4215127320433895

namespace A087887

/-- `6*A294315(n)` -/
def P4215127320433895.Spec : Prop :=
  ∀ n, P4215127320433895.a n = A087887 n

end A087887

/-! ## A087887.P14020942018649012744

`A033581(n)*A016777(n)`
-/

namespace A087887.P14020942018649012744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n * A016777 n

end

end A087887.P14020942018649012744

namespace A087887

/-- `A033581(n)*A016777(n)` -/
def P14020942018649012744.Spec : Prop :=
  ∀ n, P14020942018649012744.a n = A087887 n

end A087887

/-! ## A087887.P13438877859599288928

`2*C(2*n+1+n, 2)*2*n`
-/

namespace A087887.P13438877859599288928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (2 * n + 1 + n) 2 * (2 * n)

end

end A087887.P13438877859599288928

namespace A087887

/-- `2*C(2*n+1+n, 2)*2*n` -/
def P13438877859599288928.Spec : Prop :=
  ∀ n, (P13438877859599288928.a n : ℤ) = A087887 n

end A087887

/-! ## A087887.P12166950937951840893

`n*A045946(n)`
-/

namespace A087887.P12166950937951840893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A045946 n

end

end A087887.P12166950937951840893

namespace A087887

/-- `n*A045946(n)` -/
def P12166950937951840893.Spec : Prop :=
  ∀ n, P12166950937951840893.a n = A087887 n

end A087887

/-! ## A087887.P13796427579604442889

`n*(A081272(n)-1)`
-/

namespace A087887.P13796427579604442889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A081272 n - 1)

end

end A087887.P13796427579604442889

namespace A087887

/-- `n*(A081272(n)-1)` -/
def P13796427579604442889.Spec : Prop :=
  ∀ n, P13796427579604442889.a n = A087887 n

end A087887

/-! ## A087887.P8980554689919575718

`2*n*A045945(n)`
-/

namespace A087887.P8980554689919575718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A045945 n)

end

end A087887.P8980554689919575718

namespace A087887

/-- `2*n*A045945(n)` -/
def P8980554689919575718.Spec : Prop :=
  ∀ n, P8980554689919575718.a n = A087887 n

end A087887

/-! ## A087887.P1239652997430346939

`3*n*A033580(n)`
-/

namespace A087887.P1239652997430346939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℤ) * A033580 n)

end

end A087887.P1239652997430346939

namespace A087887

/-- `3*n*A033580(n)` -/
def P1239652997430346939.Spec : Prop :=
  ∀ n, P1239652997430346939.a n = A087887 n

end A087887

/-! ## A087887.P3594806215142850649

`4*n*A081266(n)`
-/

namespace A087887.P3594806215142850649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n : ℤ) * A081266 n)

end

end A087887.P3594806215142850649

namespace A087887

/-- `4*n*A081266(n)` -/
def P3594806215142850649.Spec : Prop :=
  ∀ n, P3594806215142850649.a n = A087887 n

end A087887

/-! ## A087887.P10391384965487253795

`n²*A063136(n+1)`
-/

namespace A087887.P10391384965487253795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A063136 (n + 1)

end

end A087887.P10391384965487253795

namespace A087887

/-- `n²*A063136(n+1)` -/
def P10391384965487253795.Spec : Prop :=
  ∀ n, P10391384965487253795.a n = A087887 n

end A087887

/-! ## A087887.P3830340605867790640

`(A017209(n)-1)*2*n²`
-/

namespace A087887.P3830340605867790640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017209 n - 1) * (2 * n ^ 2 : ℤ)

end

end A087887.P3830340605867790640

namespace A087887

/-- `(A017209(n)-1)*2*n²` -/
def P3830340605867790640.Spec : Prop :=
  ∀ n, P3830340605867790640.a n = A087887 n

end A087887

/-! ## A087887.P9231558777273183557

`8*n*A000217(3*n)/2`
-/

namespace A087887.P9231558777273183557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 * n : ℤ) * A000217 (3 * n) : ℚ) / 2

end

end A087887.P9231558777273183557

namespace A087887

/-- `8*n*A000217(3*n)/2` -/
def P9231558777273183557.Spec : Prop :=
  ∀ n, P9231558777273183557.a n = (A087887 n : ℚ)

end A087887

/-! ## A087887.P5419525661678233782

`-Δ[(1-n)*n²]*A008458(n)`
-/

namespace A087887.P5419525661678233782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((f1 (n + 1) - f1 n) * A008458 n)

end

end A087887.P5419525661678233782

namespace A087887

/-- `-Δ[(1-n)*n²]*A008458(n)` -/
def P5419525661678233782.Spec : Prop :=
  ∀ n, P5419525661678233782.a n = A087887 n

end A087887

/-! ## A087887.P1714979732958343122

`A005449(n)*A008594(n)`
-/

namespace A087887.P1714979732958343122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n * A008594 n

end

end A087887.P1714979732958343122

namespace A087887

/-- `A005449(n)*A008594(n)` -/
def P1714979732958343122.Spec : Prop :=
  ∀ n, P1714979732958343122.a n = A087887 n

end A087887

/-! ## A087887.P5057763481084228612

`A001105(n)*A017197(n)`
-/

namespace A087887.P5057763481084228612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n * A017197 n

end

end A087887.P5057763481084228612

namespace A087887

/-- `A001105(n)*A017197(n)` -/
def P5057763481084228612.Spec : Prop :=
  ∀ n, P5057763481084228612.a n = A087887 n

end A087887

/-! ## A087887.P13459257678782269852

`A008486(n)*A033580(n)`
-/

namespace A087887.P13459257678782269852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n * A033580 n

end

end A087887.P13459257678782269852

namespace A087887

/-- `A008486(n)*A033580(n)` -/
def P13459257678782269852.Spec : Prop :=
  ∀ n, P13459257678782269852.a n = A087887 n

end A087887

/-! ## A087887.P18397677932257217117

`A008585(n)*A033580(n)`
-/

namespace A087887.P18397677932257217117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n * A033580 n

end

end A087887.P18397677932257217117

namespace A087887

/-- `A008585(n)*A033580(n)` -/
def P18397677932257217117.Spec : Prop :=
  ∀ n, P18397677932257217117.a n = A087887 n

end A087887

/-! ## A087887.P13918108627637453414

`A004277(n)*A045945(n)`
-/

namespace A087887.P13918108627637453414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n * A045945 n

end

end A087887.P13918108627637453414

namespace A087887

/-- `A004277(n)*A045945(n)` -/
def P13918108627637453414.Spec : Prop :=
  ∀ n, P13918108627637453414.a n = A087887 n

end A087887

/-! ## A087887.P9786002605978935202

`A016933(n)*A033428(n)`
-/

namespace A087887.P9786002605978935202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016933 n * A033428 n

end

end A087887.P9786002605978935202

namespace A087887

/-- `A016933(n)*A033428(n)` -/
def P9786002605978935202.Spec : Prop :=
  ∀ n, P9786002605978935202.a n = A087887 n

end A087887

/-!
# A087888: Given a sequence u consisting just of 1's and 2's, let f(u)(n) be the length of n-th run. Then we may define a sequence u = {a(n)} by a(n)=f^(n-1)(u)(1) (starting with n=1).

The programs for A087888, there is no canonical definition to state claims against.
-/

/-! ## A087888.P7364025936958944542

`A000002(A213182(n+1)-59)`
-/

namespace A087888.P7364025936958944542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A213182 (n + 1) - 59).toNat

end

end A087888.P7364025936958944542

/-! ## A087888.P11987699117950189983

`A022303(A213182(n+1)-63)`
-/

namespace A087888.P11987699117950189983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022303 (A213182 (n + 1) - 63).toNat

end

end A087888.P11987699117950189983

/-!
# A087889: Given a sequence u consisting just of 1's and 2's, let f(u)(n) be the length of n-th run. Then we may define a sequence u = {a(n)} by a(n)=f^(n-1)(u)(1) (starting with n=1).

The programs for A087889, there is no canonical definition to state claims against.
-/

/-! ## A087889.P14332762416110000075

`A049710(838+n)`
-/

namespace A087889.P14332762416110000075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049710 (838 + n)

end

end A087889.P14332762416110000075

/-! ## A087889.P15044113293625019207

`A088569(838+n)`
-/

namespace A087889.P15044113293625019207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088569 (838 + n)

end

end A087889.P15044113293625019207

/-! ## A087889.P231631094474913035

`A245936(eq[0, (n+1)*a(floor(n/3))²%3]+2)` with `a(0)=1`
-/

namespace A087889.P231631094474913035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  (n + 1) * (f2 ⌊(n : ℚ) / 3⌋.toNat ^ 2 % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245936 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2)

end

end A087889.P231631094474913035

/-! ## A087889.P16759305431298458288

`A245936(A272344(n+1)+2)`
-/

namespace A087889.P16759305431298458288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245936 (A272344 (n + 1) + 2).toNat

end

end A087889.P16759305431298458288

/-! ## A087889.P6856494125469082149

`gcd(2, A086602(A345914(2*(n+1))))`
-/

namespace A087889.P6856494125469082149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A086602 (A345914 (2 * (n + 1))).toNat)

end

end A087889.P6856494125469082149

/-!
# A087890: Given a sequence u consisting just of 1's and 2's, let f(u)(n) be the length of n-th run. Then we may define a sequence u = {a(n)} by a(n)=f^(n-1)(u)(1) (starting with n=1).

The programs for A087890, there is no canonical definition to state claims against.
-/

/-! ## A087890.P2100507265778822297

`A022303(n+26)`
-/

namespace A087890.P2100507265778822297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022303 (n + 26)

end

end A087890.P2100507265778822297

/-! ## A087890.P8434737325919431770

`A006928(n+29)`
-/

namespace A087890.P8434737325919431770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006928 (n + 29)

end

end A087890.P8434737325919431770

/-! ## A087890.P14175397638239876657

`A078880(n+29)`
-/

namespace A087890.P14175397638239876657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078880 (n + 29)

end

end A087890.P14175397638239876657

/-! ## A087890.P3110046838805198643

`A000002(n+30)`
-/

namespace A087890.P3110046838805198643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 30)

end

end A087890.P3110046838805198643

/-! ## A087890.P13741567230920647561

`A025142(n+63)`
-/

namespace A087890.P13741567230920647561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025142 (n + 63)

end

end A087890.P13741567230920647561

/-!
# A087891: Number of nonsquarefree terms in 3x+1 trajectory started at n.

The programs for A087891, there is no canonical definition to state claims against.
-/

/-! ## A087891.P14637247641844556618

`A008908(n+1)-A078372(n+1)`
-/

namespace A087891.P14637247641844556618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) - A078372 (n + 1)

end

end A087891.P14637247641844556618

/-! ## A087891.P10919257409471499514

`A006577(n+1)+1-A078372(n+1)`
-/

namespace A087891.P10919257409471499514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) + (1 - A078372 (n + 1))

end

end A087891.P10919257409471499514

/-! ## A087891.P1978082512841460900

`A006577(n+1)-A023443(A078372(n+1))`
-/

namespace A087891.P1978082512841460900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) - A023443 (A078372 (n + 1)).toNat

end

end A087891.P1978082512841460900

/-! ## A087891.P16799570720070420157

`A076228(n+1)+A213204(n+1)-A078372(n+1)`
-/

namespace A087891.P16799570720070420157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076228 (n + 1) + (A213204 (n + 1) - A078372 (n + 1))

end

end A087891.P16799570720070420157

/-! ## A087891.P1041775528643525418

`A006577(A005843(n+1))-A078372(n+1)`
-/

namespace A087891.P1041775528643525418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (A005843 (n + 1)).toNat - A078372 (n + 1)

end

end A087891.P1041775528643525418

/-!
# A087893: Number of numbers m satisfying 1 < m < n such that m^2 == m (mod n).

The programs for A087893, the canonical program `A087893.P10043656164352134867` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087893 has offset 1).

The definition of A087893 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087893.P888169596466169508

`30%A034444(n+1)`
-/

namespace A087893.P888169596466169508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 30 (A034444 (n + 1))

end

end A087893.P888169596466169508

namespace A087893

/-- `30%A034444(n+1)` -/
def P888169596466169508.Spec : Prop :=
  ∀ n, P888169596466169508.a n = A087893 (n + 1)

end A087893

/-! ## A087893.P10043656164352134867

`A070824(∏{p}[n+1, #])`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A087893

/-- `A070824(∏{p}[n+1, #])` -/
def P10043656164352134867.Spec : Prop :=
  ∀ n, P10043656164352134867.a n = A087893 (n + 1)

theorem P10043656164352134867.correct : P10043656164352134867.Spec := by
  intro n
  simp only [A087893, Nat.add_sub_cancel]

end A087893

/-! ## A087893.P17585624536011288766

`A161840(∏{p}[n+1, #])`
-/

namespace A087893.P17585624536011288766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161840 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A087893.P17585624536011288766

namespace A087893

/-- `A161840(∏{p}[n+1, #])` -/
def P17585624536011288766.Spec : Prop :=
  ∀ n, P17585624536011288766.a n = A087893 (n + 1)

end A087893

/-! ## A087893.P5510213909186262728

`A200213(∏{p}[n+1, #])`
-/

namespace A087893.P5510213909186262728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200213 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A087893.P5510213909186262728

namespace A087893

/-- `A200213(∏{p}[n+1, #])` -/
def P5510213909186262728.Spec : Prop :=
  ∀ n, P5510213909186262728.a n = A087893 (n + 1)

end A087893

/-! ## A087893.P979726032014510069

`and(-2, A304326(n+1))`
-/

namespace A087893.P979726032014510069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A304326 (n + 1))

end

end A087893.P979726032014510069

namespace A087893

/-- `and(-2, A304326(n+1))` -/
def P979726032014510069.Spec : Prop :=
  ∀ n, P979726032014510069.a n = A087893 (n + 1)

end A087893

/-! ## A087893.P8459820915231500544

`2*(A007875(n+1)-1)`
-/

namespace A087893.P8459820915231500544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A007875 (n + 1) - 1)

end

end A087893.P8459820915231500544

namespace A087893

/-- `2*(A007875(n+1)-1)` -/
def P8459820915231500544.Spec : Prop :=
  ∀ n, P8459820915231500544.a n = A087893 (n + 1)

end A087893

/-! ## A087893.P2057438294927772061

`or(1, A309307(n+1))-1`
-/

namespace A087893.P2057438294927772061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A309307 (n + 1)) - 1

end

end A087893.P2057438294927772061

namespace A087893

/-- `or(1, A309307(n+1))-1` -/
def P2057438294927772061.Spec : Prop :=
  ∀ n, P2057438294927772061.a n = A087893 (n + 1)

end A087893

/-! ## A087893.P17556791704048864799

`2^(A297155(n+1)+1)-2`
-/

namespace A087893.P17556791704048864799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A297155 (n + 1) + 1 : ℤ) - 2

end

end A087893.P17556791704048864799

namespace A087893

/-- `2^(A297155(n+1)+1)-2` -/
def P17556791704048864799.Spec : Prop :=
  ∀ n, P17556791704048864799.a n = (A087893 (n + 1) : ℚ)

end A087893

/-! ## A087893.P2890516644326164926

`A000005(∏{p}[n+1, #]+floor(acot(n)))-2`
-/

namespace A087893.P2890516644326164926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat - 2

end

end A087893.P2890516644326164926

namespace A087893

/-- `A000005(∏{p}[n+1, #]+floor(acot(n)))-2` -/
def P2890516644326164926.Spec : Prop :=
  ∀ n, P2890516644326164926.a n = A087893 (n + 1)

end A087893

/-! ## A087893.P4014547280038750723

`A070824(A007947(n+1))`
-/

namespace A087893.P4014547280038750723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (A007947 (n + 1)).toNat

end

end A087893.P4014547280038750723

namespace A087893

/-- `A070824(A007947(n+1))` -/
def P4014547280038750723.Spec : Prop :=
  ∀ n, P4014547280038750723.a n = A087893 (n + 1)

end A087893

/-! ## A087893.P7813074037987649188

`A048050(A034444(n+1))`
-/

namespace A087893.P7813074037987649188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (A034444 (n + 1)).toNat

end

end A087893.P7813074037987649188

namespace A087893

/-- `A048050(A034444(n+1))` -/
def P7813074037987649188.Spec : Prop :=
  ∀ n, P7813074037987649188.a n = A087893 (n + 1)

end A087893

/-! ## A087893.P7260800047711467886

`A052928(A304326(n+1))`
-/

namespace A087893.P7260800047711467886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A304326 (n + 1)).toNat

end

end A087893.P7260800047711467886

namespace A087893

/-- `A052928(A304326(n+1))` -/
def P7260800047711467886.Spec : Prop :=
  ∀ n, P7260800047711467886.a n = A087893 (n + 1)

end A087893

/-! ## A087893.P11951716960798660324

`A000203(A007875(n+1))-1`
-/

namespace A087893.P11951716960798660324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A007875 (n + 1)).toNat - 1

end

end A087893.P11951716960798660324

namespace A087893

/-- `A000203(A007875(n+1))-1` -/
def P11951716960798660324.Spec : Prop :=
  ∀ n, P11951716960798660324.a n = A087893 (n + 1)

end A087893

/-! ## A087893.P10324299718247576828

`A048146(2*A007875(n+1))`
-/

namespace A087893.P10324299718247576828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (2 * A007875 (n + 1)).toNat

end

end A087893.P10324299718247576828

namespace A087893

/-- `A048146(2*A007875(n+1))` -/
def P10324299718247576828.Spec : Prop :=
  ∀ n, P10324299718247576828.a n = A087893 (n + 1)

end A087893

/-! ## A087893.P6259010852874358998

`A309307(n+1)+A057428(n)`
-/

namespace A087893.P6259010852874358998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309307 (n + 1) + A057428 n

end

end A087893.P6259010852874358998

namespace A087893

/-- `A309307(n+1)+A057428(n)` -/
def P6259010852874358998.Spec : Prop :=
  ∀ n, P6259010852874358998.a n = A087893 (n + 1)

end A087893

/-! ## A087893.P6348684611763192601

`A309307(n+1)-A057427(n)`
-/

namespace A087893.P6348684611763192601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309307 (n + 1) - A057427 n

end

end A087893.P6348684611763192601

namespace A087893

/-- `A309307(n+1)-A057427(n)` -/
def P6348684611763192601.Spec : Prop :=
  ∀ n, P6348684611763192601.a n = A087893 (n + 1)

end A087893

/-! ## A087893.P16330954069922828855

`A048146(A000005(∏{p}[n+1, #]))`
-/

namespace A087893.P16330954069922828855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (A000005 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A087893.P16330954069922828855

namespace A087893

/-- `A048146(A000005(∏{p}[n+1, #]))` -/
def P16330954069922828855.Spec : Prop :=
  ∀ n, P16330954069922828855.a n = A087893 (n + 1)

end A087893

/-! ## A087893.P4075336460077589861

`A047994(abs(A158522(n+1)))-1`
-/

namespace A087893.P4075336460077589861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 |A158522 (n + 1)|.toNat - 1

end

end A087893.P4075336460077589861

namespace A087893

/-- `A047994(abs(A158522(n+1)))-1` -/
def P4075336460077589861.Spec : Prop :=
  ∀ n, P4075336460077589861.a n = A087893 (n + 1)

end A087893

/-! ## A087893.P11437720949437664649

`A376504(n+1)+A297155(n+1)`
-/

namespace A087893.P11437720949437664649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376504 (n + 1) + A297155 (n + 1)

end

end A087893.P11437720949437664649

namespace A087893

/-- `A376504(n+1)+A297155(n+1)` -/
def P11437720949437664649.Spec : Prop :=
  ∀ n, P11437720949437664649.a n = A087893 (n + 1)

end A087893

/-!
# A087894: Primes p such that 9^p - 8^p is composite.

The programs for A087894, there is no canonical definition to state claims against.
-/

/-! ## A087894.P14226160976187353016

`record[A328827(A274430(n+1)+A055087(n))]`
-/

namespace A087894.P14226160976187353016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328827 (A274430 (n + 1) + A055087 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087894.P14226160976187353016

/-! ## A087894.P8619736162398711359

`p?[a(n-1)+2-A103582(a(n-1))]` with `a(0)=1`
-/

namespace A087894.P8619736162398711359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 2 - A103582 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087894.P8619736162398711359

/-! ## A087894.P16032293888415261147

`p?[A256654(A000267(n))+A118759(n)]`
-/

namespace A087894.P16032293888415261147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256654 (A000267 n).toNat + A118759 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087894.P16032293888415261147

/-! ## A087894.P13328080854091332238

`p?[A109289(n+1)-A014963(A109312(n+1))]`
-/

namespace A087894.P13328080854091332238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109289 (n + 1) - A014963 (A109312 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087894.P13328080854091332238

/-! ## A087894.P5675139622019025346

`eq[A040001(A128710(n)), A328324(n)]`
-/

namespace A087894.P5675139622019025346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A128710 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328324 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087894.P5675139622019025346

/-!
# A087895: Primes p such that 10^p - 9^p is composite.

The programs for A087895, there is no canonical definition to state claims against.
-/

/-! ## A087895.P4192836113756327782

`A000040(lt[A054348(2*n+3), A066016(n+1)])`
-/

namespace A087895.P4192836113756327782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054348 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A087895.P4192836113756327782

/-! ## A087895.P11056076678638203838

`A000040(lt[A286594(n+3), A301373(n+1)])`
-/

namespace A087895.P11056076678638203838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286594 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A087895.P11056076678638203838

/-! ## A087895.P7898369528629505511

`A139637(A106120(n+2))`
-/

namespace A087895.P7898369528629505511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139637 (A106120 (n + 2)).toNat

end

end A087895.P7898369528629505511

/-! ## A087895.P10806996728930425121

`∩[A079407(n+1), A184987(n+1)]`
-/

namespace A087895.P10806996728930425121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087895.P10806996728930425121

/-! ## A087895.P4308563174308657167

`A000040(lt[A052484(3*(n+1)), A374638(3*n+4)])`
-/

namespace A087895.P4308563174308657167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052484 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374638 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A087895.P4308563174308657167

/-!
# A087897: Number of partitions of n into odd parts greater than 1.

The programs for A087897, there is no canonical definition to state claims against.
-/

/-! ## A087897.P2755506214472200226

`abs(Δ[A000009(abs(2-n)+1)])`
-/

namespace A087897.P2755506214472200226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (|2 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A087897.P2755506214472200226

/-! ## A087897.P5393536272222048784

`A025147(n)-A096765(A028310(n)-1)`
-/

namespace A087897.P5393536272222048784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 n - A096765 (A028310 n - 1).toNat

end

end A087897.P5393536272222048784

/-! ## A087897.P1477271510934263112

`Δ[A096765(A004273(n)-n)+A096765(n)]`
-/

namespace A087897.P1477271510934263112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 (A004273 n - (n : ℤ)).toNat + A096765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087897.P1477271510934263112

/-! ## A087897.P13645102921362322291

`2*A000009(n)-A052816(n)`
-/

namespace A087897.P13645102921362322291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000009 n - A052816 n

end

end A087897.P13645102921362322291

/-! ## A087897.P14782049612705955630

`Δ[A035457(xor(1, A004273(n)))]`
-/

namespace A087897.P14782049612705955630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (Int.xor 1 (A004273 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087897.P14782049612705955630

/-! ## A087897.P4775567183321470402

`Δ[A035457(A004442(A004273(n)))]`
-/

namespace A087897.P4775567183321470402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (A004442 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087897.P4775567183321470402

/-! ## A087897.P3788291746038532115

`Δ[A035457(A016813(n)-A062545(n))]`
-/

namespace A087897.P3788291746038532115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (A016813 n - A062545 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087897.P3788291746038532115

/-! ## A087897.P12276223236925940592

`Δ[A264403(abs(1-∑[n]))]`
-/

namespace A087897.P12276223236925940592
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264403 |1 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087897.P12276223236925940592

/-! ## A087897.P914011160495857957

`A116663(∑[n])`
-/

namespace A087897.P914011160495857957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116663 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A087897.P914011160495857957

/-! ## A087897.P5986813092692386159

`Δ[A015716(A000124(2*n+1)-n)]`
-/

namespace A087897.P5986813092692386159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015716 (A000124 (2 * n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087897.P5986813092692386159

/-!
# A087898: Choose a(n) so that 2*3*5*13*...*a(n) - 1 is prime; a(n) is prime; and a(n) > a(n-1).

The programs for A087898, there is no canonical definition to state claims against.
-/

/-! ## A087898.P3742050178720302677

`p?[∑[gcd(n, A121648(n))]]`
-/

namespace A087898.P3742050178720302677
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A121648 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A087898.P3742050178720302677

/-! ## A087898.P2670797891895950576

`p?[A274430(n+1)-45]`
-/

namespace A087898.P2670797891895950576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274430 (n + 1) - 45

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087898.P2670797891895950576

/-! ## A087898.P4908464666464156279

`p?[A113619(A348440(n+1))]`
-/

namespace A087898.P4908464666464156279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113619 (A348440 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087898.P4908464666464156279

/-! ## A087898.P3050414874397045450

`A000040(∑[A195766(n+1)%5])`
-/

namespace A087898.P3050414874397045450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195766 (n + 1)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A087898.P3050414874397045450

/-!
# A087899: Primes associated with A087898.

The programs for A087899, there is no canonical definition to state claims against.
-/

/-! ## A087899.P7223494736394901970

`p?[∏[A087898(n+1)]-1]`
-/

namespace A087899.P7223494736394901970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087898 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087899.P7223494736394901970

