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
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C002
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

/-!
# A074400: Sum of the even divisors of 2n.

The programs for A074400, the canonical program `A074400.P16312391460013478761` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074400 has offset 1).

The definition of A074400 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074400.P16312391460013478761

`2*A000203(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A074400

/-- `2*A000203(n+1)` -/
def P16312391460013478761.Spec : Prop :=
  ∀ n, P16312391460013478761.a n = A074400 (n + 1)

theorem P16312391460013478761.correct : P16312391460013478761.Spec := by
  intro n
  simp only [A074400, Nat.add_sub_cancel]

end A074400

/-! ## A074400.P131199092998150019

`2*∑{d}[n+1, #]`
-/

namespace A074400.P131199092998150019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n), d)

end

end A074400.P131199092998150019

namespace A074400

/-- `2*∑{d}[n+1, #]` -/
def P131199092998150019.Spec : Prop :=
  ∀ n, (P131199092998150019.a n : ℤ) = A074400 (n + 1)

end A074400

/-! ## A074400.P6615791875756636697

`∑{d}[xor(n, -1), 2*#]`
-/

namespace A074400.P6615791875756636697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, 2 * d

end

end A074400.P6615791875756636697

namespace A074400

/-- `∑{d}[xor(n, -1), 2*#]` -/
def P6615791875756636697.Spec : Prop :=
  ∀ n, (P6615791875756636697.a n : ℤ) = A074400 (n + 1)

end A074400

/-! ## A074400.P12248621684810193561

`∑{d}[n+1, #/sqrt(1/4)]`
-/

namespace A074400.P12248621684810193561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℝ) / Real.sqrt ((1 : ℚ) / 4 : ℝ)

end

end A074400.P12248621684810193561

namespace A074400

/-- `∑{d}[n+1, #/sqrt(1/4)]` -/
def P12248621684810193561.Spec : Prop :=
  ∀ n, P12248621684810193561.a n = (A074400 (n + 1) : ℝ)

end A074400

/-! ## A074400.P6660626343239225479

`2/∑{d}[n+1, #]^-1`
-/

namespace A074400.P6660626343239225479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) ^ (-1 : ℤ)

end

end A074400.P6660626343239225479

namespace A074400

/-- `2/∑{d}[n+1, #]^-1` -/
def P6660626343239225479.Spec : Prop :=
  ∀ n, P6660626343239225479.a n = (A074400 (n + 1) : ℚ)

end A074400

/-! ## A074400.P3908075515293739098

`2^(log2(∑{d}[n+1, #])+1)`
-/

namespace A074400.P3908075515293739098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (Real.logb 2 ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℝ) + 1)

end

end A074400.P3908075515293739098

namespace A074400

/-- `2^(log2(∑{d}[n+1, #])+1)` -/
def P3908075515293739098.Spec : Prop :=
  ∀ n, P3908075515293739098.a n = (A074400 (n + 1) : ℝ)

end A074400

/-! ## A074400.P4169598006583460044

`floor(∑{d}[n+1, (n+1)/#+#])`
-/

namespace A074400.P4169598006583460044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ d ∈ Nat.divisors (f1 n), ((n + 1 : ℚ) / (d : ℚ) + (d : ℚ))⌋

end

end A074400.P4169598006583460044

namespace A074400

/-- `floor(∑{d}[n+1, (n+1)/#+#])` -/
def P4169598006583460044.Spec : Prop :=
  ∀ n, P4169598006583460044.a n = A074400 (n + 1)

end A074400

/-! ## A074400.P12633002098382897948

`ceil(∑{d}[n+1, (n+1)/#+#])`
-/

namespace A074400.P12633002098382897948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ d ∈ Nat.divisors (f1 n), ((n + 1 : ℚ) / (d : ℚ) + (d : ℚ))⌉

end

end A074400.P12633002098382897948

namespace A074400

/-- `ceil(∑{d}[n+1, (n+1)/#+#])` -/
def P12633002098382897948.Spec : Prop :=
  ∀ n, P12633002098382897948.a n = A074400 (n + 1)

end A074400

/-! ## A074400.P17901469106258336458

`round(∑{d}[n+1, (n+1)/#+#])`
-/

namespace A074400.P17901469106258336458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), ((n + 1 : ℚ) / (d : ℚ) + (d : ℚ)))

end

end A074400.P17901469106258336458

namespace A074400

/-- `round(∑{d}[n+1, (n+1)/#+#])` -/
def P17901469106258336458.Spec : Prop :=
  ∀ n, P17901469106258336458.a n = A074400 (n + 1)

end A074400

/-! ## A074400.P11543735109215625528

`Δ[2*A160664(n)]`
-/

namespace A074400.P11543735109215625528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074400.P11543735109215625528

namespace A074400

/-- `Δ[2*A160664(n)]` -/
def P11543735109215625528.Spec : Prop :=
  ∀ n, P11543735109215625528.a n = A074400 (n + 1)

end A074400

/-! ## A074400.P4967531706779889456

`A002659(n+1)+1`
-/

namespace A074400.P4967531706779889456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002659 (n + 1) + 1

end

end A074400.P4967531706779889456

namespace A074400

/-- `A002659(n+1)+1` -/
def P4967531706779889456.Spec : Prop :=
  ∀ n, P4967531706779889456.a n = A074400 (n + 1)

end A074400

/-! ## A074400.P6026351232712869944

`A326136(2*(n+1))`
-/

namespace A074400.P6026351232712869944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326136 (2 * (n + 1))

end

end A074400.P6026351232712869944

namespace A074400

/-- `A326136(2*(n+1))` -/
def P6026351232712869944.Spec : Prop :=
  ∀ n, P6026351232712869944.a n = A074400 (n + 1)

end A074400

/-! ## A074400.P4604014640283014206

`A239050(n+1)/2`
-/

namespace A074400.P4604014640283014206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239050 (n + 1) : ℚ) / 2

end

end A074400.P4604014640283014206

namespace A074400

/-- `A239050(n+1)/2` -/
def P4604014640283014206.Spec : Prop :=
  ∀ n, P4604014640283014206.a n = (A074400 (n + 1) : ℚ)

end A074400

/-! ## A074400.P9945317334286007567

`A274536(n+1)/3`
-/

namespace A074400.P9945317334286007567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274536 (n + 1) : ℚ) / 3

end

end A074400.P9945317334286007567

namespace A074400

/-- `A274536(n+1)/3` -/
def P9945317334286007567.Spec : Prop :=
  ∀ n, P9945317334286007567.a n = (A074400 (n + 1) : ℚ)

end A074400

/-! ## A074400.P7899852145606986670

`A319528(n+1)/4`
-/

namespace A074400.P7899852145606986670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319528 (n + 1) : ℚ) / 4

end

end A074400.P7899852145606986670

namespace A074400

/-- `A319528(n+1)/4` -/
def P7899852145606986670.Spec : Prop :=
  ∀ n, P7899852145606986670.a n = (A074400 (n + 1) : ℚ)

end A074400

/-! ## A074400.P4306699820150244405

`A326122(n+1)/5`
-/

namespace A074400.P4306699820150244405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326122 (n + 1) : ℚ) / 5

end

end A074400.P4306699820150244405

namespace A074400

/-- `A326122(n+1)/5` -/
def P4306699820150244405.Spec : Prop :=
  ∀ n, P4306699820150244405.a n = (A074400 (n + 1) : ℚ)

end A074400

/-! ## A074400.P14756166345214567838

`abs(Δ[2*A330725(n)])`
-/

namespace A074400.P14756166345214567838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A330725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A074400.P14756166345214567838

namespace A074400

/-- `abs(Δ[2*A330725(n)])` -/
def P14756166345214567838.Spec : Prop :=
  ∀ n, P14756166345214567838.a n = A074400 (n + 1)

end A074400

/-! ## A074400.P1609662190351086623

`2*A245092(Δ[n²])`
-/

namespace A074400.P1609662190351086623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A074400.P1609662190351086623

namespace A074400

/-- `2*A245092(Δ[n²])` -/
def P1609662190351086623.Spec : Prop :=
  ∀ n, P1609662190351086623.a n = A074400 (n + 1)

end A074400

/-! ## A074400.P15448021738414347391

`abs(2*A143348(n+1))`
-/

namespace A074400.P15448021738414347391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A143348 (n + 1)|

end

end A074400.P15448021738414347391

namespace A074400

/-- `abs(2*A143348(n+1))` -/
def P15448021738414347391.Spec : Prop :=
  ∀ n, P15448021738414347391.a n = A074400 (n + 1)

end A074400

/-! ## A074400.P1647188420297367386

`2*sqrt(A072861(n+1))`
-/

namespace A074400.P1647188420297367386
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A072861 (n + 1) : ℝ)

end

end A074400.P1647188420297367386

namespace A074400

/-- `2*sqrt(A072861(n+1))` -/
def P1647188420297367386.Spec : Prop :=
  ∀ n, P1647188420297367386.a n = (A074400 (n + 1) : ℝ)

end A074400

/-!
# A074402: Multiplicative closure of Euler's "numeri idonei" (A000926).

The programs for A074402, there is no canonical definition to state claims against.
-/

/-! ## A074402.P8487772969597843149

`lt[A000225(A060775(n+1)), A326641(2*n)]`
-/

namespace A074402.P8487772969597843149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A060775 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326641 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A074402.P8487772969597843149

/-! ## A074402.P18388538746350056630

`lt[A102627(n+1), A194458(A326641(2*n))]`
-/

namespace A074402.P18388538746350056630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194458 (A326641 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A074402.P18388538746350056630

/-! ## A074402.P13492971409238843497

`lt[A187445(A145033(n))*A270390(n+1), n]`
-/

namespace A074402.P13492971409238843497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187445 (A145033 n).toNat * A270390 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A074402.P13492971409238843497

/-! ## A074402.P17894375171605263

`lt[A141238(A141256(n)), 2*n]`
-/

namespace A074402.P17894375171605263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141238 (A141256 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A074402.P17894375171605263

/-! ## A074402.P2957826382350045152

`lt[A005179(n+1), A157868(n+5)]+1`
-/

namespace A074402.P2957826382350045152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157868 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A074402.P2957826382350045152

/-!
# A074403: Number of 4-ary Lyndon words of length n over Z_4 with trace 0 and subtrace 1.

The programs for A074403, there is no canonical definition to state claims against.
-/

/-! ## A074403.P13754854203115556594

`ceil(sqrt(A241386(∑[2*n])))`
-/

namespace A074403.P13754854203115556594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A241386 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)⌉

end

end A074403.P13754854203115556594

/-! ## A074403.P14442587376136100804

`A283303(∏[a(n-1)+1])` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A074403.P14442587376136100804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283303 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A074403.P14442587376136100804

/-! ## A074403.P4325530095115815245

`A391613(A150952(n))`
-/

namespace A074403.P4325530095115815245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391613 (A150952 n).toNat

end

end A074403.P4325530095115815245

/-!
# A074404: Number of 4-ary Lyndon words of length n over Z_4 with trace 0 and subtrace 2.

The programs for A074404, there is no canonical definition to state claims against.
-/

/-! ## A074404.P11459919152682790265

`A261929(∏[∏[∏{e}[n+1, #]]])`
-/

namespace A074404.P11459919152682790265
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261929 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A074404.P11459919152682790265

/-! ## A074404.P8955164997774659758

`A230747(A015448(n))`
-/

namespace A074404.P8955164997774659758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230747 (A015448 n).toNat

end

end A074404.P8955164997774659758

/-! ## A074404.P8330727013764879792

`A105517(A150922(n))`
-/

namespace A074404.P8330727013764879792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105517 (A150922 n).toNat

end

end A074404.P8330727013764879792

/-!
# A074405: Number of 4-ary Lyndon words of length n over Z_4 with trace 0 and subtrace 3.

The programs for A074405, there is no canonical definition to state claims against.
-/

/-! ## A074405.P9373229168394460488

`A006968(A154638(n))*A166444(n)`
-/

namespace A074405.P9373229168394460488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006968 (A154638 n).toNat * A166444 n

end

end A074405.P9373229168394460488

/-! ## A074405.P4110555303970524067

`and(A110654(A006516(n)), A151391(n))`
-/

namespace A074405.P4110555303970524067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A110654 (A006516 n).toNat) (A151391 n)

end

end A074405.P4110555303970524067

/-! ## A074405.P4028530142586366644

`A068777(n+1)/A063647(A000244(n+1))`
-/

namespace A074405.P4028530142586366644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068777 (n + 1) : ℚ) / (A063647 (A000244 (n + 1)).toNat : ℚ)

end

end A074405.P4028530142586366644

/-!
# A074406: Number of 4-ary Lyndon words of length n over Z_4 with trace 1 and subtrace 0.

The programs for A074406, there is no canonical definition to state claims against.
-/

/-! ## A074406.P14992331563856456552

`floor(A000027(A068786(n+1))/(n+1))`
-/

namespace A074406.P14992331563856456552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000027 (A068786 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)⌋

end

end A074406.P14992331563856456552

/-! ## A074406.P11115677638975334772

`A325805(floor(A068786(n+1)/(n+1)))`
-/

namespace A074406.P11115677638975334772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325805 ⌊(A068786 (n + 1) : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A074406.P11115677638975334772

/-! ## A074406.P3753375205596891847

`round(A068786(n+1)/A001222(A000244(n+1)))`
-/

namespace A074406.P3753375205596891847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A068786 (n + 1) : ℚ) / (A001222 (A000244 (n + 1)).toNat : ℚ))

end

end A074406.P3753375205596891847

/-! ## A074406.P15069091703471578747

`∏[A235708(n!)]`
-/

namespace A074406.P15069091703471578747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235708 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A074406.P15069091703471578747

/-!
# A074407: Number of 4-ary Lyndon words of length n over Z_4 with trace 1 and subtrace 1.

The programs for A074407, there is no canonical definition to state claims against.
-/

/-! ## A074407.P18018824569641260454

`A091195(A032207(n))`
-/

namespace A074407.P18018824569641260454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091195 (A032207 (n + 11)).toNat

end

end A074407.P18018824569641260454

/-! ## A074407.P729586841088814068

`A294159(n)-A006530(A006125(n))`
-/

namespace A074407.P729586841088814068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294159 n - A006530 (A006125 n).toNat

end

end A074407.P729586841088814068

/-! ## A074407.P17945083584497938104

`A052123(A391032(n))-A123975(n+1)`
-/

namespace A074407.P17945083584497938104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052123 (A391032 n).toNat - A123975 (n + 1)

end

end A074407.P17945083584497938104

/-!
# A074408: Number of 4-ary Lyndon words of length n over Z_4 with trace 1 and subtrace 2.

The programs for A074408, there is no canonical definition to state claims against.
-/

/-! ## A074408.P2530194554668678694

`A338623(A029885(n)+1)`
-/

namespace A074408.P2530194554668678694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338623 (A029885 n + 1).toNat

end

end A074408.P2530194554668678694

/-! ## A074408.P459041041729501046

`A353848(round(sqrt(A080926(n))))`
-/

namespace A074408.P459041041729501046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353848 (SequenceMachineLib.roundAway (Real.sqrt (A080926 n : ℝ))).toNat

end

end A074408.P459041041729501046

/-! ## A074408.P5454416506580366330

`A338623(∑[∑[A330679(n)]])`
-/

namespace A074408.P5454416506580366330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330679 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338623 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A074408.P5454416506580366330

/-! ## A074408.P2387174002847826492

`A353848(A238479(2*n+1))`
-/

namespace A074408.P2387174002847826492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353848 (A238479 (2 * n + 1)).toNat

end

end A074408.P2387174002847826492

/-!
# A074409: Number of 4-ary Lyndon words of length n over Z_4 with trace 1 and subtrace 3.

The programs for A074409, there is no canonical definition to state claims against.
-/

/-! ## A074409.P2117749642219979360

`A002264(A011782(n)*A070550(n))`
-/

namespace A074409.P2117749642219979360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A011782 n * A070550 n).toNat

end

end A074409.P2117749642219979360

/-! ## A074409.P5495126928892223492

`A002264(A070550(n)*A131577(n))`
-/

namespace A074409.P5495126928892223492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A070550 n * A131577 n).toNat

end

end A074409.P5495126928892223492

/-! ## A074409.P17610616977159419291

`A152467(A000079(n)*A070550(n))`
-/

namespace A074409.P17610616977159419291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A000079 n * A070550 n).toNat

end

end A074409.P17610616977159419291

/-!
# A074410: Number of 4-ary Lyndon words of length n over Z_4 with trace 2 and subtrace 0.

The programs for A074410, there is no canonical definition to state claims against.
-/

/-! ## A074410.P2383699188261634242

`A183233(A289605(n))`
-/

namespace A074410.P2383699188261634242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183233 (A289605 n).toNat

end

end A074410.P2383699188261634242

/-! ## A074410.P9294217623008001306

`A106263(A123707(n+1))`
-/

namespace A074410.P9294217623008001306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106263 (A123707 (n + 1)).toNat

end

end A074410.P9294217623008001306

/-! ## A074410.P15519730575405231356

`A106263(A354463(n+1))`
-/

namespace A074410.P15519730575405231356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106263 (A354463 (n + 1)).toNat

end

end A074410.P15519730575405231356

/-!
# A074411: Number of 4-ary Lyndon words of length n over Z_4 with trace 2 and subtrace 1.

The programs for A074411, there is no canonical definition to state claims against.
-/

/-! ## A074411.P6516278331658959246

`and(A074413(n+1), A077159(A160243(2*(n+2))))`
-/

namespace A074411.P6516278331658959246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A074413 (n + 1)) (A077159 (A160243 (2 * (n + 2))).toNat)

end

end A074411.P6516278331658959246

/-! ## A074411.P2908170161418342791

`A201908(A091113(n!))`
-/

namespace A074411.P2908170161418342791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201908 (A091113 (Nat.factorial n)).toNat

end

end A074411.P2908170161418342791

/-! ## A074411.P13852998110711797257

`A354776(A014278(n+1))`
-/

namespace A074411.P13852998110711797257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354776 (A014278 (n + 1)).toNat

end

end A074411.P13852998110711797257

/-!
# A074412: Number of 4-ary Lyndon words of length n over Z_4 with trace 2 and subtrace 2.

The programs for A074412, there is no canonical definition to state claims against.
-/

/-! ## A074412.P7787812912614783264

`A068790(A077168(n))/(n+1)`
-/

namespace A074412.P7787812912614783264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068790 (A077168 n).toNat : ℚ) / (n + 1 : ℚ)

end

end A074412.P7787812912614783264

/-! ## A074412.P14465603755300042358

`A068790(n+1)/A001511(A000079(n))`
-/

namespace A074412.P14465603755300042358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068790 (n + 1) : ℚ) / (A001511 (A000079 n).toNat : ℚ)

end

end A074412.P14465603755300042358

/-! ## A074412.P13762850255975906086

`A068790(n+1)/A046081(A006593(n+1))`
-/

namespace A074412.P13762850255975906086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068790 (n + 1) : ℚ) / (A046081 (A006593 (n + 1)).toNat : ℚ)

end

end A074412.P13762850255975906086

/-! ## A074412.P4731199022523307388

`A068790(A043319(n+1))/A043319(n+1)`
-/

namespace A074412.P4731199022523307388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068790 (A043319 (n + 1)).toNat : ℚ) / (A043319 (n + 1) : ℚ)

end

end A074412.P4731199022523307388

/-! ## A074412.P18386036709226637541

`A068790(n+1)/A181796(A131577(n+1))`
-/

namespace A074412.P18386036709226637541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068790 (n + 1) : ℚ) / (A181796 (A131577 (n + 1)).toNat : ℚ)

end

end A074412.P18386036709226637541

/-!
# A074413: Number of 4-ary Lyndon words of length n over Z_4 with trace 2 and subtrace 3.

The programs for A074413, there is no canonical definition to state claims against.
-/

/-! ## A074413.P3409085383445038594

`round(sqrt(A241386(∑[2*n])))`
-/

namespace A074413.P3409085383445038594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A241386 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ))

end

end A074413.P3409085383445038594

/-! ## A074413.P7611722454051666300

`A127307(a(n-1))` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A074413.P7611722454051666300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  A127307 (a (n - 1)).toNat

end

end A074413.P7611722454051666300

/-! ## A074413.P4815270590491718708

`A055679(A011367(n))`
-/

namespace A074413.P4815270590491718708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A011367 n).toNat

end

end A074413.P4815270590491718708

/-!
# A074414: Number of 5-ary Lyndon words of length n over Z_5 with trace 0 and subtrace 0.

The programs for A074414, there is no canonical definition to state claims against.
-/

/-! ## A074414.P5519155688498586942

`and(A094433(n), A269798(A230876(n+1)))`
-/

namespace A074414.P5519155688498586942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094433 n) (A269798 (A230876 (n + 1)).toNat)

end

end A074414.P5519155688498586942

/-! ## A074414.P9553046178012757610

`and(A328175(A328226(n+1)), A328186(n+1))`
-/

namespace A074414.P9553046178012757610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A328175 (A328226 (n + 1)).toNat) (A328186 (n + 1))

end

end A074414.P9553046178012757610

/-! ## A074414.P9888583315155190936

`A176638(n+1)-A304326(A270080(n))+1-A005940(n+1)`
-/

namespace A074414.P9888583315155190936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176638 (n + 1) - A304326 (A270080 n).toNat + 1 - A005940 (n + 1)

end

end A074414.P9888583315155190936

/-!
# A074415: Number of 5-ary Lyndon words of length n over Z_5 with trace 0 and subtrace 1.

The programs for A074415, there is no canonical definition to state claims against.
-/

/-! ## A074415.P3098509373864883606

`A130986(A005165(n)+A002262(n))`
-/

namespace A074415.P3098509373864883606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130986 (A005165 n + A002262 n).toNat

end

end A074415.P3098509373864883606

/-!
# A074416: Number of 5-ary Lyndon words of length n over Z_5 with trace 0 and subtrace 2.

The programs for A074416, there is no canonical definition to state claims against.
-/

/-! ## A074416.P4742604238643238572

`A330464(n)-A318403(A300301(n))`
-/

namespace A074416.P4742604238643238572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330464 n - A318403 (A300301 n).toNat

end

end A074416.P4742604238643238572

/-! ## A074416.P1124167537404969082

`A056335(n+1)-A228814(A000079(n))`
-/

namespace A074416.P1124167537404969082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056335 (n + 1) - A228814 (A000079 n).toNat

end

end A074416.P1124167537404969082

/-! ## A074416.P4915145330537396753

`A056334(n+1)-A101080(A183070(n))`
-/

namespace A074416.P4915145330537396753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056334 (n + 1) - A101080 (A183070 n).toNat

end

end A074416.P4915145330537396753

/-!
# A074417: Number of 5-ary Lyndon words of length n over Z_5 with trace 1 and subtrace 0.

The programs for A074417, there is no canonical definition to state claims against.
-/

/-! ## A074417.P4847221181848551388

`A008612(xor(1, A296227(n)))`
-/

namespace A074417.P4847221181848551388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (Int.xor 1 (A296227 n)).toNat

end

end A074417.P4847221181848551388

/-! ## A074417.P764135097839195735

`floor(A028310(A073966(n+1))/(n+1))`
-/

namespace A074417.P764135097839195735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A028310 (A073966 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)⌋

end

end A074417.P764135097839195735

/-!
# A074418: Number of 5-ary Lyndon words of length n over Z_5 with trace 1 and subtrace 1.

The programs for A074418, there is no canonical definition to state claims against.
-/

/-! ## A074418.P12133047277356486178

`A328903(A015533(n))+A069907(n)`
-/

namespace A074418.P12133047277356486178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328903 (A015533 n).toNat + A069907 n

end

end A074418.P12133047277356486178

/-! ## A074418.P13662784862974755386

`A126257(A149412(n)-A167512(n))`
-/

namespace A074418.P13662784862974755386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (A149412 n - A167512 n).toNat

end

end A074418.P13662784862974755386

/-! ## A074418.P10189048195460564051

`A006054(n)*A143824(A338728(n))`
-/

namespace A074418.P10189048195460564051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006054 n * A143824 (A338728 n).toNat

end

end A074418.P10189048195460564051

/-!
# A074419: Number of 5-ary Lyndon words of length n over Z_5 with trace 1 and subtrace 2.

The programs for A074419, there is no canonical definition to state claims against.
-/

/-! ## A074419.P16363703555705930136

`A220658(A010683(n))-A079097(n)`
-/

namespace A074419.P16363703555705930136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 (A010683 n).toNat - A079097 n

end

end A074419.P16363703555705930136

/-! ## A074419.P14464608160349659208

`A256502(A149448(n))-A109965(n)`
-/

namespace A074419.P14464608160349659208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A149448 n).toNat - A109965 n

end

end A074419.P14464608160349659208

/-! ## A074419.P5858411321110123774

`A132292(xor(A000041(n), A080643(n)))`
-/

namespace A074419.P5858411321110123774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132292 (Int.xor (A000041 n) (A080643 n)).toNat

end

end A074419.P5858411321110123774

/-!
# A074420: Number of 5-ary Lyndon words of length n over Z_5 with trace 1 and subtrace 3.

The programs for A074420, there is no canonical definition to state claims against.
-/

/-! ## A074420.P17733660629613914301

`A008616(∑[A083324(n)])`
-/

namespace A074420.P17733660629613914301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A074420.P17733660629613914301

/-! ## A074420.P15274853420053777002

`A165190(∑[2*A083324(n)])`
-/

namespace A074420.P15274853420053777002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A074420.P15274853420053777002

/-! ## A074420.P10630376916637101555

`A008616(∑[A241340(n)+A026682(n)])`
-/

namespace A074420.P10630376916637101555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241340 n + A026682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A074420.P10630376916637101555

/-!
# A074421: Number of 5-ary Lyndon words of length n over Z_5 with trace 1 and subtrace 4.

The programs for A074421, there is no canonical definition to state claims against.
-/

/-! ## A074421.P332838110882164024

`A126257(A008987(n))+A054452(n)`
-/

namespace A074421.P332838110882164024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (A008987 n).toNat + A054452 n

end

end A074421.P332838110882164024

/-! ## A074421.P12466125917192216560

`A110658(A110682(n)+A099919(n))`
-/

namespace A074421.P12466125917192216560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110658 (A110682 n + A099919 n).toNat

end

end A074421.P12466125917192216560

/-! ## A074421.P11424487130945864277

`A023816(A064062(n))-A064189(n)`
-/

namespace A074421.P11424487130945864277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023816 (A064062 n).toNat - A064189 n

end

end A074421.P11424487130945864277

/-!
# A074422: Number of 6-ary Lyndon words of length n with trace 0 and subtrace 0 over Z_6.

The programs for A074422, there is no canonical definition to state claims against.
-/

/-! ## A074422.P11332502870634144043

`A008651(A100328(n)-1)`
-/

namespace A074422.P11332502870634144043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A100328 n - 1).toNat

end

end A074422.P11332502870634144043

/-! ## A074422.P7616365576637046711

`A080907(A178089(n))-n`
-/

namespace A074422.P7616365576637046711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080907 (A178089 n).toNat - (n : ℤ)

end

end A074422.P7616365576637046711

/-!
# A074423: Number of 6-ary Lyndon words of length n with trace 0 and subtrace 1 over Z_6.

The programs for A074423, there is no canonical definition to state claims against.
-/

/-! ## A074423.P1430646528284022388

`A379252(A144959(n))%A006319(n)`
-/

namespace A074423.P1430646528284022388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A379252 (A144959 n).toNat) (A006319 n)

end

end A074423.P1430646528284022388

/-! ## A074423.P16549053178463697209

`A076497(A046682(n))*A353392(3*n)`
-/

namespace A074423.P16549053178463697209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076497 (A046682 n).toNat * A353392 (3 * n)

end

end A074423.P16549053178463697209

/-!
# A074424: Number of 6-ary Lyndon words of length n with trace 0 and subtrace 2 over Z_6.

The programs for A074424, there is no canonical definition to state claims against.
-/

/-! ## A074424.P17852064143848654871

`A201629(A073973(n+1))/(n+1)`
-/

namespace A074424.P17852064143848654871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201629 (A073973 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A074424.P17852064143848654871

/-! ## A074424.P14706441339601442479

`A058387(n)*A103343(A103334(n))`
-/

namespace A074424.P14706441339601442479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058387 n * A103343 (A103334 n).toNat

end

end A074424.P14706441339601442479

/-! ## A074424.P6786872838100748400

`A089911(n)*A354753(A276895(n))`
-/

namespace A074424.P6786872838100748400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089911 n * A354753 (A276895 n).toNat

end

end A074424.P6786872838100748400

/-!
# A074425: Number of 6-ary Lyndon words of length n with trace 0 and subtrace 3 over Z_6.

The programs for A074425, there is no canonical definition to state claims against.
-/

/-! ## A074425.P10555348251147816405

`A327247(∑[A073849(n)!])`
-/

namespace A074425.P10555348251147816405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A073849 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327247 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074425.P10555348251147816405

/-! ## A074425.P17989704522911483136

`∑[A342696(p?[A160046(n+1)])]`
-/

namespace A074425.P17989704522911483136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160046 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074425.P17989704522911483136

/-!
# A074426: Number of 6-ary Lyndon words of length n with trace 0 and subtrace 4 over Z_6.

The programs for A074426, there is no canonical definition to state claims against.
-/

/-! ## A074426.P5633118601363920428

`A362538(n+1)+A302242(A136653(n))`
-/

namespace A074426.P5633118601363920428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362538 (n + 1) + A302242 (A136653 n).toNat

end

end A074426.P5633118601363920428

/-! ## A074426.P1625532783293272748

`A160736(floor(n-atan(n))^3)`
-/

namespace A074426.P1625532783293272748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160736 (⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ ^ 3).toNat

end

end A074426.P1625532783293272748

/-!
# A074427: Number of 6-ary Lyndon words of length n with trace 0 and subtrace 5 over Z_6.

The programs for A074427, there is no canonical definition to state claims against.
-/

/-! ## A074427.P11343250553908407540

`∑[n]*A131996(A052431(n+1))`
-/

namespace A074427.P11343250553908407540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A131996 (A052431 (n + 1)).toNat

end

end A074427.P11343250553908407540

/-! ## A074427.P12884144462686896097

`A106612(A073976(n+1))/(n+1)`
-/

namespace A074427.P12884144462686896097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106612 (A073976 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A074427.P12884144462686896097

/-! ## A074427.P6240262932552455297

`A002265(A007283(n)*A131708(n))`
-/

namespace A074427.P6240262932552455297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A007283 n * A131708 n).toNat

end

end A074427.P6240262932552455297

/-!
# A074428: Number of 6-ary Lyndon words of length n with trace 1 and subtrace 0 over Z_6.

The programs for A074428, there is no canonical definition to state claims against.
-/

/-! ## A074428.P11536313442928015793

`floor(A073977(n+1)/A000005(A000079(n)))`
-/

namespace A074428.P11536313442928015793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A073977 (n + 1) : ℚ) / (A000005 (A000079 n).toNat : ℚ)⌋

end

end A074428.P11536313442928015793

/-! ## A074428.P11994491373866014845

`A073977(A032555(n+1))/(n+1)`
-/

namespace A074428.P11994491373866014845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073977 (A032555 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A074428.P11994491373866014845

/-! ## A074428.P2799813247066060157

`A073977(A032559(n+1))/(n+1)`
-/

namespace A074428.P2799813247066060157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073977 (A032559 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A074428.P2799813247066060157

/-! ## A074428.P8073103380564005173

`A073977(n+1)/A001227(A000244(n))`
-/

namespace A074428.P8073103380564005173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073977 (n + 1) : ℚ) / (A001227 (A000244 n).toNat : ℚ)

end

end A074428.P8073103380564005173

/-! ## A074428.P17926302616685541913

`A073977(A061219(n+1))/A177274(n)`
-/

namespace A074428.P17926302616685541913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073977 (A061219 (n + 1)).toNat : ℚ) / (A177274 n : ℚ)

end

end A074428.P17926302616685541913

/-!
# A074429: Number of 6-ary Lyndon words of length n with trace 1 and subtrace 1 over Z_6.

The programs for A074429, there is no canonical definition to state claims against.
-/

/-! ## A074429.P12165818242233573080

`floor(A073978(n+1)/A000005(2^n))`
-/

namespace A074429.P12165818242233573080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A073978 (n + 1) : ℚ) / (A000005 (2 ^ n) : ℚ)⌋

end

end A074429.P12165818242233573080

/-! ## A074429.P18100290343813403625

`A073978(n+1)/A001222(A008776(n))`
-/

namespace A074429.P18100290343813403625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073978 (n + 1) : ℚ) / (A001222 (A008776 n).toNat : ℚ)

end

end A074429.P18100290343813403625

/-! ## A074429.P7127566080641616930

`A073978(A085908(n+1))/A085908(n+1)`
-/

namespace A074429.P7127566080641616930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073978 (A085908 (n + 1)).toNat : ℚ) / (A085908 (n + 1) : ℚ)

end

end A074429.P7127566080641616930

/-! ## A074429.P13175270599885087715

`A073978(n+1)/A130260(A088305(n+1))`
-/

namespace A074429.P13175270599885087715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073978 (n + 1) : ℚ) / (A130260 (A088305 (n + 1)).toNat : ℚ)

end

end A074429.P13175270599885087715

/-! ## A074429.P8126333234596378387

`A073978(n+1)/A132579(A132576(n+1))`
-/

namespace A074429.P8126333234596378387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073978 (n + 1) : ℚ) / (A132579 (A132576 (n + 1)).toNat : ℚ)

end

end A074429.P8126333234596378387

/-!
# A074430: Number of 6-ary Lyndon words of length n with trace 1 and subtrace 2 over Z_6.

The programs for A074430, there is no canonical definition to state claims against.
-/

/-! ## A074430.P4575386277707497282

`floor(A073979(n+1)/A000005(2^n))`
-/

namespace A074430.P4575386277707497282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A073979 (n + 1) : ℚ) / (A000005 (2 ^ n) : ℚ)⌋

end

end A074430.P4575386277707497282

/-! ## A074430.P621177502334198516

`floor(A073979(n+1)/A070871(2^n))`
-/

namespace A074430.P621177502334198516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A073979 (n + 1) : ℚ) / (A070871 (2 ^ n) : ℚ)⌋

end

end A074430.P621177502334198516

/-! ## A074430.P932164427458029622

`A073979(A077168(n))/(n+1)`
-/

namespace A074430.P932164427458029622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073979 (A077168 n).toNat : ℚ) / (n + 1 : ℚ)

end

end A074430.P932164427458029622

/-! ## A074430.P1501506864596631458

`A073979(A043319(n+1))/(n+1)`
-/

namespace A074430.P1501506864596631458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073979 (A043319 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A074430.P1501506864596631458

/-! ## A074430.P9471966176400613087

`A073979(n+1)/A124754(2^n)`
-/

namespace A074430.P9471966176400613087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073979 (n + 1) : ℚ) / (A124754 (2 ^ n) : ℚ)

end

end A074430.P9471966176400613087

/-!
# A074431: Number of 6-ary Lyndon words of length n with trace 1 and subtrace 3 over Z_6.

The programs for A074431, there is no canonical definition to state claims against.
-/

/-! ## A074431.P4891157073529133229

`floor(A073980(n+1)/A000005(A000079(n)))`
-/

namespace A074431.P4891157073529133229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A073980 (n + 1) : ℚ) / (A000005 (A000079 n).toNat : ℚ)⌋

end

end A074431.P4891157073529133229

/-! ## A074431.P1777346120803400990

`A267415(A196018(n))`
-/

namespace A074431.P1777346120803400990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267415 (A196018 n).toNat

end

end A074431.P1777346120803400990

/-!
# A074432: Number of 6-ary Lyndon words of length n with trace 1 and subtrace 4 over Z_6.

The programs for A074432, there is no canonical definition to state claims against.
-/

/-! ## A074432.P14263746452357942600

`floor(A073981(n+1)/A000005(A000079(n)))`
-/

namespace A074432.P14263746452357942600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A073981 (n + 1) : ℚ) / (A000005 (A000079 n).toNat : ℚ)⌋

end

end A074432.P14263746452357942600

/-! ## A074432.P10213499645999198334

`A023443(floor(A073981(n+1)/(n+1)))+1`
-/

namespace A074432.P10213499645999198334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ⌊(A073981 (n + 1) : ℚ) / (n + 1 : ℚ)⌋.toNat + 1

end

end A074432.P10213499645999198334

/-!
# A074433: Number of 6-ary Lyndon words of length n with trace 1 and subtrace 5 over Z_6.

The programs for A074433, there is no canonical definition to state claims against.
-/

/-! ## A074433.P5573177382929198418

`A073982(A077168(n))/(n+1)`
-/

namespace A074433.P5573177382929198418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073982 (A077168 n).toNat : ℚ) / (n + 1 : ℚ)

end

end A074433.P5573177382929198418

/-! ## A074433.P3368705599483570692

`A073982(n+1)/A008908(2^n)`
-/

namespace A074433.P3368705599483570692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073982 (n + 1) : ℚ) / (A008908 (2 ^ n) : ℚ)

end

end A074433.P3368705599483570692

/-! ## A074433.P1228297914355989361

`A073982(n+1)/A029931(2^n)`
-/

namespace A074433.P1228297914355989361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073982 (n + 1) : ℚ) / (A029931 (2 ^ n) : ℚ)

end

end A074433.P1228297914355989361

/-! ## A074433.P9467885304645585708

`A073982(n+1)/A181796(2^n)`
-/

namespace A074433.P9467885304645585708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073982 (n + 1) : ℚ) / (A181796 (2 ^ n) : ℚ)

end

end A074433.P9467885304645585708

/-! ## A074433.P9125374402825228037

`A073982(n+1)/A001511(A000079(n))`
-/

namespace A074433.P9125374402825228037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073982 (n + 1) : ℚ) / (A001511 (A000079 n).toNat : ℚ)

end

end A074433.P9125374402825228037

/-!
# A074434: Number of 6-ary Lyndon words of length n with trace 2 and subtrace 0 over Z_6.

The programs for A074434, there is no canonical definition to state claims against.
-/

/-! ## A074434.P5055363116872598626

`A007737(A050351(n))`
-/

namespace A074434.P5055363116872598626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007737 (A050351 n).toNat

end

end A074434.P5055363116872598626

/-! ## A074434.P5613362483448565784

`A161135(A007463(n))`
-/

namespace A074434.P5613362483448565784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161135 (A007463 n).toNat

end

end A074434.P5613362483448565784

/-!
# A074435: Number of 6-ary Lyndon words of length n with trace 2 and subtrace 1 over Z_6.

The programs for A074435, there is no canonical definition to state claims against.
-/

/-! ## A074435.P8359962661320700913

`A237705(A333094(n))`
-/

namespace A074435.P8359962661320700913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237705 (A333094 n).toNat

end

end A074435.P8359962661320700913

/-! ## A074435.P6226055084097259902

`A282192(30*A000142(n))`
-/

namespace A074435.P6226055084097259902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282192 (30 * A000142 n).toNat

end

end A074435.P6226055084097259902

/-!
# A074436: Number of 6-ary Lyndon words of length n with trace 2 and subtrace 2 over Z_6.

The programs for A074436, there is no canonical definition to state claims against.
-/

/-! ## A074436.P5703131570925787623

`A091226((n-1)*(n-1)*n!)`
-/

namespace A074436.P5703131570925787623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091226 (((n : ℤ) - 1) * (((n : ℤ) - 1) * (Nat.factorial n : ℤ))).toNat

end

end A074436.P5703131570925787623

/-! ## A074436.P11491981030078774555

`A242210(A126952(n))`
-/

namespace A074436.P11491981030078774555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242210 (A126952 n).toNat

end

end A074436.P11491981030078774555

/-!
# A074437: Number of 6-ary Lyndon words of length n with trace 2 and subtrace 3 over Z_6.

The programs for A074437, there is no canonical definition to state claims against.
-/

/-! ## A074437.P7796245043505079396

`A049824(A027710(n))+n`
-/

namespace A074437.P7796245043505079396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049824 (A027710 n).toNat + (n : ℤ)

end

end A074437.P7796245043505079396

/-! ## A074437.P6889452570584190098

`record[A007198(n+1)%A220621(n+1)]`
-/

namespace A074437.P6889452570584190098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007198 (n + 1)) (A220621 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074437.P6889452570584190098

/-!
# A074438: Number of 6-ary Lyndon words of length n with trace 2 and subtrace 4 over Z_6.

The programs for A074438, there is no canonical definition to state claims against.
-/

/-! ## A074438.P4322245484766580497

`∑[583%or(n%3, A317080(n))]`
-/

namespace A074438.P4322245484766580497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 583 (Int.lor ((n % 3 : ℕ) : ℤ) (A317080 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074438.P4322245484766580497

/-! ## A074438.P2648594560113871684

`Δ[A176044(A068625(n))]`
-/

namespace A074438.P2648594560113871684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176044 (A068625 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074438.P2648594560113871684

/-!
# A074439: Number of 6-ary Lyndon words of length n with trace 2 and subtrace 5 over Z_6.

The programs for A074439, there is no canonical definition to state claims against.
-/

/-! ## A074439.P11331874764132010378

`A275492(2*n)-∑[A274641(n)]`
-/

namespace A074439.P11331874764132010378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275492 (2 * n) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074439.P11331874764132010378

/-! ## A074439.P15409292028135012360

`Δ[Δ[A132147(A000108(n))]-n]-n`
-/

namespace A074439.P15409292028135012360
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132147 (A000108 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A074439.P15409292028135012360

/-!
# A074440: Number of 6-ary Lyndon words of length n with trace 3 and subtrace 0 over Z_6.

The programs for A074440, there is no canonical definition to state claims against.
-/

/-! ## A074440.P2132388481062413029

`Δ[record[A281116(round(5^(n/5)))]]`
-/

namespace A074440.P2132388481062413029
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (SequenceMachineLib.roundAway ((5 : ℝ) ^ ((n : ℚ) / 5 : ℝ))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074440.P2132388481062413029

/-! ## A074440.P8765673300936577564

`A048265(A148769(n))`
-/

namespace A074440.P8765673300936577564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048265 (A148769 n).toNat

end

end A074440.P8765673300936577564

/-!
# A074441: Number of 6-ary Lyndon words of length n with trace 3 and subtrace 1 over Z_6.

The programs for A074441, there is no canonical definition to state claims against.
-/

/-! ## A074441.P4376330057748689340

`round(A073990(n+1)/A001222(2^(n+1)))`
-/

namespace A074441.P4376330057748689340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A073990 (n + 1) : ℚ) / (A001222 (2 ^ (n + 1)) : ℚ))

end

end A074441.P4376330057748689340

/-! ## A074441.P1438364288382633796

`A073990(A077168(n))/(n+1)`
-/

namespace A074441.P1438364288382633796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073990 (A077168 n).toNat : ℚ) / (n + 1 : ℚ)

end

end A074441.P1438364288382633796

/-! ## A074441.P7176675409538696976

`A073990(n+1)/A001511(A000079(n))`
-/

namespace A074441.P7176675409538696976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073990 (n + 1) : ℚ) / (A001511 (A000079 n).toNat : ℚ)

end

end A074441.P7176675409538696976

/-! ## A074441.P17908717645416980473

`A073990(n+1)/A020651(A000051(n))`
-/

namespace A074441.P17908717645416980473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073990 (n + 1) : ℚ) / (A020651 (A000051 n).toNat : ℚ)

end

end A074441.P17908717645416980473

/-! ## A074441.P3604870295563175879

`A073990(n+1)/A084320(A126646(n))`
-/

namespace A074441.P3604870295563175879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073990 (n + 1) : ℚ) / (A084320 (A126646 n).toNat : ℚ)

end

end A074441.P3604870295563175879

/-!
# A074442: Number of 6-ary Lyndon words of length n with trace 3 and subtrace 2 over Z_6.

The programs for A074442, there is no canonical definition to state claims against.
-/

/-! ## A074442.P9261184113830334290

`A073991(A077342(n+1))/(n+1)`
-/

namespace A074442.P9261184113830334290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073991 (A077342 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A074442.P9261184113830334290

/-! ## A074442.P7986691821208705673

`A073991(A351374(n+1))/(n+1)`
-/

namespace A074442.P7986691821208705673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073991 (A351374 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A074442.P7986691821208705673

/-! ## A074442.P13794151475379418711

`A073991(n+1)/A304872(A298196(n+1))`
-/

namespace A074442.P13794151475379418711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073991 (n + 1) : ℚ) / (A304872 (A298196 (n + 1)).toNat : ℚ)

end

end A074442.P13794151475379418711

/-! ## A074442.P12757185313751231704

`A073991(n+1)/A000005(A037019(n+1))`
-/

namespace A074442.P12757185313751231704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073991 (n + 1) : ℚ) / (A000005 (A037019 (n + 1)).toNat : ℚ)

end

end A074442.P12757185313751231704

/-! ## A074442.P12720540302804726827

`A073991(n+1)/A000005(A000079(n))`
-/

namespace A074442.P12720540302804726827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073991 (n + 1) : ℚ) / (A000005 (A000079 n).toNat : ℚ)

end

end A074442.P12720540302804726827

/-!
# A074443: Number of 6-ary Lyndon words of length n with trace 3 and subtrace 3 over Z_6.

The programs for A074443, there is no canonical definition to state claims against.
-/

/-! ## A074443.P17016360218621030712

`A359011(n+1)%(3^n)`
-/

namespace A074443.P17016360218621030712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A359011 (n + 1)) (3 ^ n : ℤ)

end

end A074443.P17016360218621030712

/-! ## A074443.P5574303211435825505

`A253638(xor(1, n)+5^n+2)`
-/

namespace A074443.P5574303211435825505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253638 (Nat.xor 1 n + 5 ^ n + 2)

end

end A074443.P5574303211435825505

/-!
# A074444: Number of 6-ary Lyndon words of length n with trace 3 and subtrace 4 over Z_6.

The programs for A074444, there is no canonical definition to state claims against.
-/

/-! ## A074444.P11189179874882204154

`A073993(A032555(n+1))/(n+1)`
-/

namespace A074444.P11189179874882204154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073993 (A032555 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A074444.P11189179874882204154

/-! ## A074444.P13499129730899782106

`A073993(A032559(n+1))/(n+1)`
-/

namespace A074444.P13499129730899782106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073993 (A032559 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A074444.P13499129730899782106

/-! ## A074444.P2919455573702796066

`(A228762(2*(n+3))+A073993(n+1))/(n+1)`
-/

namespace A074444.P2919455573702796066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228762 (2 * (n + 3)) + A073993 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A074444.P2919455573702796066

/-! ## A074444.P3686828187670997977

`A073993(n+1)/A000374(A000244(n))`
-/

namespace A074444.P3686828187670997977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073993 (n + 1) : ℚ) / (A000374 (A000244 n).toNat : ℚ)

end

end A074444.P3686828187670997977

/-! ## A074444.P13328048383316393713

`A073993(n+1)/A073093(A075088(n))`
-/

namespace A074444.P13328048383316393713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073993 (n + 1) : ℚ) / (A073093 (A075088 n).toNat : ℚ)

end

end A074444.P13328048383316393713

/-!
# A074445: Number of 6-ary Lyndon words of length n with trace 3 and subtrace 5 over Z_6.

The programs for A074445, there is no canonical definition to state claims against.
-/

/-! ## A074445.P7942898455469011479

`floor(A073994(n+1)/A000005(A000079(n)))`
-/

namespace A074445.P7942898455469011479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A073994 (n + 1) : ℚ) / (A000005 (A000079 n).toNat : ℚ)⌋

end

end A074445.P7942898455469011479

/-! ## A074445.P11705765318071139709

`A073994(n+1)/A001222(A005029(n))`
-/

namespace A074445.P11705765318071139709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073994 (n + 1) : ℚ) / (A001222 (A005029 n).toNat : ℚ)

end

end A074445.P11705765318071139709

/-! ## A074445.P6990728380209117183

`A073994(n+1)/A000120(A126646(n))`
-/

namespace A074445.P6990728380209117183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073994 (n + 1) : ℚ) / (A000120 (A126646 n).toNat : ℚ)

end

end A074445.P6990728380209117183

/-! ## A074445.P8850697765781137726

`A073994(n+1)/A070939(A283063(n))`
-/

namespace A074445.P8850697765781137726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073994 (n + 1) : ℚ) / (A070939 (A283063 n).toNat : ℚ)

end

end A074445.P8850697765781137726

/-! ## A074445.P12714393314285301716

`A073994(n+1)/A001222(A000792(3*n+2))`
-/

namespace A074445.P12714393314285301716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073994 (n + 1) : ℚ) / (A001222 (A000792 (3 * n + 2)).toNat : ℚ)

end

end A074445.P12714393314285301716

/-!
# A074446: Number of 4-ary Lyndon words of length n over GF(4) with trace 0 and subtrace 0.

The programs for A074446, there is no canonical definition to state claims against.
-/

/-! ## A074446.P8419913668761633765

`A054661(n+1)-3*A074447(n+1)`
-/

namespace A074446.P8419913668761633765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054661 (n + 1) - 3 * A074447 (n + 1)

end

end A074446.P8419913668761633765

/-! ## A074446.P16219364636816179473

`A074033(n+1)+A074034(n+1)-A074447(n+1)`
-/

namespace A074446.P16219364636816179473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074033 (n + 1) + (A074034 (n + 1) - A074447 (n + 1))

end

end A074446.P16219364636816179473

/-! ## A074446.P15406101582419884934

`A091012(A091044(a(n-2)+1))` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A074446.P15406101582419884934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  A091012 (A091044 (a (n - 2) + 1).toNat).toNat

end

end A074446.P15406101582419884934

/-!
# A074447: Number of 4-ary Lyndon words of length n over GF(4) with trace 0 and subtrace 1.

The programs for A074447, there is no canonical definition to state claims against.
-/

/-! ## A074447.P10073443261948594927

`A042980(2*(n+1))-A074035(n+1)`
-/

namespace A074447.P10073443261948594927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042980 (2 * (n + 1)) - A074035 (n + 1)

end

end A074447.P10073443261948594927

/-! ## A074447.P11852757476489985892

`(A054661(n+1)-A074446(n+1))/3`
-/

namespace A074447.P11852757476489985892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054661 (n + 1) - A074446 (n + 1) : ℚ) / 3

end

end A074447.P11852757476489985892

/-! ## A074447.P14320281714868198505

`A054661(n+1)+A074035(n+1)-A054664(n+1)`
-/

namespace A074447.P14320281714868198505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054661 (n + 1) + (A074035 (n + 1) - A054664 (n + 1))

end

end A074447.P14320281714868198505

/-! ## A074447.P6043318018427215205

`A054664(n+1)+A074035(n+1)-A054660(n+1)`
-/

namespace A074447.P6043318018427215205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054664 (n + 1) + (A074035 (n + 1) - A054660 (n + 1))

end

end A074447.P6043318018427215205

/-! ## A074447.P4425277477357094629

`A074448(n+1)-abs(A074446(n+1)-A074449(n+1))`
-/

namespace A074447.P4425277477357094629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074448 (n + 1) - |A074446 (n + 1) - A074449 (n + 1)|

end

end A074447.P4425277477357094629

/-!
# A074448: Number of 4-ary Lyndon words of length n over GF(4) with trace 1 and subtrace 0.

The programs for A074448, there is no canonical definition to state claims against.
-/

/-! ## A074448.P5649612187002020830

`A042982(2*(n+1))-A074032(n+1)`
-/

namespace A074448.P5649612187002020830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042982 (2 * (n + 1)) - A074032 (n + 1)

end

end A074448.P5649612187002020830

/-! ## A074448.P5146596515462952417

`A042982(2*(n+1))-A042979(2*(n+1))/2`
-/

namespace A074448.P5146596515462952417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042982 (2 * (n + 1)) : ℚ) - (A042979 (2 * (n + 1)) : ℚ) / 2

end

end A074448.P5146596515462952417

/-! ## A074448.P16721064204286998393

`A074033(n+1)+A074035(n+1)-A074032(n+1)`
-/

namespace A074448.P16721064204286998393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074033 (n + 1) + (A074035 (n + 1) - A074032 (n + 1))

end

end A074448.P16721064204286998393

/-! ## A074448.P6794726771722449291

`A074447(n+1)+abs(A074446(n+1)-A074449(n+1))`
-/

namespace A074448.P6794726771722449291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074447 (n + 1) + |A074446 (n + 1) - A074449 (n + 1)|

end

end A074448.P6794726771722449291

/-! ## A074448.P16419425848751620540

`A042982(2*(n+1))-(A054661(n+1)-A074031(n+1))/3`
-/

namespace A074448.P16419425848751620540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042982 (2 * (n + 1)) : ℚ) - (A054661 (n + 1) - A074031 (n + 1) : ℚ) / 3

end

end A074448.P16419425848751620540

/-!
# A074449: Number of 4-ary Lyndon words of length n over GF(4) with trace 1 and subtrace 1.

The programs for A074449, there is no canonical definition to state claims against.
-/

/-! ## A074449.P15976248026954276385

`A042981(2*(n+1))-A074032(n+1)`
-/

namespace A074449.P15976248026954276385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042981 (2 * (n + 1)) - A074032 (n + 1)

end

end A074449.P15976248026954276385

/-! ## A074449.P18420975157400325359

`A042981(2*(n+1))-A042979(2*(n+1))/2`
-/

namespace A074449.P18420975157400325359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042981 (2 * (n + 1)) : ℚ) - (A042979 (2 * (n + 1)) : ℚ) / 2

end

end A074449.P18420975157400325359

/-! ## A074449.P7506715623574202902

`A074034(n+1)+A074035(n+1)-A074032(n+1)`
-/

namespace A074449.P7506715623574202902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074034 (n + 1) + (A074035 (n + 1) - A074032 (n + 1))

end

end A074449.P7506715623574202902

/-! ## A074449.P7965118943538978566

`A074447(n+1)+abs(A074446(n+1)-A074448(n+1))`
-/

namespace A074449.P7965118943538978566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074447 (n + 1) + |A074446 (n + 1) - A074448 (n + 1)|

end

end A074449.P7965118943538978566

/-!
# A074451: Non-cubefree noncubes.

The programs for A074451, the canonical program `A074451.P6339124675814349987` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074451 has offset 1).

The definition of A074451 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1664 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074451.P6339124675814349987

`∩[A007412(n+1), A046099(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A074451

/-- `∩[A007412(n+1), A046099(n+1)]` -/
def P6339124675814349987.Spec : Prop :=
  ∀ n, (P6339124675814349987.a n : ℤ) = A074451 (n + 1)

theorem P6339124675814349987.correct : P6339124675814349987.Spec := by
  intro n
  simp only [A074451, Nat.add_sub_cancel]

end A074451

/-! ## A074451.P11664285573479607957

`lt[1, A008834(n+1)%(n+1)-1]+1`
-/

namespace A074451.P11664285573479607957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008834 (n + 1)) (n + 1 : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A074451.P11664285573479607957

namespace A074451

/-- `lt[1, A008834(n+1)%(n+1)-1]+1` -/
def P11664285573479607957.Spec : Prop :=
  ∀ n, (P11664285573479607957.a n : ℤ) = A074451 (n + 1)

end A074451

/-! ## A074451.P8268574201083134230

`eq[A010057(n), A130706(A294333(n))]`
-/

namespace A074451.P8268574201083134230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (A294333 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074451.P8268574201083134230

namespace A074451

/-- `eq[A010057(n), A130706(A294333(n))]` -/
def P8268574201083134230.Spec : Prop :=
  ∀ n, (P8268574201083134230.a n : ℤ) = A074451 (n + 1)

end A074451

/-! ## A074451.P12390367715241170409

`eq[A007427(A233583(n+1)), A010057(n)]`
-/

namespace A074451.P12390367715241170409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007427 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074451.P12390367715241170409

namespace A074451

/-- `eq[A007427(A233583(n+1)), A010057(n)]` -/
def P12390367715241170409.Spec : Prop :=
  ∀ n, (P12390367715241170409.a n : ℤ) = A074451 (n + 1)

end A074451

/-! ## A074451.P7753227898912320369

`A046099(lt[A373675(n+1), A216345(2*n+5)])`
-/

namespace A074451.P7753227898912320369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A074451.P7753227898912320369

namespace A074451

/-- `A046099(lt[A373675(n+1), A216345(2*n+5)])` -/
def P7753227898912320369.Spec : Prop :=
  ∀ n, P7753227898912320369.a n = A074451 (n + 1)

end A074451

/-!
# A074452: Treated as strings, phi(n) is a substring of sigma(n).

The programs for A074452, there is no canonical definition to state claims against.
-/

/-! ## A074452.P7735168392126785709

`record[A322441(n)%A145592(n+1)]`
-/

namespace A074452.P7735168392126785709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322441 n) (A145592 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074452.P7735168392126785709

/-!
# A074453: Sum of determinants of 2nd order principal minors of powers of inverse of the matrix ((1,1,0,0),(1,0,1,0),(1,0,0,1),(1,0,0,0)).

The programs for A074453, there is no canonical definition to state claims against.
-/

/-! ## A074453.P7730794018566686708

`(-1)^n*A074193(n)`
-/

namespace A074453.P7730794018566686708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A074193 n

end

end A074453.P7730794018566686708

/-! ## A074453.P12703587097829560630

`A074193(n)/A033999(n)`
-/

namespace A074453.P12703587097829560630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074193 n : ℚ) / (A033999 n : ℚ)

end

end A074453.P12703587097829560630

/-! ## A074453.P16495762946253096792

`A074193(n)*A105812(n+3)`
-/

namespace A074453.P16495762946253096792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074193 n * A105812 (n + 3)

end

end A074453.P16495762946253096792

/-! ## A074453.P1634942652487796160

`A073937(n)*A074193(n)/A074058(n)`
-/

namespace A074453.P1634942652487796160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073937 n * A074193 n : ℚ) / (A074058 n : ℚ)

end

end A074453.P1634942652487796160

/-! ## A074453.P11163873571015495945

`A073817(n)*A074193(n)/A074081(n)`
-/

namespace A074453.P11163873571015495945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073817 n * A074193 n : ℚ) / (A074081 n : ℚ)

end

end A074453.P11163873571015495945

/-!
# A074455: Consider the volume of unit sphere as a function of the dimension d; maximize this as a function of d (considered as a continuous variable); sequence gives decimal expansion of the best d.

The programs for A074455, there is no canonical definition to state claims against.
-/

/-! ## A074455.P13667236888788317487

`A074457(abs(1-n)+2)`
-/

namespace A074455.P13667236888788317487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074457 (|1 - (n : ℤ)| + 2).toNat

end

end A074455.P13667236888788317487

/-! ## A074455.P16731513771086581719

`A074457(n+1)-floor(acot(n)²)`
-/

namespace A074455.P16731513771086581719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074457 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋

end

end A074455.P16731513771086581719

/-! ## A074455.P5888883291769648956

`A074457(n+1)-A000038(n)`
-/

namespace A074455.P5888883291769648956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074457 (n + 1) - A000038 n

end

end A074455.P5888883291769648956

/-! ## A074455.P8542355121846926457

`and(A074457(n+1), A140529(n))`
-/

namespace A074455.P8542355121846926457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A074457 (n + 1)) (A140529 n)

end

end A074455.P8542355121846926457

/-! ## A074455.P3592915711175464720

`and(A074457(n+1), A206372(n))`
-/

namespace A074455.P3592915711175464720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A074457 (n + 1)) (A206372 n)

end

end A074455.P3592915711175464720

/-! ## A074455.P13128825944289111952

`A074457(n+1)-A130706(n+1)`
-/

namespace A074455.P13128825944289111952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074457 (n + 1) - A130706 (n + 1)

end

end A074455.P13128825944289111952

/-! ## A074455.P1574568724306310591

`A074457(n+1)-2*A000007(n)`
-/

namespace A074455.P1574568724306310591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074457 (n + 1) - 2 * A000007 n

end

end A074455.P1574568724306310591

/-! ## A074455.P13705439395016569393

`and(A074457(n+1), A381707(n+1))`
-/

namespace A074455.P13705439395016569393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A074457 (n + 1)) (A381707 (n + 1))

end

end A074455.P13705439395016569393

/-! ## A074455.P1898517532182541939

`xor(A000038(2*n), A074457(n+1))`
-/

namespace A074455.P1898517532182541939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000038 (2 * n)) (A074457 (n + 1))

end

end A074455.P1898517532182541939

/-! ## A074455.P4694786688949772598

`A185284(a(n-1))+A074457(n+1)` with `a(0)=5`
-/

namespace A074455.P4694786688949772598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A185284 (a (n - 1)).toNat + A074457 (n + 1)

end

end A074455.P4694786688949772598

/-! ## A074455.P7619136672841711628

`A016182(a(n-1))*A074457(n+1)` with `a(0)=5`
-/

namespace A074455.P7619136672841711628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A016182 (a (n - 1)).toNat * A074457 (n + 1)

end

end A074455.P7619136672841711628

/-! ## A074455.P4122236030861850221

`A326636(a(n-1))+A074457(n+1)` with `a(0)=5, a(1)=2`
-/

namespace A074455.P4122236030861850221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 2] fun n a =>
  A326636 (a (n - 1)).toNat + A074457 (n + 1)

end

end A074455.P4122236030861850221

/-! ## A074455.P7217735967590490513

`A074457(n+1)-floor(2/A000580(n+7))`
-/

namespace A074455.P7217735967590490513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074457 (n + 1) - ⌊2 / (A000580 (n + 7) : ℚ)⌋

end

end A074455.P7217735967590490513

/-! ## A074455.P2689635975711287163

`A074457(n+1)-floor(acot(n))*A000040(n+1)`
-/

namespace A074455.P2689635975711287163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074457 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋ * A000040 (n + 1)

end

end A074455.P2689635975711287163

/-! ## A074455.P6547873234425810843

`A074457(n+1)-A010106(A000120(n))`
-/

namespace A074455.P6547873234425810843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074457 (n + 1) - A010106 (A000120 n).toNat

end

end A074455.P6547873234425810843

/-! ## A074455.P139688136219227035

`A074457(n+1)-A002448(A014574(n+1))`
-/

namespace A074455.P139688136219227035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074457 (n + 1) - A002448 (A014574 (n + 1)).toNat

end

end A074455.P139688136219227035

/-! ## A074455.P1369796791219921924

`A074457(n+1)-A000122(A020639(n+1))`
-/

namespace A074455.P1369796791219921924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074457 (n + 1) - A000122 (A020639 (n + 1)).toNat

end

end A074455.P1369796791219921924

/-! ## A074455.P14226530557014118965

`A074457(n+1)-A000122(A000122(n)+n)`
-/

namespace A074455.P14226530557014118965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074457 (n + 1) - A000122 (A000122 n + (n : ℤ)).toNat

end

end A074455.P14226530557014118965

/-! ## A074455.P2894077142078913427

`A074457(n+1)-A005843(floor(2/A000040(n+1)))`
-/

namespace A074455.P2894077142078913427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074457 (n + 1) - A005843 ⌊2 / (A000040 (n + 1) : ℚ)⌋.toNat

end

end A074455.P2894077142078913427

/-!
# A074457: Consider surface area of unit sphere as a function of the dimension d; maximize this as a function of d (considered as a continuous variable); sequence gives decimal expansion of the best d.

The programs for A074457, there is no canonical definition to state claims against.
-/

/-! ## A074457.P16661208439619725699

`floor(A074455(n+1)+acot(n)²)`
-/

namespace A074457.P16661208439619725699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A074455 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ) ^ 2⌋

end

end A074457.P16661208439619725699

/-! ## A074457.P15264172874348223288

`A074455(n+1)+A000038(n)`
-/

namespace A074457.P15264172874348223288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074455 (n + 1) + A000038 n

end

end A074457.P15264172874348223288

/-! ## A074457.P14946967681181829994

`A130706(n+1)+A074455(n+1)`
-/

namespace A074457.P14946967681181829994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (n + 1) + A074455 (n + 1)

end

end A074457.P14946967681181829994

/-! ## A074457.P10412217998717077666

`A074455(n+1)+2*A000007(n)`
-/

namespace A074457.P10412217998717077666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074455 (n + 1) + 2 * A000007 n

end

end A074457.P10412217998717077666

/-! ## A074457.P12955318436701112253

`A074455(A055642(a(n-1))+n)` with `a(0)=7`
-/

namespace A074457.P12955318436701112253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A074455 (A055642 (a (n - 1)).toNat + (n : ℤ)).toNat

end

end A074457.P12955318436701112253

/-! ## A074457.P10479847952439263712

`or(A005582(C(n, n²)), A074455(n+1))`
-/

namespace A074457.P10479847952439263712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005582 (Nat.choose n (n ^ 2))) (A074455 (n + 1))

end

end A074457.P10479847952439263712

/-! ## A074457.P13911564611908989963

`A106458(2*n+1)+A074455(n+1)`
-/

namespace A074457.P13911564611908989963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106458 (2 * n + 1) + A074455 (n + 1)

end

end A074457.P13911564611908989963

/-! ## A074457.P15930721779081778867

`A074455(n+1)+2*A019590(n+2)`
-/

namespace A074457.P15930721779081778867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074455 (n + 1) + 2 * A019590 (n + 2)

end

end A074457.P15930721779081778867

/-! ## A074457.P14380149323916371555

`A074455(n+1)+and(2, A072478(n+4))`
-/

namespace A074457.P14380149323916371555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074455 (n + 1) + Int.land 2 (A072478 (n + 4))

end

end A074457.P14380149323916371555

/-! ## A074457.P15085024154703147664

`A074455(n+1)+A072478(floor(1/(n+1)))`
-/

namespace A074457.P15085024154703147664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074455 (n + 1) + A072478 ⌊1 / (n + 1 : ℚ)⌋.toNat

end

end A074457.P15085024154703147664

/-! ## A074457.P612214059724120924

`A074455(n+1)+A000122(A000603(n))`
-/

namespace A074457.P612214059724120924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074455 (n + 1) + A000122 (A000603 n).toNat

end

end A074457.P612214059724120924

/-! ## A074457.P8045145627814541233

`A074455(n+1)+A010106(A000120(n))`
-/

namespace A074457.P8045145627814541233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074455 (n + 1) + A010106 (A000120 n).toNat

end

end A074457.P8045145627814541233

/-! ## A074457.P15181482339525643095

`A074455(n+1)+A010673(A001316(n))`
-/

namespace A074457.P15181482339525643095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074455 (n + 1) + A010673 (A001316 n).toNat

end

end A074457.P15181482339525643095

/-! ## A074457.P14766337800754402446

`A074455(n+1)+A010673(A008458(n))`
-/

namespace A074457.P14766337800754402446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074455 (n + 1) + A010673 (A008458 n).toNat

end

end A074457.P14766337800754402446

/-! ## A074457.P12590700225202860776

`A074455(n+1)+A010673(A008574(n))`
-/

namespace A074457.P12590700225202860776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074455 (n + 1) + A010673 (A008574 n).toNat

end

end A074457.P12590700225202860776

/-! ## A074457.P1443058050074492675

`A074455(n+1)+A070277(A017545(n))`
-/

namespace A074457.P1443058050074492675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074455 (n + 1) + A070277 (A017545 n).toNat

end

end A074457.P1443058050074492675

/-! ## A074457.P150011459101407810

`A133988(A000124(n))+A074455(n+1)`
-/

namespace A074457.P150011459101407810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133988 (A000124 n).toNat + A074455 (n + 1)

end

end A074457.P150011459101407810

/-! ## A074457.P8112787811729607436

`A074455(n+1)+A000122(A005117(n+1))`
-/

namespace A074457.P8112787811729607436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074455 (n + 1) + A000122 (A005117 (n + 1)).toNat

end

end A074457.P8112787811729607436

/-! ## A074457.P14720563983784158155

`A074455(n+1)+A000122(A000122(n)+n)`
-/

namespace A074457.P14720563983784158155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074455 (n + 1) + A000122 (A000122 n + (n : ℤ)).toNat

end

end A074457.P14720563983784158155

/-! ## A074457.P13129823217331416844

`A074455(n+1)+A005843(floor(2/A000040(n+1)))`
-/

namespace A074457.P13129823217331416844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074455 (n + 1) + A005843 ⌊2 / (A000040 (n + 1) : ℚ)⌋.toNat

end

end A074457.P13129823217331416844

/-!
# A074458: Number of segments lit to display the number n on a 7-segment display (as in pocket calculators): variant where '6', '7' and '9' use 6, 4 resp. 5 segments.

The programs for A074458, there is no canonical definition to state claims against.
-/

/-! ## A074458.P9305931341510821885

`A010371(n)-∑{digits}[n, C(#, 9)]`
-/

namespace A074458.P9305931341510821885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010371 n - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.choose x 9).sum : ℕ) : ℤ)

end

end A074458.P9305931341510821885

/-! ## A074458.P10240857865965050150

`A316868(n)+A277116(n)`
-/

namespace A074458.P10240857865965050150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 n + A277116 n

end

end A074458.P10240857865965050150

/-! ## A074458.P12088329025957115644

`A010371(n)-A102683(n)`
-/

namespace A074458.P12088329025957115644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010371 n - A102683 n

end

end A074458.P12088329025957115644

/-! ## A074458.P14629517023680491006

`A010371(A107130(n)+A103181(n))`
-/

namespace A074458.P14629517023680491006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010371 (A107130 n + A103181 n).toNat

end

end A074458.P14629517023680491006

/-! ## A074458.P18102881770755470491

`A316864(A106747(n))+A063720(n)`
-/

namespace A074458.P18102881770755470491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A106747 n).toNat + A063720 n

end

end A074458.P18102881770755470491

/-! ## A074458.P11512604026345516336

`A277116(n)+A102683(A222253(n))`
-/

namespace A074458.P11512604026345516336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277116 n + A102683 (A222253 n).toNat

end

end A074458.P11512604026345516336

/-! ## A074458.P15852996915781703250

`A010371(n)-A102681(A004183(n))`
-/

namespace A074458.P15852996915781703250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010371 n - A102681 (A004183 n).toNat

end

end A074458.P15852996915781703250

/-! ## A074458.P1002290086708865893

`A010371(n)-A102671(A064770(n))`
-/

namespace A074458.P1002290086708865893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010371 n - A102671 (A064770 n).toNat

end

end A074458.P1002290086708865893

/-! ## A074458.P11777045506315602990

`A010371(n)-A102681(A107128(n))`
-/

namespace A074458.P11777045506315602990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010371 n - A102681 (A107128 n).toNat

end

end A074458.P11777045506315602990

/-! ## A074458.P10285285343929815368

`A010371(n)-A102681(A235049(n))`
-/

namespace A074458.P10285285343929815368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010371 n - A102681 (A235049 n).toNat

end

end A074458.P10285285343929815368

/-! ## A074458.P17283370661023803589

`A010371(n)-A316864(A222239(n))`
-/

namespace A074458.P17283370661023803589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010371 n - A316864 (A222239 n).toNat

end

end A074458.P17283370661023803589

/-! ## A074458.P17460497958659915412

`A010371(n)+A277116(n)-A006942(n)`
-/

namespace A074458.P17460497958659915412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010371 n + (A277116 n - A006942 n)

end

end A074458.P17460497958659915412

/-! ## A074458.P12504454329488422662

`A102679(n)+A277116(n)-A102681(n)`
-/

namespace A074458.P12504454329488422662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 n + (A277116 n - A102681 n)

end

end A074458.P12504454329488422662

/-! ## A074458.P14250134576800276337

`A277116(n)+A100910(A017341(n)+1)`
-/

namespace A074458.P14250134576800276337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277116 n + A100910 (A017341 n + 1).toNat

end

end A074458.P14250134576800276337

/-! ## A074458.P3234028095582860

`A010371(n)-A100910(A017353(n)+2)`
-/

namespace A074458.P3234028095582860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010371 n - A100910 (A017353 n + 2).toNat

end

end A074458.P3234028095582860

/-!
# A074460: Primes which are sandwiched between two numbers having the same unordered canonical form.

The programs for A074460, the canonical program `A074460.P5778782226648806911` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074460 has offset 1).

The definition of A074460 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1647 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074460.P5778782226648806911

`∩[A067889(n+1), A115103(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A074460

/-- `∩[A067889(n+1), A115103(n+1)]` -/
def P5778782226648806911.Spec : Prop :=
  ∀ n, (P5778782226648806911.a n : ℤ) = A074460 (n + 1)

theorem P5778782226648806911.correct : P5778782226648806911.Spec := by
  intro n
  simp only [A074460, Nat.add_sub_cancel]

end A074460

/-! ## A074460.P6834289644611545757

`∩[A067386(n+1), A080650(n+1)]`
-/

namespace A074460.P6834289644611545757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074460.P6834289644611545757

namespace A074460

/-- `∩[A067386(n+1), A080650(n+1)]` -/
def P6834289644611545757.Spec : Prop :=
  ∀ n, (P6834289644611545757.a n : ℤ) = A074460 (n + 1)

end A074460

/-! ## A074460.P8936670378382311913

`∩[A080650(n+1), A115103(n+1)]`
-/

namespace A074460.P8936670378382311913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080650 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074460.P8936670378382311913

namespace A074460

/-- `∩[A080650(n+1), A115103(n+1)]` -/
def P8936670378382311913.Spec : Prop :=
  ∀ n, (P8936670378382311913.a n : ℤ) = A074460 (n + 1)

end A074460

/-! ## A074460.P6134748108918536048

`∩[A067889(n+1), A115167(n+1)]`
-/

namespace A074460.P6134748108918536048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074460.P6134748108918536048

namespace A074460

/-- `∩[A067889(n+1), A115167(n+1)]` -/
def P6134748108918536048.Spec : Prop :=
  ∀ n, (P6134748108918536048.a n : ℤ) = A074460 (n + 1)

end A074460

/-! ## A074460.P9195384084066445764

`p?[A074997(n+1)]`
-/

namespace A074460.P9195384084066445764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074460.P9195384084066445764

namespace A074460

/-- `p?[A074997(n+1)]` -/
def P9195384084066445764.Spec : Prop :=
  ∀ n, P9195384084066445764.a n = A074460 (n + 1)

end A074460

/-! ## A074460.P13401352002342022129

`record[A020639(A074997(n+5))]`
-/

namespace A074460.P13401352002342022129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A074997 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074460.P13401352002342022129

namespace A074460

/-- `record[A020639(A074997(n+5))]` -/
def P13401352002342022129.Spec : Prop :=
  ∀ n, P13401352002342022129.a n = A074460 (n + 1)

end A074460

/-! ## A074460.P1890472982583140091

`∩[A000040(n+1), A074997(n+1)]`
-/

namespace A074460.P1890472982583140091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074460.P1890472982583140091

namespace A074460

/-- `∩[A000040(n+1), A074997(n+1)]` -/
def P1890472982583140091.Spec : Prop :=
  ∀ n, (P1890472982583140091.a n : ℤ) = A074460 (n + 1)

end A074460

/-! ## A074460.P2436056399807037271

`∩[A004139(n+1), A074997(n+1)]`
-/

namespace A074460.P2436056399807037271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074460.P2436056399807037271

namespace A074460

/-- `∩[A004139(n+1), A074997(n+1)]` -/
def P2436056399807037271.Spec : Prop :=
  ∀ n, (P2436056399807037271.a n : ℤ) = A074460 (n + 1)

end A074460

/-! ## A074460.P8615052779194215573

`∩[A006005(n+1), A074997(n+1)]`
-/

namespace A074460.P8615052779194215573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074460.P8615052779194215573

namespace A074460

/-- `∩[A006005(n+1), A074997(n+1)]` -/
def P8615052779194215573.Spec : Prop :=
  ∀ n, (P8615052779194215573.a n : ℤ) = A074460 (n + 1)

end A074460

/-! ## A074460.P3642285643719333165

`∩[A008578(n+1), A074997(n+1)]`
-/

namespace A074460.P3642285643719333165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074460.P3642285643719333165

namespace A074460

/-- `∩[A008578(n+1), A074997(n+1)]` -/
def P3642285643719333165.Spec : Prop :=
  ∀ n, (P3642285643719333165.a n : ℤ) = A074460 (n + 1)

end A074460

/-! ## A074460.P1469233331048568359

`∩[A033946(n+1), A074997(n+1)]`
-/

namespace A074460.P1469233331048568359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074460.P1469233331048568359

namespace A074460

/-- `∩[A033946(n+1), A074997(n+1)]` -/
def P1469233331048568359.Spec : Prop :=
  ∀ n, (P1469233331048568359.a n : ℤ) = A074460 (n + 1)

end A074460

/-! ## A074460.P1599684398834155531

`∩[A034849(n+1), A074997(n+1)]`
-/

namespace A074460.P1599684398834155531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074460.P1599684398834155531

namespace A074460

/-- `∩[A034849(n+1), A074997(n+1)]` -/
def P1599684398834155531.Spec : Prop :=
  ∀ n, (P1599684398834155531.a n : ℤ) = A074460 (n + 1)

end A074460

/-! ## A074460.P5081276358294090709

`∩[A038672(n+1), A074997(n+1)]`
-/

namespace A074460.P5081276358294090709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074460.P5081276358294090709

namespace A074460

/-- `∩[A038672(n+1), A074997(n+1)]` -/
def P5081276358294090709.Spec : Prop :=
  ∀ n, (P5081276358294090709.a n : ℤ) = A074460 (n + 1)

end A074460

/-! ## A074460.P5791535261640514385

`∩[A045319(n+1), A074997(n+1)]`
-/

namespace A074460.P5791535261640514385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074460.P5791535261640514385

namespace A074460

/-- `∩[A045319(n+1), A074997(n+1)]` -/
def P5791535261640514385.Spec : Prop :=
  ∀ n, (P5791535261640514385.a n : ℤ) = A074460 (n + 1)

end A074460

/-! ## A074460.P1363436747022070061

`∩[A045344(n+1), A074997(n+1)]`
-/

namespace A074460.P1363436747022070061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074460.P1363436747022070061

namespace A074460

/-- `∩[A045344(n+1), A074997(n+1)]` -/
def P1363436747022070061.Spec : Prop :=
  ∀ n, (P1363436747022070061.a n : ℤ) = A074460 (n + 1)

end A074460

/-! ## A074460.P13533967736982816908

`∩[A049092(n+1), A074997(n+1)]`
-/

namespace A074460.P13533967736982816908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074460.P13533967736982816908

namespace A074460

/-- `∩[A049092(n+1), A074997(n+1)]` -/
def P13533967736982816908.Spec : Prop :=
  ∀ n, (P13533967736982816908.a n : ℤ) = A074460 (n + 1)

end A074460

/-! ## A074460.P16857704767855160971

`∩[A049098(n+1), A074997(n+1)]`
-/

namespace A074460.P16857704767855160971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074460.P16857704767855160971

namespace A074460

/-- `∩[A049098(n+1), A074997(n+1)]` -/
def P16857704767855160971.Spec : Prop :=
  ∀ n, (P16857704767855160971.a n : ℤ) = A074460 (n + 1)

end A074460

/-! ## A074460.P14434246692288571876

`∩[A050150(n+1), A074997(n+1)]`
-/

namespace A074460.P14434246692288571876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074460.P14434246692288571876

namespace A074460

/-- `∩[A050150(n+1), A074997(n+1)]` -/
def P14434246692288571876.Spec : Prop :=
  ∀ n, (P14434246692288571876.a n : ℤ) = A074460 (n + 1)

end A074460

/-! ## A074460.P17826900405902367761

`∩[A058501(n+1), A074997(n+1)]`
-/

namespace A074460.P17826900405902367761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074460.P17826900405902367761

namespace A074460

/-- `∩[A058501(n+1), A074997(n+1)]` -/
def P17826900405902367761.Spec : Prop :=
  ∀ n, (P17826900405902367761.a n : ℤ) = A074460 (n + 1)

end A074460

/-! ## A074460.P15107291991959899149

`∩[A059456(n+1), A074997(n+1)]`
-/

namespace A074460.P15107291991959899149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074460.P15107291991959899149

namespace A074460

/-- `∩[A059456(n+1), A074997(n+1)]` -/
def P15107291991959899149.Spec : Prop :=
  ∀ n, (P15107291991959899149.a n : ℤ) = A074460 (n + 1)

end A074460

/-!
# A074461: Average digit (rounded down) in the decimal expansion of the n-th prime number.

The programs for A074461, the canonical program `A074461.P7953821107585836169` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074461 has offset 1).

The definition of A074461 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A004426, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A074461.P7953821107585836169

`A004426(A000040(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A074461

/-- `A004426(A000040(n+1))` -/
def P7953821107585836169.Spec : Prop :=
  ∀ n, P7953821107585836169.a n = A074461 (n + 1)

theorem P7953821107585836169.correct : P7953821107585836169.Spec := by
  intro n
  simp only [A074461, Nat.add_sub_cancel]

end A074461

/-! ## A074461.P14019545899977198988

`floor(A007605(n+1)/A097944(n+1))`
-/

namespace A074461.P14019545899977198988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007605 (n + 1) : ℚ) / (A097944 (n + 1) : ℚ)⌋

end

end A074461.P14019545899977198988

namespace A074461

/-- `floor(A007605(n+1)/A097944(n+1))` -/
def P14019545899977198988.Spec : Prop :=
  ∀ n, P14019545899977198988.a n = A074461 (n + 1)

end A074461

/-! ## A074461.P6180809306840439716

`A004426(p?[comp[n²]])`
-/

namespace A074461.P6180809306840439716
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A074461.P6180809306840439716

namespace A074461

/-- `A004426(p?[comp[n²]])` -/
def P6180809306840439716.Spec : Prop :=
  ∀ n, P6180809306840439716.a n = A074461 (n + 1)

end A074461

/-! ## A074461.P4845138809487393720

`A004426(Δ[A007504(n)])`
-/

namespace A074461.P4845138809487393720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 (f1 (n + 1) - f1 n).toNat

end

end A074461.P4845138809487393720

namespace A074461

/-- `A004426(Δ[A007504(n)])` -/
def P4845138809487393720.Spec : Prop :=
  ∀ n, P4845138809487393720.a n = A074461 (n + 1)

end A074461

/-! ## A074461.P13874251656270698472

`A004426(A004087(n+1))`
-/

namespace A074461.P13874251656270698472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 (A004087 (n + 1)).toNat

end

end A074461.P13874251656270698472

namespace A074461

/-- `A004426(A004087(n+1))` -/
def P13874251656270698472.Spec : Prop :=
  ∀ n, P13874251656270698472.a n = A074461 (n + 1)

end A074461

/-! ## A074461.P15326412292467214071

`A004426(A028906(n+1))`
-/

namespace A074461.P15326412292467214071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 (A028906 (n + 1)).toNat

end

end A074461.P15326412292467214071

namespace A074461

/-- `A004426(A028906(n+1))` -/
def P15326412292467214071.Spec : Prop :=
  ∀ n, P15326412292467214071.a n = A074461 (n + 1)

end A074461

/-! ## A074461.P4693246235965810153

`A004426(A008578(n+2))`
-/

namespace A074461.P4693246235965810153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 (A008578 (n + 2)).toNat

end

end A074461.P4693246235965810153

namespace A074461

/-- `A004426(A008578(n+2))` -/
def P4693246235965810153.Spec : Prop :=
  ∀ n, P4693246235965810153.a n = A074461 (n + 1)

end A074461

/-! ## A074461.P15150791664928920492

`A004426(A182986(n+2))`
-/

namespace A074461.P15150791664928920492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 (A182986 (n + 2)).toNat

end

end A074461.P15150791664928920492

namespace A074461

/-- `A004426(A182986(n+2))` -/
def P15150791664928920492.Spec : Prop :=
  ∀ n, P15150791664928920492.a n = A074461 (n + 1)

end A074461

/-! ## A074461.P14254888744086096902

`A004426(record[A006530(n+2)])`
-/

namespace A074461.P14254888744086096902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A074461.P14254888744086096902

namespace A074461

/-- `A004426(record[A006530(n+2)])` -/
def P14254888744086096902.Spec : Prop :=
  ∀ n, P14254888744086096902.a n = A074461 (n + 1)

end A074461

/-! ## A074461.P15151395171712580803

`A004426(record[A014963(n+2)])`
-/

namespace A074461.P15151395171712580803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A074461.P15151395171712580803

namespace A074461

/-- `A004426(record[A014963(n+2)])` -/
def P15151395171712580803.Spec : Prop :=
  ∀ n, P15151395171712580803.a n = A074461 (n + 1)

end A074461

/-! ## A074461.P4980888873055199705

`A004426(record[A020639(n+2)])`
-/

namespace A074461.P4980888873055199705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A074461.P4980888873055199705

namespace A074461

/-- `A004426(record[A020639(n+2)])` -/
def P4980888873055199705.Spec : Prop :=
  ∀ n, P4980888873055199705.a n = A074461 (n + 1)

end A074461

/-! ## A074461.P13104757894319771584

`A004426(A008864(n+1)-1)`
-/

namespace A074461.P13104757894319771584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 (A008864 (n + 1) - 1).toNat

end

end A074461.P13104757894319771584

namespace A074461

/-- `A004426(A008864(n+1)-1)` -/
def P13104757894319771584.Spec : Prop :=
  ∀ n, P13104757894319771584.a n = A074461 (n + 1)

end A074461

/-! ## A074461.P844414371112721086

`A004426(A100484(n+1)/2)`
-/

namespace A074461.P844414371112721086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A074461.P844414371112721086

namespace A074461

/-- `A004426(A100484(n+1)/2)` -/
def P844414371112721086.Spec : Prop :=
  ∀ n, P844414371112721086.a n = A074461 (n + 1)

end A074461

/-! ## A074461.P6857706247075332079

`A004427(A028906(n+1)+1)-1`
-/

namespace A074461.P6857706247075332079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (A028906 (n + 1) + 1).toNat - 1

end

end A074461.P6857706247075332079

namespace A074461

/-- `A004427(A028906(n+1)+1)-1` -/
def P6857706247075332079.Spec : Prop :=
  ∀ n, P6857706247075332079.a n = A074461 (n + 1)

end A074461

/-! ## A074461.P17613401308726787131

`A004426(A101989(n+1))`
-/

namespace A074461.P17613401308726787131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 (A101989 (n + 1)).toNat

end

end A074461.P17613401308726787131

namespace A074461

/-- `A004426(A101989(n+1))` -/
def P17613401308726787131.Spec : Prop :=
  ∀ n, P17613401308726787131.a n = A074461 (n + 1)

end A074461

/-!
# A074462: Average digit (rounded up) in the decimal expansion of prime(n).

The programs for A074462, the canonical program `A074462.P4840725664766834667` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074462 has offset 1).

The definition of A074462 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007605, A097944, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A074462.P4840725664766834667

`ceil(A007605(n+1)/A097944(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A074462

/-- `ceil(A007605(n+1)/A097944(n+1))` -/
def P4840725664766834667.Spec : Prop :=
  ∀ n, P4840725664766834667.a n = A074462 (n + 1)

theorem P4840725664766834667.correct : P4840725664766834667.Spec := by
  intro n
  simp only [A074462, Nat.add_sub_cancel]

end A074462

/-! ## A074462.P12885278293496428490

`A004427(A000040(n+1))`
-/

namespace A074462.P12885278293496428490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (A000040 (n + 1)).toNat

end

end A074462.P12885278293496428490

namespace A074462

/-- `A004427(A000040(n+1))` -/
def P12885278293496428490.Spec : Prop :=
  ∀ n, P12885278293496428490.a n = A074462 (n + 1)

end A074462

/-! ## A074462.P11989951519125443287

`A004427(Δ[A007504(n)])`
-/

namespace A074462.P11989951519125443287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (f1 (n + 1) - f1 n).toNat

end

end A074462.P11989951519125443287

namespace A074462

/-- `A004427(Δ[A007504(n)])` -/
def P11989951519125443287.Spec : Prop :=
  ∀ n, P11989951519125443287.a n = A074462 (n + 1)

end A074462

/-! ## A074462.P3512736649245105864

`A004427(A008578(n+2))`
-/

namespace A074462.P3512736649245105864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (A008578 (n + 2)).toNat

end

end A074462.P3512736649245105864

namespace A074462

/-- `A004427(A008578(n+2))` -/
def P3512736649245105864.Spec : Prop :=
  ∀ n, P3512736649245105864.a n = A074462 (n + 1)

end A074462

/-! ## A074462.P2051241117494075928

`A004427(A182986(n+2))`
-/

namespace A074462.P2051241117494075928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (A182986 (n + 2)).toNat

end

end A074462.P2051241117494075928

namespace A074462

/-- `A004427(A182986(n+2))` -/
def P2051241117494075928.Spec : Prop :=
  ∀ n, P2051241117494075928.a n = A074462 (n + 1)

end A074462

/-! ## A074462.P10438034538424753493

`A004427(record[A006530(n+2)])`
-/

namespace A074462.P10438034538424753493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A074462.P10438034538424753493

namespace A074462

/-- `A004427(record[A006530(n+2)])` -/
def P10438034538424753493.Spec : Prop :=
  ∀ n, P10438034538424753493.a n = A074462 (n + 1)

end A074462

/-! ## A074462.P7586152505649824976

`A004427(record[A020639(n+2)])`
-/

namespace A074462.P7586152505649824976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A074462.P7586152505649824976

namespace A074462

/-- `A004427(record[A020639(n+2)])` -/
def P7586152505649824976.Spec : Prop :=
  ∀ n, P7586152505649824976.a n = A074462 (n + 1)

end A074462

/-! ## A074462.P5761397445976193308

`A004427(A008864(n+1)-1)`
-/

namespace A074462.P5761397445976193308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (A008864 (n + 1) - 1).toNat

end

end A074462.P5761397445976193308

namespace A074462

/-- `A004427(A008864(n+1)-1)` -/
def P5761397445976193308.Spec : Prop :=
  ∀ n, P5761397445976193308.a n = A074462 (n + 1)

end A074462

/-! ## A074462.P1816169773053764369

`A004427(A100484(n+1)/2)`
-/

namespace A074462.P1816169773053764369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A074462.P1816169773053764369

namespace A074462

/-- `A004427(A100484(n+1)/2)` -/
def P1816169773053764369.Spec : Prop :=
  ∀ n, P1816169773053764369.a n = A074462 (n + 1)

end A074462

/-! ## A074462.P1777705142920151098

`A004427(A014692(n+1)+n)`
-/

namespace A074462.P1777705142920151098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (A014692 (n + 1) + (n : ℤ)).toNat

end

end A074462.P1777705142920151098

namespace A074462

/-- `A004427(A014692(n+1)+n)` -/
def P1777705142920151098.Spec : Prop :=
  ∀ n, P1777705142920151098.a n = A074462 (n + 1)

end A074462

/-! ## A074462.P16545802871455128577

`A004427(A007504(n+1)-A007504(n))`
-/

namespace A074462.P16545802871455128577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (A007504 (n + 1) - A007504 n).toNat

end

end A074462.P16545802871455128577

namespace A074462

/-- `A004427(A007504(n+1)-A007504(n))` -/
def P16545802871455128577.Spec : Prop :=
  ∀ n, P16545802871455128577.a n = A074462 (n + 1)

end A074462

/-! ## A074462.P9801150150620896641

`A004427(A068395(n+1)+A007605(n+1))`
-/

namespace A074462.P9801150150620896641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (A068395 (n + 1) + A007605 (n + 1)).toNat

end

end A074462.P9801150150620896641

namespace A074462

/-- `A004427(A068395(n+1)+A007605(n+1))` -/
def P9801150150620896641.Spec : Prop :=
  ∀ n, P9801150150620896641.a n = A074462 (n + 1)

end A074462

/-! ## A074462.P9995671859941308712

`A004427(eq[1, A349141(n+1)]+1)`
-/

namespace A074462.P9995671859941308712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A074462.P9995671859941308712

namespace A074462

/-- `A004427(eq[1, A349141(n+1)]+1)` -/
def P9995671859941308712.Spec : Prop :=
  ∀ n, P9995671859941308712.a n = A074462 (n + 1)

end A074462

/-! ## A074462.P2806556004336044353

`A004427(record[A051698(n)])`
-/

namespace A074462.P2806556004336044353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A074462.P2806556004336044353

namespace A074462

/-- `A004427(record[A051698(n)])` -/
def P2806556004336044353.Spec : Prop :=
  ∀ n, P2806556004336044353.a n = A074462 (n + 1)

end A074462

/-! ## A074462.P1060829936937697255

`A004427(A004087(n+1))`
-/

namespace A074462.P1060829936937697255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (A004087 (n + 1)).toNat

end

end A074462.P1060829936937697255

namespace A074462

/-- `A004427(A004087(n+1))` -/
def P1060829936937697255.Spec : Prop :=
  ∀ n, P1060829936937697255.a n = A074462 (n + 1)

end A074462

/-! ## A074462.P16282618957368231067

`A004427(A028906(n+1))`
-/

namespace A074462.P16282618957368231067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (A028906 (n + 1)).toNat

end

end A074462.P16282618957368231067

namespace A074462

/-- `A004427(A028906(n+1))` -/
def P16282618957368231067.Spec : Prop :=
  ∀ n, P16282618957368231067.a n = A074462 (n + 1)

end A074462

/-! ## A074462.P17720211281005817943

`A004427(eq[0, A007920(n)])`
-/

namespace A074462.P17720211281005817943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A074462.P17720211281005817943

namespace A074462

/-- `A004427(eq[0, A007920(n)])` -/
def P17720211281005817943.Spec : Prop :=
  ∀ n, P17720211281005817943.a n = A074462 (n + 1)

end A074462

/-! ## A074462.P5188294875670355851

`A004427(eq[1, A003415(n)])`
-/

namespace A074462.P5188294875670355851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A074462.P5188294875670355851

namespace A074462

/-- `A004427(eq[1, A003415(n)])` -/
def P5188294875670355851.Spec : Prop :=
  ∀ n, P5188294875670355851.a n = A074462 (n + 1)

end A074462

/-! ## A074462.P3499199499634590119

`A004427(record[A014963(n+2)])`
-/

namespace A074462.P3499199499634590119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A074462.P3499199499634590119

namespace A074462

/-- `A004427(record[A014963(n+2)])` -/
def P3499199499634590119.Spec : Prop :=
  ∀ n, P3499199499634590119.a n = A074462 (n + 1)

end A074462

/-! ## A074462.P15776456976929436211

`A004426(A000040(n+1)-1)+1`
-/

namespace A074462.P15776456976929436211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 (A000040 (n + 1) - 1).toNat + 1

end

end A074462.P15776456976929436211

namespace A074462

/-- `A004426(A000040(n+1)-1)+1` -/
def P15776456976929436211.Spec : Prop :=
  ∀ n, P15776456976929436211.a n = A074462 (n + 1)

end A074462

/-!
# A074463: Average digit (rounded up) in the decimal expansion of a prime number p, where 2^p-1 is a Mersenne prime.

The programs for A074463, there is no canonical definition to state claims against.
-/

/-! ## A074463.P294990476672272669

`A004427(A000043(n+1))`
-/

namespace A074463.P294990476672272669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (A000043 (n + 1)).toNat

end

end A074463.P294990476672272669

/-! ## A074463.P16570337910022886541

`A074462(A016027(n+1))`
-/

namespace A074463.P16570337910022886541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074462 (A016027 (n + 1)).toNat

end

end A074463.P16570337910022886541

/-! ## A074463.P11723911549638071660

`A004427(p?[A072226(n+1)]%A113338(n+1))`
-/

namespace A074463.P11723911549638071660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A113338 (n + 1))).toNat

end

end A074463.P11723911549638071660

/-! ## A074463.P5854975936814714209

`A004427((A090748(n+1)+1)%A113338(n+1))`
-/

namespace A074463.P5854975936814714209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (Int.tmod (A090748 (n + 1) + 1) (A113338 (n + 1))).toNat

end

end A074463.P5854975936814714209

/-! ## A074463.P11583321268035785208

`A004427((A050475(n+1)-1)%A113338(n+1))`
-/

namespace A074463.P11583321268035785208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (Int.tmod (A050475 (n + 1) - 1) (A113338 (n + 1))).toNat

end

end A074463.P11583321268035785208

/-!
# A074464: Average digit (rounded down) in the decimal expansion of a prime number p, where 2^p-1 is a Mersenne prime.

The programs for A074464, there is no canonical definition to state claims against.
-/

/-! ## A074464.P9084063113239308634

`A004426(A000043(n+1))`
-/

namespace A074464.P9084063113239308634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 (A000043 (n + 1)).toNat

end

end A074464.P9084063113239308634

/-! ## A074464.P7791781144018238300

`A074461(A016027(n+1))`
-/

namespace A074464.P7791781144018238300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074461 (A016027 (n + 1)).toNat

end

end A074464.P7791781144018238300

/-! ## A074464.P10388564267960711081

`A004426(p?[A072226(n+1)])`
-/

namespace A074464.P10388564267960711081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A074464.P10388564267960711081

/-! ## A074464.P3171138272043048108

`A004426(p?[A161508(n+1)])`
-/

namespace A074464.P3171138272043048108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A074464.P3171138272043048108

/-! ## A074464.P11732262318410258363

`A004426(p?[A270427(n+1)])`
-/

namespace A074464.P11732262318410258363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A074464.P11732262318410258363

/-!
# A074465: a(n) = gcd(n^2, sigma(n^2), phi(n^2)).

The programs for A074465, the canonical program `A074465.P13764796853206627509` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074465 has offset 1).

The definition of A074465 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074389, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A074465.P13764796853206627509

`A074389((n+1)²)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A074465

/-- `A074389((n+1)²)` -/
def P13764796853206627509.Spec : Prop :=
  ∀ n, P13764796853206627509.a n = A074465 (n + 1)

theorem P13764796853206627509.correct : P13764796853206627509.Spec := by
  intro n
  simp only [A074465, Nat.add_sub_cancel]

end A074465

/-! ## A074465.P9428048837917334636

`A153671(gcd(A004151(n+1), A065764(n+1)))`
-/

namespace A074465.P9428048837917334636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153671 (Int.gcd (A004151 (n + 1)) (A065764 (n + 1)))

end

end A074465.P9428048837917334636

namespace A074465

/-- `A153671(gcd(A004151(n+1), A065764(n+1)))` -/
def P9428048837917334636.Spec : Prop :=
  ∀ n, P9428048837917334636.a n = A074465 (n + 1)

end A074465

/-! ## A074465.P14240291434653878328

`gcd(∏{p}[n+1, #], A296955((n+1)²))`
-/

namespace A074465.P14240291434653878328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) (A296955 ((n + 1) ^ 2))

end

end A074465.P14240291434653878328

namespace A074465

/-- `gcd(∏{p}[n+1, #], A296955((n+1)²))` -/
def P14240291434653878328.Spec : Prop :=
  ∀ n, (P14240291434653878328.a n : ℤ) = A074465 (n + 1)

end A074465

/-! ## A074465.P4741307987385888317

`gcd(A051709(A181440(n+1)²), A181440(n+1))`
-/

namespace A074465.P4741307987385888317
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051709 (A181440 (n + 1) ^ 2).toNat) (A181440 (n + 1))

end

end A074465.P4741307987385888317

namespace A074465

/-- `gcd(A051709(A181440(n+1)²), A181440(n+1))` -/
def P4741307987385888317.Spec : Prop :=
  ∀ n, (P4741307987385888317.a n : ℤ) = A074465 (n + 1)

end A074465

/-! ## A074465.P5037397681610937787

`gcd(A060401(n+1), A377879(n+1))`
-/

namespace A074465.P5037397681610937787
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060401 (n + 1)) (A377879 (n + 1))

end

end A074465.P5037397681610937787

namespace A074465

/-- `gcd(A060401(n+1), A377879(n+1))` -/
def P5037397681610937787.Spec : Prop :=
  ∀ n, (P5037397681610937787.a n : ℤ) = A074465 (n + 1)

end A074465

/-! ## A074465.P6185733211411154710

`gcd(A000265(n+1), A000265(A065764(n+1)))`
-/

namespace A074465.P6185733211411154710
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000265 (n + 1)) (A000265 (A065764 (n + 1)).toNat)

end

end A074465.P6185733211411154710

namespace A074465

/-- `gcd(A000265(n+1), A000265(A065764(n+1)))` -/
def P6185733211411154710.Spec : Prop :=
  ∀ n, (P6185733211411154710.a n : ℤ) = A074465 (n + 1)

end A074465

/-! ## A074465.P2507364711524910912

`gcd(n+1, A326144((n+1)²))`
-/

namespace A074465.P2507364711524910912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A326144 ((n + 1) ^ 2))

end

end A074465.P2507364711524910912

namespace A074465

/-- `gcd(n+1, A326144((n+1)²))` -/
def P2507364711524910912.Spec : Prop :=
  ∀ n, (P2507364711524910912.a n : ℤ) = A074465 (n + 1)

end A074465

/-! ## A074465.P5826283882206171013

`gcd(A050985(n+1), A326187(A050985(n+1)²))`
-/

namespace A074465.P5826283882206171013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050985 (n + 1)) (A326187 (A050985 (n + 1) ^ 2).toNat)

end

end A074465.P5826283882206171013

namespace A074465

/-- `gcd(A050985(n+1), A326187(A050985(n+1)²))` -/
def P5826283882206171013.Spec : Prop :=
  ∀ n, (P5826283882206171013.a n : ℤ) = A074465 (n + 1)

end A074465

/-! ## A074465.P1559038185061862456

`A007947(A009194((n+1)²))`
-/

namespace A074465.P1559038185061862456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A009194 ((n + 1) ^ 2)).toNat

end

end A074465.P1559038185061862456

namespace A074465

/-- `A007947(A009194((n+1)²))` -/
def P1559038185061862456.Spec : Prop :=
  ∀ n, P1559038185061862456.a n = A074465 (n + 1)

end A074465

/-! ## A074465.P7188700295420629787

`A038388(A009194(∑[A005408(n)]))`
-/

namespace A074465.P7188700295420629787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038388 (A009194 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A074465.P7188700295420629787

namespace A074465

/-- `A038388(A009194(∑[A005408(n)]))` -/
def P7188700295420629787.Spec : Prop :=
  ∀ n, P7188700295420629787.a n = A074465 (n + 1)

end A074465

/-! ## A074465.P17692428026133245698

`A007947(A007947(A009194((n+1)*(n+1))))`
-/

namespace A074465.P17692428026133245698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A007947 (A009194 ((n + 1) * (n + 1))).toNat).toNat

end

end A074465.P17692428026133245698

namespace A074465

/-- `A007947(A007947(A009194((n+1)*(n+1))))` -/
def P17692428026133245698.Spec : Prop :=
  ∀ n, P17692428026133245698.a n = A074465 (n + 1)

end A074465

/-!
# A074466: a(n) = gcd(n^3, sigma(n^3), phi(n^3)).

The programs for A074466, the canonical program `A074466.P10130737045183487036` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074466 has offset 1).

The definition of A074466 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074389, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A074466.P10130737045183487036

`A074389((n+1)^3)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A074466

/-- `A074389((n+1)^3)` -/
def P10130737045183487036.Spec : Prop :=
  ∀ n, P10130737045183487036.a n = A074466 (n + 1)

theorem P10130737045183487036.correct : P10130737045183487036.Spec := by
  intro n
  simp only [A074466, Nat.add_sub_cancel]

end A074466

/-! ## A074466.P8281466185940969662

`gcd(A000027(A175926(n+1)), A066023(n+1))`
-/

namespace A074466.P8281466185940969662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (A175926 (n + 1)).toNat) (A066023 (n + 1))

end

end A074466.P8281466185940969662

namespace A074466

/-- `gcd(A000027(A175926(n+1)), A066023(n+1))` -/
def P8281466185940969662.Spec : Prop :=
  ∀ n, (P8281466185940969662.a n : ℤ) = A074466 (n + 1)

end A074466

/-! ## A074466.P8210630444006144669

`gcd((n+1)^3, A000203((n+1)^3))`
-/

namespace A074466.P8210630444006144669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1) ^ 3 : ℤ) (A000203 ((n + 1) ^ 3))

end

end A074466.P8210630444006144669

namespace A074466

/-- `gcd((n+1)^3, A000203((n+1)^3))` -/
def P8210630444006144669.Spec : Prop :=
  ∀ n, (P8210630444006144669.a n : ℤ) = A074466 (n + 1)

end A074466

/-! ## A074466.P4146937185149820363

`gcd(A000203((n+1)^3), Δ[A000537(n)])`
-/

namespace A074466.P4146937185149820363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 ((n + 1) ^ 3)) (f1 (n + 1) - f1 n)

end

end A074466.P4146937185149820363

namespace A074466

/-- `gcd(A000203((n+1)^3), Δ[A000537(n)])` -/
def P4146937185149820363.Spec : Prop :=
  ∀ n, (P4146937185149820363.a n : ℤ) = A074466 (n + 1)

end A074466

/-! ## A074466.P6246116393291088525

`gcd(A000203(A000578(n+1)), A000578(n+1))`
-/

namespace A074466.P6246116393291088525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (A000578 (n + 1)).toNat) (A000578 (n + 1))

end

end A074466.P6246116393291088525

namespace A074466

/-- `gcd(A000203(A000578(n+1)), A000578(n+1))` -/
def P6246116393291088525.Spec : Prop :=
  ∀ n, (P6246116393291088525.a n : ℤ) = A074466 (n + 1)

end A074466

/-!
# A074467: Least k such that Sum_{i=1..k} 1/phi(i) >= n.

The programs for A074467, there is no canonical definition to state claims against.
-/

/-! ## A074467.P10645942490196202756

`A164415(n)-A003056(A222807(2*n+1))`
-/

namespace A074467.P10645942490196202756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164415 n - A003056 (A222807 (2 * n + 1)).toNat

end

end A074467.P10645942490196202756

/-! ## A074467.P17145938122142898986

`A261104(∑[A127985(n+1)])`
-/

namespace A074467.P17145938122142898986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A074467.P17145938122142898986

/-! ## A074467.P14319420785547442591

`A261104(∑[∑[A127984(n+1)]])`
-/

namespace A074467.P14319420785547442591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127984 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A074467.P14319420785547442591

/-! ## A074467.P12621343714063469232

`A276571(A077846(n))`
-/

namespace A074467.P12621343714063469232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276571 (A077846 n).toNat

end

end A074467.P12621343714063469232

/-! ## A074467.P16407783805532649404

`A225687(∑[A084787(n)])`
-/

namespace A074467.P16407783805532649404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A074467.P16407783805532649404

/-!
# A074468: Least number m such that the Sigma-Harmonic sequence Sum_{k=1..m} 1/sigma(k) >= n.

The programs for A074468, there is no canonical definition to state claims against.
-/

/-! ## A074468.P1372123146552514277

`∑[A217438(A056914(n))]`
-/

namespace A074468.P1372123146552514277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217438 (A056914 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074468.P1372123146552514277

/-!
# A074470: Least m such that Phi-Composite-Harmonic series Sum_{k=1..m} 1/A000010(A002808(k)) >= n.

The programs for A074470, there is no canonical definition to state claims against.
-/

/-! ## A074470.P6186188761752279547

`A113901(n+1)+∑[A113862(n+2)]`
-/

namespace A074470.P6186188761752279547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113862 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113901 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074470.P6186188761752279547

/-! ## A074470.P12926523666334798130

`A095274(A005448(n+1))+A065845(n+1)`
-/

namespace A074470.P12926523666334798130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095274 (A005448 (n + 1)).toNat + A065845 (n + 1)

end

end A074470.P12926523666334798130

/-! ## A074470.P15691705062736942614

`A241819(2*n+1)+A217038(A300301(3*n+4))`
-/

namespace A074470.P15691705062736942614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241819 (2 * n + 1) + A217038 (A300301 (3 * n + 4)).toNat

end

end A074470.P15691705062736942614

/-!
# A074471: Sum of 2nd, 4th, 6th, 8th and 10th powers of divisors are divisible by sum of divisors.

The programs for A074471, there is no canonical definition to state claims against.
-/

/-! ## A074471.P3095122309950835267

`A138768(∑[A138752(3*n+5)])²`
-/

namespace A074471.P3095122309950835267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138752 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138768 (∑ j ∈ Finset.range (n + 1), f1 j).toNat ^ 2

end

end A074471.P3095122309950835267

/-!
# A074472: Length of iteration sequence of Collatz-function (A006370) when initial value is 3^n (A000244) and final cycle is followed once.

The programs for A074472, there is no canonical definition to state claims against.
-/

/-! ## A074472.P7292482925014547199

`A070976(n)+1`
-/

namespace A074472.P7292482925014547199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070976 n + 1

end

end A074472.P7292482925014547199

/-! ## A074472.P4907826771241218227

`A321883(A212653(n+1))`
-/

namespace A074472.P4907826771241218227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321883 (A212653 (n + 1)).toNat

end

end A074472.P4907826771241218227

/-! ## A074472.P1264658793223351702

`A008619(2*A070976(n))`
-/

namespace A074472.P1264658793223351702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A070976 n).toNat

end

end A074472.P1264658793223351702

/-! ## A074472.P13458544418760228110

`A000051(n)-(A000079(n)-A070976(n))`
-/

namespace A074472.P13458544418760228110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A000079 n - A070976 n)

end

end A074472.P13458544418760228110

/-! ## A074472.P3592536564006983990

`A000079(n)-(A000225(n)-A070976(n))`
-/

namespace A074472.P3592536564006983990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A000225 n - A070976 n)

end

end A074472.P3592536564006983990

/-! ## A074472.P1792295046191737999

`A000225(n)-(A000918(n)-A070976(n))`
-/

namespace A074472.P1792295046191737999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - (A000918 n - A070976 n)

end

end A074472.P1792295046191737999

/-!
# A074473: Dropping time for the 3x+1 problem: for n >= 2, number of iteration that first becomes smaller than the initial value if Collatz-function (A006370) is iterated starting at n; a(1)=1 by convention.

The programs for A074473, there is no canonical definition to state claims against.
-/

/-! ## A074473.P14228921493718266741

`A102419(n+1)+1`
-/

namespace A074473.P14228921493718266741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102419 (n + 1) + 1

end

end A074473.P14228921493718266741

/-! ## A074473.P3059905163009983700

`A189407(A126241(n+1)+1)`
-/

namespace A074473.P3059905163009983700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189407 (A126241 (n + 1) + 1).toNat

end

end A074473.P3059905163009983700

/-! ## A074473.P1721810280822386441

`A060445(n*ratio[gcd(2, n)])+(-1)^n`
-/

namespace A074473.P1721810280822386441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060445 (SequenceMachineLib.roundAway ((n : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ)))).toNat + (-1) ^ n

end

end A074473.P1721810280822386441

/-! ## A074473.P18295541552662409511

`A060445(A006370(n))+A033999(n)`
-/

namespace A074473.P18295541552662409511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060445 (A006370 n).toNat + A033999 n

end

end A074473.P18295541552662409511

/-! ## A074473.P6542693463991558971

`A060445(A006370(n))+A010892(A008585(n))`
-/

namespace A074473.P6542693463991558971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060445 (A006370 n).toNat + A010892 (A008585 n).toNat

end

end A074473.P6542693463991558971

/-!
# A074474: Number of iteration that first becomes smaller than the initial value if Collatz-function (A006370) is iterated, starting with numbers of form 4n+3.

The programs for A074474, there is no canonical definition to state claims against.
-/

/-! ## A074474.P3712950590244712494

`A074473(4*(n+1)-1)`
-/

namespace A074474.P3712950590244712494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074473 (4 * (n + 1) - 1)

end

end A074474.P3712950590244712494

/-! ## A074474.P8127704497698140829

`A060445(Δ[n²])+1`
-/

namespace A074474.P8127704497698140829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060445 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A074474.P8127704497698140829

/-! ## A074474.P8253506649413253684

`A065475(A060445(2*n+1))`
-/

namespace A074474.P8253506649413253684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A060445 (2 * n + 1)).toNat

end

end A074474.P8253506649413253684

/-! ## A074474.P736479603430956510

`A023443(A060445(2*n+1)+2)`
-/

namespace A074474.P736479603430956510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A060445 (2 * n + 1) + 2).toNat

end

end A074474.P736479603430956510

/-! ## A074474.P7464934081512145517

`A233583(A060445(2*n+1)+2)`
-/

namespace A074474.P7464934081512145517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A060445 (2 * n + 1) + 2).toNat

end

end A074474.P7464934081512145517

/-! ## A074474.P16157175231344797220

`A102419(2*(n+1))+A060445(2*n+1)`
-/

namespace A074474.P16157175231344797220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102419 (2 * (n + 1)) + A060445 (2 * n + 1)

end

end A074474.P16157175231344797220

/-! ## A074474.P11585495009157240094

`A126241(2*(n+1))+A060445(2*n+1)`
-/

namespace A074474.P11585495009157240094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126241 (2 * (n + 1)) + A060445 (2 * n + 1)

end

end A074474.P11585495009157240094

/-! ## A074474.P17643940303646083503

`A290101(2*(n+1))+A060445(2*n+1)`
-/

namespace A074474.P17643940303646083503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290101 (2 * (n + 1)) + A060445 (2 * n + 1)

end

end A074474.P17643940303646083503

/-! ## A074474.P13611847896277068909

`A318489(2*(n+1))+A060445(2*n+1)`
-/

namespace A074474.P13611847896277068909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318489 (2 * (n + 1)) + A060445 (2 * n + 1)

end

end A074474.P13611847896277068909

/-! ## A074474.P114933109067288019

`A102419(record[xor(3, n)])+1`
-/

namespace A074474.P114933109067288019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102419 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) + 1

end

end A074474.P114933109067288019

/-! ## A074474.P7383718150810007236

`A102419(4*n+3)+1`
-/

namespace A074474.P7383718150810007236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102419 (4 * n + 3) + 1

end

end A074474.P7383718150810007236

/-! ## A074474.P7660902688642475164

`A065475(A102419(record[xor(3, n)]))`
-/

namespace A074474.P7660902688642475164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A102419 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A074474.P7660902688642475164

/-!
# A074475: a(n) = Sum_{j=0..floor(n/2)} T(2*j + q), where T(n) are generalized tribonacci numbers (A001644) and q = n - 2*floor(n/2).

The programs for A074475, the canonical program `A074475.P1344501239602031404` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074475 has offset 0).

The definition of A074475 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074475.P1344501239602031404

`2*a(n-2)+2*a(n-3)+a(n-4)` with `a(0)=3, a(1)=1, a(2)=6, a(3)=8`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074475

/-- `2*a(n-2)+2*a(n-3)+a(n-4)` -/
def P1344501239602031404.Spec : Prop :=
  ∀ n, (P1344501239602031404.a n : ℤ) = A074475 n

theorem P1344501239602031404.correct : P1344501239602031404.Spec := by
  intro n
  simp only [A074475]

end A074475

/-! ## A074475.P4780878911681151823

`ogf((3+x)/(1-2x^2-2x^3-x^4))`
-/

namespace A074475.P4780878911681151823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1] [1, 0, -2, -2, -1] n

end

end A074475.P4780878911681151823

namespace A074475

/-- `ogf((3+x)/(1-2x^2-2x^3-x^4))` -/
def P4780878911681151823.Spec : Prop :=
  ∀ n, P4780878911681151823.a n = A074475 n

end A074475

/-! ## A074475.P3532616308350769799

`A001644(n)+a(n-2)` with `a(0)=3, a(1)=1`
-/

namespace A074475.P3532616308350769799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n a =>
  A001644 n + a (n - 2)

end

end A074475.P3532616308350769799

namespace A074475

/-- `A001644(n)+a(n-2)` -/
def P3532616308350769799.Spec : Prop :=
  ∀ n, P3532616308350769799.a n = A074475 n

end A074475

/-! ## A074475.P14141933511140002290

`A214727(n+1)+(-1)^n`
-/

namespace A074475.P14141933511140002290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 (n + 1) + (-1) ^ n

end

end A074475.P14141933511140002290

namespace A074475

/-- `A214727(n+1)+(-1)^n` -/
def P14141933511140002290.Spec : Prop :=
  ∀ n, P14141933511140002290.a n = A074475 n

end A074475

/-! ## A074475.P6046344729360248071

`A214727(n+1)-A040451(2*(n+2))%3+1`
-/

namespace A074475.P6046344729360248071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 (n + 1) - Int.tmod (A040451 (2 * (n + 2))) 3 + 1

end

end A074475.P6046344729360248071

namespace A074475

/-- `A214727(n+1)-A040451(2*(n+2))%3+1` -/
def P6046344729360248071.Spec : Prop :=
  ∀ n, P6046344729360248071.a n = A074475 n

end A074475

/-! ## A074475.P3960790839376099622

`A074678(n+1)-(A228826(2*n+1)+A228826(n+1))`
-/

namespace A074475.P3960790839376099622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074678 (n + 1) - (A228826 (2 * n + 1) + A228826 (n + 1))

end

end A074475.P3960790839376099622

namespace A074475

/-- `A074678(n+1)-(A228826(2*n+1)+A228826(n+1))` -/
def P3960790839376099622.Spec : Prop :=
  ∀ n, P3960790839376099622.a n = A074475 n

end A074475

/-! ## A074475.P6733803801474324768

`A228826(2*n+1)+A228826(2*n)+A214727(n+1)`
-/

namespace A074475.P6733803801474324768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228826 (2 * n + 1) + (A228826 (2 * n) + A214727 (n + 1))

end

end A074475.P6733803801474324768

namespace A074475

/-- `A228826(2*n+1)+A228826(2*n)+A214727(n+1)` -/
def P6733803801474324768.Spec : Prop :=
  ∀ n, P6733803801474324768.a n = A074475 n

end A074475

/-! ## A074475.P4410409910106159562

`A073728(n)-a(n-1)` with `a(0)=3`
-/

namespace A074475.P4410409910106159562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A073728 n - a (n - 1)

end

end A074475.P4410409910106159562

namespace A074475

/-- `A073728(n)-a(n-1)` -/
def P4410409910106159562.Spec : Prop :=
  ∀ n, P4410409910106159562.a n = A074475 n

end A074475

/-! ## A074475.P11093446067414345688

`abs(1-A078042(n+1))-A000073(n+1)`
-/

namespace A074475.P11093446067414345688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A078042 (n + 1)| - A000073 (n + 1)

end

end A074475.P11093446067414345688

namespace A074475

/-- `abs(1-A078042(n+1))-A000073(n+1)` -/
def P11093446067414345688.Spec : Prop :=
  ∀ n, P11093446067414345688.a n = A074475 n

end A074475

/-!
# A074476: Largest prime factor of 3^n + 1.

The programs for A074476, the canonical program `A074476.P1190046633127875077` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074476 has offset 0).

The definition of A074476 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A074476.P1190046633127875077

`A006530(A034472(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A074476

/-- `A006530(A034472(n))` -/
def P1190046633127875077.Spec : Prop :=
  ∀ n, P1190046633127875077.a n = A074476 n

theorem P1190046633127875077.correct : P1190046633127875077.Spec := by
  intro n
  simp only [A074476]

end A074476

/-! ## A074476.P11417536240728545209

`A240554(∑[n+3])+A000007(n)`
-/

namespace A074476.P11417536240728545209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (∑ j ∈ Finset.range (n + 1), f1 j) + A000007 n

end

end A074476.P11417536240728545209

namespace A074476

/-- `A240554(∑[n+3])+A000007(n)` -/
def P11417536240728545209.Spec : Prop :=
  ∀ n, P11417536240728545209.a n = A074476 n

end A074476

/-! ## A074476.P9549225808537993770

`A240554(A027379(n+1))+floor(acot(n))`
-/

namespace A074476.P9549225808537993770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (A027379 (n + 1)).toNat + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A074476.P9549225808537993770

namespace A074476

/-- `A240554(A027379(n+1))+floor(acot(n))` -/
def P9549225808537993770.Spec : Prop :=
  ∀ n, P9549225808537993770.a n = A074476 n

end A074476

/-! ## A074476.P8969472886508120280

`A240554(A027379(round(sqrt(n²+1))+1))`
-/

namespace A074476.P8969472886508120280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (A027379 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat).toNat

end

end A074476.P8969472886508120280

namespace A074476

/-- `A240554(A027379(round(sqrt(n²+1))+1))` -/
def P8969472886508120280.Spec : Prop :=
  ∀ n, P8969472886508120280.a n = A074476 n

end A074476

/-! ## A074476.P16000162711952916570

`A240554(A027379(n+1)+A000038(n))`
-/

namespace A074476.P16000162711952916570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (A027379 (n + 1) + A000038 n).toNat

end

end A074476.P16000162711952916570

namespace A074476

/-- `A240554(A027379(n+1)+A000038(n))` -/
def P16000162711952916570.Spec : Prop :=
  ∀ n, P16000162711952916570.a n = A074476 n

end A074476

/-! ## A074476.P10631786090582423740

`A240554(A089071(n+1)+A016813(n))`
-/

namespace A074476.P10631786090582423740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (A089071 (n + 1) + A016813 n).toNat

end

end A074476.P10631786090582423740

namespace A074476

/-- `A240554(A089071(n+1)+A016813(n))` -/
def P10631786090582423740.Spec : Prop :=
  ∀ n, P10631786090582423740.a n = A074476 n

end A074476

/-! ## A074476.P18007977309025015878

`A240554(A055999(n)+A178334(n)+2)`
-/

namespace A074476.P18007977309025015878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (A055999 n + (A178334 n + 2)).toNat

end

end A074476.P18007977309025015878

namespace A074476

/-- `A240554(A055999(n)+A178334(n)+2)` -/
def P18007977309025015878.Spec : Prop :=
  ∀ n, P18007977309025015878.a n = A074476 n

end A074476

/-! ## A074476.P14749402044319323883

`A240554(2-(A000007(n)-A052905(n)))`
-/

namespace A074476.P14749402044319323883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (2 - (A000007 n - A052905 n)).toNat

end

end A074476.P14749402044319323883

namespace A074476

/-- `A240554(2-(A000007(n)-A052905(n)))` -/
def P14749402044319323883.Spec : Prop :=
  ∀ n, P14749402044319323883.a n = A074476 n

end A074476

/-! ## A074476.P9540221267037065462

`A240554(A065475(n+1)+A034856(n+1))`
-/

namespace A074476.P9540221267037065462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (A065475 (n + 1) + A034856 (n + 1)).toNat

end

end A074476.P9540221267037065462

namespace A074476

/-- `A240554(A065475(n+1)+A034856(n+1))` -/
def P9540221267037065462.Spec : Prop :=
  ∀ n, P9540221267037065462.a n = A074476 n

end A074476

/-! ## A074476.P2946540698999678180

`A240554(A065475(n+1)+∑[A065475(n+1)])`
-/

namespace A074476.P2946540698999678180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (A065475 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A074476.P2946540698999678180

namespace A074476

/-- `A240554(A065475(n+1)+∑[A065475(n+1)])` -/
def P2946540698999678180.Spec : Prop :=
  ∀ n, P2946540698999678180.a n = A074476 n

end A074476

/-!
# A074477: Largest prime factor of 3^n - 1.

The programs for A074477, the canonical program `A074477.P8611732268246268122` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074477 has offset 1).

The definition of A074477 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A074477.P8611732268246268122

`A006530(3^(n+1)-1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A074477

/-- `A006530(3^(n+1)-1)` -/
def P8611732268246268122.Spec : Prop :=
  ∀ n, P8611732268246268122.a n = A074477 (n + 1)

theorem P8611732268246268122.correct : P8611732268246268122.Spec := by
  intro n
  simp only [A074477, Nat.add_sub_cancel]

end A074477

/-! ## A074477.P1226066184267055367

`A007918(A006530(∑[3^n]))`
-/

namespace A074477.P1226066184267055367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A006530 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A074477.P1226066184267055367

namespace A074477

/-- `A007918(A006530(∑[3^n]))` -/
def P1226066184267055367.Spec : Prop :=
  ∀ n, P1226066184267055367.a n = A074477 (n + 1)

end A074477

/-! ## A074477.P14909519668815429918

`A006530(∑[3^n])+A000007(n)`
-/

namespace A074477.P14909519668815429918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j) + A000007 n

end

end A074477.P14909519668815429918

namespace A074477

/-- `A006530(∑[3^n])+A000007(n)` -/
def P14909519668815429918.Spec : Prop :=
  ∀ n, P14909519668815429918.a n = A074477 (n + 1)

end A074477

/-! ## A074477.P14571604842793117601

`A058343(n)+A006530(∑[3^n])`
-/

namespace A074477.P14571604842793117601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058343 n + A006530 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074477.P14571604842793117601

namespace A074477

/-- `A058343(n)+A006530(∑[3^n])` -/
def P14571604842793117601.Spec : Prop :=
  ∀ n, P14571604842793117601.a n = A074477 (n + 1)

end A074477

/-! ## A074477.P17054348433909895354

`A006530(A003462(n+1))+floor(acot(n))`
-/

namespace A074477.P17054348433909895354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A003462 (n + 1)).toNat + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A074477.P17054348433909895354

namespace A074477

/-- `A006530(A003462(n+1))+floor(acot(n))` -/
def P17054348433909895354.Spec : Prop :=
  ∀ n, P17054348433909895354.a n = A074477 (n + 1)

end A074477

/-!
# A074478: Largest prime factor of 5^n + 1.

The programs for A074478, the canonical program `A074478.P4885902236053813004` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074478 has offset 0).

The definition of A074478 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A074478.P4885902236053813004

`A006530(A034474(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A074478

/-- `A006530(A034474(n))` -/
def P4885902236053813004.Spec : Prop :=
  ∀ n, P4885902236053813004.a n = A074478 n

theorem P4885902236053813004.correct : P4885902236053813004.Spec := by
  intro n
  simp only [A074478]

end A074478

/-! ## A074478.P2510454331280607877

`A240554(eq[4, A025581(n)])+A000007(n)`
-/

namespace A074478.P2510454331280607877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A000007 n

end

end A074478.P2510454331280607877

namespace A074478

/-- `A240554(eq[4, A025581(n)])+A000007(n)` -/
def P2510454331280607877.Spec : Prop :=
  ∀ n, P2510454331280607877.a n = A074478 n

end A074478

/-! ## A074478.P11255636066731571579

`A240554(eq[4, A025581(n)]-A000007(n))`
-/

namespace A074478.P11255636066731571579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A000007 n).toNat

end

end A074478.P11255636066731571579

namespace A074478

/-- `A240554(eq[4, A025581(n)]-A000007(n))` -/
def P11255636066731571579.Spec : Prop :=
  ∀ n, P11255636066731571579.a n = A074478 n

end A074478

/-! ## A074478.P11556620665915631736

`A240554(A055998(n+3)-2)+A000007(n)`
-/

namespace A074478.P11556620665915631736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (A055998 (n + 3) - 2).toNat + A000007 n

end

end A074478.P11556620665915631736

namespace A074478

/-- `A240554(A055998(n+3)-2)+A000007(n)` -/
def P11556620665915631736.Spec : Prop :=
  ∀ n, P11556620665915631736.a n = A074478 n

end A074478

/-! ## A074478.P9182693568407895075

`A240554(A055998(n+3)-2)+A088157(n)`
-/

namespace A074478.P9182693568407895075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (A055998 (n + 3) - 2).toNat + A088157 n

end

end A074478.P9182693568407895075

namespace A074478

/-- `A240554(A055998(n+3)-2)+A088157(n)` -/
def P9182693568407895075.Spec : Prop :=
  ∀ n, P9182693568407895075.a n = A074478 n

end A074478

/-! ## A074478.P1009346350142533559

`A240554(A323294(n+6)-5)+A008683((n+1)²)`
-/

namespace A074478.P1009346350142533559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (A323294 (n + 6) - 5).toNat + A008683 ((n + 1) ^ 2)

end

end A074478.P1009346350142533559

namespace A074478

/-- `A240554(A323294(n+6)-5)+A008683((n+1)²)` -/
def P1009346350142533559.Spec : Prop :=
  ∀ n, P1009346350142533559.a n = A074478 n

end A074478

/-!
# A074479: Largest prime factor of 5^n - 1.

The programs for A074479, the canonical program `A074479.P1372449578538919510` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074479 has offset 1).

The definition of A074479 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A074479.P1372449578538919510

`A006530(A024049(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A074479

/-- `A006530(A024049(n+1))` -/
def P1372449578538919510.Spec : Prop :=
  ∀ n, P1372449578538919510.a n = A074479 (n + 1)

theorem P1372449578538919510.correct : P1372449578538919510.Spec := by
  intro n
  simp only [A074479, Nat.add_sub_cancel]

end A074479

/-! ## A074479.P735013581910805789

`A342667(A376478(n+2))`
-/

namespace A074479.P735013581910805789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342667 (A376478 (n + 2)).toNat

end

end A074479.P735013581910805789

namespace A074479

/-- `A342667(A376478(n+2))` -/
def P735013581910805789.Spec : Prop :=
  ∀ n, P735013581910805789.a n = A074479 (n + 1)

end A074479

/-! ## A074479.P11045506685855214030

`A342667(A000244(n)+floor(1/(n+1)))`
-/

namespace A074479.P11045506685855214030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342667 (A000244 n + ⌊1 / (n + 1 : ℚ)⌋).toNat

end

end A074479.P11045506685855214030

namespace A074479

/-- `A342667(A000244(n)+floor(1/(n+1)))` -/
def P11045506685855214030.Spec : Prop :=
  ∀ n, P11045506685855214030.a n = A074479 (n + 1)

end A074479

/-! ## A074479.P144687365019468248

`A342667(A110593(n+1)-A000244(n))`
-/

namespace A074479.P144687365019468248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342667 (A110593 (n + 1) - A000244 n).toNat

end

end A074479.P144687365019468248

namespace A074479

/-- `A342667(A110593(n+1)-A000244(n))` -/
def P144687365019468248.Spec : Prop :=
  ∀ n, P144687365019468248.a n = A074479 (n + 1)

end A074479

/-!
# A074480: Multiplicative closure of twin prime pair products (A037074).

The programs for A074480, there is no canonical definition to state claims against.
-/

/-! ## A074480.P9996212896499492850

`eq[1, A072965(n+1)]+1`
-/

namespace A074480.P9996212896499492850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072965 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A074480.P9996212896499492850

/-! ## A074480.P16608796981696454085

`record[A000027(n+1)/A072965(n+1)]`
-/

namespace A074480.P16608796981696454085
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A072965 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074480.P16608796981696454085

/-! ## A074480.P11366580570608028528

`record[A072963(n+1)/A072965(n+1)]`
-/

namespace A074480.P11366580570608028528
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072963 (n + 1) : ℚ) / (A072965 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074480.P11366580570608028528

/-! ## A074480.P360011526727723355

`record[A259445(n+1)/A072965(n+1)]`
-/

namespace A074480.P360011526727723355
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259445 (n + 1) : ℚ) / (A072965 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074480.P360011526727723355

/-! ## A074480.P15079236059308188743

`eq[2, A072965(A004277(n))]`
-/

namespace A074480.P15079236059308188743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072965 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A074480.P15079236059308188743

/-!
# A074481: Triangle T(p,k) read by rows, where p runs through the primes and 1 <= k <= p-1. T(p,k) = 1 if the reverse of the base-k expansion of p is a prime, otherwise 0.

The programs for A074481, there is no canonical definition to state claims against.
-/

/-! ## A074481.P8410256622877798270

`A334460(A350251(2*n+3)+A007913(n+1))`
-/

namespace A074481.P8410256622877798270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334460 (A350251 (2 * n + 3) + A007913 (n + 1)).toNat

end

end A074481.P8410256622877798270

/-! ## A074481.P15775925552512765401

`A294934(A290353(3*(n+1))+2)`
-/

namespace A074481.P15775925552512765401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294934 (A290353 (3 * (n + 1)) + 2).toNat

end

end A074481.P15775925552512765401

/-! ## A074481.P2704352595523551622

`A039966(A219310(3*n+1)%A001222(2*(n+2)))`
-/

namespace A074481.P2704352595523551622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 (Int.tmod (A219310 (3 * n + 1)) (A001222 (2 * (n + 2)))).toNat

end

end A074481.P2704352595523551622

/-! ## A074481.P8126191017044194616

`A209318(A209318(A117147(A363721(n+2))))`
-/

namespace A074481.P8126191017044194616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209318 (A209318 (A117147 (A363721 (n + 2)).toNat).toNat).toNat

end

end A074481.P8126191017044194616

/-! ## A074481.P848564862787665822

`A353681(A090580(n+5)*A257244(n+1))`
-/

namespace A074481.P848564862787665822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353681 (A090580 (n + 5) * A257244 (n + 1)).toNat

end

end A074481.P848564862787665822

/-!
# A074482: Consider the recursion b(1,n) = 1, b(k+1,n) = b(k,n) + (b(k,n) reduced mod(k+n)); then there is a number x such that b(k,n) - b(k-1,n) is a constant x depending only on n, for k > y = A074483(n). Sequence gives values of x.

The programs for A074482, there is no canonical definition to state claims against.
-/

/-! ## A074482.P5652893760009123892

`A074484(n)%(A074483(n)+n)`
-/

namespace A074482.P5652893760009123892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074484 n) (A074483 n + (n : ℤ))

end

end A074482.P5652893760009123892

/-! ## A074482.P8807084304316858033

`floor(A074484(n)/A289207(A074483(n)+n))`
-/

namespace A074482.P8807084304316858033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A074484 n : ℚ) / (A289207 (A074483 n + (n : ℤ)).toNat : ℚ)⌋

end

end A074482.P8807084304316858033

/-! ## A074482.P16126441947585400823

`A074484(n)/A204896(A074483(n)+1+n)`
-/

namespace A074482.P16126441947585400823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074484 n : ℚ) / (A204896 (A074483 n + 1 + (n : ℤ)).toNat : ℚ)

end

end A074482.P16126441947585400823

/-! ## A074482.P1661401696784489534

`A074484(n)/A250245(A074483(n)+1+n)`
-/

namespace A074482.P1661401696784489534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074484 n : ℚ) / (A250245 (A074483 n + 1 + (n : ℤ)).toNat : ℚ)

end

end A074482.P1661401696784489534

/-! ## A074482.P5596250847000612342

`A074484(n)/A255553(A074483(n)+1+n)`
-/

namespace A074482.P5596250847000612342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074484 n : ℚ) / (A255553 (A074483 n + 1 + (n : ℤ)).toNat : ℚ)

end

end A074482.P5596250847000612342

/-!
# A074483: Consider the recursion b(1,n) = 1, b(k+1,n) = b(k,n) + (b(k,n) reduced mod(k+n)); then there is a number y such that b(k,n)-b(k-1,n) is a constant (= A074482(n)) for k > y. Sequence gives values of y.

The programs for A074483, there is no canonical definition to state claims against.
-/

/-! ## A074483.P16101514802211655958

`A074484(n)/A074482(n)-(n+1)`
-/

namespace A074483.P16101514802211655958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074484 n : ℚ) / (A074482 n : ℚ) - (n + 1 : ℚ)

end

end A074483.P16101514802211655958

/-!
# A074484: a(n) = b(A074483(n), n), where b(k) is the recursion: b(1,n)=1, b(k+1,n)=b(k,n) + (b(k,n) reduced mod(k+n)) (cf. A074482).

The programs for A074484, there is no canonical definition to state claims against.
-/

/-! ## A074484.P8346804498904659663

`(A074483(n)+1+n)*A074482(n)`
-/

namespace A074484.P8346804498904659663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074483 n + 1 + (n : ℤ)) * A074482 n

end

end A074484.P8346804498904659663

/-!
# A074485: Bases k for which the smallest (Fermat) pseudoprime greater than k has Moebius function mu = -1.

The programs for A074485, there is no canonical definition to state claims against.
-/

/-! ## A074485.P3518978341296833852

`lt[A008683(A007535(n+1)), 0]+1`
-/

namespace A074485.P3518978341296833852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007535 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A074485.P3518978341296833852

/-!
# A074486: Encoding of topologies generated by classes of sets.

The programs for A074486, there is no canonical definition to state claims against.
-/

/-! ## A074486.P11171851333609438525

`A014486(n+4)-A236434(A052192(n+1))`
-/

namespace A074486.P11171851333609438525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (n + 4) - A236434 (A052192 (n + 1)).toNat

end

end A074486.P11171851333609438525

/-!
# A074487: a(1)=1, then "jump over next square": a(n) = 2*(a(n-1)+1)^2-a(n-1).

The programs for A074487, the canonical program `A074487.P13379641989343843818` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074487 has offset 1).

The definition of A074487 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(a(n-1)+1)²-a(n-1)` (program `A074487.P13379641989343843818`, by `A074487.P13379641989343843818.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074487.P13379641989343843818

`2*(a(n-1)+1)²-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074487

/-- `2*(a(n-1)+1)²-a(n-1)` -/
def P13379641989343843818.Spec : Prop :=
  ∀ n, P13379641989343843818.a n = A074487 (n + 1)

theorem P13379641989343843818.correct : P13379641989343843818.Spec := by
  intro n
  simp only [A074487, Nat.add_sub_cancel]

end A074487

/-! ## A074487.P4816777824677728523

`C(2*(a(n-1)+1), 2)+1` with `a(0)=1`
-/

namespace A074487.P4816777824677728523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (2 * (a (n - 1) + 1)) 2 + 1

end

end A074487.P4816777824677728523

namespace A074487

/-- `C(2*(a(n-1)+1), 2)+1` -/
def P4816777824677728523.Spec : Prop :=
  ∀ n, (P4816777824677728523.a n : ℤ) = A074487 (n + 1)

end A074487

/-! ## A074487.P423209770499871275

`(2*a(n-1)+3)*a(n-1)+2` with `a(0)=1`
-/

namespace A074487.P423209770499871275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (2 * a (n - 1) + 3) * a (n - 1) + 2

end

end A074487.P423209770499871275

namespace A074487

/-- `(2*a(n-1)+3)*a(n-1)+2` -/
def P423209770499871275.Spec : Prop :=
  ∀ n, (P423209770499871275.a n : ℤ) = A074487 (n + 1)

end A074487

/-!
# A074488: 

The programs for A074488, there is no canonical definition to state claims against.
-/

/-! ## A074488.P1745963140363053203

`2*(a(n-1)+1)^3-a(n-1)` with `a(0)=1`
-/

namespace A074488.P1745963140363053203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + 1) ^ 3 - a (n - 1)

end

end A074488.P1745963140363053203

/-!
# A074489: 

The programs for A074489, there is no canonical definition to state claims against.
-/

/-! ## A074489.P92800320596406857

`A003618(n+1)^(n+1)`
-/

namespace A074489.P92800320596406857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003618 (n + 1) ^ (n + 1)

end

end A074489.P92800320596406857

/-! ## A074489.P18005000540793208786

`A101592(2*(n+1))^(n+1)`
-/

namespace A074489.P18005000540793208786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101592 (2 * (n + 1)) ^ (n + 1)

end

end A074489.P18005000540793208786

/-! ## A074489.P5927035951876766280

`A132153(2*(n+1))^(n+1)`
-/

namespace A074489.P5927035951876766280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132153 (2 * (n + 1)) ^ (n + 1)

end

end A074489.P5927035951876766280

/-!
# A074490: 

The programs for A074490, there is no canonical definition to state claims against.
-/

/-! ## A074490.P6432833254921954217

`A003617(n+1)^(n+1)`
-/

namespace A074490.P6432833254921954217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003617 (n + 1) ^ (n + 1)

end

end A074490.P6432833254921954217

/-! ## A074490.P9546080554736366391

`A131581(2*n)^(n+1)`
-/

namespace A074490.P9546080554736366391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131581 (2 * n) ^ (n + 1)

end

end A074490.P9546080554736366391

/-! ## A074490.P3585003515504793866

`A101592(2*n+1)^(n+1)`
-/

namespace A074490.P3585003515504793866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101592 (2 * n + 1) ^ (n + 1)

end

end A074490.P3585003515504793866

/-! ## A074490.P14125539488820914212

`∪[A003618(n+10), A139052(Δ[n²])]^(n+1)`
-/

namespace A074490.P14125539488820914212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003618 (n + 10)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139052 ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ (n + 1)

end

end A074490.P14125539488820914212

/-!
# A074491: "Squarefree" primes: primes without squares in their decimal expansion.

The programs for A074491, there is no canonical definition to state claims against.
-/

/-! ## A074491.P3347745231926944374

`p?[A059307(n+1)]`
-/

namespace A074491.P3347745231926944374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074491.P3347745231926944374

/-! ## A074491.P9987327574329886863

`∩[A038603(n+1), A059307(n+1)]`
-/

namespace A074491.P9987327574329886863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074491.P9987327574329886863

/-! ## A074491.P6437912152561586436

`∩[A038617(n+1), A059307(n+1)]`
-/

namespace A074491.P6437912152561586436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074491.P6437912152561586436

/-! ## A074491.P186718860541381385

`∩[A059307(n+1), A106116(n+1)]`
-/

namespace A074491.P186718860541381385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059307 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074491.P186718860541381385

/-! ## A074491.P15302605581577103080

`∩[A059307(n+1), A154761(n+1)]`
-/

namespace A074491.P15302605581577103080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059307 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074491.P15302605581577103080

/-! ## A074491.P5464743100780250562

`∩[A059307(n+1), A386322(n+1)]`
-/

namespace A074491.P5464743100780250562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059307 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074491.P5464743100780250562

/-! ## A074491.P5303957413058195989

`∩[A059307(n+1), A386327(n+1)]`
-/

namespace A074491.P5303957413058195989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059307 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386327 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074491.P5303957413058195989

/-! ## A074491.P575028735574518636

`∩[A059307(n+1), A386330(n+1)]`
-/

namespace A074491.P575028735574518636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059307 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074491.P575028735574518636

/-! ## A074491.P4771085578361602904

`∩[A059307(n+1), A386349(n+1)]`
-/

namespace A074491.P4771085578361602904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059307 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074491.P4771085578361602904

/-! ## A074491.P6372669809169040412

`∩[A042993(n+1), A059307(n+1)]`
-/

namespace A074491.P6372669809169040412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074491.P6372669809169040412

/-! ## A074491.P5392821234258162642

`filter[A059307(n+1), A010051(#)]`
-/

namespace A074491.P5392821234258162642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A074491.P5392821234258162642

/-! ## A074491.P9164275231635162692

`filter[A059307(n+1), A355937(#)]`
-/

namespace A074491.P9164275231635162692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A074491.P9164275231635162692

/-! ## A074491.P10736954383126218051

`∩[A000040(n+1), A059307(n+1)]`
-/

namespace A074491.P10736954383126218051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074491.P10736954383126218051

/-! ## A074491.P11683100989031781792

`∩[A000430(n+1), A059307(n+1)]`
-/

namespace A074491.P11683100989031781792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074491.P11683100989031781792

/-! ## A074491.P1149169088069831273

`∩[A008578(n+1), A059307(n+1)]`
-/

namespace A074491.P1149169088069831273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074491.P1149169088069831273

/-! ## A074491.P10747847708106435053

`∩[A009087(n+1), A059307(n+1)]`
-/

namespace A074491.P10747847708106435053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074491.P10747847708106435053

/-! ## A074491.P5273359114236307889

`∩[A033946(n+1), A059307(n+1)]`
-/

namespace A074491.P5273359114236307889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074491.P5273359114236307889

/-! ## A074491.P4734808619533480779

`∩[A038612(n+1), A059307(n+1)]`
-/

namespace A074491.P4734808619533480779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074491.P4734808619533480779

/-! ## A074491.P17229816670311625815

`∩[A038618(n+1), A059307(n+1)]`
-/

namespace A074491.P17229816670311625815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074491.P17229816670311625815

/-! ## A074491.P16207130602550359183

`∩[A040159(n+1), A059307(n+1)]`
-/

namespace A074491.P16207130602550359183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074491.P16207130602550359183

/-!
# A074493: Numbers n such that all the divisors of n appear as substrings in n^3.

The programs for A074493, there is no canonical definition to state claims against.
-/

/-! ## A074493.P2368332532261275201

`or(A164840(n+1), A252753(∑[4*n]))`
-/

namespace A074493.P2368332532261275201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A164840 (n + 1)) (A252753 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A074493.P2368332532261275201

/-!
# A074494: Number of 2-input gates used to synthesize parity function in disjunctive normal form (DNF) with n inputs.

The programs for A074494, the canonical program `A074494.P10080901731975955765` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074494 has offset 1).

The definition of A074494 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074494.P10080901731975955765

`3*(n+1)*ceil(2^(n-1))-1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074494

/-- `3*(n+1)*ceil(2^(n-1))-1` -/
def P10080901731975955765.Spec : Prop :=
  ∀ n, P10080901731975955765.a n = A074494 (n + 1)

theorem P10080901731975955765.correct : P10080901731975955765.Spec := by
  intro n
  simp only [A074494, Nat.add_sub_cancel]

end A074494

/-! ## A074494.P14782385144129106942

`abs(1-3*A057711(n+1))`
-/

namespace A074494.P14782385144129106942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 3 * A057711 (n + 1)|

end

end A074494.P14782385144129106942

namespace A074494

/-- `abs(1-3*A057711(n+1))` -/
def P14782385144129106942.Spec : Prop :=
  ∀ n, P14782385144129106942.a n = A074494 (n + 1)

end A074494

/-! ## A074494.P2516196389922395612

`∑[(n+2)*A122391(n+1)]`
-/

namespace A074494.P2516196389922395612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A122391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074494.P2516196389922395612

namespace A074494

/-- `∑[(n+2)*A122391(n+1)]` -/
def P2516196389922395612.Spec : Prop :=
  ∀ n, P2516196389922395612.a n = A074494 (n + 1)

end A074494

/-! ## A074494.P9326445914269221265

`abs(A083329(n)+A057428(n)+A048474(n))`
-/

namespace A074494.P9326445914269221265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A083329 n + (A057428 n + A048474 n)|

end

end A074494.P9326445914269221265

namespace A074494

/-- `abs(A083329(n)+A057428(n)+A048474(n))` -/
def P9326445914269221265.Spec : Prop :=
  ∀ n, P9326445914269221265.a n = A074494 (n + 1)

end A074494

/-! ## A074494.P10262584504699135335

`A099035(3*n+2)%A000225(2*(n+1))`
-/

namespace A074494.P10262584504699135335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099035 (3 * n + 2)) (A000225 (2 * (n + 1)))

end

end A074494.P10262584504699135335

namespace A074494

/-- `A099035(3*n+2)%A000225(2*(n+1))` -/
def P10262584504699135335.Spec : Prop :=
  ∀ n, P10262584504699135335.a n = A074494 (n + 1)

end A074494

/-!
# A074495: a(n) = the first prime > sigma(n).

The programs for A074495, the canonical program `A074495.P8235273495252244141` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074495 has offset 1).

The definition of A074495 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A074495.P8235273495252244141

`A151800(A000203(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A074495

/-- `A151800(A000203(n+1))` -/
def P8235273495252244141.Spec : Prop :=
  ∀ n, P8235273495252244141.a n = A074495 (n + 1)

theorem P8235273495252244141.correct : P8235273495252244141.Spec := by
  intro n
  simp only [A074495, Nat.add_sub_cancel]

end A074495

/-! ## A074495.P6748631150301741913

`A151800(∑{d}[n+1, #])`
-/

namespace A074495.P6748631150301741913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A074495.P6748631150301741913

namespace A074495

/-- `A151800(∑{d}[n+1, #])` -/
def P6748631150301741913.Spec : Prop :=
  ∀ n, P6748631150301741913.a n = A074495 (n + 1)

end A074495

/-! ## A074495.P4113080347395821719

`A151800(Δ[A160664(n)])`
-/

namespace A074495.P4113080347395821719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (f1 (n + 1) - f1 n).toNat

end

end A074495.P4113080347395821719

namespace A074495

/-- `A151800(Δ[A160664(n)])` -/
def P4113080347395821719.Spec : Prop :=
  ∀ n, P4113080347395821719.a n = A074495 (n + 1)

end A074495

/-! ## A074495.P868870152993260808

`A151800(abs(Δ[A330725(n)]))`
-/

namespace A074495.P868870152993260808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 |f1 (n + 1) - f1 n|.toNat

end

end A074495.P868870152993260808

namespace A074495

/-- `A151800(abs(Δ[A330725(n)]))` -/
def P868870152993260808.Spec : Prop :=
  ∀ n, P868870152993260808.a n = A074495 (n + 1)

end A074495

/-! ## A074495.P1046023511220449082

`A151800(sqrt(A072861(n+1)))`
-/

namespace A074495.P1046023511220449082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ))).toNat

end

end A074495.P1046023511220449082

namespace A074495

/-- `A151800(sqrt(A072861(n+1)))` -/
def P1046023511220449082.Spec : Prop :=
  ∀ n, P1046023511220449082.a n = A074495 (n + 1)

end A074495

/-! ## A074495.P1467959929544074235

`A000040(A070803(n+1)+1)`
-/

namespace A074495.P1467959929544074235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A070803 (n + 1) + 1).toNat

end

end A074495.P1467959929544074235

namespace A074495

/-- `A000040(A070803(n+1)+1)` -/
def P1467959929544074235.Spec : Prop :=
  ∀ n, P1467959929544074235.a n = A074495 (n + 1)

end A074495

/-! ## A074495.P5573229976820731878

`A151800(A039653(n+1)+1)`
-/

namespace A074495.P5573229976820731878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A039653 (n + 1) + 1).toNat

end

end A074495.P5573229976820731878

namespace A074495

/-- `A151800(A039653(n+1)+1)` -/
def P5573229976820731878.Spec : Prop :=
  ∀ n, P5573229976820731878.a n = A074495 (n + 1)

end A074495

/-! ## A074495.P8479808729109043550

`A151800(A088580(n+1)-1)`
-/

namespace A074495.P8479808729109043550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A088580 (n + 1) - 1).toNat

end

end A074495.P8479808729109043550

namespace A074495

/-- `A151800(A088580(n+1)-1)` -/
def P8479808729109043550.Spec : Prop :=
  ∀ n, P8479808729109043550.a n = A074495 (n + 1)

end A074495

/-! ## A074495.P3463567446520387471

`A151800(A245092(2*n+1))`
-/

namespace A074495.P3463567446520387471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A245092 (2 * n + 1)).toNat

end

end A074495.P3463567446520387471

namespace A074495

/-- `A151800(A245092(2*n+1))` -/
def P3463567446520387471.Spec : Prop :=
  ∀ n, P3463567446520387471.a n = A074495 (n + 1)

end A074495

/-! ## A074495.P5353399401948441339

`A151800(A074400(n+1)/2)`
-/

namespace A074495.P5353399401948441339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat

end

end A074495.P5353399401948441339

namespace A074495

/-- `A151800(A074400(n+1)/2)` -/
def P5353399401948441339.Spec : Prop :=
  ∀ n, P5353399401948441339.a n = A074495 (n + 1)

end A074495

/-! ## A074495.P17759136325230522565

`A156037(A070803(n+1)+1)+1`
-/

namespace A074495.P17759136325230522565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (A070803 (n + 1) + 1).toNat + 1

end

end A074495.P17759136325230522565

namespace A074495

/-- `A156037(A070803(n+1)+1)+1` -/
def P17759136325230522565.Spec : Prop :=
  ∀ n, P17759136325230522565.a n = A074495 (n + 1)

end A074495

/-! ## A074495.P13447240256329664698

`A072918(n+1)+A000203(n+1)`
-/

namespace A074495.P13447240256329664698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072918 (n + 1) + A000203 (n + 1)

end

end A074495.P13447240256329664698

namespace A074495

/-- `A072918(n+1)+A000203(n+1)` -/
def P13447240256329664698.Spec : Prop :=
  ∀ n, P13447240256329664698.a n = A074495 (n + 1)

end A074495

/-! ## A074495.P11898602002239156918

`A151800(A001065(n+1)+1+n)`
-/

namespace A074495.P11898602002239156918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A074495.P11898602002239156918

namespace A074495

/-- `A151800(A001065(n+1)+1+n)` -/
def P11898602002239156918.Spec : Prop :=
  ∀ n, P11898602002239156918.a n = A074495 (n + 1)

end A074495

/-! ## A074495.P8377327471561650496

`A151800(A155085(n+1)-(n+1))`
-/

namespace A074495.P8377327471561650496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A155085 (n + 1) - (n + 1 : ℤ)).toNat

end

end A074495.P8377327471561650496

namespace A074495

/-- `A151800(A155085(n+1)-(n+1))` -/
def P8377327471561650496.Spec : Prop :=
  ∀ n, P8377327471561650496.a n = A074495 (n + 1)

end A074495

/-! ## A074495.P1561110449500009077

`A151800(A064987(n+1)/(n+1))`
-/

namespace A074495.P1561110449500009077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A074495.P1561110449500009077

namespace A074495

/-- `A151800(A064987(n+1)/(n+1))` -/
def P1561110449500009077.Spec : Prop :=
  ∀ n, P1561110449500009077.a n = A074495 (n + 1)

end A074495

/-! ## A074495.P5402669483344970554

`A000040(A000720(∑{d}[n+1, #])+1)`
-/

namespace A074495.P5402669483344970554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (∑ d ∈ Nat.divisors (f1 n), d) + 1).toNat

end

end A074495.P5402669483344970554

namespace A074495

/-- `A000040(A000720(∑{d}[n+1, #])+1)` -/
def P5402669483344970554.Spec : Prop :=
  ∀ n, P5402669483344970554.a n = A074495 (n + 1)

end A074495

/-! ## A074495.P18300437923646331267

`A000040(A000720(A000203(n+1))+1)`
-/

namespace A074495.P18300437923646331267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A000203 (n + 1)).toNat + 1).toNat

end

end A074495.P18300437923646331267

namespace A074495

/-- `A000040(A000720(A000203(n+1))+1)` -/
def P18300437923646331267.Spec : Prop :=
  ∀ n, P18300437923646331267.a n = A074495 (n + 1)

end A074495

/-! ## A074495.P13851693350364134937

`A151800(A003973(n+1)-A336852(n+1))`
-/

namespace A074495.P13851693350364134937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A003973 (n + 1) - A336852 (n + 1)).toNat

end

end A074495.P13851693350364134937

namespace A074495

/-- `A151800(A003973(n+1)-A336852(n+1))` -/
def P13851693350364134937.Spec : Prop :=
  ∀ n, P13851693350364134937.a n = A074495 (n + 1)

end A074495

/-! ## A074495.P6927186867250207374

`A151800(A092261(n+1)*A295294(n+1))`
-/

namespace A074495.P6927186867250207374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A092261 (n + 1) * A295294 (n + 1)).toNat

end

end A074495.P6927186867250207374

namespace A074495

/-- `A151800(A092261(n+1)*A295294(n+1))` -/
def P6927186867250207374.Spec : Prop :=
  ∀ n, P6927186867250207374.a n = A074495 (n + 1)

end A074495

/-! ## A074495.P11305693405705836554

`A151800(A341529(n+1)/A003961(n+1))`
-/

namespace A074495.P11305693405705836554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.roundAway ((A341529 (n + 1) : ℚ) / (A003961 (n + 1) : ℚ))).toNat

end

end A074495.P11305693405705836554

namespace A074495

/-- `A151800(A341529(n+1)/A003961(n+1))` -/
def P11305693405705836554.Spec : Prop :=
  ∀ n, P11305693405705836554.a n = A074495 (n + 1)

end A074495

/-!
# A074496: a(n) = smallest prime > e^n.

The programs for A074496, there is no canonical definition to state claims against.
-/

/-! ## A074496.P2704125824303129956

`A001748(A040014(n)+1)/3`
-/

namespace A074496.P2704125824303129956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A040014 n + 1).toNat : ℚ) / 3

end

end A074496.P2704125824303129956

/-! ## A074496.P6631230907001159657

`A151800(floor(exp(n)))`
-/

namespace A074496.P6631230907001159657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ⌊Real.exp (n : ℝ)⌋.toNat

end

end A074496.P6631230907001159657

/-! ## A074496.P584600612160340377

`p?[A151800(A000149(n))]`
-/

namespace A074496.P584600612160340377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A000149 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074496.P584600612160340377

/-! ## A074496.P14609152274315180655

`A000040(A040014(n)+1)`
-/

namespace A074496.P14609152274315180655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A040014 n + 1).toNat

end

end A074496.P14609152274315180655

/-! ## A074496.P10627583995773812184

`A008578(A040014(n)+2)`
-/

namespace A074496.P10627583995773812184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A040014 n + 2).toNat

end

end A074496.P10627583995773812184

/-!
# A074497: a(n) = the smallest prime > Pi^n.

The programs for A074497, there is no canonical definition to state claims against.
-/

/-! ## A074497.P12491592165684102082

`A151800(floor(π^n))`
-/

namespace A074497.P12491592165684102082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ⌊Real.pi ^ n⌋.toNat

end

end A074497.P12491592165684102082

/-! ## A074497.P1852915796027111715

`p?[A151800(A001672(n))]`
-/

namespace A074497.P1852915796027111715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A001672 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074497.P1852915796027111715

/-! ## A074497.P15742499731704178767

`A000040(A071973(n)+1)`
-/

namespace A074497.P15742499731704178767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A071973 n + 1).toNat

end

end A074497.P15742499731704178767

/-! ## A074497.P5209031479337202485

`A008578(A071973(n)+2)`
-/

namespace A074497.P5209031479337202485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A071973 n + 2).toNat

end

end A074497.P5209031479337202485

/-! ## A074497.P15059283658856570158

`A158611(A071973(n)+3)`
-/

namespace A074497.P15059283658856570158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A071973 n + 3).toNat

end

end A074497.P15059283658856570158

/-!
# A074498: Odd numbers which retain their relative position in A074368 (not disturbed in the rearrangement process).

The programs for A074498, there is no canonical definition to state claims against.
-/

/-! ## A074498.P9952865855494972174

`record[gcd(2*n+1, A086517(n+2)-1)]`
-/

namespace A074498.P9952865855494972174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n + 1 : ℤ) (A086517 (n + 2) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074498.P9952865855494972174

/-! ## A074498.P14144630368288810441

`record[gcd(A086517(n+2)-1, A005408(n))]`
-/

namespace A074498.P14144630368288810441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A086517 (n + 2) - 1) (A005408 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074498.P14144630368288810441

/-! ## A074498.P16512194173900081522

`A005408(eq[4*n+3, A086517(n+2)])`
-/

namespace A074498.P16512194173900081522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086517 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A074498.P16512194173900081522

/-! ## A074498.P15813645563402361204

`eq[A005408(n), A086517(A029578(n+3))]`
-/

namespace A074498.P15813645563402361204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086517 (A029578 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074498.P15813645563402361204

/-! ## A074498.P3464016385565581892

`A004273(eq[A004273(2*n), A086517(n+1)])`
-/

namespace A074498.P3464016385565581892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A074498.P3464016385565581892

/-!
# A074499: Sum of three perfect powers.

The programs for A074499, there is no canonical definition to state claims against.
-/

/-! ## A074499.P13977417365689910824

`eq[1, A002828(A282499(n)²)]`
-/

namespace A074499.P13977417365689910824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A282499 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A074499.P13977417365689910824

