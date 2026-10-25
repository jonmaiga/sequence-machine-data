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
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A240501: Given circular disks of radius r in a hexagonal lattice covered by a circular disk of radius R = r*2n, if the center of the circle is chosen at the middle between two lattice points, a(n) is the number of points at which an r-circle is tangent to the R-circle.

The programs for A240501, the canonical program `A240501.P13764134983987677138` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240501 has offset 1).

The definition of A240501 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240501.P13764134983987677138

`∑{d}[(2*n+1)², 3-#%6]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A240501

/-- `∑{d}[(2*n+1)², 3-#%6]` -/
def P13764134983987677138.Spec : Prop :=
  ∀ n, P13764134983987677138.a n = A240501 (n + 1)

theorem P13764134983987677138.correct : P13764134983987677138.Spec := by
  intro n
  simp only [A240501, Nat.add_sub_cancel]

end A240501

/-! ## A240501.P7417041848997981413

`∑{d}[6*n+3, A000086(#)]`
-/

namespace A240501.P7417041848997981413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000086 d

end

end A240501.P7417041848997981413

namespace A240501

/-- `∑{d}[6*n+3, A000086(#)]` -/
def P7417041848997981413.Spec : Prop :=
  ∀ n, P7417041848997981413.a n = A240501 (n + 1)

end A240501

/-! ## A240501.P12042813834534877015

`∑{d}[Δ[n²], A138805(A007947(#))]`
-/

namespace A240501.P12042813834534877015
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A138805 (A007947 d).toNat

end

end A240501.P12042813834534877015

namespace A240501

/-- `∑{d}[Δ[n²], A138805(A007947(#))]` -/
def P12042813834534877015.Spec : Prop :=
  ∀ n, P12042813834534877015.a n = A240501 (n + 1)

end A240501

/-! ## A240501.P14415272277414285631

`2*A048691(A248909(2*n+1))`
-/

namespace A240501.P14415272277414285631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048691 (A248909 (2 * n + 1)).toNat

end

end A240501.P14415272277414285631

namespace A240501

/-- `2*A048691(A248909(2*n+1))` -/
def P14415272277414285631.Spec : Prop :=
  ∀ n, P14415272277414285631.a n = A240501 (n + 1)

end A240501

/-! ## A240501.P14378091486505060861

`A053417(2*n+1)-A053459(2*n+1)`
-/

namespace A240501.P14378091486505060861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053417 (2 * n + 1) - A053459 (2 * n + 1)

end

end A240501.P14378091486505060861

namespace A240501

/-- `A053417(2*n+1)-A053459(2*n+1)` -/
def P14378091486505060861.Spec : Prop :=
  ∀ n, P14378091486505060861.a n = A240501 (n + 1)

end A240501

/-! ## A240501.P17740024049887860623

`2*A112606(∑[n])`
-/

namespace A240501.P17740024049887860623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112606 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A240501.P17740024049887860623

namespace A240501

/-- `2*A112606(∑[n])` -/
def P17740024049887860623.Spec : Prop :=
  ∀ n, P17740024049887860623.a n = A240501 (n + 1)

end A240501

/-! ## A240501.P11371080125005507778

`A033716(A248909(2*n+1)²)`
-/

namespace A240501.P11371080125005507778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 (A248909 (2 * n + 1) ^ 2).toNat

end

end A240501.P11371080125005507778

namespace A240501

/-- `A033716(A248909(2*n+1)²)` -/
def P11371080125005507778.Spec : Prop :=
  ∀ n, P11371080125005507778.a n = A240501 (n + 1)

end A240501

/-! ## A240501.P11306702788346139637

`A033716(Δ[n²]²)`
-/

namespace A240501.P11306702788346139637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat

end

end A240501.P11306702788346139637

namespace A240501

/-- `A033716(Δ[n²]²)` -/
def P11306702788346139637.Spec : Prop :=
  ∀ n, P11306702788346139637.a n = A240501 (n + 1)

end A240501

/-! ## A240501.P5851517412125833056

`A217220((2*n+1)²)/2`
-/

namespace A240501.P5851517412125833056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217220 ((2 * n + 1) ^ 2) : ℚ) / 2

end

end A240501.P5851517412125833056

namespace A240501

/-- `A217220((2*n+1)²)/2` -/
def P5851517412125833056.Spec : Prop :=
  ∀ n, P5851517412125833056.a n = (A240501 (n + 1) : ℚ)

end A240501

/-! ## A240501.P7037473705607535029

`2*A096936(A005408(n)²)`
-/

namespace A240501.P7037473705607535029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A096936 (A005408 n ^ 2).toNat

end

end A240501.P7037473705607535029

namespace A240501

/-- `2*A096936(A005408(n)²)` -/
def P7037473705607535029.Spec : Prop :=
  ∀ n, P7037473705607535029.a n = A240501 (n + 1)

end A240501

/-! ## A240501.P1756833985449237528

`A096936(A374295(A033716((2*n+1)²)))`
-/

namespace A240501.P1756833985449237528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096936 (A374295 (A033716 ((2 * n + 1) ^ 2)).toNat).toNat

end

end A240501.P1756833985449237528

namespace A240501

/-- `A096936(A374295(A033716((2*n+1)²)))` -/
def P1756833985449237528.Spec : Prop :=
  ∀ n, P1756833985449237528.a n = A240501 (n + 1)

end A240501

/-! ## A240501.P16360486308585683474

`A000005(2*A248909(2*n+1)²)`
-/

namespace A240501.P16360486308585683474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * A248909 (2 * n + 1) ^ 2).toNat

end

end A240501.P16360486308585683474

namespace A240501

/-- `A000005(2*A248909(2*n+1)²)` -/
def P16360486308585683474.Spec : Prop :=
  ∀ n, P16360486308585683474.a n = A240501 (n + 1)

end A240501

/-! ## A240501.P12487679941222586387

`A000005(A007590(2*A248909(2*n+1)))`
-/

namespace A240501.P12487679941222586387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007590 (2 * A248909 (2 * n + 1)).toNat).toNat

end

end A240501.P12487679941222586387

namespace A240501

/-- `A000005(A007590(2*A248909(2*n+1)))` -/
def P12487679941222586387.Spec : Prop :=
  ∀ n, P12487679941222586387.a n = A240501 (n + 1)

end A240501

/-! ## A240501.P18098547639591574783

`2*A112604(∑[2*n])`
-/

namespace A240501.P18098547639591574783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112604 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A240501.P18098547639591574783

namespace A240501

/-- `2*A112604(∑[2*n])` -/
def P18098547639591574783.Spec : Prop :=
  ∀ n, P18098547639591574783.a n = A240501 (n + 1)

end A240501

/-! ## A240501.P10227052231905311808

`2*A262774(∑[2*n])`
-/

namespace A240501.P10227052231905311808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A262774 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A240501.P10227052231905311808

namespace A240501

/-- `2*A262774(∑[2*n])` -/
def P10227052231905311808.Spec : Prop :=
  ∀ n, P10227052231905311808.a n = A240501 (n + 1)

end A240501

/-!
# A240502: Product of primes appearing in the factorization of n! with even exponents.

The programs for A240502, the canonical program `A240502.P14660137439257369676` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240502 has offset 0).

The definition of A240502 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240502.P14736981530167829092

`A300951(n)/A055230(A028310(n))`
-/

namespace A240502.P14736981530167829092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300951 n : ℚ) / (A055230 (A028310 n).toNat : ℚ)

end

end A240502.P14736981530167829092

namespace A240502

/-- `A300951(n)/A055230(A028310(n))` -/
def P14736981530167829092.Spec : Prop :=
  ∀ n, P14736981530167829092.a n = (A240502 n : ℚ)

end A240502

/-! ## A240502.P4108365298618482820

`A300951(n)/A055230(A233583(n+1))`
-/

namespace A240502.P4108365298618482820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300951 n : ℚ) / (A055230 (A233583 (n + 1)).toNat : ℚ)

end

end A240502.P4108365298618482820

namespace A240502

/-- `A300951(n)/A055230(A233583(n+1))` -/
def P4108365298618482820.Spec : Prop :=
  ∀ n, P4108365298618482820.a n = (A240502 n : ℚ)

end A240502

/-! ## A240502.P14660137439257369676

`A034386(n)/A055204(A028310(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A240502

/-- `A034386(n)/A055204(A028310(n))` -/
def P14660137439257369676.Spec : Prop :=
  ∀ n, P14660137439257369676.a n = (A240502 n : ℚ)

end A240502

/-! ## A240502.P18402016337605767718

`A300951(2*n)/A055204(A028310(n))`
-/

namespace A240502.P18402016337605767718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300951 (2 * n) : ℚ) / (A055204 (A028310 n).toNat : ℚ)

end

end A240502.P18402016337605767718

namespace A240502

/-- `A300951(2*n)/A055204(A028310(n))` -/
def P18402016337605767718.Spec : Prop :=
  ∀ n, P18402016337605767718.a n = (A240502 n : ℚ)

end A240502

/-! ## A240502.P669999627087571048

`(2^n-A319880(n))/A055204(A028310(n))`
-/

namespace A240502.P669999627087571048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - A319880 n : ℚ) / (A055204 (A028310 n).toNat : ℚ)

end

end A240502.P669999627087571048

namespace A240502

/-- `(2^n-A319880(n))/A055204(A028310(n))` -/
def P669999627087571048.Spec : Prop :=
  ∀ n, P669999627087571048.a n = (A240502 n : ℚ)

end A240502

/-! ## A240502.P16962105189175947163

`A066838(A151800(n))/A055204(A028310(n))`
-/

namespace A240502.P16962105189175947163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066838 (A151800 n).toNat : ℚ) / (A055204 (A028310 n).toNat : ℚ)

end

end A240502.P16962105189175947163

namespace A240502

/-- `A066838(A151800(n))/A055204(A028310(n))` -/
def P16962105189175947163.Spec : Prop :=
  ∀ n, P16962105189175947163.a n = (A240502 n : ℚ)

end A240502

/-! ## A240502.P12304625469366319919

`gcd(A034386(n), A374989(n))`
-/

namespace A240502.P12304625469366319919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034386 n) (A374989 n)

end

end A240502.P12304625469366319919

namespace A240502

/-- `gcd(A034386(n), A374989(n))` -/
def P12304625469366319919.Spec : Prop :=
  ∀ n, (P12304625469366319919.a n : ℤ) = A240502 n

end A240502

/-! ## A240502.P16717776864214930183

`gcd(A300951(n)-A374989(n), A300951(n))`
-/

namespace A240502.P16717776864214930183
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A300951 n - A374989 n) (A300951 n)

end

end A240502.P16717776864214930183

namespace A240502

/-- `gcd(A300951(n)-A374989(n), A300951(n))` -/
def P16717776864214930183.Spec : Prop :=
  ∀ n, (P16717776864214930183.a n : ℤ) = A240502 n

end A240502

/-! ## A240502.P9015074426679657123

`gcd(A374989(n)², A300951(n))`
-/

namespace A240502.P9015074426679657123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A374989 n ^ 2) (A300951 n)

end

end A240502.P9015074426679657123

namespace A240502

/-- `gcd(A374989(n)², A300951(n))` -/
def P9015074426679657123.Spec : Prop :=
  ∀ n, (P9015074426679657123.a n : ℤ) = A240502 n

end A240502

/-! ## A240502.P9982175660052983625

`A055071(A028310(n))/A049614(n)`
-/

namespace A240502.P9982175660052983625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055071 (A028310 n).toNat : ℚ) / (A049614 n : ℚ)

end

end A240502.P9982175660052983625

namespace A240502

/-- `A055071(A028310(n))/A049614(n)` -/
def P9982175660052983625.Spec : Prop :=
  ∀ n, P9982175660052983625.a n = (A240502 n : ℚ)

end A240502

/-!
# A240504: Read (exponents of primes in the factorization of n!) modulo 2 and convert to decimal.

The programs for A240504, there is no canonical definition to state claims against.
-/

/-! ## A240504.P7346725864455964333

`A325401(A336510(n+2))`
-/

namespace A240504.P7346725864455964333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A336510 (n + 2)).toNat

end

end A240504.P7346725864455964333

/-! ## A240504.P5914201785879642664

`A030101(A336510(n+1)+Δ[A336510(n+1)])`
-/

namespace A240504.P5914201785879642664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A336510 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A240504.P5914201785879642664

/-! ## A240504.P11744602083207516418

`A030101(2*A336510(n+2))`
-/

namespace A240504.P11744602083207516418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (2 * A336510 (n + 2)).toNat

end

end A240504.P11744602083207516418

/-!
# A240505: Products of primes the squares of which are Fermi-Dirac divisors of n!

The programs for A240505, the canonical program `A240505.P9700052559506088263` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240505 has offset 1).

The definition of A240505 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240505.P9700052559506088263

`sqrt(A248766(n+1)/A055204(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A240505

/-- `sqrt(A248766(n+1)/A055204(n+1))` -/
def P9700052559506088263.Spec : Prop :=
  ∀ n, P9700052559506088263.a n = (A240505 (n + 1) : ℝ)

end A240505

/-! ## A240505.P2142971358381486490

`A055772(n+1)/A248765(n+1)²`
-/

namespace A240505.P2142971358381486490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055772 (n + 1) : ℚ) / (A248765 (n + 1) ^ 2 : ℚ)

end

end A240505.P2142971358381486490

namespace A240505

/-- `A055772(n+1)/A248765(n+1)²` -/
def P2142971358381486490.Spec : Prop :=
  ∀ n, P2142971358381486490.a n = (A240505 (n + 1) : ℚ)

end A240505

/-! ## A240505.P15124295349035035146

`A055772(n+1)/sqrt(A248764(n+1))`
-/

namespace A240505.P15124295349035035146
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A055772 (n + 1) : ℝ) / Real.sqrt (A248764 (n + 1) : ℝ)

end

end A240505.P15124295349035035146

namespace A240505

/-- `A055772(n+1)/sqrt(A248764(n+1))` -/
def P15124295349035035146.Spec : Prop :=
  ∀ n, P15124295349035035146.a n = (A240505 (n + 1) : ℝ)

end A240505

/-! ## A240505.P2652541963802985639

`sqrt(A055071(n+1)/A248764(n+1))`
-/

namespace A240505.P2652541963802985639
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A055071 (n + 1) : ℚ) / (A248764 (n + 1) : ℚ) : ℝ)

end

end A240505.P2652541963802985639

namespace A240505

/-- `sqrt(A055071(n+1)/A248764(n+1))` -/
def P2652541963802985639.Spec : Prop :=
  ∀ n, P2652541963802985639.a n = (A240505 (n + 1) : ℝ)

end A240505

/-!
# A240506: Number of length-n gap-free words on {1,2,3}.

The programs for A240506, the canonical program `A240506.P1371831391560847930` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240506 has offset 0).

The definition of A240506 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A240506.P1371831391560847930

`6*a(n-1)-11*a(n-2)+6*a(n-3)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=21`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A240506

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)` -/
def P1371831391560847930.Spec : Prop :=
  ∀ n, P1371831391560847930.a n = A240506 n

theorem P1371831391560847930.correct : P1371831391560847930.Spec := by
  intro n
  simp only [A240506]

end A240506

/-! ## A240506.P16858935038208204079

`∑[ogf((1-3x+6x^3)/(1-5x+6x^2))]`
-/

namespace A240506.P16858935038208204079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 0, 6] [1, -5, 6] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240506.P16858935038208204079

namespace A240506

/-- `∑[ogf((1-3x+6x^3)/(1-5x+6x^2))]` -/
def P16858935038208204079.Spec : Prop :=
  ∀ n, P16858935038208204079.a n = A240506 n

end A240506

/-! ## A240506.P6646433683662514619

`or(1, 3^n+1-2^n)`
-/

namespace A240506.P6646433683662514619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((3 ^ n : ℤ) + (1 - (2 ^ n : ℤ)))

end

end A240506.P6646433683662514619

namespace A240506

/-- `or(1, 3^n+1-2^n)` -/
def P6646433683662514619.Spec : Prop :=
  ∀ n, P6646433683662514619.a n = A240506 n

end A240506

/-! ## A240506.P6111867604095622963

`ceil(cosh(sin(n)))+3^n-2^n`
-/

namespace A240506.P6111867604095622963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.sin (n : ℝ))⌉ + ((3 ^ n : ℤ) - (2 ^ n : ℤ))

end

end A240506.P6111867604095622963

namespace A240506

/-- `ceil(cosh(sin(n)))+3^n-2^n` -/
def P6111867604095622963.Spec : Prop :=
  ∀ n, P6111867604095622963.a n = A240506 n

end A240506

/-! ## A240506.P6586645423388541391

`1-(or(1, 2^n-1)-3^n)`
-/

namespace A240506.P6586645423388541391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Int.lor 1 ((2 ^ n : ℤ) - 1) - (3 ^ n : ℤ))

end

end A240506.P6586645423388541391

namespace A240506

/-- `1-(or(1, 2^n-1)-3^n)` -/
def P6586645423388541391.Spec : Prop :=
  ∀ n, P6586645423388541391.a n = A240506 n

end A240506

/-! ## A240506.P11918119761286365867

`3^n-2^n-(floor(acot(n))-2)`
-/

namespace A240506.P11918119761286365867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - (2 ^ n : ℤ) - (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 2)

end

end A240506.P11918119761286365867

namespace A240506

/-- `3^n-2^n-(floor(acot(n))-2)` -/
def P11918119761286365867.Spec : Prop :=
  ∀ n, P11918119761286365867.a n = A240506 n

end A240506

/-! ## A240506.P2725061285909019288

`∑[3*a(n-1)]-2^n` with `a(0)=2, a(1)=3, a(2)=6`
-/

namespace A240506.P2725061285909019288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 6] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 ^ n : ℤ)

end

end A240506.P2725061285909019288

namespace A240506

/-- `∑[3*a(n-1)]-2^n` -/
def P2725061285909019288.Spec : Prop :=
  ∀ n, P2725061285909019288.a n = A240506 n

end A240506

/-! ## A240506.P13273471525347110228

`ceil(3^n+sin(n)²)-(2^n-1)`
-/

namespace A240506.P13273471525347110228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 ^ n : ℝ) + Real.sin (n : ℝ) ^ 2⌉ - ((2 ^ n : ℤ) - 1)

end

end A240506.P13273471525347110228

namespace A240506

/-- `ceil(3^n+sin(n)²)-(2^n-1)` -/
def P13273471525347110228.Spec : Prop :=
  ∀ n, P13273471525347110228.a n = A240506 n

end A240506

/-! ## A240506.P15121877259173740411

`2^n+3^n-∑[ceil(atan(n))^n]`
-/

namespace A240506.P15121877259173740411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n : ℝ)⌉ ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n + 3 ^ n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240506.P15121877259173740411

namespace A240506

/-- `2^n+3^n-∑[ceil(atan(n))^n]` -/
def P15121877259173740411.Spec : Prop :=
  ∀ n, P15121877259173740411.a n = A240506 n

end A240506

/-! ## A240506.P17416022176806992612

`3^n+1-A255047(n)`
-/

namespace A240506.P17416022176806992612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) + (1 - A255047 n)

end

end A240506.P17416022176806992612

namespace A240506

/-- `3^n+1-A255047(n)` -/
def P17416022176806992612.Spec : Prop :=
  ∀ n, P17416022176806992612.a n = A240506 n

end A240506

/-! ## A240506.P10721783516408877201

`3^n+2-2*A011782(n)`
-/

namespace A240506.P10721783516408877201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n + 2 : ℤ) - 2 * A011782 n

end

end A240506.P10721783516408877201

namespace A240506

/-- `3^n+2-2*A011782(n)` -/
def P10721783516408877201.Spec : Prop :=
  ∀ n, P10721783516408877201.a n = A240506 n

end A240506

/-! ## A240506.P16446185573012956313

`3^n+1-A132736(n)+n`
-/

namespace A240506.P16446185573012956313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) + (1 - A132736 n + (n : ℤ))

end

end A240506.P16446185573012956313

namespace A240506

/-- `3^n+1-A132736(n)+n` -/
def P16446185573012956313.Spec : Prop :=
  ∀ n, P16446185573012956313.a n = A240506 n

end A240506

/-! ## A240506.P10183408879086858960

`A027649(n-1)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A240506.P10183408879086858960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A027649 (n - 1) + a (n - 1)

end

end A240506.P10183408879086858960

namespace A240506

/-- `A027649(n-1)+a(n-1)` -/
def P10183408879086858960.Spec : Prop :=
  ∀ n, P10183408879086858960.a n = A240506 n

end A240506

/-! ## A240506.P10617666338999609882

`A303809(∑[char[(n+1)^5]]+1)+3^n-2^n`
-/

namespace A240506.P10617666338999609882
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 5

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303809 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + ((3 ^ n : ℤ) - (2 ^ n : ℤ))

end

end A240506.P10617666338999609882

namespace A240506

/-- `A303809(∑[char[(n+1)^5]]+1)+3^n-2^n` -/
def P10617666338999609882.Spec : Prop :=
  ∀ n, P10617666338999609882.a n = A240506 n

end A240506

/-! ## A240506.P1243027507417748927

`A083323(n)+A057427(n)`
-/

namespace A240506.P1243027507417748927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083323 n + A057427 n

end

end A240506.P1243027507417748927

namespace A240506

/-- `A083323(n)+A057427(n)` -/
def P1243027507417748927.Spec : Prop :=
  ∀ n, P1243027507417748927.a n = A240506 n

end A240506

/-! ## A240506.P6651130005123173550

`A095121(n)+A094729(n)`
-/

namespace A240506.P6651130005123173550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + A094729 n

end

end A240506.P6651130005123173550

namespace A240506

/-- `A095121(n)+A094729(n)` -/
def P6651130005123173550.Spec : Prop :=
  ∀ n, P6651130005123173550.a n = A240506 n

end A240506

/-! ## A240506.P17165084444788594797

`A155559(n)+A101052(n)`
-/

namespace A240506.P17165084444788594797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n + A101052 n

end

end A240506.P17165084444788594797

namespace A240506

/-- `A155559(n)+A101052(n)` -/
def P17165084444788594797.Spec : Prop :=
  ∀ n, P17165084444788594797.a n = A240506 n

end A240506

/-! ## A240506.P13062026884675172039

`A281773(n)+A003945(n)`
-/

namespace A240506.P13062026884675172039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281773 n + A003945 n

end

end A240506.P13062026884675172039

namespace A240506

/-- `A281773(n)+A003945(n)` -/
def P13062026884675172039.Spec : Prop :=
  ∀ n, P13062026884675172039.a n = A240506 n

end A240506

/-! ## A240506.P17291084125642907167

`A007689(n)-A095121(n)`
-/

namespace A240506.P17291084125642907167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007689 n - A095121 n

end

end A240506.P17291084125642907167

namespace A240506

/-- `A007689(n)-A095121(n)` -/
def P17291084125642907167.Spec : Prop :=
  ∀ n, P17291084125642907167.a n = A240506 n

end A240506

/-!
# A240510: Numbers whose "reverse and add" process becomes palindromic at 8813200023188.

The programs for A240510, there is no canonical definition to state claims against.
-/

/-! ## A240510.P4251319255128247237

`∑[A328492(abs(1-n)+1)]`
-/

namespace A240510.P4251319255128247237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328492 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240510.P4251319255128247237

/-! ## A240510.P16980022898131435556

`A328492(n)+a(n-1)` with `a(0)=89`
-/

namespace A240510.P16980022898131435556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [89] fun n a =>
  A328492 n + a (n - 1)

end

end A240510.P16980022898131435556

/-! ## A240510.P14767539479287304905

`∩[A070792(n+1), A090062(n+1)]`
-/

namespace A240510.P14767539479287304905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240510.P14767539479287304905

/-!
# A240511: Numbers that are equal to the sum of their digits raised to each power from 1 to the number of digits.

The programs for A240511, there is no canonical definition to state claims against.
-/

/-! ## A240511.P8288863296914961828

`record[gcd(A032555(n+1), A205103(n+1))]`
-/

namespace A240511.P8288863296914961828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A032555 (n + 1)) (A205103 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240511.P8288863296914961828

/-! ## A240511.P4891826522823547490

`A061805(n+1)%A007498(A078443(n+1))`
-/

namespace A240511.P4891826522823547490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061805 (n + 1)) (A007498 (A078443 (n + 1)).toNat)

end

end A240511.P4891826522823547490

/-! ## A240511.P6054468360095645630

`A353907(n+1)%A046022(A092428(2*n+3))`
-/

namespace A240511.P6054468360095645630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353907 (n + 1)) (A046022 (A092428 (2 * n + 3)).toNat)

end

end A240511.P6054468360095645630

/-!
# A240512: Number of n X n 0..1 arrays with no element equal to exactly two horizontal and vertical neighbors, with new values 0..1 introduced in row major order.

The programs for A240512, there is no canonical definition to state claims against.
-/

/-! ## A240512.P8919353738347147376

`A240519(∑[4*n]+1)`
-/

namespace A240512.P8919353738347147376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240519 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A240512.P8919353738347147376

/-! ## A240512.P16839222718338382461

`record[A240519(Δ[A235355(n)])]`
-/

namespace A240512.P16839222718338382461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240519 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240512.P16839222718338382461

/-! ## A240512.P14293797587150787642

`record[A240519(A330613(n+1))]`
-/

namespace A240512.P14293797587150787642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240519 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240512.P14293797587150787642

/-! ## A240512.P16728560569056570625

`A240519(A001844(n))+char[10]`
-/

namespace A240512.P16728560569056570625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240519 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A240512.P16728560569056570625

/-! ## A240512.P12960175620250913242

`record[A003982(n)*A240519(n+1)]`
-/

namespace A240512.P12960175620250913242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A240519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240512.P12960175620250913242

/-!
# A240513: Number of n X 2 0..1 arrays with no element equal to exactly two horizontal and vertical neighbors, with new values 0..1 introduced in row major order.

The programs for A240513, the canonical program `A240513.P2129167559691971757` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240513 has offset 1).

The definition of A240513 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 315 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240513.P11442625490409864914

`1+A105309(n+1)`
-/

namespace A240513.P11442625490409864914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A105309 (n + 1)

end

end A240513.P11442625490409864914

namespace A240513

/-- `1+A105309(n+1)` -/
def P11442625490409864914.Spec : Prop :=
  ∀ n, P11442625490409864914.a n = A240513 (n + 1)

end A240513

/-! ## A240513.P1684961632394484179

`A301658(n+1)-3`
-/

namespace A240513.P1684961632394484179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301658 (n + 1) - 3

end

end A240513.P1684961632394484179

namespace A240513

/-- `A301658(n+1)-3` -/
def P1684961632394484179.Spec : Prop :=
  ∀ n, P1684961632394484179.a n = A240513 (n + 1)

theorem P1684961632394484179.correct : P1684961632394484179.Spec := by
  intro n
  simp only [A240513, Nat.add_sub_cancel, A240513.P1684961632394484179.a, A240513.P2129167559691971757.a, A119749, A119749.P8910904632272446904.a, A301658, A301658.P6373140149868759706.a, A092886, A092886.P4573183649328464816.a, A101400, A101400.P1282599316843606203.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A240513

/-! ## A240513.P2129167559691971757

`A119749(n+1)+a(n-2)` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A240513

/-- `A119749(n+1)+a(n-2)` -/
def P2129167559691971757.Spec : Prop :=
  ∀ n, P2129167559691971757.a n = A240513 (n + 1)

theorem P2129167559691971757.correct : P2129167559691971757.Spec := by
  intro n
  simp only [A240513, Nat.add_sub_cancel]

end A240513

/-! ## A240513.P3698981170571278032

`2*a(n-1)+a(n-2)-a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=2, a(1)=3, a(2)=6, a(3)=10, a(4)=21`
-/

namespace A240513.P3698981170571278032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 6, 10, 21] fun n a =>
  2 * a (n - 1) + a (n - 2) - a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A240513.P3698981170571278032

namespace A240513

/-- `2*a(n-1)+a(n-2)-a(n-3)-2*a(n-4)+a(n-5)` -/
def P3698981170571278032.Spec : Prop :=
  ∀ n, P3698981170571278032.a n = A240513 (n + 1)

end A240513

/-! ## A240513.P15527673181241819803

`A092886(n+2)+1-A092886(n)`
-/

namespace A240513.P15527673181241819803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092886 (n + 2) + (1 - A092886 n)

end

end A240513.P15527673181241819803

namespace A240513

/-- `A092886(n+2)+1-A092886(n)` -/
def P15527673181241819803.Spec : Prop :=
  ∀ n, P15527673181241819803.a n = A240513 (n + 1)

end A240513

/-! ## A240513.P17954675714772494170

`A301658(n+2)%(Δ[A301658(n+1)]+3)`
-/

namespace A240513.P17954675714772494170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301658 (n + 2)) (f1 (n + 1) - f1 n + 3)

end

end A240513.P17954675714772494170

namespace A240513

/-- `A301658(n+2)%(Δ[A301658(n+1)]+3)` -/
def P17954675714772494170.Spec : Prop :=
  ∀ n, P17954675714772494170.a n = A240513 (n + 1)

end A240513

/-!
# A240514: Number of nX3 0..1 arrays with no element equal to exactly two horizontal and vertical neighbors, with new values 0..1 introduced in row major order.

The programs for A240514, there is no canonical definition to state claims against.
-/

/-! ## A240514.P1901682504724347979

`A240519(∑[n+2]+4)`
-/

namespace A240514.P1901682504724347979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240519 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A240514.P1901682504724347979

/-! ## A240514.P12023933063237013351

`and(-1, A240519(A167614(n+1)))`
-/

namespace A240514.P12023933063237013351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A240519 (A167614 (n + 1)).toNat)

end

end A240514.P12023933063237013351

/-! ## A240514.P8209198880102840660

`record[A240519(n+4)/A060693(n)]`
-/

namespace A240514.P8209198880102840660
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240519 (n + 4) : ℚ) / (A060693 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240514.P8209198880102840660

/-! ## A240514.P9952393751299051364

`A240519(A167499(n)+n)+char[19]`
-/

namespace A240514.P9952393751299051364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240519 (A167499 n + (n : ℤ)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A240514.P9952393751299051364

/-! ## A240514.P4261466177136153760

`A240519(A167614(n+1))+A025439(n)`
-/

namespace A240514.P4261466177136153760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240519 (A167614 (n + 1)).toNat + A025439 n

end

end A240514.P4261466177136153760

/-!
# A240515: Number of nX4 0..1 arrays with no element equal to exactly two horizontal and vertical neighbors, with new values 0..1 introduced in row major order.

The programs for A240515, there is no canonical definition to state claims against.
-/

/-! ## A240515.P9795618104903328173

`A240519(∑[n+3]+7)`
-/

namespace A240515.P9795618104903328173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240519 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A240515.P9795618104903328173

/-! ## A240515.P5521222041641418315

`A240519(A052905(n)+9)+char[21]`
-/

namespace A240515.P5521222041641418315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240519 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A240515.P5521222041641418315

/-! ## A240515.P10084996540125927642

`A240519(A000096(n+2)+5)+char[24]`
-/

namespace A240515.P10084996540125927642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240519 (A000096 (n + 2) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A240515.P10084996540125927642

/-! ## A240515.P5393880207987813460

`A007318(C(2, n))*A240519(A052905(n)+9)`
-/

namespace A240515.P5393880207987813460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A240519 (A052905 n + 9).toNat

end

end A240515.P5393880207987813460

/-! ## A240515.P7463390881863957393

`A007318(C(2, n))*A240519(A000096(n+2)+5)`
-/

namespace A240515.P7463390881863957393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A240519 (A000096 (n + 2) + 5).toNat

end

end A240515.P7463390881863957393

/-!
# A240516: Number of n X 5 0..1 arrays with no element equal to exactly two horizontal and vertical neighbors, with new values 0..1 introduced in row major order.

The programs for A240516, there is no canonical definition to state claims against.
-/

/-! ## A240516.P16181831014586755990

`A240519(A374005(n+1))`
-/

namespace A240516.P16181831014586755990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240519 (A374005 (n + 1)).toNat

end

end A240516.P16181831014586755990

/-! ## A240516.P1671955148067678860

`A240519(A167499(n+3))`
-/

namespace A240516.P1671955148067678860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240519 (A167499 (n + 3)).toNat

end

end A240516.P1671955148067678860

/-! ## A240516.P16156621144380542758

`A240519(A077169(n+5))`
-/

namespace A240516.P16156621144380542758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240519 (A077169 (n + 5)).toNat

end

end A240516.P16156621144380542758

/-! ## A240516.P4185499339211703462

`A240519(A155212(n)+13)`
-/

namespace A240516.P4185499339211703462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240519 (A155212 n + 13).toNat

end

end A240516.P4185499339211703462

/-! ## A240516.P7767903201973192015

`A240519(A056000(n)+15)`
-/

namespace A240516.P7767903201973192015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240519 (A056000 n + 15).toNat

end

end A240516.P7767903201973192015

/-!
# A240517: Number of nX6 0..1 arrays with no element equal to exactly two horizontal and vertical neighbors, with new values 0..1 introduced in row major order.

The programs for A240517, there is no canonical definition to state claims against.
-/

/-! ## A240517.P3247837305866132778

`A240519(A374007(n+1))`
-/

namespace A240517.P3247837305866132778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240519 (A374007 (n + 1)).toNat

end

end A240517.P3247837305866132778

/-! ## A240517.P17402460930483594901

`A240519(A166136(n+4))`
-/

namespace A240517.P17402460930483594901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240519 (A166136 (n + 4)).toNat

end

end A240517.P17402460930483594901

/-! ## A240517.P11255381698744208871

`A240519(A056115(n)+21)`
-/

namespace A240517.P11255381698744208871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240519 (A056115 n + 21).toNat

end

end A240517.P11255381698744208871

/-! ## A240517.P7965821072768328684

`A240519(Δ[A111396(n)]+9)`
-/

namespace A240517.P7965821072768328684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240519 (f1 (n + 1) - f1 n + 9).toNat

end

end A240517.P7965821072768328684

/-! ## A240517.P17611941230801734853

`A240519(A167487(n+4)-1)`
-/

namespace A240517.P17611941230801734853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240519 (A167487 (n + 4) - 1).toNat

end

end A240517.P17611941230801734853

/-!
# A240518: Number of nX7 0..1 arrays with no element equal to exactly two horizontal and vertical neighbors, with new values 0..1 introduced in row major order.

The programs for A240518, there is no canonical definition to state claims against.
-/

/-! ## A240518.P10930345168211658038

`A240519(A374008(n+1))`
-/

namespace A240518.P10930345168211658038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240519 (A374008 (n + 1)).toNat

end

end A240518.P10930345168211658038

/-! ## A240518.P7141291919211424207

`A240519(A167487(n+5))`
-/

namespace A240518.P7141291919211424207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240519 (A167487 (n + 5)).toNat

end

end A240518.P7141291919211424207

/-! ## A240518.P3798433571734223804

`A240519(A056119(n)+28)`
-/

namespace A240518.P3798433571734223804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240519 (A056119 n + 28).toNat

end

end A240518.P3798433571734223804

/-! ## A240518.P4184634473650794694

`A240519(eq[11, A066657(n)])`
-/

namespace A240518.P4184634473650794694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240519 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240518.P4184634473650794694

/-! ## A240518.P2147995045236463162

`A240519(A166136(n+5)+1)`
-/

namespace A240518.P2147995045236463162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240519 (A166136 (n + 5) + 1).toNat

end

end A240518.P2147995045236463162

/-!
# A240519: T(n,k)=Number of nXk 0..1 arrays with no element equal to exactly two horizontal and vertical neighbors, with new values 0..1 introduced in row major order.

The programs for A240519, there is no canonical definition to state claims against.
-/

/-! ## A240519.P5838827816323051369

`A301541(n+1)+A186034(A022167(n))`
-/

namespace A240519.P5838827816323051369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301541 (n + 1) + A186034 (A022167 n).toNat

end

end A240519.P5838827816323051369

/-! ## A240519.P404359050084731303

`A301541(n+1)+A124763(A099594(n))`
-/

namespace A240519.P404359050084731303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301541 (n + 1) + A124763 (A099594 n).toNat

end

end A240519.P404359050084731303

/-! ## A240519.P4228818112332695734

`A340998(A174376(n))+A301541(n+1)`
-/

namespace A240519.P4228818112332695734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A174376 n).toNat + 140) + A301541 (n + 1)

end

end A240519.P4228818112332695734

/-! ## A240519.P3883672421547803929

`A301541(n+1)+A037800(A099594(n)²)`
-/

namespace A240519.P3883672421547803929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301541 (n + 1) + A037800 (A099594 n ^ 2).toNat

end

end A240519.P3883672421547803929

/-! ## A240519.P5039905547595036298

`A324417(A000010(n+1))+A301541(n+1)`
-/

namespace A240519.P5039905547595036298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324417 (A000010 (n + 1)).toNat + A301541 (n + 1)

end

end A240519.P5039905547595036298

/-!
# A240520: Numbers that set a new integer record for the ratio between the product and the sum of their digits.

The programs for A240520, there is no canonical definition to state claims against.
-/

/-! ## A240520.P2516581231330700550

`record[A176623(n+1)%A176588(3*n+2)]`
-/

namespace A240520.P2516581231330700550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176623 (n + 1)) (A176588 (3 * n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240520.P2516581231330700550

/-!
# A240521: a(n) = A050376(n)*A050376(n+1) where A050376(n) is the n-th number of the form p^(2^k) with p is prime and k >= 0.

The programs for A240521, the canonical program `A240521.P8578861033948740818` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240521 has offset 1).

The definition of A240521 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050376, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A240521.P8578861033948740818

`A050376(n+1)*A050376(n+2)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A240521

/-- `A050376(n+1)*A050376(n+2)` -/
def P8578861033948740818.Spec : Prop :=
  ∀ n, P8578861033948740818.a n = A240521 (n + 1)

theorem P8578861033948740818.correct : P8578861033948740818.Spec := by
  intro n
  simp only [A240521, Nat.add_sub_cancel]

end A240521

/-! ## A240521.P13870202912991412529

`A052330(3*2^n)`
-/

namespace A240521.P13870202912991412529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (3 * 2 ^ n)

end

end A240521.P13870202912991412529

namespace A240521

/-- `A052330(3*2^n)` -/
def P13870202912991412529.Spec : Prop :=
  ∀ n, P13870202912991412529.a n = A240521 (n + 1)

end A240521

/-! ## A240521.P5445139439032342794

`lcm(A050376(n+1), A050376(A000027(n+2)))`
-/

namespace A240521.P5445139439032342794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A050376 (n + 1)) (A050376 (A000027 (n + 2)).toNat)

end

end A240521.P5445139439032342794

namespace A240521

/-- `lcm(A050376(n+1), A050376(A000027(n+2)))` -/
def P5445139439032342794.Spec : Prop :=
  ∀ n, (P5445139439032342794.a n : ℤ) = A240521 (n + 1)

end A240521

/-! ## A240521.P11121412530458968200

`A084400(n+2)*A084400(n+3)`
-/

namespace A240521.P11121412530458968200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (n + 2) * A084400 (n + 3)

end

end A240521.P11121412530458968200

namespace A240521

/-- `A084400(n+2)*A084400(n+3)` -/
def P11121412530458968200.Spec : Prop :=
  ∀ n, P11121412530458968200.a n = A240521 (n + 1)

theorem P11121412530458968200.correct : P11121412530458968200.Spec := by
  intro n
  simp only [A240521, Nat.add_sub_cancel, A240521.P11121412530458968200.a, A240521.P8578861033948740818.a, A050376, A050376.P8445497075527543903.a, A084400, A084400.P13046145720619798035.f1, A084400.P13046145720619798035.a, A302777, A302777.P12979743537694390003.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A209229, A209229.P14119267658822519212.f1, A209229.P14119267658822519212.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A240521

/-! ## A240521.P13480203166702219357

`record[(n+3)*A300840(n+3)]`
-/

namespace A240521.P13480203166702219357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A300840 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240521.P13480203166702219357

namespace A240521

/-- `record[(n+3)*A300840(n+3)]` -/
def P13480203166702219357.Spec : Prop :=
  ∀ n, P13480203166702219357.a n = A240521 (n + 1)

end A240521

/-! ## A240521.P5807367919869333369

`∏{p}[A006094(n+1), A302023(#)]`
-/

namespace A240521.P5807367919869333369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A302023 p

end

end A240521.P5807367919869333369

namespace A240521

/-- `∏{p}[A006094(n+1), A302023(#)]` -/
def P5807367919869333369.Spec : Prop :=
  ∀ n, P5807367919869333369.a n = A240521 (n + 1)

end A240521

/-! ## A240521.P15708542060223705759

`eq[2, A302788(n+1)]+1`
-/

namespace A240521.P15708542060223705759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302788 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A240521.P15708542060223705759

namespace A240521

/-- `eq[2, A302788(n+1)]+1` -/
def P15708542060223705759.Spec : Prop :=
  ∀ n, (P15708542060223705759.a n : ℤ) = A240521 (n + 1)

end A240521

/-! ## A240521.P12775603427326185602

`A037992(n+2)/A037992(n)`
-/

namespace A240521.P12775603427326185602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037992 (n + 2) : ℚ) / (A037992 n : ℚ)

end

end A240521.P12775603427326185602

namespace A240521

/-- `A037992(n+2)/A037992(n)` -/
def P12775603427326185602.Spec : Prop :=
  ∀ n, P12775603427326185602.a n = (A240521 (n + 1) : ℚ)

end A240521

/-! ## A240521.P10540534979377730756

`A300841(a(n-1))` with `a(0)=6`
-/

namespace A240521.P10540534979377730756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A300841 (a (n - 1)).toNat

end

end A240521.P10540534979377730756

namespace A240521

/-- `A300841(a(n-1))` -/
def P10540534979377730756.Spec : Prop :=
  ∀ n, P10540534979377730756.a n = A240521 (n + 1)

end A240521

/-!
# A240522: S_5 sequence in partition of integers > 1 described in A240521.

The programs for A240522, there is no canonical definition to state claims against.
-/

/-! ## A240522.P3849114666009995724

`A300841(a(n-1))` with `a(0)=8`
-/

namespace A240522.P3849114666009995724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A300841 (a (n - 1)).toNat

end

end A240522.P3849114666009995724

/-! ## A240522.P7188164498713493300

`A050376(n+1)*A050376(n+3)`
-/

namespace A240522.P7188164498713493300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1) * A050376 (n + 3)

end

end A240522.P7188164498713493300

/-! ## A240522.P11441078042545171551

`A084400(n+2)*A084400(n+4)`
-/

namespace A240522.P11441078042545171551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (n + 2) * A084400 (n + 4)

end

end A240522.P11441078042545171551

/-! ## A240522.P9253687494142705769

`sqrt(A082522(n+1)*A082522(n+3))`
-/

namespace A240522.P9253687494142705769
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A082522 (n + 1) * A082522 (n + 3) : ℝ)

end

end A240522.P9253687494142705769

/-! ## A240522.P694959834491617724

`record[A181894(n+2)]*record[A181894(n+4)]`
-/

namespace A240522.P694959834491617724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181894 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181894 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A240522.P694959834491617724

/-!
# A240523: a(n) = floor(4^n/((1+sqrt(5))/2)^(2*n)).

The programs for A240523, the canonical program `A240523.P14857418622381581393` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240523 has offset 0).

The definition of A240523 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(4^n/((1+sqrt(5))/2)^(2*n))` (program `A240523.P15914321379184012608`, by `A240523.P15914321379184012608.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A240523.P14857418622381581393

`floor(4^n/ϕ^(2*n))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A240523

/-- `floor(4^n/ϕ^(2*n))` -/
def P14857418622381581393.Spec : Prop :=
  ∀ n, P14857418622381581393.a n = A240523 n

theorem P14857418622381581393.correct : P14857418622381581393.Spec := by
  intro n
  simp only [A240523]

end A240523

/-! ## A240523.P15914321379184012608

`floor(4^n/((1+sqrt(5))/2)^(2*n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A240523.P15914321379184012608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 ^ n : ℝ) / ((1 + Real.sqrt (5 : ℝ)) / 2) ^ (2 * n)⌋

end

end A240523.P15914321379184012608

namespace A240523

/-- `floor(4^n/((1+sqrt(5))/2)^(2*n))` -/
def P15914321379184012608.Spec : Prop :=
  ∀ n, P15914321379184012608.a n = A240523 n

theorem P15914321379184012608.correct : P15914321379184012608.Spec := by
  intro n
  simp only [A240523, Nat.add_sub_cancel, A240523.P15914321379184012608.a, A240523.P14857418622381581393.a, SequenceMachineLib.memo_apply]

end A240523

/-! ## A240523.P10968487323915093695

`A179241(floor(acot(n))+2*n)`
-/

namespace A240523.P10968487323915093695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179241 (⌊SequenceMachineLib.acot (n : ℝ)⌋ + (2 * n : ℤ)).toNat

end

end A240523.P10968487323915093695

namespace A240523

/-- `A179241(floor(acot(n))+2*n)` -/
def P10968487323915093695.Spec : Prop :=
  ∀ n, P10968487323915093695.a n = A240523 n

end A240523

/-! ## A240523.P4773899780595320419

`A179241(round(1/acot(n))+n)`
-/

namespace A240523.P4773899780595320419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179241 (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) + (n : ℤ)).toNat

end

end A240523.P4773899780595320419

namespace A240523

/-- `A179241(round(1/acot(n))+n)` -/
def P4773899780595320419.Spec : Prop :=
  ∀ n, P4773899780595320419.a n = A240523 n

end A240523

/-! ## A240523.P10505721887134617967

`A179241((2*n)^floor(atan(n)))`
-/

namespace A240523.P10505721887134617967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179241 (SequenceMachineLib.roundAway ((2 * n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

end

end A240523.P10505721887134617967

namespace A240523

/-- `A179241((2*n)^floor(atan(n)))` -/
def P10505721887134617967.Spec : Prop :=
  ∀ n, P10505721887134617967.a n = A240523 n

end A240523

/-! ## A240523.P4068446065796613782

`A179241(A004277(n))`
-/

namespace A240523.P4068446065796613782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179241 (A004277 n).toNat

end

end A240523.P4068446065796613782

namespace A240523

/-- `A179241(A004277(n))` -/
def P4068446065796613782.Spec : Prop :=
  ∀ n, P4068446065796613782.a n = A240523 n

end A240523

/-! ## A240523.P8130771904838096277

`A179241(A004275(n+1))`
-/

namespace A240523.P8130771904838096277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179241 (A004275 (n + 1)).toNat

end

end A240523.P8130771904838096277

namespace A240523

/-- `A179241(A004275(n+1))` -/
def P8130771904838096277.Spec : Prop :=
  ∀ n, P8130771904838096277.a n = A240523 n

end A240523

/-! ## A240523.P8546728970838776682

`A179241(A092535(n+1))`
-/

namespace A240523.P8546728970838776682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179241 (A092535 (n + 1)).toNat

end

end A240523.P8546728970838776682

namespace A240523

/-- `A179241(A092535(n+1))` -/
def P8546728970838776682.Spec : Prop :=
  ∀ n, P8546728970838776682.a n = A240523 n

end A240523

/-! ## A240523.P9753837594070753573

`A179241(A004278(n+2))`
-/

namespace A240523.P9753837594070753573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179241 (A004278 (n + 2)).toNat

end

end A240523.P9753837594070753573

namespace A240523

/-- `A179241(A004278(n+2))` -/
def P9753837594070753573.Spec : Prop :=
  ∀ n, P9753837594070753573.a n = A240523 n

end A240523

/-! ## A240523.P13050405065087356224

`A179241(A058992(n+2))`
-/

namespace A240523.P13050405065087356224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179241 (A058992 (n + 2)).toNat

end

end A240523.P13050405065087356224

namespace A240523

/-- `A179241(A058992(n+2))` -/
def P13050405065087356224.Spec : Prop :=
  ∀ n, P13050405065087356224.a n = A240523 n

end A240523

/-! ## A240523.P18325981135063596943

`A179241(A300576(n+2))`
-/

namespace A240523.P18325981135063596943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179241 (A300576 (n + 2)).toNat

end

end A240523.P18325981135063596943

namespace A240523

/-- `A179241(A300576(n+2))` -/
def P18325981135063596943.Spec : Prop :=
  ∀ n, P18325981135063596943.a n = A240523 n

end A240523

/-!
# A240524: S_7 sequence in partition of integers > 1 described in A240521.

The programs for A240524, there is no canonical definition to state claims against.
-/

/-! ## A240524.P13783763443217079926

`A037992(n+3)/A037992(n)`
-/

namespace A240524.P13783763443217079926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037992 (n + 3) : ℚ) / (A037992 n : ℚ)

end

end A240524.P13783763443217079926

/-! ## A240524.P2712659509745879223

`A050376(n+1)*A240521(n+2)`
-/

namespace A240524.P2712659509745879223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1) * A240521 (n + 2)

end

end A240524.P2712659509745879223

/-! ## A240524.P12159975561809994254

`A050376(n+2)*A240522(n+1)`
-/

namespace A240524.P12159975561809994254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 2) * A240522 (n + 1)

end

end A240524.P12159975561809994254

/-! ## A240524.P13636830904171650423

`A026477(n+2)*A240521(n+2)`
-/

namespace A240524.P13636830904171650423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026477 (n + 2) * A240521 (n + 2)

end

end A240524.P13636830904171650423

/-! ## A240524.P11081955567580997385

`lcm(A240521(n+1), A240522(n+1))`
-/

namespace A240524.P11081955567580997385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A240521 (n + 1)) (A240522 (n + 1))

end

end A240524.P11081955567580997385

/-!
# A240525: a(n) = 2^(n-2)*(2^(n+4)-(-1)^n+5).

The programs for A240525, the canonical program `A240525.P15507889611314380372` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240525 has offset 0).

The definition of A240525 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n-2)*(2^(n+4)-(-1)^n+5)` (program `A240525.P7497894707772045044`, by `A240525.P7497894707772045044.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A240525.P7497894707772045044

`2^(n-2)*(2^(n+4)-(-1)^n+5)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A240525.P7497894707772045044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * ((2 ^ (n + 4) : ℤ) - (-1) ^ n + 5 : ℚ)

end

end A240525.P7497894707772045044

namespace A240525

/-- `2^(n-2)*(2^(n+4)-(-1)^n+5)` -/
def P7497894707772045044.Spec : Prop :=
  ∀ n, P7497894707772045044.a n = (A240525 n : ℚ)

theorem P7497894707772045044.correct : P7497894707772045044.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A240525, Nat.add_sub_cancel, A240525.P7497894707772045044.a, A240525.P15507889611314380372.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A240525, Nat.add_sub_cancel, A240525.P7497894707772045044.a, A240525.P15507889611314380372.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A240525

/-! ## A240525.P9070442831666835475

`A084221(n)+A000302(n+1)`
-/

namespace A240525.P9070442831666835475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084221 n + A000302 (n + 1)

end

end A240525.P9070442831666835475

namespace A240525

/-- `A084221(n)+A000302(n+1)` -/
def P9070442831666835475.Spec : Prop :=
  ∀ n, P9070442831666835475.a n = A240525 n

end A240525

/-! ## A240525.P15507889611314380372

`4*a(n-1)+4*a(n-2)-16*a(n-3)` with `a(0)=5, a(1)=19, a(2)=68`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A240525

/-- `4*a(n-1)+4*a(n-2)-16*a(n-3)` -/
def P15507889611314380372.Spec : Prop :=
  ∀ n, P15507889611314380372.a n = A240525 n

theorem P15507889611314380372.correct : P15507889611314380372.Spec := by
  intro n
  simp only [A240525]

end A240525

/-! ## A240525.P1704479535282069707

`xor(2*4^n+2*a(n-1), 2^(n-1))` with `a(0)=5`
-/

namespace A240525.P1704479535282069707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  Int.xor ((2 * 4 ^ n : ℤ) + 2 * a (n - 1)) (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)))

end

end A240525.P1704479535282069707

namespace A240525

/-- `xor(2*4^n+2*a(n-1), 2^(n-1))` -/
def P1704479535282069707.Spec : Prop :=
  ∀ n, P1704479535282069707.a n = A240525 n

end A240525

/-! ## A240525.P3175014061738362058

`A240526(n)-2^(n+1)`
-/

namespace A240525.P3175014061738362058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240526 n - (2 ^ (n + 1) : ℤ)

end

end A240525.P3175014061738362058

namespace A240525

/-- `A240526(n)-2^(n+1)` -/
def P3175014061738362058.Spec : Prop :=
  ∀ n, P3175014061738362058.a n = A240525 n

end A240525

/-! ## A240525.P8707095788006723772

`A155543(n+1)+A084221(n)`
-/

namespace A240525.P8707095788006723772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155543 (n + 1) + A084221 n

end

end A240525.P8707095788006723772

namespace A240525

/-- `A155543(n+1)+A084221(n)` -/
def P8707095788006723772.Spec : Prop :=
  ∀ n, P8707095788006723772.a n = A240525 n

end A240525

/-! ## A240525.P13627152523998586084

`A028402(n+2)-A213173(n)`
-/

namespace A240525.P13627152523998586084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028402 (n + 2) - A213173 n

end

end A240525.P13627152523998586084

namespace A240525

/-- `A028402(n+2)-A213173(n)` -/
def P13627152523998586084.Spec : Prop :=
  ∀ n, P13627152523998586084.a n = A240525 n

end A240525

/-! ## A240525.P11383819704097516703

`A084221(n)+2*A004171(n)`
-/

namespace A240525.P11383819704097516703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084221 n + 2 * A004171 n

end

end A240525.P11383819704097516703

namespace A240525

/-- `A084221(n)+2*A004171(n)` -/
def P11383819704097516703.Spec : Prop :=
  ∀ n, P11383819704097516703.a n = A240525 n

end A240525

/-! ## A240525.P4678689551702329911

`A084221(n)+A000079(n+1)²`
-/

namespace A240525.P4678689551702329911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084221 n + A000079 (n + 1) ^ 2

end

end A240525.P4678689551702329911

namespace A240525

/-- `A084221(n)+A000079(n+1)²` -/
def P4678689551702329911.Spec : Prop :=
  ∀ n, P4678689551702329911.a n = A240525 n

end A240525

/-! ## A240525.P13382650628514325502

`A084221(n)+A122803(n+1)²`
-/

namespace A240525.P13382650628514325502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084221 n + A122803 (n + 1) ^ 2

end

end A240525.P13382650628514325502

namespace A240525

/-- `A084221(n)+A122803(n+1)²` -/
def P13382650628514325502.Spec : Prop :=
  ∀ n, P13382650628514325502.a n = A240525 n

end A240525

/-! ## A240525.P17515665568214482050

`A084221(n)+A155559(n+1)²`
-/

namespace A240525.P17515665568214482050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084221 n + A155559 (n + 1) ^ 2

end

end A240525.P17515665568214482050

namespace A240525

/-- `A084221(n)+A155559(n+1)²` -/
def P17515665568214482050.Spec : Prop :=
  ∀ n, P17515665568214482050.a n = A240525 n

end A240525

/-! ## A240525.P7952203158668727511

`A084221(2*(n+1))+A084221(n)`
-/

namespace A240525.P7952203158668727511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084221 (2 * (n + 1)) + A084221 n

end

end A240525.P7952203158668727511

namespace A240525

/-- `A084221(2*(n+1))+A084221(n)` -/
def P7952203158668727511.Spec : Prop :=
  ∀ n, P7952203158668727511.a n = A240525 n

end A240525

/-! ## A240525.P14380537398877544674

`A137824(3*n+4)+record[A137824(n+1)]`
-/

namespace A240525.P14380537398877544674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137824 (3 * n + 4) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240525.P14380537398877544674

namespace A240525

/-- `A137824(3*n+4)+record[A137824(n+1)]` -/
def P14380537398877544674.Spec : Prop :=
  ∀ n, P14380537398877544674.a n = A240525 n

end A240525

/-! ## A240525.P14651592149367116782

`A084221(n)+(A213173(n)+A084221(n))²`
-/

namespace A240525.P14651592149367116782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084221 n + (A213173 n + A084221 n) ^ 2

end

end A240525.P14651592149367116782

namespace A240525

/-- `A084221(n)+(A213173(n)+A084221(n))²` -/
def P14651592149367116782.Spec : Prop :=
  ∀ n, P14651592149367116782.a n = A240525 n

end A240525

/-! ## A240525.P1912100521172173835

`A000302(n+1)+A092808(n+1)+A092808(n)`
-/

namespace A240525.P1912100521172173835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (n + 1) + (A092808 (n + 1) + A092808 n)

end

end A240525.P1912100521172173835

namespace A240525

/-- `A000302(n+1)+A092808(n+1)+A092808(n)` -/
def P1912100521172173835.Spec : Prop :=
  ∀ n, P1912100521172173835.a n = A240525 n

end A240525

/-! ## A240525.P12155184034314665484

`A000302(n+1)+A097163(n+1)-A097163(n)`
-/

namespace A240525.P12155184034314665484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (n + 1) + (A097163 (n + 1) - A097163 n)

end

end A240525.P12155184034314665484

namespace A240525

/-- `A000302(n+1)+A097163(n+1)-A097163(n)` -/
def P12155184034314665484.Spec : Prop :=
  ∀ n, P12155184034314665484.a n = A240525 n

end A240525

/-! ## A240525.P6787311131039653912

`A000302(n+1)+A137208(n+1)-A137208(n)`
-/

namespace A240525.P6787311131039653912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (n + 1) + (A137208 (n + 1) - A137208 n)

end

end A240525.P6787311131039653912

namespace A240525

/-- `A000302(n+1)+A137208(n+1)-A137208(n)` -/
def P6787311131039653912.Spec : Prop :=
  ∀ n, P6787311131039653912.a n = A240525 n

end A240525

/-! ## A240525.P3880460638477941521

`A020707(2*n)+∪[A020707(2*n), A134683(2*n)]`
-/

namespace A240525.P3880460638477941521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134683 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 (2 * n) + (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A240525.P3880460638477941521

namespace A240525

/-- `A020707(2*n)+∪[A020707(2*n), A134683(2*n)]` -/
def P3880460638477941521.Spec : Prop :=
  ∀ n, P3880460638477941521.a n = A240525 n

end A240525

/-! ## A240525.P15743695741688141635

`A151821(2*(n+1))+∪[A151821(2*(n+1)), A134683(2*n)]`
-/

namespace A240525.P15743695741688141635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151821 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134683 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151821 (2 * (n + 1)) + (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A240525.P15743695741688141635

namespace A240525

/-- `A151821(2*(n+1))+∪[A151821(2*(n+1)), A134683(2*n)]` -/
def P15743695741688141635.Spec : Prop :=
  ∀ n, P15743695741688141635.a n = A240525 n

end A240525

/-! ## A240525.P300132464294534184

`A198633(2*n+1)+∪[A198633(2*n+1), A134683(2*n)]`
-/

namespace A240525.P300132464294534184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134683 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 (2 * n + 1) + (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A240525.P300132464294534184

namespace A240525

/-- `A198633(2*n+1)+∪[A198633(2*n+1), A134683(2*n)]` -/
def P300132464294534184.Spec : Prop :=
  ∀ n, P300132464294534184.a n = A240525 n

end A240525

/-!
# A240526: a(n) = 2^(n-2)*(2^(n+4)-(-1)^n+13).

The programs for A240526, the canonical program `A240526.P17640045462200837240` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240526 has offset 0).

The definition of A240526 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n-2)*(2^(n+4)-(-1)^n+13)` (program `A240526.P2435279478329799517`, by `A240526.P2435279478329799517.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A240526.P2435279478329799517

`2^(n-2)*(2^(n+4)-(-1)^n+13)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A240526.P2435279478329799517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * ((2 ^ (n + 4) : ℤ) - (-1) ^ n + 13 : ℚ)

end

end A240526.P2435279478329799517

namespace A240526

/-- `2^(n-2)*(2^(n+4)-(-1)^n+13)` -/
def P2435279478329799517.Spec : Prop :=
  ∀ n, P2435279478329799517.a n = (A240526 n : ℚ)

theorem P2435279478329799517.correct : P2435279478329799517.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A240526, Nat.add_sub_cancel, A240526.P2435279478329799517.a, A240526.P17640045462200837240.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A240526, Nat.add_sub_cancel, A240526.P2435279478329799517.a, A240526.P17640045462200837240.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A240526

/-! ## A240526.P17640045462200837240

`4*a(n-1)+4*a(n-2)-16*a(n-3)` with `a(0)=7, a(1)=23, a(2)=76`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A240526

/-- `4*a(n-1)+4*a(n-2)-16*a(n-3)` -/
def P17640045462200837240.Spec : Prop :=
  ∀ n, P17640045462200837240.a n = A240526 n

theorem P17640045462200837240.correct : P17640045462200837240.Spec := by
  intro n
  simp only [A240526]

end A240526

/-! ## A240526.P7941939290516957163

`xor(2*4^n+2*a(n-1), 2^(n-1))` with `a(0)=7`
-/

namespace A240526.P7941939290516957163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  Int.xor ((2 * 4 ^ n : ℤ) + 2 * a (n - 1)) (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)))

end

end A240526.P7941939290516957163

namespace A240526

/-- `xor(2*4^n+2*a(n-1), 2^(n-1))` -/
def P7941939290516957163.Spec : Prop :=
  ∀ n, P7941939290516957163.a n = A240526 n

end A240526

/-! ## A240526.P2367400636676694205

`A240525(n)+2^(n+1)`
-/

namespace A240526.P2367400636676694205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240525 n + (2 ^ (n + 1) : ℤ)

end

end A240526.P2367400636676694205

namespace A240526

/-- `A240525(n)+2^(n+1)` -/
def P2367400636676694205.Spec : Prop :=
  ∀ n, P2367400636676694205.a n = A240526 n

end A240526

/-! ## A240526.P15509845195479895832

`A356880(n+1)+A171499(n)`
-/

namespace A240526.P15509845195479895832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356880 (n + 1) + A171499 n

end

end A240526.P15509845195479895832

namespace A240526

/-- `A356880(n+1)+A171499(n)` -/
def P15509845195479895832.Spec : Prop :=
  ∀ n, P15509845195479895832.a n = A240526 n

end A240526

/-! ## A240526.P17054732284143975947

`A084221(n)+A028402(n+2)`
-/

namespace A240526.P17054732284143975947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084221 n + A028402 (n + 2)

end

end A240526.P17054732284143975947

namespace A240526

/-- `A084221(n)+A028402(n+2)` -/
def P17054732284143975947.Spec : Prop :=
  ∀ n, P17054732284143975947.a n = A240526 n

end A240526

/-! ## A240526.P15477729393248395206

`A000051(n)+A240525(n)+A000225(n)`
-/

namespace A240526.P15477729393248395206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + (A240525 n + A000225 n)

end

end A240526.P15477729393248395206

namespace A240526

/-- `A000051(n)+A240525(n)+A000225(n)` -/
def P15477729393248395206.Spec : Prop :=
  ∀ n, P15477729393248395206.a n = A240526 n

end A240526

/-! ## A240526.P16051014351563294112

`A000051(n+1)²-A000051(A052928(n))`
-/

namespace A240526.P16051014351563294112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1) ^ 2 - A000051 (A052928 n).toNat

end

end A240526.P16051014351563294112

namespace A240526

/-- `A000051(n+1)²-A000051(A052928(n))` -/
def P16051014351563294112.Spec : Prop :=
  ∀ n, P16051014351563294112.a n = A240526 n

end A240526

/-! ## A240526.P14241549553043014071

`A000051(n+1)²-A000051(A004524(2*n))`
-/

namespace A240526.P14241549553043014071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1) ^ 2 - A000051 (A004524 (2 * n)).toNat

end

end A240526.P14241549553043014071

namespace A240526

/-- `A000051(n+1)²-A000051(A004524(2*n))` -/
def P14241549553043014071.Spec : Prop :=
  ∀ n, P14241549553043014071.a n = A240526 n

end A240526

/-! ## A240526.P16501318482733445853

`A000079(n+1)+A084221(n)+A000302(n+1)`
-/

namespace A240526.P16501318482733445853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) + (A084221 n + A000302 (n + 1))

end

end A240526.P16501318482733445853

namespace A240526

/-- `A000079(n+1)+A084221(n)+A000302(n+1)` -/
def P16501318482733445853.Spec : Prop :=
  ∀ n, P16501318482733445853.a n = A240526 n

end A240526

/-! ## A240526.P4167653687531183389

`A084221(n)+A000051(n+1)*A000079(n+1)`
-/

namespace A240526.P4167653687531183389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084221 n + A000051 (n + 1) * A000079 (n + 1)

end

end A240526.P4167653687531183389

namespace A240526

/-- `A084221(n)+A000051(n+1)*A000079(n+1)` -/
def P4167653687531183389.Spec : Prop :=
  ∀ n, P4167653687531183389.a n = A240526 n

end A240526

/-!
# A240527: Indices of 7-almost prime triangular numbers.

The programs for A240527, there is no canonical definition to state claims against.
-/

/-! ## A240527.P11565851437480285014

`floor(sqrt(2*A076581(n+1)))`
-/

namespace A240527.P11565851437480285014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A076581 (n + 1))

end

end A240527.P11565851437480285014

/-! ## A240527.P11319358050698801876

`eq[7, A069904(A028310(n))]`
-/

namespace A240527.P11319358050698801876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A240527.P11319358050698801876

/-! ## A240527.P16545421854068799444

`A020725(eq[7, A069904(n+1)])`
-/

namespace A240527.P16545421854068799444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240527.P16545421854068799444

/-! ## A240527.P7235057445042020976

`A080098(A076581(n+1))`
-/

namespace A240527.P7235057445042020976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (A076581 (n + 1)).toNat

end

end A240527.P7235057445042020976

/-! ## A240527.P6681535855355210845

`eq[7, A001222(C(n+2, 2))]+1`
-/

namespace A240527.P6681535855355210845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.choose (n + 2) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A240527.P6681535855355210845

/-!
# A240528: Indices of 8-almost prime triangular numbers.

The programs for A240528, there is no canonical definition to state claims against.
-/

/-! ## A240528.P5760788707470604627

`floor(sqrt(2*A076582(n+1)))`
-/

namespace A240528.P5760788707470604627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A076582 (n + 1))

end

end A240528.P5760788707470604627

/-! ## A240528.P15368422605240012667

`eq[8, A069904(A028310(n))]`
-/

namespace A240528.P15368422605240012667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A240528.P15368422605240012667

/-! ## A240528.P16787311163718330396

`A020725(eq[8, A069904(n+1)])`
-/

namespace A240528.P16787311163718330396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240528.P16787311163718330396

/-! ## A240528.P2765706795670734722

`A003602(eq[11, A193295(n+2)])`
-/

namespace A240528.P2765706795670734722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193295 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240528.P2765706795670734722

/-! ## A240528.P14290780882559699288

`A065033(eq[11, A193295(n+2)])`
-/

namespace A240528.P14290780882559699288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193295 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240528.P14290780882559699288

/-!
# A240529: Indices of 9-almost prime triangular numbers.

The programs for A240529, there is no canonical definition to state claims against.
-/

/-! ## A240529.P10157800407081770506

`floor(sqrt(2*A076583(n+1)))`
-/

namespace A240529.P10157800407081770506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A076583 (n + 1))

end

end A240529.P10157800407081770506

/-! ## A240529.P15615365248311940861

`round(sqrt(2*A076583(n+1))*A014963(6*(n+1)))`
-/

namespace A240529.P15615365248311940861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A076583 (n + 1) : ℝ) * (A014963 (6 * (n + 1)) : ℝ))

end

end A240529.P15615365248311940861

/-! ## A240529.P1449922760606995993

`ceil(sqrt(2*A076583(n+1))-A014963(12*(n+1)))`
-/

namespace A240529.P1449922760606995993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A076583 (n + 1) : ℝ) - (A014963 (12 * (n + 1)) : ℝ)⌉

end

end A240529.P1449922760606995993

/-! ## A240529.P8789371495272021346

`-A001489(round(sqrt(2*A076583(n+1))))`
-/

namespace A240529.P8789371495272021346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001489 (SequenceMachineLib.roundAway (Real.sqrt (2 * A076583 (n + 1) : ℝ))).toNat

end

end A240529.P8789371495272021346

/-!
# A240530: a(n) = 4*(2*n)! / (n!)^2.

The programs for A240530, the canonical program `A240530.P76168564774585467` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240530 has offset 0).

The definition of A240530 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A240530.P76168564774585467

`2*A028329(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A240530

/-- `2*A028329(n)` -/
def P76168564774585467.Spec : Prop :=
  ∀ n, P76168564774585467.a n = A240530 n

theorem P76168564774585467.correct : P76168564774585467.Spec := by
  intro n
  simp only [A240530]

end A240530

/-! ## A240530.P12216661981522828264

`4*A000984(n)`
-/

namespace A240530.P12216661981522828264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000984 n

end

end A240530.P12216661981522828264

namespace A240530

/-- `4*A000984(n)` -/
def P12216661981522828264.Spec : Prop :=
  ∀ n, P12216661981522828264.a n = A240530 n

theorem P12216661981522828264.correct : P12216661981522828264.Spec := by
  intro n
  simp only [A240530, Nat.add_sub_cancel, A240530.P12216661981522828264.a, A240530.P76168564774585467.a, A000984, A000984.P7946844122574426130.a, A028329, A028329.P2723209719397665586.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A240530

/-! ## A240530.P15856646853511288748

`4*C(2*n, n)`
-/

namespace A240530.P15856646853511288748
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose (2 * n) n

end

end A240530.P15856646853511288748

namespace A240530

/-- `4*C(2*n, n)` -/
def P15856646853511288748.Spec : Prop :=
  ∀ n, (P15856646853511288748.a n : ℤ) = A240530 n

theorem P15856646853511288748.correct : P15856646853511288748.Spec := by
  intro n
  simp only [A240530, Nat.add_sub_cancel, A240530.P15856646853511288748.a, A240530.P76168564774585467.a, A028329, A028329.P2723209719397665586.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A240530

/-! ## A240530.P9923124663923353256

`4*(2*n)!/n!²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A240530.P9923124663923353256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * Nat.factorial (2 * n) : ℚ) / (Nat.factorial n ^ 2 : ℚ)

end

end A240530.P9923124663923353256

namespace A240530

/-- `4*(2*n)!/n!²` -/
def P9923124663923353256.Spec : Prop :=
  ∀ n, P9923124663923353256.a n = (A240530 n : ℚ)

end A240530

/-! ## A240530.P13836064834641258292

`(4-2/n)*a(n-1)` with `a(0)=4`
-/

namespace A240530.P13836064834641258292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  (4 - 2 / (n : ℚ)) * a (n - 1)

end

end A240530.P13836064834641258292

namespace A240530

/-- `(4-2/n)*a(n-1)` -/
def P13836064834641258292.Spec : Prop :=
  ∀ n, P13836064834641258292.a n = (A240530 n : ℚ)

end A240530

/-! ## A240530.P17805730205328784691

`2*(2-n^(-1))*a(n-1)` with `a(0)=4`
-/

namespace A240530.P17805730205328784691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  2 * ((2 - (n : ℚ) ^ (-1 : ℤ)) * a (n - 1))

end

end A240530.P17805730205328784691

namespace A240530

/-- `2*(2-n^(-1))*a(n-1)` -/
def P17805730205328784691.Spec : Prop :=
  ∀ n, P17805730205328784691.a n = (A240530 n : ℚ)

end A240530

/-! ## A240530.P2816123417534920537

`record[a(n-1)/(floor(n/2)/n-1)]` with `a(0)=4`
-/

namespace A240530.P2816123417534920537
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240530.P2816123417534920537

namespace A240530

/-- `record[a(n-1)/(floor(n/2)/n-1)]` -/
def P2816123417534920537.Spec : Prop :=
  ∀ n, P2816123417534920537.a n = (A240530 n : ℚ)

end A240530

/-! ## A240530.P10941238829043473164

`A134770(n)+3`
-/

namespace A240530.P10941238829043473164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134770 n + 3

end

end A240530.P10941238829043473164

namespace A240530

/-- `A134770(n)+3` -/
def P10941238829043473164.Spec : Prop :=
  ∀ n, P10941238829043473164.a n = A240530 n

theorem P10941238829043473164.correct : P10941238829043473164.Spec := by
  intro n
  simp only [A240530, Nat.add_sub_cancel, A240530.P10941238829043473164.a, A240530.P76168564774585467.a, A028329, A028329.P2723209719397665586.a, A134770, A134770.P14019126110980162082.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A240530

/-! ## A240530.P8819175173159773706

`lcm(4, A146534(n))`
-/

namespace A240530.P8819175173159773706
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A146534 n)

end

end A240530.P8819175173159773706

namespace A240530

/-- `lcm(4, A146534(n))` -/
def P8819175173159773706.Spec : Prop :=
  ∀ n, (P8819175173159773706.a n : ℤ) = A240530 n

end A240530

/-! ## A240530.P17370214840843928927

`record[4*A081668(n)]`
-/

namespace A240530.P17370214840843928927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A081668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240530.P17370214840843928927

namespace A240530

/-- `record[4*A081668(n)]` -/
def P17370214840843928927.Spec : Prop :=
  ∀ n, P17370214840843928927.a n = A240530 n

end A240530

/-! ## A240530.P2177607601270511330

`record[4*A126869(n)]`
-/

namespace A240530.P2177607601270511330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240530.P2177607601270511330

namespace A240530

/-- `record[4*A126869(n)]` -/
def P2177607601270511330.Spec : Prop :=
  ∀ n, P2177607601270511330.a n = A240530 n

end A240530

/-! ## A240530.P15051570140148136522

`record[4*A126930(n)]`
-/

namespace A240530.P15051570140148136522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A126930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240530.P15051570140148136522

namespace A240530

/-- `record[4*A126930(n)]` -/
def P15051570140148136522.Spec : Prop :=
  ∀ n, P15051570140148136522.a n = A240530 n

end A240530

/-! ## A240530.P6497146688609955190

`A047073(2*(n+1))`
-/

namespace A240530.P6497146688609955190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047073 (2 * (n + 1))

end

end A240530.P6497146688609955190

namespace A240530

/-- `A047073(2*(n+1))` -/
def P6497146688609955190.Spec : Prop :=
  ∀ n, P6497146688609955190.a n = A240530 n

end A240530

/-! ## A240530.P12987562619566861102

`2*(A134760(n)+1)`
-/

namespace A240530.P12987562619566861102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A134760 n + 1)

end

end A240530.P12987562619566861102

namespace A240530

/-- `2*(A134760(n)+1)` -/
def P12987562619566861102.Spec : Prop :=
  ∀ n, P12987562619566861102.a n = A240530 n

theorem P12987562619566861102.correct : P12987562619566861102.Spec := by
  intro n
  simp only [A240530, Nat.add_sub_cancel, A240530.P12987562619566861102.a, A240530.P76168564774585467.a, A028329, A028329.P2723209719397665586.a, A134760, A134760.P5337587419616991528.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A240530

/-! ## A240530.P7774389851926921666

`A134771(2*n)+3`
-/

namespace A240530.P7774389851926921666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134771 (2 * n) + 3

end

end A240530.P7774389851926921666

namespace A240530

/-- `A134771(2*n)+3` -/
def P7774389851926921666.Spec : Prop :=
  ∀ n, P7774389851926921666.a n = A240530 n

end A240530

/-! ## A240530.P5837248596603572054

`4*A001405(2*n)`
-/

namespace A240530.P5837248596603572054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001405 (2 * n)

end

end A240530.P5837248596603572054

namespace A240530

/-- `4*A001405(2*n)` -/
def P5837248596603572054.Spec : Prop :=
  ∀ n, P5837248596603572054.a n = A240530 n

end A240530

/-! ## A240530.P11109705639870588222

`4*A063886(2*n)`
-/

namespace A240530.P11109705639870588222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A063886 (2 * n)

end

end A240530.P11109705639870588222

namespace A240530

/-- `4*A063886(2*n)` -/
def P11109705639870588222.Spec : Prop :=
  ∀ n, P11109705639870588222.a n = A240530 n

end A240530

/-! ## A240530.P12529227444794706269

`4*A081668(2*n)`
-/

namespace A240530.P12529227444794706269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A081668 (2 * n)

end

end A240530.P12529227444794706269

namespace A240530

/-- `4*A081668(2*n)` -/
def P12529227444794706269.Spec : Prop :=
  ∀ n, P12529227444794706269.a n = A240530 n

end A240530

/-! ## A240530.P14860429809850081270

`4*A089849(2*n)`
-/

namespace A240530.P14860429809850081270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A089849 (2 * n)

end

end A240530.P14860429809850081270

namespace A240530

/-- `4*A089849(2*n)` -/
def P14860429809850081270.Spec : Prop :=
  ∀ n, P14860429809850081270.a n = A240530 n

end A240530

/-! ## A240530.P11962918706735861625

`4*A126869(2*n)`
-/

namespace A240530.P11962918706735861625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A126869 (2 * n)

end

end A240530.P11962918706735861625

namespace A240530

/-- `4*A126869(2*n)` -/
def P11962918706735861625.Spec : Prop :=
  ∀ n, P11962918706735861625.a n = A240530 n

end A240530

/-!
# A240531: Numbers n such that 24*n + 19 is not prime.

The programs for A240531, the canonical program `A240531.P5748887671920028653` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240531 has offset 1).

The definition of A240531 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240531.P5748887671920028653

`comp[A139532(n+1)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A240531

/-- `comp[A139532(n+1)]` -/
def P5748887671920028653.Spec : Prop :=
  ∀ n, (P5748887671920028653.a n : ℤ) = A240531 (n + 1)

theorem P5748887671920028653.correct : P5748887671920028653.Spec := by
  intro n
  simp only [A240531, Nat.add_sub_cancel]

end A240531

/-! ## A240531.P8095491647191305432

`lt[1, A001222(24*(n+1)-5)]`
-/

namespace A240531.P8095491647191305432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (24 * (n + 1) - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A240531.P8095491647191305432

namespace A240531

/-- `lt[1, A001222(24*(n+1)-5)]` -/
def P8095491647191305432.Spec : Prop :=
  ∀ n, (P8095491647191305432.a n : ℤ) = A240531 (n + 1)

end A240531

/-! ## A240531.P12496500341284895299

`eq[0, A075743(A017137(n))]`
-/

namespace A240531.P12496500341284895299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A017137 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A240531.P12496500341284895299

namespace A240531

/-- `eq[0, A075743(A017137(n))]` -/
def P12496500341284895299.Spec : Prop :=
  ∀ n, (P12496500341284895299.a n : ℤ) = A240531 (n + 1)

end A240531

/-! ## A240531.P13356262706492374817

`lt[2, A000005(A017605(2*n+1))]`
-/

namespace A240531.P13356262706492374817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A017605 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A240531.P13356262706492374817

namespace A240531

/-- `lt[2, A000005(A017605(2*n+1))]` -/
def P13356262706492374817.Spec : Prop :=
  ∀ n, (P13356262706492374817.a n : ℤ) = A240531 (n + 1)

end A240531

/-! ## A240531.P2549762388748437305

`lt[A000010(A017605(2*n+1)), A017605(2*n)]`
-/

namespace A240531.P2549762388748437305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A017605 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A240531.P2549762388748437305

namespace A240531

/-- `lt[A000010(A017605(2*n+1)), A017605(2*n)]` -/
def P2549762388748437305.Spec : Prop :=
  ∀ n, (P2549762388748437305.a n : ℤ) = A240531 (n + 1)

end A240531

/-! ## A240531.P200486897424207393

`lt[A017653(2*n+1), A000203(A017605(2*n+1))]`
-/

namespace A240531.P200486897424207393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A017605 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A240531.P200486897424207393

namespace A240531

/-- `lt[A017653(2*n+1), A000203(A017605(2*n+1))]` -/
def P200486897424207393.Spec : Prop :=
  ∀ n, (P200486897424207393.a n : ℤ) = A240531 (n + 1)

end A240531

/-! ## A240531.P1864267540798606723

`lt[1, A193773(12*n+9)]`
-/

namespace A240531.P1864267540798606723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193773 (12 * n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A240531.P1864267540798606723

namespace A240531

/-- `lt[1, A193773(12*n+9)]` -/
def P1864267540798606723.Spec : Prop :=
  ∀ n, (P1864267540798606723.a n : ℤ) = A240531 (n + 1)

end A240531

/-! ## A240531.P5934153801362624912

`eq[1, A245509(24*(n+1)-7)]`
-/

namespace A240531.P5934153801362624912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245509 (24 * (n + 1) - 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A240531.P5934153801362624912

namespace A240531

/-- `eq[1, A245509(24*(n+1)-7)]` -/
def P5934153801362624912.Spec : Prop :=
  ∀ n, (P5934153801362624912.a n : ℤ) = A240531 (n + 1)

end A240531

/-! ## A240531.P14834187239902002925

`eq[1, A245513(24*(n+1)-7)]`
-/

namespace A240531.P14834187239902002925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245513 (24 * (n + 1) - 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A240531.P14834187239902002925

namespace A240531

/-- `eq[1, A245513(24*(n+1)-7)]` -/
def P14834187239902002925.Spec : Prop :=
  ∀ n, (P14834187239902002925.a n : ℤ) = A240531 (n + 1)

end A240531

/-! ## A240531.P12637277095143979839

`lt[A014963(record[6*xor(3, n)]+1), n]`
-/

namespace A240531.P12637277095143979839
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.xor 3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A240531.P12637277095143979839

namespace A240531

/-- `lt[A014963(record[6*xor(3, n)]+1), n]` -/
def P12637277095143979839.Spec : Prop :=
  ∀ n, (P12637277095143979839.a n : ℤ) = A240531 (n + 1)

end A240531

/-! ## A240531.P4763859044656478369

`lt[2, A091570(2*(12*n+9)+1)]`
-/

namespace A240531.P4763859044656478369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091570 (2 * (12 * n + 9) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A240531.P4763859044656478369

namespace A240531

/-- `lt[2, A091570(2*(12*n+9)+1)]` -/
def P4763859044656478369.Spec : Prop :=
  ∀ n, (P4763859044656478369.a n : ℤ) = A240531 (n + 1)

end A240531

/-! ## A240531.P12470446790628014948

`lt[A014963(6*(4*n+3)+1), n]`
-/

namespace A240531.P12470446790628014948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (4 * n + 3) + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A240531.P12470446790628014948

namespace A240531

/-- `lt[A014963(6*(4*n+3)+1), n]` -/
def P12470446790628014948.Spec : Prop :=
  ∀ n, (P12470446790628014948.a n : ℤ) = A240531 (n + 1)

end A240531

/-! ## A240531.P17639551978202486007

`lt[2, A046069(3*(n+1))]`
-/

namespace A240531.P17639551978202486007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046069 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A240531.P17639551978202486007

namespace A240531

/-- `lt[2, A046069(3*(n+1))]` -/
def P17639551978202486007.Spec : Prop :=
  ∀ n, (P17639551978202486007.a n : ℤ) = A240531 (n + 1)

end A240531

/-!
# A240533: a(n) = numerators of n!/10^n.

The programs for A240533, there is no canonical definition to state claims against.
-/

/-! ## A240533.P8353481686322729538

`∏[gcd(n, A160589(n))]`
-/

namespace A240533.P8353481686322729538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A160589 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A240533.P8353481686322729538

/-! ## A240533.P10484057459219400799

`a(n-1)*A132740(n)` with `a(0)=1`
-/

namespace A240533.P10484057459219400799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A132740 n

end

end A240533.P10484057459219400799

/-! ## A240533.P11882026427126820241

`∏[A132740(A004277(n))]`
-/

namespace A240533.P11882026427126820241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132740 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A240533.P11882026427126820241

/-! ## A240533.P13767214843817644437

`∏[A132740(A008574(n))]`
-/

namespace A240533.P13767214843817644437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132740 (A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A240533.P13767214843817644437

/-! ## A240533.P10410713013610479848

`∏[A132740(A008706(n))]`
-/

namespace A240533.P10410713013610479848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132740 (A008706 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A240533.P10410713013610479848

/-! ## A240533.P5782952365116000801

`∏[A132740(A234275(n))]`
-/

namespace A240533.P5782952365116000801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132740 (A234275 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A240533.P5782952365116000801

/-! ## A240533.P15377985317663440765

`∏[A132740(A257088(n))]`
-/

namespace A240533.P15377985317663440765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132740 (A257088 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A240533.P15377985317663440765

/-! ## A240533.P7030405468551060904

`lcm(A160589(n), A160654(n))`
-/

namespace A240533.P7030405468551060904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A160589 n) (A160654 n)

end

end A240533.P7030405468551060904

/-! ## A240533.P14716924314517620249

`∏[A132740(A007318(A000124(n)))]`
-/

namespace A240533.P14716924314517620249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132740 (A007318 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A240533.P14716924314517620249

/-! ## A240533.P17360179665902895790

`∏[A132740(A134478(A000217(n)))]`
-/

namespace A240533.P17360179665902895790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132740 (A134478 (A000217 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A240533.P17360179665902895790

/-!
# A240534: a(n) = denominators of n!/10^n.

The programs for A240534, the canonical program `A240534.P10118100572534931694` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240534 has offset 0).

The definition of A240534 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240534.P10118100572534931694

`10*a(n-1)/gcd(n, a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A240534

/-- `10*a(n-1)/gcd(n, a(n-1))` -/
def P10118100572534931694.Spec : Prop :=
  ∀ n, P10118100572534931694.a n = (A240534 n : ℚ)

end A240534

/-! ## A240534.P5244583888820456925

`10/n*lcm(n, a(n-1))` with `a(0)=1`
-/

namespace A240534.P5244583888820456925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  10 / (n : ℚ) * (Int.lcm (n : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ)

end

end A240534.P5244583888820456925

namespace A240534

/-- `10/n*lcm(n, a(n-1))` -/
def P5244583888820456925.Spec : Prop :=
  ∀ n, P5244583888820456925.a n = (A240534 n : ℚ)

end A240534

/-! ## A240534.P5546621479378986267

`10^n/gcd(10^n, A000142(n))`
-/

namespace A240534.P5546621479378986267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℚ) / (Int.gcd (10 ^ n : ℤ) (A000142 n) : ℚ)

end

end A240534.P5546621479378986267

namespace A240534

/-- `10^n/gcd(10^n, A000142(n))` -/
def P5546621479378986267.Spec : Prop :=
  ∀ n, P5546621479378986267.a n = (A240534 n : ℚ)

end A240534

/-! ## A240534.P1427143930032374410

`A011557(n)/A000142(n)*A240533(n)`
-/

namespace A240534.P1427143930032374410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011557 n : ℚ) / (A000142 n : ℚ) * (A240533 n : ℚ)

end

end A240534.P1427143930032374410

namespace A240534

/-- `A011557(n)/A000142(n)*A240533(n)` -/
def P1427143930032374410.Spec : Prop :=
  ∀ n, P1427143930032374410.a n = (A240534 n : ℚ)

end A240534

/-! ## A240534.P14745561968062688152

`10*gcd(a(n-1), A025755(n))` with `a(0)=1, a(1)=10`
-/

namespace A240534.P14745561968062688152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n a =>
  10 * Int.gcd (a (n - 1) : ℤ) (A025755 n)

end

end A240534.P14745561968062688152

namespace A240534

/-- `10*gcd(a(n-1), A025755(n))` -/
def P14745561968062688152.Spec : Prop :=
  ∀ n, (P14745561968062688152.a n : ℤ) = A240534 n

end A240534

/-!
# A240535: a(n)=m if n belongs to the S_m sequence described in A240521.

The programs for A240535, there is no canonical definition to state claims against.
-/

/-! ## A240535.P9554341560645032388

`A030101(A302787(n+2))`
-/

namespace A240535.P9554341560645032388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A302787 (n + 2)).toNat

end

end A240535.P9554341560645032388

/-! ## A240535.P14550149859332417050

`A302027(A302787(n+1)+Δ[A302787(n+1)])`
-/

namespace A240535.P14550149859332417050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302027 (A302787 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A240535.P14550149859332417050

/-! ## A240535.P2045397628962607034

`A057889(A302787(A057889(A057889(n+2))))`
-/

namespace A240535.P2045397628962607034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A302787 (A057889 (A057889 (n + 2)).toNat).toNat).toNat

end

end A240535.P2045397628962607034

/-! ## A240535.P11946168919447841882

`A163807(A302787(A163807(A163807(n+2))))`
-/

namespace A240535.P11946168919447841882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163807 (A302787 (A163807 (A163807 (n + 2)).toNat).toNat).toNat

end

end A240535.P11946168919447841882

/-! ## A240535.P11704294743912814166

`A325401(2*A302787(n+2))`
-/

namespace A240535.P11704294743912814166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A302787 (n + 2)).toNat

end

end A240535.P11704294743912814166

/-!
# A240536: S_9 sequence in partition of integers > 1 described in A240521.

The programs for A240536, the canonical program `A240536.P362324169712596171` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240536 has offset 1).

The definition of A240536 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050376, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A240536.P362324169712596171

`A050376(n+1)*A050376(n+4)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A240536

/-- `A050376(n+1)*A050376(n+4)` -/
def P362324169712596171.Spec : Prop :=
  ∀ n, P362324169712596171.a n = A240536 (n + 1)

theorem P362324169712596171.correct : P362324169712596171.Spec := by
  intro n
  simp only [A240536, Nat.add_sub_cancel]

end A240536

/-! ## A240536.P12421202501718230354

`sqrt(A082522(n+1)*A082522(n+4))`
-/

namespace A240536.P12421202501718230354
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A082522 (n + 1) * A082522 (n + 4) : ℝ)

end

end A240536.P12421202501718230354

namespace A240536

/-- `sqrt(A082522(n+1)*A082522(n+4))` -/
def P12421202501718230354.Spec : Prop :=
  ∀ n, P12421202501718230354.a n = (A240536 (n + 1) : ℝ)

end A240536

/-! ## A240536.P8080834555565473443

`lcm(A050376(A000027(n+1)), A050376(n+4))`
-/

namespace A240536.P8080834555565473443
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A050376 (A000027 (n + 1)).toNat) (A050376 (n + 4))

end

end A240536.P8080834555565473443

namespace A240536

/-- `lcm(A050376(A000027(n+1)), A050376(n+4))` -/
def P8080834555565473443.Spec : Prop :=
  ∀ n, (P8080834555565473443.a n : ℤ) = A240536 (n + 1)

end A240536

/-! ## A240536.P13041403117638817833

`A084400(n+2)*A084400(n+5)`
-/

namespace A240536.P13041403117638817833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (n + 2) * A084400 (n + 5)

end

end A240536.P13041403117638817833

namespace A240536

/-- `A084400(n+2)*A084400(n+5)` -/
def P13041403117638817833.Spec : Prop :=
  ∀ n, P13041403117638817833.a n = A240536 (n + 1)

theorem P13041403117638817833.correct : P13041403117638817833.Spec := by
  intro n
  simp only [A240536, Nat.add_sub_cancel, A240536.P13041403117638817833.a, A240536.P362324169712596171.a, A050376, A050376.P8445497075527543903.a, A084400, A084400.P13046145720619798035.f1, A084400.P13046145720619798035.a, A302777, A302777.P12979743537694390003.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A209229, A209229.P14119267658822519212.f1, A209229.P14119267658822519212.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A240536

/-! ## A240536.P15704671511580739816

`lcm(A050376(n+1), A084400(n+5))`
-/

namespace A240536.P15704671511580739816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A050376 (n + 1)) (A084400 (n + 5))

end

end A240536.P15704671511580739816

namespace A240536

/-- `lcm(A050376(n+1), A084400(n+5))` -/
def P15704671511580739816.Spec : Prop :=
  ∀ n, (P15704671511580739816.a n : ℤ) = A240536 (n + 1)

end A240536

/-!
# A240537: Let a(n) be the least k such that in the prime power factorization of k! the exponents of primes p_1, ...,p_n are even, while the exponent of p_(n+1) is odd.

The programs for A240537, there is no canonical definition to state claims against.
-/

/-! ## A240537.P3957261760903816788

`ceil(acot(n))*A240620(A240466(n+1))`
-/

namespace A240537.P3957261760903816788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ * A240620 (A240466 (n + 1)).toNat

end

end A240537.P3957261760903816788

/-! ## A240537.P9537334893099752726

`A240620(n+1)+C(6, A240619(3*(n+1)))`
-/

namespace A240537.P9537334893099752726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240620 (n + 1) + (Nat.choose 6 (A240619 (3 * (n + 1))).toNat : ℤ)

end

end A240537.P9537334893099752726

/-! ## A240537.P8032647239471055618

`A240620(n+1)+A004016(A038183(n))`
-/

namespace A240537.P8032647239471055618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240620 (n + 1) + A004016 (A038183 n).toNat

end

end A240537.P8032647239471055618

/-!
# A240542: The midpoint of the (rotated) Dyck path from (0, n) to (n, 0) defined by A237593 has coordinates (a(n), a(n)). Also a(n) is the alternating sum of the n-th row of A235791.

The programs for A240542, there is no canonical definition to state claims against.
-/

/-! ## A240542.P7128523697897739420

`n+1-A322141(n+1)`
-/

namespace A240542.P7128523697897739420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A322141 (n + 1)

end

end A240542.P7128523697897739420

/-! ## A240542.P7752329610094137656

`∑[A067742(n+1)]`
-/

namespace A240542.P7752329610094137656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240542.P7752329610094137656

/-! ## A240542.P16752114423466837993

`ceil(A338723(n+1)/2)`
-/

namespace A240542.P16752114423466837993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A338723 (n + 1) : ℚ) / 2⌉

end

end A240542.P16752114423466837993

/-! ## A240542.P12390513629510073793

`∑[A348406(n+1)-1]`
-/

namespace A240542.P12390513629510073793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348406 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240542.P12390513629510073793

/-! ## A240542.P15769855457130217067

`∑[dr(A067742(-xor(n, -1)))]`
-/

namespace A240542.P15769855457130217067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A067742 (-Int.xor (n : ℤ) (-1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240542.P15769855457130217067

/-! ## A240542.P8079274644648066984

`round(A338723(C(n+1, n))/2)`
-/

namespace A240542.P8079274644648066984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A338723 (Nat.choose (n + 1) n) : ℚ) / 2)

end

end A240542.P8079274644648066984

/-! ## A240542.P6045319014354156203

`(A380231(n+1)+n+1)/2`
-/

namespace A240542.P6045319014354156203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380231 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A240542.P6045319014354156203

/-! ## A240542.P10974652568461280201

`1-(A322141(Δ[n²]-n)-n)`
-/

namespace A240542.P10974652568461280201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A322141 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - (n : ℤ))

end

end A240542.P10974652568461280201

/-! ## A240542.P18421726590147103122

`A282131(A348110(n+1))`
-/

namespace A240542.P18421726590147103122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282131 (A348110 (n + 1)).toNat

end

end A240542.P18421726590147103122

/-! ## A240542.P7189953640040678783

`A282131(n+1-A348336(n+1))`
-/

namespace A240542.P7189953640040678783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282131 ((n + 1 : ℤ) - A348336 (n + 1)).toNat

end

end A240542.P7189953640040678783

/-! ## A240542.P6368504148479967894

`A060831(n+1)-A285999(n+1)`
-/

namespace A240542.P6368504148479967894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 (n + 1) - A285999 (n + 1)

end

end A240542.P6368504148479967894

/-! ## A240542.P8102351972981996941

`A338204(n+2)-(A338204(n+1)+A067742(n+2))`
-/

namespace A240542.P8102351972981996941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338204 (n + 2) - (A338204 (n + 1) + A067742 (n + 2))

end

end A240542.P8102351972981996941

/-! ## A240542.P15761917448056533467

`A065033(A338723(n+1))`
-/

namespace A240542.P15761917448056533467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A338723 (n + 1)).toNat

end

end A240542.P15761917448056533467

/-! ## A240542.P11650194681035387603

`A060831(n+1)-A285902(n+1)-A285902(n+1)`
-/

namespace A240542.P11650194681035387603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 (n + 1) - A285902 (n + 1) - A285902 (n + 1)

end

end A240542.P11650194681035387603

/-! ## A240542.P17632742353201329501

`A285901(n+1)-A285902(n+1)`
-/

namespace A240542.P17632742353201329501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285901 (n + 1) - A285902 (n + 1)

end

end A240542.P17632742353201329501

/-!
# A240545: Least k > 0 such that n + p(k) is prime, where p(k) is the number of partitions of k.

The programs for A240545, there is no canonical definition to state claims against.
-/

/-! ## A240545.P15176547001665902809

`A249421(A019565(n))+A013632(n)`
-/

namespace A240545.P15176547001665902809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249421 (A019565 n).toNat + A013632 n

end

end A240545.P15176547001665902809

/-! ## A240545.P15167349672023977334

`A088748(A056898(n+1)^n)`
-/

namespace A240545.P15167349672023977334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 (A056898 (n + 1) ^ n).toNat

end

end A240545.P15167349672023977334

/-! ## A240545.P13077879968094715861

`A244544(A056898(n+1)^n)`
-/

namespace A240545.P13077879968094715861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244544 (A056898 (n + 1) ^ n).toNat

end

end A240545.P13077879968094715861

/-! ## A240545.P13956586207792725094

`A243487(∏{p}[A243493(n+4), #])`
-/

namespace A240545.P13956586207792725094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243493 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243487 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A240545.P13956586207792725094

/-! ## A240545.P6226768469744103964

`A013632(n)*A051340(A006820(n))`
-/

namespace A240545.P6226768469744103964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n * A051340 (A006820 n).toNat

end

end A240545.P6226768469744103964

/-!
# A240546: a(n) = prime(n+1)^n mod prime(n).

The programs for A240546, there is no canonical definition to state claims against.
-/

/-! ## A240546.P14141160526709538130

`(A001223(n+1)^(n+1))%A000040(n+1)`
-/

namespace A240546.P14141160526709538130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001223 (n + 1) ^ (n + 1)) (A000040 (n + 1))

end

end A240546.P14141160526709538130

/-! ## A240546.P7516155412655719793

`(A000040(n+2)^(n+1))%A000040(n+1)`
-/

namespace A240546.P7516155412655719793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2) ^ (n + 1)) (A000040 (n + 1))

end

end A240546.P7516155412655719793

/-! ## A240546.P3869564372531993666

`(A216885(n+2)^(n+1))%A216885(n+1)`
-/

namespace A240546.P3869564372531993666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216885 (n + 2) ^ (n + 1)) (A216885 (n + 1))

end

end A240546.P3869564372531993666

/-! ## A240546.P7860238927370566040

`(A008578(n+3)^(n+1))%A008578(n+2)`
-/

namespace A240546.P7860238927370566040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 3) ^ (n + 1)) (A008578 (n + 2))

end

end A240546.P7860238927370566040

/-!
# A240547: Number of non-congruent solutions of x^2 + y^2 + z^2 + t^2 == 0 mod n.

The programs for A240547, there is no canonical definition to state claims against.
-/

/-! ## A240547.P4140739085334814150

`A316148(n+1)/A140670(n+1)`
-/

namespace A240547.P4140739085334814150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316148 (n + 1) : ℚ) / (A140670 (n + 1) : ℚ)

end

end A240547.P4140739085334814150

/-! ## A240547.P17117043040850929026

`A316148(n+1)/or(1, A135481(n))`
-/

namespace A240547.P17117043040850929026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316148 (n + 1) : ℚ) / (Int.lor 1 (A135481 n) : ℚ)

end

end A240547.P17117043040850929026

/-! ## A240547.P1650405430520343675

`A316148(n+1)/A038712(A004525(n+1))`
-/

namespace A240547.P1650405430520343675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316148 (n + 1) : ℚ) / (A038712 (A004525 (n + 1)).toNat : ℚ)

end

end A240547.P1650405430520343675

/-! ## A240547.P7122510319831932225

`A316148(n+1)/A078896(A006519(n+1))`
-/

namespace A240547.P7122510319831932225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316148 (n + 1) : ℚ) / (A078896 (A006519 (n + 1)).toNat : ℚ)

end

end A240547.P7122510319831932225

/-! ## A240547.P8048499159966596538

`gcd(A316148(n+1), A316148(2*(n+1)))`
-/

namespace A240547.P8048499159966596538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A316148 (n + 1)) (A316148 (2 * (n + 1)))

end

end A240547.P8048499159966596538

/-!
# A240548: Greatest prime factor of n^5 + 1.

The programs for A240548, there is no canonical definition to state claims against.
-/

/-! ## A240548.P13077019764323430686

`A240554(A167499(n+4))`
-/

namespace A240548.P13077019764323430686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (A167499 (n + 4)).toNat

end

end A240548.P13077019764323430686

/-! ## A240548.P11807574748119656647

`A240554(Δ[A264443(n)]+9)`
-/

namespace A240548.P11807574748119656647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (f1 (n + 1) - f1 n + 9).toNat

end

end A240548.P11807574748119656647

/-! ## A240548.P2922285310847887027

`A240554(A000124(n+5)+4)`
-/

namespace A240548.P2922285310847887027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (A000124 (n + 5) + 4).toNat

end

end A240548.P2922285310847887027

/-! ## A240548.P3059370928676272816

`A240554(A000217(n+5)+5)`
-/

namespace A240548.P3059370928676272816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (A000217 (n + 5) + 5).toNat

end

end A240548.P3059370928676272816

/-! ## A240548.P17942319139249420074

`A240554(A055998(n+4)-(n-2))`
-/

namespace A240548.P17942319139249420074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (A055998 (n + 4) - ((n : ℤ) - 2)).toNat

end

end A240548.P17942319139249420074

/-!
# A240549: Greatest prime factor of n^6+1.

The programs for A240549, the canonical program `A240549.P17173148347031781458` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240549 has offset 1).

The definition of A240549 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240549.P17173148347031781458

`A081256((n+1)²)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A240549

/-- `A081256((n+1)²)` -/
def P17173148347031781458.Spec : Prop :=
  ∀ n, P17173148347031781458.a n = A240549 (n + 1)

theorem P17173148347031781458.correct : P17173148347031781458.Spec := by
  intro n
  simp only [A240549, Nat.add_sub_cancel]

end A240549

/-! ## A240549.P941548895228317674

`or(n%2, A081256((n+1)^2))`
-/

namespace A240549.P941548895228317674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 2 : ℕ) : ℤ) (A081256 ((n + 1) ^ 2))

end

end A240549.P941548895228317674

namespace A240549

/-- `or(n%2, A081256((n+1)^2))` -/
def P941548895228317674.Spec : Prop :=
  ∀ n, P941548895228317674.a n = A240549 (n + 1)

end A240549

/-! ## A240549.P10458230838983707873

`or(char[1], A081256(∑[2*n+1]))`
-/

namespace A240549.P10458230838983707873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A081256 (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A240549.P10458230838983707873

namespace A240549

/-- `or(char[1], A081256(∑[2*n+1]))` -/
def P10458230838983707873.Spec : Prop :=
  ∀ n, P10458230838983707873.a n = A240549 (n + 1)

end A240549

/-! ## A240549.P5490981913066097161

`xor(1, xor(1, A081256(∑[n+1+n])))`
-/

namespace A240549.P5490981913066097161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A081256 (∑ j ∈ Finset.range (n + 1), f1 j)))

end

end A240549.P5490981913066097161

namespace A240549

/-- `xor(1, xor(1, A081256(∑[n+1+n])))` -/
def P5490981913066097161.Spec : Prop :=
  ∀ n, P5490981913066097161.a n = A240549 (n + 1)

end A240549

/-! ## A240549.P7185247647055668665

`and(-1, A081256(A000290(n+1)))`
-/

namespace A240549.P7185247647055668665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A081256 (A000290 (n + 1)).toNat)

end

end A240549.P7185247647055668665

namespace A240549

/-- `and(-1, A081256(A000290(n+1)))` -/
def P7185247647055668665.Spec : Prop :=
  ∀ n, P7185247647055668665.a n = A240549 (n + 1)

end A240549

/-! ## A240549.P15055041945648801381

`A081256(∑[2*n+1])%A017500(n)`
-/

namespace A240549.P15055041945648801381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081256 (∑ j ∈ Finset.range (n + 1), f1 j)) (A017500 n)

end

end A240549.P15055041945648801381

namespace A240549

/-- `A081256(∑[2*n+1])%A017500(n)` -/
def P15055041945648801381.Spec : Prop :=
  ∀ n, P15055041945648801381.a n = A240549 (n + 1)

end A240549

/-! ## A240549.P5572149889657746827

`gcd(A000038(n), A081256(∑[2*n+1]))`
-/

namespace A240549.P5572149889657746827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A081256 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A240549.P5572149889657746827

namespace A240549

/-- `gcd(A000038(n), A081256(∑[2*n+1]))` -/
def P5572149889657746827.Spec : Prop :=
  ∀ n, (P5572149889657746827.a n : ℤ) = A240549 (n + 1)

end A240549

/-! ## A240549.P254907596492946574

`or(A081256(∑[2*n+1]), A168181(n))`
-/

namespace A240549.P254907596492946574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A081256 (∑ j ∈ Finset.range (n + 1), f1 j)) (A168181 n)

end

end A240549.P254907596492946574

namespace A240549

/-- `or(A081256(∑[2*n+1]), A168181(n))` -/
def P254907596492946574.Spec : Prop :=
  ∀ n, P254907596492946574.a n = A240549 (n + 1)

end A240549

/-! ## A240549.P3543970246561622402

`or(A081256(∑[2*n+1]), A178334(n))`
-/

namespace A240549.P3543970246561622402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A081256 (∑ j ∈ Finset.range (n + 1), f1 j)) (A178334 n)

end

end A240549.P3543970246561622402

namespace A240549

/-- `or(A081256(∑[2*n+1]), A178334(n))` -/
def P3543970246561622402.Spec : Prop :=
  ∀ n, P3543970246561622402.a n = A240549 (n + 1)

end A240549

/-! ## A240549.P13674317692760941640

`A081256((n+1)^2)/A007318(C(2, n))`
-/

namespace A240549.P13674317692760941640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081256 ((n + 1) ^ 2) : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A240549.P13674317692760941640

namespace A240549

/-- `A081256((n+1)^2)/A007318(C(2, n))` -/
def P13674317692760941640.Spec : Prop :=
  ∀ n, P13674317692760941640.a n = (A240549 (n + 1) : ℚ)

end A240549

/-! ## A240549.P2165402473526805625

`A081256(∑[2*n+1])/A000034(2*n)`
-/

namespace A240549.P2165402473526805625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081256 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A000034 (2 * n) : ℚ)

end

end A240549.P2165402473526805625

namespace A240549

/-- `A081256(∑[2*n+1])/A000034(2*n)` -/
def P2165402473526805625.Spec : Prop :=
  ∀ n, P2165402473526805625.a n = (A240549 (n + 1) : ℚ)

end A240549

/-! ## A240549.P11236207832600413029

`floor(1/A007318(n))!*A081256((n+1)^2)`
-/

namespace A240549.P11236207832600413029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ⌊1 / (A007318 n : ℚ)⌋.toNat : ℤ) * A081256 ((n + 1) ^ 2)

end

end A240549.P11236207832600413029

namespace A240549

/-- `floor(1/A007318(n))!*A081256((n+1)^2)` -/
def P11236207832600413029.Spec : Prop :=
  ∀ n, P11236207832600413029.a n = A240549 (n + 1)

end A240549

/-! ## A240549.P11596572138799125338

`A081256(∑[2*n+1])+A008683(4*(n+1))`
-/

namespace A240549.P11596572138799125338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (∑ j ∈ Finset.range (n + 1), f1 j) + A008683 (4 * (n + 1))

end

end A240549.P11596572138799125338

namespace A240549

/-- `A081256(∑[2*n+1])+A008683(4*(n+1))` -/
def P11596572138799125338.Spec : Prop :=
  ∀ n, P11596572138799125338.a n = A240549 (n + 1)

end A240549

/-! ## A240549.P8394363368191403429

`A007318(C(2, n+1))*A081256(∑[2*n+1])`
-/

namespace A240549.P8394363368191403429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 1)) * A081256 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A240549.P8394363368191403429

namespace A240549

/-- `A007318(C(2, n+1))*A081256(∑[2*n+1])` -/
def P8394363368191403429.Spec : Prop :=
  ∀ n, P8394363368191403429.a n = A240549 (n + 1)

end A240549

/-! ## A240549.P15339712036316169387

`A020639(2*(n+2))+A081256(∑[2*n+1])-2`
-/

namespace A240549.P15339712036316169387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 2)) + (A081256 (∑ j ∈ Finset.range (n + 1), f1 j) - 2)

end

end A240549.P15339712036316169387

namespace A240549

/-- `A020639(2*(n+2))+A081256(∑[2*n+1])-2` -/
def P15339712036316169387.Spec : Prop :=
  ∀ n, P15339712036316169387.a n = A240549 (n + 1)

end A240549

/-! ## A240549.P3920346239223167926

`A318504(A081256(n+1))+A081256((n+1)^2)`
-/

namespace A240549.P3920346239223167926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318504 (A081256 (n + 1)).toNat + A081256 ((n + 1) ^ 2)

end

end A240549.P3920346239223167926

namespace A240549

/-- `A318504(A081256(n+1))+A081256((n+1)^2)` -/
def P3920346239223167926.Spec : Prop :=
  ∀ n, P3920346239223167926.a n = A240549 (n + 1)

end A240549

/-!
# A240550: Greatest prime factor of n^7+1.

The programs for A240550, there is no canonical definition to state claims against.
-/

/-! ## A240550.P13276940083498459074

`A240554(eq[7, A002262(n)])`
-/

namespace A240550.P13276940083498459074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240550.P13276940083498459074

/-! ## A240550.P10318082695236968376

`A240554(A000096(n+6)+8)`
-/

namespace A240550.P10318082695236968376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (A000096 (n + 6) + 8).toNat

end

end A240550.P10318082695236968376

/-! ## A240550.P17091977331675774008

`A240554(A000217(n+7)+7)`
-/

namespace A240550.P17091977331675774008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (A000217 (n + 7) + 7).toNat

end

end A240550.P17091977331675774008

/-! ## A240550.P1754503687270423812

`A240554(eq[7, A144328(n+1)])`
-/

namespace A240550.P1754503687270423812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240550.P1754503687270423812

/-! ## A240550.P7405001814486866088

`A240554(eq[8, A002260(n+1)])`
-/

namespace A240550.P7405001814486866088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240550.P7405001814486866088

/-!
# A240551: Greatest prime factor of n^8+1.

The programs for A240551, the canonical program `A240551.P1777260871997738944` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240551 has offset 1).

The definition of A240551 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240551.P1777260871997738944

`A096172((n+1)²)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A240551

/-- `A096172((n+1)²)` -/
def P1777260871997738944.Spec : Prop :=
  ∀ n, P1777260871997738944.a n = A240551 (n + 1)

theorem P1777260871997738944.correct : P1777260871997738944.Spec := by
  intro n
  simp only [A240551, Nat.add_sub_cancel]

end A240551

/-! ## A240551.P154163021280926955

`or(and(1, n), A096172(∑[2*n+1]))`
-/

namespace A240551.P154163021280926955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.land 1 n : ℤ) (A096172 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A240551.P154163021280926955

namespace A240551

/-- `or(and(1, n), A096172(∑[2*n+1]))` -/
def P154163021280926955.Spec : Prop :=
  ∀ n, P154163021280926955.a n = A240551 (n + 1)

end A240551

/-! ## A240551.P6624685958799706004

`gcd(n, n+1)*A096172((n+1)*(n+1))`
-/

namespace A240551.P6624685958799706004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A096172 ((n + 1) * (n + 1))

end

end A240551.P6624685958799706004

namespace A240551

/-- `gcd(n, n+1)*A096172((n+1)*(n+1))` -/
def P6624685958799706004.Spec : Prop :=
  ∀ n, P6624685958799706004.a n = A240551 (n + 1)

theorem P6624685958799706004.correct : P6624685958799706004.Spec := by
  intro n
  simp only [A240551, Nat.add_sub_cancel, A240551.P6624685958799706004.a, A240551.P1777260871997738944.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A240551

/-! ## A240551.P12899131991369901332

`lcm(A096172(∑[2*n+1]), A097807(n))`
-/

namespace A240551.P12899131991369901332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A096172 (∑ j ∈ Finset.range (n + 1), f1 j)) (A097807 n)

end

end A240551.P12899131991369901332

namespace A240551

/-- `lcm(A096172(∑[2*n+1]), A097807(n))` -/
def P12899131991369901332.Spec : Prop :=
  ∀ n, (P12899131991369901332.a n : ℤ) = A240551 (n + 1)

end A240551

/-! ## A240551.P1046615530876331849

`or(A000035(n), A096172(∑[2*n+1]))`
-/

namespace A240551.P1046615530876331849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A096172 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A240551.P1046615530876331849

namespace A240551

/-- `or(A000035(n), A096172(∑[2*n+1]))` -/
def P1046615530876331849.Spec : Prop :=
  ∀ n, P1046615530876331849.a n = A240551 (n + 1)

end A240551

/-! ## A240551.P18281565454327900101

`A001221(A000430(n+1))*A096172(A000290(n+1))`
-/

namespace A240551.P18281565454327900101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000430 (n + 1)).toNat * A096172 (A000290 (n + 1)).toNat

end

end A240551.P18281565454327900101

namespace A240551

/-- `A001221(A000430(n+1))*A096172(A000290(n+1))` -/
def P18281565454327900101.Spec : Prop :=
  ∀ n, P18281565454327900101.a n = A240551 (n + 1)

end A240551

/-! ## A240551.P16726635776217297430

`A240554(A000096(n+7)+9)`
-/

namespace A240551.P16726635776217297430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (A000096 (n + 7) + 9).toNat

end

end A240551.P16726635776217297430

namespace A240551

/-- `A240554(A000096(n+7)+9)` -/
def P16726635776217297430.Spec : Prop :=
  ∀ n, P16726635776217297430.a n = A240551 (n + 1)

end A240551

/-!
# A240552: Greatest prime factor of n^9+1.

The programs for A240552, there is no canonical definition to state claims against.
-/

/-! ## A240552.P12066903696472722807

`A240554(eq[9, A002262(n)])`
-/

namespace A240552.P12066903696472722807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240552.P12066903696472722807

/-! ## A240552.P14872300011721650706

`A240554(A000096(n+8)+10)`
-/

namespace A240552.P14872300011721650706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (A000096 (n + 8) + 10).toNat

end

end A240552.P14872300011721650706

/-! ## A240552.P2785247496390752844

`A240554(A000217(n+9)+9)`
-/

namespace A240552.P2785247496390752844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (A000217 (n + 9) + 9).toNat

end

end A240552.P2785247496390752844

/-! ## A240552.P14506841086890771965

`A240554(A056000(n+7)-2*(n+1))`
-/

namespace A240552.P14506841086890771965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (A056000 (n + 7) - (2 * (n + 1) : ℤ)).toNat

end

end A240552.P14506841086890771965

/-! ## A240552.P13190738265150076665

`A081256(Δ[∑[n]²])`
-/

namespace A240552.P13190738265150076665
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A240552.P13190738265150076665

/-!
# A240553: Greatest prime factor of n^10+1.

The programs for A240553, there is no canonical definition to state claims against.
-/

/-! ## A240553.P5754369294060198846

`A240548((n+1)²)`
-/

namespace A240553.P5754369294060198846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240548 ((n + 1) ^ 2)

end

end A240553.P5754369294060198846

/-! ## A240553.P2835586625519927629

`or(n%2, A240548(∑[2*n+1]))`
-/

namespace A240553.P2835586625519927629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 2 : ℕ) : ℤ) (A240548 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A240553.P2835586625519927629

/-! ## A240553.P581166916158216033

`or(A000035(n), A240548(∑[2*n+1]))`
-/

namespace A240553.P581166916158216033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A240548 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A240553.P581166916158216033

/-! ## A240553.P6175553314511514495

`or(and(1, n), A240548(A000463(2*(n+1))))`
-/

namespace A240553.P6175553314511514495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.land 1 n : ℤ) (A240548 (A000463 (2 * (n + 1))).toNat)

end

end A240553.P6175553314511514495

/-! ## A240553.P15153690160679900109

`A093178(2*n)*A240548(∑[2*n+1])`
-/

namespace A240553.P15153690160679900109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (2 * n) * A240548 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A240553.P15153690160679900109

/-! ## A240553.P18235238006941278157

`or(1-A079998(n), A240548(∑[2*n+1]))`
-/

namespace A240553.P18235238006941278157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (1 - A079998 n) (A240548 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A240553.P18235238006941278157

/-! ## A240553.P4625662578878632407

`A045572(n+1)%2*A240548(∑[2*n+1])`
-/

namespace A240553.P4625662578878632407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045572 (n + 1)) 2 * A240548 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A240553.P4625662578878632407

/-! ## A240553.P16118833920391710823

`A045797(n+1)%2*A240548(∑[2*n+1])`
-/

namespace A240553.P16118833920391710823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045797 (n + 1)) 2 * A240548 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A240553.P16118833920391710823

/-! ## A240553.P5101629893644338845

`or(A157928(n), A240548(A000463(2*(n+1))))`
-/

namespace A240553.P5101629893644338845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A157928 n) (A240548 (A000463 (2 * (n + 1))).toNat)

end

end A240553.P5101629893644338845

/-! ## A240553.P10024547959699255818

`or(A178334(n), A240548(A000463(2*(n+1))))`
-/

namespace A240553.P10024547959699255818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A178334 n) (A240548 (A000463 (2 * (n + 1))).toNat)

end

end A240553.P10024547959699255818

/-! ## A240553.P14327241634738916654

`A240548(A000463(2*n+2))+A000007(n+1)`
-/

namespace A240553.P14327241634738916654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240548 (A000463 (2 * n + 2)).toNat + A000007 (n + 1)

end

end A240553.P14327241634738916654

/-! ## A240553.P16238436267227547764

`A019425(2*(n+1))*A240548(A000463(2*(n+1)))`
-/

namespace A240553.P16238436267227547764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (2 * (n + 1)) * A240548 (A000463 (2 * (n + 1))).toNat

end

end A240553.P16238436267227547764

/-!
# A240554: Square array of the greatest prime factor of n^k + 1, read by antidiagonals.

The programs for A240554, there is no canonical definition to state claims against.
-/

/-! ## A240554.P12425441445285756048

`A006530((C(comp[∑[n]]-n, 2)-(n+1))^(1-C(∑[char[∑[n]]], 2)+n)+1)`
-/

namespace A240554.P12425441445285756048
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℚ) ^ (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ) + (n : ℤ) : ℤ) + 1)).toNat

end

end A240554.P12425441445285756048

/-! ## A240554.P2946375074087172794

`A006530(A095884(n+1)+1)`
-/

namespace A240554.P2946375074087172794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A095884 (n + 1) + 1).toNat

end

end A240554.P2946375074087172794

/-! ## A240554.P8615864279851547768

`A006530(A003992(comp[∑[n]])+1)`
-/

namespace A240554.P8615864279851547768
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A003992 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1).toNat

end

end A240554.P8615864279851547768

/-! ## A240554.P12646587210033564193

`A006530(A003992(n)*A025581(n)+1)`
-/

namespace A240554.P12646587210033564193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A003992 n * A025581 n + 1).toNat

end

end A240554.P12646587210033564193

/-! ## A240554.P5292119775497931193

`A006530(A025581(n)^A128227(n)+1)`
-/

namespace A240554.P5292119775497931193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A025581 n : ℚ) ^ (A128227 n : ℤ) + 1)).toNat

end

end A240554.P5292119775497931193

/-! ## A240554.P14540250043254538968

`A006530(A025581(n)^A193738(n)+1)`
-/

namespace A240554.P14540250043254538968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A025581 n : ℚ) ^ (A193738 n : ℤ) + 1)).toNat

end

end A240554.P14540250043254538968

/-! ## A240554.P7332589972807419872

`A006530(A025581(n)^A002260(n+1)+1)`
-/

namespace A240554.P7332589972807419872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A025581 n : ℚ) ^ (A002260 (n + 1) : ℤ) + 1)).toNat

end

end A240554.P7332589972807419872

/-! ## A240554.P10842298444603692856

`A006530((A004736(n+1)-1)*A003992(n)+1)`
-/

namespace A240554.P10842298444603692856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((A004736 (n + 1) - 1) * A003992 n + 1).toNat

end

end A240554.P10842298444603692856

/-!
# A240555: Lexicographically earliest positive increasing sequence such that no four terms have constant second differences.

The programs for A240555, there is no canonical definition to state claims against.
-/

/-! ## A240555.P3610479313700582233

`A240075(n+1)+1`
-/

namespace A240555.P3610479313700582233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240075 (n + 1) + 1

end

end A240555.P3610479313700582233

/-! ## A240555.P17253182367485616484

`record[and(A059942(n+1), A235453(n+1))]`
-/

namespace A240555.P17253182367485616484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059942 (n + 1)) (A235453 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240555.P17253182367485616484

/-!
# A240556: Earliest nonnegative increasing sequence with no 5-term subsequence of constant third differences.

The programs for A240556, there is no canonical definition to state claims against.
-/

/-! ## A240556.P13750996396440720479

`A240557(n+1)-1`
-/

namespace A240556.P13750996396440720479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240557 (n + 1) - 1

end

end A240556.P13750996396440720479

/-! ## A240556.P15878041640486143294

`A023443(A240557(n+1))`
-/

namespace A240556.P15878041640486143294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A240557 (n + 1)).toNat

end

end A240556.P15878041640486143294

/-! ## A240556.P8698365646952858478

`A023444(A240557(n+1)+1)`
-/

namespace A240556.P8698365646952858478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A240557 (n + 1) + 1).toNat

end

end A240556.P8698365646952858478

/-! ## A240556.P5661200230859760813

`A289207(A240557(n+1)+1)`
-/

namespace A240556.P5661200230859760813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A240557 (n + 1) + 1).toNat

end

end A240556.P5661200230859760813

/-! ## A240556.P17577378696302815039

`A046667(2*A240557(n+1))`
-/

namespace A240556.P17577378696302815039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (2 * A240557 (n + 1)).toNat

end

end A240556.P17577378696302815039

/-! ## A240556.P9015907914534638398

`A279119(2*A240557(n+1))`
-/

namespace A240556.P9015907914534638398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279119 (2 * A240557 (n + 1)).toNat

end

end A240556.P9015907914534638398

/-! ## A240556.P16600917883130310178

`A260196(n+2)+A240557(n+1)`
-/

namespace A240556.P16600917883130310178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A240557 (n + 1)

end

end A240556.P16600917883130310178

/-! ## A240556.P6800988848837385362

`xor(-A240557(n+1), A057428(n+1))`
-/

namespace A240556.P6800988848837385362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A240557 (n + 1)) (A057428 (n + 1))

end

end A240556.P6800988848837385362

/-! ## A240556.P17106212807846114162

`abs(A240557(n+1)+A033999(2*n+1))`
-/

namespace A240556.P17106212807846114162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A240557 (n + 1) + A033999 (2 * n + 1)|

end

end A240556.P17106212807846114162

/-! ## A240556.P1137619561524494060

`A240581(A007318(∑[n+1]))+A240557(n+1)`
-/

namespace A240556.P1137619561524494060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240581 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A240557 (n + 1)

end

end A240556.P1137619561524494060

/-!
# A240557: Earliest positive increasing sequence with no 5-term subsequence of constant third differences.

The programs for A240557, there is no canonical definition to state claims against.
-/

/-! ## A240557.P12453348553977270776

`A240556(n+1)+1`
-/

namespace A240557.P12453348553977270776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240556 (n + 1) + 1

end

end A240557.P12453348553977270776

/-! ## A240557.P10338616570171799202

`record[abs(A268038(A005940(3*n+5)))]`
-/

namespace A240557.P10338616570171799202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A268038 (A005940 (3 * n + 5)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240557.P10338616570171799202

/-!
# A240558: a(n) = 2^n*n!/((floor(n/2)+1)*floor(n/2)!^2).

The programs for A240558, the canonical program `A240558.P15701210074794565359` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240558 has offset 0).

The definition of A240558 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A240558.P15701210074794565359

`2^n*A057977(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A240558

/-- `2^n*A057977(n)` -/
def P15701210074794565359.Spec : Prop :=
  ∀ n, P15701210074794565359.a n = A240558 n

theorem P15701210074794565359.correct : P15701210074794565359.Spec := by
  intro n
  simp only [A240558]

end A240558

/-! ## A240558.P9403863254309561053

`2^n*n!/((floor(n/2)+1)*floor(n/2)!²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A240558.P9403863254309561053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n * Nat.factorial n : ℚ) / ((⌊(n : ℚ) / 2⌋ + 1) * (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat ^ 2 : ℤ) : ℚ)

end

end A240558.P9403863254309561053

namespace A240558

/-- `2^n*n!/((floor(n/2)+1)*floor(n/2)!²)` -/
def P9403863254309561053.Spec : Prop :=
  ∀ n, P9403863254309561053.a n = (A240558 n : ℚ)

end A240558

/-! ## A240558.P2495416686174926347

`A212303(n+1)/(n+1)*Δ[xor(2^n, ∑[2^n])]`
-/

namespace A240558.P2495416686174926347
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 ^ n) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212303 (n + 1) : ℚ) / (n + 1 : ℚ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A240558.P2495416686174926347

namespace A240558

/-- `A212303(n+1)/(n+1)*Δ[xor(2^n, ∑[2^n])]` -/
def P2495416686174926347.Spec : Prop :=
  ∀ n, P2495416686174926347.a n = (A240558 n : ℚ)

end A240558

/-! ## A240558.P293667066621976137

`A060899(n)/A158416(n)`
-/

namespace A240558.P293667066621976137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060899 n : ℚ) / (A158416 n : ℚ)

end

end A240558.P293667066621976137

namespace A240558

/-- `A060899(n)/A158416(n)` -/
def P293667066621976137.Spec : Prop :=
  ∀ n, P293667066621976137.a n = (A240558 n : ℚ)

end A240558

/-! ## A240558.P9622963163377399772

`abs(A057977(n)*A122803(n))`
-/

namespace A240558.P9622963163377399772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057977 n * A122803 n|

end

end A240558.P9622963163377399772

namespace A240558

/-- `abs(A057977(n)*A122803(n))` -/
def P9622963163377399772.Spec : Prop :=
  ∀ n, P9622963163377399772.a n = A240558 n

end A240558

/-! ## A240558.P17358998864122549006

`A060899(n)/A152271(n+1)`
-/

namespace A240558.P17358998864122549006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060899 n : ℚ) / (A152271 (n + 1) : ℚ)

end

end A240558.P17358998864122549006

namespace A240558

/-- `A060899(n)/A152271(n+1)` -/
def P17358998864122549006.Spec : Prop :=
  ∀ n, P17358998864122549006.a n = (A240558 n : ℚ)

end A240558

/-! ## A240558.P18341066053445546549

`A057977(n)*A060546(2*n)`
-/

namespace A240558.P18341066053445546549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 n * A060546 (2 * n)

end

end A240558.P18341066053445546549

namespace A240558

/-- `A057977(n)*A060546(2*n)` -/
def P18341066053445546549.Spec : Prop :=
  ∀ n, P18341066053445546549.a n = A240558 n

end A240558

/-! ## A240558.P8446777256664000551

`A057977(n)*A077957(2*n)`
-/

namespace A240558.P8446777256664000551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 n * A077957 (2 * n)

end

end A240558.P8446777256664000551

namespace A240558

/-- `A057977(n)*A077957(2*n)` -/
def P8446777256664000551.Spec : Prop :=
  ∀ n, P8446777256664000551.a n = A240558 n

end A240558

/-! ## A240558.P6607564669334918498

`2^n*A063549(A028310(n))`
-/

namespace A240558.P6607564669334918498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A063549 (A028310 n).toNat

end

end A240558.P6607564669334918498

namespace A240558

/-- `2^n*A063549(A028310(n))` -/
def P6607564669334918498.Spec : Prop :=
  ∀ n, P6607564669334918498.a n = A240558 n

end A240558

/-! ## A240558.P9615046254396144070

`A212303(n+1)/(n+1)*A000079(n)`
-/

namespace A240558.P9615046254396144070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212303 (n + 1) : ℚ) / (n + 1 : ℚ) * (A000079 n : ℚ)

end

end A240558.P9615046254396144070

namespace A240558

/-- `A212303(n+1)/(n+1)*A000079(n)` -/
def P9615046254396144070.Spec : Prop :=
  ∀ n, P9615046254396144070.a n = (A240558 n : ℚ)

end A240558

/-! ## A240558.P9907401231704743877

`A212303(n+1)/(n+1)*∑[A011782(n)]`
-/

namespace A240558.P9907401231704743877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212303 (n + 1) : ℚ) / (n + 1 : ℚ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A240558.P9907401231704743877

namespace A240558

/-- `A212303(n+1)/(n+1)*∑[A011782(n)]` -/
def P9907401231704743877.Spec : Prop :=
  ∀ n, P9907401231704743877.a n = (A240558 n : ℚ)

end A240558

/-! ## A240558.P8761825313841650126

`A212303(n+1)/(n+1)*Δ[A000225(n)]`
-/

namespace A240558.P8761825313841650126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212303 (n + 1) : ℚ) / (n + 1 : ℚ) * (f1 (n + 1) - f1 n : ℚ)

end

end A240558.P8761825313841650126

namespace A240558

/-- `A212303(n+1)/(n+1)*Δ[A000225(n)]` -/
def P8761825313841650126.Spec : Prop :=
  ∀ n, P8761825313841650126.a n = (A240558 n : ℚ)

end A240558

/-! ## A240558.P4070194302574919762

`A212303(n+1)/(n+1)*Δ[A033484(n)/3]`
-/

namespace A240558.P4070194302574919762
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033484 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212303 (n + 1) : ℚ) / (n + 1 : ℚ) * (f1 (n + 1) - f1 n)

end

end A240558.P4070194302574919762

namespace A240558

/-- `A212303(n+1)/(n+1)*Δ[A033484(n)/3]` -/
def P4070194302574919762.Spec : Prop :=
  ∀ n, P4070194302574919762.a n = (A240558 n : ℚ)

end A240558

/-! ## A240558.P10938004772098788233

`A212303(n+1)/(n+1)*Δ[floor(A134067(n)/4)]`
-/

namespace A240558.P10938004772098788233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A134067 n : ℚ) / 4⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212303 (n + 1) : ℚ) / (n + 1 : ℚ) * (f1 (n + 1) - f1 n : ℚ)

end

end A240558.P10938004772098788233

namespace A240558

/-- `A212303(n+1)/(n+1)*Δ[floor(A134067(n)/4)]` -/
def P10938004772098788233.Spec : Prop :=
  ∀ n, P10938004772098788233.a n = (A240558 n : ℚ)

end A240558

/-! ## A240558.P10241237531355645413

`A057977(n)*A252754(A000040(n+1))`
-/

namespace A240558.P10241237531355645413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 n * A252754 (A000040 (n + 1)).toNat

end

end A240558.P10241237531355645413

namespace A240558

/-- `A057977(n)*A252754(A000040(n+1))` -/
def P10241237531355645413.Spec : Prop :=
  ∀ n, P10241237531355645413.a n = A240558 n

end A240558

/-! ## A240558.P9489220222430387025

`(A138364(n)+A126120(n))*A000079(n)`
-/

namespace A240558.P9489220222430387025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A138364 n + A126120 n) * A000079 n

end

end A240558.P9489220222430387025

namespace A240558

/-- `(A138364(n)+A126120(n))*A000079(n)` -/
def P9489220222430387025.Spec : Prop :=
  ∀ n, P9489220222430387025.a n = A240558 n

end A240558

/-! ## A240558.P12762278722683266314

`(A138364(n)+A126120(n))*∑[A011782(n)]`
-/

namespace A240558.P12762278722683266314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A138364 n + A126120 n) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A240558.P12762278722683266314

namespace A240558

/-- `(A138364(n)+A126120(n))*∑[A011782(n)]` -/
def P12762278722683266314.Spec : Prop :=
  ∀ n, P12762278722683266314.a n = A240558 n

end A240558

/-! ## A240558.P9980030429752222243

`(A138364(n)+A126120(n))*Δ[A000225(n)]`
-/

namespace A240558.P9980030429752222243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A138364 n + A126120 n) * (f1 (n + 1) - f1 n)

end

end A240558.P9980030429752222243

namespace A240558

/-- `(A138364(n)+A126120(n))*Δ[A000225(n)]` -/
def P9980030429752222243.Spec : Prop :=
  ∀ n, P9980030429752222243.a n = A240558 n

end A240558

/-! ## A240558.P5012512759417983235

`(A138364(n)+Δ[A166588(n)])*A000079(n)`
-/

namespace A240558.P5012512759417983235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A138364 n + (f1 (n + 1) - f1 n)) * A000079 n

end

end A240558.P5012512759417983235

namespace A240558

/-- `(A138364(n)+Δ[A166588(n)])*A000079(n)` -/
def P5012512759417983235.Spec : Prop :=
  ∀ n, P5012512759417983235.a n = A240558 n

end A240558

/-! ## A240558.P6337904861851293204

`A253665(n)/A008619(n)`
-/

namespace A240558.P6337904861851293204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253665 n : ℚ) / (A008619 n : ℚ)

end

end A240558.P6337904861851293204

namespace A240558

/-- `A253665(n)/A008619(n)` -/
def P6337904861851293204.Spec : Prop :=
  ∀ n, P6337904861851293204.a n = (A240558 n : ℚ)

end A240558

/-!
# A240559: a(n) = -2^n*(E(n, 1/2) + E(n, 1) + (n mod 2)*2*(E(n+1, 1/2) + E(n+1, 1))), where E(n, x) are the Euler polynomials.

The programs for A240559, there is no canonical definition to state claims against.
-/

/-! ## A240559.P2011968270087448813

`A323833(A316966(n))`
-/

namespace A240559.P2011968270087448813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323833 (A316966 n).toNat

end

end A240559.P2011968270087448813

/-! ## A240559.P9977935266790480767

`A323833(A266304(n+1)-A109613(n))`
-/

namespace A240559.P9977935266790480767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323833 (A266304 (n + 1) - A109613 n).toNat

end

end A240559.P9977935266790480767

/-! ## A240559.P8095775000519422737

`A323833(A258817(2*(n+2))+A000217(n))`
-/

namespace A240559.P8095775000519422737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323833 (A258817 (2 * (n + 2)) + A000217 n).toNat

end

end A240559.P8095775000519422737

/-! ## A240559.P11147483165923102317

`(A163982(n+1)+A163982(n))%A163982(n+1)`
-/

namespace A240559.P11147483165923102317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163982 (n + 1) + A163982 n) (A163982 (n + 1))

end

end A240559.P11147483165923102317

/-!
# A240560: a(n) = 2^n*E(n,1/2) + 2^(n+1)*E(n+1,0), where E(n,x) the Euler polynomials.

The programs for A240560, there is no canonical definition to state claims against.
-/

/-! ## A240560.P15938577191506752716

`A122045(n)-A155585(n+1)`
-/

namespace A240560.P15938577191506752716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122045 n - A155585 (n + 1)

end

end A240560.P15938577191506752716

/-! ## A240560.P16433921768501081997

`A163747(n)-Δ[A155585(n)]`
-/

namespace A240560.P16433921768501081997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163747 n - (f1 (n + 1) - f1 n)

end

end A240560.P16433921768501081997

/-! ## A240560.P5181993923803126105

`Δ[A009390(n)]-A155585(n+1)`
-/

namespace A240560.P5181993923803126105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A155585 (n + 1)

end

end A240560.P5181993923803126105

/-! ## A240560.P9813669094919089082

`(A007877(n)-1)*Δ[A000111(n)]`
-/

namespace A240560.P9813669094919089082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007877 n - 1) * (f1 (n + 1) - f1 n)

end

end A240560.P9813669094919089082

/-! ## A240560.P17761137432006780756

`Δ[A000111(n)]*A056594(n+2)`
-/

namespace A240560.P17761137432006780756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A056594 (n + 2)

end

end A240560.P17761137432006780756

/-! ## A240560.P4972936233326743337

`A155585(n)+A163747(n)-A155585(n+1)`
-/

namespace A240560.P4972936233326743337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155585 n + (A163747 n - A155585 (n + 1))

end

end A240560.P4972936233326743337

/-! ## A240560.P3306172047936699015

`A122045(n)-A009006(n+1)*A057077(n)`
-/

namespace A240560.P3306172047936699015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122045 n - A009006 (n + 1) * A057077 n

end

end A240560.P3306172047936699015

/-! ## A240560.P12195003260109734570

`A122045(n+1)+A163982(n+1)+A122045(n)`
-/

namespace A240560.P12195003260109734570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122045 (n + 1) + (A163982 (n + 1) + A122045 n)

end

end A240560.P12195003260109734570

/-! ## A240560.P6154930291856440537

`A163747(n+1)+A122045(n)-A122045(n+1)`
-/

namespace A240560.P6154930291856440537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163747 (n + 1) + (A122045 n - A122045 (n + 1))

end

end A240560.P6154930291856440537

/-!
# A240561: The main diagonal in the difference table of A240559.

The programs for A240561, there is no canonical definition to state claims against.
-/

/-! ## A240561.P5295315779403912585

`(A005437(2*n)-A005437(2*n+1))*A057077(2*n)`
-/

namespace A240561.P5295315779403912585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005437 (2 * n) - A005437 (2 * n + 1)) * A057077 (2 * n)

end

end A240561.P5295315779403912585

/-!
# A240562: Integers whose squares are in A000073 (tribonacci numbers).

The programs for A240562, there is no canonical definition to state claims against.
-/

/-! ## A240562.P15427376172176944619

`sqrt(A128911(n+1))`
-/

namespace A240562.P15427376172176944619
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A128911 (n + 1) : ℝ)

end

end A240562.P15427376172176944619

/-!
# A240565: Largest possible subsequence Q of the primes such that sum(1/p, p in Q and p <= n) >= log log log n, for odd primes n.

The programs for A240565, there is no canonical definition to state claims against.
-/

/-! ## A240565.P1552488817839014259

`p?[A175140(n+9)+A008620(n)]`
-/

namespace A240565.P1552488817839014259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175140 (n + 9) + A008620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A240565.P1552488817839014259

/-! ## A240565.P18067905375001834371

`A230775(∑[A158479(A230775(n+1))])`
-/

namespace A240565.P18067905375001834371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158479 (A230775 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A240565.P18067905375001834371

/-! ## A240565.P9269755484770964725

`record[A006530(A175140(n+9)+A008620(n))]`
-/

namespace A240565.P9269755484770964725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A175140 (n + 9) + A008620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240565.P9269755484770964725

/-! ## A240565.P6879874110987784478

`record[A014963(A175140(n+9)+A008620(n))]`
-/

namespace A240565.P6879874110987784478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A175140 (n + 9) + A008620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240565.P6879874110987784478

/-! ## A240565.P15974130264343406341

`record[A020639(A175140(n+9)+A008620(n))]`
-/

namespace A240565.P15974130264343406341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A175140 (n + 9) + A008620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240565.P15974130264343406341

/-!
# A240566: Complement of A240565 within the primes.

The programs for A240566, there is no canonical definition to state claims against.
-/

/-! ## A240566.P16158049513220117587

`p?[record[floor(A200370(n+1)/3)]]`
-/

namespace A240566.P16158049513220117587
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A200370 (n + 1) : ℚ) / 3⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A240566.P16158049513220117587

/-! ## A240566.P7998659209216980261

`p?[record[A002264(A200370(n+1))]]`
-/

namespace A240566.P7998659209216980261
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A200370 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A240566.P7998659209216980261

/-! ## A240566.P8067486168011286485

`record[A006530(gcd(n, A106302(n+1)))]`
-/

namespace A240566.P8067486168011286485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd (n : ℤ) (A106302 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240566.P8067486168011286485

/-! ## A240566.P16979029231398554179

`A175063(lt[A056654(n+1), A279494(3*n+4)])`
-/

namespace A240566.P16979029231398554179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279494 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175063 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A240566.P16979029231398554179

/-! ## A240566.P15852397698586240952

`record[A006530(A008578(n+1)-A126337(n+1)+2)]`
-/

namespace A240566.P15852397698586240952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A008578 (n + 1) - A126337 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240566.P15852397698586240952

/-!
# A240567: a(n) = optimal number of tricks to throw in the game of One Round War (with n cards) in order to maximize the expected number of tricks won.

The programs for A240567, there is no canonical definition to state claims against.
-/

/-! ## A240567.P8687541034437942910

`floor(root(∑[n+3]/3, 3))`
-/

namespace A240567.P8687541034437942910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3 : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A240567.P8687541034437942910

/-! ## A240567.P3364121841777486237

`round(root(A058390(n), 17))`
-/

namespace A240567.P3364121841777486237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A058390 n : ℝ) ^ (1 / (17 : ℝ)))

end

end A240567.P3364121841777486237

/-! ## A240567.P1624335272997468350

`ceil(A133630(n+1)/74)`
-/

namespace A240567.P1624335272997468350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A133630 (n + 1) : ℚ) / 74⌉

end

end A240567.P1624335272997468350

/-! ## A240567.P8717438993433124495

`round(sqrt(sqrt(A347742(n+3))))`
-/

namespace A240567.P8717438993433124495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (A347742 (n + 3) : ℝ)))

end

end A240567.P8717438993433124495

/-! ## A240567.P10053434401221621250

`ceil(log(sqrt(A129373(n+3))))`
-/

namespace A240567.P10053434401221621250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (Real.sqrt (A129373 (n + 3) : ℝ))⌉

end

end A240567.P10053434401221621250

/-! ## A240567.P17421076799001124842

`A048766(∑[ceil((n+2)/3)])`
-/

namespace A240567.P17421076799001124842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A240567.P17421076799001124842

/-! ## A240567.P9899392143685194506

`round(sqrt(∑[(A193592(n)+1)/4]))`
-/

namespace A240567.P9899392143685194506
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193592 n + 1 : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ))

end

end A240567.P9899392143685194506

/-! ## A240567.P295284791292899130

`∑[char[∑[A205684(n+1)]]]+1`
-/

namespace A240567.P295284791292899130
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A240567.P295284791292899130

/-! ## A240567.P5116592719412547759

`∑[char[Δ[A134887(n+1)]]]+1`
-/

namespace A240567.P5116592719412547759
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A240567.P5116592719412547759

/-! ## A240567.P16802103644172472416

`∑[char[∑[A161560(n+1)-3]]]`
-/

namespace A240567.P16802103644172472416
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161560 (n + 1) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240567.P16802103644172472416

/-!
# A240568: Difference between n times the n-th prime and twice the sum of the first n primes.

The programs for A240568, the canonical program `A240568.P14315675564415486684` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240568 has offset 1).

The definition of A240568 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A240568.P14315675564415486684

`(n+1)*A000040(n+1)-2*A007504(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A240568

/-- `(n+1)*A000040(n+1)-2*A007504(n+1)` -/
def P14315675564415486684.Spec : Prop :=
  ∀ n, P14315675564415486684.a n = A240568 (n + 1)

theorem P14315675564415486684.correct : P14315675564415486684.Spec := by
  intro n
  simp only [A240568, Nat.add_sub_cancel]

end A240568

/-! ## A240568.P1788290503370142704

`A117495(n+1)-A061802(n)`
-/

namespace A240568.P1788290503370142704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117495 (n + 1) - A061802 n

end

end A240568.P1788290503370142704

namespace A240568

/-- `A117495(n+1)-A061802(n)` -/
def P1788290503370142704.Spec : Prop :=
  ∀ n, P1788290503370142704.a n = A240568 (n + 1)

end A240568

/-! ## A240568.P13559072904988510344

`A152535(n+1)-A007504(n+1)`
-/

namespace A240568.P13559072904988510344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152535 (n + 1) - A007504 (n + 1)

end

end A240568.P13559072904988510344

namespace A240568

/-- `A152535(n+1)-A007504(n+1)` -/
def P13559072904988510344.Spec : Prop :=
  ∀ n, P13559072904988510344.a n = A240568 (n + 1)

end A240568

/-! ## A240568.P13644396285819649721

`A033286(n+1)-A362419(n+1)`
-/

namespace A240568.P13644396285819649721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 1) - A362419 (n + 1)

end

end A240568.P13644396285819649721

namespace A240568

/-- `A033286(n+1)-A362419(n+1)` -/
def P13644396285819649721.Spec : Prop :=
  ∀ n, P13644396285819649721.a n = A240568 (n + 1)

end A240568

/-! ## A240568.P4764346597380866098

`n*A000040(n+1)-A061802(n)`
-/

namespace A240568.P4764346597380866098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000040 (n + 1) - A061802 n

end

end A240568.P4764346597380866098

namespace A240568

/-- `n*A000040(n+1)-A061802(n)` -/
def P4764346597380866098.Spec : Prop :=
  ∀ n, P4764346597380866098.a n = A240568 (n + 1)

end A240568

/-! ## A240568.P6366387972727285687

`A033286(n+1)-∑[A100484(n+1)]`
-/

namespace A240568.P6366387972727285687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240568.P6366387972727285687

namespace A240568

/-- `A033286(n+1)-∑[A100484(n+1)]` -/
def P6366387972727285687.Spec : Prop :=
  ∀ n, P6366387972727285687.a n = A240568 (n + 1)

end A240568

/-! ## A240568.P614075324723963996

`A152535(n+1)-∑[A000040(n+1)]`
-/

namespace A240568.P614075324723963996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152535 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240568.P614075324723963996

namespace A240568

/-- `A152535(n+1)-∑[A000040(n+1)]` -/
def P614075324723963996.Spec : Prop :=
  ∀ n, P614075324723963996.a n = A240568 (n + 1)

end A240568

/-! ## A240568.P170905615293115301

`2*A152535(n+1)-A033286(n+1)`
-/

namespace A240568.P170905615293115301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152535 (n + 1) - A033286 (n + 1)

end

end A240568.P170905615293115301

namespace A240568

/-- `2*A152535(n+1)-A033286(n+1)` -/
def P170905615293115301.Spec : Prop :=
  ∀ n, P170905615293115301.a n = A240568 (n + 1)

end A240568

/-! ## A240568.P4928666050879431908

`A152535(n+1)-A362419(n+1)/2`
-/

namespace A240568.P4928666050879431908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152535 (n + 1) : ℚ) - (A362419 (n + 1) : ℚ) / 2

end

end A240568.P4928666050879431908

namespace A240568

/-- `A152535(n+1)-A362419(n+1)/2` -/
def P4928666050879431908.Spec : Prop :=
  ∀ n, P4928666050879431908.a n = (A240568 (n + 1) : ℚ)

end A240568

/-! ## A240568.P6125678622656572058

`A152535(n+1)-∑[∑[A054541(n+1)]]`
-/

namespace A240568.P6125678622656572058
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152535 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240568.P6125678622656572058

namespace A240568

/-- `A152535(n+1)-∑[∑[A054541(n+1)]]` -/
def P6125678622656572058.Spec : Prop :=
  ∀ n, P6125678622656572058.a n = A240568 (n + 1)

end A240568

/-! ## A240568.P13438987753640303974

`A033286(n+1)-∑[2*A000040(n+1)]`
-/

namespace A240568.P13438987753640303974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240568.P13438987753640303974

namespace A240568

/-- `A033286(n+1)-∑[2*A000040(n+1)]` -/
def P13438987753640303974.Spec : Prop :=
  ∀ n, P13438987753640303974.a n = A240568 (n + 1)

end A240568

/-! ## A240568.P10600098185405066207

`∑[A090942(n+1)-2*A000040(n+1)]`
-/

namespace A240568.P10600098185405066207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090942 (n + 1) - 2 * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240568.P10600098185405066207

namespace A240568

/-- `∑[A090942(n+1)-2*A000040(n+1)]` -/
def P10600098185405066207.Spec : Prop :=
  ∀ n, P10600098185405066207.a n = A240568 (n + 1)

end A240568

/-! ## A240568.P451678320584463968

`n*A000040(n+1)-∑[A011974(n+1)]`
-/

namespace A240568.P451678320584463968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000040 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240568.P451678320584463968

namespace A240568

/-- `n*A000040(n+1)-∑[A011974(n+1)]` -/
def P451678320584463968.Spec : Prop :=
  ∀ n, P451678320584463968.a n = A240568 (n + 1)

end A240568

/-! ## A240568.P4063988147366010221

`∑[n*A054541(n+1)-A000040(n+1)]`
-/

namespace A240568.P4063988147366010221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A054541 (n + 1) - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240568.P4063988147366010221

namespace A240568

/-- `∑[n*A054541(n+1)-A000040(n+1)]` -/
def P4063988147366010221.Spec : Prop :=
  ∀ n, P4063988147366010221.a n = A240568 (n + 1)

end A240568

/-! ## A240568.P4823164628385184655

`∑[n*A125266(n+1)-A000040(n+1)]`
-/

namespace A240568.P4823164628385184655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A125266 (n + 1) - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240568.P4823164628385184655

namespace A240568

/-- `∑[n*A125266(n+1)-A000040(n+1)]` -/
def P4823164628385184655.Spec : Prop :=
  ∀ n, P4823164628385184655.a n = A240568 (n + 1)

end A240568

/-! ## A240568.P6839041485600811470

`∑[n*A054541(n+1)]-∑[A040976(n+1)+2]`
-/

namespace A240568.P6839041485600811470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A054541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A240568.P6839041485600811470

namespace A240568

/-- `∑[n*A054541(n+1)]-∑[A040976(n+1)+2]` -/
def P6839041485600811470.Spec : Prop :=
  ∀ n, P6839041485600811470.a n = A240568 (n + 1)

end A240568

/-! ## A240568.P1628918301547328653

`A117495(n+1)-(A007504(n+1)+A007504(n))`
-/

namespace A240568.P1628918301547328653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117495 (n + 1) - (A007504 (n + 1) + A007504 n)

end

end A240568.P1628918301547328653

namespace A240568

/-- `A117495(n+1)-(A007504(n+1)+A007504(n))` -/
def P1628918301547328653.Spec : Prop :=
  ∀ n, P1628918301547328653.a n = A240568 (n + 1)

end A240568

/-! ## A240568.P368730225191235207

`A189892(n+1)+A007504(n)-A362419(n+1)`
-/

namespace A240568.P368730225191235207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189892 (n + 1) + (A007504 n - A362419 (n + 1))

end

end A240568.P368730225191235207

namespace A240568

/-- `A189892(n+1)+A007504(n)-A362419(n+1)` -/
def P368730225191235207.Spec : Prop :=
  ∀ n, P368730225191235207.a n = A240568 (n + 1)

theorem P368730225191235207.correct : P368730225191235207.Spec := by
  intro n
  simp only [A240568, Nat.add_sub_cancel, A240568.P368730225191235207.a, A240568.P14315675564415486684.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007504, A007504.P16529107901788736493.f1, A007504.P16529107901788736493.a, A189892, A189892.P11745447332243219839.a, A362419, A362419.P12067227853908555658.a, A033286, A033286.P2794343547372572705.a, A182986, A182986.P2625431067462217415.a, A054541, A054541.P347795157194570387.a, A046930, A046930.P1162450832993365803.f1, A046930.P1162450832993365803.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A240568

/-! ## A240568.P7140094070530769277

`A033286(n+1)-(A007504(n+1)+A007504(n+1))`
-/

namespace A240568.P7140094070530769277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 1) - (A007504 (n + 1) + A007504 (n + 1))

end

end A240568.P7140094070530769277

namespace A240568

/-- `A033286(n+1)-(A007504(n+1)+A007504(n+1))` -/
def P7140094070530769277.Spec : Prop :=
  ∀ n, P7140094070530769277.a n = A240568 (n + 1)

theorem P7140094070530769277.correct : P7140094070530769277.Spec := by
  intro n
  simp only [A240568, Nat.add_sub_cancel, A240568.P7140094070530769277.a, A240568.P14315675564415486684.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007504, A007504.P16529107901788736493.f1, A007504.P16529107901788736493.a, A033286, A033286.P2794343547372572705.a, A182986, A182986.P2625431067462217415.a, A054541, A054541.P347795157194570387.a, A046930, A046930.P1162450832993365803.f1, A046930.P1162450832993365803.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A240568

/-! ## A240568.P3633596834496768963

`A189892(n+1)-(A007504(n+1)+A000040(n+1))`
-/

namespace A240568.P3633596834496768963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189892 (n + 1) - (A007504 (n + 1) + A000040 (n + 1))

end

end A240568.P3633596834496768963

namespace A240568

/-- `A189892(n+1)-(A007504(n+1)+A000040(n+1))` -/
def P3633596834496768963.Spec : Prop :=
  ∀ n, P3633596834496768963.a n = A240568 (n + 1)

end A240568

/-!
# A240569: Primes of the form k(m) + k(m+2) where k(m) = A018252(m) (nonprimes), m >= 1.

The programs for A240569, the canonical program `A240569.P17904370683734456303` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240569 has offset 1).

The definition of A240569 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240569.P8113357840428313412

`p?[A141468(n+1)+A002808(n+1)]`
-/

namespace A240569.P8113357840428313412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1) + A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A240569.P8113357840428313412

namespace A240569

/-- `p?[A141468(n+1)+A002808(n+1)]` -/
def P8113357840428313412.Spec : Prop :=
  ∀ n, P8113357840428313412.a n = A240569 (n + 1)

end A240569

/-! ## A240569.P17904370683734456303

`p?[A018252(n+1)+A018252(n+3)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A240569

/-- `p?[A018252(n+1)+A018252(n+3)]` -/
def P17904370683734456303.Spec : Prop :=
  ∀ n, P17904370683734456303.a n = A240569 (n + 1)

theorem P17904370683734456303.correct : P17904370683734456303.Spec := by
  intro n
  simp only [A240569, Nat.add_sub_cancel]

end A240569

/-! ## A240569.P12093709514573792378

`p?[A141468(n+1)+A141468(n+3)]`
-/

namespace A240569.P12093709514573792378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1) + A141468 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A240569.P12093709514573792378

namespace A240569

/-- `p?[A141468(n+1)+A141468(n+3)]` -/
def P12093709514573792378.Spec : Prop :=
  ∀ n, P12093709514573792378.a n = A240569 (n + 1)

end A240569

/-! ## A240569.P5533292093372652722

`record[A006530(A002808(n+11)+A002808(n+13))]`
-/

namespace A240569.P5533292093372652722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A002808 (n + 11) + A002808 (n + 13)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240569.P5533292093372652722

namespace A240569

/-- `record[A006530(A002808(n+11)+A002808(n+13))]` -/
def P5533292093372652722.Spec : Prop :=
  ∀ n, P5533292093372652722.a n = A240569 (n + 1)

end A240569

/-! ## A240569.P11811156821913731684

`p?[A161843(n+1)]`
-/

namespace A240569.P11811156821913731684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A240569.P11811156821913731684

namespace A240569

/-- `p?[A161843(n+1)]` -/
def P11811156821913731684.Spec : Prop :=
  ∀ n, P11811156821913731684.a n = A240569 (n + 1)

end A240569

/-! ## A240569.P17399353422749319513

`record[A020639(A161843(n+2))]`
-/

namespace A240569.P17399353422749319513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A161843 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240569.P17399353422749319513

namespace A240569

/-- `record[A020639(A161843(n+2))]` -/
def P17399353422749319513.Spec : Prop :=
  ∀ n, P17399353422749319513.a n = A240569 (n + 1)

end A240569

/-! ## A240569.P10167645702031130946

`∩[A000040(n+1), A161843(n+1)]`
-/

namespace A240569.P10167645702031130946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240569.P10167645702031130946

namespace A240569

/-- `∩[A000040(n+1), A161843(n+1)]` -/
def P10167645702031130946.Spec : Prop :=
  ∀ n, (P10167645702031130946.a n : ℤ) = A240569 (n + 1)

end A240569

/-! ## A240569.P6654115631869852165

`∩[A004139(n+1), A161843(n+1)]`
-/

namespace A240569.P6654115631869852165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240569.P6654115631869852165

namespace A240569

/-- `∩[A004139(n+1), A161843(n+1)]` -/
def P6654115631869852165.Spec : Prop :=
  ∀ n, (P6654115631869852165.a n : ℤ) = A240569 (n + 1)

end A240569

/-! ## A240569.P16528280589743555724

`∩[A006005(n+1), A161843(n+1)]`
-/

namespace A240569.P16528280589743555724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240569.P16528280589743555724

namespace A240569

/-- `∩[A006005(n+1), A161843(n+1)]` -/
def P16528280589743555724.Spec : Prop :=
  ∀ n, (P16528280589743555724.a n : ℤ) = A240569 (n + 1)

end A240569

/-! ## A240569.P11813697357151682189

`∩[A008578(n+1), A161843(n+1)]`
-/

namespace A240569.P11813697357151682189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240569.P11813697357151682189

namespace A240569

/-- `∩[A008578(n+1), A161843(n+1)]` -/
def P11813697357151682189.Spec : Prop :=
  ∀ n, (P11813697357151682189.a n : ℤ) = A240569 (n + 1)

end A240569

/-! ## A240569.P12074493151370868264

`∩[A033946(n+1), A161843(n+1)]`
-/

namespace A240569.P12074493151370868264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240569.P12074493151370868264

namespace A240569

/-- `∩[A033946(n+1), A161843(n+1)]` -/
def P12074493151370868264.Spec : Prop :=
  ∀ n, (P12074493151370868264.a n : ℤ) = A240569 (n + 1)

end A240569

/-! ## A240569.P8716407318213521312

`∩[A040116(n+1), A161843(n+1)]`
-/

namespace A240569.P8716407318213521312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240569.P8716407318213521312

namespace A240569

/-- `∩[A040116(n+1), A161843(n+1)]` -/
def P8716407318213521312.Spec : Prop :=
  ∀ n, (P8716407318213521312.a n : ℤ) = A240569 (n + 1)

end A240569

/-! ## A240569.P9883746027042159143

`∩[A045319(n+1), A161843(n+1)]`
-/

namespace A240569.P9883746027042159143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240569.P9883746027042159143

namespace A240569

/-- `∩[A045319(n+1), A161843(n+1)]` -/
def P9883746027042159143.Spec : Prop :=
  ∀ n, (P9883746027042159143.a n : ℤ) = A240569 (n + 1)

end A240569

/-! ## A240569.P13864538434198208688

`∩[A045344(n+1), A161843(n+1)]`
-/

namespace A240569.P13864538434198208688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240569.P13864538434198208688

namespace A240569

/-- `∩[A045344(n+1), A161843(n+1)]` -/
def P13864538434198208688.Spec : Prop :=
  ∀ n, (P13864538434198208688.a n : ℤ) = A240569 (n + 1)

end A240569

/-! ## A240569.P14214526048196923545

`∩[A065091(n+1), A161843(n+1)]`
-/

namespace A240569.P14214526048196923545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240569.P14214526048196923545

namespace A240569

/-- `∩[A065091(n+1), A161843(n+1)]` -/
def P14214526048196923545.Spec : Prop :=
  ∀ n, (P14214526048196923545.a n : ℤ) = A240569 (n + 1)

end A240569

/-! ## A240569.P8389344589704110976

`∩[A065376(n+1), A161843(n+1)]`
-/

namespace A240569.P8389344589704110976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240569.P8389344589704110976

namespace A240569

/-- `∩[A065376(n+1), A161843(n+1)]` -/
def P8389344589704110976.Spec : Prop :=
  ∀ n, (P8389344589704110976.a n : ℤ) = A240569 (n + 1)

end A240569

/-! ## A240569.P1528447466984995037

`∩[A079152(n+1), A161843(n+1)]`
-/

namespace A240569.P1528447466984995037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240569.P1528447466984995037

namespace A240569

/-- `∩[A079152(n+1), A161843(n+1)]` -/
def P1528447466984995037.Spec : Prop :=
  ∀ n, (P1528447466984995037.a n : ℤ) = A240569 (n + 1)

end A240569

/-! ## A240569.P9146032519434016701

`∩[A158611(n+1), A161843(n+1)]`
-/

namespace A240569.P9146032519434016701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240569.P9146032519434016701

namespace A240569

/-- `∩[A158611(n+1), A161843(n+1)]` -/
def P9146032519434016701.Spec : Prop :=
  ∀ n, (P9146032519434016701.a n : ℤ) = A240569 (n + 1)

end A240569

/-! ## A240569.P13318171005899072803

`∩[A161843(n+1), A261123(n+1)]`
-/

namespace A240569.P13318171005899072803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240569.P13318171005899072803

namespace A240569

/-- `∩[A161843(n+1), A261123(n+1)]` -/
def P13318171005899072803.Spec : Prop :=
  ∀ n, (P13318171005899072803.a n : ℤ) = A240569 (n + 1)

end A240569

/-! ## A240569.P12115742969728298521

`p?[A163975(n+2)+A163975(n+4)]`
-/

namespace A240569.P12115742969728298521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163975 (n + 2) + A163975 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A240569.P12115742969728298521

namespace A240569

/-- `p?[A163975(n+2)+A163975(n+4)]` -/
def P12115742969728298521.Spec : Prop :=
  ∀ n, P12115742969728298521.a n = A240569 (n + 1)

end A240569

/-!
# A240570: Prime numbers n such that replacing each digit in the decimal expansion of n with the sum of the other digits produces a prime.

The programs for A240570, there is no canonical definition to state claims against.
-/

/-! ## A240570.P15451391261165163902

`A111337(∑[A120647(n+1)!])`
-/

namespace A240570.P15451391261165163902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A120647 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111337 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A240570.P15451391261165163902

/-!
# A240571: a(n) = round(n^n/n!) where round(1/2)=0.

The programs for A240571, the canonical program `A240571.P12608565179818551599` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240571 has offset 0).

The definition of A240571 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240571.P10526047058678895180

`A235496(n)-char[3]`
-/

namespace A240571.P10526047058678895180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235496 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A240571.P10526047058678895180

namespace A240571

/-- `A235496(n)-char[3]` -/
def P10526047058678895180.Spec : Prop :=
  ∀ n, P10526047058678895180.a n = A240571 n

end A240571

/-! ## A240571.P12608565179818551599

`xor(A185013(n), A235496(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A240571

/-- `xor(A185013(n), A235496(n))` -/
def P12608565179818551599.Spec : Prop :=
  ∀ n, P12608565179818551599.a n = A240571 n

theorem P12608565179818551599.correct : P12608565179818551599.Spec := by
  intro n
  simp only [A240571]

end A240571

/-! ## A240571.P14314296794870670120

`round(n^n*acot(n!))`
-/

namespace A240571.P14314296794870670120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ n : ℝ) * SequenceMachineLib.acot (Nat.factorial n : ℝ))

end

end A240571.P14314296794870670120

namespace A240571

/-- `round(n^n*acot(n!))` -/
def P14314296794870670120.Spec : Prop :=
  ∀ n, P14314296794870670120.a n = A240571 n

end A240571

/-! ## A240571.P10653520454930305819

`round(sqrt(n)^(2*n)/n!)`
-/

namespace A240571.P10653520454930305819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) ^ (2 * n) / (Nat.factorial n : ℝ))

end

end A240571.P10653520454930305819

namespace A240571

/-- `round(sqrt(n)^(2*n)/n!)` -/
def P10653520454930305819.Spec : Prop :=
  ∀ n, P10653520454930305819.a n = A240571 n

end A240571

/-! ## A240571.P17634984846498579463

`round(n^n/n!)-char[3]`
-/

namespace A240571.P17634984846498579463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ n : ℚ) / (Nat.factorial n : ℚ)) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A240571.P17634984846498579463

namespace A240571

/-- `round(n^n/n!)-char[3]` -/
def P17634984846498579463.Spec : Prop :=
  ∀ n, P17634984846498579463.a n = A240571 n

end A240571

/-!
# A240572: a(n) = floor(4^n/(2 + sqrt(2))^n).

The programs for A240572, the canonical program `A240572.P5272493364759465585` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240572 has offset 0).

The definition of A240572 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(4^n/(2+sqrt(2))^n)` (program `A240572.P5272493364759465585`, by `A240572.P5272493364759465585.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A240572.P5272493364759465585

`floor(4^n/(2+sqrt(2))^n)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A240572

/-- `floor(4^n/(2+sqrt(2))^n)` -/
def P5272493364759465585.Spec : Prop :=
  ∀ n, P5272493364759465585.a n = A240572 n

theorem P5272493364759465585.correct : P5272493364759465585.Spec := by
  intro n
  simp only [A240572]

end A240572

/-! ## A240572.P7683610248209622878

`floor((4-sqrt(8))^n)²^(A005408(n)/A016825(n))`
-/

namespace A240572.P7683610248209622878
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (⌊(4 - Real.sqrt (8 : ℝ)) ^ n⌋ ^ 2 : ℝ) ^ ((A005408 n : ℚ) / (A016825 n : ℚ) : ℝ)

end

end A240572.P7683610248209622878

namespace A240572

/-- `floor((4-sqrt(8))^n)²^(A005408(n)/A016825(n))` -/
def P7683610248209622878.Spec : Prop :=
  ∀ n, P7683610248209622878.a n = (A240572 n : ℝ)

end A240572

/-! ## A240572.P11283808135780140819

`and(floor((4-sqrt(8))^n), A289041(n))`
-/

namespace A240572.P11283808135780140819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌊(4 - Real.sqrt (8 : ℝ)) ^ n⌋ (A289041 n)

end

end A240572.P11283808135780140819

namespace A240572

/-- `and(floor((4-sqrt(8))^n), A289041(n))` -/
def P11283808135780140819.Spec : Prop :=
  ∀ n, P11283808135780140819.a n = A240572 n

end A240572

/-! ## A240572.P4306963081732913648

`and(floor((4-sqrt(8))^n), A289370(n))`
-/

namespace A240572.P4306963081732913648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌊(4 - Real.sqrt (8 : ℝ)) ^ n⌋ (A289370 n)

end

end A240572.P4306963081732913648

namespace A240572

/-- `and(floor((4-sqrt(8))^n), A289370(n))` -/
def P4306963081732913648.Spec : Prop :=
  ∀ n, P4306963081732913648.a n = A240572 n

end A240572

/-! ## A240572.P2484512017754892266

`floor((4-sqrt(8))^n)%A054044(n+2)`
-/

namespace A240572.P2484512017754892266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(4 - Real.sqrt (8 : ℝ)) ^ n⌋ (A054044 (n + 2))

end

end A240572.P2484512017754892266

namespace A240572

/-- `floor((4-sqrt(8))^n)%A054044(n+2)` -/
def P2484512017754892266.Spec : Prop :=
  ∀ n, P2484512017754892266.a n = A240572 n

end A240572

/-!
# A240573: Number of partitions of n such that the number of even parts is a part.

The programs for A240573, there is no canonical definition to state claims against.
-/

/-! ## A240573.P2333104799023399280

`A240577(n)+A240575(n)`
-/

namespace A240573.P2333104799023399280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240577 n + A240575 n

end

end A240573.P2333104799023399280

/-! ## A240573.P17752452659737314298

`A240576(n)-A240578(n)`
-/

namespace A240573.P17752452659737314298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240576 n - A240578 n

end

end A240573.P17752452659737314298

/-! ## A240573.P6572296680027976055

`A000041(n)-(A240579(n)+A240578(n))`
-/

namespace A240573.P6572296680027976055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A240579 n + A240578 n)

end

end A240573.P6572296680027976055

/-! ## A240573.P9611320384603871984

`A240574(n)+A240577(n)-A240578(n)`
-/

namespace A240573.P9611320384603871984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240574 n + (A240577 n - A240578 n)

end

end A240573.P9611320384603871984

/-! ## A240573.P11073071305864544169

`A240575(n)+A240576(n)-A240574(n)`
-/

namespace A240573.P11073071305864544169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240575 n + (A240576 n - A240574 n)

end

end A240573.P11073071305864544169

/-!
# A240574: Number of partitions of n such that the number of odd parts is a part.

The programs for A240574, there is no canonical definition to state claims against.
-/

/-! ## A240574.P4295164022004375634

`A240578(n)+A240575(n)`
-/

namespace A240574.P4295164022004375634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240578 n + A240575 n

end

end A240574.P4295164022004375634

/-! ## A240574.P17542436701978265689

`A281357(floor(n/2))-A035363(n)`
-/

namespace A240574.P17542436701978265689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281357 ⌊(n : ℚ) / 2⌋.toNat - A035363 n

end

end A240574.P17542436701978265689

/-! ## A240574.P6736427898275365998

`abs(A281357(A004526(n))-A035363(n))`
-/

namespace A240574.P6736427898275365998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A281357 (A004526 n).toNat - A035363 n|

end

end A240574.P6736427898275365998

/-! ## A240574.P6661478103412069235

`(A281357(A004526(n))-A035363(n))%A000143(n)`
-/

namespace A240574.P6661478103412069235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281357 (A004526 n).toNat - A035363 n) (A000143 n)

end

end A240574.P6661478103412069235

/-! ## A240574.P17603787105133355481

`(A281357(A004526(n))-A035363(n))*A033999(n)²`
-/

namespace A240574.P17603787105133355481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A281357 (A004526 n).toNat - A035363 n) * A033999 n ^ 2

end

end A240574.P17603787105133355481

/-! ## A240574.P18337450976011297892

`A000035(4*n)+A281357(A004526(n))-A035363(n)`
-/

namespace A240574.P18337450976011297892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (4 * n) + (A281357 (A004526 n).toNat - A035363 n)

end

end A240574.P18337450976011297892

/-! ## A240574.P14004566558428108318

`A281357(A004526(n))-(A035363(n)+1-A177704(n²))`
-/

namespace A240574.P14004566558428108318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281357 (A004526 n).toNat - (A035363 n + 1 - A177704 (n ^ 2))

end

end A240574.P14004566558428108318

/-! ## A240574.P17679823342292495769

`A037166(n+1)%2+A281357(A004526(n))-A035363(n)`
-/

namespace A240574.P17679823342292495769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037166 (n + 1)) 2 + (A281357 (A004526 n).toNat - A035363 n)

end

end A240574.P17679823342292495769

/-! ## A240574.P14352009667937433823

`A281357(A004526(n))-A035363(n)^(A000040(n+1)%2)`
-/

namespace A240574.P14352009667937433823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281357 (A004526 n).toNat : ℚ) - (A035363 n : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A240574.P14352009667937433823

/-!
# A240575: Number of partitions of n such that the number of even parts is a part and the number of odd parts is a part.

The programs for A240575, there is no canonical definition to state claims against.
-/

/-! ## A240575.P29412215574515547

`A281357(floor(n/2))-A035363(n)-A240578(n)`
-/

namespace A240575.P29412215574515547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281357 ⌊(n : ℚ) / 2⌋.toNat - A035363 n - A240578 n

end

end A240575.P29412215574515547

/-! ## A240575.P4399745455354984700

`A240574(n)-A240578(n)`
-/

namespace A240575.P4399745455354984700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240574 n - A240578 n

end

end A240575.P4399745455354984700

/-! ## A240575.P384814420659622034

`A240573(n)-A240577(n)`
-/

namespace A240575.P384814420659622034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240573 n - A240577 n

end

end A240575.P384814420659622034

/-! ## A240575.P11433244108593027

`A240573(n)+A240574(n)-A240576(n)`
-/

namespace A240575.P11433244108593027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240573 n + (A240574 n - A240576 n)

end

end A240575.P11433244108593027

/-! ## A240575.P5758000753415870888

`A240576(n)-(A240578(n)+A240577(n))`
-/

namespace A240575.P5758000753415870888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240576 n - (A240578 n + A240577 n)

end

end A240575.P5758000753415870888

/-!
# A240576: Number of partitions of n such that the number of even parts is a part or the number of odd parts is a part.

The programs for A240576, there is no canonical definition to state claims against.
-/

/-! ## A240576.P521051708218479953

`A240577(n)+A240574(n)`
-/

namespace A240576.P521051708218479953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240577 n + A240574 n

end

end A240576.P521051708218479953

/-! ## A240576.P3703308421079898770

`A240578(n)+A240573(n)`
-/

namespace A240576.P3703308421079898770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240578 n + A240573 n

end

end A240576.P3703308421079898770

/-! ## A240576.P9457510193480906417

`A000041(n)-A240579(n)`
-/

namespace A240576.P9457510193480906417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A240579 n

end

end A240576.P9457510193480906417

/-! ## A240576.P18061724047252984839

`A213598(n)-A240579(n)`
-/

namespace A240576.P18061724047252984839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A240579 n

end

end A240576.P18061724047252984839

/-! ## A240576.P13885732334744716576

`sqrt(A001255(n))-A240579(n)`
-/

namespace A240576.P13885732334744716576
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A240579 n : ℝ)

end

end A240576.P13885732334744716576

/-!
# A240577: Number of partitions of n such that the number of even parts is a part and the number of odd parts is not a part.

The programs for A240577, there is no canonical definition to state claims against.
-/

/-! ## A240577.P12319932853854130986

`A240573(n)-A240575(n)`
-/

namespace A240577.P12319932853854130986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240573 n - A240575 n

end

end A240577.P12319932853854130986

/-! ## A240577.P10928890089828615983

`A240576(n)-A240574(n)`
-/

namespace A240577.P10928890089828615983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240576 n - A240574 n

end

end A240577.P10928890089828615983

/-! ## A240577.P3677346102725059940

`A240573(n)+A240578(n)-A240574(n)`
-/

namespace A240577.P3677346102725059940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240573 n + (A240578 n - A240574 n)

end

end A240577.P3677346102725059940

/-! ## A240577.P8707582566146047058

`A240576(n)-(A240578(n)+A240575(n))`
-/

namespace A240577.P8707582566146047058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240576 n - (A240578 n + A240575 n)

end

end A240577.P8707582566146047058

/-! ## A240577.P17784403084607808952

`A240576(n)-(A281357(floor(n/2))-A035363(n))`
-/

namespace A240577.P17784403084607808952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240576 n - (A281357 ⌊(n : ℚ) / 2⌋.toNat - A035363 n)

end

end A240577.P17784403084607808952

/-!
# A240578: Number of partitions of n such that the number of odd parts is a part and the number of even parts is not a part.

The programs for A240578, there is no canonical definition to state claims against.
-/

/-! ## A240578.P10680769768286199733

`A281357(floor(n/2))-A035363(n)-A240575(n)`
-/

namespace A240578.P10680769768286199733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281357 ⌊(n : ℚ) / 2⌋.toNat - A035363 n - A240575 n

end

end A240578.P10680769768286199733

/-! ## A240578.P15899198386397201077

`A281357(A004526(n))-(A240575(n)+A035363(n))`
-/

namespace A240578.P15899198386397201077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281357 (A004526 n).toNat - (A240575 n + A035363 n)

end

end A240578.P15899198386397201077

/-! ## A240578.P1378467417858612711

`A240574(n)-A240575(n)`
-/

namespace A240578.P1378467417858612711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240574 n - A240575 n

end

end A240578.P1378467417858612711

/-! ## A240578.P14918207405857855947

`A240574(n)+A240575(n)*A260196(n)`
-/

namespace A240578.P14918207405857855947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240574 n + A240575 n * A260196 n

end

end A240578.P14918207405857855947

/-! ## A240578.P11953289108747339644

`A240576(n)-A240573(n)`
-/

namespace A240578.P11953289108747339644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240576 n - A240573 n

end

end A240578.P11953289108747339644

/-!
# A240579: Number of partitions of n such that the number of odd parts is not a part and the number of even parts is not a part.

The programs for A240579, there is no canonical definition to state claims against.
-/

/-! ## A240579.P13038169112685770630

`A000041(n)-A240576(n)`
-/

namespace A240579.P13038169112685770630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A240576 n

end

end A240579.P13038169112685770630

/-! ## A240579.P16604064800022582715

`A213598(n)-A240576(n)`
-/

namespace A240579.P16604064800022582715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A240576 n

end

end A240579.P16604064800022582715

/-! ## A240579.P9887887377486626688

`sqrt(A001255(n))-A240576(n)`
-/

namespace A240579.P9887887377486626688
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A240576 n : ℝ)

end

end A240579.P9887887377486626688

/-! ## A240579.P3256667343558663044

`∑[A002865(n)]-A240576(n)`
-/

namespace A240579.P3256667343558663044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A240576 n

end

end A240579.P3256667343558663044

/-! ## A240579.P17961556619860262226

`A054225(∑[n])-A240576(n)`
-/

namespace A240579.P17961556619860262226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (∑ j ∈ Finset.range (n + 1), f1 j) - A240576 n

end

end A240579.P17961556619860262226

/-!
# A240580: Numbers k such that DigitSum(5^k) > DigitSum(5^(k+1)).

The programs for A240580, there is no canonical definition to state claims against.
-/

/-! ## A240580.P2725448666830130724

`lt[Δ[A066001(n)], 0]`
-/

namespace A240580.P2725448666830130724
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066001 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A240580.P2725448666830130724

/-! ## A240580.P3994823740936484190

`lt[ratio[A066001(n)], A057427(n)]`
-/

namespace A240580.P3994823740936484190
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066001 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℚ)) n

end

end A240580.P3994823740936484190

/-! ## A240580.P13758524975577410325

`lt[A066001(n+1), A066001(n)]`
-/

namespace A240580.P13758524975577410325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A240580.P13758524975577410325

/-!
# A240581: Array read by antidiagonals: numerators of the core of the classical Bernoulli numbers.

The programs for A240581, there is no canonical definition to state claims against.
-/

/-! ## A240581.P5953172732524695944

`A168516(eq[0, A103451(n)])`
-/

namespace A240581.P5953172732524695944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168516 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240581.P5953172732524695944

/-! ## A240581.P439937967020968918

`A168516(eq[0, A103452(n)])`
-/

namespace A240581.P439937967020968918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168516 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240581.P439937967020968918

/-! ## A240581.P2039669651005358551

`A168516(eq[0, A103516(n)])`
-/

namespace A240581.P2039669651005358551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168516 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240581.P2039669651005358551

/-! ## A240581.P6233454671821775559

`A168516(eq[0, A145677(n)])`
-/

namespace A240581.P6233454671821775559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168516 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240581.P6233454671821775559

/-! ## A240581.P17164643510599662493

`A168516(eq[0, A158821(n)])`
-/

namespace A240581.P17164643510599662493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158821 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168516 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240581.P17164643510599662493

/-! ## A240581.P11865406693099070955

`A168516(eq[2, A154325(n)])`
-/

namespace A240581.P11865406693099070955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168516 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240581.P11865406693099070955

/-! ## A240581.P18233054259715266165

`A168516(eq[0, A185911(n+1)])`
-/

namespace A240581.P18233054259715266165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168516 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240581.P18233054259715266165

/-! ## A240581.P4777624554179675046

`A168516(2*A014132(n+1)-n)`
-/

namespace A240581.P4777624554179675046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168516 (2 * A014132 (n + 1) - (n : ℤ)).toNat

end

end A240581.P4777624554179675046

/-! ## A240581.P1986016446359459290

`A168516(A014132(A014132(n+1)))`
-/

namespace A240581.P1986016446359459290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168516 (A014132 (A014132 (n + 1)).toNat).toNat

end

end A240581.P1986016446359459290

/-! ## A240581.P11781482801941991583

`A168516(eq[A057427(n), A131843(n)])`
-/

namespace A240581.P11781482801941991583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168516 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A240581.P11781482801941991583

/-!
# A240582: Largest absolute value of coefficient in the expression for the discriminant of a generic polynomial of degree n.

The programs for A240582, there is no canonical definition to state claims against.
-/

/-! ## A240582.P17008906289035770193

`record[A268533(n)]*A000169(n+1)`
-/

namespace A240582.P17008906289035770193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000169 (n + 1)

end

end A240582.P17008906289035770193

/-! ## A240582.P2157132181222849940

`A000169(n+1)*A056239(A003182(n))`
-/

namespace A240582.P2157132181222849940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000169 (n + 1) * A056239 (A003182 n).toNat

end

end A240582.P2157132181222849940

/-!
# A240583: Odd primes satisfying a specific condition (see comments).

The programs for A240583, there is no canonical definition to state claims against.
-/

/-! ## A240583.P12432238754186505578

`∩[A274255(n+1), A347695(n+1)]`
-/

namespace A240583.P12432238754186505578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240583.P12432238754186505578

/-! ## A240583.P9648155783558790883

`filter[A045364(3*n+1), A347412(#)]`
-/

namespace A240583.P9648155783558790883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045364 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347412 (f1 j).toNat = 1) n)

end

end A240583.P9648155783558790883

/-!
# A240585: Odd primes satisfying a specific condition (see comments).

The programs for A240585, there is no canonical definition to state claims against.
-/

/-! ## A240585.P11078106925870996206

`p?[A354023(n+5)-char[3]]`
-/

namespace A240585.P11078106925870996206
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354023 (n + 5) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A240585.P11078106925870996206

/-!
# A240586: Expansion of (((8-8 / sqrt(1-8*x)) / (2*sqrt(8*x+2*sqrt(1-8*x)+2))+4 / sqrt(1-8*x))*((x*(sqrt(8*x+2*sqrt(1-8*x)+2)-sqrt(1-8*x)-1))-4*x^2)) / (sqrt(8*x+2*sqrt(1-8*x)+2)-sqrt(1-8*x)-1)^2.

The programs for A240586, there is no canonical definition to state claims against.
-/

/-! ## A240586.P13843411074236921772

`A240722(n)-n*A192479(n+1)`
-/

namespace A240586.P13843411074236921772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240722 n - (n : ℤ) * A192479 (n + 1)

end

end A240586.P13843411074236921772

/-! ## A240586.P11354003727666095073

`A214764(n)+A004526(A059304(n))`
-/

namespace A240586.P11354003727666095073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214764 n + A004526 (A059304 n).toNat

end

end A240586.P11354003727666095073

/-!
# A240589: Primes of the form (k + 2)^k + 2.

The programs for A240589, there is no canonical definition to state claims against.
-/

/-! ## A240589.P10099675316798079854

`((p?[5*n-2]+2)/5)^((p?[5*n+2]-2)/5)+2`
-/

namespace A240589.P10099675316798079854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2 : ℚ) / 5 : ℝ) ^ (((f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 2 : ℚ) / 5 : ℝ) + 2

end

end A240589.P10099675316798079854

/-!
# A240590: Number of primes between successive powerful numbers (A001694).

The programs for A240590, there is no canonical definition to state claims against.
-/

/-! ## A240590.P16776850254123701160

`Δ[A000720(A001694(n+1))]`
-/

namespace A240590.P16776850254123701160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001694 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240590.P16776850254123701160

/-! ## A240590.P8142901322918556023

`Δ[A000720(A224866(n+1)-1)]`
-/

namespace A240590.P8142901322918556023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A224866 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240590.P8142901322918556023

/-! ## A240590.P13654952265783670856

`Δ[A000720(A084371(n+1)*A306458(n+1))]`
-/

namespace A240590.P13654952265783670856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A084371 (n + 1) * A306458 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240590.P13654952265783670856

/-! ## A240590.P9326718774336528700

`Δ[A000720(A001478(n+1)+A224866(n+1)+n)]`
-/

namespace A240590.P9326718774336528700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001478 (n + 1) + (A224866 (n + 1) + (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240590.P9326718774336528700

/-! ## A240590.P5393415312070194638

`Δ[A036234(sqrt(A374291(n+1)))]`
-/

namespace A240590.P5393415312070194638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (SequenceMachineLib.roundAway (Real.sqrt (A374291 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240590.P5393415312070194638

/-! ## A240590.P14794843597200757531

`Δ[A230980(A001694(n+1)-1)]`
-/

namespace A240590.P14794843597200757531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A001694 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240590.P14794843597200757531

/-! ## A240590.P805891395103581836

`Δ[A036234(A224866(n+1)-1)]`
-/

namespace A240590.P805891395103581836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A224866 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240590.P805891395103581836

/-! ## A240590.P14833761089008429321

`Δ[A230980(A224866(n+1)-2)]`
-/

namespace A240590.P14833761089008429321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A224866 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240590.P14833761089008429321

/-! ## A240590.P10748294883685738288

`A032521(Δ[A036234(A001694(n+1))])`
-/

namespace A240590.P10748294883685738288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A001694 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032521 (f1 (n + 1) - f1 n).toNat

end

end A240590.P10748294883685738288

/-! ## A240590.P1641158961302816519

`Δ[A230980(A001694(A000027(n+1)))]`
-/

namespace A240590.P1641158961302816519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A001694 (A000027 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240590.P1641158961302816519

/-! ## A240590.P305158626921264065

`Δ[A000720(A007918(A224866(n+1)))]`
-/

namespace A240590.P305158626921264065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A007918 (A224866 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240590.P305158626921264065

/-! ## A240590.P1812083533167944905

`Δ[A230980(A001694(n+1))%A000041(n+2)]`
-/

namespace A240590.P1812083533167944905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230980 (A001694 (n + 1)).toNat) (A000041 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240590.P1812083533167944905

/-!
# A240591: The smaller of a pair of successive powerful numbers (A001694) without any prime number between them.

The programs for A240591, there is no canonical definition to state claims against.
-/

/-! ## A240591.P15035994067282236572

`A001694(A029903(2^n)+2^ceil(n/2))`
-/

namespace A240591.P15035994067282236572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (SequenceMachineLib.roundAway ((A029903 (2 ^ n) : ℚ) + (2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ))).toNat

end

end A240591.P15035994067282236572

/-!
# A240592: Number of primes between successive composite squarefree numbers (A120944).

The programs for A240592, there is no canonical definition to state claims against.
-/

/-! ## A240592.P12940445092311115609

`Δ[A000720(A120944(n+1))]`
-/

namespace A240592.P12940445092311115609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A120944 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240592.P12940445092311115609

/-! ## A240592.P3170643737381277701

`Δ[A000720(A000469(n+2))]`
-/

namespace A240592.P3170643737381277701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000469 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240592.P3170643737381277701

/-! ## A240592.P6068257184749081803

`Δ[A000720(sqrt(A177492(n+1)))]`
-/

namespace A240592.P6068257184749081803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway (Real.sqrt (A177492 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240592.P6068257184749081803

/-! ## A240592.P17929943535402732474

`Δ[A033270(sqrt(A177492(n+1)))]`
-/

namespace A240592.P17929943535402732474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (SequenceMachineLib.roundAway (Real.sqrt (A177492 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240592.P17929943535402732474

/-! ## A240592.P15459604642060610789

`Δ[A230980(sqrt(A177492(n+1)))]`
-/

namespace A240592.P15459604642060610789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (SequenceMachineLib.roundAway (Real.sqrt (A177492 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240592.P15459604642060610789

/-! ## A240592.P15819671087102094891

`Δ[A000720(A177493(n+1)^(1/3))]`
-/

namespace A240592.P15819671087102094891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((A177493 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240592.P15819671087102094891

/-! ## A240592.P11310831284746454918

`Δ[A033270(A120944(n+1))]%A000041(n+2)`
-/

namespace A240592.P11310831284746454918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A120944 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000041 (n + 2))

end

end A240592.P11310831284746454918

/-! ## A240592.P17552001236061457986

`Δ[A033270(A120944(n+1))+A008683(4*(n+1))]`
-/

namespace A240592.P17552001236061457986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A120944 (n + 1)).toNat + A008683 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240592.P17552001236061457986

/-! ## A240592.P4987472889508313433

`Δ[A033270(A120944(n+1))+A014963(6*(n+1))]`
-/

namespace A240592.P4987472889508313433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A120944 (n + 1)).toNat + A014963 (6 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240592.P4987472889508313433

/-! ## A240592.P15671748655246078384

`Δ[A033270(A120944(n+1))%A000040(2*(n+1))]`
-/

namespace A240592.P15671748655246078384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033270 (A120944 (n + 1)).toNat) (A000040 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240592.P15671748655246078384

/-!
# A240593: The smaller of a pair of consecutive composite squarefree numbers (A120944) without any prime number between them.

The programs for A240593, there is no canonical definition to state claims against.
-/

/-! ## A240593.P7812394322505947155

`A120944(comp[A337030(n+1)])`
-/

namespace A240593.P7812394322505947155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337030 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A240593.P7812394322505947155

/-! ## A240593.P16869848971805007344

`A120944(comp[∑[A061398(n+1)]])`
-/

namespace A240593.P16869848971805007344
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061398 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A240593.P16869848971805007344

/-! ## A240593.P10515980929744235878

`A000469(comp[A337030(n+1)]+1)`
-/

namespace A240593.P10515980929744235878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337030 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A240593.P10515980929744235878

/-! ## A240593.P9190068663898857872

`A000469(lt[A240592(n+1), 1]+2)`
-/

namespace A240593.P9190068663898857872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240592 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2)

end

end A240593.P9190068663898857872

/-! ## A240593.P7457376984031621976

`A120944(eq[1, A240592(n+1)+1]+1)`
-/

namespace A240593.P7457376984031621976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240592 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A240593.P7457376984031621976

/-!
# A240595: Look-and-Say table, where in row(n+1) the sorted list of distinct terms of row(n) is preceded by the list of numbers of their occurrences.

The programs for A240595, there is no canonical definition to state claims against.
-/

/-! ## A240595.P1555728984143152334

`A136480(gcd(A054619(n+1), A173787(n)))`
-/

namespace A240595.P1555728984143152334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (Int.gcd (A054619 (n + 1)) (A173787 n))

end

end A240595.P1555728984143152334

/-! ## A240595.P14761661830831829207

`gcd(A005851(n+7), A141298(A293722(n)))`
-/

namespace A240595.P14761661830831829207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005851 (n + 7)) (A141298 (A293722 n).toNat)

end

end A240595.P14761661830831829207

/-!
# A240597: Numbers k such that sigma(k) == k (mod 9).

The programs for A240597, the canonical program `A240597.P7116661834484253592` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240597 has offset 1).

The definition of A240597 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4952 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240597.P7116661834484253592

`eq[1, dr(A000203(n+1)-n)]+1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A240597

/-- `eq[1, dr(A000203(n+1)-n)]+1` -/
def P7116661834484253592.Spec : Prop :=
  ∀ n, (P7116661834484253592.a n : ℤ) = A240597 (n + 1)

theorem P7116661834484253592.correct : P7116661834484253592.Spec := by
  intro n
  simp only [A240597, Nat.add_sub_cancel]

end A240597

/-! ## A240597.P2622224173753098390

`eq[dr(1-n), dr(A039653(n))]`
-/

namespace A240597.P2622224173753098390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (1 - (n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A039653 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A240597.P2622224173753098390

namespace A240597

/-- `eq[dr(1-n), dr(A039653(n))]` -/
def P2622224173753098390.Spec : Prop :=
  ∀ n, (P2622224173753098390.a n : ℤ) = A240597 (n + 1)

end A240597

/-! ## A240597.P4618715080706687501

`eq[9, gcd(9, A001065(n+1))]+1`
-/

namespace A240597.P4618715080706687501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 9 (A001065 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A240597.P4618715080706687501

namespace A240597

/-- `eq[9, gcd(9, A001065(n+1))]+1` -/
def P4618715080706687501.Spec : Prop :=
  ∀ n, (P4618715080706687501.a n : ℤ) = A240597 (n + 1)

end A240597

/-! ## A240597.P4829657969038472536

`eq[2, dr(n-A088580(n+1))]+1`
-/

namespace A240597.P4829657969038472536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((n : ℤ) - A088580 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A240597.P4829657969038472536

namespace A240597

/-- `eq[2, dr(n-A088580(n+1))]+1` -/
def P4829657969038472536.Spec : Prop :=
  ∀ n, (P4829657969038472536.a n : ℤ) = A240597 (n + 1)

end A240597

/-! ## A240597.P9615714502475630951

`eq[n%9, A105852(round(sqrt(n²+1)))]`
-/

namespace A240597.P9615714502475630951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105852 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A240597.P9615714502475630951

namespace A240597

/-- `eq[n%9, A105852(round(sqrt(n²+1)))]` -/
def P9615714502475630951.Spec : Prop :=
  ∀ n, (P9615714502475630951.a n : ℤ) = A240597 (n + 1)

end A240597

/-! ## A240597.P3830351767249921197

`eq[A010878(n), A105852(A028310(n))]`
-/

namespace A240597.P3830351767249921197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105852 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A240597.P3830351767249921197

namespace A240597

/-- `eq[A010878(n), A105852(A028310(n))]` -/
def P3830351767249921197.Spec : Prop :=
  ∀ n, (P3830351767249921197.a n : ℤ) = A240597 (n + 1)

end A240597

/-!
# A240598: The smallest first term of a sequence of exactly n consecutive prime numbers each of which has the property that its digit sum is prime.

The programs for A240598, there is no canonical definition to state claims against.
-/

/-! ## A240598.P3307667644017492574

`p?[A032598(n+1)%A000040(A143748(n+1))]`
-/

namespace A240598.P3307667644017492574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032598 (n + 1)) (A000040 (A143748 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A240598.P3307667644017492574

/-!
# A240599: Expansion of A(x) = x*B'(x)*(B(x)-x)/B(x)^2 where B(x)/x is g.f. of A027307.

The programs for A240599, there is no canonical definition to state claims against.
-/

/-! ## A240599.P8036751340785888565

`A344553(n+1)+A108448(n+1)`
-/

namespace A240599.P8036751340785888565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344553 (n + 1) + A108448 (n + 1)

end

end A240599.P8036751340785888565

/-! ## A240599.P3052762461295116081

`A108448(n+1)+A108424(n+1)/2`
-/

namespace A240599.P3052762461295116081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108448 (n + 1) : ℚ) + (A108424 (n + 1) : ℚ) / 2

end

end A240599.P3052762461295116081

/-! ## A240599.P411127781435099452

`A344553(n+1)+A026000(n)+n*A027307(n)`
-/

namespace A240599.P411127781435099452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344553 (n + 1) + (A026000 n + (n : ℤ) * A027307 n)

end

end A240599.P411127781435099452

/-! ## A240599.P12996196177840134753

`A344553(n+1)+A216182(A046092(n))`
-/

namespace A240599.P12996196177840134753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344553 (n + 1) + A216182 (A046092 n).toNat

end

end A240599.P12996196177840134753

/-! ## A240599.P13993759234609684195

`A344553(n+1)+A008288(A062708(n+1))`
-/

namespace A240599.P13993759234609684195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344553 (n + 1) + A008288 (A062708 (n + 1)).toNat

end

end A240599.P13993759234609684195

