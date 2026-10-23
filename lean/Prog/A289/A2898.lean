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
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
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
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A289800: p-INVERT of the central binomial coefficients (A000984), where p(S) = 1 - S - S^2.

The programs for A289800, there is no canonical definition to state claims against.
-/

/-! ## A289800.P18418144926764605363

`A008619(A114215(n+1)+A003279(n))`
-/

namespace A289800.P18418144926764605363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A114215 (n + 1) + A003279 n).toNat

end

end A289800.P18418144926764605363

/-! ## A289800.P13415767861249243103

`A008619(A334266(n+1)+A003279(n))`
-/

namespace A289800.P13415767861249243103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A334266 (n + 1) + A003279 n).toNat

end

end A289800.P13415767861249243103

/-!
# A289801: p-INVERT of the tetrahedral numbers (A000292), where p(S) = 1 - S - S^2.

The programs for A289801, there is no canonical definition to state claims against.
-/

/-! ## A289801.P13054537827447859971

`A274529(A179602(n))`
-/

namespace A289801.P13054537827447859971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274529 (A179602 n).toNat

end

end A289801.P13054537827447859971

/-!
# A289802: p-INVERT of the quarter-squares (A002620), where p(S) = 1 - S - S^2.

The programs for A289802, there is no canonical definition to state claims against.
-/

/-! ## A289802.P14440600397309499731

`A289133(A264307(n+1))`
-/

namespace A289802.P14440600397309499731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289133 (A264307 (n + 1)).toNat

end

end A289802.P14440600397309499731

/-! ## A289802.P14450980183716556827

`A108954(or(1, A219436(n+1)))`
-/

namespace A289802.P14450980183716556827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (Int.lor 1 (A219436 (n + 1))).toNat

end

end A289802.P14450980183716556827

/-!
# A289803: p-INVERT of the even bisection (A001906) of the Fibonacci numbers, where p(S) = 1 - S - S^2.

The programs for A289803, the canonical program `A289803.P2124272708063660417` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289803 has offset 0).

The definition of A289803 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289803.P2124272708063660417

`7*a(n-1)-13*a(n-2)+7*a(n-3)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=23, a(3)=103`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A289803

/-- `7*a(n-1)-13*a(n-2)+7*a(n-3)-a(n-4)` -/
def P2124272708063660417.Spec : Prop :=
  ∀ n, P2124272708063660417.a n = A289803 n

theorem P2124272708063660417.correct : P2124272708063660417.Spec := by
  intro n
  simp only [A289803]

end A289803

/-! ## A289803.P5733198693509127243

`A131322(Δ[n²])`
-/

namespace A289803.P5733198693509127243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131322 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A289803.P5733198693509127243

namespace A289803

/-- `A131322(Δ[n²])` -/
def P5733198693509127243.Spec : Prop :=
  ∀ n, P5733198693509127243.a n = A289803 n

end A289803

/-! ## A289803.P9030872620827303611

`∑[A289846(2*n)]`
-/

namespace A289803.P9030872620827303611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289846 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289803.P9030872620827303611

namespace A289803

/-- `∑[A289846(2*n)]` -/
def P9030872620827303611.Spec : Prop :=
  ∀ n, P9030872620827303611.a n = A289803 n

end A289803

/-! ## A289803.P5415757996805534632

`Δ[A112576(2*n)]`
-/

namespace A289803.P5415757996805534632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112576 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289803.P5415757996805534632

namespace A289803

/-- `Δ[A112576(2*n)]` -/
def P5415757996805534632.Spec : Prop :=
  ∀ n, P5415757996805534632.a n = A289803 n

end A289803

/-! ## A289803.P258438363134843189

`gcd(floor(acot(n)²), A131322(2*n+1))`
-/

namespace A289803.P258438363134843189
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋ (A131322 (2 * n + 1))

end

end A289803.P258438363134843189

namespace A289803

/-- `gcd(floor(acot(n)²), A131322(2*n+1))` -/
def P258438363134843189.Spec : Prop :=
  ∀ n, (P258438363134843189.a n : ℤ) = A289803 n

end A289803

/-! ## A289803.P13189851341597441965

`∑[A289846(A004277(n))]-1`
-/

namespace A289803.P13189851341597441965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289846 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A289803.P13189851341597441965

namespace A289803

/-- `∑[A289846(A004277(n))]-1` -/
def P13189851341597441965.Spec : Prop :=
  ∀ n, P13189851341597441965.a n = A289803 n

end A289803

/-! ## A289803.P4711612767709859024

`A112576(2*(n+1))-A112576(2*n)`
-/

namespace A289803.P4711612767709859024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112576 (2 * (n + 1)) - A112576 (2 * n)

end

end A289803.P4711612767709859024

namespace A289803

/-- `A112576(2*(n+1))-A112576(2*n)` -/
def P4711612767709859024.Spec : Prop :=
  ∀ n, P4711612767709859024.a n = A289803 n

end A289803

/-! ## A289803.P9332722161257492780

`Δ[A131322(2*n)]-∑[A131322(2*n)]`
-/

namespace A289803.P9332722161257492780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131322 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131322 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A289803.P9332722161257492780

namespace A289803

/-- `Δ[A131322(2*n)]-∑[A131322(2*n)]` -/
def P9332722161257492780.Spec : Prop :=
  ∀ n, P9332722161257492780.a n = A289803 n

end A289803

/-! ## A289803.P13245530457297518556

`A112576(2*n+1)+∑[A112576(2*n)]`
-/

namespace A289803.P13245530457297518556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112576 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112576 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289803.P13245530457297518556

namespace A289803

/-- `A112576(2*n+1)+∑[A112576(2*n)]` -/
def P13245530457297518556.Spec : Prop :=
  ∀ n, P13245530457297518556.a n = A289803 n

end A289803

/-! ## A289803.P16852348658409182123

`A192232(2*(n+1))+A112576(2*n+1)`
-/

namespace A289803.P16852348658409182123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192232 (2 * (n + 1)) + A112576 (2 * n + 1)

end

end A289803.P16852348658409182123

namespace A289803

/-- `A192232(2*(n+1))+A112576(2*n+1)` -/
def P16852348658409182123.Spec : Prop :=
  ∀ n, P16852348658409182123.a n = A289803 n

end A289803

/-! ## A289803.P7158443472636334238

`A192232(2*(n+1))+Δ[A192232(2*n+1)]`
-/

namespace A289803.P7158443472636334238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192232 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192232 (2 * (n + 1)) + (f1 (n + 1) - f1 n)

end

end A289803.P7158443472636334238

namespace A289803

/-- `A192232(2*(n+1))+Δ[A192232(2*n+1)]` -/
def P7158443472636334238.Spec : Prop :=
  ∀ n, P7158443472636334238.a n = A289803 n

end A289803

/-! ## A289803.P17068571176269601902

`(A289846(2*n+1)+A192232(2*(n+1)))/2`
-/

namespace A289803.P17068571176269601902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289846 (2 * n + 1) + A192232 (2 * (n + 1)) : ℚ) / 2

end

end A289803.P17068571176269601902

namespace A289803

/-- `(A289846(2*n+1)+A192232(2*(n+1)))/2` -/
def P17068571176269601902.Spec : Prop :=
  ∀ n, P17068571176269601902.a n = (A289803 n : ℚ)

end A289803

/-! ## A289803.P17776134053442707521

`Δ[A289846(2*n)]-A289846(2*n+1)`
-/

namespace A289803.P17776134053442707521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289846 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A289846 (2 * n + 1)

end

end A289803.P17776134053442707521

namespace A289803

/-- `Δ[A289846(2*n)]-A289846(2*n+1)` -/
def P17776134053442707521.Spec : Prop :=
  ∀ n, P17776134053442707521.a n = A289803 n

end A289803

/-!
# A289804: p-INVERT of the even bisection (A001519) of the Fibonacci numbers, where p(S) = 1 - S - S^2.

The programs for A289804, the canonical program `A289804.P10347157286267670243` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289804 has offset 0).

The definition of A289804 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289804.P10347157286267670243

`7*a(n-1)-15*a(n-2)+9*a(n-3)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=29`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A289804

/-- `7*a(n-1)-15*a(n-2)+9*a(n-3)+a(n-4)` -/
def P10347157286267670243.Spec : Prop :=
  ∀ n, P10347157286267670243.a n = A289804 n

theorem P10347157286267670243.correct : P10347157286267670243.Spec := by
  intro n
  simp only [A289804]

end A289804

/-! ## A289804.P17051233888215283130

`A054071(A291005(n))`
-/

namespace A289804.P17051233888215283130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054071 (A291005 n).toNat

end

end A289804.P17051233888215283130

namespace A289804

/-- `A054071(A291005(n))` -/
def P17051233888215283130.Spec : Prop :=
  ∀ n, P17051233888215283130.a n = A289804 n

end A289804

/-! ## A289804.P4641019775839441084

`A008619(A099448(n)-A005774(n))`
-/

namespace A289804.P4641019775839441084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A099448 n - A005774 n).toNat

end

end A289804.P4641019775839441084

namespace A289804

/-- `A008619(A099448(n)-A005774(n))` -/
def P4641019775839441084.Spec : Prop :=
  ∀ n, P4641019775839441084.a n = A289804 n

end A289804

/-! ## A289804.P2197476821254026673

`A029920(A154638(n)+A027434(n+1))`
-/

namespace A289804.P2197476821254026673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029920 (A154638 n + A027434 (n + 1)).toNat

end

end A289804.P2197476821254026673

namespace A289804

/-- `A029920(A154638(n)+A027434(n+1))` -/
def P2197476821254026673.Spec : Prop :=
  ∀ n, P2197476821254026673.a n = A289804 n

end A289804

/-!
# A289805: p-INVERT of A103889, where p(S) = 1 - S - S^2.

The programs for A289805, there is no canonical definition to state claims against.
-/

/-! ## A289805.P9439611385824803062

`A251550(A171477(n+1))`
-/

namespace A289805.P9439611385824803062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251550 (A171477 (n + 1)).toNat

end

end A289805.P9439611385824803062

/-!
# A289806: p-INVERT of (1,1,2,2,3,3,...) (A008619), where p(S) = 1 - S - S^2.

The programs for A289806, there is no canonical definition to state claims against.
-/

/-! ## A289806.P5183653320503655150

`A289122(A344615(2*(n+2))+A016053(n))`
-/

namespace A289806.P5183653320503655150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289122 (A344615 (2 * (n + 2)) + A016053 n).toNat

end

end A289806.P5183653320503655150

/-! ## A289806.P1704573477094548937

`A289122(A344615(2*(n+2))-A010051(n+1))`
-/

namespace A289806.P1704573477094548937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289122 (A344615 (2 * (n + 2)) - A010051 (n + 1)).toNat

end

end A289806.P1704573477094548937

/-! ## A289806.P3376436204404889362

`A289122(A344615(2*(n+2))-A066272(n+1))`
-/

namespace A289806.P3376436204404889362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289122 (A344615 (2 * (n + 2)) - A066272 (n + 1)).toNat

end

end A289806.P3376436204404889362

/-! ## A289806.P3140102171425938502

`A289122(A344615(2*(n+2))+A102552(n+3))`
-/

namespace A289806.P3140102171425938502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289122 (A344615 (2 * (n + 2)) + A102552 (n + 3)).toNat

end

end A289806.P3140102171425938502

/-!
# A289807: p-INVERT of (1,2,2,3,3,4,4,...) (A080513), where p(S) = 1 - S - S^2.

The programs for A289807, there is no canonical definition to state claims against.
-/

/-! ## A289807.P16594600841952152204

`A143792(∑[4^(n+1)-3^(n+1)])+2*3^n-∑[2^n]`
-/

namespace A289807.P16594600841952152204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ (n + 1) : ℤ) - (3 ^ (n + 1) : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143792 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + ((2 * 3 ^ n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

end

end A289807.P16594600841952152204

/-! ## A289807.P12059118632301271435

`A276212(A255631(n))`
-/

namespace A289807.P12059118632301271435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276212 (A255631 n).toNat

end

end A289807.P12059118632301271435

/-!
# A289808: Primes of the form 3^k - 28.

The programs for A289808, there is no canonical definition to state claims against.
-/

/-! ## A289808.P1038569826113325488

`3^A219047(n+1)-28`
-/

namespace A289808.P1038569826113325488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A219047 (n + 1) : ℤ) - 28

end

end A289808.P1038569826113325488

/-! ## A289808.P9650012714513854113

`A000244(A219047(n+1))-28`
-/

namespace A289808.P9650012714513854113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A219047 (n + 1)).toNat - 28

end

end A289808.P9650012714513854113

/-!
# A289809: p-INVERT of (1,2,1,3,1,4,1,5,...) (A133622), where p(S) = 1 - S - S^2.

The programs for A289809, there is no canonical definition to state claims against.
-/

/-! ## A289809.P7875352082529225239

`A115515(n+1)+A061392(A329558(n))`
-/

namespace A289809.P7875352082529225239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115515 (n + 1) + A061392 (A329558 n).toNat

end

end A289809.P7875352082529225239

/-! ## A289809.P13423830752954597940

`A235963(A277074(n+1))+A001411(n)`
-/

namespace A289809.P13423830752954597940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235963 (A277074 (n + 1)).toNat + A001411 n

end

end A289809.P13423830752954597940

/-!
# A289810: p-INVERT of A081696, where p(S) = 1 - S - S^2.

The programs for A289810, there is no canonical definition to state claims against.
-/

/-! ## A289810.P6740333735129234372

`A004001(A036766(n)+A000302(n))`
-/

namespace A289810.P6740333735129234372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A036766 n + A000302 n).toNat

end

end A289810.P6740333735129234372

/-! ## A289810.P5635612516304059819

`A336989(n)+A004526(A000302(n))`
-/

namespace A289810.P5635612516304059819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336989 n + A004526 (A000302 n).toNat

end

end A289810.P5635612516304059819

/-!
# A289812: n for which a Factor Pair Latin Square of order n exists.

The programs for A289812, there is no canonical definition to state claims against.
-/

/-! ## A289812.P16187859478618581325

`∪[lt[∑{d}[n, #], 2*n], n²+2]`
-/

namespace A289812.P16187859478618581325
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f4 j) n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f5 j = x) n

end

end A289812.P16187859478618581325

/-! ## A289812.P14227903686179311720

`comp[2*(n+1)%∏{p}[n+1, lcm(#, n+1)]]`
-/

namespace A289812.P14227903686179311720
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1) % (∏ p ∈ Nat.primeFactors (f2 n), Nat.lcm p (n + 1)))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A289812.P14227903686179311720

/-! ## A289812.P5186258553597222965

`comp[∏{p}[n+1, -#]*∑{e}[n+1, or(1, #-1)]]`
-/

namespace A289812.P5186258553597222965
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ))) * (∑ p ∈ Nat.primeFactors (f3 n), Int.lor 1 ((Nat.factorization (f3 n) p : ℤ) - 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A289812.P5186258553597222965

/-! ## A289812.P11418201085999966123

`comp[∏{p}[n+1, -#]*∑{e}[n+1, val((2*#)!, 2)]]`
-/

namespace A289812.P11418201085999966123
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ))) * ((∑ p ∈ Nat.primeFactors (f3 n), SequenceMachineLib.valuation (Nat.factorial (2 * Nat.factorization (f3 n) p)) 2 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A289812.P11418201085999966123

/-! ## A289812.P8712207512826202951

`comp[((n+1)*∑{e}[n+1, #])%(∏{d}[n+1, #]/(n+1))²]`
-/

namespace A289812.P8712207512826202951
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((n + 1) * (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) : ℕ) : ℤ) (SequenceMachineLib.roundAway ((((∏ d ∈ Nat.divisors (f3 n), d : ℕ) : ℚ) / (n + 1 : ℚ)) ^ 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A289812.P8712207512826202951

/-!
# A289813: A binary encoding of the ones in ternary representation of n (see Comments for precise definition).

The programs for A289813, the canonical program `A289813.P9011554254818249259` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289813 has offset 0).

The definition of A289813 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004488, A289814, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A289813.P9011554254818249259

`A289814(A004488(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A289813

/-- `A289814(A004488(n))` -/
def P9011554254818249259.Spec : Prop :=
  ∀ n, P9011554254818249259.a n = A289813 n

theorem P9011554254818249259.correct : P9011554254818249259.Spec := by
  intro n
  simp only [A289813]

end A289813

/-! ## A289813.P13732336957827908515

`xor(2^val(n, 3), a(n-1))` with `a(0)=0`
-/

namespace A289813.P13732336957827908515
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor (2 ^ SequenceMachineLib.valuation n 3) (a (n - 1))

end

end A289813.P13732336957827908515

namespace A289813

/-- `xor(2^val(n, 3), a(n-1))` -/
def P13732336957827908515.Spec : Prop :=
  ∀ n, (P13732336957827908515.a n : ℤ) = A289813 n

end A289813

/-! ## A289813.P14085891103918538701

`xor(2*a(floor(n/3))+n-3*floor(n/3)-n²%3, n²%3)` with `a(0)=0`
-/

namespace A289813.P14085891103918538701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (2 * a ⌊(n : ℚ) / 3⌋.toNat + ((n : ℤ) - 3 * ⌊(n : ℚ) / 3⌋) - ((n ^ 2 % 3 : ℕ) : ℤ)) ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A289813.P14085891103918538701

namespace A289813

/-- `xor(2*a(floor(n/3))+n-3*floor(n/3)-n²%3, n²%3)` -/
def P14085891103918538701.Spec : Prop :=
  ∀ n, P14085891103918538701.a n = A289813 n

end A289813

/-! ## A289813.P16080343970712835545

`A356248(n)-1`
-/

namespace A289813.P16080343970712835545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356248 n - 1

end

end A289813.P16080343970712835545

namespace A289813

/-- `A356248(n)-1` -/
def P16080343970712835545.Spec : Prop :=
  ∀ n, P16080343970712835545.a n = A289813 n

end A289813

/-! ## A289813.P4790752741799589511

`A065361(A244042(n))`
-/

namespace A289813.P4790752741799589511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (A244042 n).toNat

end

end A289813.P4790752741799589511

namespace A289813

/-- `A065361(A244042(n))` -/
def P4790752741799589511.Spec : Prop :=
  ∀ n, P4790752741799589511.a n = A289813 n

end A289813

/-! ## A289813.P16219413393290549717

`A343231(A093347(n+1))`
-/

namespace A289813.P16219413393290549717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343231 (A093347 (n + 1)).toNat

end

end A289813.P16219413393290549717

namespace A289813

/-- `A343231(A093347(n+1))` -/
def P16219413393290549717.Spec : Prop :=
  ∀ n, P16219413393290549717.a n = A289813 n

end A289813

/-! ## A289813.P10852774066981760665

`A289831(n)-A289814(n)`
-/

namespace A289813.P10852774066981760665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 n - A289814 n

end

end A289813.P10852774066981760665

namespace A289813

/-- `A289831(n)-A289814(n)` -/
def P10852774066981760665.Spec : Prop :=
  ∀ n, P10852774066981760665.a n = A289813 n

end A289813

/-! ## A289813.P7533624841459336164

`A289831(n-A300222(n))`
-/

namespace A289813.P7533624841459336164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 ((n : ℤ) - A300222 n).toNat

end

end A289813.P7533624841459336164

namespace A289813

/-- `A289831(n-A300222(n))` -/
def P7533624841459336164.Spec : Prop :=
  ∀ n, P7533624841459336164.a n = A289813 n

end A289813

/-! ## A289813.P17762897575044590158

`A065361(n)-2*A289814(n)`
-/

namespace A289813.P17762897575044590158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 n - 2 * A289814 n

end

end A289813.P17762897575044590158

namespace A289813

/-- `A065361(n)-2*A289814(n)` -/
def P17762897575044590158.Spec : Prop :=
  ∀ n, P17762897575044590158.a n = A289813 n

end A289813

/-! ## A289813.P6839806034445103820

`2*A289831(n)-A065361(n)`
-/

namespace A289813.P6839806034445103820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A289831 n - A065361 n

end

end A289813.P6839806034445103820

namespace A289813

/-- `2*A289831(n)-A065361(n)` -/
def P6839806034445103820.Spec : Prop :=
  ∀ n, P6839806034445103820.a n = A289813 n

end A289813

/-! ## A289813.P5172362198053167600

`A292371(A023717(n))`
-/

namespace A289813.P5172362198053167600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 (A023717 n).toNat

end

end A289813.P5172362198053167600

namespace A289813

/-- `A292371(A023717(n))` -/
def P5172362198053167600.Spec : Prop :=
  ∀ n, P5172362198053167600.a n = A289813 n

end A289813

/-! ## A289813.P13510679347625449630

`A292371(A023713(n+1))`
-/

namespace A289813.P13510679347625449630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 (A023713 (n + 1)).toNat

end

end A289813.P13510679347625449630

namespace A289813

/-- `A292371(A023713(n+1))` -/
def P13510679347625449630.Spec : Prop :=
  ∀ n, P13510679347625449630.a n = A289813 n

end A289813

/-! ## A289813.P2995795614145329854

`A289814(n)-A328749(n)`
-/

namespace A289813.P2995795614145329854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 n - A328749 n

end

end A289813.P2995795614145329854

namespace A289813

/-- `A289814(n)-A328749(n)` -/
def P2995795614145329854.Spec : Prop :=
  ∀ n, P2995795614145329854.a n = A289813 n

end A289813

/-! ## A289813.P5016100590874308172

`A289831(n)-A289831(A374362(n))`
-/

namespace A289813.P5016100590874308172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 n - A289831 (A374362 n).toNat

end

end A289813.P5016100590874308172

namespace A289813

/-- `A289831(n)-A289831(A374362(n))` -/
def P5016100590874308172.Spec : Prop :=
  ∀ n, P5016100590874308172.a n = A289813 n

end A289813

/-! ## A289813.P14549970794512376260

`A003188(A332497(n))`
-/

namespace A289813.P14549970794512376260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A332497 n).toNat

end

end A289813.P14549970794512376260

namespace A289813

/-- `A003188(A332497(n))` -/
def P14549970794512376260.Spec : Prop :=
  ∀ n, P14549970794512376260.a n = A289813 n

end A289813

/-! ## A289813.P928518500613895888

`A289814(A256293(n))`
-/

namespace A289813.P928518500613895888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (A256293 n).toNat

end

end A289813.P928518500613895888

namespace A289813

/-- `A289814(A256293(n))` -/
def P928518500613895888.Spec : Prop :=
  ∀ n, P928518500613895888.a n = A289813 n

end A289813

/-! ## A289813.P8562200104977672529

`A295989(A353661(n))`
-/

namespace A289813.P8562200104977672529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295989 (A353661 n).toNat

end

end A289813.P8562200104977672529

namespace A289813

/-- `A295989(A353661(n))` -/
def P8562200104977672529.Spec : Prop :=
  ∀ n, P8562200104977672529.a n = A289813 n

end A289813

/-! ## A289813.P3662505232642944079

`A292372(A023709(n+1))`
-/

namespace A289813.P3662505232642944079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 (A023709 (n + 1)).toNat

end

end A289813.P3662505232642944079

namespace A289813

/-- `A292372(A023709(n+1))` -/
def P3662505232642944079.Spec : Prop :=
  ∀ n, P3662505232642944079.a n = A289813 n

end A289813

/-! ## A289813.P15016789921458141104

`A289814(2*A244042(n))`
-/

namespace A289813.P15016789921458141104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (2 * A244042 n).toNat

end

end A289813.P15016789921458141104

namespace A289813

/-- `A289814(2*A244042(n))` -/
def P15016789921458141104.Spec : Prop :=
  ∀ n, P15016789921458141104.a n = A289813 n

end A289813

/-! ## A289813.P15350397734092280013

`A292371(eq[0, A292373(n)])`
-/

namespace A289813.P15350397734092280013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289813.P15350397734092280013

namespace A289813

/-- `A292371(eq[0, A292373(n)])` -/
def P15350397734092280013.Spec : Prop :=
  ∀ n, P15350397734092280013.a n = A289813 n

end A289813

/-!
# A289814: A binary encoding of the twos in ternary representation of n (see Comments for precise definition).

The programs for A289814, the canonical program `A289814.P11371932108795153936` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289814 has offset 0).

The definition of A289814 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289814.P4538161493518721492

`A289813(A004488(n))`
-/

namespace A289814.P4538161493518721492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A004488 n).toNat

end

end A289814.P4538161493518721492

namespace A289814

/-- `A289813(A004488(n))` -/
def P4538161493518721492.Spec : Prop :=
  ∀ n, P4538161493518721492.a n = A289814 n

end A289814

/-! ## A289814.P11371932108795153936

`2*a(floor(n/3))+n-3*floor(n/3)-n²%3` with `a(0)=0`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A289814

/-- `2*a(floor(n/3))+n-3*floor(n/3)-n²%3` -/
def P11371932108795153936.Spec : Prop :=
  ∀ n, P11371932108795153936.a n = A289814 n

theorem P11371932108795153936.correct : P11371932108795153936.Spec := by
  intro n
  simp only [A289814]

end A289814

/-! ## A289814.P4916642826660647404

`A061392(A300222(n))`
-/

namespace A289814.P4916642826660647404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 (A300222 n).toNat

end

end A289814.P4916642826660647404

namespace A289814

/-- `A061392(A300222(n))` -/
def P4916642826660647404.Spec : Prop :=
  ∀ n, P4916642826660647404.a n = A289814 n

end A289814

/-! ## A289814.P3462657296661299622

`A291770(A274601(n+1))`
-/

namespace A289814.P3462657296661299622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291770 (A274601 (n + 1)).toNat

end

end A289814.P3462657296661299622

namespace A289814

/-- `A291770(A274601(n+1))` -/
def P3462657296661299622.Spec : Prop :=
  ∀ n, P3462657296661299622.a n = A289814 n

end A289814

/-! ## A289814.P16082775769615966997

`A289813(A300222(n)/2)`
-/

namespace A289814.P16082775769615966997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (SequenceMachineLib.roundAway ((A300222 n : ℚ) / 2)).toNat

end

end A289814.P16082775769615966997

namespace A289814

/-- `A289813(A300222(n)/2)` -/
def P16082775769615966997.Spec : Prop :=
  ∀ n, P16082775769615966997.a n = A289814 n

end A289814

/-! ## A289814.P1043985936190560748

`A065361(n)-A289831(n)`
-/

namespace A289814.P1043985936190560748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 n - A289831 n

end

end A289814.P1043985936190560748

namespace A289814

/-- `A065361(n)-A289831(n)` -/
def P1043985936190560748.Spec : Prop :=
  ∀ n, P1043985936190560748.a n = A289814 n

end A289814

/-! ## A289814.P16183342600691827355

`A289831(n)-A289813(n)`
-/

namespace A289814.P16183342600691827355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 n - A289813 n

end

end A289814.P16183342600691827355

namespace A289814

/-- `A289831(n)-A289813(n)` -/
def P16183342600691827355.Spec : Prop :=
  ∀ n, P16183342600691827355.a n = A289814 n

end A289814

/-! ## A289814.P12079712468537318284

`A326819(A374790(n))`
-/

namespace A289814.P12079712468537318284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326819 (A374790 n).toNat

end

end A289814.P12079712468537318284

namespace A289814

/-- `A326819(A374790(n))` -/
def P12079712468537318284.Spec : Prop :=
  ∀ n, P12079712468537318284.a n = A289814 n

end A289814

/-! ## A289814.P5078836061219009064

`A292373(A006288(n))`
-/

namespace A289814.P5078836061219009064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 (A006288 n).toNat

end

end A289814.P5078836061219009064

namespace A289814

/-- `A292373(A006288(n))` -/
def P5078836061219009064.Spec : Prop :=
  ∀ n, P5078836061219009064.a n = A289814 n

end A289814

/-! ## A289814.P15437194438313384156

`A292372(A023717(n))`
-/

namespace A289814.P15437194438313384156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 (A023717 n).toNat

end

end A289814.P15437194438313384156

namespace A289814

/-- `A292372(A023717(n))` -/
def P15437194438313384156.Spec : Prop :=
  ∀ n, P15437194438313384156.a n = A289814 n

end A289814

/-! ## A289814.P418619800208836627

`A065361(A374362(n))`
-/

namespace A289814.P418619800208836627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (A374362 n).toNat

end

end A289814.P418619800208836627

namespace A289814

/-- `A065361(A374362(n))` -/
def P418619800208836627.Spec : Prop :=
  ∀ n, P418619800208836627.a n = A289814 n

end A289814

/-! ## A289814.P9473859082556371674

`A289831(2*A374362(n))`
-/

namespace A289814.P9473859082556371674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (2 * A374362 n).toNat

end

end A289814.P9473859082556371674

namespace A289814

/-- `A289831(2*A374362(n))` -/
def P9473859082556371674.Spec : Prop :=
  ∀ n, P9473859082556371674.a n = A289814 n

end A289814

/-! ## A289814.P14491946570228601026

`A328749(n)+A289813(n)`
-/

namespace A289814.P14491946570228601026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328749 n + A289813 n

end

end A289814.P14491946570228601026

namespace A289814

/-- `A328749(n)+A289813(n)` -/
def P14491946570228601026.Spec : Prop :=
  ∀ n, P14491946570228601026.a n = A289814 n

end A289814

/-! ## A289814.P2295804472313949349

`A343228(A374362(2*n-n))`
-/

namespace A289814.P2295804472313949349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343228 (A374362 (2 * n - n)).toNat

end

end A289814.P2295804472313949349

namespace A289814

/-- `A343228(A374362(2*n-n))` -/
def P2295804472313949349.Spec : Prop :=
  ∀ n, P2295804472313949349.a n = A289814 n

end A289814

/-! ## A289814.P12215995917251295402

`A289831(A374362(n)+A374362(n))`
-/

namespace A289814.P12215995917251295402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (A374362 n + A374362 n).toNat

end

end A289814.P12215995917251295402

namespace A289814

/-- `A289831(A374362(n)+A374362(n))` -/
def P12215995917251295402.Spec : Prop :=
  ∀ n, P12215995917251295402.a n = A289814 n

end A289814

/-! ## A289814.P14311138686859192774

`A003188(A332498(n))`
-/

namespace A289814.P14311138686859192774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A332498 n).toNat

end

end A289814.P14311138686859192774

namespace A289814

/-- `A003188(A332498(n))` -/
def P14311138686859192774.Spec : Prop :=
  ∀ n, P14311138686859192774.a n = A289814 n

end A289814

/-! ## A289814.P2169227733823563970

`A295989(A368230(n))`
-/

namespace A289814.P2169227733823563970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295989 (A368230 n).toNat

end

end A289814.P2169227733823563970

namespace A289814

/-- `A295989(A368230(n))` -/
def P2169227733823563970.Spec : Prop :=
  ∀ n, P2169227733823563970.a n = A289814 n

end A289814

/-! ## A289814.P4862225693547513089

`A343229(A338242(n))`
-/

namespace A289814.P4862225693547513089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343229 (A338242 n).toNat

end

end A289814.P4862225693547513089

namespace A289814

/-- `A343229(A338242(n))` -/
def P4862225693547513089.Spec : Prop :=
  ∀ n, P4862225693547513089.a n = A289814 n

end A289814

/-! ## A289814.P9176798497679954113

`A352910(A353661(n)+1)`
-/

namespace A289814.P9176798497679954113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352910 (A353661 n + 1).toNat

end

end A289814.P9176798497679954113

namespace A289814

/-- `A352910(A353661(n)+1)` -/
def P9176798497679954113.Spec : Prop :=
  ∀ n, P9176798497679954113.a n = A289814 n

end A289814

/-! ## A289814.P17882229495969205775

`A292372(lt[A292373(n), 1])`
-/

namespace A289814.P17882229495969205775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A289814.P17882229495969205775

namespace A289814

/-- `A292372(lt[A292373(n), 1])` -/
def P17882229495969205775.Spec : Prop :=
  ∀ n, P17882229495969205775.a n = A289814 n

end A289814

/-!
# A289815: The first of a pair of coprime numbers whose factorizations depend on the ternary representation of n (see Comments for precise definition).

The programs for A289815, there is no canonical definition to state claims against.
-/

/-! ## A289815.P18406990499113304771

`A289838(n)/A289816(n)`
-/

namespace A289815.P18406990499113304771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289838 n : ℚ) / (A289816 n : ℚ)

end

end A289815.P18406990499113304771

/-! ## A289815.P6213516497322035965

`A289272(A289831(n))/A289816(n)`
-/

namespace A289815.P6213516497322035965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289272 (A289831 n).toNat : ℚ) / (A289816 n : ℚ)

end

end A289815.P6213516497322035965

/-! ## A289815.P10647631685126262857

`A289816(A004488(n))`
-/

namespace A289815.P10647631685126262857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289816 (A004488 n).toNat

end

end A289815.P10647631685126262857

/-! ## A289815.P8673121678923251886

`A289816(A117966(n)+n)`
-/

namespace A289815.P8673121678923251886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289816 (A117966 n + (n : ℤ)).toNat

end

end A289815.P8673121678923251886

/-! ## A289815.P2422456340407088890

`A289816(A117967(n)-A117966(2*n))`
-/

namespace A289815.P2422456340407088890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289816 (A117967 n - A117966 (2 * n)).toNat

end

end A289815.P2422456340407088890

/-! ## A289815.P17025924251717183058

`A289816(A005843(n)-(n-A117966(n)))`
-/

namespace A289815.P17025924251717183058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289816 (A005843 n - ((n : ℤ) - A117966 n)).toNat

end

end A289815.P17025924251717183058

/-! ## A289815.P16945247229248219583

`A289816(A244042(n)+n)/A289816(n)`
-/

namespace A289815.P16945247229248219583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289816 (A244042 n + (n : ℤ)).toNat : ℚ) / (A289816 n : ℚ)

end

end A289815.P16945247229248219583

/-! ## A289815.P6474543084087082033

`A289816(A253586(∑[n]))`
-/

namespace A289815.P6474543084087082033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289816 (A253586 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A289815.P6474543084087082033

/-! ## A289815.P6900647191296955243

`A289816(A004489((n+1)*2*n))`
-/

namespace A289815.P6900647191296955243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289816 (A004489 ((n + 1) * (2 * n))).toNat

end

end A289815.P6900647191296955243

/-!
# A289816: The second of a pair of coprime numbers whose factorizations depend on the ternary representation of n (See Comments for precise definition).

The programs for A289816, there is no canonical definition to state claims against.
-/

/-! ## A289816.P6656585161120745097

`A289815(A004488(n))`
-/

namespace A289816.P6656585161120745097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289815 (A004488 n).toNat

end

end A289816.P6656585161120745097

/-! ## A289816.P8609429871216504808

`A289838(n)/A289815(n)`
-/

namespace A289816.P8609429871216504808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289838 n : ℚ) / (A289815 n : ℚ)

end

end A289816.P8609429871216504808

/-! ## A289816.P16361791619274183298

`A289272(A289831(n))/A289815(n)`
-/

namespace A289816.P16361791619274183298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289272 (A289831 n).toNat : ℚ) / (A289815 n : ℚ)

end

end A289816.P16361791619274183298

/-! ## A289816.P14483926316264222248

`A289815(A117966(n)+n)`
-/

namespace A289816.P14483926316264222248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289815 (A117966 n + (n : ℤ)).toNat

end

end A289816.P14483926316264222248

/-! ## A289816.P5161586008821394483

`A289815(A374363(n))/A289815(n)`
-/

namespace A289816.P5161586008821394483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289815 (A374363 n).toNat : ℚ) / (A289815 n : ℚ)

end

end A289816.P5161586008821394483

/-! ## A289816.P2530697068193865138

`A289815(A117967(n)-A117966(2*n))`
-/

namespace A289816.P2530697068193865138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289815 (A117967 n - A117966 (2 * n)).toNat

end

end A289816.P2530697068193865138

/-! ## A289816.P10311809423563414287

`A289815(A253586(∑[n]))`
-/

namespace A289816.P10311809423563414287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289815 (A253586 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A289816.P10311809423563414287

/-! ## A289816.P933137714531138533

`A289815(A004489((n+1)*2*n))`
-/

namespace A289816.P933137714531138533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289815 (A004489 ((n + 1) * (2 * n))).toNat

end

end A289816.P933137714531138533

/-!
# A289817: Primes of the form k!3-9, where k!3 is the triple factorial number (A007661).

The programs for A289817, there is no canonical definition to state claims against.
-/

/-! ## A289817.P2868166023524741420

`A007661(A243078(n+1))-9`
-/

namespace A289817.P2868166023524741420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007661 (A243078 (n + 1)).toNat - 9

end

end A289817.P2868166023524741420

/-! ## A289817.P17483019573040041293

`p?[A007661(n)-9]`
-/

namespace A289817.P17483019573040041293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007661 n - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289817.P17483019573040041293

/-!
# A289828: a(n) is the least k such that phi(k) = n*phi(n).

The programs for A289828, there is no canonical definition to state claims against.
-/

/-! ## A289828.P4605041884336894716

`A015126((n+1)²)`
-/

namespace A289828.P4605041884336894716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015126 ((n + 1) ^ 2)

end

end A289828.P4605041884336894716

/-! ## A289828.P13917124661482989601

`A051445(A023896(n+1))^ceil(sin(n)²)`
-/

namespace A289828.P13917124661482989601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051445 (A023896 (n + 1)).toNat : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A289828.P13917124661482989601

/-! ## A289828.P12305472401633097043

`A051445(A023896(n%a(n-1)+1))` with `a(0)=1`
-/

namespace A289828.P12305472401633097043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A051445 (A023896 (Int.tmod (n : ℤ) (a (n - 1)) + 1).toNat).toNat

end

end A289828.P12305472401633097043

/-! ## A289828.P6861342115089015405

`A051445(A023896(a(floor(2/(8*n)))+n))` with `a(0)=1`
-/

namespace A289828.P6861342115089015405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A051445 (A023896 (a ⌊2 / (8 * n : ℚ)⌋.toNat + (n : ℤ)).toNat).toNat

end

end A289828.P6861342115089015405

/-! ## A289828.P2051301453666729747

`A051445(A023896(n+1))-A000038(n)`
-/

namespace A289828.P2051301453666729747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051445 (A023896 (n + 1)).toNat - A000038 n

end

end A289828.P2051301453666729747

/-! ## A289828.P17594901492162557720

`A051445(A023896(n+1))^A057428(n)²`
-/

namespace A289828.P17594901492162557720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051445 (A023896 (n + 1)).toNat : ℚ) ^ (A057428 n ^ 2 : ℤ)

end

end A289828.P17594901492162557720

/-! ## A289828.P3530025177809439864

`A051445(A023896(n+1))^A062157(n)²`
-/

namespace A289828.P3530025177809439864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051445 (A023896 (n + 1)).toNat : ℚ) ^ (A062157 n ^ 2 : ℤ)

end

end A289828.P3530025177809439864

/-! ## A289828.P8541179033540822654

`A051445(A023896(n+1))-2*A000007(n)`
-/

namespace A289828.P8541179033540822654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051445 (A023896 (n + 1)).toNat - 2 * A000007 n

end

end A289828.P8541179033540822654

/-! ## A289828.P16110908399946947785

`A051445(A023896(n+1))^A019427(2*n)`
-/

namespace A289828.P16110908399946947785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051445 (A023896 (n + 1)).toNat : ℚ) ^ (A019427 (2 * n) : ℤ)

end

end A289828.P16110908399946947785

/-! ## A289828.P4476438650881874372

`A051445(A023896(n+1))^(A000040(n+1)%2)`
-/

namespace A289828.P4476438650881874372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051445 (A023896 (n + 1)).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A289828.P4476438650881874372

/-! ## A289828.P16217526009215997532

`A051445(A023896(n+1))^(2*n-A004273(n))`
-/

namespace A289828.P16217526009215997532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051445 (A023896 (n + 1)).toNat : ℚ) ^ ((2 * n : ℤ) - A004273 n : ℤ)

end

end A289828.P16217526009215997532

/-! ## A289828.P10244606329961717615

`A051445(A023896(n+1))^A001221(A001316(n))`
-/

namespace A289828.P10244606329961717615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051445 (A023896 (n + 1)).toNat : ℚ) ^ (A001221 (A001316 n).toNat : ℤ)

end

end A289828.P10244606329961717615

/-! ## A289828.P8745034685639060786

`A051445(A023896(n+1))^A001876(A001876(n))`
-/

namespace A289828.P8745034685639060786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051445 (A023896 (n + 1)).toNat : ℚ) ^ (A001876 (A001876 n).toNat : ℤ)

end

end A289828.P8745034685639060786

/-! ## A289828.P15596402562194795836

`A051445(A023896(n+1))^A048766(A048766(n))`
-/

namespace A289828.P15596402562194795836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051445 (A023896 (n + 1)).toNat : ℚ) ^ (A048766 (A048766 n).toNat : ℤ)

end

end A289828.P15596402562194795836

/-! ## A289828.P14479068599053840956

`A051445(A023896(n+1))^A001221(A137688(n))`
-/

namespace A289828.P14479068599053840956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051445 (A023896 (n + 1)).toNat : ℚ) ^ (A001221 (A137688 n).toNat : ℤ)

end

end A289828.P14479068599053840956

/-! ## A289828.P7432765906735828003

`A051445(A023896(n+1))-A237420(A171045(n+1))`
-/

namespace A289828.P7432765906735828003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051445 (A023896 (n + 1)).toNat - A237420 (A171045 (n + 1)).toNat

end

end A289828.P7432765906735828003

/-! ## A289828.P12453223870030133630

`A051445(A023896(n+1))^A001222(A008578(n+1))`
-/

namespace A289828.P12453223870030133630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051445 (A023896 (n + 1)).toNat : ℚ) ^ (A001222 (A008578 (n + 1)).toNat : ℤ)

end

end A289828.P12453223870030133630

/-! ## A289828.P9588702485950035734

`A051445(A023896(n+1))^A001222(A035306(2*n+1))`
-/

namespace A289828.P9588702485950035734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051445 (A023896 (n + 1)).toNat : ℚ) ^ (A001222 (A035306 (2 * n + 1)).toNat : ℤ)

end

end A289828.P9588702485950035734

/-! ## A289828.P16142401427954597873

`(A051445(A023896(n+1))+A036689(n+1))%A036689(n+1)`
-/

namespace A289828.P16142401427954597873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051445 (A023896 (n + 1)).toNat + A036689 (n + 1)) (A036689 (n + 1))

end

end A289828.P16142401427954597873

/-!
# A289829: Perfect squares of the form prime(k+1)^2 - prime(k)^2 + 1 where prime(k) is the k-th prime number.

The programs for A289829, there is no canonical definition to state claims against.
-/

/-! ## A289829.P8166055181973945884

`∩[A234523(n+4)+1, n²]`
-/

namespace A289829.P8166055181973945884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234523 (n + 4) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A289829.P8166055181973945884

/-! ## A289829.P10779117814440962761

`A130041(A045393(n+2))`
-/

namespace A289829.P10779117814440962761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130041 (A045393 (n + 2)).toNat

end

end A289829.P10779117814440962761

/-! ## A289829.P14080287873924341048

`A130041(A132143(n+2))`
-/

namespace A289829.P14080287873924341048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130041 (A132143 (n + 2)).toNat

end

end A289829.P14080287873924341048

/-! ## A289829.P2390922992765794221

`A096896(A001097(n+2))-4`
-/

namespace A289829.P2390922992765794221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096896 (A001097 (n + 2)).toNat - 4

end

end A289829.P2390922992765794221

/-! ## A289829.P12733174820522266182

`A045966(A030146(n+1))`
-/

namespace A289829.P12733174820522266182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045966 (A030146 (n + 1)).toNat

end

end A289829.P12733174820522266182

/-!
# A289830: a(n) satisfies the equation n/(n-1) + a(n)/n! = H(n), where H(n) is the n-th harmonic number.

The programs for A289830, there is no canonical definition to state claims against.
-/

/-! ## A289830.P11199238553923824666

`(A001705(n)-A081047(n))*(n+1)`
-/

namespace A289830.P11199238553923824666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001705 n - A081047 n) * (n + 1 : ℤ)

end

end A289830.P11199238553923824666

/-! ## A289830.P6597792238943394179

`A001705(n+1)-(n+2)*A000142(n)`
-/

namespace A289830.P6597792238943394179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001705 (n + 1) - (n + 2 : ℤ) * A000142 n

end

end A289830.P6597792238943394179

/-! ## A289830.P12752494316189332028

`A079510(A000096(n+1))-A081123(2*n)`
-/

namespace A289830.P12752494316189332028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079510 (A000096 (n + 1)).toNat - A081123 (2 * n)

end

end A289830.P12752494316189332028

/-! ## A289830.P18224509788768842660

`A006675(n+1)+A001705(n)-A000142(n)`
-/

namespace A289830.P18224509788768842660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006675 (n + 1) + (A001705 n - A000142 n)

end

end A289830.P18224509788768842660

/-! ## A289830.P8234806247527515214

`A001705(n+1)-(A000142(n+1)+A000142(n))`
-/

namespace A289830.P8234806247527515214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001705 (n + 1) - (A000142 (n + 1) + A000142 n)

end

end A289830.P8234806247527515214

/-!
# A289831: a(n) = A289813(n) + A289814(n).

The programs for A289831, the canonical program `A289831.P1355285298190598776` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289831 has offset 0).

The definition of A289831 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289813, A289814, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A289831.P1355285298190598776

`A289813(n)+A289814(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A289831

/-- `A289813(n)+A289814(n)` -/
def P1355285298190598776.Spec : Prop :=
  ∀ n, P1355285298190598776.a n = A289831 n

theorem P1355285298190598776.correct : P1355285298190598776.Spec := by
  intro n
  simp only [A289831]

end A289831

/-! ## A289831.P10688056915964741882

`A065361(n)-A289814(n)`
-/

namespace A289831.P10688056915964741882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 n - A289814 n

end

end A289831.P10688056915964741882

namespace A289831

/-- `A065361(n)-A289814(n)` -/
def P10688056915964741882.Spec : Prop :=
  ∀ n, P10688056915964741882.a n = A289831 n

end A289831

/-! ## A289831.P4892706504406348179

`A065361((A244042(n)+n)/2)`
-/

namespace A289831.P4892706504406348179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (SequenceMachineLib.roundAway ((A244042 n + (n : ℤ) : ℚ) / 2)).toNat

end

end A289831.P4892706504406348179

namespace A289831

/-- `A065361((A244042(n)+n)/2)` -/
def P4892706504406348179.Spec : Prop :=
  ∀ n, P4892706504406348179.a n = A289831 n

end A289831

/-! ## A289831.P12670064053008221181

`A289813((A244042(n)+n)/2)`
-/

namespace A289831.P12670064053008221181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (SequenceMachineLib.roundAway ((A244042 n + (n : ℤ) : ℚ) / 2)).toNat

end

end A289831.P12670064053008221181

namespace A289831

/-- `A289813((A244042(n)+n)/2)` -/
def P12670064053008221181.Spec : Prop :=
  ∀ n, P12670064053008221181.a n = A289831 n

end A289831

/-! ## A289831.P12762372411596355147

`A289813(n-A300222(n)/2)`
-/

namespace A289831.P12762372411596355147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (SequenceMachineLib.roundAway ((n : ℚ) - (A300222 n : ℚ) / 2)).toNat

end

end A289831.P12762372411596355147

namespace A289831

/-- `A289813(n-A300222(n)/2)` -/
def P12762372411596355147.Spec : Prop :=
  ∀ n, P12762372411596355147.a n = A289831 n

end A289831

/-! ## A289831.P10836467007878554162

`A060585(A105529(n))`
-/

namespace A289831.P10836467007878554162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060585 (A105529 n).toNat

end

end A289831.P10836467007878554162

namespace A289831

/-- `A060585(A105529(n))` -/
def P10836467007878554162.Spec : Prop :=
  ∀ n, P10836467007878554162.a n = A289831 n

end A289831

/-! ## A289831.P6437961264389164029

`A065361(n-A374362(n))`
-/

namespace A289831.P6437961264389164029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 ((n : ℤ) - A374362 n).toNat

end

end A289831.P6437961264389164029

namespace A289831

/-- `A065361(n-A374362(n))` -/
def P6437961264389164029.Spec : Prop :=
  ∀ n, P6437961264389164029.a n = A289831 n

end A289831

/-! ## A289831.P9112940830973218122

`A289813(n-A374362(n))`
-/

namespace A289831.P9112940830973218122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 ((n : ℤ) - A374362 n).toNat

end

end A289831.P9112940830973218122

namespace A289831

/-- `A289813(n-A374362(n))` -/
def P9112940830973218122.Spec : Prop :=
  ∀ n, P9112940830973218122.a n = A289831 n

end A289831

/-! ## A289831.P7211398762751342098

`A343228(n-A374362(n))`
-/

namespace A289831.P7211398762751342098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343228 ((n : ℤ) - A374362 n).toNat

end

end A289831.P7211398762751342098

namespace A289831

/-- `A343228(n-A374362(n))` -/
def P7211398762751342098.Spec : Prop :=
  ∀ n, P7211398762751342098.a n = A289831 n

end A289831

/-! ## A289831.P14529015026086656559

`A343231(n-A374362(n))`
-/

namespace A289831.P14529015026086656559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343231 ((n : ℤ) - A374362 n).toNat

end

end A289831.P14529015026086656559

namespace A289831

/-- `A343231(n-A374362(n))` -/
def P14529015026086656559.Spec : Prop :=
  ∀ n, P14529015026086656559.a n = A289831 n

end A289831

/-! ## A289831.P13778119911073755225

`A328749(n)+2*A289813(n)`
-/

namespace A289831.P13778119911073755225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328749 n + 2 * A289813 n

end

end A289831.P13778119911073755225

namespace A289831

/-- `A328749(n)+2*A289813(n)` -/
def P13778119911073755225.Spec : Prop :=
  ∀ n, P13778119911073755225.a n = A289831 n

end A289831

/-! ## A289831.P16335409165706491015

`2*A289814(n)-A328749(n)`
-/

namespace A289831.P16335409165706491015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A289814 n - A328749 n

end

end A289831.P16335409165706491015

namespace A289831

/-- `2*A289814(n)-A328749(n)` -/
def P16335409165706491015.Spec : Prop :=
  ∀ n, P16335409165706491015.a n = A289831 n

end A289831

/-! ## A289831.P8990575216359719453

`A289813(n)+A289813(A374362(n))`
-/

namespace A289831.P8990575216359719453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 n + A289813 (A374362 n).toNat

end

end A289831.P8990575216359719453

namespace A289831

/-- `A289813(n)+A289813(A374362(n))` -/
def P8990575216359719453.Spec : Prop :=
  ∀ n, P8990575216359719453.a n = A289831 n

end A289831

/-! ## A289831.P15660106388099050561

`A065361(A374363(n))`
-/

namespace A289831.P15660106388099050561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (A374363 n).toNat

end

end A289831.P15660106388099050561

namespace A289831

/-- `A065361(A374363(n))` -/
def P15660106388099050561.Spec : Prop :=
  ∀ n, P15660106388099050561.a n = A289831 n

end A289831

/-! ## A289831.P5426166945945086776

`A289814(2*A374363(n))`
-/

namespace A289831.P5426166945945086776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (2 * A374363 n).toNat

end

end A289831.P5426166945945086776

namespace A289831

/-- `A289814(2*A374363(n))` -/
def P5426166945945086776.Spec : Prop :=
  ∀ n, P5426166945945086776.a n = A289831 n

end A289831

/-! ## A289831.P17981778757390317493

`A289814(A244042(n)+n)`
-/

namespace A289831.P17981778757390317493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (A244042 n + (n : ℤ)).toNat

end

end A289831.P17981778757390317493

namespace A289831

/-- `A289814(A244042(n)+n)` -/
def P17981778757390317493.Spec : Prop :=
  ∀ n, P17981778757390317493.a n = A289831 n

end A289831

/-! ## A289831.P13364245188036612433

`A061392(2*n-A300222(n))`
-/

namespace A289831.P13364245188036612433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 ((2 * n : ℤ) - A300222 n).toNat

end

end A289831.P13364245188036612433

namespace A289831

/-- `A061392(2*n-A300222(n))` -/
def P13364245188036612433.Spec : Prop :=
  ∀ n, P13364245188036612433.a n = A289831 n

end A289831

/-! ## A289831.P12711852183106909552

`A289814(2*n-A300222(n))`
-/

namespace A289831.P12711852183106909552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 ((2 * n : ℤ) - A300222 n).toNat

end

end A289831.P12711852183106909552

namespace A289831

/-- `A289814(2*n-A300222(n))` -/
def P12711852183106909552.Spec : Prop :=
  ∀ n, P12711852183106909552.a n = A289831 n

end A289831

/-! ## A289831.P10214061495832435136

`A343228(A374363(2*n-n))`
-/

namespace A289831.P10214061495832435136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343228 (A374363 (2 * n - n)).toNat

end

end A289831.P10214061495832435136

namespace A289831

/-- `A343228(A374363(2*n-n))` -/
def P10214061495832435136.Spec : Prop :=
  ∀ n, P10214061495832435136.a n = A289831 n

end A289831

/-! ## A289831.P13557820279452284603

`A061392(n-A300222(n)+n)`
-/

namespace A289831.P13557820279452284603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 ((n : ℤ) - A300222 n + (n : ℤ)).toNat

end

end A289831.P13557820279452284603

namespace A289831

/-- `A061392(n-A300222(n)+n)` -/
def P13557820279452284603.Spec : Prop :=
  ∀ n, P13557820279452284603.a n = A289831 n

end A289831

/-!
# A289833: Fourier coefficients of -q*(Delta/q)' where Delta is the normalized unique weight-twelve cusp form for the full modular group (the generating function of Ramanujan's tau function).

The programs for A289833, there is no canonical definition to state claims against.
-/

/-! ## A289833.P17603490961465290835

`-((n+1)*A000594(n+2))`
-/

namespace A289833.P17603490961465290835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n + 1 : ℤ) * A000594 (n + 2))

end

end A289833.P17603490961465290835

/-! ## A289833.P11452794024684136517

`Δ[a(n-1)-n*A000594(n+1)]` with `a(0)=0`
-/

namespace A289833.P11452794024684136517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - (n : ℤ) * A000594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289833.P11452794024684136517

/-! ## A289833.P1138731088717034029

`(1-A000027(n+2))*A000594(n+2)`
-/

namespace A289833.P1138731088717034029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000027 (n + 2)) * A000594 (n + 2)

end

end A289833.P1138731088717034029

/-! ## A289833.P2052368028326717392

`(n-A004273(n+1))*A000594(n+2)`
-/

namespace A289833.P2052368028326717392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A004273 (n + 1)) * A000594 (n + 2)

end

end A289833.P2052368028326717392

/-! ## A289833.P17159937239742773345

`(n-A000265(2*n+1))*A000594(n+2)`
-/

namespace A289833.P17159937239742773345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A000265 (2 * n + 1)) * A000594 (n + 2)

end

end A289833.P17159937239742773345

/-! ## A289833.P3969809646601549390

`(A000217(n)-A000217(n+1))*A000594(n+2)`
-/

namespace A289833.P3969809646601549390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 n - A000217 (n + 1)) * A000594 (n + 2)

end

end A289833.P3969809646601549390

/-! ## A289833.P10895877325448296923

`A000594(n+2)-A145155(n+1)`
-/

namespace A289833.P10895877325448296923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (n + 2) - A145155 (n + 1)

end

end A289833.P10895877325448296923

/-! ## A289833.P2531654974747648318

`A000594(n+2)*A001489(n+1)`
-/

namespace A289833.P2531654974747648318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (n + 2) * A001489 (n + 1)

end

end A289833.P2531654974747648318

/-! ## A289833.P4518357988827399843

`A144248(n+1)-Δ[n*A144248(n+1)]`
-/

namespace A289833.P4518357988827399843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A144248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144248 (n + 1) - (f1 (n + 1) - f1 n)

end

end A289833.P4518357988827399843

/-! ## A289833.P9018815816620185718

`(A152950(n+1)-A152950(n+2))*A000594(n+2)`
-/

namespace A289833.P9018815816620185718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A152950 (n + 1) - A152950 (n + 2)) * A000594 (n + 2)

end

end A289833.P9018815816620185718

/-! ## A289833.P3483983366129865902

`(n-A008619(4*n))*A000594(n+2)`
-/

namespace A289833.P3483983366129865902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A008619 (4 * n)) * A000594 (n + 2)

end

end A289833.P3483983366129865902

/-! ## A289833.P6161907019342843043

`(A010815(n+1)-A286956(n+1))*A000594(n+2)`
-/

namespace A289833.P6161907019342843043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010815 (n + 1) - A286956 (n + 1)) * A000594 (n + 2)

end

end A289833.P6161907019342843043

/-!
# A289834: Number of perfect matchings on n edges which represent RNA secondary folding structures characterized by the Lyngso and Pedersen (L&P) family and the Cao and Chen (C&C) family.

The programs for A289834, the canonical program `A289834.P15437554386682079727` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289834 has offset 0).

The definition of A289834 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289834.P15437554386682079727

`A000108(n)+∑[A279557(n)-1]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A289834

/-- `A000108(n)+∑[A279557(n)-1]` -/
def P15437554386682079727.Spec : Prop :=
  ∀ n, P15437554386682079727.a n = A289834 n

theorem P15437554386682079727.correct : P15437554386682079727.Spec := by
  intro n
  simp only [A289834]

end A289834

/-! ## A289834.P5051199437076888775

`∑[abs(A104496(n+1))]+A000108(n)`
-/

namespace A289834.P5051199437076888775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104496 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A000108 n

end

end A289834.P5051199437076888775

namespace A289834

/-- `∑[abs(A104496(n+1))]+A000108(n)` -/
def P5051199437076888775.Spec : Prop :=
  ∀ n, P5051199437076888775.a n = A289834 n

end A289834

/-! ## A289834.P15774026072530334648

`A081293(n)+∑[A000245(n)-A014137(n)]`
-/

namespace A289834.P15774026072530334648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n - A014137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081293 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289834.P15774026072530334648

namespace A289834

/-- `A081293(n)+∑[A000245(n)-A014137(n)]` -/
def P15774026072530334648.Spec : Prop :=
  ∀ n, P15774026072530334648.a n = A289834 n

end A289834

/-! ## A289834.P13457288929321310013

`A014138(n+1)+A000108(n)-A014140(n)`
-/

namespace A289834.P13457288929321310013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 (n + 1) + (A000108 n - A014140 n)

end

end A289834.P13457288929321310013

namespace A289834

/-- `A014138(n+1)+A000108(n)-A014140(n)` -/
def P13457288929321310013.Spec : Prop :=
  ∀ n, P13457288929321310013.a n = A289834 n

end A289834

/-! ## A289834.P11423666463411350101

`A057977(2*n)+∑[A279557(n)-1]`
-/

namespace A289834.P11423666463411350101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279557 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289834.P11423666463411350101

namespace A289834

/-- `A057977(2*n)+∑[A279557(n)-1]` -/
def P11423666463411350101.Spec : Prop :=
  ∀ n, P11423666463411350101.a n = A289834 n

end A289834

/-!
# A289837: Number of cliques in the n-tetrahedral graph.

The programs for A289837, the canonical program `A289837.P37901231936293752` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289837 has offset 1).

The definition of A289837 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289837.P37901231936293752

`1+C(n+1, 3)+(2^(n-1)-(n+1)+1)*C(n+1, 2)+5*C(n+1, 4)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A289837

/-- `1+C(n+1, 3)+(2^(n-1)-(n+1)+1)*C(n+1, 2)+5*C(n+1, 4)` -/
def P37901231936293752.Spec : Prop :=
  ∀ n, P37901231936293752.a n = (A289837 (n + 1) : ℚ)

end A289837

/-! ## A289837.P5685826636834387182

`A002375(A000108(2*n)+n+3)`
-/

namespace A289837.P5685826636834387182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (A000108 (2 * n) + (n + 3 : ℤ)).toNat

end

end A289837.P5685826636834387182

namespace A289837

/-- `A002375(A000108(2*n)+n+3)` -/
def P5685826636834387182.Spec : Prop :=
  ∀ n, P5685826636834387182.a n = A289837 (n + 1)

end A289837

/-!
# A289838: a(n) = A289815(n) * A289816(n).

The programs for A289838, there is no canonical definition to state claims against.
-/

/-! ## A289838.P10544356151351159779

`A289815(n)*A289816(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A289838.P10544356151351159779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289815 n * A289816 n

end

end A289838.P10544356151351159779

/-! ## A289838.P16405276842959446973

`A289272(A289831(n))`
-/

namespace A289838.P16405276842959446973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289272 (A289831 n).toNat

end

end A289838.P16405276842959446973

/-! ## A289838.P12532354970793559624

`A289815((A244042(n)+n)/2)`
-/

namespace A289838.P12532354970793559624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289815 (SequenceMachineLib.roundAway ((A244042 n + (n : ℤ) : ℚ) / 2)).toNat

end

end A289838.P12532354970793559624

/-! ## A289838.P7128604603879854525

`A289815(A004488(A244042(n)+n))`
-/

namespace A289838.P7128604603879854525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289815 (A004488 (A244042 n + (n : ℤ)).toNat).toNat

end

end A289838.P7128604603879854525

/-! ## A289838.P2647135627831531038

`A289815(A374363(n))`
-/

namespace A289838.P2647135627831531038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289815 (A374363 n).toNat

end

end A289838.P2647135627831531038

/-! ## A289838.P515156719057209394

`A289816(A244042(n)+n)`
-/

namespace A289838.P515156719057209394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289816 (A244042 n + (n : ℤ)).toNat

end

end A289838.P515156719057209394

/-! ## A289838.P2716594446943668673

`A289816(2*n-A300222(n))`
-/

namespace A289838.P2716594446943668673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289816 ((2 * n : ℤ) - A300222 n).toNat

end

end A289838.P2716594446943668673

/-! ## A289838.P16117317640210339267

`A289816(n-A300222(n)+n)`
-/

namespace A289838.P16117317640210339267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289816 ((n : ℤ) - A300222 n + (n : ℤ)).toNat

end

end A289838.P16117317640210339267

/-! ## A289838.P505263275327471335

`A289816(n-(A300222(n)-n))`
-/

namespace A289838.P505263275327471335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289816 ((n : ℤ) - (A300222 n - (n : ℤ))).toNat

end

end A289838.P505263275327471335

/-! ## A289838.P11361433524837180142

`A289815(n-A244042(A004488(n)))`
-/

namespace A289838.P11361433524837180142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289815 ((n : ℤ) - A244042 (A004488 n).toNat).toNat

end

end A289838.P11361433524837180142

/-! ## A289838.P7701157001670212649

`A289815(A004488(n))*A289815(n)`
-/

namespace A289838.P7701157001670212649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289815 (A004488 n).toNat * A289815 n

end

end A289838.P7701157001670212649

/-! ## A289838.P4575277605794826504

`A289816(A004488(n))*A289816(n)`
-/

namespace A289838.P4575277605794826504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289816 (A004488 n).toNat * A289816 n

end

end A289838.P4575277605794826504

/-! ## A289838.P3028843488912132303

`A289816(A005836(A289813(n)+1)+n)`
-/

namespace A289838.P3028843488912132303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289816 (A005836 (A289813 n + 1).toNat + (n : ℤ)).toNat

end

end A289838.P3028843488912132303

/-! ## A289838.P418878431734065375

`A289815(A117966(n)+n)*A289815(n)`
-/

namespace A289838.P418878431734065375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289815 (A117966 n + (n : ℤ)).toNat * A289815 n

end

end A289838.P418878431734065375

/-! ## A289838.P1384466496173812775

`A289816(A117966(n)+n)*A289816(n)`
-/

namespace A289838.P1384466496173812775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289816 (A117966 n + (n : ℤ)).toNat * A289816 n

end

end A289838.P1384466496173812775

/-! ## A289838.P9272361916932180711

`A289815(A253586(∑[n]))*A289815(n)`
-/

namespace A289838.P9272361916932180711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289815 (A253586 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat * A289815 n

end

end A289838.P9272361916932180711

/-! ## A289838.P458778683508341919

`A289816(A253586(∑[n]))*A289816(n)`
-/

namespace A289838.P458778683508341919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289816 (A253586 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat * A289816 n

end

end A289838.P458778683508341919

/-!
# A289839: Primes of the form 8*n^2+8*n+31.

The programs for A289839, the canonical program `A289839.P232396368753379632` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289839 has offset 1).

The definition of A289839 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289839.P232396368753379632

`∩[A007641(n+1), A127576(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A289839

/-- `∩[A007641(n+1), A127576(n+1)]` -/
def P232396368753379632.Spec : Prop :=
  ∀ n, (P232396368753379632.a n : ℤ) = A289839 (n + 1)

theorem P232396368753379632.correct : P232396368753379632.Spec := by
  intro n
  simp only [A289839, Nat.add_sub_cancel]

end A289839

/-! ## A289839.P5601598889203217152

`∩[A007641(n+1), A139896(n+1)]`
-/

namespace A289839.P5601598889203217152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289839.P5601598889203217152

namespace A289839

/-- `∩[A007641(n+1), A139896(n+1)]` -/
def P5601598889203217152.Spec : Prop :=
  ∀ n, (P5601598889203217152.a n : ℤ) = A289839 (n + 1)

end A289839

/-! ## A289839.P17531540196717413867

`p?[16*(∑[n]+2)-1]`
-/

namespace A289839.P17531540196717413867
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((16 * (∑ j ∈ Finset.range (n + 1), f2 j + 2) : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289839.P17531540196717413867

namespace A289839

/-- `p?[16*(∑[n]+2)-1]` -/
def P17531540196717413867.Spec : Prop :=
  ∀ n, P17531540196717413867.a n = A289839 (n + 1)

end A289839

/-! ## A289839.P13210523989886206979

`record[p?[lcm(2, (n+1)²)+29]]`
-/

namespace A289839.P13210523989886206979
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 ((n + 1) ^ 2) + 29

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289839.P13210523989886206979

namespace A289839

/-- `record[p?[lcm(2, (n+1)²)+29]]` -/
def P13210523989886206979.Spec : Prop :=
  ∀ n, (P13210523989886206979.a n : ℤ) = A289839 (n + 1)

end A289839

/-! ## A289839.P15748441939166256255

`record[p?[(n+1)²-a(n-2)]]` with `a(0)=31, a(1)=2`
-/

namespace A289839.P15748441939166256255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [31, 2] fun n f2 =>
  ((n + 1) ^ 2 : ℤ) - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289839.P15748441939166256255

namespace A289839

/-- `record[p?[(n+1)²-a(n-2)]]` -/
def P15748441939166256255.Spec : Prop :=
  ∀ n, P15748441939166256255.a n = A289839 (n + 1)

end A289839

/-! ## A289839.P2438332346251683692

`∩[A007522(n+1), A007641(n+1)]`
-/

namespace A289839.P2438332346251683692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289839.P2438332346251683692

namespace A289839

/-- `∩[A007522(n+1), A007641(n+1)]` -/
def P2438332346251683692.Spec : Prop :=
  ∀ n, (P2438332346251683692.a n : ℤ) = A289839 (n + 1)

end A289839

/-! ## A289839.P4590351551078389456

`∩[A007641(n+1), A045382(n+1)]`
-/

namespace A289839.P4590351551078389456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289839.P4590351551078389456

namespace A289839

/-- `∩[A007641(n+1), A045382(n+1)]` -/
def P4590351551078389456.Spec : Prop :=
  ∀ n, (P4590351551078389456.a n : ℤ) = A289839 (n + 1)

end A289839

/-! ## A289839.P6153270552753771666

`∩[A007641(n+1), A089199(n+1)]`
-/

namespace A289839.P6153270552753771666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289839.P6153270552753771666

namespace A289839

/-- `∩[A007641(n+1), A089199(n+1)]` -/
def P6153270552753771666.Spec : Prop :=
  ∀ n, (P6153270552753771666.a n : ℤ) = A289839 (n + 1)

end A289839

/-! ## A289839.P5001498646644642761

`∩[A007641(n+1), A014663(n+1)]`
-/

namespace A289839.P5001498646644642761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289839.P5001498646644642761

namespace A289839

/-- `∩[A007641(n+1), A014663(n+1)]` -/
def P5001498646644642761.Spec : Prop :=
  ∀ n, (P5001498646644642761.a n : ℤ) = A289839 (n + 1)

end A289839

/-! ## A289839.P12034028102586966669

`∩[A007641(n+1), A040098(n+1)]`
-/

namespace A289839.P12034028102586966669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289839.P12034028102586966669

namespace A289839

/-- `∩[A007641(n+1), A040098(n+1)]` -/
def P12034028102586966669.Spec : Prop :=
  ∀ n, (P12034028102586966669.a n : ℤ) = A289839 (n + 1)

end A289839

/-! ## A289839.P12219489143245146591

`∩[A004628(n+1), A007641(n+1)]`
-/

namespace A289839.P12219489143245146591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289839.P12219489143245146591

namespace A289839

/-- `∩[A004628(n+1), A007641(n+1)]` -/
def P12219489143245146591.Spec : Prop :=
  ∀ n, (P12219489143245146591.a n : ℤ) = A289839 (n + 1)

end A289839

/-! ## A289839.P17520697589853681759

`∩[A007641(n+1), A040141(n+1)]`
-/

namespace A289839.P17520697589853681759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289839.P17520697589853681759

namespace A289839

/-- `∩[A007641(n+1), A040141(n+1)]` -/
def P17520697589853681759.Spec : Prop :=
  ∀ n, (P17520697589853681759.a n : ℤ) = A289839 (n + 1)

end A289839

/-! ## A289839.P15737942916663740185

`∩[A007641(n+1), A036259(n+1)]`
-/

namespace A289839.P15737942916663740185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289839.P15737942916663740185

namespace A289839

/-- `∩[A007641(n+1), A036259(n+1)]` -/
def P15737942916663740185.Spec : Prop :=
  ∀ n, (P15737942916663740185.a n : ℤ) = A289839 (n + 1)

end A289839

/-! ## A289839.P9613891901047711540

`∩[A007641(n+1), A045315(n+1)]`
-/

namespace A289839.P9613891901047711540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289839.P9613891901047711540

namespace A289839

/-- `∩[A007641(n+1), A045315(n+1)]` -/
def P9613891901047711540.Spec : Prop :=
  ∀ n, (P9613891901047711540.a n : ℤ) = A289839 (n + 1)

end A289839

/-! ## A289839.P5350601286955946009

`∩[A001132(n+1), A007641(n+1)]`
-/

namespace A289839.P5350601286955946009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289839.P5350601286955946009

namespace A289839

/-- `∩[A001132(n+1), A007641(n+1)]` -/
def P5350601286955946009.Spec : Prop :=
  ∀ n, (P5350601286955946009.a n : ℤ) = A289839 (n + 1)

end A289839

/-! ## A289839.P12591331796445636969

`∩[A002145(n+1), A007641(n+1)]`
-/

namespace A289839.P12591331796445636969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289839.P12591331796445636969

namespace A289839

/-- `∩[A002145(n+1), A007641(n+1)]` -/
def P12591331796445636969.Spec : Prop :=
  ∀ n, (P12591331796445636969.a n : ℤ) = A289839 (n + 1)

end A289839

/-! ## A289839.P154632469440836802

`∩[A007641(n+1), A038873(n+1)]`
-/

namespace A289839.P154632469440836802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289839.P154632469440836802

namespace A289839

/-- `∩[A007641(n+1), A038873(n+1)]` -/
def P154632469440836802.Spec : Prop :=
  ∀ n, (P154632469440836802.a n : ℤ) = A289839 (n + 1)

end A289839

/-! ## A289839.P11092128894056635115

`∩[A007641(n+1), A038938(n+1)]`
-/

namespace A289839.P11092128894056635115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289839.P11092128894056635115

namespace A289839

/-- `∩[A007641(n+1), A038938(n+1)]` -/
def P11092128894056635115.Spec : Prop :=
  ∀ n, (P11092128894056635115.a n : ℤ) = A289839 (n + 1)

end A289839

/-! ## A289839.P13868490371155205612

`∩[A007641(n+1), A045326(n+1)]`
-/

namespace A289839.P13868490371155205612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289839.P13868490371155205612

namespace A289839

/-- `∩[A007641(n+1), A045326(n+1)]` -/
def P13868490371155205612.Spec : Prop :=
  ∀ n, (P13868490371155205612.a n : ℤ) = A289839 (n + 1)

end A289839

/-!
# A289840: Complex cross sequence (see Comments lines for definition).

The programs for A289840, there is no canonical definition to state claims against.
-/

/-! ## A289840.P2074912016809012695

`∑[A289841(n)]`
-/

namespace A289840.P2074912016809012695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289840.P2074912016809012695

/-! ## A289840.P11171201333410807592

`A289841(n)+a(A023443(n))` with `a(0)=0`
-/

namespace A289840.P11171201333410807592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A289841 n + a (A023443 n).toNat

end

end A289840.P11171201333410807592

/-! ## A289840.P2030605532184764003

`A289841(n)+a(A028310(n)-1)` with `a(0)=0`
-/

namespace A289840.P2030605532184764003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A289841 n + a (A028310 n - 1).toNat

end

end A289840.P2030605532184764003

/-! ## A289840.P7118083318869592139

`A289841(n)+a(A004273(n)-n)` with `a(0)=0`
-/

namespace A289840.P7118083318869592139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A289841 n + a (A004273 n - (n : ℤ)).toNat

end

end A289840.P7118083318869592139

/-! ## A289840.P28492071331615792

`A289841(n)+a(n-A000034(2*n))` with `a(0)=0`
-/

namespace A289840.P28492071331615792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A289841 n + a ((n : ℤ) - A000034 (2 * n)).toNat

end

end A289840.P28492071331615792

/-!
# A289841: Number of elements added at n-th stage to the structure of the complex square cross described in A289840.

The programs for A289841, there is no canonical definition to state claims against.
-/

/-! ## A289841.P10669804778780492211

`A289840(n)-A289840(log2(A011782(n)))`
-/

namespace A289841.P10669804778780492211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289840 n - A289840 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A289841.P10669804778780492211

/-!
# A289842: Sum of products of terms in all partitions of 2*n into powers of 2.

The programs for A289842, there is no canonical definition to state claims against.
-/

/-! ## A289842.P13499299862647934701

`A294316(∑[n+2]-1)`
-/

namespace A289842.P13499299862647934701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294316 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A289842.P13499299862647934701

/-! ## A289842.P11736122926049495694

`record[A294316(A101881(n))]`
-/

namespace A289842.P11736122926049495694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294316 (A101881 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289842.P11736122926049495694

/-! ## A289842.P2774097157786667994

`or(1, A294316(A034856(n+1)))`
-/

namespace A289842.P2774097157786667994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A294316 (A034856 (n + 1)).toNat)

end

end A289842.P2774097157786667994

/-! ## A289842.P11350799255658461325

`record[A294316(n)/A294316(n+1)]`
-/

namespace A289842.P11350799255658461325
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294316 n : ℚ) / (A294316 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289842.P11350799255658461325

/-! ## A289842.P174991228340148799

`lcm(A034947(n+1), A294316(A034856(n+1)))`
-/

namespace A289842.P174991228340148799
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A034947 (n + 1)) (A294316 (A034856 (n + 1)).toNat)

end

end A289842.P174991228340148799

/-!
# A289843: p-INVERT of (1,0,2,0,3,0,4,0,5,...) (A027656), where p(S) = 1 - S - S^2.

The programs for A289843, there is no canonical definition to state claims against.
-/

/-! ## A289843.P1158857230231844942

`A114147(A026643(n+1))`
-/

namespace A289843.P1158857230231844942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114147 (A026643 (n + 1)).toNat

end

end A289843.P1158857230231844942

/-! ## A289843.P3779597922355921739

`A101941(3*n+1)+record[A101910(n)]`
-/

namespace A289843.P3779597922355921739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101941 (3 * n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289843.P3779597922355921739

/-! ## A289843.P17448533548407876688

`A276571(A099622(n))+A099599(n)`
-/

namespace A289843.P17448533548407876688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276571 (A099622 n).toNat + A099599 n

end

end A289843.P17448533548407876688

/-!
# A289844: p-INVERT of A175676 (starting at n=3), where p(S) = 1 - S - S^2.

The programs for A289844, there is no canonical definition to state claims against.
-/

/-! ## A289844.P10186248174740511891

`A061287(3*n+1)+A008966(A000669(n+5))`
-/

namespace A289844.P10186248174740511891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061287 (3 * n + 1) + A008966 (A000669 (n + 5)).toNat

end

end A289844.P10186248174740511891

/-! ## A289844.P15177459924834831047

`A082447(xor(n, A150240(n)))`
-/

namespace A289844.P15177459924834831047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (Int.xor (n : ℤ) (A150240 n)).toNat

end

end A289844.P15177459924834831047

/-! ## A289844.P6320968218494216734

`A082447(xor(n, A150241(n)))`
-/

namespace A289844.P6320968218494216734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (Int.xor (n : ℤ) (A150241 n)).toNat

end

end A289844.P6320968218494216734

/-! ## A289844.P12252477381825346319

`A329053(n)-A112713(A327972(n))`
-/

namespace A289844.P12252477381825346319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329053 n - A112713 (A327972 n).toNat

end

end A289844.P12252477381825346319

/-!
# A289845: p-INVERT of A079977, where p(S) = 1 - S - S^2.

The programs for A289845, there is no canonical definition to state claims against.
-/

/-! ## A289845.P3536597611650406085

`A087836(A149195(n+1))`
-/

namespace A289845.P3536597611650406085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087836 (A149195 (n + 1)).toNat

end

end A289845.P3536597611650406085

/-! ## A289845.P1708347858641681905

`A087836(A149196(n+1))`
-/

namespace A289845.P1708347858641681905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087836 (A149196 (n + 1)).toNat

end

end A289845.P1708347858641681905

/-! ## A289845.P10165500978643878505

`A000006(A336012(n)+A000984(n))`
-/

namespace A289845.P10165500978643878505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A336012 n + A000984 n).toNat

end

end A289845.P10165500978643878505

/-!
# A289846: p-INVERT of (1,0,1,0,1,0,1,0,1,...) (A059841), where p(S) = 1 - S - S^2.

The programs for A289846, the canonical program `A289846.P12676357367352506034` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289846 has offset 0).

The definition of A289846 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289846.P12676357367352506034

`a(n-1)+3*a(n-2)-a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=9`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A289846

/-- `a(n-1)+3*a(n-2)-a(n-3)-a(n-4)` -/
def P12676357367352506034.Spec : Prop :=
  ∀ n, P12676357367352506034.a n = A289846 n

theorem P12676357367352506034.correct : P12676357367352506034.Spec := by
  intro n
  simp only [A289846]

end A289846

/-! ## A289846.P3224005201250836437

`ogf((1+x-x^2)/(1-x-3x^2+x^3+x^4))`
-/

namespace A289846.P3224005201250836437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, -1, -3, 1, 1] n

end

end A289846.P3224005201250836437

namespace A289846

/-- `ogf((1+x-x^2)/(1-x-3x^2+x^3+x^4))` -/
def P3224005201250836437.Spec : Prop :=
  ∀ n, P3224005201250836437.a n = A289846 n

end A289846

/-! ## A289846.P4032305990810669804

`A131322(n)+A112576(n)`
-/

namespace A289846.P4032305990810669804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131322 n + A112576 n

end

end A289846.P4032305990810669804

namespace A289846

/-- `A131322(n)+A112576(n)` -/
def P4032305990810669804.Spec : Prop :=
  ∀ n, P4032305990810669804.a n = A289846 n

end A289846

/-! ## A289846.P7765774483196842487

`A192232(n+1)+2*A112576(n)`
-/

namespace A289846.P7765774483196842487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192232 (n + 1) + 2 * A112576 n

end

end A289846.P7765774483196842487

namespace A289846

/-- `A192232(n+1)+2*A112576(n)` -/
def P7765774483196842487.Spec : Prop :=
  ∀ n, P7765774483196842487.a n = A289846 n

end A289846

/-! ## A289846.P17007863592011526524

`2*A131322(n)-A192232(n+1)`
-/

namespace A289846.P17007863592011526524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131322 n - A192232 (n + 1)

end

end A289846.P17007863592011526524

namespace A289846

/-- `2*A131322(n)-A192232(n+1)` -/
def P17007863592011526524.Spec : Prop :=
  ∀ n, P17007863592011526524.a n = A289846 n

end A289846

/-! ## A289846.P4634200873043111178

`A131246(n)-a(n-1)` with `a(0)=1`
-/

namespace A289846.P4634200873043111178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A131246 n - a (n - 1)

end

end A289846.P4634200873043111178

namespace A289846

/-- `A131246(n)-a(n-1)` -/
def P4634200873043111178.Spec : Prop :=
  ∀ n, P4634200873043111178.a n = A289846 n

end A289846

/-! ## A289846.P9950153674910458670

`A183314(n)-a(n-1)` with `a(0)=1`
-/

namespace A289846.P9950153674910458670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A183314 n - a (n - 1)

end

end A289846.P9950153674910458670

namespace A289846

/-- `A183314(n)-a(n-1)` -/
def P9950153674910458670.Spec : Prop :=
  ∀ n, P9950153674910458670.a n = A289846 n

end A289846

/-! ## A289846.P13567666259846062604

`Δ[A192232(n+2)+Δ[A112576(n)]]`
-/

namespace A289846.P13567666259846062604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112576 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192232 (n + 2) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289846.P13567666259846062604

namespace A289846

/-- `Δ[A192232(n+2)+Δ[A112576(n)]]` -/
def P13567666259846062604.Spec : Prop :=
  ∀ n, P13567666259846062604.a n = A289846 n

end A289846

/-!
# A289847: p-INVERT of the primes (A000040), where p(S) = 1 - S - S^2.

The programs for A289847, there is no canonical definition to state claims against.
-/

/-! ## A289847.P793656237261518286

`∑[A062108(∑[A000051(3*n+1)])]`
-/

namespace A289847.P793656237261518286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289847.P793656237261518286

/-!
# A289850: Primes of the form k!2 - 4, where k!2 is the double factorial number (A006882).

The programs for A289850, there is no canonical definition to state claims against.
-/

/-! ## A289850.P15376147398117287945

`A006882(A123910(n+1))-4`
-/

namespace A289850.P15376147398117287945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (A123910 (n + 1)).toNat - 4

end

end A289850.P15376147398117287945

/-! ## A289850.P1057329400727809076

`record[A134144(n+4)-4]`
-/

namespace A289850.P1057329400727809076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134144 (n + 4) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289850.P1057329400727809076

/-!
# A289852: Primes of the form k!2 - 16, where k!2 is the double factorial number (A006882).

The programs for A289852, there is no canonical definition to state claims against.
-/

/-! ## A289852.P4481221005698021226

`A006882(A258616(n+1))-16`
-/

namespace A289852.P4481221005698021226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (A258616 (n + 1)).toNat - 16

end

end A289852.P4481221005698021226

/-!
# A289854: Primes of the form k!2 - 64, where k!2 is the double factorial number (A006882).

The programs for A289854, there is no canonical definition to state claims against.
-/

/-! ## A289854.P17483647506267089594

`A006882(A259045(n+1))-64`
-/

namespace A289854.P17483647506267089594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (A259045 (n + 1)).toNat - 64

end

end A289854.P17483647506267089594

/-!
# A289859: Primes of the form k!2-2, where k!2 is the sextuple factorial number (A085158).

The programs for A289859, there is no canonical definition to state claims against.
-/

/-! ## A289859.P3192760173738210904

`A006882(A094144(n+1))-2`
-/

namespace A289859.P3192760173738210904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (A094144 (n + 1)).toNat - 2

end

end A289859.P3192760173738210904

/-!
# A289860: Primes of the form k!4 - 2, where k!4 is the quadruple factorial number (A007662).

The programs for A289860, there is no canonical definition to state claims against.
-/

/-! ## A289860.P5040436692586397293

`A007662(A283554(n+1))-2`
-/

namespace A289860.P5040436692586397293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007662 (A283554 (n + 1)).toNat - 2

end

end A289860.P5040436692586397293

/-! ## A289860.P8989533598883967013

`p?[A007662(n)-2]`
-/

namespace A289860.P8989533598883967013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007662 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289860.P8989533598883967013

/-! ## A289860.P12711360125226012309

`p?[Δ[A108895(n)]-2]`
-/

namespace A289860.P12711360125226012309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108895 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289860.P12711360125226012309

/-!
# A289861: Primes of the form k!10 - 2, where k!10 is the decuple factorial number (A288327).

The programs for A289861, there is no canonical definition to state claims against.
-/

/-! ## A289861.P1674553853376311612

`A288327(A283559(n+1))-2`
-/

namespace A289861.P1674553853376311612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288327 (A283559 (n + 1)).toNat - 2

end

end A289861.P1674553853376311612

/-! ## A289861.P293958820525350762

`p?[A288327(n)-2]`
-/

namespace A289861.P293958820525350762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288327 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289861.P293958820525350762

/-! ## A289861.P3768422402971250987

`p?[A023444(A288327(n))]`
-/

namespace A289861.P3768422402971250987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A288327 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289861.P3768422402971250987

/-!
# A289862: Primes of the form k!12-2, where k!12 is the 12-way factorial number.

The programs for A289862, there is no canonical definition to state claims against.
-/

/-! ## A289862.P17842430358745006077

`∩[A118844(n+1), A155833(n+1)]`
-/

namespace A289862.P17842430358745006077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289862.P17842430358745006077

/-! ## A289862.P12552604912133876899

`∩[A115037(n+1), A308510(n+1)]`
-/

namespace A289862.P12552604912133876899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289862.P12552604912133876899

/-! ## A289862.P4331274580849566494

`∩[A118844(n+1), A358718(n+1)]`
-/

namespace A289862.P4331274580849566494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358718 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289862.P4331274580849566494

/-!
# A289863: Primes of the form k!14-2, where k!14 is the 14-way factorial number.

The programs for A289863, there is no canonical definition to state claims against.
-/

/-! ## A289863.P4681302659297565194

`A087769(A396163(n+1))`
-/

namespace A289863.P4681302659297565194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087769 (A396163 (n + 1)).toNat

end

end A289863.P4681302659297565194

/-! ## A289863.P12219544632382901847

`A000040(∑[4^A332833(n)])`
-/

namespace A289863.P12219544632382901847
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A332833 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A289863.P12219544632382901847

/-! ## A289863.P7027969966358738588

`A000040(∑[A016779(C(n, 6))])`
-/

namespace A289863.P7027969966358738588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016779 (Nat.choose n 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A289863.P7027969966358738588

/-!
# A289864: Number of cliques in the n-triangular honeycomb queen graph.

The programs for A289864, the canonical program `A289864.P3819162108502350455` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289864 has offset 1).

The definition of A289864 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289864.P3819162108502350455

`(4*(n+1)^3-18*(n+1)²-68*(n+1)-79-(-1)^(n+1)+3*2^(n+6))/16`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A289864

/-- `(4*(n+1)^3-18*(n+1)²-68*(n+1)-79-(-1)^(n+1)+3*2^(n+6))/16` -/
def P3819162108502350455.Spec : Prop :=
  ∀ n, P3819162108502350455.a n = (A289864 (n + 1) : ℚ)

end A289864

/-! ## A289864.P11533656643645159376

`A129259(A000108(n))+A001845(n)`
-/

namespace A289864.P11533656643645159376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129259 (A000108 n).toNat + A001845 n

end

end A289864.P11533656643645159376

namespace A289864

/-- `A129259(A000108(n))+A001845(n)` -/
def P11533656643645159376.Spec : Prop :=
  ∀ n, P11533656643645159376.a n = A289864 (n + 1)

end A289864

/-!
# A289866: Primes obtained from other primes by prefixing a 1.

The programs for A289866, the canonical program `A289866.P13807419711234569525` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289866 has offset 1).

The definition of A289866 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1476 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289866.P15874202259937255523

`p?[A039790(n+1)]`
-/

namespace A289866.P15874202259937255523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289866.P15874202259937255523

namespace A289866

/-- `p?[A039790(n+1)]` -/
def P15874202259937255523.Spec : Prop :=
  ∀ n, P15874202259937255523.a n = A289866 (n + 1)

end A289866

/-! ## A289866.P13176295677612067551

`∩[A039790(n+1), A045707(n+1)]`
-/

namespace A289866.P13176295677612067551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289866.P13176295677612067551

namespace A289866

/-- `∩[A039790(n+1), A045707(n+1)]` -/
def P13176295677612067551.Spec : Prop :=
  ∀ n, (P13176295677612067551.a n : ℤ) = A289866 (n + 1)

end A289866

/-! ## A289866.P16847199997691678206

`∩[A039790(n+1), A227916(n+1)]`
-/

namespace A289866.P16847199997691678206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289866.P16847199997691678206

namespace A289866

/-- `∩[A039790(n+1), A227916(n+1)]` -/
def P16847199997691678206.Spec : Prop :=
  ∀ n, (P16847199997691678206.a n : ℤ) = A289866 (n + 1)

end A289866

/-! ## A289866.P6135179005446379607

`∩[A039790(n+1), A378441(n+1)]`
-/

namespace A289866.P6135179005446379607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289866.P6135179005446379607

namespace A289866

/-- `∩[A039790(n+1), A378441(n+1)]` -/
def P6135179005446379607.Spec : Prop :=
  ∀ n, (P6135179005446379607.a n : ℤ) = A289866 (n + 1)

end A289866

/-! ## A289866.P13807419711234569525

`p?[A160668(n+1)+A100484(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A289866

/-- `p?[A160668(n+1)+A100484(n+1)]` -/
def P13807419711234569525.Spec : Prop :=
  ∀ n, P13807419711234569525.a n = A289866 (n + 1)

theorem P13807419711234569525.correct : P13807419711234569525.Spec := by
  intro n
  simp only [A289866, Nat.add_sub_cancel]

end A289866

/-! ## A289866.P14071377529341120644

`p?[A228628(n+1)+A072055(n+1)]`
-/

namespace A289866.P14071377529341120644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228628 (n + 1) + A072055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289866.P14071377529341120644

namespace A289866

/-- `p?[A228628(n+1)+A072055(n+1)]` -/
def P14071377529341120644.Spec : Prop :=
  ∀ n, P14071377529341120644.a n = A289866 (n + 1)

end A289866

/-! ## A289866.P14558378153982208327

`p?[A160668(n+1)+2*A000040(n+1)]`
-/

namespace A289866.P14558378153982208327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160668 (n + 1) + 2 * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289866.P14558378153982208327

namespace A289866

/-- `p?[A160668(n+1)+2*A000040(n+1)]` -/
def P14558378153982208327.Spec : Prop :=
  ∀ n, P14558378153982208327.a n = A289866 (n + 1)

end A289866

/-! ## A289866.P12399978128581526164

`∩[A039790(n+1), A226217(n+1)]`
-/

namespace A289866.P12399978128581526164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289866.P12399978128581526164

namespace A289866

/-- `∩[A039790(n+1), A226217(n+1)]` -/
def P12399978128581526164.Spec : Prop :=
  ∀ n, (P12399978128581526164.a n : ℤ) = A289866 (n + 1)

end A289866

/-! ## A289866.P9020631549239028030

`∩[A039790(n+1), A380468(n+1)]`
-/

namespace A289866.P9020631549239028030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289866.P9020631549239028030

namespace A289866

/-- `∩[A039790(n+1), A380468(n+1)]` -/
def P9020631549239028030.Spec : Prop :=
  ∀ n, (P9020631549239028030.a n : ℤ) = A289866 (n + 1)

end A289866

/-! ## A289866.P2595195869004885721

`∩[A039790(n+1), A040087(n+1)]`
-/

namespace A289866.P2595195869004885721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289866.P2595195869004885721

namespace A289866

/-- `∩[A039790(n+1), A040087(n+1)]` -/
def P2595195869004885721.Spec : Prop :=
  ∀ n, (P2595195869004885721.a n : ℤ) = A289866 (n + 1)

end A289866

/-! ## A289866.P17310137183663441571

`∩[A039790(n+1), A040044(n+1)]`
-/

namespace A289866.P17310137183663441571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289866.P17310137183663441571

namespace A289866

/-- `∩[A039790(n+1), A040044(n+1)]` -/
def P17310137183663441571.Spec : Prop :=
  ∀ n, (P17310137183663441571.a n : ℤ) = A289866 (n + 1)

end A289866

/-! ## A289866.P11636567533822484191

`∩[A039790(n+1), A040062(n+1)]`
-/

namespace A289866.P11636567533822484191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289866.P11636567533822484191

namespace A289866

/-- `∩[A039790(n+1), A040062(n+1)]` -/
def P11636567533822484191.Spec : Prop :=
  ∀ n, (P11636567533822484191.a n : ℤ) = A289866 (n + 1)

end A289866

/-! ## A289866.P15443699323154674411

`∩[A039790(n+1), A040065(n+1)]`
-/

namespace A289866.P15443699323154674411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289866.P15443699323154674411

namespace A289866

/-- `∩[A039790(n+1), A040065(n+1)]` -/
def P15443699323154674411.Spec : Prop :=
  ∀ n, (P15443699323154674411.a n : ℤ) = A289866 (n + 1)

end A289866

/-! ## A289866.P4848181969737561266

`∩[A039790(n+1), A208270(n+1)]`
-/

namespace A289866.P4848181969737561266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289866.P4848181969737561266

namespace A289866

/-- `∩[A039790(n+1), A208270(n+1)]` -/
def P4848181969737561266.Spec : Prop :=
  ∀ n, (P4848181969737561266.a n : ℤ) = A289866 (n + 1)

end A289866

/-! ## A289866.P15278938001810270946

`∩[A039790(n+1), A239058(n+1)]`
-/

namespace A289866.P15278938001810270946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289866.P15278938001810270946

namespace A289866

/-- `∩[A039790(n+1), A239058(n+1)]` -/
def P15278938001810270946.Spec : Prop :=
  ∀ n, (P15278938001810270946.a n : ℤ) = A289866 (n + 1)

end A289866

/-! ## A289866.P16577270980678387879

`∩[A039790(n+1), A077359(n+1)]`
-/

namespace A289866.P16577270980678387879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289866.P16577270980678387879

namespace A289866

/-- `∩[A039790(n+1), A077359(n+1)]` -/
def P16577270980678387879.Spec : Prop :=
  ∀ n, (P16577270980678387879.a n : ℤ) = A289866 (n + 1)

end A289866

/-! ## A289866.P9116059614195294459

`∩[A039790(n+1), A080603(n+1)]`
-/

namespace A289866.P9116059614195294459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289866.P9116059614195294459

namespace A289866

/-- `∩[A039790(n+1), A080603(n+1)]` -/
def P9116059614195294459.Spec : Prop :=
  ∀ n, (P9116059614195294459.a n : ℤ) = A289866 (n + 1)

end A289866

/-! ## A289866.P5425105302724298270

`∩[A009087(n+1), A039790(n+1)]`
-/

namespace A289866.P5425105302724298270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289866.P5425105302724298270

namespace A289866

/-- `∩[A009087(n+1), A039790(n+1)]` -/
def P5425105302724298270.Spec : Prop :=
  ∀ n, (P5425105302724298270.a n : ℤ) = A289866 (n + 1)

end A289866

/-! ## A289866.P16964699783698051074

`∩[A039790(n+1), A140558(n+1)]`
-/

namespace A289866.P16964699783698051074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289866.P16964699783698051074

namespace A289866

/-- `∩[A039790(n+1), A140558(n+1)]` -/
def P16964699783698051074.Spec : Prop :=
  ∀ n, (P16964699783698051074.a n : ℤ) = A289866 (n + 1)

end A289866

/-! ## A289866.P15340408411378636766

`∩[A038680(n+1), A039790(n+1)]`
-/

namespace A289866.P15340408411378636766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289866.P15340408411378636766

namespace A289866

/-- `∩[A038680(n+1), A039790(n+1)]` -/
def P15340408411378636766.Spec : Prop :=
  ∀ n, (P15340408411378636766.a n : ℤ) = A289866 (n + 1)

end A289866

/-!
# A289867: Primes obtained from other primes by prefixing a 6.

The programs for A289867, there is no canonical definition to state claims against.
-/

/-! ## A289867.P16122886245474046292

`p?[A084855(A072205(n+1)+5)]`
-/

namespace A289867.P16122886245474046292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (A072205 (n + 1) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289867.P16122886245474046292

/-! ## A289867.P10534316455130461395

`A045712(lt[A054907(n), A117173(n+1)])`
-/

namespace A289867.P10534316455130461395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054907 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045712 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A289867.P10534316455130461395

/-! ## A289867.P15703875380941386045

`A045712(n+4)%A072748(A179698(n+1))`
-/

namespace A289867.P15703875380941386045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045712 (n + 4)) (A072748 (A179698 (n + 1)).toNat)

end

end A289867.P15703875380941386045

/-! ## A289867.P5473089496959554079

`A045712(n+4)%A044825(A017450(n))`
-/

namespace A289867.P5473089496959554079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045712 (n + 4)) (A044825 (A017450 n).toNat)

end

end A289867.P5473089496959554079

/-!
# A289869: Square array T(n,k) (n>=0, k>=0) read by antidiagonals downwards: T(n,k) = A005836(n) + 2*A005836(k).

The programs for A289869, the canonical program `A289869.P12188574629883902402` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289869 has offset 1).

The definition of A289869 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289869.P12682297605029142228

`A374560(n)+A005836(A004736(n+1))`
-/

namespace A289869.P12682297605029142228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374560 n + A005836 (A004736 (n + 1)).toNat

end

end A289869.P12682297605029142228

namespace A289869

/-- `A374560(n)+A005836(A004736(n+1))` -/
def P12682297605029142228.Spec : Prop :=
  ∀ n, P12682297605029142228.a n = A289869 (n + 1)

end A289869

/-! ## A289869.P12188574629883902402

`A005836(A002260(n+1))+A005823(A004736(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A289869

/-- `A005836(A002260(n+1))+A005823(A004736(n+1))` -/
def P12188574629883902402.Spec : Prop :=
  ∀ n, P12188574629883902402.a n = A289869 (n + 1)

theorem P12188574629883902402.correct : P12188574629883902402.Spec := by
  intro n
  simp only [A289869, Nat.add_sub_cancel]

end A289869

/-! ## A289869.P16052282132638257314

`A005836(A002262(n)+1)+A005823(A004736(n+1))`
-/

namespace A289869.P16052282132638257314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A002262 n + 1).toNat + A005823 (A004736 (n + 1)).toNat

end

end A289869.P16052282132638257314

namespace A289869

/-- `A005836(A002262(n)+1)+A005823(A004736(n+1))` -/
def P16052282132638257314.Spec : Prop :=
  ∀ n, P16052282132638257314.a n = A289869 (n + 1)

end A289869

/-! ## A289869.P8340375679712671937

`A215090(A346453(n))`
-/

namespace A289869.P8340375679712671937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215090 (A346453 n).toNat

end

end A289869.P8340375679712671937

namespace A289869

/-- `A215090(A346453(n))` -/
def P8340375679712671937.Spec : Prop :=
  ∀ n, P8340375679712671937.a n = A289869 (n + 1)

end A289869

/-! ## A289869.P1215389217659623043

`A215090(A054238(A061579(n)))`
-/

namespace A289869.P1215389217659623043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215090 (A054238 (A061579 n).toNat).toNat

end

end A289869.P1215389217659623043

namespace A289869

/-- `A215090(A054238(A061579(n)))` -/
def P1215389217659623043.Spec : Prop :=
  ∀ n, P1215389217659623043.a n = A289869 (n + 1)

end A289869

/-!
# A289870: a(n) = n*(n + 1) for n odd, otherwise a(n) = (n - 1)*(n + 1).

The programs for A289870, the canonical program `A289870.P8136116674077468676` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289870 has offset 0).

The definition of A289870 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289870.P6626433726121599325

`(n+1)*(n-1+n%2)`
-/

namespace A289870.P6626433726121599325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n : ℤ) - 1 + ((n % 2 : ℕ) : ℤ))

end

end A289870.P6626433726121599325

namespace A289870

/-- `(n+1)*(n-1+n%2)` -/
def P6626433726121599325.Spec : Prop :=
  ∀ n, P6626433726121599325.a n = A289870 n

end A289870

/-! ## A289870.P11761551757197125326

`n²-(-1)^n*A093178(n)`
-/

namespace A289870.P11761551757197125326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (-1) ^ n * A093178 n

end

end A289870.P11761551757197125326

namespace A289870

/-- `n²-(-1)^n*A093178(n)` -/
def P11761551757197125326.Spec : Prop :=
  ∀ n, P11761551757197125326.a n = A289870 n

end A289870

/-! ## A289870.P8136116674077468676

`A002378(n)-A193356(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A289870

/-- `A002378(n)-A193356(n+1)` -/
def P8136116674077468676.Spec : Prop :=
  ∀ n, P8136116674077468676.a n = A289870 n

theorem P8136116674077468676.correct : P8136116674077468676.Spec := by
  intro n
  simp only [A289870]

end A289870

/-! ## A289870.P16054698159503293951

`(n+1)*or(1, n-1)`
-/

namespace A289870.P16054698159503293951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.lor 1 ((n : ℤ) - 1)

end

end A289870.P16054698159503293951

namespace A289870

/-- `(n+1)*or(1, n-1)` -/
def P16054698159503293951.Spec : Prop :=
  ∀ n, P16054698159503293951.a n = A289870 n

end A289870

/-! ## A289870.P3168660359314253148

`-((n+1)*or(1, -n))`
-/

namespace A289870.P3168660359314253148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n + 1 : ℤ) * Int.lor 1 (-(n : ℤ)))

end

end A289870.P3168660359314253148

namespace A289870

/-- `-((n+1)*or(1, -n))` -/
def P3168660359314253148.Spec : Prop :=
  ∀ n, P3168660359314253148.a n = A289870 n

end A289870

/-! ## A289870.P1892614096598789792

`or(1, -n)*xor(n, -1)`
-/

namespace A289870.P1892614096598789792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-(n : ℤ)) * Int.xor (n : ℤ) (-1)

end

end A289870.P1892614096598789792

namespace A289870

/-- `or(1, -n)*xor(n, -1)` -/
def P1892614096598789792.Spec : Prop :=
  ∀ n, P1892614096598789792.a n = A289870 n

end A289870

/-! ## A289870.P8535980861348777238

`∑[Δ[n*or(1, n)]-2]`
-/

namespace A289870.P8535980861348777238
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.lor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289870.P8535980861348777238

namespace A289870

/-- `∑[Δ[n*or(1, n)]-2]` -/
def P8535980861348777238.Spec : Prop :=
  ∀ n, P8535980861348777238.a n = A289870 n

end A289870

/-! ## A289870.P15559381607397081982

`(n+1)²-lcm(2, n+1)`
-/

namespace A289870.P15559381607397081982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (Nat.lcm 2 (n + 1) : ℤ)

end

end A289870.P15559381607397081982

namespace A289870

/-- `(n+1)²-lcm(2, n+1)` -/
def P15559381607397081982.Spec : Prop :=
  ∀ n, P15559381607397081982.a n = A289870 n

end A289870

/-! ## A289870.P4618454629569978853

`∑[lcm(4, 2*n)-or(1, n)]`
-/

namespace A289870.P4618454629569978853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (2 * n) : ℤ) - (Nat.lor 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289870.P4618454629569978853

namespace A289870

/-- `∑[lcm(4, 2*n)-or(1, n)]` -/
def P4618454629569978853.Spec : Prop :=
  ∀ n, P4618454629569978853.a n = A289870 n

end A289870

/-! ## A289870.P17472502621246483683

`(n+1)*(n-log2(gcd(2, n)))`
-/

namespace A289870.P17472502621246483683
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * ((n : ℝ) - Real.logb 2 (Nat.gcd 2 n : ℝ))

end

end A289870.P17472502621246483683

namespace A289870

/-- `(n+1)*(n-log2(gcd(2, n)))` -/
def P17472502621246483683.Spec : Prop :=
  ∀ n, P17472502621246483683.a n = (A289870 n : ℝ)

end A289870

/-! ## A289870.P9184469392920064878

`(n+1)*(n-char[2*n])`
-/

namespace A289870.P9184469392920064878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A289870.P9184469392920064878

namespace A289870

/-- `(n+1)*(n-char[2*n])` -/
def P9184469392920064878.Spec : Prop :=
  ∀ n, P9184469392920064878.a n = A289870 n

end A289870

/-! ## A289870.P17340458977784494875

`∑[2*n-Δ[n*and(1, n)]]`
-/

namespace A289870.P17340458977784494875
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289870.P17340458977784494875

namespace A289870

/-- `∑[2*n-Δ[n*and(1, n)]]` -/
def P17340458977784494875.Spec : Prop :=
  ∀ n, P17340458977784494875.a n = A289870 n

end A289870

/-! ## A289870.P3855098920050863446

`or(1, n-1)/(n+1)^-1`
-/

namespace A289870.P3855098920050863446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 1 ((n : ℤ) - 1) : ℚ) / (n + 1 : ℚ) ^ (-1 : ℤ)

end

end A289870.P3855098920050863446

namespace A289870

/-- `or(1, n-1)/(n+1)^-1` -/
def P3855098920050863446.Spec : Prop :=
  ∀ n, P3855098920050863446.a n = (A289870 n : ℚ)

end A289870

/-! ## A289870.P1643960594087329363

`-((n+1)*(and(1, n+1)-n))`
-/

namespace A289870.P1643960594087329363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n + 1 : ℤ) * ((Nat.land 1 (n + 1) : ℤ) - (n : ℤ)))

end

end A289870.P1643960594087329363

namespace A289870

/-- `-((n+1)*(and(1, n+1)-n))` -/
def P1643960594087329363.Spec : Prop :=
  ∀ n, P1643960594087329363.a n = A289870 n

end A289870

/-! ## A289870.P10654404498597061087

`∏{d}[1-a(n-1), n+2-#]` with `a(0)=3`
-/

namespace A289870.P10654404498597061087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, ((n + 2 : ℤ) - (d : ℤ))

end

end A289870.P10654404498597061087

namespace A289870

/-- `∏{d}[1-a(n-1), n+2-#]` -/
def P10654404498597061087.Spec : Prop :=
  ∀ n, P10654404498597061087.a n = A289870 n

end A289870

/-! ## A289870.P16425392337066615121

`(and(1, n)+n)*(n+1)-(n+1)`
-/

namespace A289870.P16425392337066615121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 1 n + n) * (n + 1) : ℤ) - (n + 1 : ℤ)

end

end A289870.P16425392337066615121

namespace A289870

/-- `(and(1, n)+n)*(n+1)-(n+1)` -/
def P16425392337066615121.Spec : Prop :=
  ∀ n, P16425392337066615121.a n = A289870 n

end A289870

/-! ## A289870.P4618667414618787491

`(n+1)²-2*gcd(n+1, ∑[n])`
-/

namespace A289870.P4618667414618787491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (2 * Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A289870.P4618667414618787491

namespace A289870

/-- `(n+1)²-2*gcd(n+1, ∑[n])` -/
def P4618667414618787491.Spec : Prop :=
  ∀ n, P4618667414618787491.a n = A289870 n

end A289870

/-! ## A289870.P8891333642070473149

`floor((n+1)*∑[2-a(n-1)])` with `a(0)=-1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A289870.P8891333642070473149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 2] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A289870.P8891333642070473149

namespace A289870

/-- `floor((n+1)*∑[2-a(n-1)])` -/
def P8891333642070473149.Spec : Prop :=
  ∀ n, P8891333642070473149.a n = A289870 n

end A289870

/-! ## A289870.P11502597240559659615

`∑[2-a(n-1)]/(n+1)^(-1)` with `a(0)=-1, a(1)=2`
-/

namespace A289870.P11502597240559659615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 2] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ) ^ (-1 : ℤ)

end

end A289870.P11502597240559659615

namespace A289870

/-- `∑[2-a(n-1)]/(n+1)^(-1)` -/
def P11502597240559659615.Spec : Prop :=
  ∀ n, P11502597240559659615.a n = (A289870 n : ℚ)

end A289870

/-! ## A289870.P17581239187726221052

`(n+1)*∑[2-a(n-1)]-(n+1)` with `a(0)=0`
-/

namespace A289870.P17581239187726221052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) - (n + 1 : ℤ)

end

end A289870.P17581239187726221052

namespace A289870

/-- `(n+1)*∑[2-a(n-1)]-(n+1)` -/
def P17581239187726221052.Spec : Prop :=
  ∀ n, P17581239187726221052.a n = A289870 n

end A289870

/-!
# A289871: Irregular triangle read by rows T(n, k) is the number of admissible pinnacle sets with maximum element n and cardinality k.

The programs for A289871, there is no canonical definition to state claims against.
-/

/-! ## A289871.P7861134201947698511

`A072233(eq[A136868(n), A208515(n+1)])`
-/

namespace A289871.P7861134201947698511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136868 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A289871.P7861134201947698511

/-! ## A289871.P13348300116883130276

`val(A360354(A360393(n+5)), 3)`
-/

namespace A289871.P13348300116883130276
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A360354 (A360393 (n + 5)).toNat).toNat 3

end

end A289871.P13348300116883130276

/-! ## A289871.P3174046095431284524

`(n+11)%A341523(A262622(n+1))`
-/

namespace A289871.P3174046095431284524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 11 : ℤ) (A341523 (A262622 (n + 1)).toNat)

end

end A289871.P3174046095431284524

/-! ## A289871.P2805044128088727760

`A268389(A293019(n)+A220425(n+1))`
-/

namespace A289871.P2805044128088727760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268389 (A293019 n + A220425 (n + 1)).toNat

end

end A289871.P2805044128088727760

/-! ## A289871.P5772265562898440159

`A033461(A123104(n)-A098743(n+3))`
-/

namespace A289871.P5772265562898440159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033461 (A123104 (n + 31) - A098743 (n + 3)).toNat

end

end A289871.P5772265562898440159

/-!
# A289872: a(n) is the number of partial sums of the divisors of n that are the sum of divisors of some integer.

The programs for A289872, there is no canonical definition to state claims against.
-/

/-! ## A289872.P4928268791108065989

`A348856(n+1)+A093488(A338018(n+1))`
-/

namespace A289872.P4928268791108065989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348856 (n + 1) + A093488 (A338018 (n + 1)).toNat

end

end A289872.P4928268791108065989

/-! ## A289872.P2088242432578866513

`A289849(n+1)-A011738(A115123(n+1))`
-/

namespace A289872.P2088242432578866513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289849 (n + 1) - A011738 (A115123 (n + 1)).toNat

end

end A289872.P2088242432578866513

/-! ## A289872.P15567714359292144214

`A348856(n+1)+A010054(A324899(n+1))`
-/

namespace A289872.P15567714359292144214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348856 (n + 1) + A010054 (A324899 (n + 1)).toNat

end

end A289872.P15567714359292144214

/-! ## A289872.P3244593080756854236

`A345874((n+1)*A006257(A065158(n+1)))`
-/

namespace A289872.P3244593080756854236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345874 ((n + 1 : ℤ) * A006257 (A065158 (n + 1)).toNat).toNat

end

end A289872.P3244593080756854236

/-! ## A289872.P8777090203842377837

`A326753(A008779(n))+A001222(n+1)`
-/

namespace A289872.P8777090203842377837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326753 (A008779 n).toNat + A001222 (n + 1)

end

end A289872.P8777090203842377837

/-!
# A289873: Related to perfect Wichmann rulers: a(n) = ( n^2 - (mod(n, 6) - 3)^2 ) / 3.

The programs for A289873, the canonical program `A289873.P1117904609125433666` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289873 has offset 2).

The definition of A289873 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289873.P12080313585769847651

`((n+2)²-((n+2)%6-3)²)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A289873.P12080313585769847651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 2) ^ 2 : ℤ) - ((((n + 2) % 6 : ℕ) : ℤ) - 3) ^ 2 : ℚ) / 3

end

end A289873.P12080313585769847651

namespace A289873

/-- `((n+2)²-((n+2)%6-3)²)/3` -/
def P12080313585769847651.Spec : Prop :=
  ∀ n, P12080313585769847651.a n = (A289873 (n + 2) : ℚ)

end A289873

/-! ## A289873.P1117904609125433666

`A289761(n+2)-(n+2)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A289873

/-- `A289761(n+2)-(n+2)` -/
def P1117904609125433666.Spec : Prop :=
  ∀ n, P1117904609125433666.a n = A289873 (n + 2)

theorem P1117904609125433666.correct : P1117904609125433666.Spec := by
  intro n
  simp only [A289873, Nat.add_sub_cancel]

end A289873

/-! ## A289873.P9620472265106069300

`∑[or(3, ∑[n²%3])]-(n+2)`
-/

namespace A289873.P9620472265106069300
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 2 : ℤ)

end

end A289873.P9620472265106069300

namespace A289873

/-- `∑[or(3, ∑[n²%3])]-(n+2)` -/
def P9620472265106069300.Spec : Prop :=
  ∀ n, P9620472265106069300.a n = A289873 (n + 2)

end A289873

/-! ## A289873.P662281342397747579

`∑[2*A109613(A002264(n+1))]-1`
-/

namespace A289873.P662281342397747579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109613 (A002264 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A289873.P662281342397747579

namespace A289873

/-- `∑[2*A109613(A002264(n+1))]-1` -/
def P662281342397747579.Spec : Prop :=
  ∀ n, P662281342397747579.a n = A289873 (n + 2)

end A289873

/-! ## A289873.P17186218804412381604

`∑[A005843(1-A285872(n)+n)]-1`
-/

namespace A289873.P17186218804412381604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (1 - A285872 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A289873.P17186218804412381604

namespace A289873

/-- `∑[A005843(1-A285872(n)+n)]-1` -/
def P17186218804412381604.Spec : Prop :=
  ∀ n, P17186218804412381604.a n = A289873 (n + 2)

end A289873

/-! ## A289873.P12889315260174211786

`∑[A109613(n+1)-A063198(A110654(n)+1)]`
-/

namespace A289873.P12889315260174211786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (n + 1) - A063198 (A110654 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289873.P12889315260174211786

namespace A289873

/-- `∑[A109613(n+1)-A063198(A110654(n)+1)]` -/
def P12889315260174211786.Spec : Prop :=
  ∀ n, P12889315260174211786.a n = A289873 (n + 2)

end A289873

/-! ## A289873.P1370838178914633319

`2*A008813(n+1)-3`
-/

namespace A289873.P1370838178914633319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008813 (n + 1) - 3

end

end A289873.P1370838178914633319

namespace A289873

/-- `2*A008813(n+1)-3` -/
def P1370838178914633319.Spec : Prop :=
  ∀ n, P1370838178914633319.a n = A289873 (n + 2)

end A289873

/-! ## A289873.P6187883285841585315

`2*A112421(n+8)-A005818(n+2)`
-/

namespace A289873.P6187883285841585315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112421 (n + 8) - A005818 (n + 2)

end

end A289873.P6187883285841585315

namespace A289873

/-- `2*A112421(n+8)-A005818(n+2)` -/
def P6187883285841585315.Spec : Prop :=
  ∀ n, P6187883285841585315.a n = A289873 (n + 2)

end A289873

/-! ## A289873.P544704453080788728

`2*A112421(n+8)-A020735(n+2)`
-/

namespace A289873.P544704453080788728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112421 (n + 8) - A020735 (n + 2)

end

end A289873.P544704453080788728

namespace A289873

/-- `2*A112421(n+8)-A020735(n+2)` -/
def P544704453080788728.Spec : Prop :=
  ∀ n, P544704453080788728.a n = A289873 (n + 2)

end A289873

/-! ## A289873.P654069661341069939

`A005408(A008813(n+1)-2)`
-/

namespace A289873.P654069661341069939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A008813 (n + 1) - 2).toNat

end

end A289873.P654069661341069939

namespace A289873

/-- `A005408(A008813(n+1)-2)` -/
def P654069661341069939.Spec : Prop :=
  ∀ n, P654069661341069939.a n = A289873 (n + 2)

end A289873

/-!
# A289877: Number of maximal cliques in the n-triangular honeycomb queen graph.

The programs for A289877, the canonical program `A289877.P11287739975949811874` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289877 has offset 2).

The definition of A289877 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289877.P1406049078537088420

`(2*(n+2)*(22-(n+2)+2*(n+2)²)-95-(-1)^(n+2))/16`
-/

namespace A289877.P1406049078537088420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 2) : ℤ) * (22 - (n + 2 : ℤ) + (2 * (n + 2) ^ 2 : ℤ)) - 95 - (-1) ^ (n + 2) : ℚ) / 16

end

end A289877.P1406049078537088420

namespace A289877

/-- `(2*(n+2)*(22-(n+2)+2*(n+2)²)-95-(-1)^(n+2))/16` -/
def P1406049078537088420.Spec : Prop :=
  ∀ n, P1406049078537088420.a n = (A289877 (n + 2) : ℚ)

theorem P1406049078537088420.correct : P1406049078537088420.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A289877, Nat.add_sub_cancel, A289877.P1406049078537088420.a, A289877.P11287739975949811874.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A289877, Nat.add_sub_cancel, A289877.P1406049078537088420.a, A289877.P11287739975949811874.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A289877

/-! ## A289877.P11287739975949811874

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=1, a(1)=8, a(2)=19, a(3)=36, a(4)=60`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A289877

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P11287739975949811874.Spec : Prop :=
  ∀ n, P11287739975949811874.a n = A289877 (n + 2)

theorem P11287739975949811874.correct : P11287739975949811874.Spec := by
  intro n
  simp only [A289877, Nat.add_sub_cancel]

end A289877

/-! ## A289877.P11699781700184534281

`∑[∑[a(n-2)+3]]` with `a(0)=1, a(1)=6, a(2)=4, a(3)=6`
-/

namespace A289877.P11699781700184534281
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 4, 6] fun n f2 =>
  f2 (n - 2) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289877.P11699781700184534281

namespace A289877

/-- `∑[∑[a(n-2)+3]]` -/
def P11699781700184534281.Spec : Prop :=
  ∀ n, (P11699781700184534281.a n : ℤ) = A289877 (n + 2)

end A289877

/-! ## A289877.P2833785145790975529

`∑[∑[∑[gcd(2, n+1)]]+3]-3`
-/

namespace A289877.P2833785145790975529
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3

end

end A289877.P2833785145790975529

namespace A289877

/-- `∑[∑[∑[gcd(2, n+1)]]+3]-3` -/
def P2833785145790975529.Spec : Prop :=
  ∀ n, P2833785145790975529.a n = A289877 (n + 2)

end A289877

/-! ## A289877.P3821691977078347049

`∑[∑[∑[n%2+1]]]+3*n`
-/

namespace A289877.P3821691977078347049
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3 * n

end

end A289877.P3821691977078347049

namespace A289877

/-- `∑[∑[∑[n%2+1]]]+3*n` -/
def P3821691977078347049.Spec : Prop :=
  ∀ n, (P3821691977078347049.a n : ℤ) = A289877 (n + 2)

end A289877

/-! ## A289877.P2486699999731169528

`∑[∑[∑[and(1, n)+1]]]+3*n`
-/

namespace A289877.P2486699999731169528
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3 * n

end

end A289877.P2486699999731169528

namespace A289877

/-- `∑[∑[∑[and(1, n)+1]]]+3*n` -/
def P2486699999731169528.Spec : Prop :=
  ∀ n, (P2486699999731169528.a n : ℤ) = A289877 (n + 2)

end A289877

/-! ## A289877.P7595714628406083783

`∑[∑[∑[(3-a(n-1))%3]]]` with `a(0)=1, a(1)=5`
-/

namespace A289877.P7595714628406083783
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f3 =>
  Int.tmod (3 - f3 (n - 1)) 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289877.P7595714628406083783

namespace A289877

/-- `∑[∑[∑[(3-a(n-1))%3]]]` -/
def P7595714628406083783.Spec : Prop :=
  ∀ n, P7595714628406083783.a n = A289877 (n + 2)

end A289877

/-! ## A289877.P13086927596448283117

`∑[∑[∑[∑[ogf((1+2x)/(1+x))]]]]+3*n`
-/

namespace A289877.P13086927596448283117
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, 1] n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (3 * n : ℤ)

end

end A289877.P13086927596448283117

namespace A289877

/-- `∑[∑[∑[∑[ogf((1+2x)/(1+x))]]]]+3*n` -/
def P13086927596448283117.Spec : Prop :=
  ∀ n, P13086927596448283117.a n = A289877 (n + 2)

end A289877

/-! ## A289877.P12304910396951375382

`A256666(n)+Δ[n²]`
-/

namespace A289877.P12304910396951375382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256666 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A289877.P12304910396951375382

namespace A289877

/-- `A256666(n)+Δ[n²]` -/
def P12304910396951375382.Spec : Prop :=
  ∀ n, P12304910396951375382.a n = A289877 (n + 2)

end A289877

/-! ## A289877.P425890358976611161

`3*n+∑[∑[A032766(n+1)]]`
-/

namespace A289877.P425890358976611161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289877.P425890358976611161

namespace A289877

/-- `3*n+∑[∑[A032766(n+1)]]` -/
def P425890358976611161.Spec : Prop :=
  ∀ n, P425890358976611161.a n = A289877 (n + 2)

end A289877

/-! ## A289877.P6982899828750776675

`A082111(n)+A019298(n)`
-/

namespace A289877.P6982899828750776675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082111 n + A019298 n

end

end A289877.P6982899828750776675

namespace A289877

/-- `A082111(n)+A019298(n)` -/
def P6982899828750776675.Spec : Prop :=
  ∀ n, P6982899828750776675.a n = A289877 (n + 2)

end A289877

/-! ## A289877.P10343677664046568965

`A092286(n)+A088795(n+1)`
-/

namespace A289877.P10343677664046568965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092286 n + A088795 (n + 1)

end

end A289877.P10343677664046568965

namespace A289877

/-- `A092286(n)+A088795(n+1)` -/
def P10343677664046568965.Spec : Prop :=
  ∀ n, P10343677664046568965.a n = A289877 (n + 2)

end A289877

/-! ## A289877.P402848918389954123

`A002717(n+1)+3*n`
-/

namespace A289877.P402848918389954123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002717 (n + 1) + (3 * n : ℤ)

end

end A289877.P402848918389954123

namespace A289877

/-- `A002717(n+1)+3*n` -/
def P402848918389954123.Spec : Prop :=
  ∀ n, P402848918389954123.a n = A289877 (n + 2)

end A289877

/-! ## A289877.P7027698135838087597

`(n+1)²+A002717(n+1)-A002061(n)`
-/

namespace A289877.P7027698135838087597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (A002717 (n + 1) - A002061 n)

end

end A289877.P7027698135838087597

namespace A289877

/-- `(n+1)²+A002717(n+1)-A002061(n)` -/
def P7027698135838087597.Spec : Prop :=
  ∀ n, P7027698135838087597.a n = A289877 (n + 2)

end A289877

/-! ## A289877.P2066018567088676997

`∑[∑[∑[A176895(2*n)]]]+3*n`
-/

namespace A289877.P2066018567088676997
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176895 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (3 * n : ℤ)

end

end A289877.P2066018567088676997

namespace A289877

/-- `∑[∑[∑[A176895(2*n)]]]+3*n` -/
def P2066018567088676997.Spec : Prop :=
  ∀ n, P2066018567088676997.a n = A289877 (n + 2)

end A289877

/-! ## A289877.P10973653939874881005

`A029136(2*(3*n+1))+3*n`
-/

namespace A289877.P10973653939874881005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029136 (2 * (3 * n + 1)) + (3 * n : ℤ)

end

end A289877.P10973653939874881005

namespace A289877

/-- `A029136(2*(3*n+1))+3*n` -/
def P10973653939874881005.Spec : Prop :=
  ∀ n, P10973653939874881005.a n = A289877 (n + 2)

end A289877

/-! ## A289877.P1812694203730451361

`∑[∑[A002265(6*n+2)+1]]+3*n`
-/

namespace A289877.P1812694203730451361
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (6 * n + 2) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (3 * n : ℤ)

end

end A289877.P1812694203730451361

namespace A289877

/-- `∑[∑[A002265(6*n+2)+1]]+3*n` -/
def P1812694203730451361.Spec : Prop :=
  ∀ n, P1812694203730451361.a n = A289877 (n + 2)

end A289877

/-!
# A289879: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 603", based on the 5-celled von Neumann neighborhood.

The programs for A289879, there is no canonical definition to state claims against.
-/

/-! ## A289879.P16944772127628465220

`A007088(A289881(n))`
-/

namespace A289879.P16944772127628465220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289881 n).toNat

end

end A289879.P16944772127628465220

/-!
# A289880: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 603", based on the 5-celled von Neumann neighborhood.

The programs for A289880, there is no canonical definition to state claims against.
-/

/-! ## A289880.P4975314486815274525

`A007088(A289882(n))`
-/

namespace A289880.P4975314486815274525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289882 n).toNat

end

end A289880.P4975314486815274525

/-! ## A289880.P7493580068718933210

`A007088(or(A180501(n), A289045(n)))`
-/

namespace A289880.P7493580068718933210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A180501 n) (A289045 n)).toNat

end

end A289880.P7493580068718933210

/-!
# A289881: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 603", based on the 5-celled von Neumann neighborhood.

The programs for A289881, there is no canonical definition to state claims against.
-/

/-! ## A289881.P6568274763197215163

`A057889(A289882(n))`
-/

namespace A289881.P6568274763197215163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A289882 n).toNat

end

end A289881.P6568274763197215163

/-! ## A289881.P13841145156692516827

`A325401(lcm(A289882(n), A309432(n)))`
-/

namespace A289881.P13841145156692516827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lcm (A289882 n) (A309432 n))

end

end A289881.P13841145156692516827

/-! ## A289881.P213427508084032988

`or(A003285(A000079(n)), A289044(n))`
-/

namespace A289881.P213427508084032988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003285 (A000079 n).toNat) (A289044 n)

end

end A289881.P213427508084032988

/-! ## A289881.P8604058062844742670

`or(A004442(A051049(n)), A289044(n))`
-/

namespace A289881.P8604058062844742670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004442 (A051049 n).toNat) (A289044 n)

end

end A289881.P8604058062844742670

/-! ## A289881.P3623610441515560339

`or(A003285(A052935(n)), A289044(n))`
-/

namespace A289881.P3623610441515560339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003285 (A052935 n).toNat) (A289044 n)

end

end A289881.P3623610441515560339

/-!
# A289882: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 603", based on the 5-celled von Neumann neighborhood.

The programs for A289882, there is no canonical definition to state claims against.
-/

/-! ## A289882.P7515460310576054352

`A057889(A289881(n))`
-/

namespace A289882.P7515460310576054352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A289881 n).toNat

end

end A289882.P7515460310576054352

/-! ## A289882.P9268888063282963663

`A325401(or(1, A289881(n)))`
-/

namespace A289882.P9268888063282963663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lor 1 (A289881 n)).toNat

end

end A289882.P9268888063282963663

/-! ## A289882.P8729845443454933905

`A325401(floor(A289881(n)+acot(n)))`
-/

namespace A289882.P8729845443454933905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 ⌊(A289881 n : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋.toNat

end

end A289882.P8729845443454933905

/-! ## A289882.P2245217455516582830

`A325401(lcm((-1)^n, A289881(n)))`
-/

namespace A289882.P2245217455516582830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lcm ((-1) ^ n) (A289881 n))

end

end A289882.P2245217455516582830

/-! ## A289882.P13513672536510573351

`A325401(A289881(n)+A000007(n))`
-/

namespace A289882.P13513672536510573351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A289881 n + A000007 n).toNat

end

end A289882.P13513672536510573351

/-!
# A289883: Number of maximal independent vertex sets in the n-triangular honeycomb queen graph.

The programs for A289883, there is no canonical definition to state claims against.
-/

/-! ## A289883.P11350410770528378400

`A155047(A019308(n))`
-/

namespace A289883.P11350410770528378400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155047 (A019308 n).toNat

end

end A289883.P11350410770528378400

/-! ## A289883.P97783202170075701

`A155047(A307685(n+1))`
-/

namespace A289883.P97783202170075701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155047 (A307685 (n + 1)).toNat

end

end A289883.P97783202170075701

/-! ## A289883.P13012450827152596744

`A155047(∑[A155047((∑[n-1]+3)*2^(n-1))])`
-/

namespace A289883.P13012450827152596744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155047 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f2 j + 3 : ℤ) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155047 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A289883.P13012450827152596744

/-!
# A289885: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 605", based on the 5-celled von Neumann neighborhood.

The programs for A289885, there is no canonical definition to state claims against.
-/

/-! ## A289885.P129222528855432727

`or(A289104(A289115(n+2)), A289150(n))`
-/

namespace A289885.P129222528855432727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A289104 (A289115 (n + 2)).toNat) (A289150 n)

end

end A289885.P129222528855432727

/-! ## A289885.P7591278511518305238

`or(A289011(A289028(n)), A289150(n))`
-/

namespace A289885.P7591278511518305238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A289011 (A289028 n).toNat) (A289150 n)

end

end A289885.P7591278511518305238

/-! ## A289885.P12414956666501368483

`A007088(A289887(n))`
-/

namespace A289885.P12414956666501368483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289887 n).toNat

end

end A289885.P12414956666501368483

/-! ## A289885.P368972173192280250

`or(A235145(A289154(n)), A289150(n))`
-/

namespace A289885.P368972173192280250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A235145 (A289154 n).toNat) (A289150 n)

end

end A289885.P368972173192280250

/-! ## A289885.P7302645158215767487

`or(A059841(A045891(n)), A289150(n))`
-/

namespace A289885.P7302645158215767487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059841 (A045891 n).toNat) (A289150 n)

end

end A289885.P7302645158215767487

/-!
# A289886: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 605", based on the 5-celled von Neumann neighborhood.

The programs for A289886, there is no canonical definition to state claims against.
-/

/-! ## A289886.P15149090973678542218

`A007088(A289888(n))`
-/

namespace A289886.P15149090973678542218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289888 n).toNat

end

end A289886.P15149090973678542218

/-! ## A289886.P1342671816589428806

`A305989(A289887(n)/A184318(n+1))`
-/

namespace A289886.P1342671816589428806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A289887 n : ℚ) / (A184318 (n + 1) : ℚ))).toNat

end

end A289886.P1342671816589428806

/-! ## A289886.P7885453826852824505

`A305989(A289887(n))`
-/

namespace A289886.P7885453826852824505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A289887 n).toNat

end

end A289886.P7885453826852824505

/-! ## A289886.P7249119976371404900

`A305989(or(A008676(n), A289764(n)))`
-/

namespace A289886.P7249119976371404900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (Int.lor (A008676 n) (A289764 n)).toNat

end

end A289886.P7249119976371404900

/-! ## A289886.P2048043374842826471

`A305989(or(A185114(n), A289764(n)))`
-/

namespace A289886.P2048043374842826471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (Int.lor (A185114 n) (A289764 n)).toNat

end

end A289886.P2048043374842826471

/-!
# A289887: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 605", based on the 5-celled von Neumann neighborhood.

The programs for A289887, there is no canonical definition to state claims against.
-/

/-! ## A289887.P3915844197474720788

`or(A289011(A289028(n)), A289764(n))`
-/

namespace A289887.P3915844197474720788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A289011 (A289028 n).toNat) (A289764 n)

end

end A289887.P3915844197474720788

/-! ## A289887.P4520988525627634734

`or(A262805(A077415(2*(n+1))), A289764(n))`
-/

namespace A289887.P4520988525627634734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A262805 (A077415 (2 * (n + 1))).toNat) (A289764 n)

end

end A289887.P4520988525627634734

/-! ## A289887.P363311115012241610

`or(A235145(A289154(n)), A289764(n))`
-/

namespace A289887.P363311115012241610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A235145 (A289154 n).toNat) (A289764 n)

end

end A289887.P363311115012241610

/-! ## A289887.P9484839983712343688

`A028310(or(A008676(n), A289764(n)))`
-/

namespace A289887.P9484839983712343688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.lor (A008676 n) (A289764 n)).toNat

end

end A289887.P9484839983712343688

/-! ## A289887.P15568008824520385585

`or(A059841(A045891(n)), A289764(n))`
-/

namespace A289887.P15568008824520385585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059841 (A045891 n).toNat) (A289764 n)

end

end A289887.P15568008824520385585

/-!
# A289888: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 605", based on the 5-celled von Neumann neighborhood.

The programs for A289888, there is no canonical definition to state claims against.
-/

/-! ## A289888.P1800415681094421050

`A325401(A289887(n)/A184318(n+1))`
-/

namespace A289888.P1800415681094421050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway ((A289887 n : ℚ) / (A184318 (n + 1) : ℚ))).toNat

end

end A289888.P1800415681094421050

/-! ## A289888.P14216765991170690377

`A325401(A289887(n))`
-/

namespace A289888.P14216765991170690377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A289887 n).toNat

end

end A289888.P14216765991170690377

/-! ## A289888.P12026012908276416459

`A030101(A289887(n)/A184318(n+1))`
-/

namespace A289888.P12026012908276416459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A289887 n : ℚ) / (A184318 (n + 1) : ℚ))).toNat

end

end A289888.P12026012908276416459

/-! ## A289888.P7001504838768324561

`A030101(and(-1, A289887(n)))`
-/

namespace A289888.P7001504838768324561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (Int.land (-1) (A289887 n)).toNat

end

end A289888.P7001504838768324561

/-! ## A289888.P15029082856389670433

`A030101(ceil(acot(n))*A289887(n))`
-/

namespace A289888.P15029082856389670433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (⌈SequenceMachineLib.acot (n : ℝ)⌉ * A289887 n).toNat

end

end A289888.P15029082856389670433

/-!
# A289889: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 606", based on the 5-celled von Neumann neighborhood.

The programs for A289889, there is no canonical definition to state claims against.
-/

/-! ## A289889.P9520870052802283728

`A007088(A289891(n))`
-/

namespace A289889.P9520870052802283728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289891 n).toNat

end

end A289889.P9520870052802283728

/-! ## A289889.P15081233371274296718

`A185544(2*A289891(n))`
-/

namespace A289889.P15081233371274296718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A289891 n).toNat

end

end A289889.P15081233371274296718

/-! ## A289889.P11858032799658220495

`A185544(lcm(2, A289891(n)))`
-/

namespace A289889.P11858032799658220495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A289891 n))

end

end A289889.P11858032799658220495

/-! ## A289889.P8327913490537499974

`A305989(A289892(n)/A016116(n+1))`
-/

namespace A289889.P8327913490537499974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A289892 n : ℚ) / (A016116 (n + 1) : ℚ))).toNat

end

end A289889.P8327913490537499974

/-! ## A289889.P10394876052903011703

`A305989(2/A016116(n)*A289892(n))`
-/

namespace A289889.P10394876052903011703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway (2 / (A016116 n : ℚ) * (A289892 n : ℚ))).toNat

end

end A289889.P10394876052903011703

/-!
# A289890: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 606", based on the 5-celled von Neumann neighborhood.

The programs for A289890, there is no canonical definition to state claims against.
-/

/-! ## A289890.P16954369445973181505

`A007088(A289892(n))`
-/

namespace A289890.P16954369445973181505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289892 n).toNat

end

end A289890.P16954369445973181505

/-! ## A289890.P9436570600543068889

`A185544(2*A289892(n))`
-/

namespace A289890.P9436570600543068889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A289892 n).toNat

end

end A289890.P9436570600543068889

/-!
# A289891: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 606", based on the 5-celled von Neumann neighborhood.

The programs for A289891, there is no canonical definition to state claims against.
-/

/-! ## A289891.P5874977225255954470

`A030101(A289892(n)/A016116(n+1))`
-/

namespace A289891.P5874977225255954470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A289892 n : ℚ) / (A016116 (n + 1) : ℚ))).toNat

end

end A289891.P5874977225255954470

/-! ## A289891.P13631380288797098860

`A030101(2/A016116(n)*A289892(n))`
-/

namespace A289891.P13631380288797098860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway (2 / (A016116 n : ℚ) * (A289892 n : ℚ))).toNat

end

end A289891.P13631380288797098860

/-! ## A289891.P8622452569883889407

`A030101(A289892(n)/A113402(2*n+1))`
-/

namespace A289891.P8622452569883889407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A289892 n : ℚ) / (A113402 (2 * n + 1) : ℚ))).toNat

end

end A289891.P8622452569883889407

/-! ## A289891.P2197693760135166967

`A030101(A289892(n)/A137688(n))`
-/

namespace A289891.P2197693760135166967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A289892 n : ℚ) / (A137688 n : ℚ))).toNat

end

end A289891.P2197693760135166967

/-! ## A289891.P3864654020293455881

`A281589(A289892(n)/A113402(n+1))`
-/

namespace A289891.P3864654020293455881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (SequenceMachineLib.roundAway ((A289892 n : ℚ) / (A113402 (n + 1) : ℚ))).toNat

end

end A289891.P3864654020293455881

/-!
# A289895: Numbers that are the sum of distinct square pyramidal numbers (A000330).

The programs for A289895, there is no canonical definition to state claims against.
-/

/-! ## A289895.P3015454811556623307

`eq[1, A000045(A298246(n))]`
-/

namespace A289895.P3015454811556623307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A298246 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289895.P3015454811556623307

/-! ## A289895.P745776752185789537

`lt[A073592(A298246(n)²), 1]`
-/

namespace A289895.P745776752185789537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073592 (A298246 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A289895.P745776752185789537

/-! ## A289895.P421718710115290607

`lt[A298246(A298246(n)+1), 1]`
-/

namespace A289895.P421718710115290607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298246 (A298246 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A289895.P421718710115290607

/-! ## A289895.P10252498686658656318

`lt[A290858(n), A014820(A298246(n))]`
-/

namespace A289895.P10252498686658656318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290858 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014820 (A298246 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A289895.P10252498686658656318

/-! ## A289895.P4698849542965833583

`lt[A298246(2*n), A015224(A298246(n))]`
-/

namespace A289895.P4698849542965833583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298246 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015224 (A298246 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A289895.P4698849542965833583

/-! ## A289895.P749573514843832039

`eq[A010054(3*n+2), A338914(A298246(n))]`
-/

namespace A289895.P749573514843832039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338914 (A298246 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A289895.P749573514843832039

/-!
# A289896: Number of (undirected) cycles in the n-triangular honeycomb rook graph.

The programs for A289896, there is no canonical definition to state claims against.
-/

/-! ## A289896.P13274499039325630931

`∑[∑[C(n, 2)+n*a(n-1)]]` with `a(0)=0`
-/

namespace A289896.P13274499039325630931
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  Nat.choose n 2 + n * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289896.P13274499039325630931

/-! ## A289896.P5501021756855307644

`∑[∑[∑[n]+n*(a(n-1)-1)]]` with `a(0)=0`
-/

namespace A289896.P5501021756855307644
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) + (n : ℤ) * (f2 (n - 1) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289896.P5501021756855307644

/-! ## A289896.P15482925811393485469

`∑[∑[∑[n]-n*(1-a(n-1))]]` with `a(0)=0, a(1)=0`
-/

namespace A289896.P15482925811393485469
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - (n : ℤ) * (1 - f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289896.P15482925811393485469

/-! ## A289896.P14424631074273718551

`∑[∑[A038155(n)]]`
-/

namespace A289896.P14424631074273718551
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038155 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289896.P14424631074273718551

/-! ## A289896.P2701598234348704968

`∑[A002807(n+1)]`
-/

namespace A289896.P2701598234348704968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289896.P2701598234348704968

/-!
# A289897: Number of matchings in the n-triangular honeycomb rook graph.

The programs for A289897, there is no canonical definition to state claims against.
-/

/-! ## A289897.P7863434757683152242

`∏[∏[n/a(n-1)+1]]` with `a(0)=1`
-/

namespace A289897.P7863434757683152242
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  (n : ℚ) / f2 (n - 1) + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A289897.P7863434757683152242

/-! ## A289897.P4414448251853031141

`∏[a(n-1)+n*a(n-2)]` with `a(0)=1, a(1)=2`
-/

namespace A289897.P4414448251853031141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + n * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A289897.P4414448251853031141

/-! ## A289897.P14729895545154685277

`∏[a(n-1)-(n*(1-a(n-2))-n)]` with `a(0)=1, a(1)=2`
-/

namespace A289897.P14729895545154685277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) - ((n : ℤ) * (1 - f1 (n - 2)) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A289897.P14729895545154685277

/-! ## A289897.P13210718543595259784

`∏[Δ[A245176(n)]]`
-/

namespace A289897.P13210718543595259784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245176 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A289897.P13210718543595259784

/-! ## A289897.P17661351170286203744

`∏[record[A070895(n)]]`
-/

namespace A289897.P17661351170286203744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070895 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A289897.P17661351170286203744

/-!
# A289898: a(n) = floor((2^prime(n+1))/Sum_{k=0|n,2^prime(k)}).

The programs for A289898, there is no canonical definition to state claims against.
-/

/-! ## A289898.P7942386888390493100

`floor(A034785(n+2)/∑[A034785(n+1)])`
-/

namespace A289898.P7942386888390493100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A034785 (n + 2) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌋

end

end A289898.P7942386888390493100

