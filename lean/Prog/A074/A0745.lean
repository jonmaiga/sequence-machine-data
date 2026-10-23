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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A074500: Difference between n*sqrt(n)+1 and prime(n), rounded to nearest integer.

The programs for A074500, the canonical program `A074500.P5724242199096576058` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074500 has offset 1).

The definition of A074500 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074500.P5724242199096576058

`round(sqrt((n+1)^3))-A006093(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A074500

/-- `round(sqrt((n+1)^3))-A006093(n+1)` -/
def P5724242199096576058.Spec : Prop :=
  ∀ n, P5724242199096576058.a n = A074500 (n + 1)

theorem P5724242199096576058.correct : P5724242199096576058.Spec := by
  intro n
  simp only [A074500, Nat.add_sub_cancel]

end A074500

/-! ## A074500.P3760713724440342041

`round(sqrt((n+1)^3))+1-A000040(n+1)`
-/

namespace A074500.P3760713724440342041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((n + 1) ^ 3 : ℝ)) + 1 - A000040 (n + 1)

end

end A074500.P3760713724440342041

namespace A074500

/-- `round(sqrt((n+1)^3))+1-A000040(n+1)` -/
def P3760713724440342041.Spec : Prop :=
  ∀ n, P3760713724440342041.a n = A074500 (n + 1)

end A074500

/-! ## A074500.P8515983489932205406

`A002821(n+1)+1-A000040(n+1)`
-/

namespace A074500.P8515983489932205406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002821 (n + 1) + (1 - A000040 (n + 1))

end

end A074500.P8515983489932205406

namespace A074500

/-- `A002821(n+1)+1-A000040(n+1)` -/
def P8515983489932205406.Spec : Prop :=
  ∀ n, P8515983489932205406.a n = A074500 (n + 1)

end A074500

/-! ## A074500.P3243776519558394799

`round(sqrt((n+1)^3))-record[A000010(n+1)]`
-/

namespace A074500.P3243776519558394799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((n + 1) ^ 3 : ℝ)) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074500.P3243776519558394799

namespace A074500

/-- `round(sqrt((n+1)^3))-record[A000010(n+1)]` -/
def P3243776519558394799.Spec : Prop :=
  ∀ n, P3243776519558394799.a n = A074500 (n + 1)

end A074500

/-! ## A074500.P14125957205803950375

`round(sqrt((n+1)^3))-record[A006530(n+2)]+1`
-/

namespace A074500.P14125957205803950375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((n + 1) ^ 3 : ℝ)) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A074500.P14125957205803950375

namespace A074500

/-- `round(sqrt((n+1)^3))-record[A006530(n+2)]+1` -/
def P14125957205803950375.Spec : Prop :=
  ∀ n, P14125957205803950375.a n = A074500 (n + 1)

end A074500

/-! ## A074500.P888945954393699397

`A002821(n+1)-A000010(Δ[A007504(n)])`
-/

namespace A074500.P888945954393699397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002821 (n + 1) - A000010 (f1 (n + 1) - f1 n).toNat

end

end A074500.P888945954393699397

namespace A074500

/-- `A002821(n+1)-A000010(Δ[A007504(n)])` -/
def P888945954393699397.Spec : Prop :=
  ∀ n, P888945954393699397.a n = A074500 (n + 1)

end A074500

/-! ## A074500.P5811630877289648168

`round((n+1)²/sqrt(n+1))-eq[1, A001222(n+1)]`
-/

namespace A074500.P5811630877289648168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℝ) / Real.sqrt (n + 1 : ℝ)) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A074500.P5811630877289648168

namespace A074500

/-- `round((n+1)²/sqrt(n+1))-eq[1, A001222(n+1)]` -/
def P5811630877289648168.Spec : Prop :=
  ∀ n, P5811630877289648168.a n = A074500 (n + 1)

end A074500

/-! ## A074500.P16893375359388532492

`A002821(n+1)-eq[2, A000005(n+1)]`
-/

namespace A074500.P16893375359388532492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002821 (n + 1) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A074500.P16893375359388532492

namespace A074500

/-- `A002821(n+1)-eq[2, A000005(n+1)]` -/
def P16893375359388532492.Spec : Prop :=
  ∀ n, P16893375359388532492.a n = A074500 (n + 1)

end A074500

/-! ## A074500.P7146898254702500250

`A002821(n+1)-record[A002322(n+1)]`
-/

namespace A074500.P7146898254702500250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002821 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074500.P7146898254702500250

namespace A074500

/-- `A002821(n+1)-record[A002322(n+1)]` -/
def P7146898254702500250.Spec : Prop :=
  ∀ n, P7146898254702500250.a n = A074500 (n + 1)

end A074500

/-!
# A074501: a(n) = 1^n + 2^n + 5^n.

The programs for A074501, the canonical program `A074501.P455223776824412715` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074501 has offset 0).

The definition of A074501 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+2^n+5^n` (program `A074501.P455223776824412715`, by `A074501.P455223776824412715.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074501.P15534208100897605080

`1+2^n+5^n`
-/

namespace A074501.P15534208100897605080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 2 ^ n + 5 ^ n

end

end A074501.P15534208100897605080

namespace A074501

/-- `1+2^n+5^n` -/
def P15534208100897605080.Spec : Prop :=
  ∀ n, (P15534208100897605080.a n : ℤ) = A074501 n

theorem P15534208100897605080.correct : P15534208100897605080.Spec := by
  intro n
  simp only [A074501, Nat.add_sub_cancel, A074501.P15534208100897605080.a, A074501.P455223776824412715.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A074501

/-! ## A074501.P455223776824412715

`1^n+2^n+5^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074501

/-- `1^n+2^n+5^n` -/
def P455223776824412715.Spec : Prop :=
  ∀ n, (P455223776824412715.a n : ℤ) = A074501 n

theorem P455223776824412715.correct : P455223776824412715.Spec := by
  intro n
  simp only [A074501]

end A074501

/-! ## A074501.P11716615977951757998

`abs(log2(1/2)-A074600(n))`
-/

namespace A074501.P11716615977951757998
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.logb 2 ((1 : ℚ) / 2 : ℝ) - (A074600 n : ℝ)|

end

end A074501.P11716615977951757998

namespace A074501

/-- `abs(log2(1/2)-A074600(n))` -/
def P11716615977951757998.Spec : Prop :=
  ∀ n, P11716615977951757998.a n = (A074501 n : ℝ)

end A074501

/-! ## A074501.P337348559461538163

`∑{d}[-a(n-1), A000041(#)^n]` with `a(0)=4`
-/

namespace A074501.P337348559461538163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000041 d ^ n

end

end A074501.P337348559461538163

namespace A074501

/-- `∑{d}[-a(n-1), A000041(#)^n]` -/
def P337348559461538163.Spec : Prop :=
  ∀ n, P337348559461538163.a n = A074501 n

end A074501

/-! ## A074501.P3423711347243296547

`or(A074600(n)+1, A000007(n))`
-/

namespace A074501.P3423711347243296547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A074600 n + 1) (A000007 n)

end

end A074501.P3423711347243296547

namespace A074501

/-- `or(A074600(n)+1, A000007(n))` -/
def P3423711347243296547.Spec : Prop :=
  ∀ n, P3423711347243296547.a n = A074501 n

end A074501

/-! ## A074501.P13407729632650257713

`abs(A034474(n)+Δ[A052548(n)])`
-/

namespace A074501.P13407729632650257713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052548 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034474 n + (f1 (n + 1) - f1 n)|

end

end A074501.P13407729632650257713

namespace A074501

/-- `abs(A034474(n)+Δ[A052548(n)])` -/
def P13407729632650257713.Spec : Prop :=
  ∀ n, P13407729632650257713.a n = A074501 n

end A074501

/-! ## A074501.P11948821312963342960

`Δ[A006127(n)+A003463(n)]`
-/

namespace A074501.P11948821312963342960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006127 n + A003463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074501.P11948821312963342960

namespace A074501

/-- `Δ[A006127(n)+A003463(n)]` -/
def P11948821312963342960.Spec : Prop :=
  ∀ n, P11948821312963342960.a n = A074501 n

end A074501

/-! ## A074501.P686657909481991280

`record[A000351(A025581(n))+A054582(n)+1]`
-/

namespace A074501.P686657909481991280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A025581 n).toNat + (A054582 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074501.P686657909481991280

namespace A074501

/-- `record[A000351(A025581(n))+A054582(n)+1]` -/
def P686657909481991280.Spec : Prop :=
  ∀ n, P686657909481991280.a n = A074501 n

end A074501

/-! ## A074501.P5244182585298288113

`record[1-(A152572(n)+A152568(n))]`
-/

namespace A074501.P5244182585298288113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A152572 n + A152568 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074501.P5244182585298288113

namespace A074501

/-- `record[1-(A152572(n)+A152568(n))]` -/
def P5244182585298288113.Spec : Prop :=
  ∀ n, P5244182585298288113.a n = A074501 n

end A074501

/-! ## A074501.P14442203959169128600

`(A050621(n+1)+A034474(n)²)/A034474(n)`
-/

namespace A074501.P14442203959169128600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050621 (n + 1) + A034474 n ^ 2 : ℚ) / (A034474 n : ℚ)

end

end A074501.P14442203959169128600

namespace A074501

/-- `(A050621(n+1)+A034474(n)²)/A034474(n)` -/
def P14442203959169128600.Spec : Prop :=
  ∀ n, P14442203959169128600.a n = (A074501 n : ℚ)

end A074501

/-!
# A074502: a(n) = 1^n + 2^n + 6^n.

The programs for A074502, the canonical program `A074502.P12330941856278510367` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074502 has offset 0).

The definition of A074502 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+2^n+6^n` (program `A074502.P12330941856278510367`, by `A074502.P12330941856278510367.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074502.P12330941856278510367

`1^n+2^n+6^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074502

/-- `1^n+2^n+6^n` -/
def P12330941856278510367.Spec : Prop :=
  ∀ n, (P12330941856278510367.a n : ℤ) = A074502 n

theorem P12330941856278510367.correct : P12330941856278510367.Spec := by
  intro n
  simp only [A074502]

end A074502

/-! ## A074502.P2098299585448477101

`or(1, A074601(n))`
-/

namespace A074502.P2098299585448477101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A074601 n)

end

end A074502.P2098299585448477101

namespace A074502

/-- `or(1, A074601(n))` -/
def P2098299585448477101.Spec : Prop :=
  ∀ n, P2098299585448477101.a n = A074502 n

end A074502

/-! ## A074502.P6996932616313891663

`or(1, A155589(n)+1)`
-/

namespace A074502.P6996932616313891663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A155589 n + 1)

end

end A074502.P6996932616313891663

namespace A074502

/-- `or(1, A155589(n)+1)` -/
def P6996932616313891663.Spec : Prop :=
  ∀ n, P6996932616313891663.a n = A074502 n

end A074502

/-! ## A074502.P1238753662972961490

`xor(1, A092807(n+1))`
-/

namespace A074502.P1238753662972961490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A092807 (n + 1))

end

end A074502.P1238753662972961490

namespace A074502

/-- `xor(1, A092807(n+1))` -/
def P1238753662972961490.Spec : Prop :=
  ∀ n, P1238753662972961490.a n = A074502 n

end A074502

/-! ## A074502.P14270883960452320381

`or(1, 2*A081335(n))`
-/

namespace A074502.P14270883960452320381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * A081335 n)

end

end A074502.P14270883960452320381

namespace A074502

/-- `or(1, 2*A081335(n))` -/
def P14270883960452320381.Spec : Prop :=
  ∀ n, P14270883960452320381.a n = A074502 n

end A074502

/-! ## A074502.P14225626173733183896

`abs(3^n-A034488(n))`
-/

namespace A074502.P14225626173733183896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 ^ n : ℤ) - A034488 n|

end

end A074502.P14225626173733183896

namespace A074502

/-- `abs(3^n-A034488(n))` -/
def P14225626173733183896.Spec : Prop :=
  ∀ n, P14225626173733183896.a n = A074502 n

end A074502

/-! ## A074502.P13706725047613233634

`or(1, A062394(n)+2^n)`
-/

namespace A074502.P13706725047613233634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A062394 n + (2 ^ n : ℤ))

end

end A074502.P13706725047613233634

namespace A074502

/-- `or(1, A062394(n)+2^n)` -/
def P13706725047613233634.Spec : Prop :=
  ∀ n, P13706725047613233634.a n = A074502 n

end A074502

/-! ## A074502.P5995421425706236350

`or(1, A000051(n)+6^n)`
-/

namespace A074502.P5995421425706236350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000051 n + (6 ^ n : ℤ))

end

end A074502.P5995421425706236350

namespace A074502

/-- `or(1, A000051(n)+6^n)` -/
def P5995421425706236350.Spec : Prop :=
  ∀ n, P5995421425706236350.a n = A074502 n

end A074502

/-! ## A074502.P17804420383497947873

`or(1, A000079(n)+6^n)`
-/

namespace A074502.P17804420383497947873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000079 n + (6 ^ n : ℤ))

end

end A074502.P17804420383497947873

namespace A074502

/-- `or(1, A000079(n)+6^n)` -/
def P17804420383497947873.Spec : Prop :=
  ∀ n, P17804420383497947873.a n = A074502 n

end A074502

/-! ## A074502.P10295344118818922864

`∑{e}[A179703(n+1), #^n]`
-/

namespace A074502.P10295344118818922864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179703 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p ^ n

end

end A074502.P10295344118818922864

namespace A074502

/-- `∑{e}[A179703(n+1), #^n]` -/
def P10295344118818922864.Spec : Prop :=
  ∀ n, (P10295344118818922864.a n : ℤ) = A074502 n

end A074502

/-! ## A074502.P16036925100067890342

`∑[6*a(n-1)-A011782(n+1)]` with `a(0)=3, a(1)=6`
-/

namespace A074502.P16036925100067890342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 6] fun n f1 =>
  6 * f1 (n - 1) - A011782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074502.P16036925100067890342

namespace A074502

/-- `∑[6*a(n-1)-A011782(n+1)]` -/
def P16036925100067890342.Spec : Prop :=
  ∀ n, P16036925100067890342.a n = A074502 n

end A074502

/-! ## A074502.P15437979450011741559

`or(1, A000400(n)+A000051(n))`
-/

namespace A074502.P15437979450011741559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000400 n + A000051 n)

end

end A074502.P15437979450011741559

namespace A074502

/-- `or(1, A000400(n)+A000051(n))` -/
def P15437979450011741559.Spec : Prop :=
  ∀ n, P15437979450011741559.a n = A074502 n

end A074502

/-! ## A074502.P11898263051963092996

`xor(1, A000400(n)+A000079(n))`
-/

namespace A074502.P11898263051963092996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A000400 n + A000079 n)

end

end A074502.P11898263051963092996

namespace A074502

/-- `xor(1, A000400(n)+A000079(n))` -/
def P11898263051963092996.Spec : Prop :=
  ∀ n, P11898263051963092996.a n = A074502 n

end A074502

/-! ## A074502.P16222269780112114869

`record[A055235(n)*A055248(n)+1]`
-/

namespace A074502.P16222269780112114869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055235 n * A055248 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074502.P16222269780112114869

namespace A074502

/-- `record[A055235(n)*A055248(n)+1]` -/
def P16222269780112114869.Spec : Prop :=
  ∀ n, P16222269780112114869.a n = A074502 n

end A074502

/-! ## A074502.P5527140085716220622

`or(1, (sqrt(A001019(n))+1)*A000079(n)+1)`
-/

namespace A074502.P5527140085716220622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway ((Real.sqrt (A001019 n : ℝ) + 1) * (A000079 n : ℝ) + 1))

end

end A074502.P5527140085716220622

namespace A074502

/-- `or(1, (sqrt(A001019(n))+1)*A000079(n)+1)` -/
def P5527140085716220622.Spec : Prop :=
  ∀ n, P5527140085716220622.a n = A074502 n

end A074502

/-!
# A074503: a(n) = 1^n + 2^n + 7^n.

The programs for A074503, the canonical program `A074503.P2316594922775968962` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074503 has offset 0).

The definition of A074503 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+2^n+7^n` (program `A074503.P2316594922775968962`, by `A074503.P2316594922775968962.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074503.P2316594922775968962

`1^n+2^n+7^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074503

/-- `1^n+2^n+7^n` -/
def P2316594922775968962.Spec : Prop :=
  ∀ n, (P2316594922775968962.a n : ℤ) = A074503 n

theorem P2316594922775968962.correct : P2316594922775968962.Spec := by
  intro n
  simp only [A074503]

end A074503

/-! ## A074503.P8562183767680236457

`abs(log2(1/2)-A074602(n))`
-/

namespace A074503.P8562183767680236457
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.logb 2 ((1 : ℚ) / 2 : ℝ) - (A074602 n : ℝ)|

end

end A074503.P8562183767680236457

namespace A074503

/-- `abs(log2(1/2)-A074602(n))` -/
def P8562183767680236457.Spec : Prop :=
  ∀ n, P8562183767680236457.a n = (A074503 n : ℝ)

end A074503

/-! ## A074503.P16387124213481798051

`abs(1-(log2(1/2)-A155590(n)))`
-/

namespace A074503.P16387124213481798051
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |1 - (Real.logb 2 ((1 : ℚ) / 2 : ℝ) - (A155590 n : ℝ))|

end

end A074503.P16387124213481798051

namespace A074503

/-- `abs(1-(log2(1/2)-A155590(n)))` -/
def P16387124213481798051.Spec : Prop :=
  ∀ n, P16387124213481798051.a n = (A074503 n : ℝ)

end A074503

/-! ## A074503.P2644573046408517910

`Δ[A023000(n)+A005126(n)]`
-/

namespace A074503.P2644573046408517910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023000 n + A005126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074503.P2644573046408517910

namespace A074503

/-- `Δ[A023000(n)+A005126(n)]` -/
def P2644573046408517910.Spec : Prop :=
  ∀ n, P2644573046408517910.a n = A074503 n

end A074503

/-! ## A074503.P7899199226571181352

`Δ[A023000(n)+A000051(n)+n]`
-/

namespace A074503.P7899199226571181352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023000 n + A000051 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074503.P7899199226571181352

namespace A074503

/-- `Δ[A023000(n)+A000051(n)+n]` -/
def P7899199226571181352.Spec : Prop :=
  ∀ n, P7899199226571181352.a n = A074503 n

end A074503

/-! ## A074503.P7629027558123822729

`Δ[A023000(n)+A000079(n)+n]`
-/

namespace A074503.P7629027558123822729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023000 n + A000079 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074503.P7629027558123822729

namespace A074503

/-- `Δ[A023000(n)+A000079(n)+n]` -/
def P7629027558123822729.Spec : Prop :=
  ∀ n, P7629027558123822729.a n = A074503 n

end A074503

/-! ## A074503.P18144225566587281881

`record[A074602(A004523(n))+(1-n%3)²]`
-/

namespace A074503.P18144225566587281881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074602 (A004523 n).toNat + (1 - ((n % 3 : ℕ) : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074503.P18144225566587281881

namespace A074503

/-- `record[A074602(A004523(n))+(1-n%3)²]` -/
def P18144225566587281881.Spec : Prop :=
  ∀ n, P18144225566587281881.a n = A074503 n

end A074503

/-! ## A074503.P16976468248906484961

`Δ[A074602(n)]%A198687(n)`
-/

namespace A074503.P16976468248906484961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A198687 n)

end

end A074503.P16976468248906484961

namespace A074503

/-- `Δ[A074602(n)]%A198687(n)` -/
def P16976468248906484961.Spec : Prop :=
  ∀ n, P16976468248906484961.a n = A074503 n

end A074503

/-! ## A074503.P1039781493704232262

`(A074602(n)+1)%A074602(n+1)`
-/

namespace A074503.P1039781493704232262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074602 n + 1) (A074602 (n + 1))

end

end A074503.P1039781493704232262

namespace A074503

/-- `(A074602(n)+1)%A074602(n+1)` -/
def P1039781493704232262.Spec : Prop :=
  ∀ n, P1039781493704232262.a n = A074503 n

end A074503

/-! ## A074503.P12779504537133791122

`(A198692(n)+A000079(n))%A198687(n)`
-/

namespace A074503.P12779504537133791122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198692 n + A000079 n) (A198687 n)

end

end A074503.P12779504537133791122

namespace A074503

/-- `(A198692(n)+A000079(n))%A198687(n)` -/
def P12779504537133791122.Spec : Prop :=
  ∀ n, P12779504537133791122.a n = A074503 n

end A074503

/-! ## A074503.P16880879256534651574

`abs(A024088(n)-A074544(n))`
-/

namespace A074503.P16880879256534651574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024088 n - A074544 n|

end

end A074503.P16880879256534651574

namespace A074503

/-- `abs(A024088(n)-A074544(n))` -/
def P16880879256534651574.Spec : Prop :=
  ∀ n, P16880879256534651574.a n = A074503 n

end A074503

/-!
# A074504: a(n) = 1^n + 2^n + 8^n.

The programs for A074504, the canonical program `A074504.P13616172850196297059` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074504 has offset 0).

The definition of A074504 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+2^n+8^n` (program `A074504.P13616172850196297059`, by `A074504.P13616172850196297059.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074504.P13616172850196297059

`1^n+2^n+8^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074504

/-- `1^n+2^n+8^n` -/
def P13616172850196297059.Spec : Prop :=
  ∀ n, (P13616172850196297059.a n : ℤ) = A074504 n

theorem P13616172850196297059.correct : P13616172850196297059.Spec := by
  intro n
  simp only [A074504]

end A074504

/-! ## A074504.P9278186549204484651

`or(1, A074603(n))`
-/

namespace A074504.P9278186549204484651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A074603 n)

end

end A074504.P9278186549204484651

namespace A074504

/-- `or(1, A074603(n))` -/
def P9278186549204484651.Spec : Prop :=
  ∀ n, P9278186549204484651.a n = A074504 n

end A074504

/-! ## A074504.P17531303104678065585

`or(1, A155592(n)+1)`
-/

namespace A074504.P17531303104678065585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A155592 n + 1)

end

end A074504.P17531303104678065585

namespace A074504

/-- `or(1, A155592(n)+1)` -/
def P17531303104678065585.Spec : Prop :=
  ∀ n, P17531303104678065585.a n = A074504 n

end A074504

/-! ## A074504.P1121483896727589517

`or(2^n, A062395(n))`
-/

namespace A074504.P1121483896727589517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ n : ℤ) (A062395 n)

end

end A074504.P1121483896727589517

namespace A074504

/-- `or(2^n, A062395(n))` -/
def P1121483896727589517.Spec : Prop :=
  ∀ n, P1121483896727589517.a n = A074504 n

end A074504

/-! ## A074504.P16281620540627919759

`or(8^n, A000051(n))`
-/

namespace A074504.P16281620540627919759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (8 ^ n : ℤ) (A000051 n)

end

end A074504.P16281620540627919759

namespace A074504

/-- `or(8^n, A000051(n))` -/
def P16281620540627919759.Spec : Prop :=
  ∀ n, P16281620540627919759.a n = A074504 n

end A074504

/-! ## A074504.P4960231601702720440

`abs(4^n-A034496(n))`
-/

namespace A074504.P4960231601702720440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(4 ^ n : ℤ) - A034496 n|

end

end A074504.P4960231601702720440

namespace A074504

/-- `abs(4^n-A034496(n))` -/
def P4960231601702720440.Spec : Prop :=
  ∀ n, P4960231601702720440.a n = A074504 n

end A074504

/-! ## A074504.P13020912872696363238

`or(8^n, Δ[A005126(n)])`
-/

namespace A074504.P13020912872696363238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (8 ^ n : ℤ) (f1 (n + 1) - f1 n)

end

end A074504.P13020912872696363238

namespace A074504

/-- `or(8^n, Δ[A005126(n)])` -/
def P13020912872696363238.Spec : Prop :=
  ∀ n, P13020912872696363238.a n = A074504 n

end A074504

/-! ## A074504.P4348937272391570315

`or(2^n+1, A001018(n))`
-/

namespace A074504.P4348937272391570315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ n + 1 : ℤ) (A001018 n)

end

end A074504.P4348937272391570315

namespace A074504

/-- `or(2^n+1, A001018(n))` -/
def P4348937272391570315.Spec : Prop :=
  ∀ n, P4348937272391570315.a n = A074504 n

end A074504

/-! ## A074504.P5481708028305114065

`xor(2^n, A000051(3*n))`
-/

namespace A074504.P5481708028305114065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 ^ n : ℤ) (A000051 (3 * n))

end

end A074504.P5481708028305114065

namespace A074504

/-- `xor(2^n, A000051(3*n))` -/
def P5481708028305114065.Spec : Prop :=
  ∀ n, P5481708028305114065.a n = A074504 n

end A074504

/-! ## A074504.P14502943304209323278

`or(8^n+1, A000079(n))`
-/

namespace A074504.P14502943304209323278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (8 ^ n + 1 : ℤ) (A000079 n)

end

end A074504.P14502943304209323278

namespace A074504

/-- `or(8^n+1, A000079(n))` -/
def P14502943304209323278.Spec : Prop :=
  ∀ n, P14502943304209323278.a n = A074504 n

end A074504

/-! ## A074504.P4018784389450781362

`Δ[A023001(n)+A000225(n)+n]`
-/

namespace A074504.P4018784389450781362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 n + A000225 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074504.P4018784389450781362

namespace A074504

/-- `Δ[A023001(n)+A000225(n)+n]` -/
def P4018784389450781362.Spec : Prop :=
  ∀ n, P4018784389450781362.a n = A074504 n

end A074504

/-! ## A074504.P4277861920188295370

`or(A000079(n)+1, A131577(A016777(n)))`
-/

namespace A074504.P4277861920188295370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000079 n + 1) (A131577 (A016777 n).toNat)

end

end A074504.P4277861920188295370

namespace A074504

/-- `or(A000079(n)+1, A131577(A016777(n)))` -/
def P4277861920188295370.Spec : Prop :=
  ∀ n, P4277861920188295370.a n = A074504 n

end A074504

/-!
# A074505: a(n) = 1^n + 2^n + 9^n.

The programs for A074505, the canonical program `A074505.P17127150442839759814` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074505 has offset 0).

The definition of A074505 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+2^n+9^n` (program `A074505.P17127150442839759814`, by `A074505.P17127150442839759814.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074505.P17127150442839759814

`1^n+2^n+9^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074505

/-- `1^n+2^n+9^n` -/
def P17127150442839759814.Spec : Prop :=
  ∀ n, (P17127150442839759814.a n : ℤ) = A074505 n

theorem P17127150442839759814.correct : P17127150442839759814.Spec := by
  intro n
  simp only [A074505]

end A074505

/-! ## A074505.P4763449330322754175

`C(A074604(n)+1, ceil(acot(n)))`
-/

namespace A074505.P4763449330322754175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A074604 n + 1).toNat ⌈SequenceMachineLib.acot (n : ℝ)⌉.toNat

end

end A074505.P4763449330322754175

namespace A074505

/-- `C(A074604(n)+1, ceil(acot(n)))` -/
def P4763449330322754175.Spec : Prop :=
  ∀ n, (P4763449330322754175.a n : ℤ) = A074505 n

end A074505

/-! ## A074505.P3904861344339437165

`abs(A001047(n)-A034513(n))`
-/

namespace A074505.P3904861344339437165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001047 n - A034513 n|

end

end A074505.P3904861344339437165

namespace A074505

/-- `abs(A001047(n)-A034513(n))` -/
def P3904861344339437165.Spec : Prop :=
  ∀ n, P3904861344339437165.a n = A074505 n

end A074505

/-! ## A074505.P8648883270679101647

`abs(A020522(n)-A074515(n))`
-/

namespace A074505.P8648883270679101647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A020522 n - A074515 n|

end

end A074505.P8648883270679101647

namespace A074505

/-- `abs(A020522(n)-A074515(n))` -/
def P8648883270679101647.Spec : Prop :=
  ∀ n, P8648883270679101647.a n = A074505 n

end A074505

/-! ## A074505.P6620045888594560008

`Δ[A005126(n)+A002452(n)]`
-/

namespace A074505.P6620045888594560008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005126 n + A002452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074505.P6620045888594560008

namespace A074505

/-- `Δ[A005126(n)+A002452(n)]` -/
def P6620045888594560008.Spec : Prop :=
  ∀ n, P6620045888594560008.a n = A074505 n

end A074505

/-! ## A074505.P3270795636048582068

`Δ[A006127(n)+A002452(n)]`
-/

namespace A074505.P3270795636048582068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006127 n + A002452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074505.P3270795636048582068

namespace A074505

/-- `Δ[A006127(n)+A002452(n)]` -/
def P3270795636048582068.Spec : Prop :=
  ∀ n, P3270795636048582068.a n = A074505 n

end A074505

/-! ## A074505.P9607542345152200664

`or(A074604(n)+1, A103271(n+1))`
-/

namespace A074505.P9607542345152200664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A074604 n + 1) (A103271 (n + 1))

end

end A074505.P9607542345152200664

namespace A074505

/-- `or(A074604(n)+1, A103271(n+1))` -/
def P9607542345152200664.Spec : Prop :=
  ∀ n, P9607542345152200664.a n = A074505 n

end A074505

/-! ## A074505.P5675536309708758800

`abs(Δ[A002452(n)+A000225(n)]+1)`
-/

namespace A074505.P5675536309708758800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002452 n + A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n + 1|

end

end A074505.P5675536309708758800

namespace A074505

/-- `abs(Δ[A002452(n)+A000225(n)]+1)` -/
def P5675536309708758800.Spec : Prop :=
  ∀ n, P5675536309708758800.a n = A074505 n

end A074505

/-!
# A074506: a(n) = 1^n + 3^n + 4^n.

The programs for A074506, the canonical program `A074506.P11281591618345595835` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074506 has offset 0).

The definition of A074506 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+3^n+4^n` (program `A074506.P11281591618345595835`, by `A074506.P11281591618345595835.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074506.P11281591618345595835

`1^n+3^n+4^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074506

/-- `1^n+3^n+4^n` -/
def P11281591618345595835.Spec : Prop :=
  ∀ n, (P11281591618345595835.a n : ℤ) = A074506 n

theorem P11281591618345595835.correct : P11281591618345595835.Spec := by
  intro n
  simp only [A074506]

end A074506

/-! ## A074506.P17043389597648166832

`abs(xor(-1, A074605(n)))`
-/

namespace A074506.P17043389597648166832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-1) (A074605 n)|

end

end A074506.P17043389597648166832

namespace A074506

/-- `abs(xor(-1, A074605(n)))` -/
def P17043389597648166832.Spec : Prop :=
  ∀ n, P17043389597648166832.a n = A074506 n

end A074506

/-! ## A074506.P11623185126006539222

`abs(A000079(n)-A001551(n))`
-/

namespace A074506.P11623185126006539222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A001551 n|

end

end A074506.P11623185126006539222

namespace A074506

/-- `abs(A000079(n)-A001551(n))` -/
def P11623185126006539222.Spec : Prop :=
  ∀ n, P11623185126006539222.a n = A074506 n

end A074506

/-! ## A074506.P10905632349926040717

`abs(A000079(n)-(A074526(n)+1))`
-/

namespace A074506.P10905632349926040717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - (A074526 n + 1)|

end

end A074506.P10905632349926040717

namespace A074506

/-- `abs(A000079(n)-(A074526(n)+1))` -/
def P10905632349926040717.Spec : Prop :=
  ∀ n, P10905632349926040717.a n = A074506 n

end A074506

/-! ## A074506.P10609698141919198424

`lcm(A074605(n)+1, A343785(n+1))`
-/

namespace A074506.P10609698141919198424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A074605 n + 1) (A343785 (n + 1))

end

end A074506.P10609698141919198424

namespace A074506

/-- `lcm(A074605(n)+1, A343785(n+1))` -/
def P10609698141919198424.Spec : Prop :=
  ∀ n, (P10609698141919198424.a n : ℤ) = A074506 n

end A074506

/-! ## A074506.P6443095387481352160

`(A074605(n)+1)*A001222(A096635(n+1))`
-/

namespace A074506.P6443095387481352160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074605 n + 1) * A001222 (A096635 (n + 1)).toNat

end

end A074506.P6443095387481352160

namespace A074506

/-- `(A074605(n)+1)*A001222(A096635(n+1))` -/
def P6443095387481352160.Spec : Prop :=
  ∀ n, P6443095387481352160.a n = A074506 n

end A074506

/-! ## A074506.P5785139377472204801

`or(A074605(n)+1, A325742(A001223(n+1)))`
-/

namespace A074506.P5785139377472204801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A074605 n + 1) (A325742 (A001223 (n + 1)).toNat)

end

end A074506.P5785139377472204801

namespace A074506

/-- `or(A074605(n)+1, A325742(A001223(n+1)))` -/
def P5785139377472204801.Spec : Prop :=
  ∀ n, P5785139377472204801.a n = A074506 n

end A074506

/-! ## A074506.P17987140611565155670

`Δ[A085282(n)+n]`
-/

namespace A074506.P17987140611565155670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085282 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074506.P17987140611565155670

namespace A074506

/-- `Δ[A085282(n)+n]` -/
def P17987140611565155670.Spec : Prop :=
  ∀ n, P17987140611565155670.a n = A074506 n

end A074506

/-! ## A074506.P3378322829778725237

`Δ[A036557(2*n+1)+n]`
-/

namespace A074506.P3378322829778725237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036557 (2 * n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074506.P3378322829778725237

namespace A074506

/-- `Δ[A036557(2*n+1)+n]` -/
def P3378322829778725237.Spec : Prop :=
  ∀ n, P3378322829778725237.a n = A074506 n

end A074506

/-! ## A074506.P9388626868759713759

`(A052919(n+1)+A000051(2*n+1))/2`
-/

namespace A074506.P9388626868759713759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052919 (n + 1) + A000051 (2 * n + 1) : ℚ) / 2

end

end A074506.P9388626868759713759

namespace A074506

/-- `(A052919(n+1)+A000051(2*n+1))/2` -/
def P9388626868759713759.Spec : Prop :=
  ∀ n, P9388626868759713759.a n = (A074506 n : ℚ)

end A074506

/-! ## A074506.P15289453271760008869

`(A083318(2*n+1)+A052919(n+1))/2`
-/

namespace A074506.P15289453271760008869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083318 (2 * n + 1) + A052919 (n + 1) : ℚ) / 2

end

end A074506.P15289453271760008869

namespace A074506

/-- `(A083318(2*n+1)+A052919(n+1))/2` -/
def P15289453271760008869.Spec : Prop :=
  ∀ n, P15289453271760008869.a n = (A074506 n : ℚ)

end A074506

/-! ## A074506.P6177158346355973453

`(A074605(n)+1)*A007318(A000096(n))`
-/

namespace A074506.P6177158346355973453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074605 n + 1) * A007318 (A000096 n).toNat

end

end A074506.P6177158346355973453

namespace A074506

/-- `(A074605(n)+1)*A007318(A000096(n))` -/
def P6177158346355973453.Spec : Prop :=
  ∀ n, P6177158346355973453.a n = A074506 n

end A074506

/-! ## A074506.P16940275637894540

`(A074605(n)+1)*A007318(A000217(n))`
-/

namespace A074506.P16940275637894540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074605 n + 1) * A007318 (A000217 n).toNat

end

end A074506.P16940275637894540

namespace A074506

/-- `(A074605(n)+1)*A007318(A000217(n))` -/
def P16940275637894540.Spec : Prop :=
  ∀ n, P16940275637894540.a n = A074506 n

end A074506

/-! ## A074506.P8663416764019025066

`record[A262616(n)+A055235(n)]`
-/

namespace A074506.P8663416764019025066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262616 n + A055235 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074506.P8663416764019025066

namespace A074506

/-- `record[A262616(n)+A055235(n)]` -/
def P8663416764019025066.Spec : Prop :=
  ∀ n, P8663416764019025066.a n = A074506 n

end A074506

/-! ## A074506.P8320997295623874352

`record[A055235(n)+A055248(n)²]`
-/

namespace A074506.P8320997295623874352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055235 n + A055248 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074506.P8320997295623874352

namespace A074506

/-- `record[A055235(n)+A055248(n)²]` -/
def P8320997295623874352.Spec : Prop :=
  ∀ n, P8320997295623874352.a n = A074506 n

end A074506

/-! ## A074506.P8508540245349748137

`A074542(n)/2^n`
-/

namespace A074506.P8508540245349748137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074542 n : ℚ) / (2 ^ n : ℚ)

end

end A074506.P8508540245349748137

namespace A074506

/-- `A074542(n)/2^n` -/
def P8508540245349748137.Spec : Prop :=
  ∀ n, P8508540245349748137.a n = (A074506 n : ℚ)

end A074506

/-! ## A074506.P15107603126141942893

`(A074620(n)+A000079(n))/A000079(n)`
-/

namespace A074506.P15107603126141942893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074620 n + A000079 n : ℚ) / (A000079 n : ℚ)

end

end A074506.P15107603126141942893

namespace A074506

/-- `(A074620(n)+A000079(n))/A000079(n)` -/
def P15107603126141942893.Spec : Prop :=
  ∀ n, P15107603126141942893.a n = (A074506 n : ℚ)

end A074506

/-!
# A074507: a(n) = 1^n + 3^n + 5^n.

The programs for A074507, the canonical program `A074507.P11026524760515639452` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074507 has offset 0).

The definition of A074507 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+3^n+5^n` (program `A074507.P11026524760515639452`, by `A074507.P11026524760515639452.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074507.P14076099071536163614

`1+3^n+5^n`
-/

namespace A074507.P14076099071536163614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 3 ^ n + 5 ^ n

end

end A074507.P14076099071536163614

namespace A074507

/-- `1+3^n+5^n` -/
def P14076099071536163614.Spec : Prop :=
  ∀ n, (P14076099071536163614.a n : ℤ) = A074507 n

theorem P14076099071536163614.correct : P14076099071536163614.Spec := by
  intro n
  simp only [A074507, Nat.add_sub_cancel, A074507.P14076099071536163614.a, A074507.P11026524760515639452.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A074507

/-! ## A074507.P11026524760515639452

`1^n+3^n+5^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074507

/-- `1^n+3^n+5^n` -/
def P11026524760515639452.Spec : Prop :=
  ∀ n, (P11026524760515639452.a n : ℤ) = A074507 n

theorem P11026524760515639452.correct : P11026524760515639452.Spec := by
  intro n
  simp only [A074507]

end A074507

/-! ## A074507.P15140799483613161266

`or(1, A074606(n))`
-/

namespace A074507.P15140799483613161266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A074606 n)

end

end A074507.P15140799483613161266

namespace A074507

/-- `or(1, A074606(n))` -/
def P15140799483613161266.Spec : Prop :=
  ∀ n, P15140799483613161266.a n = A074507 n

end A074507

/-! ## A074507.P15686057677350809499

`or(1, A155603(n)+1)`
-/

namespace A074507.P15686057677350809499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A155603 n + 1)

end

end A074507.P15686057677350809499

namespace A074507

/-- `or(1, A155603(n)+1)` -/
def P15686057677350809499.Spec : Prop :=
  ∀ n, P15686057677350809499.a n = A074507 n

end A074507

/-! ## A074507.P12117579037270435078

`or(1, 2*A081186(n))`
-/

namespace A074507.P12117579037270435078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * A081186 n)

end

end A074507.P12117579037270435078

namespace A074507

/-- `or(1, 2*A081186(n))` -/
def P12117579037270435078.Spec : Prop :=
  ∀ n, P12117579037270435078.a n = A074507 n

end A074507

/-! ## A074507.P8821668955973567380

`xor(1, A120950(n)+2*n)`
-/

namespace A074507.P8821668955973567380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A120950 n + (2 * n : ℤ))

end

end A074507.P8821668955973567380

namespace A074507

/-- `xor(1, A120950(n)+2*n)` -/
def P8821668955973567380.Spec : Prop :=
  ∀ n, P8821668955973567380.a n = A074507 n

end A074507

/-! ## A074507.P7567157649203896829

`abs(2*n-(A120949(n)+1))`
-/

namespace A074507.P7567157649203896829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - (A120949 n + 1)|

end

end A074507.P7567157649203896829

namespace A074507

/-- `abs(2*n-(A120949(n)+1))` -/
def P7567157649203896829.Spec : Prop :=
  ∀ n, P7567157649203896829.a n = A074507 n

end A074507

/-! ## A074507.P8835285045509800625

`or(1, A120950(n)+A004277(n))`
-/

namespace A074507.P8835285045509800625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A120950 n + A004277 n)

end

end A074507.P8835285045509800625

namespace A074507

/-- `or(1, A120950(n)+A004277(n))` -/
def P8835285045509800625.Spec : Prop :=
  ∀ n, P8835285045509800625.a n = A074507 n

end A074507

/-! ## A074507.P2226531967157839632

`xor(1, A000351(n)+A000244(n))`
-/

namespace A074507.P2226531967157839632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A000351 n + A000244 n)

end

end A074507.P2226531967157839632

namespace A074507

/-- `xor(1, A000351(n)+A000244(n))` -/
def P2226531967157839632.Spec : Prop :=
  ∀ n, P2226531967157839632.a n = A074507 n

end A074507

/-! ## A074507.P10588737969382107909

`xor(A016957(n)%3, A074606(n))`
-/

namespace A074507.P10588737969382107909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A016957 n) 3) (A074606 n)

end

end A074507.P10588737969382107909

namespace A074507

/-- `xor(A016957(n)%3, A074606(n))` -/
def P10588737969382107909.Spec : Prop :=
  ∀ n, P10588737969382107909.a n = A074507 n

end A074507

/-! ## A074507.P2501521544115303715

`or(1, Δ[2*A233106(n+1)])`
-/

namespace A074507.P2501521544115303715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A233106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (n + 1) - f1 n)

end

end A074507.P2501521544115303715

namespace A074507

/-- `or(1, Δ[2*A233106(n+1)])` -/
def P2501521544115303715.Spec : Prop :=
  ∀ n, P2501521544115303715.a n = A074507 n

end A074507

/-! ## A074507.P5805250770445551558

`or(1, Δ[A003463(n)+A003462(n)])`
-/

namespace A074507.P5805250770445551558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n + A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (n + 1) - f1 n)

end

end A074507.P5805250770445551558

namespace A074507

/-- `or(1, Δ[A003463(n)+A003462(n)])` -/
def P5805250770445551558.Spec : Prop :=
  ∀ n, P5805250770445551558.a n = A074507 n

end A074507

/-! ## A074507.P8254853834400040666

`xor(1, Δ[A003462(n)+A024049(n)/4])`
-/

namespace A074507.P8254853834400040666
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003462 n : ℚ) + (A024049 n : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n))

end

end A074507.P8254853834400040666

namespace A074507

/-- `xor(1, Δ[A003462(n)+A024049(n)/4])` -/
def P8254853834400040666.Spec : Prop :=
  ∀ n, P8254853834400040666.a n = A074507 n

end A074507

/-! ## A074507.P4963426838426217819

`xor(A007318(∑[n]), A074606(n))`
-/

namespace A074507.P4963426838426217819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)) (A074606 n)

end

end A074507.P4963426838426217819

namespace A074507

/-- `xor(A007318(∑[n]), A074606(n))` -/
def P4963426838426217819.Spec : Prop :=
  ∀ n, P4963426838426217819.a n = A074507 n

end A074507

/-! ## A074507.P6764702454820549129

`xor(1, Δ[A003462(n)+A104891(n)/5])`
-/

namespace A074507.P6764702454820549129
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003462 n : ℚ) + (A104891 n : ℚ) / 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n))

end

end A074507.P6764702454820549129

namespace A074507

/-- `xor(1, Δ[A003462(n)+A104891(n)/5])` -/
def P6764702454820549129.Spec : Prop :=
  ∀ n, P6764702454820549129.a n = A074507 n

end A074507

/-!
# A074508: a(n) = 1^n + 3^n + 6^n.

The programs for A074508, the canonical program `A074508.P7041777955413014859` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074508 has offset 0).

The definition of A074508 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+3^n+6^n` (program `A074508.P7041777955413014859`, by `A074508.P7041777955413014859.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074508.P7041777955413014859

`1^n+3^n+6^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074508

/-- `1^n+3^n+6^n` -/
def P7041777955413014859.Spec : Prop :=
  ∀ n, (P7041777955413014859.a n : ℤ) = A074508 n

theorem P7041777955413014859.correct : P7041777955413014859.Spec := by
  intro n
  simp only [A074508]

end A074508

/-! ## A074508.P6728612901288516003

`-xor(-1, A074607(n))`
-/

namespace A074508.P6728612901288516003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) (A074607 n)

end

end A074508.P6728612901288516003

namespace A074508

/-- `-xor(-1, A074607(n))` -/
def P6728612901288516003.Spec : Prop :=
  ∀ n, P6728612901288516003.a n = A074508 n

end A074508

/-! ## A074508.P3969412899261874891

`abs(2^n-A034488(n))`
-/

namespace A074508.P3969412899261874891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - A034488 n|

end

end A074508.P3969412899261874891

namespace A074508

/-- `abs(2^n-A034488(n))` -/
def P3969412899261874891.Spec : Prop :=
  ∀ n, P3969412899261874891.a n = A074508 n

end A074508

/-! ## A074508.P17652867881132315295

`lcm(A155604(n)+2, 1-4/2)`
-/

namespace A074508.P17652867881132315295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A155604 n + 2) (SequenceMachineLib.roundAway (1 - (4 : ℚ) / 2))

end

end A074508.P17652867881132315295

namespace A074508

/-- `lcm(A155604(n)+2, 1-4/2)` -/
def P17652867881132315295.Spec : Prop :=
  ∀ n, (P17652867881132315295.a n : ℤ) = A074508 n

end A074508

/-! ## A074508.P14912901936201501847

`abs(A000225(n)-A074528(n))`
-/

namespace A074508.P14912901936201501847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000225 n - A074528 n|

end

end A074508.P14912901936201501847

namespace A074508

/-- `abs(A000225(n)-A074528(n))` -/
def P14912901936201501847.Spec : Prop :=
  ∀ n, P14912901936201501847.a n = A074508 n

end A074508

/-! ## A074508.P2617908750726758228

`record[A074607(A053645(n+1))+1]`
-/

namespace A074508.P2617908750726758228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074607 (A053645 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074508.P2617908750726758228

namespace A074508

/-- `record[A074607(A053645(n+1))+1]` -/
def P2617908750726758228.Spec : Prop :=
  ∀ n, P2617908750726758228.a n = A074508 n

end A074508

/-! ## A074508.P5151712935846026985

`abs(A246985(n+1)-A000225(n))`
-/

namespace A074508.P5151712935846026985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A246985 (n + 1) - A000225 n|

end

end A074508.P5151712935846026985

namespace A074508

/-- `abs(A246985(n+1)-A000225(n))` -/
def P5151712935846026985.Spec : Prop :=
  ∀ n, P5151712935846026985.a n = A074508 n

end A074508

/-! ## A074508.P4351767624620079670

`(A155604(n)+2)*C(2, A007318(n)+1)!`
-/

namespace A074508.P4351767624620079670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155604 n + 2) * (Nat.factorial (Nat.choose 2 (A007318 n + 1).toNat) : ℤ)

end

end A074508.P4351767624620079670

namespace A074508

/-- `(A155604(n)+2)*C(2, A007318(n)+1)!` -/
def P4351767624620079670.Spec : Prop :=
  ∀ n, P4351767624620079670.a n = A074508 n

end A074508

/-! ## A074508.P8104632070374981761

`(A057009(n+1)+A000051(n))*A095073(n+1)%2`
-/

namespace A074508.P8104632070374981761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057009 (n + 1) + A000051 n) * Int.tmod (A095073 (n + 1)) 2

end

end A074508.P8104632070374981761

namespace A074508

/-- `(A057009(n+1)+A000051(n))*A095073(n+1)%2` -/
def P8104632070374981761.Spec : Prop :=
  ∀ n, P8104632070374981761.a n = A074508 n

end A074508

/-! ## A074508.P8518035484272324178

`(A074607(n)+1)%A074607(n+1)`
-/

namespace A074508.P8518035484272324178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074607 n + 1) (A074607 (n + 1))

end

end A074508.P8518035484272324178

namespace A074508

/-- `(A074607(n)+1)%A074607(n+1)` -/
def P8518035484272324178.Spec : Prop :=
  ∀ n, P8518035484272324178.a n = A074508 n

end A074508

/-! ## A074508.P13652254460340086708

`abs(A024088(n)-A074556(n))`
-/

namespace A074508.P13652254460340086708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024088 n - A074556 n|

end

end A074508.P13652254460340086708

namespace A074508

/-- `abs(A024088(n)-A074556(n))` -/
def P13652254460340086708.Spec : Prop :=
  ∀ n, P13652254460340086708.a n = A074508 n

end A074508

/-!
# A074509: a(n) = 1^n + 3^n + 7^n.

The programs for A074509, the canonical program `A074509.P15121560356045695920` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074509 has offset 0).

The definition of A074509 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+3^n+7^n` (program `A074509.P15121560356045695920`, by `A074509.P15121560356045695920.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074509.P15121560356045695920

`1^n+3^n+7^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074509

/-- `1^n+3^n+7^n` -/
def P15121560356045695920.Spec : Prop :=
  ∀ n, (P15121560356045695920.a n : ℤ) = A074509 n

theorem P15121560356045695920.correct : P15121560356045695920.Spec := by
  intro n
  simp only [A074509]

end A074509

/-! ## A074509.P16960839527476704056

`or(1, A074608(n))`
-/

namespace A074509.P16960839527476704056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A074608 n)

end

end A074509.P16960839527476704056

namespace A074509

/-- `or(1, A074608(n))` -/
def P16960839527476704056.Spec : Prop :=
  ∀ n, P16960839527476704056.a n = A074509 n

end A074509

/-! ## A074509.P1110862450886240837

`or(2, A155605(n))`
-/

namespace A074509.P1110862450886240837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A155605 n)

end

end A074509.P1110862450886240837

namespace A074509

/-- `or(2, A155605(n))` -/
def P1110862450886240837.Spec : Prop :=
  ∀ n, P1110862450886240837.a n = A074509 n

end A074509

/-! ## A074509.P8285902376911911470

`or(1, 2*A081336(n))`
-/

namespace A074509.P8285902376911911470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * A081336 n)

end

end A074509.P8285902376911911470

namespace A074509

/-- `or(1, 2*A081336(n))` -/
def P8285902376911911470.Spec : Prop :=
  ∀ n, P8285902376911911470.a n = A074509 n

end A074509

/-! ## A074509.P3738641003286203533

`∑{d}[-a(n-1), A000032(#)^n]` with `a(0)=4`
-/

namespace A074509.P3738641003286203533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000032 d ^ n

end

end A074509.P3738641003286203533

namespace A074509

/-- `∑{d}[-a(n-1), A000032(#)^n]` -/
def P3738641003286203533.Spec : Prop :=
  ∀ n, P3738641003286203533.a n = A074509 n

end A074509

/-! ## A074509.P16473677063442547903

`∑{d}[-a(n-1), A000203(#)^n]` with `a(0)=4`
-/

namespace A074509.P16473677063442547903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000203 d ^ n

end

end A074509.P16473677063442547903

namespace A074509

/-- `∑{d}[-a(n-1), A000203(#)^n]` -/
def P16473677063442547903.Spec : Prop :=
  ∀ n, P16473677063442547903.a n = A074509 n

end A074509

/-! ## A074509.P9523785510511811461

`xor(A020639(A112772(n+1)), A155605(n))`
-/

namespace A074509.P9523785510511811461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020639 (A112772 (n + 1)).toNat) (A155605 n)

end

end A074509.P9523785510511811461

namespace A074509

/-- `xor(A020639(A112772(n+1)), A155605(n))` -/
def P9523785510511811461.Spec : Prop :=
  ∀ n, P9523785510511811461.a n = A074509 n

end A074509

/-! ## A074509.P5386819705727563442

`xor(A020639(A035026(2*(n+2))), A155605(n))`
-/

namespace A074509.P5386819705727563442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020639 (A035026 (2 * (n + 2))).toNat) (A155605 n)

end

end A074509.P5386819705727563442

namespace A074509

/-- `xor(A020639(A035026(2*(n+2))), A155605(n))` -/
def P5386819705727563442.Spec : Prop :=
  ∀ n, P5386819705727563442.a n = A074509 n

end A074509

/-! ## A074509.P7873906759284192833

`(A074608(n)+1)%A074602(n+1)`
-/

namespace A074509.P7873906759284192833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074608 n + 1) (A074602 (n + 1))

end

end A074509.P7873906759284192833

namespace A074509

/-- `(A074608(n)+1)%A074602(n+1)` -/
def P7873906759284192833.Spec : Prop :=
  ∀ n, P7873906759284192833.a n = A074509 n

end A074509

/-!
# A074510: a(n) = 1^n + 3^n + 8^n.

The programs for A074510, the canonical program `A074510.P14805957398525706916` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074510 has offset 0).

The definition of A074510 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+3^n+8^n` (program `A074510.P14805957398525706916`, by `A074510.P14805957398525706916.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074510.P7952981758769725105

`1+3^n+8^n`
-/

namespace A074510.P7952981758769725105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 3 ^ n + 8 ^ n

end

end A074510.P7952981758769725105

namespace A074510

/-- `1+3^n+8^n` -/
def P7952981758769725105.Spec : Prop :=
  ∀ n, (P7952981758769725105.a n : ℤ) = A074510 n

theorem P7952981758769725105.correct : P7952981758769725105.Spec := by
  intro n
  simp only [A074510, Nat.add_sub_cancel, A074510.P7952981758769725105.a, A074510.P14805957398525706916.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A074510

/-! ## A074510.P14805957398525706916

`1^n+3^n+8^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074510

/-- `1^n+3^n+8^n` -/
def P14805957398525706916.Spec : Prop :=
  ∀ n, (P14805957398525706916.a n : ℤ) = A074510 n

theorem P14805957398525706916.correct : P14805957398525706916.Spec := by
  intro n
  simp only [A074510]

end A074510

/-! ## A074510.P7022325381739373895

`or(8^n, A034472(n))`
-/

namespace A074510.P7022325381739373895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (8 ^ n : ℤ) (A034472 n)

end

end A074510.P7022325381739373895

namespace A074510

/-- `or(8^n, A034472(n))` -/
def P7022325381739373895.Spec : Prop :=
  ∀ n, P7022325381739373895.a n = A074510 n

end A074510

/-! ## A074510.P14830255715522112483

`or(3^n+1, A001018(n))`
-/

namespace A074510.P14830255715522112483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (3 ^ n + 1 : ℤ) (A001018 n)

end

end A074510.P14830255715522112483

namespace A074510

/-- `or(3^n+1, A001018(n))` -/
def P14830255715522112483.Spec : Prop :=
  ∀ n, P14830255715522112483.a n = A074510 n

end A074510

/-! ## A074510.P16630733795450405940

`lcm(A074609(n)+1, 1-and(2, n))`
-/

namespace A074510.P16630733795450405940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A074609 n + 1) (1 - (Nat.land 2 n : ℤ))

end

end A074510.P16630733795450405940

namespace A074510

/-- `lcm(A074609(n)+1, 1-and(2, n))` -/
def P16630733795450405940.Spec : Prop :=
  ∀ n, (P16630733795450405940.a n : ℤ) = A074510 n

end A074510

/-! ## A074510.P5589293164385127990

`C(A074609(n)+1, A074609(n))`
-/

namespace A074510.P5589293164385127990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A074609 n + 1).toNat (A074609 n).toNat

end

end A074510.P5589293164385127990

namespace A074510

/-- `C(A074609(n)+1, A074609(n))` -/
def P5589293164385127990.Spec : Prop :=
  ∀ n, (P5589293164385127990.a n : ℤ) = A074510 n

end A074510

/-!
# A074511: a(n) = 1^n + 4^n + 5^n.

The programs for A074511, the canonical program `A074511.P15291591030534958469` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074511 has offset 0).

The definition of A074511 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+4^n+5^n` (program `A074511.P15291591030534958469`, by `A074511.P15291591030534958469.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074511.P15291591030534958469

`1^n+4^n+5^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074511

/-- `1^n+4^n+5^n` -/
def P15291591030534958469.Spec : Prop :=
  ∀ n, (P15291591030534958469.a n : ℤ) = A074511 n

theorem P15291591030534958469.correct : P15291591030534958469.Spec := by
  intro n
  simp only [A074511]

end A074511

/-! ## A074511.P10809979909180175275

`or(2, A155616(n))`
-/

namespace A074511.P10809979909180175275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A155616 n)

end

end A074511.P10809979909180175275

namespace A074511

/-- `or(2, A155616(n))` -/
def P10809979909180175275.Spec : Prop :=
  ∀ n, P10809979909180175275.a n = A074511 n

end A074511

/-! ## A074511.P11957458018161842299

`or(2, A074611(n)+1)`
-/

namespace A074511.P11957458018161842299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A074611 n + 1)

end

end A074511.P11957458018161842299

namespace A074511

/-- `or(2, A074611(n)+1)` -/
def P11957458018161842299.Spec : Prop :=
  ∀ n, P11957458018161842299.a n = A074511 n

end A074511

/-! ## A074511.P8376775382045175069

`abs(A001552(n)-A007689(n))`
-/

namespace A074511.P8376775382045175069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001552 n - A007689 n|

end

end A074511.P8376775382045175069

namespace A074511

/-- `abs(A001552(n)-A007689(n))` -/
def P8376775382045175069.Spec : Prop :=
  ∀ n, P8376775382045175069.a n = A074511 n

end A074511

/-! ## A074511.P10293342376855298989

`(A074611(n)+1)*A010687(6*n)`
-/

namespace A074511.P10293342376855298989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074611 n + 1) * A010687 (6 * n)

end

end A074511.P10293342376855298989

namespace A074511

/-- `(A074611(n)+1)*A010687(6*n)` -/
def P10293342376855298989.Spec : Prop :=
  ∀ n, P10293342376855298989.a n = A074511 n

end A074511

/-! ## A074511.P1757703632540646976

`xor(A120614(A003234(n+1)), A155616(n))`
-/

namespace A074511.P1757703632540646976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A120614 (A003234 (n + 1)).toNat) (A155616 n)

end

end A074511.P1757703632540646976

namespace A074511

/-- `xor(A120614(A003234(n+1)), A155616(n))` -/
def P1757703632540646976.Spec : Prop :=
  ∀ n, P1757703632540646976.a n = A074511 n

end A074511

/-! ## A074511.P10671764767778954227

`Δ[A003463(n)+A002450(n)+n]`
-/

namespace A074511.P10671764767778954227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n + A002450 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074511.P10671764767778954227

namespace A074511

/-- `Δ[A003463(n)+A002450(n)+n]` -/
def P10671764767778954227.Spec : Prop :=
  ∀ n, P10671764767778954227.a n = A074511 n

end A074511

/-! ## A074511.P17130107616985868267

`(A074611(n)+1)*A007318(∑[n])`
-/

namespace A074511.P17130107616985868267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074611 n + 1) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074511.P17130107616985868267

namespace A074511

/-- `(A074611(n)+1)*A007318(∑[n])` -/
def P17130107616985868267.Spec : Prop :=
  ∀ n, P17130107616985868267.a n = A074511 n

end A074511

/-! ## A074511.P2225600294985838056

`(A074611(n)+1)*A146325(∑[n+1])`
-/

namespace A074511.P2225600294985838056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074611 n + 1) * A146325 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074511.P2225600294985838056

namespace A074511

/-- `(A074611(n)+1)*A146325(∑[n+1])` -/
def P2225600294985838056.Spec : Prop :=
  ∀ n, P2225600294985838056.a n = A074511 n

end A074511

/-!
# A074512: a(n) = 1^n + 4^n + 6^n.

The programs for A074512, the canonical program `A074512.P8179462783468662161` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074512 has offset 0).

The definition of A074512 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+4^n+6^n` (program `A074512.P8179462783468662161`, by `A074512.P8179462783468662161.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074512.P8179462783468662161

`1^n+4^n+6^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074512

/-- `1^n+4^n+6^n` -/
def P8179462783468662161.Spec : Prop :=
  ∀ n, (P8179462783468662161.a n : ℤ) = A074512 n

theorem P8179462783468662161.correct : P8179462783468662161.Spec := by
  intro n
  simp only [A074512]

end A074512

/-! ## A074512.P6415333013873710634

`or(1, A074612(n))`
-/

namespace A074512.P6415333013873710634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A074612 n)

end

end A074512.P6415333013873710634

namespace A074512

/-- `or(1, A074612(n))` -/
def P6415333013873710634.Spec : Prop :=
  ∀ n, P6415333013873710634.a n = A074512 n

end A074512

/-! ## A074512.P13303846981658775541

`or(1, A155617(n)+1)`
-/

namespace A074512.P13303846981658775541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A155617 n + 1)

end

end A074512.P13303846981658775541

namespace A074512

/-- `or(1, A155617(n)+1)` -/
def P13303846981658775541.Spec : Prop :=
  ∀ n, P13303846981658775541.a n = A074512 n

end A074512

/-! ## A074512.P11192133177262463709

`xor(1, 2*A081187(n))`
-/

namespace A074512.P11192133177262463709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * A081187 n)

end

end A074512.P11192133177262463709

namespace A074512

/-- `xor(1, 2*A081187(n))` -/
def P11192133177262463709.Spec : Prop :=
  ∀ n, P11192133177262463709.a n = A074512 n

end A074512

/-! ## A074512.P2097448350998321761

`or(1, A000400(n)+A000302(n))`
-/

namespace A074512.P2097448350998321761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000400 n + A000302 n)

end

end A074512.P2097448350998321761

namespace A074512

/-- `or(1, A000400(n)+A000302(n))` -/
def P2097448350998321761.Spec : Prop :=
  ∀ n, P2097448350998321761.a n = A074512 n

end A074512

/-! ## A074512.P16921122450195823855

`or(1, A000079(n)*A007689(n))`
-/

namespace A074512.P16921122450195823855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000079 n * A007689 n)

end

end A074512.P16921122450195823855

namespace A074512

/-- `or(1, A000079(n)*A007689(n))` -/
def P16921122450195823855.Spec : Prop :=
  ∀ n, P16921122450195823855.a n = A074512 n

end A074512

/-! ## A074512.P5185440556646963667

`xor(A000108(C(2, n+2)), A074612(n))`
-/

namespace A074512.P5185440556646963667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000108 (Nat.choose 2 (n + 2))) (A074612 n)

end

end A074512.P5185440556646963667

namespace A074512

/-- `xor(A000108(C(2, n+2)), A074612(n))` -/
def P5185440556646963667.Spec : Prop :=
  ∀ n, P5185440556646963667.a n = A074512 n

end A074512

/-!
# A074513: a(n) = 1^n + 4^n + 7^n.

The programs for A074513, the canonical program `A074513.P6713864320669486437` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074513 has offset 0).

The definition of A074513 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+4^n+7^n` (program `A074513.P6713864320669486437`, by `A074513.P6713864320669486437.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074513.P6713864320669486437

`1^n+4^n+7^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074513

/-- `1^n+4^n+7^n` -/
def P6713864320669486437.Spec : Prop :=
  ∀ n, (P6713864320669486437.a n : ℤ) = A074513 n

theorem P6713864320669486437.correct : P6713864320669486437.Spec := by
  intro n
  simp only [A074513]

end A074513

/-! ## A074513.P3565588946649379600

`abs(A000225(n)-A074534(n))`
-/

namespace A074513.P3565588946649379600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000225 n - A074534 n|

end

end A074513.P3565588946649379600

namespace A074513

/-- `abs(A000225(n)-A074534(n))` -/
def P3565588946649379600.Spec : Prop :=
  ∀ n, P3565588946649379600.a n = A074513 n

end A074513

/-! ## A074513.P1170543211750767754

`abs(A024049(n)-A074562(n))`
-/

namespace A074513.P1170543211750767754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024049 n - A074562 n|

end

end A074513.P1170543211750767754

namespace A074513

/-- `abs(A024049(n)-A074562(n))` -/
def P1170543211750767754.Spec : Prop :=
  ∀ n, P1170543211750767754.a n = A074513 n

end A074513

/-! ## A074513.P9912520214747086939

`or(A155618(n)+2, A000038(n))`
-/

namespace A074513.P9912520214747086939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A155618 n + 2) (A000038 n)

end

end A074513.P9912520214747086939

namespace A074513

/-- `or(A155618(n)+2, A000038(n))` -/
def P9912520214747086939.Spec : Prop :=
  ∀ n, P9912520214747086939.a n = A074513 n

end A074513

/-! ## A074513.P2054815501353994364

`record[A074613(A053645(n+1))+1]`
-/

namespace A074513.P2054815501353994364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074613 (A053645 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074513.P2054815501353994364

namespace A074513

/-- `record[A074613(A053645(n+1))+1]` -/
def P2054815501353994364.Spec : Prop :=
  ∀ n, P2054815501353994364.a n = A074513 n

end A074513

/-! ## A074513.P17276743904292993368

`abs(1-(A000244(n)-A074549(n)))`
-/

namespace A074513.P17276743904292993368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A000244 n - A074549 n)|

end

end A074513.P17276743904292993368

namespace A074513

/-- `abs(1-(A000244(n)-A074549(n)))` -/
def P17276743904292993368.Spec : Prop :=
  ∀ n, P17276743904292993368.a n = A074513 n

end A074513

/-! ## A074513.P15188846314409919059

`Δ[A047852(n)+A047849(n)+n]`
-/

namespace A074513.P15188846314409919059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047852 n + A047849 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074513.P15188846314409919059

namespace A074513

/-- `Δ[A047852(n)+A047849(n)+n]` -/
def P15188846314409919059.Spec : Prop :=
  ∀ n, P15188846314409919059.a n = A074513 n

end A074513

/-! ## A074513.P18326012487810663698

`(A074613(n)+1)/ceil(acot(A006530(n+1)))`
-/

namespace A074513.P18326012487810663698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074613 n + 1 : ℚ) / (⌈SequenceMachineLib.acot (A006530 (n + 1) : ℝ)⌉ : ℚ)

end

end A074513.P18326012487810663698

namespace A074513

/-- `(A074613(n)+1)/ceil(acot(A006530(n+1)))` -/
def P18326012487810663698.Spec : Prop :=
  ∀ n, P18326012487810663698.a n = (A074513 n : ℚ)

end A074513

/-! ## A074513.P15572302685940732948

`abs(A057428(3*n+1)-(A155618(n)+1))`
-/

namespace A074513.P15572302685940732948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057428 (3 * n + 1) - (A155618 n + 1)|

end

end A074513.P15572302685940732948

namespace A074513

/-- `abs(A057428(3*n+1)-(A155618(n)+1))` -/
def P15572302685940732948.Spec : Prop :=
  ∀ n, P15572302685940732948.a n = A074513 n

end A074513

/-! ## A074513.P1419230406568050350

`(A155618(n)+2)*C(2, A007318(n)+1)!`
-/

namespace A074513.P1419230406568050350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155618 n + 2) * (Nat.factorial (Nat.choose 2 (A007318 n + 1).toNat) : ℤ)

end

end A074513.P1419230406568050350

namespace A074513

/-- `(A155618(n)+2)*C(2, A007318(n)+1)!` -/
def P1419230406568050350.Spec : Prop :=
  ∀ n, P1419230406568050350.a n = A074513 n

end A074513

/-!
# A074514: a(n) = 1^n + 4^n + 8^n.

The programs for A074514, the canonical program `A074514.P5209020570279087244` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074514 has offset 0).

The definition of A074514 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+4^n+8^n` (program `A074514.P5209020570279087244`, by `A074514.P5209020570279087244.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074514.P5209020570279087244

`1^n+4^n+8^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074514

/-- `1^n+4^n+8^n` -/
def P5209020570279087244.Spec : Prop :=
  ∀ n, (P5209020570279087244.a n : ℤ) = A074514 n

theorem P5209020570279087244.correct : P5209020570279087244.Spec := by
  intro n
  simp only [A074514]

end A074514

/-! ## A074514.P14031242756911895223

`or(1, A063481(n))`
-/

namespace A074514.P14031242756911895223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A063481 n)

end

end A074514.P14031242756911895223

namespace A074514

/-- `or(1, A063481(n))` -/
def P14031242756911895223.Spec : Prop :=
  ∀ n, P14031242756911895223.a n = A074514 n

end A074514

/-! ## A074514.P9103648820002465617

`or(4^n, A062395(n))`
-/

namespace A074514.P9103648820002465617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (4 ^ n : ℤ) (A062395 n)

end

end A074514.P9103648820002465617

namespace A074514

/-- `or(4^n, A062395(n))` -/
def P9103648820002465617.Spec : Prop :=
  ∀ n, P9103648820002465617.a n = A074514 n

end A074514

/-! ## A074514.P14407388015391698037

`xor(8^n, A052539(n))`
-/

namespace A074514.P14407388015391698037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (8 ^ n : ℤ) (A052539 n)

end

end A074514.P14407388015391698037

namespace A074514

/-- `xor(8^n, A052539(n))` -/
def P14407388015391698037.Spec : Prop :=
  ∀ n, P14407388015391698037.a n = A074514 n

end A074514

/-! ## A074514.P13209370698035095176

`record[2*A098657(n)+1]`
-/

namespace A074514.P13209370698035095176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098657 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074514.P13209370698035095176

namespace A074514

/-- `record[2*A098657(n)+1]` -/
def P13209370698035095176.Spec : Prop :=
  ∀ n, P13209370698035095176.a n = A074514 n

end A074514

/-! ## A074514.P14973290315981667864

`abs(2^n-A034496(n))`
-/

namespace A074514.P14973290315981667864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - A034496 n|

end

end A074514.P14973290315981667864

namespace A074514

/-- `abs(2^n-A034496(n))` -/
def P14973290315981667864.Spec : Prop :=
  ∀ n, P14973290315981667864.a n = A074514 n

end A074514

/-! ## A074514.P17149201662145948948

`xor(A001018(n)+1, 4^n)`
-/

namespace A074514.P17149201662145948948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001018 n + 1) (4 ^ n : ℤ)

end

end A074514.P17149201662145948948

namespace A074514

/-- `xor(A001018(n)+1, 4^n)` -/
def P17149201662145948948.Spec : Prop :=
  ∀ n, P17149201662145948948.a n = A074514 n

end A074514

/-! ## A074514.P10110101158605259275

`or(1, 4^n*A000051(n))`
-/

namespace A074514.P10110101158605259275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((4 ^ n : ℤ) * A000051 n)

end

end A074514.P10110101158605259275

namespace A074514

/-- `or(1, 4^n*A000051(n))` -/
def P10110101158605259275.Spec : Prop :=
  ∀ n, P10110101158605259275.a n = A074514 n

end A074514

/-! ## A074514.P14226378056669038399

`xor(8^n, A000051(2*n))`
-/

namespace A074514.P14226378056669038399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (8 ^ n : ℤ) (A000051 (2 * n))

end

end A074514.P14226378056669038399

namespace A074514

/-- `xor(8^n, A000051(2*n))` -/
def P14226378056669038399.Spec : Prop :=
  ∀ n, P14226378056669038399.a n = A074514 n

end A074514

/-! ## A074514.P12843110631648033385

`∑{d}[-a(n-1), A018252(#)^n]` with `a(0)=4`
-/

namespace A074514.P12843110631648033385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A018252 d ^ n

end

end A074514.P12843110631648033385

namespace A074514

/-- `∑{d}[-a(n-1), A018252(#)^n]` -/
def P12843110631648033385.Spec : Prop :=
  ∀ n, P12843110631648033385.a n = A074514 n

end A074514

/-! ## A074514.P10427419358174900631

`or(A000051(2*n), A001018(n))`
-/

namespace A074514.P10427419358174900631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000051 (2 * n)) (A001018 n)

end

end A074514.P10427419358174900631

namespace A074514

/-- `or(A000051(2*n), A001018(n))` -/
def P10427419358174900631.Spec : Prop :=
  ∀ n, P10427419358174900631.a n = A074514 n

end A074514

/-! ## A074514.P3901071205683744776

`xor(1, A000079(n)²*A000051(n))`
-/

namespace A074514.P3901071205683744776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A000079 n ^ 2 * A000051 n)

end

end A074514.P3901071205683744776

namespace A074514

/-- `xor(1, A000079(n)²*A000051(n))` -/
def P3901071205683744776.Spec : Prop :=
  ∀ n, P3901071205683744776.a n = A074514 n

end A074514

/-! ## A074514.P15996519650363151877

`record[A131575(3*n+1)+A000051(n)]`
-/

namespace A074514.P15996519650363151877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 (3 * n + 1) + A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074514.P15996519650363151877

namespace A074514

/-- `record[A131575(3*n+1)+A000051(n)]` -/
def P15996519650363151877.Spec : Prop :=
  ∀ n, P15996519650363151877.a n = A074514 n

end A074514

/-!
# A074515: a(n) = 1^n + 4^n + 9^n.

The programs for A074515, the canonical program `A074515.P11932211166948693284` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074515 has offset 0).

The definition of A074515 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+4^n+9^n` (program `A074515.P11932211166948693284`, by `A074515.P11932211166948693284.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074515.P11932211166948693284

`1^n+4^n+9^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074515

/-- `1^n+4^n+9^n` -/
def P11932211166948693284.Spec : Prop :=
  ∀ n, (P11932211166948693284.a n : ℤ) = A074515 n

theorem P11932211166948693284.correct : P11932211166948693284.Spec := by
  intro n
  simp only [A074515]

end A074515

/-! ## A074515.P5106468278851422585

`A001550(2*n)`
-/

namespace A074515.P5106468278851422585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001550 (2 * n)

end

end A074515.P5106468278851422585

namespace A074515

/-- `A001550(2*n)` -/
def P5106468278851422585.Spec : Prop :=
  ∀ n, P5106468278851422585.a n = A074515 n

end A074515

/-! ## A074515.P16583840895682960652

`A135399(2*n)`
-/

namespace A074515.P16583840895682960652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135399 (2 * n)

end

end A074515.P16583840895682960652

namespace A074515

/-- `A135399(2*n)` -/
def P16583840895682960652.Spec : Prop :=
  ∀ n, P16583840895682960652.a n = A074515 n

end A074515

/-! ## A074515.P10817432735296928417

`or(2, A155620(n))`
-/

namespace A074515.P10817432735296928417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A155620 n)

end

end A074515.P10817432735296928417

namespace A074515

/-- `or(2, A155620(n))` -/
def P10817432735296928417.Spec : Prop :=
  ∀ n, P10817432735296928417.a n = A074515 n

end A074515

/-! ## A074515.P13407936560454311153

`record[A001550(and(n, n+1))]`
-/

namespace A074515.P13407936560454311153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001550 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074515.P13407936560454311153

namespace A074515

/-- `record[A001550(and(n, n+1))]` -/
def P13407936560454311153.Spec : Prop :=
  ∀ n, P13407936560454311153.a n = A074515 n

end A074515

/-! ## A074515.P6492778567960449867

`record[A001550(n%or(1, n))]`
-/

namespace A074515.P6492778567960449867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001550 (n % Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074515.P6492778567960449867

namespace A074515

/-- `record[A001550(n%or(1, n))]` -/
def P6492778567960449867.Spec : Prop :=
  ∀ n, P6492778567960449867.a n = A074515 n

end A074515

/-! ## A074515.P13003976085532081316

`record[A000051(n)+(-3)^n]`
-/

namespace A074515.P13003976085532081316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + (-3) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074515.P13003976085532081316

namespace A074515

/-- `record[A000051(n)+(-3)^n]` -/
def P13003976085532081316.Spec : Prop :=
  ∀ n, P13003976085532081316.a n = A074515 n

end A074515

/-! ## A074515.P13440750579063498342

`or(2, A085281(2*n+1)+1)`
-/

namespace A074515.P13440750579063498342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A085281 (2 * n + 1) + 1)

end

end A074515.P13440750579063498342

namespace A074515

/-- `or(2, A085281(2*n+1)+1)` -/
def P13440750579063498342.Spec : Prop :=
  ∀ n, P13440750579063498342.a n = A074515 n

end A074515

/-! ## A074515.P14536602077741993161

`∑{d}[-a(n-1), A000005(#)^(2*n)]` with `a(0)=4`
-/

namespace A074515.P14536602077741993161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000005 d ^ (2 * n)

end

end A074515.P14536602077741993161

namespace A074515

/-- `∑{d}[-a(n-1), A000005(#)^(2*n)]` -/
def P14536602077741993161.Spec : Prop :=
  ∀ n, P14536602077741993161.a n = A074515 n

end A074515

/-!
# A074516: a(n) = 1^n + 5^n + 6^n.

The programs for A074516, the canonical program `A074516.P495637833087846535` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074516 has offset 0).

The definition of A074516 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+5^n+6^n` (program `A074516.P495637833087846535`, by `A074516.P495637833087846535.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074516.P7871408817476328494

`5^n+6^n+1`
-/

namespace A074516.P7871408817476328494
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n + 6 ^ n + 1

end

end A074516.P7871408817476328494

namespace A074516

/-- `5^n+6^n+1` -/
def P7871408817476328494.Spec : Prop :=
  ∀ n, (P7871408817476328494.a n : ℤ) = A074516 n

theorem P7871408817476328494.correct : P7871408817476328494.Spec := by
  intro n
  simp only [A074516, Nat.add_sub_cancel, A074516.P7871408817476328494.a, A074516.P495637833087846535.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A074516

/-! ## A074516.P495637833087846535

`1^n+5^n+6^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074516

/-- `1^n+5^n+6^n` -/
def P495637833087846535.Spec : Prop :=
  ∀ n, (P495637833087846535.a n : ℤ) = A074516 n

theorem P495637833087846535.correct : P495637833087846535.Spec := by
  intro n
  simp only [A074516]

end A074516

/-! ## A074516.P8004002861853468933

`lcm(A074615(n)+1, 1-and(2, n))`
-/

namespace A074516.P8004002861853468933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A074615 n + 1) (1 - (Nat.land 2 n : ℤ))

end

end A074516.P8004002861853468933

namespace A074516

/-- `lcm(A074615(n)+1, 1-and(2, n))` -/
def P8004002861853468933.Spec : Prop :=
  ∀ n, (P8004002861853468933.a n : ℤ) = A074516 n

end A074516

/-! ## A074516.P5898173895071604612

`abs(A178681(n)+A178671(n))`
-/

namespace A074516.P5898173895071604612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A178681 n + A178671 n|

end

end A074516.P5898173895071604612

namespace A074516

/-- `abs(A178681(n)+A178671(n))` -/
def P5898173895071604612.Spec : Prop :=
  ∀ n, P5898173895071604612.a n = A074516 n

end A074516

/-! ## A074516.P4789674653183310960

`floor(A155633(n)+ratio[A000079(n)])`
-/

namespace A074516.P4789674653183310960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A155633 n : ℚ) + (f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A074516.P4789674653183310960

namespace A074516

/-- `floor(A155633(n)+ratio[A000079(n)])` -/
def P4789674653183310960.Spec : Prop :=
  ∀ n, P4789674653183310960.a n = A074516 n

end A074516

/-! ## A074516.P9935320315075672007

`Δ[A003464(n)+A003463(n)+n]`
-/

namespace A074516.P9935320315075672007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003464 n + A003463 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074516.P9935320315075672007

namespace A074516

/-- `Δ[A003464(n)+A003463(n)+n]` -/
def P9935320315075672007.Spec : Prop :=
  ∀ n, P9935320315075672007.a n = A074516 n

end A074516

/-! ## A074516.P9058337416407990145

`∏{e}[A049544(n+1), A074615(n)+#]`
-/

namespace A074516.P9058337416407990145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A074615 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A074516.P9058337416407990145

namespace A074516

/-- `∏{e}[A049544(n+1), A074615(n)+#]` -/
def P9058337416407990145.Spec : Prop :=
  ∀ n, P9058337416407990145.a n = A074516 n

end A074516

/-! ## A074516.P17610156234490369499

`∏{e}[A049568(n+1), A074615(n)+#]`
-/

namespace A074516.P17610156234490369499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A074615 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A074516.P17610156234490369499

namespace A074516

/-- `∏{e}[A049568(n+1), A074615(n)+#]` -/
def P17610156234490369499.Spec : Prop :=
  ∀ n, P17610156234490369499.a n = A074516 n

end A074516

/-! ## A074516.P10311996013017311971

`∏{e}[A059264(n+1), A074615(n)+#]`
-/

namespace A074516.P10311996013017311971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A074615 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A074516.P10311996013017311971

namespace A074516

/-- `∏{e}[A059264(n+1), A074615(n)+#]` -/
def P10311996013017311971.Spec : Prop :=
  ∀ n, P10311996013017311971.a n = A074516 n

end A074516

/-! ## A074516.P11667413521202892071

`abs(A074521(n)-A191468(n))`
-/

namespace A074516.P11667413521202892071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074521 n - A191468 n|

end

end A074516.P11667413521202892071

namespace A074516

/-- `abs(A074521(n)-A191468(n))` -/
def P11667413521202892071.Spec : Prop :=
  ∀ n, P11667413521202892071.a n = A074516 n

end A074516

/-!
# A074517: a(n) = 1^n + 5^n + 7^n.

The programs for A074517, the canonical program `A074517.P12301603146598015912` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074517 has offset 0).

The definition of A074517 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+5^n+7^n` (program `A074517.P12301603146598015912`, by `A074517.P12301603146598015912.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074517.P12301603146598015912

`1^n+5^n+7^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074517

/-- `1^n+5^n+7^n` -/
def P12301603146598015912.Spec : Prop :=
  ∀ n, (P12301603146598015912.a n : ℤ) = A074517 n

theorem P12301603146598015912.correct : P12301603146598015912.Spec := by
  intro n
  simp only [A074517]

end A074517

/-! ## A074517.P12116721513315234146

`or(1, A074616(n))`
-/

namespace A074517.P12116721513315234146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A074616 n)

end

end A074517.P12116721513315234146

namespace A074517

/-- `or(1, A074616(n))` -/
def P12116721513315234146.Spec : Prop :=
  ∀ n, P12116721513315234146.a n = A074517 n

end A074517

/-! ## A074517.P1282678901319425079

`or(1, A000420(n)+A000351(n))`
-/

namespace A074517.P1282678901319425079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000420 n + A000351 n)

end

end A074517.P1282678901319425079

namespace A074517

/-- `or(1, A000420(n)+A000351(n))` -/
def P1282678901319425079.Spec : Prop :=
  ∀ n, P1282678901319425079.a n = A074517 n

end A074517

/-! ## A074517.P864185500943619392

`xor(char[A244325(n+1)], A074616(n))`
-/

namespace A074517.P864185500943619392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244325 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A074616 n)

end

end A074517.P864185500943619392

namespace A074517

/-- `xor(char[A244325(n+1)], A074616(n))` -/
def P864185500943619392.Spec : Prop :=
  ∀ n, P864185500943619392.a n = A074517 n

end A074517

/-! ## A074517.P15418435309913734824

`(A074616(n)+1)%A074602(n+1)`
-/

namespace A074517.P15418435309913734824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074616 n + 1) (A074602 (n + 1))

end

end A074517.P15418435309913734824

namespace A074517

/-- `(A074616(n)+1)%A074602(n+1)` -/
def P15418435309913734824.Spec : Prop :=
  ∀ n, P15418435309913734824.a n = A074517 n

end A074517

/-!
# A074518: a(n) = 1^n + 5^n + 8^n.

The programs for A074518, the canonical program `A074518.P14675353483285050966` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074518 has offset 0).

The definition of A074518 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+5^n+8^n` (program `A074518.P14675353483285050966`, by `A074518.P14675353483285050966.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074518.P14675353483285050966

`1^n+5^n+8^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074518

/-- `1^n+5^n+8^n` -/
def P14675353483285050966.Spec : Prop :=
  ∀ n, (P14675353483285050966.a n : ℤ) = A074518 n

theorem P14675353483285050966.correct : P14675353483285050966.Spec := by
  intro n
  simp only [A074518]

end A074518

/-! ## A074518.P10983769317135424802

`xor(3, xor(8^n, 5^n))`
-/

namespace A074518.P10983769317135424802
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (Nat.xor (8 ^ n) (5 ^ n))

end

end A074518.P10983769317135424802

namespace A074518

/-- `xor(3, xor(8^n, 5^n))` -/
def P10983769317135424802.Spec : Prop :=
  ∀ n, (P10983769317135424802.a n : ℤ) = A074518 n

end A074518

/-! ## A074518.P14101031118021041325

`or(2, A155635(n))`
-/

namespace A074518.P14101031118021041325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A155635 n)

end

end A074518.P14101031118021041325

namespace A074518

/-- `or(2, A155635(n))` -/
def P14101031118021041325.Spec : Prop :=
  ∀ n, P14101031118021041325.a n = A074518 n

end A074518

/-! ## A074518.P14768145542814060148

`or(2, A074617(n)+1)`
-/

namespace A074518.P14768145542814060148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A074617 n + 1)

end

end A074518.P14768145542814060148

namespace A074518

/-- `or(2, A074617(n)+1)` -/
def P14768145542814060148.Spec : Prop :=
  ∀ n, P14768145542814060148.a n = A074518 n

end A074518

/-! ## A074518.P8615693438585672779

`xor(8^n, A034474(n))`
-/

namespace A074518.P8615693438585672779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (8 ^ n : ℤ) (A034474 n)

end

end A074518.P8615693438585672779

namespace A074518

/-- `xor(8^n, A034474(n))` -/
def P8615693438585672779.Spec : Prop :=
  ∀ n, P8615693438585672779.a n = A074518 n

end A074518

/-! ## A074518.P798457702193596266

`or(A001018(n), A034474(n))`
-/

namespace A074518.P798457702193596266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001018 n) (A034474 n)

end

end A074518.P798457702193596266

namespace A074518

/-- `or(A001018(n), A034474(n))` -/
def P798457702193596266.Spec : Prop :=
  ∀ n, P798457702193596266.a n = A074518 n

end A074518

/-! ## A074518.P8168950248320950173

`abs(A024075(n)-A074574(n))`
-/

namespace A074518.P8168950248320950173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024075 n - A074574 n|

end

end A074518.P8168950248320950173

namespace A074518

/-- `abs(A024075(n)-A074574(n))` -/
def P8168950248320950173.Spec : Prop :=
  ∀ n, P8168950248320950173.a n = A074518 n

end A074518

/-! ## A074518.P11519289238014224451

`or(Δ[A047853(n)], A034474(n))`
-/

namespace A074518.P11519289238014224451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047853 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A034474 n)

end

end A074518.P11519289238014224451

namespace A074518

/-- `or(Δ[A047853(n)], A034474(n))` -/
def P11519289238014224451.Spec : Prop :=
  ∀ n, P11519289238014224451.a n = A074518 n

end A074518

/-! ## A074518.P12636170306381633520

`(A155635(n)+2)*A007318(∑[n])`
-/

namespace A074518.P12636170306381633520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155635 n + 2) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074518.P12636170306381633520

namespace A074518

/-- `(A155635(n)+2)*A007318(∑[n])` -/
def P12636170306381633520.Spec : Prop :=
  ∀ n, P12636170306381633520.a n = A074518 n

end A074518

/-! ## A074518.P18237564376423458419

`Δ[A023001(n)+A003463(n)+n]`
-/

namespace A074518.P18237564376423458419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 n + A003463 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074518.P18237564376423458419

namespace A074518

/-- `Δ[A023001(n)+A003463(n)+n]` -/
def P18237564376423458419.Spec : Prop :=
  ∀ n, P18237564376423458419.a n = A074518 n

end A074518

/-! ## A074518.P17928476056927092793

`Δ[A047853(n)+A003463(n)+n]`
-/

namespace A074518.P17928476056927092793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047853 n + A003463 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074518.P17928476056927092793

namespace A074518

/-- `Δ[A047853(n)+A003463(n)+n]` -/
def P17928476056927092793.Spec : Prop :=
  ∀ n, P17928476056927092793.a n = A074518 n

end A074518

/-! ## A074518.P16137058013685192921

`Δ[A047850(n)+A023001(n)+n]`
-/

namespace A074518.P16137058013685192921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047850 n + A023001 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074518.P16137058013685192921

namespace A074518

/-- `Δ[A047850(n)+A023001(n)+n]` -/
def P16137058013685192921.Spec : Prop :=
  ∀ n, P16137058013685192921.a n = A074518 n

end A074518

/-! ## A074518.P6161619037209351420

`xor(A020639(2*(n+1)), A155635(n))`
-/

namespace A074518.P6161619037209351420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020639 (2 * (n + 1))) (A155635 n)

end

end A074518.P6161619037209351420

namespace A074518

/-- `xor(A020639(2*(n+1)), A155635(n))` -/
def P6161619037209351420.Spec : Prop :=
  ∀ n, P6161619037209351420.a n = A074518 n

end A074518

/-! ## A074518.P18430499212455050886

`or(A034474(n), A151821(A008486(n)))`
-/

namespace A074518.P18430499212455050886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A034474 n) (A151821 (A008486 n).toNat)

end

end A074518.P18430499212455050886

namespace A074518

/-- `or(A034474(n), A151821(A008486(n)))` -/
def P18430499212455050886.Spec : Prop :=
  ∀ n, P18430499212455050886.a n = A074518 n

end A074518

/-! ## A074518.P12451348140828811421

`(A074617(n)+1)%A074603(n+1)`
-/

namespace A074518.P12451348140828811421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074617 n + 1) (A074603 (n + 1))

end

end A074518.P12451348140828811421

namespace A074518

/-- `(A074617(n)+1)%A074603(n+1)` -/
def P12451348140828811421.Spec : Prop :=
  ∀ n, P12451348140828811421.a n = A074518 n

end A074518

/-!
# A074519: a(n) = 1^n + 5^n + 9^n.

The programs for A074519, the canonical program `A074519.P9733245345505110360` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074519 has offset 0).

The definition of A074519 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+5^n+9^n` (program `A074519.P9733245345505110360`, by `A074519.P9733245345505110360.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074519.P9733245345505110360

`1^n+5^n+9^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074519

/-- `1^n+5^n+9^n` -/
def P9733245345505110360.Spec : Prop :=
  ∀ n, (P9733245345505110360.a n : ℤ) = A074519 n

theorem P9733245345505110360.correct : P9733245345505110360.Spec := by
  intro n
  simp only [A074519]

end A074519

/-! ## A074519.P17948120598713055924

`or(1, A074618(n))`
-/

namespace A074519.P17948120598713055924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A074618 n)

end

end A074519.P17948120598713055924

namespace A074519

/-- `or(1, A074618(n))` -/
def P17948120598713055924.Spec : Prop :=
  ∀ n, P17948120598713055924.a n = A074519 n

end A074519

/-! ## A074519.P12495585884613896116

`or(2, A155636(n))`
-/

namespace A074519.P12495585884613896116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A155636 n)

end

end A074519.P12495585884613896116

namespace A074519

/-- `or(2, A155636(n))` -/
def P12495585884613896116.Spec : Prop :=
  ∀ n, P12495585884613896116.a n = A074519 n

end A074519

/-! ## A074519.P12464816298632564912

`xor(1, 2*A081338(n))`
-/

namespace A074519.P12464816298632564912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * A081338 n)

end

end A074519.P12464816298632564912

namespace A074519

/-- `xor(1, 2*A081338(n))` -/
def P12464816298632564912.Spec : Prop :=
  ∀ n, P12464816298632564912.a n = A074519 n

end A074519

/-! ## A074519.P15567093864645893828

`record[A155636(A213714(n))+2]`
-/

namespace A074519.P15567093864645893828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155636 (A213714 n).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074519.P15567093864645893828

namespace A074519

/-- `record[A155636(A213714(n))+2]` -/
def P15567093864645893828.Spec : Prop :=
  ∀ n, P15567093864645893828.a n = A074519 n

end A074519

/-! ## A074519.P8840934614730952432

`record[A155636(A234017(n))+2]`
-/

namespace A074519.P8840934614730952432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155636 (A234017 n).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074519.P8840934614730952432

namespace A074519

/-- `record[A155636(A234017(n))+2]` -/
def P8840934614730952432.Spec : Prop :=
  ∀ n, P8840934614730952432.a n = A074519 n

end A074519

/-! ## A074519.P14227184590618640777

`floor(A155636(n)+ratio[A000079(n)])`
-/

namespace A074519.P14227184590618640777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A155636 n : ℚ) + (f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A074519.P14227184590618640777

namespace A074519

/-- `floor(A155636(n)+ratio[A000079(n)])` -/
def P14227184590618640777.Spec : Prop :=
  ∀ n, P14227184590618640777.a n = A074519 n

end A074519

/-! ## A074519.P5722834480458766939

`Δ[A003463(n)+A002452(n)+n]`
-/

namespace A074519.P5722834480458766939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n + A002452 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074519.P5722834480458766939

namespace A074519

/-- `Δ[A003463(n)+A002452(n)+n]` -/
def P5722834480458766939.Spec : Prop :=
  ∀ n, P5722834480458766939.a n = A074519 n

end A074519

/-! ## A074519.P15973254083641472800

`xor(2, A155596(n)+A155593(n)-1)`
-/

namespace A074519.P15973254083641472800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A155596 n + A155593 n - 1)

end

end A074519.P15973254083641472800

namespace A074519

/-- `xor(2, A155596(n)+A155593(n)-1)` -/
def P15973254083641472800.Spec : Prop :=
  ∀ n, P15973254083641472800.a n = A074519 n

end A074519

/-! ## A074519.P1083849587227243712

`xor(A014802(A000005(n+1)), A074618(n))`
-/

namespace A074519.P1083849587227243712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014802 (A000005 (n + 1)).toNat) (A074618 n)

end

end A074519.P1083849587227243712

namespace A074519

/-- `xor(A014802(A000005(n+1)), A074618(n))` -/
def P1083849587227243712.Spec : Prop :=
  ∀ n, P1083849587227243712.a n = A074519 n

end A074519

/-!
# A074520: a(n) = 1^n + 6^n + 7^n.

The programs for A074520, the canonical program `A074520.P13529409184195776871` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074520 has offset 0).

The definition of A074520 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+6^n+7^n` (program `A074520.P13529409184195776871`, by `A074520.P13529409184195776871.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074520.P17491702654213781283

`1+6^n+7^n`
-/

namespace A074520.P17491702654213781283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 6 ^ n + 7 ^ n

end

end A074520.P17491702654213781283

namespace A074520

/-- `1+6^n+7^n` -/
def P17491702654213781283.Spec : Prop :=
  ∀ n, (P17491702654213781283.a n : ℤ) = A074520 n

theorem P17491702654213781283.correct : P17491702654213781283.Spec := by
  intro n
  simp only [A074520, Nat.add_sub_cancel, A074520.P17491702654213781283.a, A074520.P13529409184195776871.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A074520

/-! ## A074520.P13529409184195776871

`1^n+6^n+7^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074520

/-- `1^n+6^n+7^n` -/
def P13529409184195776871.Spec : Prop :=
  ∀ n, (P13529409184195776871.a n : ℤ) = A074520 n

theorem P13529409184195776871.correct : P13529409184195776871.Spec := by
  intro n
  simp only [A074520]

end A074520

/-! ## A074520.P9344809658177492922

`abs(A024049(n)-A074571(n))`
-/

namespace A074520.P9344809658177492922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024049 n - A074571 n|

end

end A074520.P9344809658177492922

namespace A074520

/-- `abs(A024049(n)-A074571(n))` -/
def P9344809658177492922.Spec : Prop :=
  ∀ n, P9344809658177492922.a n = A074520 n

end A074520

/-! ## A074520.P9423392780008331268

`floor(A155645(n)+ratio[A000079(n)])`
-/

namespace A074520.P9423392780008331268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A155645 n : ℚ) + (f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A074520.P9423392780008331268

namespace A074520

/-- `floor(A155645(n)+ratio[A000079(n)])` -/
def P9423392780008331268.Spec : Prop :=
  ∀ n, P9423392780008331268.a n = A074520 n

end A074520

/-! ## A074520.P885845349283622681

`abs(1-(A000244(n)-A074555(n)))`
-/

namespace A074520.P885845349283622681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A000244 n - A074555 n)|

end

end A074520.P885845349283622681

namespace A074520

/-- `abs(1-(A000244(n)-A074555(n)))` -/
def P885845349283622681.Spec : Prop :=
  ∀ n, P885845349283622681.a n = A074520 n

end A074520

/-! ## A074520.P10749487975352455817

`Δ[A023000(n)+A003464(n)+n]`
-/

namespace A074520.P10749487975352455817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023000 n + A003464 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074520.P10749487975352455817

namespace A074520

/-- `Δ[A023000(n)+A003464(n)+n]` -/
def P10749487975352455817.Spec : Prop :=
  ∀ n, P10749487975352455817.a n = A074520 n

end A074520

/-!
# A074521: a(n) = 1^n + 6^n + 8^n.

The programs for A074521, the canonical program `A074521.P7181502212402933271` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074521 has offset 0).

The definition of A074521 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+6^n+8^n` (program `A074521.P7181502212402933271`, by `A074521.P7181502212402933271.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074521.P7181502212402933271

`1^n+6^n+8^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074521

/-- `1^n+6^n+8^n` -/
def P7181502212402933271.Spec : Prop :=
  ∀ n, (P7181502212402933271.a n : ℤ) = A074521 n

theorem P7181502212402933271.correct : P7181502212402933271.Spec := by
  intro n
  simp only [A074521]

end A074521

/-! ## A074521.P7792456111425792235

`or(1, A074620(n))`
-/

namespace A074521.P7792456111425792235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A074620 n)

end

end A074521.P7792456111425792235

namespace A074521

/-- `or(1, A074620(n))` -/
def P7792456111425792235.Spec : Prop :=
  ∀ n, P7792456111425792235.a n = A074521 n

end A074521

/-! ## A074521.P17109466584793222926

`xor(6^n+1, A001018(n))`
-/

namespace A074521.P17109466584793222926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (6 ^ n + 1 : ℤ) (A001018 n)

end

end A074521.P17109466584793222926

namespace A074521

/-- `xor(6^n+1, A001018(n))` -/
def P17109466584793222926.Spec : Prop :=
  ∀ n, P17109466584793222926.a n = A074521 n

end A074521

/-! ## A074521.P571738131999139086

`xor(6^n, A000051(3*n))`
-/

namespace A074521.P571738131999139086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (6 ^ n : ℤ) (A000051 (3 * n))

end

end A074521.P571738131999139086

namespace A074521

/-- `xor(6^n, A000051(3*n))` -/
def P571738131999139086.Spec : Prop :=
  ∀ n, P571738131999139086.a n = A074521 n

end A074521

/-! ## A074521.P12292163023331633805

`xor(A000400(n), A062395(n))`
-/

namespace A074521.P12292163023331633805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000400 n) (A062395 n)

end

end A074521.P12292163023331633805

namespace A074521

/-- `xor(A000400(n), A062395(n))` -/
def P12292163023331633805.Spec : Prop :=
  ∀ n, P12292163023331633805.a n = A074521 n

end A074521

/-! ## A074521.P3154511546585093643

`abs(xor(A020985(n), A074620(n)))`
-/

namespace A074521.P3154511546585093643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (A020985 n) (A074620 n)|

end

end A074521.P3154511546585093643

namespace A074521

/-- `abs(xor(A020985(n), A074620(n)))` -/
def P3154511546585093643.Spec : Prop :=
  ∀ n, P3154511546585093643.a n = A074521 n

end A074521

/-! ## A074521.P6248467817572118543

`or(1, A001018(n)+A000400(n))`
-/

namespace A074521.P6248467817572118543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A001018 n + A000400 n)

end

end A074521.P6248467817572118543

namespace A074521

/-- `or(1, A001018(n)+A000400(n))` -/
def P6248467817572118543.Spec : Prop :=
  ∀ n, P6248467817572118543.a n = A074521 n

end A074521

/-! ## A074521.P3427004996156834461

`or(A000051(3*n), A000400(n))`
-/

namespace A074521.P3427004996156834461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000051 (3 * n)) (A000400 n)

end

end A074521.P3427004996156834461

namespace A074521

/-- `or(A000051(3*n), A000400(n))` -/
def P3427004996156834461.Spec : Prop :=
  ∀ n, P3427004996156834461.a n = A074521 n

end A074521

/-! ## A074521.P6938949717455757632

`or(6^n, A000051(A008486(n)))`
-/

namespace A074521.P6938949717455757632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (6 ^ n : ℤ) (A000051 (A008486 n).toNat)

end

end A074521.P6938949717455757632

namespace A074521

/-- `or(6^n, A000051(A008486(n)))` -/
def P6938949717455757632.Spec : Prop :=
  ∀ n, P6938949717455757632.a n = A074521 n

end A074521

/-! ## A074521.P18423620304737761556

`record[A026549(n)+A094014(n)+1]`
-/

namespace A074521.P18423620304737761556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026549 n + (A094014 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074521.P18423620304737761556

namespace A074521

/-- `record[A026549(n)+A094014(n)+1]` -/
def P18423620304737761556.Spec : Prop :=
  ∀ n, P18423620304737761556.a n = A074521 n

end A074521

/-! ## A074521.P7561098998300031813

`Δ[A023001(n)+A003464(n)+n]`
-/

namespace A074521.P7561098998300031813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 n + A003464 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074521.P7561098998300031813

namespace A074521

/-- `Δ[A023001(n)+A003464(n)+n]` -/
def P7561098998300031813.Spec : Prop :=
  ∀ n, P7561098998300031813.a n = A074521 n

end A074521

/-! ## A074521.P14283005777976891441

`(A074620(n)+1)%A074603(n+1)`
-/

namespace A074521.P14283005777976891441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074620 n + 1) (A074603 (n + 1))

end

end A074521.P14283005777976891441

namespace A074521

/-- `(A074620(n)+1)%A074603(n+1)` -/
def P14283005777976891441.Spec : Prop :=
  ∀ n, P14283005777976891441.a n = A074521 n

end A074521

/-!
# A074522: a(n) = 1^n + 6^n + 9^n.

The programs for A074522, the canonical program `A074522.P3793011620967857992` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074522 has offset 0).

The definition of A074522 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+6^n+9^n` (program `A074522.P3793011620967857992`, by `A074522.P3793011620967857992.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074522.P3793011620967857992

`1^n+6^n+9^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074522

/-- `1^n+6^n+9^n` -/
def P3793011620967857992.Spec : Prop :=
  ∀ n, (P3793011620967857992.a n : ℤ) = A074522 n

theorem P3793011620967857992.correct : P3793011620967857992.Spec := by
  intro n
  simp only [A074522]

end A074522

/-! ## A074522.P39702485480718252

`-xor(-1, A074621(n))`
-/

namespace A074522.P39702485480718252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) (A074621 n)

end

end A074522.P39702485480718252

namespace A074522

/-- `-xor(-1, A074621(n))` -/
def P39702485480718252.Spec : Prop :=
  ∀ n, P39702485480718252.a n = A074522 n

end A074522

/-! ## A074522.P5221986740349871115

`abs(A000225(n)-A074543(n))`
-/

namespace A074522.P5221986740349871115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000225 n - A074543 n|

end

end A074522.P5221986740349871115

namespace A074522

/-- `abs(A000225(n)-A074543(n))` -/
def P5221986740349871115.Spec : Prop :=
  ∀ n, P5221986740349871115.a n = A074522 n

end A074522

/-! ## A074522.P1836413744343628614

`abs(A024088(n)-A074579(n))`
-/

namespace A074522.P1836413744343628614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024088 n - A074579 n|

end

end A074522.P1836413744343628614

namespace A074522

/-- `abs(A024088(n)-A074579(n))` -/
def P1836413744343628614.Spec : Prop :=
  ∀ n, P1836413744343628614.a n = A074522 n

end A074522

/-! ## A074522.P12762566564899640995

`floor(A155647(n)+ratio[A000079(n)])`
-/

namespace A074522.P12762566564899640995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A155647 n : ℚ) + (f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A074522.P12762566564899640995

namespace A074522

/-- `floor(A155647(n)+ratio[A000079(n)])` -/
def P12762566564899640995.Spec : Prop :=
  ∀ n, P12762566564899640995.a n = A074522 n

end A074522

/-! ## A074522.P9854995012943838906

`abs(2-(A000051(n)-A074543(n)))`
-/

namespace A074522.P9854995012943838906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (A000051 n - A074543 n)|

end

end A074522.P9854995012943838906

namespace A074522

/-- `abs(2-(A000051(n)-A074543(n)))` -/
def P9854995012943838906.Spec : Prop :=
  ∀ n, P9854995012943838906.a n = A074522 n

end A074522

/-! ## A074522.P14575631654188420794

`(A074621(n)+1)%A169724(n+1)`
-/

namespace A074522.P14575631654188420794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074621 n + 1) (A169724 (n + 1))

end

end A074522.P14575631654188420794

namespace A074522

/-- `(A074621(n)+1)%A169724(n+1)` -/
def P14575631654188420794.Spec : Prop :=
  ∀ n, P14575631654188420794.a n = A074522 n

end A074522

/-! ## A074522.P17604971151301782217

`(A074621(n)+1)*A056106(n)%2`
-/

namespace A074522.P17604971151301782217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074621 n + 1) * Int.tmod (A056106 n) 2

end

end A074522.P17604971151301782217

namespace A074522

/-- `(A074621(n)+1)*A056106(n)%2` -/
def P17604971151301782217.Spec : Prop :=
  ∀ n, P17604971151301782217.a n = A074522 n

end A074522

/-! ## A074522.P7108753643478433218

`∏{e}[A049544(n+1), A074621(n)+#]`
-/

namespace A074522.P7108753643478433218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A074621 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A074522.P7108753643478433218

namespace A074522

/-- `∏{e}[A049544(n+1), A074621(n)+#]` -/
def P7108753643478433218.Spec : Prop :=
  ∀ n, P7108753643478433218.a n = A074522 n

end A074522

/-! ## A074522.P403044891320204924

`∏{e}[A049568(n+1), A074621(n)+#]`
-/

namespace A074522.P403044891320204924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A074621 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A074522.P403044891320204924

namespace A074522

/-- `∏{e}[A049568(n+1), A074621(n)+#]` -/
def P403044891320204924.Spec : Prop :=
  ∀ n, P403044891320204924.a n = A074522 n

end A074522

/-! ## A074522.P323400943674156218

`∏{e}[A059264(n+1), A074621(n)+#]`
-/

namespace A074522.P323400943674156218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A074621 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A074522.P323400943674156218

namespace A074522

/-- `∏{e}[A059264(n+1), A074621(n)+#]` -/
def P323400943674156218.Spec : Prop :=
  ∀ n, P323400943674156218.a n = A074522 n

end A074522

/-! ## A074522.P17179314275873165487

`∏{e}[A059668(n+1), A074621(n)+#]`
-/

namespace A074522.P17179314275873165487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A074621 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A074522.P17179314275873165487

namespace A074522

/-- `∏{e}[A059668(n+1), A074621(n)+#]` -/
def P17179314275873165487.Spec : Prop :=
  ∀ n, P17179314275873165487.a n = A074522 n

end A074522

/-! ## A074522.P3481562222441156088

`∏{e}[A070183(n+1), A074621(n)+#]`
-/

namespace A074522.P3481562222441156088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A074621 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A074522.P3481562222441156088

namespace A074522

/-- `∏{e}[A070183(n+1), A074621(n)+#]` -/
def P3481562222441156088.Spec : Prop :=
  ∀ n, P3481562222441156088.a n = A074522 n

end A074522

/-! ## A074522.P2844770073725046892

`(A074621(n)+1)*A000079(n)²%3`
-/

namespace A074522.P2844770073725046892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074621 n + 1) * Int.tmod (A000079 n ^ 2) 3

end

end A074522.P2844770073725046892

namespace A074522

/-- `(A074621(n)+1)*A000079(n)²%3` -/
def P2844770073725046892.Spec : Prop :=
  ∀ n, P2844770073725046892.a n = A074522 n

end A074522

/-! ## A074522.P15253477077961027573

`(A074621(n)+1)*A173432(∑[n]+1)`
-/

namespace A074522.P15253477077961027573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074621 n + 1) * A173432 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A074522.P15253477077961027573

namespace A074522

/-- `(A074621(n)+1)*A173432(∑[n]+1)` -/
def P15253477077961027573.Spec : Prop :=
  ∀ n, P15253477077961027573.a n = A074522 n

end A074522

/-! ## A074522.P3036421787661850633

`or(A074621(n)+1, A008683(A008574(n)))`
-/

namespace A074522.P3036421787661850633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A074621 n + 1) (A008683 (A008574 n).toNat)

end

end A074522.P3036421787661850633

namespace A074522

/-- `or(A074621(n)+1, A008683(A008574(n)))` -/
def P3036421787661850633.Spec : Prop :=
  ∀ n, P3036421787661850633.a n = A074522 n

end A074522

/-! ## A074522.P3259797981067969483

`(A074621(n)+1)*A007318(A000217(n+4))`
-/

namespace A074522.P3259797981067969483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074621 n + 1) * A007318 (A000217 (n + 4)).toNat

end

end A074522.P3259797981067969483

namespace A074522

/-- `(A074621(n)+1)*A007318(A000217(n+4))` -/
def P3259797981067969483.Spec : Prop :=
  ∀ n, P3259797981067969483.a n = A074522 n

end A074522

/-!
# A074523: a(n) = 1^n + 7^n + 8^n.

The programs for A074523, the canonical program `A074523.P14457316819938120650` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074523 has offset 0).

The definition of A074523 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+7^n+8^n` (program `A074523.P14457316819938120650`, by `A074523.P14457316819938120650.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074523.P6767001565584270886

`1+7^n+8^n`
-/

namespace A074523.P6767001565584270886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 7 ^ n + 8 ^ n

end

end A074523.P6767001565584270886

namespace A074523

/-- `1+7^n+8^n` -/
def P6767001565584270886.Spec : Prop :=
  ∀ n, (P6767001565584270886.a n : ℤ) = A074523 n

theorem P6767001565584270886.correct : P6767001565584270886.Spec := by
  intro n
  simp only [A074523, Nat.add_sub_cancel, A074523.P6767001565584270886.a, A074523.P14457316819938120650.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A074523

/-! ## A074523.P14457316819938120650

`1^n+7^n+8^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074523

/-- `1^n+7^n+8^n` -/
def P14457316819938120650.Spec : Prop :=
  ∀ n, (P14457316819938120650.a n : ℤ) = A074523 n

theorem P14457316819938120650.correct : P14457316819938120650.Spec := by
  intro n
  simp only [A074523]

end A074523

/-! ## A074523.P10064420184185412153

`xor(4, A074622(n)+5)`
-/

namespace A074523.P10064420184185412153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (A074622 n + 5)

end

end A074523.P10064420184185412153

namespace A074523

/-- `xor(4, A074622(n)+5)` -/
def P10064420184185412153.Spec : Prop :=
  ∀ n, P10064420184185412153.a n = A074523 n

end A074523

/-! ## A074523.P3910232554241587745

`record[A155655(A002262(n))+2]`
-/

namespace A074523.P3910232554241587745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155655 (A002262 n).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074523.P3910232554241587745

namespace A074523

/-- `record[A155655(A002262(n))+2]` -/
def P3910232554241587745.Spec : Prop :=
  ∀ n, P3910232554241587745.a n = A074523 n

end A074523

/-! ## A074523.P6668536114017096689

`abs(A000225(n)-A074544(n))`
-/

namespace A074523.P6668536114017096689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000225 n - A074544 n|

end

end A074523.P6668536114017096689

namespace A074523

/-- `abs(A000225(n)-A074544(n))` -/
def P6668536114017096689.Spec : Prop :=
  ∀ n, P6668536114017096689.a n = A074523 n

end A074523

/-! ## A074523.P15434022084259933990

`abs(A001553(n)-(A001555(n)+1))`
-/

namespace A074523.P15434022084259933990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001553 n - (A001555 n + 1)|

end

end A074523.P15434022084259933990

namespace A074523

/-- `abs(A001553(n)-(A001555(n)+1))` -/
def P15434022084259933990.Spec : Prop :=
  ∀ n, P15434022084259933990.a n = A074523 n

end A074523

/-! ## A074523.P4155391410303872616

`abs(1-(A000244(n)-A074558(n)))`
-/

namespace A074523.P4155391410303872616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A000244 n - A074558 n)|

end

end A074523.P4155391410303872616

namespace A074523

/-- `abs(1-(A000244(n)-A074558(n)))` -/
def P4155391410303872616.Spec : Prop :=
  ∀ n, P4155391410303872616.a n = A074523 n

end A074523

/-! ## A074523.P4318188386890321405

`abs(2-(A000051(n)-A074544(n)))`
-/

namespace A074523.P4318188386890321405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (A000051 n - A074544 n)|

end

end A074523.P4318188386890321405

namespace A074523

/-- `abs(2-(A000051(n)-A074544(n)))` -/
def P4318188386890321405.Spec : Prop :=
  ∀ n, P4318188386890321405.a n = A074523 n

end A074523

/-! ## A074523.P5368316863378705209

`abs(2-(A034474(n)-A074574(n)))`
-/

namespace A074523.P5368316863378705209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (A034474 n - A074574 n)|

end

end A074523.P5368316863378705209

namespace A074523

/-- `abs(2-(A034474(n)-A074574(n)))` -/
def P5368316863378705209.Spec : Prop :=
  ∀ n, P5368316863378705209.a n = A074523 n

end A074523

/-! ## A074523.P719045528421064600

`abs(2-(A062394(n)-A074577(n)))`
-/

namespace A074523.P719045528421064600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (A062394 n - A074577 n)|

end

end A074523.P719045528421064600

namespace A074523

/-- `abs(2-(A062394(n)-A074577(n)))` -/
def P719045528421064600.Spec : Prop :=
  ∀ n, P719045528421064600.a n = A074523 n

end A074523

/-! ## A074523.P7654786005716808777

`(A074622(n)+1)*A007318(∑[n])`
-/

namespace A074523.P7654786005716808777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074622 n + 1) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074523.P7654786005716808777

namespace A074523

/-- `(A074622(n)+1)*A007318(∑[n])` -/
def P7654786005716808777.Spec : Prop :=
  ∀ n, P7654786005716808777.a n = A074523 n

end A074523

/-! ## A074523.P9046803447245439870

`Δ[A023001(n)+A023000(n)+n]`
-/

namespace A074523.P9046803447245439870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 n + A023000 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074523.P9046803447245439870

namespace A074523

/-- `Δ[A023001(n)+A023000(n)+n]` -/
def P9046803447245439870.Spec : Prop :=
  ∀ n, P9046803447245439870.a n = A074523 n

end A074523

/-! ## A074523.P16975618297844495768

`∏{e}[A049544(n+1), A074622(n)+#]`
-/

namespace A074523.P16975618297844495768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A074622 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A074523.P16975618297844495768

namespace A074523

/-- `∏{e}[A049544(n+1), A074622(n)+#]` -/
def P16975618297844495768.Spec : Prop :=
  ∀ n, P16975618297844495768.a n = A074523 n

end A074523

/-! ## A074523.P15340161019509737010

`∏{e}[A049568(n+1), A074622(n)+#]`
-/

namespace A074523.P15340161019509737010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A074622 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A074523.P15340161019509737010

namespace A074523

/-- `∏{e}[A049568(n+1), A074622(n)+#]` -/
def P15340161019509737010.Spec : Prop :=
  ∀ n, P15340161019509737010.a n = A074523 n

end A074523

/-! ## A074523.P15839692331985755627

`∏{e}[A059264(n+1), A074622(n)+#]`
-/

namespace A074523.P15839692331985755627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A074622 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A074523.P15839692331985755627

namespace A074523

/-- `∏{e}[A059264(n+1), A074622(n)+#]` -/
def P15839692331985755627.Spec : Prop :=
  ∀ n, P15839692331985755627.a n = A074523 n

end A074523

/-! ## A074523.P17576337005189155243

`∏{e}[A059668(n+1), A074622(n)+#]`
-/

namespace A074523.P17576337005189155243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A074622 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A074523.P17576337005189155243

namespace A074523

/-- `∏{e}[A059668(n+1), A074622(n)+#]` -/
def P17576337005189155243.Spec : Prop :=
  ∀ n, P17576337005189155243.a n = A074523 n

end A074523

/-! ## A074523.P1125113539913273984

`∏{e}[A070183(n+1), A074622(n)+#]`
-/

namespace A074523.P1125113539913273984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A074622 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A074523.P1125113539913273984

namespace A074523

/-- `∏{e}[A070183(n+1), A074622(n)+#]` -/
def P1125113539913273984.Spec : Prop :=
  ∀ n, P1125113539913273984.a n = A074523 n

end A074523

/-! ## A074523.P14030473370595537022

`floor(a(n-1)+A055274(n)+A055272(n))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A074523.P14030473370595537022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (A055274 n + A055272 n)

end

end A074523.P14030473370595537022

namespace A074523

/-- `floor(a(n-1)+A055274(n)+A055272(n))` -/
def P14030473370595537022.Spec : Prop :=
  ∀ n, P14030473370595537022.a n = A074523 n

end A074523

/-!
# A074524: a(n) = 1^n + 7^n + 9^n.

The programs for A074524, the canonical program `A074524.P15745366741827391327` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074524 has offset 0).

The definition of A074524 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+7^n+9^n` (program `A074524.P15745366741827391327`, by `A074524.P15745366741827391327.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074524.P15745366741827391327

`1^n+7^n+9^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074524

/-- `1^n+7^n+9^n` -/
def P15745366741827391327.Spec : Prop :=
  ∀ n, (P15745366741827391327.a n : ℤ) = A074524 n

theorem P15745366741827391327.correct : P15745366741827391327.Spec := by
  intro n
  simp only [A074524]

end A074524

/-! ## A074524.P6342711145804958550

`or(1, A074623(n))`
-/

namespace A074524.P6342711145804958550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A074623 n)

end

end A074524.P6342711145804958550

namespace A074524

/-- `or(1, A074623(n))` -/
def P6342711145804958550.Spec : Prop :=
  ∀ n, P6342711145804958550.a n = A074524 n

end A074524

/-! ## A074524.P7783446731999009480

`or(1, 2*A081190(n))`
-/

namespace A074524.P7783446731999009480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * A081190 n)

end

end A074524.P7783446731999009480

namespace A074524

/-- `or(1, 2*A081190(n))` -/
def P7783446731999009480.Spec : Prop :=
  ∀ n, P7783446731999009480.a n = A074524 n

end A074524

/-! ## A074524.P7949504618361890805

`abs(2*n-(n+2)-A155656(n)-n)`
-/

namespace A074524.P7949504618361890805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - (n + 2 : ℤ) - A155656 n - (n : ℤ)|

end

end A074524.P7949504618361890805

namespace A074524

/-- `abs(2*n-(n+2)-A155656(n)-n)` -/
def P7949504618361890805.Spec : Prop :=
  ∀ n, P7949504618361890805.a n = A074524 n

end A074524

/-! ## A074524.P6908074059709774227

`abs(A024088(n)-A074580(n))`
-/

namespace A074524.P6908074059709774227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024088 n - A074580 n|

end

end A074524.P6908074059709774227

namespace A074524

/-- `abs(A024088(n)-A074580(n))` -/
def P6908074059709774227.Spec : Prop :=
  ∀ n, P6908074059709774227.a n = A074524 n

end A074524

/-! ## A074524.P2186809021275099773

`xor(A020985(n)², A074623(n))`
-/

namespace A074524.P2186809021275099773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020985 n ^ 2) (A074623 n)

end

end A074524.P2186809021275099773

namespace A074524

/-- `xor(A020985(n)², A074623(n))` -/
def P2186809021275099773.Spec : Prop :=
  ∀ n, P2186809021275099773.a n = A074524 n

end A074524

/-! ## A074524.P5949297585254726961

`or(1, A001019(n)+A000420(n))`
-/

namespace A074524.P5949297585254726961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A001019 n + A000420 n)

end

end A074524.P5949297585254726961

namespace A074524

/-- `or(1, A001019(n)+A000420(n))` -/
def P5949297585254726961.Spec : Prop :=
  ∀ n, P5949297585254726961.a n = A074524 n

end A074524

/-! ## A074524.P2439712610120306142

`or(1, A000420(n)+Δ[A002452(n)])`
-/

namespace A074524.P2439712610120306142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000420 n + (f1 (n + 1) - f1 n))

end

end A074524.P2439712610120306142

namespace A074524

/-- `or(1, A000420(n)+Δ[A002452(n)])` -/
def P2439712610120306142.Spec : Prop :=
  ∀ n, P2439712610120306142.a n = A074524 n

end A074524

/-! ## A074524.P13454214895251305579

`(2*A081190(n)+1)/A007318(∑[n])`
-/

namespace A074524.P13454214895251305579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A081190 n + 1 : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A074524.P13454214895251305579

namespace A074524

/-- `(2*A081190(n)+1)/A007318(∑[n])` -/
def P13454214895251305579.Spec : Prop :=
  ∀ n, P13454214895251305579.a n = (A074524 n : ℚ)

end A074524

/-! ## A074524.P10115866187890609645

`xor(A062379(A007318(n)), A074623(n))`
-/

namespace A074524.P10115866187890609645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A062379 (A007318 n).toNat) (A074623 n)

end

end A074524.P10115866187890609645

namespace A074524

/-- `xor(A062379(A007318(n)), A074623(n))` -/
def P10115866187890609645.Spec : Prop :=
  ∀ n, P10115866187890609645.a n = A074524 n

end A074524

/-! ## A074524.P8457378304741546076

`xor(A000001(A020639(n+2)), A074623(n))`
-/

namespace A074524.P8457378304741546076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000001 (A020639 (n + 2)).toNat) (A074623 n)

end

end A074524.P8457378304741546076

namespace A074524

/-- `xor(A000001(A020639(n+2)), A074623(n))` -/
def P8457378304741546076.Spec : Prop :=
  ∀ n, P8457378304741546076.a n = A074524 n

end A074524

/-!
# A074525: a(n) = 1^n + 8^n + 9^n.

The programs for A074525, the canonical program `A074525.P14199224158783527037` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074525 has offset 0).

The definition of A074525 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+8^n+9^n` (program `A074525.P14199224158783527037`, by `A074525.P14199224158783527037.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074525.P14199224158783527037

`1^n+8^n+9^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074525

/-- `1^n+8^n+9^n` -/
def P14199224158783527037.Spec : Prop :=
  ∀ n, (P14199224158783527037.a n : ℤ) = A074525 n

theorem P14199224158783527037.correct : P14199224158783527037.Spec := by
  intro n
  simp only [A074525]

end A074525

/-! ## A074525.P7267298449295544226

`or(2, A155663(n))`
-/

namespace A074525.P7267298449295544226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A155663 n)

end

end A074525.P7267298449295544226

namespace A074525

/-- `or(2, A155663(n))` -/
def P7267298449295544226.Spec : Prop :=
  ∀ n, P7267298449295544226.a n = A074525 n

end A074525

/-! ## A074525.P10918981198249297887

`or(2, A074624(n)+1)`
-/

namespace A074525.P10918981198249297887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A074624 n + 1)

end

end A074525.P10918981198249297887

namespace A074525

/-- `or(2, A074624(n)+1)` -/
def P10918981198249297887.Spec : Prop :=
  ∀ n, P10918981198249297887.a n = A074525 n

end A074525

/-! ## A074525.P4001449499430599326

`record[A074624(A155043(n))+1]`
-/

namespace A074525.P4001449499430599326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074624 (A155043 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074525.P4001449499430599326

namespace A074525

/-- `record[A074624(A155043(n))+1]` -/
def P4001449499430599326.Spec : Prop :=
  ∀ n, P4001449499430599326.a n = A074525 n

end A074525

/-! ## A074525.P6067838402332313586

`lcm(A155663(n)+2, A000034(n))`
-/

namespace A074525.P6067838402332313586
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A155663 n + 2) (A000034 n)

end

end A074525.P6067838402332313586

namespace A074525

/-- `lcm(A155663(n)+2, A000034(n))` -/
def P6067838402332313586.Spec : Prop :=
  ∀ n, (P6067838402332313586.a n : ℤ) = A074525 n

end A074525

/-!
# A074526: a(n) = 2^n + 3^n + 4^n.

The programs for A074526, the canonical program `A074526.P4630388288089685513` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074526 has offset 0).

The definition of A074526 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+3^n+4^n` (program `A074526.P4630388288089685513`, by `A074526.P4630388288089685513.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074526.P4630388288089685513

`2^n+3^n+4^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074526

/-- `2^n+3^n+4^n` -/
def P4630388288089685513.Spec : Prop :=
  ∀ n, (P4630388288089685513.a n : ℤ) = A074526 n

theorem P4630388288089685513.correct : P4630388288089685513.Spec := by
  intro n
  simp only [A074526]

end A074526

/-! ## A074526.P13412046442311850579

`abs(1-A001551(n))`
-/

namespace A074526.P13412046442311850579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A001551 n|

end

end A074526.P13412046442311850579

namespace A074526

/-- `abs(1-A001551(n))` -/
def P13412046442311850579.Spec : Prop :=
  ∀ n, P13412046442311850579.a n = A074526 n

end A074526

/-! ## A074526.P11117932793345620329

`or(1, A074605(n)+A000079(n))`
-/

namespace A074526.P11117932793345620329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A074605 n + A000079 n)

end

end A074526.P11117932793345620329

namespace A074526

/-- `or(1, A074605(n)+A000079(n))` -/
def P11117932793345620329.Spec : Prop :=
  ∀ n, P11117932793345620329.a n = A074526 n

end A074526

/-! ## A074526.P4750289246712778039

`abs(1-(A001550(n)+A000302(n)))`
-/

namespace A074526.P4750289246712778039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A001550 n + A000302 n)|

end

end A074526.P4750289246712778039

namespace A074526

/-- `abs(1-(A001550(n)+A000302(n)))` -/
def P4750289246712778039.Spec : Prop :=
  ∀ n, P4750289246712778039.a n = A074526 n

end A074526

/-! ## A074526.P17310348412402713346

`(A001551(n)-1)*A000034(2*n)`
-/

namespace A074526.P17310348412402713346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001551 n - 1) * A000034 (2 * n)

end

end A074526.P17310348412402713346

namespace A074526

/-- `(A001551(n)-1)*A000034(2*n)` -/
def P17310348412402713346.Spec : Prop :=
  ∀ n, P17310348412402713346.a n = A074526 n

end A074526

/-! ## A074526.P18225786223234614209

`or(1, A001551(n)-A291454(n+1))`
-/

namespace A074526.P18225786223234614209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A001551 n - A291454 (n + 1))

end

end A074526.P18225786223234614209

namespace A074526

/-- `or(1, A001551(n)-A291454(n+1))` -/
def P18225786223234614209.Spec : Prop :=
  ∀ n, P18225786223234614209.a n = A074526 n

end A074526

/-! ## A074526.P9447899974154166159

`abs(A001550(n)+A000079(n)²-1)`
-/

namespace A074526.P9447899974154166159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001550 n + A000079 n ^ 2 - 1|

end

end A074526.P9447899974154166159

namespace A074526

/-- `abs(A001550(n)+A000079(n)²-1)` -/
def P9447899974154166159.Spec : Prop :=
  ∀ n, P9447899974154166159.a n = A074526 n

end A074526

/-! ## A074526.P1634639063927723727

`(A074605(n)+A000079(n))*A322867(A036958(n+1))`
-/

namespace A074526.P1634639063927723727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074605 n + A000079 n) * A322867 (A036958 (n + 1)).toNat

end

end A074526.P1634639063927723727

namespace A074526

/-- `(A074605(n)+A000079(n))*A322867(A036958(n+1))` -/
def P1634639063927723727.Spec : Prop :=
  ∀ n, P1634639063927723727.a n = A074526 n

end A074526

/-! ## A074526.P13366746903386301758

`(A074605(n)+A000079(n))*A322867(A020639(n+2))`
-/

namespace A074526.P13366746903386301758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074605 n + A000079 n) * A322867 (A020639 (n + 2)).toNat

end

end A074526.P13366746903386301758

namespace A074526

/-- `(A074605(n)+A000079(n))*A322867(A020639(n+2))` -/
def P13366746903386301758.Spec : Prop :=
  ∀ n, P13366746903386301758.a n = A074526 n

end A074526

/-! ## A074526.P12343534010430987923

`Δ[A085282(n)+A000051(n)]`
-/

namespace A074526.P12343534010430987923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085282 n + A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074526.P12343534010430987923

namespace A074526

/-- `Δ[A085282(n)+A000051(n)]` -/
def P12343534010430987923.Spec : Prop :=
  ∀ n, P12343534010430987923.a n = A074526 n

end A074526

/-! ## A074526.P4596521276071175120

`Δ[A085282(n)+A000079(n)]`
-/

namespace A074526.P4596521276071175120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085282 n + A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074526.P4596521276071175120

namespace A074526

/-- `Δ[A085282(n)+A000079(n)]` -/
def P4596521276071175120.Spec : Prop :=
  ∀ n, P4596521276071175120.a n = A074526 n

end A074526

/-! ## A074526.P260684804890984034

`Δ[A079319(n)+A007051(n)]`
-/

namespace A074526.P260684804890984034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079319 n + A007051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074526.P260684804890984034

namespace A074526

/-- `Δ[A079319(n)+A007051(n)]` -/
def P260684804890984034.Spec : Prop :=
  ∀ n, P260684804890984034.a n = A074526 n

end A074526

/-! ## A074526.P12926217852404931442

`Δ[A099754(n)+A002450(n)]`
-/

namespace A074526.P12926217852404931442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099754 n + A002450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074526.P12926217852404931442

namespace A074526

/-- `Δ[A099754(n)+A002450(n)]` -/
def P12926217852404931442.Spec : Prop :=
  ∀ n, P12926217852404931442.a n = A074526 n

end A074526

/-! ## A074526.P4042303374917899692

`Δ[A036557(2*n+1)+A000079(n)]`
-/

namespace A074526.P4042303374917899692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036557 (2 * n + 1) + A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074526.P4042303374917899692

namespace A074526

/-- `Δ[A036557(2*n+1)+A000079(n)]` -/
def P4042303374917899692.Spec : Prop :=
  ∀ n, P4042303374917899692.a n = A074526 n

end A074526

/-! ## A074526.P16311276757421523876

`Δ[A036557(2*n+1)+A000225(n)]`
-/

namespace A074526.P16311276757421523876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036557 (2 * n + 1) + A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074526.P16311276757421523876

namespace A074526

/-- `Δ[A036557(2*n+1)+A000225(n)]` -/
def P16311276757421523876.Spec : Prop :=
  ∀ n, P16311276757421523876.a n = A074526 n

end A074526

/-! ## A074526.P17841066181996348114

`Δ[A036557(2*n+1)+Δ[A000295(n)]]`
-/

namespace A074526.P17841066181996348114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036557 (2 * n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074526.P17841066181996348114

namespace A074526

/-- `Δ[A036557(2*n+1)+Δ[A000295(n)]]` -/
def P17841066181996348114.Spec : Prop :=
  ∀ n, P17841066181996348114.a n = A074526 n

end A074526

/-! ## A074526.P14170262408151785109

`(A092431(n+1)+Δ[A001550(n)]+1)/2`
-/

namespace A074526.P14170262408151785109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001550 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092431 (n + 1) + (f1 (n + 1) - f1 n + 1) : ℚ) / 2

end

end A074526.P14170262408151785109

namespace A074526

/-- `(A092431(n+1)+Δ[A001550(n)]+1)/2` -/
def P14170262408151785109.Spec : Prop :=
  ∀ n, P14170262408151785109.a n = (A074526 n : ℚ)

end A074526

/-! ## A074526.P3204470946905254275

`(A074605(n)+A000079(n))*A322867(A036956(n+1))`
-/

namespace A074526.P3204470946905254275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074605 n + A000079 n) * A322867 (A036956 (n + 1)).toNat

end

end A074526.P3204470946905254275

namespace A074526

/-- `(A074605(n)+A000079(n))*A322867(A036956(n+1))` -/
def P3204470946905254275.Spec : Prop :=
  ∀ n, P3204470946905254275.a n = A074526 n

end A074526

/-! ## A074526.P8614860825210761288

`(A074605(n)+A000079(n))*A007318(∑[n])`
-/

namespace A074526.P8614860825210761288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074605 n + A000079 n) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074526.P8614860825210761288

namespace A074526

/-- `(A074605(n)+A000079(n))*A007318(∑[n])` -/
def P8614860825210761288.Spec : Prop :=
  ∀ n, P8614860825210761288.a n = A074526 n

end A074526

/-! ## A074526.P11271331500499722087

`abs(A001553(n)-A074516(n))`
-/

namespace A074526.P11271331500499722087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001553 n - A074516 n|

end

end A074526.P11271331500499722087

namespace A074526

/-- `abs(A001553(n)-A074516(n))` -/
def P11271331500499722087.Spec : Prop :=
  ∀ n, P11271331500499722087.a n = A074526 n

end A074526

/-!
# A074527: a(n) = 2^n + 3^n + 5^n.

The programs for A074527, the canonical program `A074527.P5088495585976316782` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074527 has offset 0).

The definition of A074527 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+3^n+5^n` (program `A074527.P5088495585976316782`, by `A074527.P5088495585976316782.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074527.P5088495585976316782

`2^n+3^n+5^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074527

/-- `2^n+3^n+5^n` -/
def P5088495585976316782.Spec : Prop :=
  ∀ n, (P5088495585976316782.a n : ℤ) = A074527 n

theorem P5088495585976316782.correct : P5088495585976316782.Spec := by
  intro n
  simp only [A074527]

end A074527

/-! ## A074527.P1824972207743480049

`∑{p}[A143207(n+1), #^n]`
-/

namespace A074527.P1824972207743480049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143207 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ n

end

end A074527.P1824972207743480049

namespace A074527

/-- `∑{p}[A143207(n+1), #^n]` -/
def P1824972207743480049.Spec : Prop :=
  ∀ n, (P1824972207743480049.a n : ℤ) = A074527 n

end A074527

/-! ## A074527.P18255814778220525476

`abs(A074501(n)+3^n-1)`
-/

namespace A074527.P18255814778220525476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074501 n + ((3 ^ n : ℤ) - 1)|

end

end A074527.P18255814778220525476

namespace A074527

/-- `abs(A074501(n)+3^n-1)` -/
def P18255814778220525476.Spec : Prop :=
  ∀ n, P18255814778220525476.a n = A074527 n

end A074527

/-! ## A074527.P10825514598030893963

`abs(A001552(n)-A052539(n))`
-/

namespace A074527.P10825514598030893963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001552 n - A052539 n|

end

end A074527.P10825514598030893963

namespace A074527

/-- `abs(A001552(n)-A052539(n))` -/
def P10825514598030893963.Spec : Prop :=
  ∀ n, P10825514598030893963.a n = A074527 n

end A074527

/-! ## A074527.P8071955610397481615

`Δ[A094374(n)+A003463(n)]`
-/

namespace A074527.P8071955610397481615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094374 n + A003463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074527.P8071955610397481615

namespace A074527

/-- `Δ[A094374(n)+A003463(n)]` -/
def P8071955610397481615.Spec : Prop :=
  ∀ n, P8071955610397481615.a n = A074527 n

end A074527

/-! ## A074527.P6853691352480355917

`Δ[A099754(n)+A003463(n)]`
-/

namespace A074527.P6853691352480355917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099754 n + A003463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074527.P6853691352480355917

namespace A074527

/-- `Δ[A099754(n)+A003463(n)]` -/
def P6853691352480355917.Spec : Prop :=
  ∀ n, P6853691352480355917.a n = A074527 n

end A074527

/-! ## A074527.P15624885641542083270

`Δ[A094374(n)+A047850(n)]`
-/

namespace A074527.P15624885641542083270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094374 n + A047850 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074527.P15624885641542083270

namespace A074527

/-- `Δ[A094374(n)+A047850(n)]` -/
def P15624885641542083270.Spec : Prop :=
  ∀ n, P15624885641542083270.a n = A074527 n

end A074527

/-! ## A074527.P5249816916754797598

`Δ[A099754(n)+A047850(n)]`
-/

namespace A074527.P5249816916754797598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099754 n + A047850 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074527.P5249816916754797598

namespace A074527

/-- `Δ[A099754(n)+A047850(n)]` -/
def P5249816916754797598.Spec : Prop :=
  ∀ n, P5249816916754797598.a n = A074527 n

end A074527

/-! ## A074527.P10444756671369226255

`(A135168(n)-A000420(n))%A134006(n)`
-/

namespace A074527.P10444756671369226255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135168 n - A000420 n) (A134006 n)

end

end A074527.P10444756671369226255

namespace A074527

/-- `(A135168(n)-A000420(n))%A134006(n)` -/
def P10444756671369226255.Spec : Prop :=
  ∀ n, P10444756671369226255.a n = A074527 n

end A074527

/-! ## A074527.P1604999274490684385

`(A007689(n)+A000351(n))%A169724(n+1)`
-/

namespace A074527.P1604999274490684385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007689 n + A000351 n) (A169724 (n + 1))

end

end A074527.P1604999274490684385

namespace A074527

/-- `(A007689(n)+A000351(n))%A169724(n+1)` -/
def P1604999274490684385.Spec : Prop :=
  ∀ n, P1604999274490684385.a n = A074527 n

end A074527

/-!
# A074528: a(n) = 2^n + 3^n + 6^n.

The programs for A074528, the canonical program `A074528.P12730308612103962859` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074528 has offset 0).

The definition of A074528 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+3^n+6^n` (program `A074528.P12730308612103962859`, by `A074528.P12730308612103962859.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074528.P12730308612103962859

`2^n+3^n+6^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074528

/-- `2^n+3^n+6^n` -/
def P12730308612103962859.Spec : Prop :=
  ∀ n, (P12730308612103962859.a n : ℤ) = A074528 n

theorem P12730308612103962859.correct : P12730308612103962859.Spec := by
  intro n
  simp only [A074528]

end A074528

/-! ## A074528.P16532780365382137082

`A246985(n+1)`
-/

namespace A074528.P16532780365382137082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246985 (n + 1)

end

end A074528.P16532780365382137082

namespace A074528

/-- `A246985(n+1)` -/
def P16532780365382137082.Spec : Prop :=
  ∀ n, P16532780365382137082.a n = A074528 n

end A074528

/-! ## A074528.P16045499002570889960

`abs(1-A034488(n))`
-/

namespace A074528.P16045499002570889960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A034488 n|

end

end A074528.P16045499002570889960

namespace A074528

/-- `abs(1-A034488(n))` -/
def P16045499002570889960.Spec : Prop :=
  ∀ n, P16045499002570889960.a n = A074528 n

end A074528

/-! ## A074528.P3103388375962177966

`record[A246985(abs(1-n))]`
-/

namespace A074528.P3103388375962177966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246985 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074528.P3103388375962177966

namespace A074528

/-- `record[A246985(abs(1-n))]` -/
def P3103388375962177966.Spec : Prop :=
  ∀ n, P3103388375962177966.a n = A074528 n

end A074528

/-! ## A074528.P2974425593852581602

`record[A034488(A002262(n))-1]`
-/

namespace A074528.P2974425593852581602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034488 (A002262 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074528.P2974425593852581602

namespace A074528

/-- `record[A034488(A002262(n))-1]` -/
def P2974425593852581602.Spec : Prop :=
  ∀ n, P2974425593852581602.a n = A074528 n

end A074528

/-!
# A074529: a(n) = 2^n + 3^n + 7^n.

The programs for A074529, the canonical program `A074529.P1743053996531333742` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074529 has offset 0).

The definition of A074529 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+3^n+7^n` (program `A074529.P1743053996531333742`, by `A074529.P1743053996531333742.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074529.P1743053996531333742

`2^n+3^n+7^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074529

/-- `2^n+3^n+7^n` -/
def P1743053996531333742.Spec : Prop :=
  ∀ n, (P1743053996531333742.a n : ℤ) = A074529 n

theorem P1743053996531333742.correct : P1743053996531333742.Spec := by
  intro n
  simp only [A074529]

end A074529

/-! ## A074529.P7802076812881650293

`floor(3^n-(log2(1/2)-A155590(n)))`
-/

namespace A074529.P7802076812881650293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 ^ n : ℝ) - (Real.logb 2 ((1 : ℚ) / 2 : ℝ) - (A155590 n : ℝ))⌋

end

end A074529.P7802076812881650293

namespace A074529

/-- `floor(3^n-(log2(1/2)-A155590(n)))` -/
def P7802076812881650293.Spec : Prop :=
  ∀ n, P7802076812881650293.a n = A074529 n

end A074529

/-! ## A074529.P6863857639221399146

`abs(A000351(n)-A135168(n))`
-/

namespace A074529.P6863857639221399146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000351 n - A135168 n|

end

end A074529.P6863857639221399146

namespace A074529

/-- `abs(A000351(n)-A135168(n))` -/
def P6863857639221399146.Spec : Prop :=
  ∀ n, P6863857639221399146.a n = A074529 n

end A074529

/-! ## A074529.P17363509003446608089

`Δ[A094374(n)+A023000(n)]`
-/

namespace A074529.P17363509003446608089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094374 n + A023000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074529.P17363509003446608089

namespace A074529

/-- `Δ[A094374(n)+A023000(n)]` -/
def P17363509003446608089.Spec : Prop :=
  ∀ n, P17363509003446608089.a n = A074529 n

end A074529

/-! ## A074529.P16774935819328932879

`Δ[A099754(n)+A023000(n)]`
-/

namespace A074529.P16774935819328932879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099754 n + A023000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074529.P16774935819328932879

namespace A074529

/-- `Δ[A099754(n)+A023000(n)]` -/
def P16774935819328932879.Spec : Prop :=
  ∀ n, P16774935819328932879.a n = A074529 n

end A074529

/-! ## A074529.P399572609066167260

`Δ[A341590(n)+A001550(n)]`
-/

namespace A074529.P399572609066167260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341590 n + A001550 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074529.P399572609066167260

namespace A074529

/-- `Δ[A341590(n)+A001550(n)]` -/
def P399572609066167260.Spec : Prop :=
  ∀ n, P399572609066167260.a n = A074529 n

end A074529

/-! ## A074529.P17166636001054984530

`abs(A074608(n)+Δ[A000051(n)])`
-/

namespace A074529.P17166636001054984530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074608 n + (f1 (n + 1) - f1 n)|

end

end A074529.P17166636001054984530

namespace A074529

/-- `abs(A074608(n)+Δ[A000051(n)])` -/
def P17166636001054984530.Spec : Prop :=
  ∀ n, P17166636001054984530.a n = A074529 n

end A074529

/-! ## A074529.P7956410902544564504

`abs(A074608(n)+Δ[A153972(n)])`
-/

namespace A074529.P7956410902544564504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153972 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074608 n + (f1 (n + 1) - f1 n)|

end

end A074529.P7956410902544564504

namespace A074529

/-- `abs(A074608(n)+Δ[A153972(n)])` -/
def P7956410902544564504.Spec : Prop :=
  ∀ n, P7956410902544564504.a n = A074529 n

end A074529

/-! ## A074529.P8061104685461512023

`abs(A001550(n)+A000420(n)-1)`
-/

namespace A074529.P8061104685461512023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001550 n + (A000420 n - 1)|

end

end A074529.P8061104685461512023

namespace A074529

/-- `abs(A001550(n)+A000420(n)-1)` -/
def P8061104685461512023.Spec : Prop :=
  ∀ n, P8061104685461512023.a n = A074529 n

end A074529

/-! ## A074529.P10226750348091979398

`(A007689(n)+A000420(n))%A135168(n)`
-/

namespace A074529.P10226750348091979398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007689 n + A000420 n) (A135168 n)

end

end A074529.P10226750348091979398

namespace A074529

/-- `(A007689(n)+A000420(n))%A135168(n)` -/
def P10226750348091979398.Spec : Prop :=
  ∀ n, P10226750348091979398.a n = A074529 n

end A074529

/-! ## A074529.P9336461765357409624

`(A135164(n)+A000351(n))%A135168(n)`
-/

namespace A074529.P9336461765357409624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135164 n + A000351 n) (A135168 n)

end

end A074529.P9336461765357409624

namespace A074529

/-- `(A135164(n)+A000351(n))%A135168(n)` -/
def P9336461765357409624.Spec : Prop :=
  ∀ n, P9336461765357409624.a n = A074529 n

end A074529

/-! ## A074529.P1016432951669884451

`(A135168(n)+A135164(n))/2`
-/

namespace A074529.P1016432951669884451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135168 n + A135164 n : ℚ) / 2

end

end A074529.P1016432951669884451

namespace A074529

/-- `(A135168(n)+A135164(n))/2` -/
def P1016432951669884451.Spec : Prop :=
  ∀ n, P1016432951669884451.a n = (A074529 n : ℚ)

end A074529

/-!
# A074530: a(n) = 2^n + 3^n + 8^n.

The programs for A074530, the canonical program `A074530.P11230954735415132841` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074530 has offset 0).

The definition of A074530 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+3^n+8^n` (program `A074530.P11230954735415132841`, by `A074530.P11230954735415132841.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074530.P11230954735415132841

`2^n+3^n+8^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074530

/-- `2^n+3^n+8^n` -/
def P11230954735415132841.Spec : Prop :=
  ∀ n, (P11230954735415132841.a n : ℤ) = A074530 n

theorem P11230954735415132841.correct : P11230954735415132841.Spec := by
  intro n
  simp only [A074530]

end A074530

/-! ## A074530.P16979376285989767740

`xor(8^n, A007689(n))`
-/

namespace A074530.P16979376285989767740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (8 ^ n : ℤ) (A007689 n)

end

end A074530.P16979376285989767740

namespace A074530

/-- `xor(8^n, A007689(n))` -/
def P16979376285989767740.Spec : Prop :=
  ∀ n, P16979376285989767740.a n = A074530 n

end A074530

/-! ## A074530.P15048902679417068877

`Δ[A099754(n)+A023001(n)]`
-/

namespace A074530.P15048902679417068877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099754 n + A023001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074530.P15048902679417068877

namespace A074530

/-- `Δ[A099754(n)+A023001(n)]` -/
def P15048902679417068877.Spec : Prop :=
  ∀ n, P15048902679417068877.a n = A074530 n

end A074530

/-! ## A074530.P11893147130885888176

`or(A000079(3*n), A007689(n))`
-/

namespace A074530.P11893147130885888176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000079 (3 * n)) (A007689 n)

end

end A074530.P11893147130885888176

namespace A074530

/-- `or(A000079(3*n), A007689(n))` -/
def P11893147130885888176.Spec : Prop :=
  ∀ n, P11893147130885888176.a n = A074530 n

end A074530

/-! ## A074530.P3328034500677825967

`or(A005056(n)+1, Δ[A023001(n)])`
-/

namespace A074530.P3328034500677825967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005056 n + 1) (f1 (n + 1) - f1 n)

end

end A074530.P3328034500677825967

namespace A074530

/-- `or(A005056(n)+1, Δ[A023001(n)])` -/
def P3328034500677825967.Spec : Prop :=
  ∀ n, P3328034500677825967.a n = A074530 n

end A074530

/-! ## A074530.P5469702732834106213

`or(A000244(n)+A000079(n), A001018(n))`
-/

namespace A074530.P5469702732834106213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000244 n + A000079 n) (A001018 n)

end

end A074530.P5469702732834106213

namespace A074530

/-- `or(A000244(n)+A000079(n), A001018(n))` -/
def P5469702732834106213.Spec : Prop :=
  ∀ n, P5469702732834106213.a n = A074530 n

end A074530

/-!
# A074531: a(n) = 2^n + 3^n + 9^n.

The programs for A074531, the canonical program `A074531.P8042299482482290928` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074531 has offset 0).

The definition of A074531 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+3^n+9^n` (program `A074531.P8042299482482290928`, by `A074531.P8042299482482290928.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074531.P8042299482482290928

`2^n+3^n+9^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074531

/-- `2^n+3^n+9^n` -/
def P8042299482482290928.Spec : Prop :=
  ∀ n, (P8042299482482290928.a n : ℤ) = A074531 n

theorem P8042299482482290928.correct : P8042299482482290928.Spec := by
  intro n
  simp only [A074531]

end A074531

/-! ## A074531.P11094623332034720870

`Δ[A094374(n)+A002452(n)]`
-/

namespace A074531.P11094623332034720870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094374 n + A002452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074531.P11094623332034720870

namespace A074531

/-- `Δ[A094374(n)+A002452(n)]` -/
def P11094623332034720870.Spec : Prop :=
  ∀ n, P11094623332034720870.a n = A074531 n

end A074531

/-! ## A074531.P17599564177952958922

`Δ[A099754(n)+A002452(n)]`
-/

namespace A074531.P17599564177952958922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099754 n + A002452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074531.P17599564177952958922

namespace A074531

/-- `Δ[A099754(n)+A002452(n)]` -/
def P17599564177952958922.Spec : Prop :=
  ∀ n, P17599564177952958922.a n = A074531 n

end A074531

/-! ## A074531.P7975512789603075938

`Δ[A094374(n)+A047854(n)]`
-/

namespace A074531.P7975512789603075938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094374 n + A047854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074531.P7975512789603075938

namespace A074531

/-- `Δ[A094374(n)+A047854(n)]` -/
def P7975512789603075938.Spec : Prop :=
  ∀ n, P7975512789603075938.a n = A074531 n

end A074531

/-! ## A074531.P8488856568259081548

`floor(A000225(n)+(A198410(n+2)+2)/3)`
-/

namespace A074531.P8488856568259081548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000225 n : ℚ) + (A198410 (n + 2) + 2 : ℚ) / 3⌋

end

end A074531.P8488856568259081548

namespace A074531

/-- `floor(A000225(n)+(A198410(n+2)+2)/3)` -/
def P8488856568259081548.Spec : Prop :=
  ∀ n, P8488856568259081548.a n = A074531 n

end A074531

/-! ## A074531.P8243925375381825946

`abs(A001019(n)+A000244(n+1)-A027649(n))`
-/

namespace A074531.P8243925375381825946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001019 n + (A000244 (n + 1) - A027649 n)|

end

end A074531.P8243925375381825946

namespace A074531

/-- `abs(A001019(n)+A000244(n+1)-A027649(n))` -/
def P8243925375381825946.Spec : Prop :=
  ∀ n, P8243925375381825946.a n = A074531 n

end A074531

/-!
# A074532: a(n) = 2^n + 4^n + 5^n.

The programs for A074532, the canonical program `A074532.P9473823795762054063` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074532 has offset 0).

The definition of A074532 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+4^n+5^n` (program `A074532.P9473823795762054063`, by `A074532.P9473823795762054063.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074532.P9473823795762054063

`2^n+4^n+5^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074532

/-- `2^n+4^n+5^n` -/
def P9473823795762054063.Spec : Prop :=
  ∀ n, (P9473823795762054063.a n : ℤ) = A074532 n

theorem P9473823795762054063.correct : P9473823795762054063.Spec := by
  intro n
  simp only [A074532]

end A074532

/-! ## A074532.P6611456535666796355

`abs(A001552(n)-A034472(n))`
-/

namespace A074532.P6611456535666796355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001552 n - A034472 n|

end

end A074532.P6611456535666796355

namespace A074532

/-- `abs(A001552(n)-A034472(n))` -/
def P6611456535666796355.Spec : Prop :=
  ∀ n, P6611456535666796355.a n = A074532 n

end A074532

/-! ## A074532.P2975149423038914780

`abs(A001047(n)-A074547(n))`
-/

namespace A074532.P2975149423038914780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001047 n - A074547 n|

end

end A074532.P2975149423038914780

namespace A074532

/-- `abs(A001047(n)-A074547(n))` -/
def P2975149423038914780.Spec : Prop :=
  ∀ n, P2975149423038914780.a n = A074532 n

end A074532

/-! ## A074532.P10595806273720771015

`or(1, A074600(n)+A024036(n))`
-/

namespace A074532.P10595806273720771015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A074600 n + A024036 n)

end

end A074532.P10595806273720771015

namespace A074532

/-- `or(1, A074600(n)+A024036(n))` -/
def P10595806273720771015.Spec : Prop :=
  ∀ n, P10595806273720771015.a n = A074532 n

end A074532

/-! ## A074532.P9472024688799544350

`Δ[A000225(n)+A003463(n)+A002450(n)]`
-/

namespace A074532.P9472024688799544350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (A003463 n + A002450 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074532.P9472024688799544350

namespace A074532

/-- `Δ[A000225(n)+A003463(n)+A002450(n)]` -/
def P9472024688799544350.Spec : Prop :=
  ∀ n, P9472024688799544350.a n = A074532 n

end A074532

/-!
# A074533: a(n) = 2^n + 4^n + 6^n.

The programs for A074533, the canonical program `A074533.P12871218139762461628` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074533 has offset 0).

The definition of A074533 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+4^n+6^n` (program `A074533.P12871218139762461628`, by `A074533.P12871218139762461628.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074533.P12871218139762461628

`2^n+4^n+6^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074533

/-- `2^n+4^n+6^n` -/
def P12871218139762461628.Spec : Prop :=
  ∀ n, (P12871218139762461628.a n : ℤ) = A074533 n

theorem P12871218139762461628.correct : P12871218139762461628.Spec := by
  intro n
  simp only [A074533]

end A074533

/-! ## A074533.P18014756900594000517

`2^n*A001550(n)`
-/

namespace A074533.P18014756900594000517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001550 n

end

end A074533.P18014756900594000517

namespace A074533

/-- `2^n*A001550(n)` -/
def P18014756900594000517.Spec : Prop :=
  ∀ n, P18014756900594000517.a n = A074533 n

end A074533

/-! ## A074533.P11313203722825464071

`(A007689(n)+1)*2^n`
-/

namespace A074533.P11313203722825464071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007689 n + 1) * (2 ^ n : ℤ)

end

end A074533.P11313203722825464071

namespace A074533

/-- `(A007689(n)+1)*2^n` -/
def P11313203722825464071.Spec : Prop :=
  ∀ n, P11313203722825464071.a n = A074533 n

end A074533

/-! ## A074533.P5851359882329565295

`(Δ[A094374(n)]+1)*2^n`
-/

namespace A074533.P5851359882329565295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094374 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) * (2 ^ n : ℤ)

end

end A074533.P5851359882329565295

namespace A074533

/-- `(Δ[A094374(n)]+1)*2^n` -/
def P5851359882329565295.Spec : Prop :=
  ∀ n, P5851359882329565295.a n = A074533 n

end A074533

/-! ## A074533.P16202192307212725173

`(Δ[A099754(n)]+1)*2^n`
-/

namespace A074533.P16202192307212725173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) * (2 ^ n : ℤ)

end

end A074533.P16202192307212725173

namespace A074533

/-- `(Δ[A099754(n)]+1)*2^n` -/
def P16202192307212725173.Spec : Prop :=
  ∀ n, P16202192307212725173.a n = A074533 n

end A074533

/-! ## A074533.P647599305935621710

`A001550(n)*A011782(n+1)`
-/

namespace A074533.P647599305935621710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001550 n * A011782 (n + 1)

end

end A074533.P647599305935621710

namespace A074533

/-- `A001550(n)*A011782(n+1)` -/
def P647599305935621710.Spec : Prop :=
  ∀ n, P647599305935621710.a n = A074533 n

end A074533

/-! ## A074533.P3464451372676672987

`(A005056(n)+2)*A000079(n)`
-/

namespace A074533.P3464451372676672987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005056 n + 2) * A000079 n

end

end A074533.P3464451372676672987

namespace A074533

/-- `(A005056(n)+2)*A000079(n)` -/
def P3464451372676672987.Spec : Prop :=
  ∀ n, P3464451372676672987.a n = A074533 n

end A074533

/-! ## A074533.P5221148942424678233

`(A085281(n+1)+1)*A011782(n+1)`
-/

namespace A074533.P5221148942424678233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A085281 (n + 1) + 1) * A011782 (n + 1)

end

end A074533.P5221148942424678233

namespace A074533

/-- `(A085281(n+1)+1)*A011782(n+1)` -/
def P5221148942424678233.Spec : Prop :=
  ∀ n, P5221148942424678233.a n = A074533 n

end A074533

/-! ## A074533.P7255238856509101563

`(A085281(n+1)+1)*A131577(n+1)`
-/

namespace A074533.P7255238856509101563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A085281 (n + 1) + 1) * A131577 (n + 1)

end

end A074533.P7255238856509101563

namespace A074533

/-- `(A085281(n+1)+1)*A131577(n+1)` -/
def P7255238856509101563.Spec : Prop :=
  ∀ n, P7255238856509101563.a n = A074533 n

end A074533

/-! ## A074533.P3029266674648427849

`(A000244(n)+A000051(n))*A000079(n)`
-/

namespace A074533.P3029266674648427849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n + A000051 n) * A000079 n

end

end A074533.P3029266674648427849

namespace A074533

/-- `(A000244(n)+A000051(n))*A000079(n)` -/
def P3029266674648427849.Spec : Prop :=
  ∀ n, P3029266674648427849.a n = A074533 n

end A074533

/-! ## A074533.P13745044994773733623

`(A034472(n)+A000079(n))*A000079(n)`
-/

namespace A074533.P13745044994773733623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A034472 n + A000079 n) * A000079 n

end

end A074533.P13745044994773733623

namespace A074533

/-- `(A034472(n)+A000079(n))*A000079(n)` -/
def P13745044994773733623.Spec : Prop :=
  ∀ n, P13745044994773733623.a n = A074533 n

end A074533

/-! ## A074533.P6383308274457284918

`(A052548(n)+A024023(n))*A000079(n)`
-/

namespace A074533.P6383308274457284918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052548 n + A024023 n) * A000079 n

end

end A074533.P6383308274457284918

namespace A074533

/-- `(A052548(n)+A024023(n))*A000079(n)` -/
def P6383308274457284918.Spec : Prop :=
  ∀ n, P6383308274457284918.a n = A074533 n

end A074533

/-! ## A074533.P11219435456603297842

`(A099754(n)+A007051(n))*A000079(n)`
-/

namespace A074533.P11219435456603297842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A099754 n + A007051 n) * A000079 n

end

end A074533.P11219435456603297842

namespace A074533

/-- `(A099754(n)+A007051(n))*A000079(n)` -/
def P11219435456603297842.Spec : Prop :=
  ∀ n, P11219435456603297842.a n = A074533 n

end A074533

/-! ## A074533.P6048123262735389303

`A001550(n)/A007689(n)*A074612(n)`
-/

namespace A074533.P6048123262735389303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001550 n : ℚ) / (A007689 n : ℚ) * (A074612 n : ℚ)

end

end A074533.P6048123262735389303

namespace A074533

/-- `A001550(n)/A007689(n)*A074612(n)` -/
def P6048123262735389303.Spec : Prop :=
  ∀ n, P6048123262735389303.a n = (A074533 n : ℚ)

end A074533

/-! ## A074533.P9529644901125131299

`(A001047(n)+A000051(n+1))*A000079(n)`
-/

namespace A074533.P9529644901125131299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001047 n + A000051 (n + 1)) * A000079 n

end

end A074533.P9529644901125131299

namespace A074533

/-- `(A001047(n)+A000051(n+1))*A000079(n)` -/
def P9529644901125131299.Spec : Prop :=
  ∀ n, P9529644901125131299.a n = A074533 n

end A074533

/-! ## A074533.P15632983635767917685

`(A034472(n)+A011782(n+1))*A011782(n+1)`
-/

namespace A074533.P15632983635767917685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A034472 n + A011782 (n + 1)) * A011782 (n + 1)

end

end A074533.P15632983635767917685

namespace A074533

/-- `(A034472(n)+A011782(n+1))*A011782(n+1)` -/
def P15632983635767917685.Spec : Prop :=
  ∀ n, P15632983635767917685.a n = A074533 n

end A074533

/-! ## A074533.P12987023880643810910

`(A103457(n+1)-A027649(n))*A011782(n+1)`
-/

namespace A074533.P12987023880643810910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A103457 (n + 1) - A027649 n) * A011782 (n + 1)

end

end A074533.P12987023880643810910

namespace A074533

/-- `(A103457(n+1)-A027649(n))*A011782(n+1)` -/
def P12987023880643810910.Spec : Prop :=
  ∀ n, P12987023880643810910.a n = A074533 n

end A074533

/-! ## A074533.P12509361024756441811

`(A094388(n+1)+A011782(n+1))*A011782(n+1)`
-/

namespace A074533.P12509361024756441811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094388 (n + 1) + A011782 (n + 1)) * A011782 (n + 1)

end

end A074533.P12509361024756441811

namespace A074533

/-- `(A094388(n+1)+A011782(n+1))*A011782(n+1)` -/
def P12509361024756441811.Spec : Prop :=
  ∀ n, P12509361024756441811.a n = A074533 n

end A074533

/-!
# A074534: a(n) = 2^n + 4^n + 7^n.

The programs for A074534, the canonical program `A074534.P902535221530212066` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074534 has offset 0).

The definition of A074534 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+4^n+7^n` (program `A074534.P902535221530212066`, by `A074534.P902535221530212066.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074534.P902535221530212066

`2^n+4^n+7^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074534

/-- `2^n+4^n+7^n` -/
def P902535221530212066.Spec : Prop :=
  ∀ n, (P902535221530212066.a n : ℤ) = A074534 n

theorem P902535221530212066.correct : P902535221530212066.Spec := by
  intro n
  simp only [A074534]

end A074534

/-! ## A074534.P1790331853313873599

`or(1, A155618(n)+2^n)`
-/

namespace A074534.P1790331853313873599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A155618 n + (2 ^ n : ℤ))

end

end A074534.P1790331853313873599

namespace A074534

/-- `or(1, A155618(n)+2^n)` -/
def P1790331853313873599.Spec : Prop :=
  ∀ n, P1790331853313873599.a n = A074534 n

end A074534

/-! ## A074534.P14519040790049122598

`abs(A001047(n)-A074549(n))`
-/

namespace A074534.P14519040790049122598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001047 n - A074549 n|

end

end A074534.P14519040790049122598

namespace A074534

/-- `abs(A001047(n)-A074549(n))` -/
def P14519040790049122598.Spec : Prop :=
  ∀ n, P14519040790049122598.a n = A074534 n

end A074534

/-! ## A074534.P7456936373738222550

`Δ[A000225(n)+A047852(n)+A047849(n)]`
-/

namespace A074534.P7456936373738222550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (A047852 n + A047849 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074534.P7456936373738222550

namespace A074534

/-- `Δ[A000225(n)+A047852(n)+A047849(n)]` -/
def P7456936373738222550.Spec : Prop :=
  ∀ n, P7456936373738222550.a n = A074534 n

end A074534

/-! ## A074534.P6771570690480946946

`abs(1-A074513(n)-(A052548(n+1)-A052548(n)))`
-/

namespace A074534.P6771570690480946946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A074513 n - (A052548 (n + 1) - A052548 n)|

end

end A074534.P6771570690480946946

namespace A074534

/-- `abs(1-A074513(n)-(A052548(n+1)-A052548(n)))` -/
def P6771570690480946946.Spec : Prop :=
  ∀ n, P6771570690480946946.a n = A074534 n

end A074534

/-! ## A074534.P156252456224863696

`abs(A016177(n)-A074535(n))`
-/

namespace A074534.P156252456224863696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016177 n - A074535 n|

end

end A074534.P156252456224863696

namespace A074534

/-- `abs(A016177(n)-A074535(n))` -/
def P156252456224863696.Spec : Prop :=
  ∀ n, P156252456224863696.a n = A074534 n

end A074534

/-!
# A074535: a(n) = 2^n + 4^n + 8^n.

The programs for A074535, the canonical program `A074535.P639029963041919896` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074535 has offset 0).

The definition of A074535 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+4^n+8^n` (program `A074535.P639029963041919896`, by `A074535.P639029963041919896.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074535.P639029963041919896

`2^n+4^n+8^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074535

/-- `2^n+4^n+8^n` -/
def P639029963041919896.Spec : Prop :=
  ∀ n, (P639029963041919896.a n : ℤ) = A074535 n

theorem P639029963041919896.correct : P639029963041919896.Spec := by
  intro n
  simp only [A074535]

end A074535

/-! ## A074535.P11849169264162271366

`abs(1-A034496(n))`
-/

namespace A074535.P11849169264162271366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A034496 n|

end

end A074535.P11849169264162271366

namespace A074535

/-- `abs(1-A034496(n))` -/
def P11849169264162271366.Spec : Prop :=
  ∀ n, P11849169264162271366.a n = A074535 n

end A074535

/-! ## A074535.P14952448249521662094

`2^n*A001576(n)`
-/

namespace A074535.P14952448249521662094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001576 n

end

end A074535.P14952448249521662094

namespace A074535

/-- `2^n*A001576(n)` -/
def P14952448249521662094.Spec : Prop :=
  ∀ n, P14952448249521662094.a n = A074535 n

end A074535

/-! ## A074535.P12258688446172679224

`or(2^n, A063481(n))`
-/

namespace A074535.P12258688446172679224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ n : ℤ) (A063481 n)

end

end A074535.P12258688446172679224

namespace A074535

/-- `or(2^n, A063481(n))` -/
def P12258688446172679224.Spec : Prop :=
  ∀ n, P12258688446172679224.a n = A074535 n

end A074535

/-! ## A074535.P5312574977163950470

`(A161168(n)+1)*2^n`
-/

namespace A074535.P5312574977163950470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A161168 n + 1) * (2 ^ n : ℤ)

end

end A074535.P5312574977163950470

namespace A074535

/-- `(A161168(n)+1)*2^n` -/
def P5312574977163950470.Spec : Prop :=
  ∀ n, P5312574977163950470.a n = A074535 n

end A074535

/-! ## A074535.P14056636874817710864

`lcm(A000079(n), A001576(n))`
-/

namespace A074535.P14056636874817710864
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A001576 n)

end

end A074535.P14056636874817710864

namespace A074535

/-- `lcm(A000079(n), A001576(n))` -/
def P14056636874817710864.Spec : Prop :=
  ∀ n, (P14056636874817710864.a n : ℤ) = A074535 n

end A074535

/-! ## A074535.P10472228589399556175

`abs(A001576(n)*A171449(n))`
-/

namespace A074535.P10472228589399556175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001576 n * A171449 n|

end

end A074535.P10472228589399556175

namespace A074535

/-- `abs(A001576(n)*A171449(n))` -/
def P10472228589399556175.Spec : Prop :=
  ∀ n, P10472228589399556175.a n = A074535 n

end A074535

/-! ## A074535.P1749765622510066045

`A001576(n)*A011782(n+1)`
-/

namespace A074535.P1749765622510066045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001576 n * A011782 (n + 1)

end

end A074535.P1749765622510066045

namespace A074535

/-- `A001576(n)*A011782(n+1)` -/
def P1749765622510066045.Spec : Prop :=
  ∀ n, P1749765622510066045.a n = A074535 n

end A074535

/-! ## A074535.P5679870023266906624

`A001576(n)*A131577(n+1)`
-/

namespace A074535.P5679870023266906624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001576 n * A131577 (n + 1)

end

end A074535.P5679870023266906624

namespace A074535

/-- `A001576(n)*A131577(n+1)` -/
def P5679870023266906624.Spec : Prop :=
  ∀ n, P5679870023266906624.a n = A074535 n

end A074535

/-! ## A074535.P1269881893546435112

`A135576(n+1)*A171559(n)`
-/

namespace A074535.P1269881893546435112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135576 (n + 1) * A171559 n

end

end A074535.P1269881893546435112

namespace A074535

/-- `A135576(n+1)*A171559(n)` -/
def P1269881893546435112.Spec : Prop :=
  ∀ n, P1269881893546435112.a n = A074535 n

end A074535

/-! ## A074535.P6204551136946966718

`(A099393(n)+2)*A000079(n)`
-/

namespace A074535.P6204551136946966718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A099393 n + 2) * A000079 n

end

end A074535.P6204551136946966718

namespace A074535

/-- `(A099393(n)+2)*A000079(n)` -/
def P6204551136946966718.Spec : Prop :=
  ∀ n, P6204551136946966718.a n = A074535 n

end A074535

/-! ## A074535.P16597515742231722267

`lcm(A098646(n), A135576(n+1))`
-/

namespace A074535.P16597515742231722267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A098646 n) (A135576 (n + 1))

end

end A074535.P16597515742231722267

namespace A074535

/-- `lcm(A098646(n), A135576(n+1))` -/
def P16597515742231722267.Spec : Prop :=
  ∀ n, (P16597515742231722267.a n : ℤ) = A074535 n

end A074535

/-! ## A074535.P12136056549921505030

`(A052957(2*n)+1)*A016116(2*n)`
-/

namespace A074535.P12136056549921505030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052957 (2 * n) + 1) * A016116 (2 * n)

end

end A074535.P12136056549921505030

namespace A074535

/-- `(A052957(2*n)+1)*A016116(2*n)` -/
def P12136056549921505030.Spec : Prop :=
  ∀ n, P12136056549921505030.a n = A074535 n

end A074535

/-! ## A074535.P4194145081850581162

`(A056326(2*(n+1))+2)*A077958(3*n)`
-/

namespace A074535.P4194145081850581162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056326 (2 * (n + 1)) + 2) * A077958 (3 * n)

end

end A074535.P4194145081850581162

namespace A074535

/-- `(A056326(2*(n+1))+2)*A077958(3*n)` -/
def P4194145081850581162.Spec : Prop :=
  ∀ n, P4194145081850581162.a n = A074535 n

end A074535

/-! ## A074535.P13266444830049465043

`(A052539(n)+A000079(n))*A000079(n)`
-/

namespace A074535.P13266444830049465043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052539 n + A000079 n) * A000079 n

end

end A074535.P13266444830049465043

namespace A074535

/-- `(A052539(n)+A000079(n))*A000079(n)` -/
def P13266444830049465043.Spec : Prop :=
  ∀ n, P13266444830049465043.a n = A074535 n

end A074535

/-! ## A074535.P16842267645595968436

`(A001551(n)-A000244(n))*A000079(n)`
-/

namespace A074535.P16842267645595968436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001551 n - A000244 n) * A000079 n

end

end A074535.P16842267645595968436

namespace A074535

/-- `(A001551(n)-A000244(n))*A000079(n)` -/
def P16842267645595968436.Spec : Prop :=
  ∀ n, P16842267645595968436.a n = A074535 n

end A074535

/-! ## A074535.P10327634064328874163

`A001576(n)/A001550(n)*A074533(n)`
-/

namespace A074535.P10327634064328874163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001576 n : ℚ) / (A001550 n : ℚ) * (A074533 n : ℚ)

end

end A074535.P10327634064328874163

namespace A074535

/-- `A001576(n)/A001550(n)*A074533(n)` -/
def P10327634064328874163.Spec : Prop :=
  ∀ n, P10327634064328874163.a n = (A074535 n : ℚ)

end A074535

/-! ## A074535.P14556705298455281516

`A001576(n)/A074526(n)*A074566(n)`
-/

namespace A074535.P14556705298455281516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001576 n : ℚ) / (A074526 n : ℚ) * (A074566 n : ℚ)

end

end A074535.P14556705298455281516

namespace A074535

/-- `A001576(n)/A074526(n)*A074566(n)` -/
def P14556705298455281516.Spec : Prop :=
  ∀ n, P14556705298455281516.a n = (A074535 n : ℚ)

end A074535

/-!
# A074536: a(n) = 2^n + 4^n + 9^n.

The programs for A074536, the canonical program `A074536.P4230930682588145782` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074536 has offset 0).

The definition of A074536 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+4^n+9^n` (program `A074536.P4230930682588145782`, by `A074536.P4230930682588145782.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074536.P4230930682588145782

`2^n+4^n+9^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074536

/-- `2^n+4^n+9^n` -/
def P4230930682588145782.Spec : Prop :=
  ∀ n, (P4230930682588145782.a n : ℤ) = A074536 n

theorem P4230930682588145782.correct : P4230930682588145782.Spec := by
  intro n
  simp only [A074536]

end A074536

/-! ## A074536.P17020694892295693407

`record[A005418(n+2)+(-3)^n]`
-/

namespace A074536.P17020694892295693407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 2) + (-3) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074536.P17020694892295693407

namespace A074536

/-- `record[A005418(n+2)+(-3)^n]` -/
def P17020694892295693407.Spec : Prop :=
  ∀ n, P17020694892295693407.a n = A074536 n

end A074536

/-! ## A074536.P4144542702765471286

`abs(A074570(n)-A248217(n))`
-/

namespace A074536.P4144542702765471286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074570 n - A248217 n|

end

end A074536.P4144542702765471286

namespace A074536

/-- `abs(A074570(n)-A248217(n))` -/
def P4144542702765471286.Spec : Prop :=
  ∀ n, P4144542702765471286.a n = A074536 n

end A074536

/-! ## A074536.P13785566074604248910

`xor(1, A074545(n)-A155628(n))`
-/

namespace A074536.P13785566074604248910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A074545 n - A155628 n)

end

end A074536.P13785566074604248910

namespace A074536

/-- `xor(1, A074545(n)-A155628(n))` -/
def P13785566074604248910.Spec : Prop :=
  ∀ n, P13785566074604248910.a n = A074536 n

end A074536

/-! ## A074536.P901838226609754244

`floor(A074614(n)+sqrt(A052539(n)))`
-/

namespace A074536.P901838226609754244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A074614 n : ℝ) + Real.sqrt (A052539 n : ℝ)⌋

end

end A074536.P901838226609754244

namespace A074536

/-- `floor(A074614(n)+sqrt(A052539(n)))` -/
def P901838226609754244.Spec : Prop :=
  ∀ n, P901838226609754244.a n = A074536 n

end A074536

/-! ## A074536.P8217260608306183991

`(A074570(n)-A248217(n))*A007318(C(n, 2))`
-/

namespace A074536.P8217260608306183991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074570 n - A248217 n) * A007318 (Nat.choose n 2)

end

end A074536.P8217260608306183991

namespace A074536

/-- `(A074570(n)-A248217(n))*A007318(C(n, 2))` -/
def P8217260608306183991.Spec : Prop :=
  ∀ n, P8217260608306183991.a n = A074536 n

end A074536

/-! ## A074536.P6173395336444621373

`(A001550(2*n)+A000225(n))/A033999(n)²`
-/

namespace A074536.P6173395336444621373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001550 (2 * n) + A000225 n : ℚ) / (A033999 n ^ 2 : ℚ)

end

end A074536.P6173395336444621373

namespace A074536

/-- `(A001550(2*n)+A000225(n))/A033999(n)²` -/
def P6173395336444621373.Spec : Prop :=
  ∀ n, P6173395336444621373.a n = (A074536 n : ℚ)

end A074536

/-! ## A074536.P17761989263446231324

`(A074570(n)-A248217(n))*A007318(∑[n+2])`
-/

namespace A074536.P17761989263446231324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074570 n - A248217 n) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074536.P17761989263446231324

namespace A074536

/-- `(A074570(n)-A248217(n))*A007318(∑[n+2])` -/
def P17761989263446231324.Spec : Prop :=
  ∀ n, P17761989263446231324.a n = A074536 n

end A074536

/-! ## A074536.P13670659734216492126

`(A001550(2*n)+A000225(n))/A209615(n+1)²`
-/

namespace A074536.P13670659734216492126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001550 (2 * n) + A000225 n : ℚ) / (A209615 (n + 1) ^ 2 : ℚ)

end

end A074536.P13670659734216492126

namespace A074536

/-- `(A001550(2*n)+A000225(n))/A209615(n+1)²` -/
def P13670659734216492126.Spec : Prop :=
  ∀ n, P13670659734216492126.a n = (A074536 n : ℚ)

end A074536

/-! ## A074536.P2331451072138534318

`(A074570(n)-A248217(n))*A135517(A268584(n))`
-/

namespace A074536.P2331451072138534318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074570 n - A248217 n) * A135517 (A268584 n).toNat

end

end A074536.P2331451072138534318

namespace A074536

/-- `(A074570(n)-A248217(n))*A135517(A268584(n))` -/
def P2331451072138534318.Spec : Prop :=
  ∀ n, P2331451072138534318.a n = A074536 n

end A074536

/-!
# A074537: a(n) = 2^n + 5^n + 6^n.

The programs for A074537, the canonical program `A074537.P9486387776354827771` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074537 has offset 0).

The definition of A074537 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+5^n+6^n` (program `A074537.P9486387776354827771`, by `A074537.P9486387776354827771.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074537.P9486387776354827771

`2^n+5^n+6^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074537

/-- `2^n+5^n+6^n` -/
def P9486387776354827771.Spec : Prop :=
  ∀ n, (P9486387776354827771.a n : ℤ) = A074537 n

theorem P9486387776354827771.correct : P9486387776354827771.Spec := by
  intro n
  simp only [A074537]

end A074537

/-! ## A074537.P296720137472404523

`abs(A001047(n)-A001579(n))`
-/

namespace A074537.P296720137472404523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001047 n - A001579 n|

end

end A074537.P296720137472404523

namespace A074537

/-- `abs(A001047(n)-A001579(n))` -/
def P296720137472404523.Spec : Prop :=
  ∀ n, P296720137472404523.a n = A074537 n

end A074537

/-! ## A074537.P10731480997429110048

`or(1, A155633(n)+A000079(n))`
-/

namespace A074537.P10731480997429110048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A155633 n + A000079 n)

end

end A074537.P10731480997429110048

namespace A074537

/-- `or(1, A155633(n)+A000079(n))` -/
def P10731480997429110048.Spec : Prop :=
  ∀ n, P10731480997429110048.a n = A074537 n

end A074537

/-! ## A074537.P10237333469363841356

`xor(1, A074615(n)+A000225(n))`
-/

namespace A074537.P10237333469363841356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A074615 n + A000225 n)

end

end A074537.P10237333469363841356

namespace A074537

/-- `xor(1, A074615(n)+A000225(n))` -/
def P10237333469363841356.Spec : Prop :=
  ∀ n, P10237333469363841356.a n = A074537 n

end A074537

/-! ## A074537.P4427216544290526384

`Δ[A000051(n)+A003464(n)+A003463(n)]`
-/

namespace A074537.P4427216544290526384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + (A003464 n + A003463 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074537.P4427216544290526384

namespace A074537

/-- `Δ[A000051(n)+A003464(n)+A003463(n)]` -/
def P4427216544290526384.Spec : Prop :=
  ∀ n, P4427216544290526384.a n = A074537 n

end A074537

/-! ## A074537.P15324432883287560798

`Δ[A000079(n)+A003464(n)+A003463(n)]`
-/

namespace A074537.P15324432883287560798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A003464 n + A003463 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074537.P15324432883287560798

namespace A074537

/-- `Δ[A000079(n)+A003464(n)+A003463(n)]` -/
def P15324432883287560798.Spec : Prop :=
  ∀ n, P15324432883287560798.a n = A074537 n

end A074537

/-! ## A074537.P5953249422212660838

`abs(A016169(n)-A074538(n))`
-/

namespace A074537.P5953249422212660838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016169 n - A074538 n|

end

end A074537.P5953249422212660838

namespace A074537

/-- `abs(A016169(n)-A074538(n))` -/
def P5953249422212660838.Spec : Prop :=
  ∀ n, P5953249422212660838.a n = A074537 n

end A074537

/-!
# A074538: a(n) = 2^n + 5^n + 7^n.

The programs for A074538, the canonical program `A074538.P8256862648058174290` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074538 has offset 0).

The definition of A074538 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+5^n+7^n` (program `A074538.P8256862648058174290`, by `A074538.P8256862648058174290.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074538.P8256862648058174290

`2^n+5^n+7^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074538

/-- `2^n+5^n+7^n` -/
def P8256862648058174290.Spec : Prop :=
  ∀ n, (P8256862648058174290.a n : ℤ) = A074538 n

theorem P8256862648058174290.correct : P8256862648058174290.Spec := by
  intro n
  simp only [A074538]

end A074538

/-! ## A074538.P16354899125316013030

`abs(3^n-A135168(n))`
-/

namespace A074538.P16354899125316013030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 ^ n : ℤ) - A135168 n|

end

end A074538.P16354899125316013030

namespace A074538

/-- `abs(3^n-A135168(n))` -/
def P16354899125316013030.Spec : Prop :=
  ∀ n, P16354899125316013030.a n = A074538 n

end A074538

/-! ## A074538.P13157742426679371772

`abs(A001047(n)-A074552(n))`
-/

namespace A074538.P13157742426679371772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001047 n - A074552 n|

end

end A074538.P13157742426679371772

namespace A074538

/-- `abs(A001047(n)-A074552(n))` -/
def P13157742426679371772.Spec : Prop :=
  ∀ n, P13157742426679371772.a n = A074538 n

end A074538

/-! ## A074538.P13942118560589817719

`abs(A135168(n)-A000244(n))`
-/

namespace A074538.P13942118560589817719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A135168 n - A000244 n|

end

end A074538.P13942118560589817719

namespace A074538

/-- `abs(A135168(n)-A000244(n))` -/
def P13942118560589817719.Spec : Prop :=
  ∀ n, P13942118560589817719.a n = A074538 n

end A074538

/-! ## A074538.P5093843655555854977

`abs(A074501(n)+A000420(n)-1)`
-/

namespace A074538.P5093843655555854977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074501 n + (A000420 n - 1)|

end

end A074538.P5093843655555854977

namespace A074538

/-- `abs(A074501(n)+A000420(n)-1)` -/
def P5093843655555854977.Spec : Prop :=
  ∀ n, P5093843655555854977.a n = A074538 n

end A074538

/-! ## A074538.P16335144853969100967

`abs(A003063(n+1)-A135167(n))`
-/

namespace A074538.P16335144853969100967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003063 (n + 1) - A135167 n|

end

end A074538.P16335144853969100967

namespace A074538

/-- `abs(A003063(n+1)-A135167(n))` -/
def P16335144853969100967.Spec : Prop :=
  ∀ n, P16335144853969100967.a n = A074538 n

end A074538

/-! ## A074538.P13315350115377047686

`abs(A000079(n)-(A001047(n)-A135167(n)))`
-/

namespace A074538.P13315350115377047686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - (A001047 n - A135167 n)|

end

end A074538.P13315350115377047686

namespace A074538

/-- `abs(A000079(n)-(A001047(n)-A135167(n)))` -/
def P13315350115377047686.Spec : Prop :=
  ∀ n, P13315350115377047686.a n = A074538 n

end A074538

/-! ## A074538.P4520927365110981379

`Δ[A000079(n)+A023000(n)+A003463(n)]`
-/

namespace A074538.P4520927365110981379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A023000 n + A003463 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074538.P4520927365110981379

namespace A074538

/-- `Δ[A000079(n)+A023000(n)+A003463(n)]` -/
def P4520927365110981379.Spec : Prop :=
  ∀ n, P4520927365110981379.a n = A074538 n

end A074538

/-! ## A074538.P2884440891597739462

`(A135168(n)+A135166(n))/2`
-/

namespace A074538.P2884440891597739462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135168 n + A135166 n : ℚ) / 2

end

end A074538.P2884440891597739462

namespace A074538

/-- `(A135168(n)+A135166(n))/2` -/
def P2884440891597739462.Spec : Prop :=
  ∀ n, P2884440891597739462.a n = (A074538 n : ℚ)

end A074538

/-!
# A074539: a(n) = 2^n + 5^n + 8^n.

The programs for A074539, the canonical program `A074539.P7545329714654616348` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074539 has offset 0).

The definition of A074539 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+5^n+8^n` (program `A074539.P7545329714654616348`, by `A074539.P7545329714654616348.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074539.P7545329714654616348

`2^n+5^n+8^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074539

/-- `2^n+5^n+8^n` -/
def P7545329714654616348.Spec : Prop :=
  ∀ n, (P7545329714654616348.a n : ℤ) = A074539 n

theorem P7545329714654616348.correct : P7545329714654616348.Spec := by
  intro n
  simp only [A074539]

end A074539

/-! ## A074539.P17676544387506187959

`or(A001018(n), A074600(n))`
-/

namespace A074539.P17676544387506187959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001018 n) (A074600 n)

end

end A074539.P17676544387506187959

namespace A074539

/-- `or(A001018(n), A074600(n))` -/
def P17676544387506187959.Spec : Prop :=
  ∀ n, P17676544387506187959.a n = A074539 n

end A074539

/-! ## A074539.P3732607280069674517

`or(1, A155635(n)+A000079(n))`
-/

namespace A074539.P3732607280069674517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A155635 n + A000079 n)

end

end A074539.P3732607280069674517

namespace A074539

/-- `or(1, A155635(n)+A000079(n))` -/
def P3732607280069674517.Spec : Prop :=
  ∀ n, P3732607280069674517.a n = A074539 n

end A074539

/-! ## A074539.P3058703245362674766

`xor(A062395(n)-1, A074600(n))`
-/

namespace A074539.P3058703245362674766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A062395 n - 1) (A074600 n)

end

end A074539.P3058703245362674766

namespace A074539

/-- `xor(A062395(n)-1, A074600(n))` -/
def P3058703245362674766.Spec : Prop :=
  ∀ n, P3058703245362674766.a n = A074539 n

end A074539

/-! ## A074539.P15201848333594842398

`xor(1, A074542(n)-A155639(n))`
-/

namespace A074539.P15201848333594842398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A074542 n - A155639 n)

end

end A074539.P15201848333594842398

namespace A074539

/-- `xor(1, A074542(n)-A155639(n))` -/
def P15201848333594842398.Spec : Prop :=
  ∀ n, P15201848333594842398.a n = A074539 n

end A074539

/-! ## A074539.P8162111868206758589

`or(A000079(3*n), A074600(n))`
-/

namespace A074539.P8162111868206758589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000079 (3 * n)) (A074600 n)

end

end A074539.P8162111868206758589

namespace A074539

/-- `or(A000079(3*n), A074600(n))` -/
def P8162111868206758589.Spec : Prop :=
  ∀ n, P8162111868206758589.a n = A074539 n

end A074539

/-! ## A074539.P5270842510054037045

`or(A000051(3*n), A155588(n))`
-/

namespace A074539.P5270842510054037045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000051 (3 * n)) (A155588 n)

end

end A074539.P5270842510054037045

namespace A074539

/-- `or(A000051(3*n), A155588(n))` -/
def P5270842510054037045.Spec : Prop :=
  ∀ n, P5270842510054037045.a n = A074539 n

end A074539

/-! ## A074539.P7096037197238157079

`Δ[2^n+A047850(n)+A023001(n)]`
-/

namespace A074539.P7096037197238157079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + (A047850 n + A023001 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074539.P7096037197238157079

namespace A074539

/-- `Δ[2^n+A047850(n)+A023001(n)]` -/
def P7096037197238157079.Spec : Prop :=
  ∀ n, P7096037197238157079.a n = A074539 n

end A074539

/-! ## A074539.P6851164534450427204

`or(A000051(A008486(n)), A074600(n))`
-/

namespace A074539.P6851164534450427204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000051 (A008486 n).toNat) (A074600 n)

end

end A074539.P6851164534450427204

namespace A074539

/-- `or(A000051(A008486(n)), A074600(n))` -/
def P6851164534450427204.Spec : Prop :=
  ∀ n, P6851164534450427204.a n = A074539 n

end A074539

/-! ## A074539.P11795204884536691824

`Δ[A000079(n)+A047853(n)+A003463(n)]`
-/

namespace A074539.P11795204884536691824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A047853 n + A003463 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074539.P11795204884536691824

namespace A074539

/-- `Δ[A000079(n)+A047853(n)+A003463(n)]` -/
def P11795204884536691824.Spec : Prop :=
  ∀ n, P11795204884536691824.a n = A074539 n

end A074539

/-! ## A074539.P15498909857910022001

`or(A000051(A004273(n)+1+n), A074600(n))`
-/

namespace A074539.P15498909857910022001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000051 (A004273 n + 1 + (n : ℤ)).toNat) (A074600 n)

end

end A074539.P15498909857910022001

namespace A074539

/-- `or(A000051(A004273(n)+1+n), A074600(n))` -/
def P15498909857910022001.Spec : Prop :=
  ∀ n, P15498909857910022001.a n = A074539 n

end A074539

/-!
# A074540: a(n) = 2^n + 5^n + 9^n.

The programs for A074540, the canonical program `A074540.P18371580203188458495` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074540 has offset 0).

The definition of A074540 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+5^n+9^n` (program `A074540.P18371580203188458495`, by `A074540.P18371580203188458495.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074540.P18371580203188458495

`2^n+5^n+9^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074540

/-- `2^n+5^n+9^n` -/
def P18371580203188458495.Spec : Prop :=
  ∀ n, (P18371580203188458495.a n : ℤ) = A074540 n

theorem P18371580203188458495.correct : P18371580203188458495.Spec := by
  intro n
  simp only [A074540]

end A074540

/-! ## A074540.P3788420096763572429

`abs(A001047(n)-A074554(n))`
-/

namespace A074540.P3788420096763572429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001047 n - A074554 n|

end

end A074540.P3788420096763572429

namespace A074540

/-- `abs(A001047(n)-A074554(n))` -/
def P3788420096763572429.Spec : Prop :=
  ∀ n, P3788420096763572429.a n = A074540 n

end A074540

/-! ## A074540.P13427243954939010111

`abs(A074559(n)-A135163(n))`
-/

namespace A074540.P13427243954939010111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074559 n - A135163 n|

end

end A074540.P13427243954939010111

namespace A074540

/-- `abs(A074559(n)-A135163(n))` -/
def P13427243954939010111.Spec : Prop :=
  ∀ n, P13427243954939010111.a n = A074540 n

end A074540

/-! ## A074540.P3119917971537742694

`Δ[2^n+A003463(n)+A002452(n)]`
-/

namespace A074540.P3119917971537742694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + (A003463 n + A002452 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074540.P3119917971537742694

namespace A074540

/-- `Δ[2^n+A003463(n)+A002452(n)]` -/
def P3119917971537742694.Spec : Prop :=
  ∀ n, P3119917971537742694.a n = A074540 n

end A074540

/-! ## A074540.P3846735444628575969

`lcm(A074559(n)-A135163(n), A040001(n))`
-/

namespace A074540.P3846735444628575969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A074559 n - A135163 n) (A040001 n)

end

end A074540.P3846735444628575969

namespace A074540

/-- `lcm(A074559(n)-A135163(n), A040001(n))` -/
def P3846735444628575969.Spec : Prop :=
  ∀ n, (P3846735444628575969.a n : ℤ) = A074540 n

end A074540

/-! ## A074540.P8010323246535255682

`Δ[A000051(n)+A003463(n)+A191681(n)/4]`
-/

namespace A074540.P8010323246535255682
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000051 n : ℚ) + ((A003463 n : ℚ) + (A191681 n : ℚ) / 4)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074540.P8010323246535255682

namespace A074540

/-- `Δ[A000051(n)+A003463(n)+A191681(n)/4]` -/
def P8010323246535255682.Spec : Prop :=
  ∀ n, P8010323246535255682.a n = (A074540 n : ℚ)

end A074540

/-! ## A074540.P6974768767982258583

`Δ[A052548(n)+A003463(n)+A191681(n)/4]`
-/

namespace A074540.P6974768767982258583
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052548 n : ℚ) + ((A003463 n : ℚ) + (A191681 n : ℚ) / 4)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074540.P6974768767982258583

namespace A074540

/-- `Δ[A052548(n)+A003463(n)+A191681(n)/4]` -/
def P6974768767982258583.Spec : Prop :=
  ∀ n, P6974768767982258583.a n = (A074540 n : ℚ)

end A074540

/-!
# A074541: a(n) = 2^n + 6^n + 7^n.

The programs for A074541, the canonical program `A074541.P9777305932660839317` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074541 has offset 0).

The definition of A074541 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+6^n+7^n` (program `A074541.P9777305932660839317`, by `A074541.P9777305932660839317.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074541.P9777305932660839317

`2^n+6^n+7^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074541

/-- `2^n+6^n+7^n` -/
def P9777305932660839317.Spec : Prop :=
  ∀ n, (P9777305932660839317.a n : ℤ) = A074541 n

theorem P9777305932660839317.correct : P9777305932660839317.Spec := by
  intro n
  simp only [A074541]

end A074541

/-! ## A074541.P16245007405618798732

`abs(A074619(n)+Δ[2^n])`
-/

namespace A074541.P16245007405618798732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074619 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))|

end

end A074541.P16245007405618798732

namespace A074541

/-- `abs(A074619(n)+Δ[2^n])` -/
def P16245007405618798732.Spec : Prop :=
  ∀ n, P16245007405618798732.a n = A074541 n

end A074541

/-! ## A074541.P4170409984623195158

`abs(A005057(n)-A074571(n))`
-/

namespace A074541.P4170409984623195158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005057 n - A074571 n|

end

end A074541.P4170409984623195158

namespace A074541

/-- `abs(A005057(n)-A074571(n))` -/
def P4170409984623195158.Spec : Prop :=
  ∀ n, P4170409984623195158.a n = A074541 n

end A074541

/-! ## A074541.P8588993873885412254

`or(1, A074619(n)+A000079(n))`
-/

namespace A074541.P8588993873885412254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A074619 n + A000079 n)

end

end A074541.P8588993873885412254

namespace A074541

/-- `or(1, A074619(n)+A000079(n))` -/
def P8588993873885412254.Spec : Prop :=
  ∀ n, P8588993873885412254.a n = A074541 n

end A074541

/-! ## A074541.P8070022185643467991

`or(A074619(n)+2^n, A000007(n))`
-/

namespace A074541.P8070022185643467991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A074619 n + (2 ^ n : ℤ)) (A000007 n)

end

end A074541.P8070022185643467991

namespace A074541

/-- `or(A074619(n)+2^n, A000007(n))` -/
def P8070022185643467991.Spec : Prop :=
  ∀ n, P8070022185643467991.a n = A074541 n

end A074541

/-! ## A074541.P18360117278485356528

`or(A074619(n)+2^n, A057427(n))`
-/

namespace A074541.P18360117278485356528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A074619 n + (2 ^ n : ℤ)) (A057427 n)

end

end A074541.P18360117278485356528

namespace A074541

/-- `or(A074619(n)+2^n, A057427(n))` -/
def P18360117278485356528.Spec : Prop :=
  ∀ n, P18360117278485356528.a n = A074541 n

end A074541

/-! ## A074541.P16582029744591623890

`(A074619(n)+A000079(n))*A057427(n+1)`
-/

namespace A074541.P16582029744591623890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074619 n + A000079 n) * A057427 (n + 1)

end

end A074541.P16582029744591623890

namespace A074541

/-- `(A074619(n)+A000079(n))*A057427(n+1)` -/
def P16582029744591623890.Spec : Prop :=
  ∀ n, P16582029744591623890.a n = A074541 n

end A074541

/-! ## A074541.P9205831583464791505

`(A074619(n)+A000079(n))*A014963(A053743(n))`
-/

namespace A074541.P9205831583464791505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074619 n + A000079 n) * A014963 (A053743 n).toNat

end

end A074541.P9205831583464791505

namespace A074541

/-- `(A074619(n)+A000079(n))*A014963(A053743(n))` -/
def P9205831583464791505.Spec : Prop :=
  ∀ n, P9205831583464791505.a n = A074541 n

end A074541

/-!
# A074542: a(n) = 2^n + 6^n + 8^n.

The programs for A074542, the canonical program `A074542.P9016030283820308541` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074542 has offset 0).

The definition of A074542 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+6^n+8^n` (program `A074542.P9016030283820308541`, by `A074542.P9016030283820308541.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074542.P9016030283820308541

`2^n+6^n+8^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074542

/-- `2^n+6^n+8^n` -/
def P9016030283820308541.Spec : Prop :=
  ∀ n, (P9016030283820308541.a n : ℤ) = A074542 n

theorem P9016030283820308541.correct : P9016030283820308541.Spec := by
  intro n
  simp only [A074542]

end A074542

/-! ## A074542.P346880018435352897

`2^n*A074506(n)`
-/

namespace A074542.P346880018435352897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A074506 n

end

end A074542.P346880018435352897

namespace A074542

/-- `2^n*A074506(n)` -/
def P346880018435352897.Spec : Prop :=
  ∀ n, P346880018435352897.a n = A074542 n

end A074542

/-! ## A074542.P15491874816451321410

`(A074605(n)+1)*2^n`
-/

namespace A074542.P15491874816451321410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074605 n + 1) * (2 ^ n : ℤ)

end

end A074542.P15491874816451321410

namespace A074542

/-- `(A074605(n)+1)*2^n` -/
def P15491874816451321410.Spec : Prop :=
  ∀ n, P15491874816451321410.a n = A074542 n

end A074542

/-! ## A074542.P13330956430650767238

`(Δ[A085282(n)]+1)*A000079(n)`
-/

namespace A074542.P13330956430650767238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085282 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) * A000079 n

end

end A074542.P13330956430650767238

namespace A074542

/-- `(Δ[A085282(n)]+1)*A000079(n)` -/
def P13330956430650767238.Spec : Prop :=
  ∀ n, P13330956430650767238.a n = A074542 n

end A074542

/-! ## A074542.P4367434933794284449

`A074506(n)*A099627(A000217(n))`
-/

namespace A074542.P4367434933794284449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074506 n * A099627 (A000217 n).toNat

end

end A074542.P4367434933794284449

namespace A074542

/-- `A074506(n)*A099627(A000217(n))` -/
def P4367434933794284449.Spec : Prop :=
  ∀ n, P4367434933794284449.a n = A074542 n

end A074542

/-! ## A074542.P16138433511126611748

`(A001551(n)-A000079(n))*A000079(n)`
-/

namespace A074542.P16138433511126611748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001551 n - A000079 n) * A000079 n

end

end A074542.P16138433511126611748

namespace A074542

/-- `(A001551(n)-A000079(n))*A000079(n)` -/
def P16138433511126611748.Spec : Prop :=
  ∀ n, P16138433511126611748.a n = A074542 n

end A074542

/-! ## A074542.P13179540682140757073

`(A034472(n)+A000079(n)²)*A000079(n)`
-/

namespace A074542.P13179540682140757073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A034472 n + A000079 n ^ 2) * A000079 n

end

end A074542.P13179540682140757073

namespace A074542

/-- `(A034472(n)+A000079(n)²)*A000079(n)` -/
def P13179540682140757073.Spec : Prop :=
  ∀ n, P13179540682140757073.a n = A074542 n

end A074542

/-! ## A074542.P11568668948849084972

`(A087433(n+1)+A047849(n))*A000079(n)`
-/

namespace A074542.P11568668948849084972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A087433 (n + 1) + A047849 n) * A000079 n

end

end A074542.P11568668948849084972

namespace A074542

/-- `(A087433(n+1)+A047849(n))*A000079(n)` -/
def P11568668948849084972.Spec : Prop :=
  ∀ n, P11568668948849084972.a n = A074542 n

end A074542

/-! ## A074542.P2312536804243507204

`(A094388(n+1)+A011782(n+1)²)*A011782(n+1)`
-/

namespace A074542.P2312536804243507204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094388 (n + 1) + A011782 (n + 1) ^ 2) * A011782 (n + 1)

end

end A074542.P2312536804243507204

namespace A074542

/-- `(A094388(n+1)+A011782(n+1)²)*A011782(n+1)` -/
def P2312536804243507204.Spec : Prop :=
  ∀ n, P2312536804243507204.a n = A074542 n

end A074542

/-! ## A074542.P410188115397742142

`(A094388(n+1)+A011782(2*n+1))*A011782(n+1)`
-/

namespace A074542.P410188115397742142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094388 (n + 1) + A011782 (2 * n + 1)) * A011782 (n + 1)

end

end A074542.P410188115397742142

namespace A074542

/-- `(A094388(n+1)+A011782(2*n+1))*A011782(n+1)` -/
def P410188115397742142.Spec : Prop :=
  ∀ n, P410188115397742142.a n = A074542 n

end A074542

/-!
# A074543: a(n) = 2^n + 6^n + 9^n.

The programs for A074543, the canonical program `A074543.P15082951967388589342` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074543 has offset 0).

The definition of A074543 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+6^n+9^n` (program `A074543.P15082951967388589342`, by `A074543.P15082951967388589342.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074543.P15082951967388589342

`2^n+6^n+9^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074543

/-- `2^n+6^n+9^n` -/
def P15082951967388589342.Spec : Prop :=
  ∀ n, (P15082951967388589342.a n : ℤ) = A074543 n

theorem P15082951967388589342.correct : P15082951967388589342.Spec := by
  intro n
  simp only [A074543]

end A074543

/-! ## A074543.P7277959433797766731

`or(1, A155593(n)+A062394(n))`
-/

namespace A074543.P7277959433797766731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A155593 n + A062394 n)

end

end A074543.P7277959433797766731

namespace A074543

/-- `or(1, A155593(n)+A062394(n))` -/
def P7277959433797766731.Spec : Prop :=
  ∀ n, P7277959433797766731.a n = A074543 n

end A074543

/-! ## A074543.P7598172413326123571

`xor(1, A074621(n)+A000225(n))`
-/

namespace A074543.P7598172413326123571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A074621 n + A000225 n)

end

end A074543.P7598172413326123571

namespace A074543

/-- `xor(1, A074621(n)+A000225(n))` -/
def P7598172413326123571.Spec : Prop :=
  ∀ n, P7598172413326123571.a n = A074543 n

end A074543

/-! ## A074543.P11020296317451779979

`(A155593(n)+A062394(n))*char[A004247(n)]`
-/

namespace A074543.P11020296317451779979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155593 n + A062394 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A074543.P11020296317451779979

namespace A074543

/-- `(A155593(n)+A062394(n))*char[A004247(n)]` -/
def P11020296317451779979.Spec : Prop :=
  ∀ n, P11020296317451779979.a n = A074543 n

end A074543

/-! ## A074543.P17070283129262075552

`(A155593(n)+A062394(n))%A162009(n+1)`
-/

namespace A074543.P17070283129262075552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155593 n + A062394 n) (A162009 (n + 1))

end

end A074543.P17070283129262075552

namespace A074543

/-- `(A155593(n)+A062394(n))%A162009(n+1)` -/
def P17070283129262075552.Spec : Prop :=
  ∀ n, P17070283129262075552.a n = A074543 n

end A074543

/-!
# A074544: a(n) = 2^n + 7^n + 8^n.

The programs for A074544, the canonical program `A074544.P6771952476734506949` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074544 has offset 0).

The definition of A074544 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+7^n+8^n` (program `A074544.P6771952476734506949`, by `A074544.P6771952476734506949.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074544.P6771952476734506949

`2^n+7^n+8^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074544

/-- `2^n+7^n+8^n` -/
def P6771952476734506949.Spec : Prop :=
  ∀ n, (P6771952476734506949.a n : ℤ) = A074544 n

theorem P6771952476734506949.correct : P6771952476734506949.Spec := by
  intro n
  simp only [A074544]

end A074544

/-! ## A074544.P9163191315489436240

`or(1, A074622(n)+2^n)`
-/

namespace A074544.P9163191315489436240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A074622 n + (2 ^ n : ℤ))

end

end A074544.P9163191315489436240

namespace A074544

/-- `or(1, A074622(n)+2^n)` -/
def P9163191315489436240.Spec : Prop :=
  ∀ n, P9163191315489436240.a n = A074544 n

end A074544

/-! ## A074544.P8616151935743929545

`xor(1, A155655(n)+2^n)`
-/

namespace A074544.P8616151935743929545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A155655 n + (2 ^ n : ℤ))

end

end A074544.P8616151935743929545

namespace A074544

/-- `xor(1, A155655(n)+2^n)` -/
def P8616151935743929545.Spec : Prop :=
  ∀ n, P8616151935743929545.a n = A074544 n

end A074544

/-! ## A074544.P6765134891145213700

`abs(A001047(n)-A074558(n))`
-/

namespace A074544.P6765134891145213700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001047 n - A074558 n|

end

end A074544.P6765134891145213700

namespace A074544

/-- `abs(A001047(n)-A074558(n))` -/
def P6765134891145213700.Spec : Prop :=
  ∀ n, P6765134891145213700.a n = A074544 n

end A074544

/-! ## A074544.P15536265408686563996

`or(1, A155590(n)+A062395(n))`
-/

namespace A074544.P15536265408686563996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A155590 n + A062395 n)

end

end A074544.P15536265408686563996

namespace A074544

/-- `or(1, A155590(n)+A062395(n))` -/
def P15536265408686563996.Spec : Prop :=
  ∀ n, P15536265408686563996.a n = A074544 n

end A074544

/-! ## A074544.P17297296181053447999

`abs(2^n-(A001553(n)-A001555(n)))`
-/

namespace A074544.P17297296181053447999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - (A001553 n - A001555 n)|

end

end A074544.P17297296181053447999

namespace A074544

/-- `abs(2^n-(A001553(n)-A001555(n)))` -/
def P17297296181053447999.Spec : Prop :=
  ∀ n, P17297296181053447999.a n = A074544 n

end A074544

/-! ## A074544.P4820901188360566429

`abs(A000079(n)-(A000244(n)-A074558(n)))`
-/

namespace A074544.P4820901188360566429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - (A000244 n - A074558 n)|

end

end A074544.P4820901188360566429

namespace A074544

/-- `abs(A000079(n)-(A000244(n)-A074558(n)))` -/
def P4820901188360566429.Spec : Prop :=
  ∀ n, P4820901188360566429.a n = A074544 n

end A074544

/-!
# A074545: a(n) = 2^n + 7^n + 9^n.

The programs for A074545, the canonical program `A074545.P2508276220111533207` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074545 has offset 0).

The definition of A074545 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+7^n+9^n` (program `A074545.P2508276220111533207`, by `A074545.P2508276220111533207.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074545.P2508276220111533207

`2^n+7^n+9^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074545

/-- `2^n+7^n+9^n` -/
def P2508276220111533207.Spec : Prop :=
  ∀ n, (P2508276220111533207.a n : ℤ) = A074545 n

theorem P2508276220111533207.correct : P2508276220111533207.Spec := by
  intro n
  simp only [A074545]

end A074545

/-! ## A074545.P10253555448951244753

`abs(A001047(n)-A074559(n))`
-/

namespace A074545.P10253555448951244753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001047 n - A074559 n|

end

end A074545.P10253555448951244753

namespace A074545

/-- `abs(A001047(n)-A074559(n))` -/
def P10253555448951244753.Spec : Prop :=
  ∀ n, P10253555448951244753.a n = A074545 n

end A074545

/-! ## A074545.P9983238487682495483

`abs(A020522(n)-A074569(n))`
-/

namespace A074545.P9983238487682495483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A020522 n - A074569 n|

end

end A074545.P9983238487682495483

namespace A074545

/-- `abs(A020522(n)-A074569(n))` -/
def P9983238487682495483.Spec : Prop :=
  ∀ n, P9983238487682495483.a n = A074545 n

end A074545

/-! ## A074545.P9521986214216177172

`∑[A166444(n+1)+A055275(n)+A055272(n)]`
-/

namespace A074545.P9521986214216177172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (n + 1) + (A055275 n + A055272 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074545.P9521986214216177172

namespace A074545

/-- `∑[A166444(n+1)+A055275(n)+A055272(n)]` -/
def P9521986214216177172.Spec : Prop :=
  ∀ n, P9521986214216177172.a n = A074545 n

end A074545

/-!
# A074546: a(n) = 2^n + 8^n + 9^n.

The programs for A074546, the canonical program `A074546.P303920784059392654` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074546 has offset 0).

The definition of A074546 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+8^n+9^n` (program `A074546.P303920784059392654`, by `A074546.P303920784059392654.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074546.P303920784059392654

`2^n+8^n+9^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074546

/-- `2^n+8^n+9^n` -/
def P303920784059392654.Spec : Prop :=
  ∀ n, (P303920784059392654.a n : ℤ) = A074546 n

theorem P303920784059392654.correct : P303920784059392654.Spec := by
  intro n
  simp only [A074546]

end A074546

/-! ## A074546.P2158811517548041268

`abs(A001047(n)-A074560(n))`
-/

namespace A074546.P2158811517548041268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001047 n - A074560 n|

end

end A074546.P2158811517548041268

namespace A074546

/-- `abs(A001047(n)-A074560(n))` -/
def P2158811517548041268.Spec : Prop :=
  ∀ n, P2158811517548041268.a n = A074546 n

end A074546

/-! ## A074546.P15957646335618946100

`or(1, A074624(n)+A000079(n))`
-/

namespace A074546.P15957646335618946100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A074624 n + A000079 n)

end

end A074546.P15957646335618946100

namespace A074546

/-- `or(1, A074624(n)+A000079(n))` -/
def P15957646335618946100.Spec : Prop :=
  ∀ n, P15957646335618946100.a n = A074546 n

end A074546

/-! ## A074546.P4228369392970494024

`or(1, A155663(n)+A000079(n))`
-/

namespace A074546.P4228369392970494024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A155663 n + A000079 n)

end

end A074546.P4228369392970494024

namespace A074546

/-- `or(1, A155663(n)+A000079(n))` -/
def P4228369392970494024.Spec : Prop :=
  ∀ n, P4228369392970494024.a n = A074546 n

end A074546

/-! ## A074546.P9217867472829083591

`xor(1, A074624(n)+A000225(n))`
-/

namespace A074546.P9217867472829083591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A074624 n + A000225 n)

end

end A074546.P9217867472829083591

namespace A074546

/-- `xor(1, A074624(n)+A000225(n))` -/
def P9217867472829083591.Spec : Prop :=
  ∀ n, P9217867472829083591.a n = A074546 n

end A074546

/-! ## A074546.P8173430299878720488

`abs(A074624(n)+Δ[A000051(n)])`
-/

namespace A074546.P8173430299878720488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074624 n + (f1 (n + 1) - f1 n)|

end

end A074546.P8173430299878720488

namespace A074546

/-- `abs(A074624(n)+Δ[A000051(n)])` -/
def P8173430299878720488.Spec : Prop :=
  ∀ n, P8173430299878720488.a n = A074546 n

end A074546

/-! ## A074546.P13175278354427800349

`(A074624(n)+A000079(n))*A007318(∑[n])`
-/

namespace A074546.P13175278354427800349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074624 n + A000079 n) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074546.P13175278354427800349

namespace A074546

/-- `(A074624(n)+A000079(n))*A007318(∑[n])` -/
def P13175278354427800349.Spec : Prop :=
  ∀ n, P13175278354427800349.a n = A074546 n

end A074546

/-!
# A074547: a(n) = 3^n + 4^n + 5^n.

The programs for A074547, the canonical program `A074547.P5874871662245387837` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074547 has offset 0).

The definition of A074547 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+4^n+5^n` (program `A074547.P5874871662245387837`, by `A074547.P5874871662245387837.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074547.P5874871662245387837

`3^n+4^n+5^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074547

/-- `3^n+4^n+5^n` -/
def P5874871662245387837.Spec : Prop :=
  ∀ n, (P5874871662245387837.a n : ℤ) = A074547 n

theorem P5874871662245387837.correct : P5874871662245387837.Spec := by
  intro n
  simp only [A074547]

end A074547

/-! ## A074547.P12467237303399294954

`abs(A000051(n)-A001552(n))`
-/

namespace A074547.P12467237303399294954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000051 n - A001552 n|

end

end A074547.P12467237303399294954

namespace A074547

/-- `abs(A000051(n)-A001552(n))` -/
def P12467237303399294954.Spec : Prop :=
  ∀ n, P12467237303399294954.a n = A074547 n

end A074547

/-! ## A074547.P2276359406333400671

`or(A074507(n)+A024036(n), A000038(n))`
-/

namespace A074547.P2276359406333400671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A074507 n + A024036 n) (A000038 n)

end

end A074547.P2276359406333400671

namespace A074547

/-- `or(A074507(n)+A024036(n), A000038(n))` -/
def P2276359406333400671.Spec : Prop :=
  ∀ n, P2276359406333400671.a n = A074547 n

end A074547

/-! ## A074547.P5435434658867015881

`(A074507(n)+A024036(n))*A057427(n+1)`
-/

namespace A074547.P5435434658867015881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074507 n + A024036 n) * A057427 (n + 1)

end

end A074547.P5435434658867015881

namespace A074547

/-- `(A074507(n)+A024036(n))*A057427(n+1)` -/
def P5435434658867015881.Spec : Prop :=
  ∀ n, P5435434658867015881.a n = A074547 n

end A074547

/-! ## A074547.P7184229740060524784

`(A074507(n)+A024036(n))*A060576(n+2)`
-/

namespace A074547.P7184229740060524784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074507 n + A024036 n) * A060576 (n + 2)

end

end A074547.P7184229740060524784

namespace A074547

/-- `(A074507(n)+A024036(n))*A060576(n+2)` -/
def P7184229740060524784.Spec : Prop :=
  ∀ n, P7184229740060524784.a n = A074547 n

end A074547

/-! ## A074547.P11937387184340862290

`(A074507(n)+A024036(n))*A033999(2*(n+1))`
-/

namespace A074547.P11937387184340862290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074507 n + A024036 n) * A033999 (2 * (n + 1))

end

end A074547.P11937387184340862290

namespace A074547

/-- `(A074507(n)+A024036(n))*A033999(2*(n+1))` -/
def P11937387184340862290.Spec : Prop :=
  ∀ n, P11937387184340862290.a n = A074547 n

end A074547

/-! ## A074547.P565681153116016948

`(A074507(n)+A024036(n))*A093178(2*(n+1))`
-/

namespace A074547.P565681153116016948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074507 n + A024036 n) * A093178 (2 * (n + 1))

end

end A074547.P565681153116016948

namespace A074547

/-- `(A074507(n)+A024036(n))*A093178(2*(n+1))` -/
def P565681153116016948.Spec : Prop :=
  ∀ n, P565681153116016948.a n = A074547 n

end A074547

/-! ## A074547.P13049381656180880411

`Δ[A036557(2*n+1)+A003463(n)]`
-/

namespace A074547.P13049381656180880411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036557 (2 * n + 1) + A003463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074547.P13049381656180880411

namespace A074547

/-- `Δ[A036557(2*n+1)+A003463(n)]` -/
def P13049381656180880411.Spec : Prop :=
  ∀ n, P13049381656180880411.a n = A074547 n

end A074547

/-! ## A074547.P11228645039190195629

`Δ[A002450(n)+A007051(n)+A003463(n)]`
-/

namespace A074547.P11228645039190195629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n + (A007051 n + A003463 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074547.P11228645039190195629

namespace A074547

/-- `Δ[A002450(n)+A007051(n)+A003463(n)]` -/
def P11228645039190195629.Spec : Prop :=
  ∀ n, P11228645039190195629.a n = A074547 n

end A074547

/-! ## A074547.P10329400414024525466

`(A074507(n)+A024036(n))*A007318(A000217(n))`
-/

namespace A074547.P10329400414024525466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074507 n + A024036 n) * A007318 (A000217 n).toNat

end

end A074547.P10329400414024525466

namespace A074547

/-- `(A074507(n)+A024036(n))*A007318(A000217(n))` -/
def P10329400414024525466.Spec : Prop :=
  ∀ n, P10329400414024525466.a n = A074547 n

end A074547

/-!
# A074548: a(n) = 3^n + 4^n + 6^n.

The programs for A074548, the canonical program `A074548.P14174617057539431764` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074548 has offset 0).

The definition of A074548 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+4^n+6^n` (program `A074548.P14174617057539431764`, by `A074548.P14174617057539431764.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074548.P14174617057539431764

`3^n+4^n+6^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074548

/-- `3^n+4^n+6^n` -/
def P14174617057539431764.Spec : Prop :=
  ∀ n, (P14174617057539431764.a n : ℤ) = A074548 n

theorem P14174617057539431764.correct : P14174617057539431764.Spec := by
  intro n
  simp only [A074548]

end A074548

/-! ## A074548.P6781217806791833126

`abs(A001553(n)-A074501(n))`
-/

namespace A074548.P6781217806791833126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001553 n - A074501 n|

end

end A074548.P6781217806791833126

namespace A074548

/-- `abs(A001553(n)-A074501(n))` -/
def P6781217806791833126.Spec : Prop :=
  ∀ n, P6781217806791833126.a n = A074548 n

end A074548

/-! ## A074548.P11145321126681518583

`or(1, A074605(n)+A024062(n))`
-/

namespace A074548.P11145321126681518583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A074605 n + A024062 n)

end

end A074548.P11145321126681518583

namespace A074548

/-- `or(1, A074605(n)+A024062(n))` -/
def P11145321126681518583.Spec : Prop :=
  ∀ n, P11145321126681518583.a n = A074548 n

end A074548

/-! ## A074548.P5422224789842467025

`or(1, A000051(n)*A005056(n))`
-/

namespace A074548.P5422224789842467025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000051 n * A005056 n)

end

end A074548.P5422224789842467025

namespace A074548

/-- `or(1, A000051(n)*A005056(n))` -/
def P5422224789842467025.Spec : Prop :=
  ∀ n, P5422224789842467025.a n = A074548 n

end A074548

/-! ## A074548.P11114938267009586918

`(A001553(n)-A074501(n))*char[A064680(n)]`
-/

namespace A074548.P11114938267009586918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001553 n - A074501 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A074548.P11114938267009586918

namespace A074548

/-- `(A001553(n)-A074501(n))*char[A064680(n)]` -/
def P11114938267009586918.Spec : Prop :=
  ∀ n, P11114938267009586918.a n = A074548 n

end A074548

/-! ## A074548.P11718024581241305598

`(A001553(n)-A074501(n))*A007318(∑[n]-n)`
-/

namespace A074548.P11718024581241305598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001553 n - A074501 n) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A074548.P11718024581241305598

namespace A074548

/-- `(A001553(n)-A074501(n))*A007318(∑[n]-n)` -/
def P11718024581241305598.Spec : Prop :=
  ∀ n, P11718024581241305598.a n = A074548 n

end A074548

/-! ## A074548.P15955777689863573809

`(A001553(n)-A074501(n))*A294934(2*n+1)`
-/

namespace A074548.P15955777689863573809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001553 n - A074501 n) * A294934 (2 * n + 1)

end

end A074548.P15955777689863573809

namespace A074548

/-- `(A001553(n)-A074501(n))*A294934(2*n+1)` -/
def P15955777689863573809.Spec : Prop :=
  ∀ n, P15955777689863573809.a n = A074548 n

end A074548

/-! ## A074548.P2273219798166814047

`(A001553(n)-A074501(n))*A318651(2*n+1)`
-/

namespace A074548.P2273219798166814047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001553 n - A074501 n) * A318651 (2 * n + 1)

end

end A074548.P2273219798166814047

namespace A074548

/-- `(A001553(n)-A074501(n))*A318651(2*n+1)` -/
def P2273219798166814047.Spec : Prop :=
  ∀ n, P2273219798166814047.a n = A074548 n

end A074548

/-! ## A074548.P17751632445839103710

`(A074506(n)+A024062(n))*A000041(gcd(n, n+1))`
-/

namespace A074548.P17751632445839103710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074506 n + A024062 n) * A000041 (Nat.gcd n (n + 1))

end

end A074548.P17751632445839103710

namespace A074548

/-- `(A074506(n)+A024062(n))*A000041(gcd(n, n+1))` -/
def P17751632445839103710.Spec : Prop :=
  ∀ n, P17751632445839103710.a n = A074548 n

end A074548

/-! ## A074548.P12007329117313003701

`(A001553(n)-A074501(n))*A003557(A006530(n+2))`
-/

namespace A074548.P12007329117313003701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001553 n - A074501 n) * A003557 (A006530 (n + 2)).toNat

end

end A074548.P12007329117313003701

namespace A074548

/-- `(A001553(n)-A074501(n))*A003557(A006530(n+2))` -/
def P12007329117313003701.Spec : Prop :=
  ∀ n, P12007329117313003701.a n = A074548 n

end A074548

/-! ## A074548.P3428533627352121299

`(A001553(n)-A074501(n))*A001065(A020639(n+2))`
-/

namespace A074548.P3428533627352121299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001553 n - A074501 n) * A001065 (A020639 (n + 2)).toNat

end

end A074548.P3428533627352121299

namespace A074548

/-- `(A001553(n)-A074501(n))*A001065(A020639(n+2))` -/
def P3428533627352121299.Spec : Prop :=
  ∀ n, P3428533627352121299.a n = A074548 n

end A074548

/-! ## A074548.P10746800679895475995

`(A001553(n)-A074501(n))*char[A025581(n)]`
-/

namespace A074548.P10746800679895475995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001553 n - A074501 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A074548.P10746800679895475995

namespace A074548

/-- `(A001553(n)-A074501(n))*char[A025581(n)]` -/
def P10746800679895475995.Spec : Prop :=
  ∀ n, P10746800679895475995.a n = A074548 n

end A074548

/-!
# A074549: a(n) = 3^n + 4^n + 7^n.

The programs for A074549, the canonical program `A074549.P15317035552885254422` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074549 has offset 0).

The definition of A074549 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+4^n+7^n` (program `A074549.P15317035552885254422`, by `A074549.P15317035552885254422.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074549.P15317035552885254422

`3^n+4^n+7^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074549

/-- `3^n+4^n+7^n` -/
def P15317035552885254422.Spec : Prop :=
  ∀ n, (P15317035552885254422.a n : ℤ) = A074549 n

theorem P15317035552885254422.correct : P15317035552885254422.Spec := by
  intro n
  simp only [A074549]

end A074549

/-! ## A074549.P13056597494194215666

`Δ[A085282(n)+A023000(n)]`
-/

namespace A074549.P13056597494194215666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085282 n + A023000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074549.P13056597494194215666

namespace A074549

/-- `Δ[A085282(n)+A023000(n)]` -/
def P13056597494194215666.Spec : Prop :=
  ∀ n, P13056597494194215666.a n = A074549 n

end A074549

/-! ## A074549.P1467263107230055365

`abs(A059409(n)-A074558(n))`
-/

namespace A074549.P1467263107230055365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A059409 n - A074558 n|

end

end A074549.P1467263107230055365

namespace A074549

/-- `abs(A059409(n)-A074558(n))` -/
def P1467263107230055365.Spec : Prop :=
  ∀ n, P1467263107230055365.a n = A074549 n

end A074549

/-! ## A074549.P5399658030582608627

`gcd(A059409(n)-A074558(n), A000038(n+1))`
-/

namespace A074549.P5399658030582608627
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059409 n - A074558 n) (A000038 (n + 1))

end

end A074549.P5399658030582608627

namespace A074549

/-- `gcd(A059409(n)-A074558(n), A000038(n+1))` -/
def P5399658030582608627.Spec : Prop :=
  ∀ n, (P5399658030582608627.a n : ℤ) = A074549 n

end A074549

/-! ## A074549.P1553972114209632479

`-((A059409(n)-A074558(n))%A225137(n+1))`
-/

namespace A074549.P1553972114209632479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A059409 n - A074558 n) (A225137 (n + 1))

end

end A074549.P1553972114209632479

namespace A074549

/-- `-((A059409(n)-A074558(n))%A225137(n+1))` -/
def P1553972114209632479.Spec : Prop :=
  ∀ n, P1553972114209632479.a n = A074549 n

end A074549

/-!
# A074550: a(n) = 3^n + 4^n + 8^n.

The programs for A074550, the canonical program `A074550.P15764064879711821500` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074550 has offset 0).

The definition of A074550 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+4^n+8^n` (program `A074550.P15764064879711821500`, by `A074550.P15764064879711821500.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074550.P15764064879711821500

`3^n+4^n+8^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074550

/-- `3^n+4^n+8^n` -/
def P15764064879711821500.Spec : Prop :=
  ∀ n, (P15764064879711821500.a n : ℤ) = A074550 n

theorem P15764064879711821500.correct : P15764064879711821500.Spec := by
  intro n
  simp only [A074550]

end A074550

/-! ## A074550.P12951363787974261832

`xor(3^n, A063481(n))`
-/

namespace A074550.P12951363787974261832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (3 ^ n : ℤ) (A063481 n)

end

end A074550.P12951363787974261832

namespace A074550

/-- `xor(3^n, A063481(n))` -/
def P12951363787974261832.Spec : Prop :=
  ∀ n, P12951363787974261832.a n = A074550 n

end A074550

/-! ## A074550.P7788361972347496664

`or(A000244(n), A063481(n))`
-/

namespace A074550.P7788361972347496664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000244 n) (A063481 n)

end

end A074550.P7788361972347496664

namespace A074550

/-- `or(A000244(n), A063481(n))` -/
def P7788361972347496664.Spec : Prop :=
  ∀ n, P7788361972347496664.a n = A074550 n

end A074550

/-! ## A074550.P14842793341435762340

`or(A074605(n), A103459(n))`
-/

namespace A074550.P14842793341435762340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A074605 n) (A103459 n)

end

end A074550.P14842793341435762340

namespace A074550

/-- `or(A074605(n), A103459(n))` -/
def P14842793341435762340.Spec : Prop :=
  ∀ n, P14842793341435762340.a n = A074550 n

end A074550

/-! ## A074550.P16830777524700600040

`or(Δ[A003462(n)], A063481(n))`
-/

namespace A074550.P16830777524700600040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A063481 n)

end

end A074550.P16830777524700600040

namespace A074550

/-- `or(Δ[A003462(n)], A063481(n))` -/
def P16830777524700600040.Spec : Prop :=
  ∀ n, P16830777524700600040.a n = A074550 n

end A074550

/-! ## A074550.P3192086686306321808

`or(Δ[A007051(n)], A063481(n))`
-/

namespace A074550.P3192086686306321808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A063481 n)

end

end A074550.P3192086686306321808

namespace A074550

/-- `or(Δ[A007051(n)], A063481(n))` -/
def P3192086686306321808.Spec : Prop :=
  ∀ n, P3192086686306321808.a n = A074550 n

end A074550

/-!
# A074551: a(n) = 3^n + 4^n + 9^n.

The programs for A074551, the canonical program `A074551.P10327552448071292567` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074551 has offset 0).

The definition of A074551 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+4^n+9^n` (program `A074551.P10327552448071292567`, by `A074551.P10327552448071292567.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074551.P10327552448071292567

`3^n+4^n+9^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074551

/-- `3^n+4^n+9^n` -/
def P10327552448071292567.Spec : Prop :=
  ∀ n, (P10327552448071292567.a n : ℤ) = A074551 n

theorem P10327552448071292567.correct : P10327552448071292567.Spec := by
  intro n
  simp only [A074551]

end A074551

/-! ## A074551.P13177176308486359233

`abs(A005060(n)-A074554(n))`
-/

namespace A074551.P13177176308486359233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005060 n - A074554 n|

end

end A074551.P13177176308486359233

namespace A074551

/-- `abs(A005060(n)-A074554(n))` -/
def P13177176308486359233.Spec : Prop :=
  ∀ n, P13177176308486359233.a n = A074551 n

end A074551

/-! ## A074551.P1444123139634812885

`abs(A059409(n)-A074560(n))`
-/

namespace A074551.P1444123139634812885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A059409 n - A074560 n|

end

end A074551.P1444123139634812885

namespace A074551

/-- `abs(A059409(n)-A074560(n))` -/
def P1444123139634812885.Spec : Prop :=
  ∀ n, P1444123139634812885.a n = A074551 n

end A074551

/-! ## A074551.P6362292700980085824

`Δ[A085282(n)+A002452(n)]`
-/

namespace A074551.P6362292700980085824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085282 n + A002452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074551.P6362292700980085824

namespace A074551

/-- `Δ[A085282(n)+A002452(n)]` -/
def P6362292700980085824.Spec : Prop :=
  ∀ n, P6362292700980085824.a n = A074551 n

end A074551

/-! ## A074551.P15135782843121148896

`floor(A074614(n)+sqrt(A062396(n)))`
-/

namespace A074551.P15135782843121148896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A074614 n : ℝ) + Real.sqrt (A062396 n : ℝ)⌋

end

end A074551.P15135782843121148896

namespace A074551

/-- `floor(A074614(n)+sqrt(A062396(n)))` -/
def P15135782843121148896.Spec : Prop :=
  ∀ n, P15135782843121148896.a n = A074551 n

end A074551

/-! ## A074551.P5896244817590922001

`lcm(A059409(n)-A074560(n), A057077(n))`
-/

namespace A074551.P5896244817590922001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A059409 n - A074560 n) (A057077 n)

end

end A074551.P5896244817590922001

namespace A074551

/-- `lcm(A059409(n)-A074560(n), A057077(n))` -/
def P5896244817590922001.Spec : Prop :=
  ∀ n, (P5896244817590922001.a n : ℤ) = A074551 n

end A074551

/-! ## A074551.P17283759875726934724

`-((A059409(n)-A074560(n))*A014963(6*(n+1)))`
-/

namespace A074551.P17283759875726934724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((A059409 n - A074560 n) * A014963 (6 * (n + 1)))

end

end A074551.P17283759875726934724

namespace A074551

/-- `-((A059409(n)-A074560(n))*A014963(6*(n+1)))` -/
def P17283759875726934724.Spec : Prop :=
  ∀ n, P17283759875726934724.a n = A074551 n

end A074551

/-!
# A074552: a(n) = 3^n + 5^n + 7^n.

The programs for A074552, the canonical program `A074552.P4012217902332951511` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074552 has offset 0).

The definition of A074552 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+5^n+7^n` (program `A074552.P4012217902332951511`, by `A074552.P4012217902332951511.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074552.P4012217902332951511

`3^n+5^n+7^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074552

/-- `3^n+5^n+7^n` -/
def P4012217902332951511.Spec : Prop :=
  ∀ n, (P4012217902332951511.a n : ℤ) = A074552 n

theorem P4012217902332951511.correct : P4012217902332951511.Spec := by
  intro n
  simp only [A074552]

end A074552

/-! ## A074552.P5057279536918178960

`abs(1-A134006(n))`
-/

namespace A074552.P5057279536918178960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A134006 n|

end

end A074552.P5057279536918178960

namespace A074552

/-- `abs(1-A134006(n))` -/
def P5057279536918178960.Spec : Prop :=
  ∀ n, P5057279536918178960.a n = A074552 n

end A074552

/-! ## A074552.P15757386696252538806

`abs(2^n-A135168(n))`
-/

namespace A074552.P15757386696252538806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - A135168 n|

end

end A074552.P15757386696252538806

namespace A074552

/-- `abs(2^n-A135168(n))` -/
def P15757386696252538806.Spec : Prop :=
  ∀ n, P15757386696252538806.a n = A074552 n

end A074552

/-! ## A074552.P7731628743769015888

`(A134006(n)-1)%A135168(n)`
-/

namespace A074552.P7731628743769015888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134006 n - 1) (A135168 n)

end

end A074552.P7731628743769015888

namespace A074552

/-- `(A134006(n)-1)%A135168(n)` -/
def P7731628743769015888.Spec : Prop :=
  ∀ n, P7731628743769015888.a n = A074552 n

end A074552

/-! ## A074552.P14738228296843320045

`or(1, A135167(n)+A000079(n))`
-/

namespace A074552.P14738228296843320045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A135167 n + A000079 n)

end

end A074552.P14738228296843320045

namespace A074552

/-- `or(1, A135167(n)+A000079(n))` -/
def P14738228296843320045.Spec : Prop :=
  ∀ n, P14738228296843320045.a n = A074552 n

end A074552

/-! ## A074552.P10190474145897131218

`(A135168(n)+A135167(n))/2`
-/

namespace A074552.P10190474145897131218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135168 n + A135167 n : ℚ) / 2

end

end A074552.P10190474145897131218

namespace A074552

/-- `(A135168(n)+A135167(n))/2` -/
def P10190474145897131218.Spec : Prop :=
  ∀ n, P10190474145897131218.a n = (A074552 n : ℚ)

end A074552

/-!
# A074553: a(n) = 3^n + 5^n + 8^n.

The programs for A074553, the canonical program `A074553.P5148264773027454196` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074553 has offset 0).

The definition of A074553 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+5^n+8^n` (program `A074553.P5148264773027454196`, by `A074553.P5148264773027454196.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074553.P5148264773027454196

`3^n+5^n+8^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074553

/-- `3^n+5^n+8^n` -/
def P5148264773027454196.Spec : Prop :=
  ∀ n, (P5148264773027454196.a n : ℤ) = A074553 n

theorem P5148264773027454196.correct : P5148264773027454196.Spec := by
  intro n
  simp only [A074553]

end A074553

/-! ## A074553.P3876948589221979456

`abs(A074558(n)-A121213(n))`
-/

namespace A074553.P3876948589221979456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074558 n - A121213 n|

end

end A074553.P3876948589221979456

namespace A074553

/-- `abs(A074558(n)-A121213(n))` -/
def P3876948589221979456.Spec : Prop :=
  ∀ n, P3876948589221979456.a n = A074553 n

end A074553

/-! ## A074553.P5832052994812942130

`(A074558(n)-A121213(n))*A033999(n)²`
-/

namespace A074553.P5832052994812942130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074558 n - A121213 n) * A033999 n ^ 2

end

end A074553.P5832052994812942130

namespace A074553

/-- `(A074558(n)-A121213(n))*A033999(n)²` -/
def P5832052994812942130.Spec : Prop :=
  ∀ n, P5832052994812942130.a n = A074553 n

end A074553

/-! ## A074553.P7329002194072892193

`Δ[A003462(n)+A047853(n)+A003463(n)]`
-/

namespace A074553.P7329002194072892193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n + (A047853 n + A003463 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074553.P7329002194072892193

namespace A074553

/-- `Δ[A003462(n)+A047853(n)+A003463(n)]` -/
def P7329002194072892193.Spec : Prop :=
  ∀ n, P7329002194072892193.a n = A074553 n

end A074553

/-! ## A074553.P2694045095066421664

`Δ[A003463(n)+A047853(n)+A007051(n)]`
-/

namespace A074553.P2694045095066421664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n + (A047853 n + A007051 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074553.P2694045095066421664

namespace A074553

/-- `Δ[A003463(n)+A047853(n)+A007051(n)]` -/
def P2694045095066421664.Spec : Prop :=
  ∀ n, P2694045095066421664.a n = A074553 n

end A074553

/-! ## A074553.P9474658624194630867

`(A074558(n)-A121213(n))*A007318(C(2, n))`
-/

namespace A074553.P9474658624194630867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074558 n - A121213 n) * A007318 (Nat.choose 2 n)

end

end A074553.P9474658624194630867

namespace A074553

/-- `(A074558(n)-A121213(n))*A007318(C(2, n))` -/
def P9474658624194630867.Spec : Prop :=
  ∀ n, P9474658624194630867.a n = A074553 n

end A074553

/-! ## A074553.P15048282650280566875

`(A074558(n)-A121213(n))*A000041(C(n, n²))`
-/

namespace A074553.P15048282650280566875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074558 n - A121213 n) * A000041 (Nat.choose n (n ^ 2))

end

end A074553.P15048282650280566875

namespace A074553

/-- `(A074558(n)-A121213(n))*A000041(C(n, n²))` -/
def P15048282650280566875.Spec : Prop :=
  ∀ n, P15048282650280566875.a n = A074553 n

end A074553

/-! ## A074553.P18333602713016309452

`(A074558(n)-A121213(n))*A000041(gcd(n, n+1))`
-/

namespace A074553.P18333602713016309452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074558 n - A121213 n) * A000041 (Nat.gcd n (n + 1))

end

end A074553.P18333602713016309452

namespace A074553

/-- `(A074558(n)-A121213(n))*A000041(gcd(n, n+1))` -/
def P18333602713016309452.Spec : Prop :=
  ∀ n, P18333602713016309452.a n = A074553 n

end A074553

/-! ## A074553.P8830407704992021018

`(A074558(n)-A121213(n))*A031027(A031029(n+1))`
-/

namespace A074553.P8830407704992021018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074558 n - A121213 n) * A031027 (A031029 (n + 1)).toNat

end

end A074553.P8830407704992021018

namespace A074553

/-- `(A074558(n)-A121213(n))*A031027(A031029(n+1))` -/
def P8830407704992021018.Spec : Prop :=
  ∀ n, P8830407704992021018.a n = A074553 n

end A074553

/-! ## A074553.P6510691180188278207

`(A074558(n)-A121213(n))*A084602(n²)`
-/

namespace A074553.P6510691180188278207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074558 n - A121213 n) * A084602 (n ^ 2)

end

end A074553.P6510691180188278207

namespace A074553

/-- `(A074558(n)-A121213(n))*A084602(n²)` -/
def P6510691180188278207.Spec : Prop :=
  ∀ n, P6510691180188278207.a n = A074553 n

end A074553

/-!
# A074554: a(n) = 3^n + 5^n + 9^n.

The programs for A074554, the canonical program `A074554.P1072886281082828153` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074554 has offset 0).

The definition of A074554 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+5^n+9^n` (program `A074554.P1072886281082828153`, by `A074554.P1072886281082828153.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074554.P1072886281082828153

`3^n+5^n+9^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074554

/-- `3^n+5^n+9^n` -/
def P1072886281082828153.Spec : Prop :=
  ∀ n, (P1072886281082828153.a n : ℤ) = A074554 n

theorem P1072886281082828153.correct : P1072886281082828153.Spec := by
  intro n
  simp only [A074554]

end A074554

/-! ## A074554.P2342183840425460576

`or(1, A074610(n)+5^n)`
-/

namespace A074554.P2342183840425460576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A074610 n + (5 ^ n : ℤ))

end

end A074554.P2342183840425460576

namespace A074554

/-- `or(1, A074610(n)+5^n)` -/
def P2342183840425460576.Spec : Prop :=
  ∀ n, P2342183840425460576.a n = A074554 n

end A074554

/-! ## A074554.P14846092311462321606

`abs(A034513(n)+5^n-1)`
-/

namespace A074554.P14846092311462321606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034513 n + ((5 ^ n : ℤ) - 1)|

end

end A074554.P14846092311462321606

namespace A074554

/-- `abs(A034513(n)+5^n-1)` -/
def P14846092311462321606.Spec : Prop :=
  ∀ n, P14846092311462321606.a n = A074554 n

end A074554

/-! ## A074554.P15581990596679904169

`abs(A074559(n)-A121213(n))`
-/

namespace A074554.P15581990596679904169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074559 n - A121213 n|

end

end A074554.P15581990596679904169

namespace A074554

/-- `abs(A074559(n)-A121213(n))` -/
def P15581990596679904169.Spec : Prop :=
  ∀ n, P15581990596679904169.a n = A074554 n

end A074554

/-! ## A074554.P16575397319021705939

`(A074610(n)+5^n)*A107846(n)!`
-/

namespace A074554.P16575397319021705939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074610 n + (5 ^ n : ℤ)) * (Nat.factorial (A107846 n).toNat : ℤ)

end

end A074554.P16575397319021705939

namespace A074554

/-- `(A074610(n)+5^n)*A107846(n)!` -/
def P16575397319021705939.Spec : Prop :=
  ∀ n, P16575397319021705939.a n = A074554 n

end A074554

/-! ## A074554.P11576381212066890567

`(A074610(n)+5^n)*char[A004468(n)]`
-/

namespace A074554.P11576381212066890567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074610 n + (5 ^ n : ℤ)) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A074554.P11576381212066890567

namespace A074554

/-- `(A074610(n)+5^n)*char[A004468(n)]` -/
def P11576381212066890567.Spec : Prop :=
  ∀ n, P11576381212066890567.a n = A074554 n

end A074554

/-! ## A074554.P8718833684278472170

`(A074610(n)+5^n)*char[A065650(n)]`
-/

namespace A074554.P8718833684278472170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065650 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074610 n + (5 ^ n : ℤ)) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A074554.P8718833684278472170

namespace A074554

/-- `(A074610(n)+5^n)*char[A065650(n)]` -/
def P8718833684278472170.Spec : Prop :=
  ∀ n, P8718833684278472170.a n = A074554 n

end A074554

/-! ## A074554.P449602987422209529

`(A074610(n)+5^n)*A057427(A014591(n))`
-/

namespace A074554.P449602987422209529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074610 n + (5 ^ n : ℤ)) * A057427 (A014591 n).toNat

end

end A074554.P449602987422209529

namespace A074554

/-- `(A074610(n)+5^n)*A057427(A014591(n))` -/
def P449602987422209529.Spec : Prop :=
  ∀ n, P449602987422209529.a n = A074554 n

end A074554

/-! ## A074554.P13944590307531226979

`(A074610(n)+5^n)*A057427(A050603(n))`
-/

namespace A074554.P13944590307531226979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074610 n + (5 ^ n : ℤ)) * A057427 (A050603 n).toNat

end

end A074554.P13944590307531226979

namespace A074554

/-- `(A074610(n)+5^n)*A057427(A050603(n))` -/
def P13944590307531226979.Spec : Prop :=
  ∀ n, P13944590307531226979.a n = A074554 n

end A074554

/-! ## A074554.P3075920677001264870

`lcm(A074610(n)+5^n, A008683(A242675(n)))`
-/

namespace A074554.P3075920677001264870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A074610 n + (5 ^ n : ℤ)) (A008683 (A242675 n).toNat)

end

end A074554.P3075920677001264870

namespace A074554

/-- `lcm(A074610(n)+5^n, A008683(A242675(n)))` -/
def P3075920677001264870.Spec : Prop :=
  ∀ n, (P3075920677001264870.a n : ℤ) = A074554 n

end A074554

/-! ## A074554.P8678552365188710557

`(A074610(n)+5^n)*char[A002262(n)]`
-/

namespace A074554.P8678552365188710557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074610 n + (5 ^ n : ℤ)) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A074554.P8678552365188710557

namespace A074554

/-- `(A074610(n)+5^n)*char[A002262(n)]` -/
def P8678552365188710557.Spec : Prop :=
  ∀ n, P8678552365188710557.a n = A074554 n

end A074554

/-!
# A074555: a(n) = 3^n + 6^n + 7^n.

The programs for A074555, the canonical program `A074555.P4738191491316778387` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074555 has offset 0).

The definition of A074555 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+6^n+7^n` (program `A074555.P4738191491316778387`, by `A074555.P4738191491316778387.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074555.P4738191491316778387

`3^n+6^n+7^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074555

/-- `3^n+6^n+7^n` -/
def P4738191491316778387.Spec : Prop :=
  ∀ n, (P4738191491316778387.a n : ℤ) = A074555 n

theorem P4738191491316778387.correct : P4738191491316778387.Spec := by
  intro n
  simp only [A074555]

end A074555

/-! ## A074555.P18398017442763402407

`abs(A074619(n)+Δ[A115098(n)])`
-/

namespace A074555.P18398017442763402407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115098 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074619 n + (f1 (n + 1) - f1 n)|

end

end A074555.P18398017442763402407

namespace A074555

/-- `abs(A074619(n)+Δ[A115098(n)])` -/
def P18398017442763402407.Spec : Prop :=
  ∀ n, P18398017442763402407.a n = A074555 n

end A074555

/-! ## A074555.P7840471910211717142

`or(A074520(n)+A024023(n), A000007(n))`
-/

namespace A074555.P7840471910211717142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A074520 n + A024023 n) (A000007 n)

end

end A074555.P7840471910211717142

namespace A074555

/-- `or(A074520(n)+A024023(n), A000007(n))` -/
def P7840471910211717142.Spec : Prop :=
  ∀ n, P7840471910211717142.a n = A074555 n

end A074555

/-! ## A074555.P12622173826906968692

`(A074520(n)+A024023(n))*A007318(C(n, 2))`
-/

namespace A074555.P12622173826906968692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074520 n + A024023 n) * A007318 (Nat.choose n 2)

end

end A074555.P12622173826906968692

namespace A074555

/-- `(A074520(n)+A024023(n))*A007318(C(n, 2))` -/
def P12622173826906968692.Spec : Prop :=
  ∀ n, P12622173826906968692.a n = A074555 n

end A074555

/-! ## A074555.P14756026848004446955

`(A074520(n)+A024023(n))*A178334(n)^n`
-/

namespace A074555.P14756026848004446955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074520 n + A024023 n) * A178334 n ^ n

end

end A074555.P14756026848004446955

namespace A074555

/-- `(A074520(n)+A024023(n))*A178334(n)^n` -/
def P14756026848004446955.Spec : Prop :=
  ∀ n, P14756026848004446955.a n = A074555 n

end A074555

/-! ## A074555.P4854190462471091050

`(A155604(n)+A034491(n))%A199488(n)`
-/

namespace A074555.P4854190462471091050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155604 n + A034491 n) (A199488 n)

end

end A074555.P4854190462471091050

namespace A074555

/-- `(A155604(n)+A034491(n))%A199488(n)` -/
def P4854190462471091050.Spec : Prop :=
  ∀ n, P4854190462471091050.a n = A074555 n

end A074555

/-!
# A074556: a(n) = 3^n + 6^n + 8^n.

The programs for A074556, the canonical program `A074556.P4378652583454655488` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074556 has offset 0).

The definition of A074556 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+6^n+8^n` (program `A074556.P4378652583454655488`, by `A074556.P4378652583454655488.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074556.P4378652583454655488

`3^n+6^n+8^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074556

/-- `3^n+6^n+8^n` -/
def P4378652583454655488.Spec : Prop :=
  ∀ n, (P4378652583454655488.a n : ℤ) = A074556 n

theorem P4378652583454655488.correct : P4378652583454655488.Spec := by
  intro n
  simp only [A074556]

end A074556

/-! ## A074556.P9067581303418431915

`abs(A016185(n)-A074557(n))`
-/

namespace A074556.P9067581303418431915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016185 n - A074557 n|

end

end A074556.P9067581303418431915

namespace A074556

/-- `abs(A016185(n)-A074557(n))` -/
def P9067581303418431915.Spec : Prop :=
  ∀ n, P9067581303418431915.a n = A074556 n

end A074556

/-! ## A074556.P10239744119524958753

`floor(A074620(n)+sqrt(A074610(n)))`
-/

namespace A074556.P10239744119524958753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A074620 n : ℝ) + Real.sqrt (A074610 n : ℝ)⌋

end

end A074556.P10239744119524958753

namespace A074556

/-- `floor(A074620(n)+sqrt(A074610(n)))` -/
def P10239744119524958753.Spec : Prop :=
  ∀ n, P10239744119524958753.a n = A074556 n

end A074556

/-! ## A074556.P16137652174440689729

`(A000225(n)-2^n)*(A016185(n)-A074557(n))`
-/

namespace A074556.P16137652174440689729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000225 n - (2 ^ n : ℤ)) * (A016185 n - A074557 n)

end

end A074556.P16137652174440689729

namespace A074556

/-- `(A000225(n)-2^n)*(A016185(n)-A074557(n))` -/
def P16137652174440689729.Spec : Prop :=
  ∀ n, P16137652174440689729.a n = A074556 n

end A074556

/-! ## A074556.P2891858529049503424

`(A016185(n)-A074557(n))*(A000225(n)-A000079(n))`
-/

namespace A074556.P2891858529049503424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016185 n - A074557 n) * (A000225 n - A000079 n)

end

end A074556.P2891858529049503424

namespace A074556

/-- `(A016185(n)-A074557(n))*(A000225(n)-A000079(n))` -/
def P2891858529049503424.Spec : Prop :=
  ∀ n, P2891858529049503424.a n = A074556 n

end A074556

/-!
# A074557: a(n) = 3^n + 6^n + 9^n.

The programs for A074557, the canonical program `A074557.P17865556886609840565` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074557 has offset 0).

The definition of A074557 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+6^n+9^n` (program `A074557.P17865556886609840565`, by `A074557.P17865556886609840565.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074557.P17865556886609840565

`3^n+6^n+9^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074557

/-- `3^n+6^n+9^n` -/
def P17865556886609840565.Spec : Prop :=
  ∀ n, (P17865556886609840565.a n : ℤ) = A074557 n

theorem P17865556886609840565.correct : P17865556886609840565.Spec := by
  intro n
  simp only [A074557]

end A074557

/-! ## A074557.P4606287160548263088

`3^n*A001550(n)`
-/

namespace A074557.P4606287160548263088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A001550 n

end

end A074557.P4606287160548263088

namespace A074557

/-- `3^n*A001550(n)` -/
def P4606287160548263088.Spec : Prop :=
  ∀ n, P4606287160548263088.a n = A074557 n

end A074557

/-! ## A074557.P2222990470466156057

`(A007689(n)+1)*3^n`
-/

namespace A074557.P2222990470466156057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007689 n + 1) * (3 ^ n : ℤ)

end

end A074557.P2222990470466156057

namespace A074557

/-- `(A007689(n)+1)*3^n` -/
def P2222990470466156057.Spec : Prop :=
  ∀ n, P2222990470466156057.a n = A074557 n

end A074557

/-! ## A074557.P18342771779986115638

`(Δ[A094374(n)]+1)*3^n`
-/

namespace A074557.P18342771779986115638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094374 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) * (3 ^ n : ℤ)

end

end A074557.P18342771779986115638

namespace A074557

/-- `(Δ[A094374(n)]+1)*3^n` -/
def P18342771779986115638.Spec : Prop :=
  ∀ n, P18342771779986115638.a n = A074557 n

end A074557

/-! ## A074557.P14043406731331577145

`(A085281(n+1)+1)*3^n`
-/

namespace A074557.P14043406731331577145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A085281 (n + 1) + 1) * (3 ^ n : ℤ)

end

end A074557.P14043406731331577145

namespace A074557

/-- `(A085281(n+1)+1)*3^n` -/
def P14043406731331577145.Spec : Prop :=
  ∀ n, P14043406731331577145.a n = A074557 n

end A074557

/-! ## A074557.P14346838920448014910

`(A005056(n)+2)*A000244(n)`
-/

namespace A074557.P14346838920448014910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005056 n + 2) * A000244 n

end

end A074557.P14346838920448014910

namespace A074557

/-- `(A005056(n)+2)*A000244(n)` -/
def P14346838920448014910.Spec : Prop :=
  ∀ n, P14346838920448014910.a n = A074557 n

end A074557

/-! ## A074557.P8884155871040763320

`(Δ[A099754(n)]+1)*A000244(n)`
-/

namespace A074557.P8884155871040763320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) * A000244 n

end

end A074557.P8884155871040763320

namespace A074557

/-- `(Δ[A099754(n)]+1)*A000244(n)` -/
def P8884155871040763320.Spec : Prop :=
  ∀ n, P8884155871040763320.a n = A074557 n

end A074557

/-! ## A074557.P395858634391325343

`floor((A007689(n)+1)*sqrt(A001019(n)))`
-/

namespace A074557.P395858634391325343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007689 n + 1 : ℝ) * Real.sqrt (A001019 n : ℝ)⌋

end

end A074557.P395858634391325343

namespace A074557

/-- `floor((A007689(n)+1)*sqrt(A001019(n)))` -/
def P395858634391325343.Spec : Prop :=
  ∀ n, P395858634391325343.a n = A074557 n

end A074557

/-! ## A074557.P436309292929887130

`A001550(n)*A127975(A008486(n))`
-/

namespace A074557.P436309292929887130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001550 n * A127975 (A008486 n).toNat

end

end A074557.P436309292929887130

namespace A074557

/-- `A001550(n)*A127975(A008486(n))` -/
def P436309292929887130.Spec : Prop :=
  ∀ n, P436309292929887130.a n = A074557 n

end A074557

/-! ## A074557.P4762124693471270617

`(A000244(n)+A000051(n))*A000244(n)`
-/

namespace A074557.P4762124693471270617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n + A000051 n) * A000244 n

end

end A074557.P4762124693471270617

namespace A074557

/-- `(A000244(n)+A000051(n))*A000244(n)` -/
def P4762124693471270617.Spec : Prop :=
  ∀ n, P4762124693471270617.a n = A074557 n

end A074557

/-! ## A074557.P17937306086008856389

`(A034472(n)+A000079(n))*A000244(n)`
-/

namespace A074557.P17937306086008856389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A034472 n + A000079 n) * A000244 n

end

end A074557.P17937306086008856389

namespace A074557

/-- `(A034472(n)+A000079(n))*A000244(n)` -/
def P17937306086008856389.Spec : Prop :=
  ∀ n, P17937306086008856389.a n = A074557 n

end A074557

/-! ## A074557.P14594489539098741197

`(A052548(n)+A024023(n))*A000244(n)`
-/

namespace A074557.P14594489539098741197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052548 n + A024023 n) * A000244 n

end

end A074557.P14594489539098741197

namespace A074557

/-- `(A052548(n)+A024023(n))*A000244(n)` -/
def P14594489539098741197.Spec : Prop :=
  ∀ n, P14594489539098741197.a n = A074557 n

end A074557

/-! ## A074557.P14342327939517046709

`(A001551(n)-A000079(n)²)*A000244(n)`
-/

namespace A074557.P14342327939517046709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001551 n - A000079 n ^ 2) * A000244 n

end

end A074557.P14342327939517046709

namespace A074557

/-- `(A001551(n)-A000079(n)²)*A000244(n)` -/
def P14342327939517046709.Spec : Prop :=
  ∀ n, P14342327939517046709.a n = A074557 n

end A074557

/-! ## A074557.P9126397835761281817

`(A000244(n)+Δ[A005126(n)])*A000244(n)`
-/

namespace A074557.P9126397835761281817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n + (f1 (n + 1) - f1 n)) * A000244 n

end

end A074557.P9126397835761281817

namespace A074557

/-- `(A000244(n)+Δ[A005126(n)])*A000244(n)` -/
def P9126397835761281817.Spec : Prop :=
  ∀ n, P9126397835761281817.a n = A074557 n

end A074557

/-! ## A074557.P1130055531727440089

`(A094373(n+1)+A000244(n))*A000244(n)`
-/

namespace A074557.P1130055531727440089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094373 (n + 1) + A000244 n) * A000244 n

end

end A074557.P1130055531727440089

namespace A074557

/-- `(A094373(n+1)+A000244(n))*A000244(n)` -/
def P1130055531727440089.Spec : Prop :=
  ∀ n, P1130055531727440089.a n = A074557 n

end A074557

/-! ## A074557.P5499443692186721802

`(A133494(n+1)+A094373(n+1))*A133494(n+1)`
-/

namespace A074557.P5499443692186721802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A133494 (n + 1) + A094373 (n + 1)) * A133494 (n + 1)

end

end A074557.P5499443692186721802

namespace A074557

/-- `(A133494(n+1)+A094373(n+1))*A133494(n+1)` -/
def P5499443692186721802.Spec : Prop :=
  ∀ n, P5499443692186721802.a n = A074557 n

end A074557

/-! ## A074557.P11560165964278502375

`(A108411(2*n)+A094373(n+1))*A108411(2*n)`
-/

namespace A074557.P11560165964278502375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A108411 (2 * n) + A094373 (n + 1)) * A108411 (2 * n)

end

end A074557.P11560165964278502375

namespace A074557

/-- `(A108411(2*n)+A094373(n+1))*A108411(2*n)` -/
def P11560165964278502375.Spec : Prop :=
  ∀ n, P11560165964278502375.a n = A074557 n

end A074557

/-!
# A074558: a(n) = 3^n + 7^n + 8^n.

The programs for A074558, the canonical program `A074558.P16965406357425004510` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074558 has offset 0).

The definition of A074558 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+7^n+8^n` (program `A074558.P16965406357425004510`, by `A074558.P16965406357425004510.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074558.P16965406357425004510

`3^n+7^n+8^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074558

/-- `3^n+7^n+8^n` -/
def P16965406357425004510.Spec : Prop :=
  ∀ n, (P16965406357425004510.a n : ℤ) = A074558 n

theorem P16965406357425004510.correct : P16965406357425004510.Spec := by
  intro n
  simp only [A074558]

end A074558

/-! ## A074558.P13084975902578584916

`or(2, A155605(n)+A024088(n))`
-/

namespace A074558.P13084975902578584916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A155605 n + A024088 n)

end

end A074558.P13084975902578584916

namespace A074558

/-- `or(2, A155605(n)+A024088(n))` -/
def P13084975902578584916.Spec : Prop :=
  ∀ n, P13084975902578584916.a n = A074558 n

end A074558

/-! ## A074558.P14079019948944907812

`abs(A074560(n)-A191467(n))`
-/

namespace A074558.P14079019948944907812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074560 n - A191467 n|

end

end A074558.P14079019948944907812

namespace A074558

/-- `abs(A074560(n)-A191467(n))` -/
def P14079019948944907812.Spec : Prop :=
  ∀ n, P14079019948944907812.a n = A074558 n

end A074558

/-! ## A074558.P1437282429349142549

`lcm(A074560(n)-A191467(n), A330034(n))`
-/

namespace A074558.P1437282429349142549
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A074560 n - A191467 n) (A330034 n)

end

end A074558.P1437282429349142549

namespace A074558

/-- `lcm(A074560(n)-A191467(n), A330034(n))` -/
def P1437282429349142549.Spec : Prop :=
  ∀ n, (P1437282429349142549.a n : ℤ) = A074558 n

end A074558

/-! ## A074558.P3131368915476979492

`or(A074560(n)-A191467(n), A000007(n))`
-/

namespace A074558.P3131368915476979492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A074560 n - A191467 n) (A000007 n)

end

end A074558.P3131368915476979492

namespace A074558

/-- `or(A074560(n)-A191467(n), A000007(n))` -/
def P3131368915476979492.Spec : Prop :=
  ∀ n, P3131368915476979492.a n = A074558 n

end A074558

/-! ## A074558.P3792637170307222101

`or(A074560(n)-A191467(n), A000122(n))`
-/

namespace A074558.P3792637170307222101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A074560 n - A191467 n) (A000122 n)

end

end A074558.P3792637170307222101

namespace A074558

/-- `or(A074560(n)-A191467(n), A000122(n))` -/
def P3792637170307222101.Spec : Prop :=
  ∀ n, P3792637170307222101.a n = A074558 n

end A074558

/-! ## A074558.P4996886338610994738

`or(A074560(n)-A191467(n), A008683(8*n+4))`
-/

namespace A074558.P4996886338610994738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A074560 n - A191467 n) (A008683 (8 * n + 4))

end

end A074558.P4996886338610994738

namespace A074558

/-- `or(A074560(n)-A191467(n), A008683(8*n+4))` -/
def P4996886338610994738.Spec : Prop :=
  ∀ n, P4996886338610994738.a n = A074558 n

end A074558

/-! ## A074558.P318395178240105088

`(A074560(n)-A191467(n))*A349593(C(n+3, 2))`
-/

namespace A074558.P318395178240105088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074560 n - A191467 n) * A349593 (Nat.choose (n + 3) 2)

end

end A074558.P318395178240105088

namespace A074558

/-- `(A074560(n)-A191467(n))*A349593(C(n+3, 2))` -/
def P318395178240105088.Spec : Prop :=
  ∀ n, P318395178240105088.a n = A074558 n

end A074558

/-!
# A074559: a(n) = 3^n + 7^n + 9^n.

The programs for A074559, the canonical program `A074559.P3380755015400959094` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074559 has offset 0).

The definition of A074559 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+7^n+9^n` (program `A074559.P3380755015400959094`, by `A074559.P3380755015400959094.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074559.P3380755015400959094

`3^n+7^n+9^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074559

/-- `3^n+7^n+9^n` -/
def P3380755015400959094.Spec : Prop :=
  ∀ n, (P3380755015400959094.a n : ℤ) = A074559 n

theorem P3380755015400959094.correct : P3380755015400959094.Spec := by
  intro n
  simp only [A074559]

end A074559

/-! ## A074559.P9929201379070979241

`or(1, A074610(n)+A000420(n))`
-/

namespace A074559.P9929201379070979241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A074610 n + A000420 n)

end

end A074559.P9929201379070979241

namespace A074559

/-- `or(1, A074610(n)+A000420(n))` -/
def P9929201379070979241.Spec : Prop :=
  ∀ n, P9929201379070979241.a n = A074559 n

end A074559

/-! ## A074559.P3343797937274843568

`(A074610(n)+A000420(n))*A033999(n)²`
-/

namespace A074559.P3343797937274843568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074610 n + A000420 n) * A033999 n ^ 2

end

end A074559.P3343797937274843568

namespace A074559

/-- `(A074610(n)+A000420(n))*A033999(n)²` -/
def P3343797937274843568.Spec : Prop :=
  ∀ n, P3343797937274843568.a n = A074559 n

end A074559

/-! ## A074559.P3826122032373720034

`(A074610(n)+A000420(n))*A080851(∑[n])`
-/

namespace A074559.P3826122032373720034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074610 n + A000420 n) * A080851 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074559.P3826122032373720034

namespace A074559

/-- `(A074610(n)+A000420(n))*A080851(∑[n])` -/
def P3826122032373720034.Spec : Prop :=
  ∀ n, P3826122032373720034.a n = A074559 n

end A074559

/-! ## A074559.P17835063170227845011

`(A074610(n)+A000420(n))*A033999(2*n)`
-/

namespace A074559.P17835063170227845011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074610 n + A000420 n) * A033999 (2 * n)

end

end A074559.P17835063170227845011

namespace A074559

/-- `(A074610(n)+A000420(n))*A033999(2*n)` -/
def P17835063170227845011.Spec : Prop :=
  ∀ n, P17835063170227845011.a n = A074559 n

end A074559

/-!
# A074560: a(n) = 3^n + 8^n + 9^n.

The programs for A074560, the canonical program `A074560.P18342032305587240804` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074560 has offset 0).

The definition of A074560 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+8^n+9^n` (program `A074560.P18342032305587240804`, by `A074560.P18342032305587240804.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074560.P18342032305587240804

`3^n+8^n+9^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074560

/-- `3^n+8^n+9^n` -/
def P18342032305587240804.Spec : Prop :=
  ∀ n, (P18342032305587240804.a n : ℤ) = A074560 n

theorem P18342032305587240804.correct : P18342032305587240804.Spec := by
  intro n
  simp only [A074560]

end A074560

/-! ## A074560.P9528975880810390138

`abs(A074624(n)+Δ[A007051(n)])`
-/

namespace A074560.P9528975880810390138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074624 n + (f1 (n + 1) - f1 n)|

end

end A074560.P9528975880810390138

namespace A074560

/-- `abs(A074624(n)+Δ[A007051(n)])` -/
def P9528975880810390138.Spec : Prop :=
  ∀ n, P9528975880810390138.a n = A074560 n

end A074560

/-! ## A074560.P7424848500003892940

`abs(A074624(n)+Δ[A115098(n)])`
-/

namespace A074560.P7424848500003892940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115098 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074624 n + (f1 (n + 1) - f1 n)|

end

end A074560.P7424848500003892940

namespace A074560

/-- `abs(A074624(n)+Δ[A115098(n)])` -/
def P7424848500003892940.Spec : Prop :=
  ∀ n, P7424848500003892940.a n = A074560 n

end A074560

/-! ## A074560.P12165679420837246884

`(A074624(n)+Δ[A115098(n)])*A033999(2*n)`
-/

namespace A074560.P12165679420837246884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115098 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074624 n + (f1 (n + 1) - f1 n)) * A033999 (2 * n)

end

end A074560.P12165679420837246884

namespace A074560

/-- `(A074624(n)+Δ[A115098(n)])*A033999(2*n)` -/
def P12165679420837246884.Spec : Prop :=
  ∀ n, P12165679420837246884.a n = A074560 n

end A074560

/-! ## A074560.P17186096209385212919

`(A074624(n)+Δ[A115098(n)])*A091090(2*n)`
-/

namespace A074560.P17186096209385212919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115098 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074624 n + (f1 (n + 1) - f1 n)) * A091090 (2 * n)

end

end A074560.P17186096209385212919

namespace A074560

/-- `(A074624(n)+Δ[A115098(n)])*A091090(2*n)` -/
def P17186096209385212919.Spec : Prop :=
  ∀ n, P17186096209385212919.a n = A074560 n

end A074560

/-! ## A074560.P15152320465135447336

`(A074624(n)+Δ[A115098(n)])*A212159(n+2)²`
-/

namespace A074560.P15152320465135447336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115098 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074624 n + (f1 (n + 1) - f1 n)) * A212159 (n + 2) ^ 2

end

end A074560.P15152320465135447336

namespace A074560

/-- `(A074624(n)+Δ[A115098(n)])*A212159(n+2)²` -/
def P15152320465135447336.Spec : Prop :=
  ∀ n, P15152320465135447336.a n = A074560 n

end A074560

/-! ## A074560.P7787548620086836308

`(A074624(n)+Δ[A115098(n)])%A173808(n+1)`
-/

namespace A074560.P7787548620086836308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115098 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074624 n + (f1 (n + 1) - f1 n)) (A173808 (n + 1))

end

end A074560.P7787548620086836308

namespace A074560

/-- `(A074624(n)+Δ[A115098(n)])%A173808(n+1)` -/
def P7787548620086836308.Spec : Prop :=
  ∀ n, P7787548620086836308.a n = A074560 n

end A074560

/-!
# A074561: a(n) = 4^n + 5^n + 6^n.

The programs for A074561, the canonical program `A074561.P7977343402559612284` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074561 has offset 0).

The definition of A074561 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n+5^n+6^n` (program `A074561.P7977343402559612284`, by `A074561.P7977343402559612284.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074561.P7977343402559612284

`4^n+5^n+6^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074561

/-- `4^n+5^n+6^n` -/
def P7977343402559612284.Spec : Prop :=
  ∀ n, (P7977343402559612284.a n : ℤ) = A074561 n

theorem P7977343402559612284.correct : P7977343402559612284.Spec := by
  intro n
  simp only [A074561]

end A074561

/-! ## A074561.P1317782505513161860

`or(1, A074612(n)+5^n)`
-/

namespace A074561.P1317782505513161860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A074612 n + (5 ^ n : ℤ))

end

end A074561.P1317782505513161860

namespace A074561

/-- `or(1, A074612(n)+5^n)` -/
def P1317782505513161860.Spec : Prop :=
  ∀ n, P1317782505513161860.a n = A074561 n

end A074561

/-! ## A074561.P13469478425518468399

`abs(A001550(n)-A001553(n))`
-/

namespace A074561.P13469478425518468399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001550 n - A001553 n|

end

end A074561.P13469478425518468399

namespace A074561

/-- `abs(A001550(n)-A001553(n))` -/
def P13469478425518468399.Spec : Prop :=
  ∀ n, P13469478425518468399.a n = A074561 n

end A074561

/-! ## A074561.P365462361620045873

`(A001550(n)-A001553(n))*A057428(n+1)`
-/

namespace A074561.P365462361620045873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001550 n - A001553 n) * A057428 (n + 1)

end

end A074561.P365462361620045873

namespace A074561

/-- `(A001550(n)-A001553(n))*A057428(n+1)` -/
def P365462361620045873.Spec : Prop :=
  ∀ n, P365462361620045873.a n = A074561 n

end A074561

/-! ## A074561.P5059751304601993123

`(A001553(n)-A001550(n))*A000034(2*n)`
-/

namespace A074561.P5059751304601993123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001553 n - A001550 n) * A000034 (2 * n)

end

end A074561.P5059751304601993123

namespace A074561

/-- `(A001553(n)-A001550(n))*A000034(2*n)` -/
def P5059751304601993123.Spec : Prop :=
  ∀ n, P5059751304601993123.a n = A074561 n

end A074561

/-! ## A074561.P18042388117294927359

`gcd(A001550(n)-A001553(n), A008437(2*n))`
-/

namespace A074561.P18042388117294927359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001550 n - A001553 n) (A008437 (2 * n))

end

end A074561.P18042388117294927359

namespace A074561

/-- `gcd(A001550(n)-A001553(n), A008437(2*n))` -/
def P18042388117294927359.Spec : Prop :=
  ∀ n, (P18042388117294927359.a n : ℤ) = A074561 n

end A074561

/-! ## A074561.P3234864757821459183

`(A001550(n)-A001553(n))*A033999(2*n+1)`
-/

namespace A074561.P3234864757821459183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001550 n - A001553 n) * A033999 (2 * n + 1)

end

end A074561.P3234864757821459183

namespace A074561

/-- `(A001550(n)-A001553(n))*A033999(2*n+1)` -/
def P3234864757821459183.Spec : Prop :=
  ∀ n, P3234864757821459183.a n = A074561 n

end A074561

/-! ## A074561.P8491824943844357245

`lcm(A001550(n)-A001553(n), A204120(2*(n+1)))`
-/

namespace A074561.P8491824943844357245
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001550 n - A001553 n) (A204120 (2 * (n + 1)))

end

end A074561.P8491824943844357245

namespace A074561

/-- `lcm(A001550(n)-A001553(n), A204120(2*(n+1)))` -/
def P8491824943844357245.Spec : Prop :=
  ∀ n, (P8491824943844357245.a n : ℤ) = A074561 n

end A074561

/-! ## A074561.P17388018015086880912

`(A001550(n)-A001553(n))/A057428(∑[n+3]+7)`
-/

namespace A074561.P17388018015086880912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001550 n - A001553 n : ℚ) / (A057428 (∑ j ∈ Finset.range (n + 1), f1 j + 7) : ℚ)

end

end A074561.P17388018015086880912

namespace A074561

/-- `(A001550(n)-A001553(n))/A057428(∑[n+3]+7)` -/
def P17388018015086880912.Spec : Prop :=
  ∀ n, P17388018015086880912.a n = (A074561 n : ℚ)

end A074561

/-!
# A074562: a(n) = 4^n + 5^n + 7^n.

The programs for A074562, the canonical program `A074562.P4806481422985691960` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074562 has offset 0).

The definition of A074562 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n+5^n+7^n` (program `A074562.P4806481422985691960`, by `A074562.P4806481422985691960.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074562.P4806481422985691960

`4^n+5^n+7^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074562

/-- `4^n+5^n+7^n` -/
def P4806481422985691960.Spec : Prop :=
  ∀ n, (P4806481422985691960.a n : ℤ) = A074562 n

theorem P4806481422985691960.correct : P4806481422985691960.Spec := by
  intro n
  simp only [A074562]

end A074562

/-! ## A074562.P3733969528452813652

`abs(2-A074513(n)-A034474(n))`
-/

namespace A074562.P3733969528452813652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A074513 n - A034474 n|

end

end A074562.P3733969528452813652

namespace A074562

/-- `abs(2-A074513(n)-A034474(n))` -/
def P3733969528452813652.Spec : Prop :=
  ∀ n, P3733969528452813652.a n = A074562 n

end A074562

/-! ## A074562.P17345831638905600478

`abs(5^n-1-(A000225(n)-A074534(n)))`
-/

namespace A074562.P17345831638905600478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(5 ^ n : ℤ) - 1 - (A000225 n - A074534 n)|

end

end A074562.P17345831638905600478

namespace A074562

/-- `abs(5^n-1-(A000225(n)-A074534(n)))` -/
def P17345831638905600478.Spec : Prop :=
  ∀ n, P17345831638905600478.a n = A074562 n

end A074562

/-! ## A074562.P5334660789749867351

`abs(A059409(n)-A074574(n))`
-/

namespace A074562.P5334660789749867351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A059409 n - A074574 n|

end

end A074562.P5334660789749867351

namespace A074562

/-- `abs(A059409(n)-A074574(n))` -/
def P5334660789749867351.Spec : Prop :=
  ∀ n, P5334660789749867351.a n = A074562 n

end A074562

/-! ## A074562.P16368258616357989978

`abs(A074568(n)-A191468(n))`
-/

namespace A074562.P16368258616357989978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074568 n - A191468 n|

end

end A074562.P16368258616357989978

namespace A074562

/-- `abs(A074568(n)-A191468(n))` -/
def P16368258616357989978.Spec : Prop :=
  ∀ n, P16368258616357989978.a n = A074562 n

end A074562

/-! ## A074562.P15365746697853230018

`lcm(A074568(n)-A191468(n), A177702(n))`
-/

namespace A074562.P15365746697853230018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A074568 n - A191468 n) (A177702 n)

end

end A074562.P15365746697853230018

namespace A074562

/-- `lcm(A074568(n)-A191468(n), A177702(n))` -/
def P15365746697853230018.Spec : Prop :=
  ∀ n, (P15365746697853230018.a n : ℤ) = A074562 n

end A074562

/-! ## A074562.P3231413131636765468

`(A074568(n)-A191468(n))*A056594(4*n)`
-/

namespace A074562.P3231413131636765468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074568 n - A191468 n) * A056594 (4 * n)

end

end A074562.P3231413131636765468

namespace A074562

/-- `(A074568(n)-A191468(n))*A056594(4*n)` -/
def P3231413131636765468.Spec : Prop :=
  ∀ n, P3231413131636765468.a n = A074562 n

end A074562

/-! ## A074562.P11113764560076361233

`xor(A074568(n)-A191468(n), A000007(n+1))`
-/

namespace A074562.P11113764560076361233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A074568 n - A191468 n) (A000007 (n + 1))

end

end A074562.P11113764560076361233

namespace A074562

/-- `xor(A074568(n)-A191468(n), A000007(n+1))` -/
def P11113764560076361233.Spec : Prop :=
  ∀ n, P11113764560076361233.a n = A074562 n

end A074562

/-! ## A074562.P7314597128702681411

`(A074568(n)-A191468(n))*A007318(C(n, 2))`
-/

namespace A074562.P7314597128702681411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074568 n - A191468 n) * A007318 (Nat.choose n 2)

end

end A074562.P7314597128702681411

namespace A074562

/-- `(A074568(n)-A191468(n))*A007318(C(n, 2))` -/
def P7314597128702681411.Spec : Prop :=
  ∀ n, P7314597128702681411.a n = A074562 n

end A074562

/-! ## A074562.P12743965709453874543

`(A074568(n)-A191468(n))*A001222(A014442(n+1))`
-/

namespace A074562.P12743965709453874543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074568 n - A191468 n) * A001222 (A014442 (n + 1)).toNat

end

end A074562.P12743965709453874543

namespace A074562

/-- `(A074568(n)-A191468(n))*A001222(A014442(n+1))` -/
def P12743965709453874543.Spec : Prop :=
  ∀ n, P12743965709453874543.a n = A074562 n

end A074562

/-! ## A074562.P15019058407684354821

`(A074568(n)-A191468(n))*A007318(A020639(2*(n+7)))`
-/

namespace A074562.P15019058407684354821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074568 n - A191468 n) * A007318 (A020639 (2 * (n + 7))).toNat

end

end A074562.P15019058407684354821

namespace A074562

/-- `(A074568(n)-A191468(n))*A007318(A020639(2*(n+7)))` -/
def P15019058407684354821.Spec : Prop :=
  ∀ n, P15019058407684354821.a n = A074562 n

end A074562

/-!
# A074563: a(n) = 4^n + 5^n + 8^n.

The programs for A074563, the canonical program `A074563.P1379227277394458418` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074563 has offset 0).

The definition of A074563 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n+5^n+8^n` (program `A074563.P1379227277394458418`, by `A074563.P1379227277394458418.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074563.P1379227277394458418

`4^n+5^n+8^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074563

/-- `4^n+5^n+8^n` -/
def P1379227277394458418.Spec : Prop :=
  ∀ n, (P1379227277394458418.a n : ℤ) = A074563 n

theorem P1379227277394458418.correct : P1379227277394458418.Spec := by
  intro n
  simp only [A074563]

end A074563

/-! ## A074563.P16442912619959631931

`or(1, A063481(n)+5^n)`
-/

namespace A074563.P16442912619959631931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A063481 n + (5 ^ n : ℤ))

end

end A074563.P16442912619959631931

namespace A074563

/-- `or(1, A063481(n)+5^n)` -/
def P16442912619959631931.Spec : Prop :=
  ∀ n, P16442912619959631931.a n = A074563 n

end A074563

/-! ## A074563.P1011880775029402391

`or(1, A155619(n)+A034474(n))`
-/

namespace A074563.P1011880775029402391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A155619 n + A034474 n)

end

end A074563.P1011880775029402391

namespace A074563

/-- `or(1, A155619(n)+A034474(n))` -/
def P1011880775029402391.Spec : Prop :=
  ∀ n, P1011880775029402391.a n = A074563 n

end A074563

/-! ## A074563.P17674385006167305613

`xor(1, A074574(n)-A155628(n))`
-/

namespace A074563.P17674385006167305613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A074574 n - A155628 n)

end

end A074563.P17674385006167305613

namespace A074563

/-- `xor(1, A074574(n)-A155628(n))` -/
def P17674385006167305613.Spec : Prop :=
  ∀ n, P17674385006167305613.a n = A074563 n

end A074563

/-! ## A074563.P4630944651174444203

`(A155619(n)+A034474(n))*A007318(∑[n])`
-/

namespace A074563.P4630944651174444203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155619 n + A034474 n) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074563.P4630944651174444203

namespace A074563

/-- `(A155619(n)+A034474(n))*A007318(∑[n])` -/
def P4630944651174444203.Spec : Prop :=
  ∀ n, P4630944651174444203.a n = A074563 n

end A074563

/-! ## A074563.P16189315299118914207

`(A155619(n)+A034474(n))*char[A001057(n)]`
-/

namespace A074563.P16189315299118914207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155619 n + A034474 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A074563.P16189315299118914207

namespace A074563

/-- `(A155619(n)+A034474(n))*char[A001057(n)]` -/
def P16189315299118914207.Spec : Prop :=
  ∀ n, P16189315299118914207.a n = A074563 n

end A074563

/-! ## A074563.P3758392934524089121

`(A155619(n)+A034474(n))*char[A261102(n)]`
-/

namespace A074563.P3758392934524089121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261102 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155619 n + A034474 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A074563.P3758392934524089121

namespace A074563

/-- `(A155619(n)+A034474(n))*char[A261102(n)]` -/
def P3758392934524089121.Spec : Prop :=
  ∀ n, P3758392934524089121.a n = A074563 n

end A074563

/-! ## A074563.P6611781177199893933

`gcd(A155619(n)+A034474(n), A055671(45*n))`
-/

namespace A074563.P6611781177199893933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A155619 n + A034474 n) (A055671 (45 * n))

end

end A074563.P6611781177199893933

namespace A074563

/-- `gcd(A155619(n)+A034474(n), A055671(45*n))` -/
def P6611781177199893933.Spec : Prop :=
  ∀ n, (P6611781177199893933.a n : ℤ) = A074563 n

end A074563

/-! ## A074563.P2832240668613788946

`(A155619(n)+A034474(n))*and(1, A050056(n+1))!`
-/

namespace A074563.P2832240668613788946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155619 n + A034474 n) * (Nat.factorial (Int.land 1 (A050056 (n + 1))).toNat : ℤ)

end

end A074563.P2832240668613788946

namespace A074563

/-- `(A155619(n)+A034474(n))*and(1, A050056(n+1))!` -/
def P2832240668613788946.Spec : Prop :=
  ∀ n, P2832240668613788946.a n = A074563 n

end A074563

/-! ## A074563.P1348755434040466545

`(A155619(n)+A034474(n))*A000041(n²%(n+1))`
-/

namespace A074563.P1348755434040466545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155619 n + A034474 n) * A000041 (n ^ 2 % (n + 1))

end

end A074563.P1348755434040466545

namespace A074563

/-- `(A155619(n)+A034474(n))*A000041(n²%(n+1))` -/
def P1348755434040466545.Spec : Prop :=
  ∀ n, P1348755434040466545.a n = A074563 n

end A074563

/-! ## A074563.P5223546706467124439

`(A155619(n)+A034474(n))*char[A117831(n+1)]`
-/

namespace A074563.P5223546706467124439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117831 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155619 n + A034474 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A074563.P5223546706467124439

namespace A074563

/-- `(A155619(n)+A034474(n))*char[A117831(n+1)]` -/
def P5223546706467124439.Spec : Prop :=
  ∀ n, P5223546706467124439.a n = A074563 n

end A074563

/-! ## A074563.P16903245513297915187

`(A155619(n)+A034474(n))*char[A002262(n)]`
-/

namespace A074563.P16903245513297915187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155619 n + A034474 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A074563.P16903245513297915187

namespace A074563

/-- `(A155619(n)+A034474(n))*char[A002262(n)]` -/
def P16903245513297915187.Spec : Prop :=
  ∀ n, P16903245513297915187.a n = A074563 n

end A074563

/-!
# A074564: a(n) = 4^n + 5^n + 9^n.

The programs for A074564, the canonical program `A074564.P6822157006071906487` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074564 has offset 0).

The definition of A074564 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n+5^n+9^n` (program `A074564.P6822157006071906487`, by `A074564.P6822157006071906487.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074564.P6822157006071906487

`4^n+5^n+9^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074564

/-- `4^n+5^n+9^n` -/
def P6822157006071906487.Spec : Prop :=
  ∀ n, (P6822157006071906487.a n : ℤ) = A074564 n

theorem P6822157006071906487.correct : P6822157006071906487.Spec := by
  intro n
  simp only [A074564]

end A074564

/-! ## A074564.P2815310337659341249

`or(2, A074515(n)+A024049(n))`
-/

namespace A074564.P2815310337659341249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A074515 n + A024049 n)

end

end A074564.P2815310337659341249

namespace A074564

/-- `or(2, A074515(n)+A024049(n))` -/
def P2815310337659341249.Spec : Prop :=
  ∀ n, P2815310337659341249.a n = A074564 n

end A074564

/-! ## A074564.P10585844820939236892

`(A074515(n)+A024049(n))*char[A002487(n)]`
-/

namespace A074564.P10585844820939236892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074515 n + A024049 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A074564.P10585844820939236892

namespace A074564

/-- `(A074515(n)+A024049(n))*char[A002487(n)]` -/
def P10585844820939236892.Spec : Prop :=
  ∀ n, P10585844820939236892.a n = A074564 n

end A074564

/-! ## A074564.P9453091741501550352

`(A074515(n)+A024049(n))*char[A028242(n)]`
-/

namespace A074564.P9453091741501550352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074515 n + A024049 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A074564.P9453091741501550352

namespace A074564

/-- `(A074515(n)+A024049(n))*char[A028242(n)]` -/
def P9453091741501550352.Spec : Prop :=
  ∀ n, P9453091741501550352.a n = A074564 n

end A074564

/-! ## A074564.P8101187535252995281

`(A074515(n)+A024049(n))*char[A057505(n)]`
-/

namespace A074564.P8101187535252995281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057505 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074515 n + A024049 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A074564.P8101187535252995281

namespace A074564

/-- `(A074515(n)+A024049(n))*char[A057505(n)]` -/
def P8101187535252995281.Spec : Prop :=
  ∀ n, P8101187535252995281.a n = A074564 n

end A074564

/-! ## A074564.P7584045851016215204

`(A074515(n)+A024049(n))*char[A294317(n)]`
-/

namespace A074564.P7584045851016215204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294317 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074515 n + A024049 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A074564.P7584045851016215204

namespace A074564

/-- `(A074515(n)+A024049(n))*char[A294317(n)]` -/
def P7584045851016215204.Spec : Prop :=
  ∀ n, P7584045851016215204.a n = A074564 n

end A074564

/-! ## A074564.P13355534674165441872

`(A074515(n)+A024049(n))*char[A340478(n)]`
-/

namespace A074564.P13355534674165441872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340478 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074515 n + A024049 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A074564.P13355534674165441872

namespace A074564

/-- `(A074515(n)+A024049(n))*char[A340478(n)]` -/
def P13355534674165441872.Spec : Prop :=
  ∀ n, P13355534674165441872.a n = A074564 n

end A074564

/-! ## A074564.P17216029913560909769

`(A074515(n)+A024049(n))*char[A022446(n)-1]`
-/

namespace A074564.P17216029913560909769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022446 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074515 n + A024049 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A074564.P17216029913560909769

namespace A074564

/-- `(A074515(n)+A024049(n))*char[A022446(n)-1]` -/
def P17216029913560909769.Spec : Prop :=
  ∀ n, P17216029913560909769.a n = A074564 n

end A074564

/-! ## A074564.P7802878106672315095

`(A074515(n)+A024049(n))*char[A048673(n+1)-1]`
-/

namespace A074564.P7802878106672315095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074515 n + A024049 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A074564.P7802878106672315095

namespace A074564

/-- `(A074515(n)+A024049(n))*char[A048673(n+1)-1]` -/
def P7802878106672315095.Spec : Prop :=
  ∀ n, P7802878106672315095.a n = A074564 n

end A074564

/-! ## A074564.P16957778558367258768

`(A074515(n)+A024049(n))*A014963(A000217(n+5))`
-/

namespace A074564.P16957778558367258768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074515 n + A024049 n) * A014963 (A000217 (n + 5)).toNat

end

end A074564.P16957778558367258768

namespace A074564

/-- `(A074515(n)+A024049(n))*A014963(A000217(n+5))` -/
def P16957778558367258768.Spec : Prop :=
  ∀ n, P16957778558367258768.a n = A074564 n

end A074564

/-!
# A074565: a(n) = 4^n + 6^n + 7^n.

The programs for A074565, the canonical program `A074565.P9575054058067106378` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074565 has offset 0).

The definition of A074565 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n+6^n+7^n` (program `A074565.P9575054058067106378`, by `A074565.P9575054058067106378.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074565.P9575054058067106378

`4^n+6^n+7^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074565

/-- `4^n+6^n+7^n` -/
def P9575054058067106378.Spec : Prop :=
  ∀ n, (P9575054058067106378.a n : ℤ) = A074565 n

theorem P9575054058067106378.correct : P9575054058067106378.Spec := by
  intro n
  simp only [A074565]

end A074565

/-! ## A074565.P18132180473581578419

`or(1, A074619(n)+4^n)`
-/

namespace A074565.P18132180473581578419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A074619 n + (4 ^ n : ℤ))

end

end A074565.P18132180473581578419

namespace A074565

/-- `or(1, A074619(n)+4^n)` -/
def P18132180473581578419.Spec : Prop :=
  ∀ n, P18132180473581578419.a n = A074565 n

end A074565

/-! ## A074565.P11250080122199374565

`(A074619(n)+A000302(n))/A033999(n+1)²`
-/

namespace A074565.P11250080122199374565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074619 n + A000302 n : ℚ) / (A033999 (n + 1) ^ 2 : ℚ)

end

end A074565.P11250080122199374565

namespace A074565

/-- `(A074619(n)+A000302(n))/A033999(n+1)²` -/
def P11250080122199374565.Spec : Prop :=
  ∀ n, P11250080122199374565.a n = (A074565 n : ℚ)

end A074565

/-! ## A074565.P814180267514549811

`(A074619(n)+A000302(n))/A062157(n+1)²`
-/

namespace A074565.P814180267514549811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074619 n + A000302 n : ℚ) / (A062157 (n + 1) ^ 2 : ℚ)

end

end A074565.P814180267514549811

namespace A074565

/-- `(A074619(n)+A000302(n))/A062157(n+1)²` -/
def P814180267514549811.Spec : Prop :=
  ∀ n, P814180267514549811.a n = (A074565 n : ℚ)

end A074565

/-! ## A074565.P12687502932115224573

`or(1, A000079(n)²-(A000244(n)-A074555(n)))`
-/

namespace A074565.P12687502932115224573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000079 n ^ 2 - (A000244 n - A074555 n))

end

end A074565.P12687502932115224573

namespace A074565

/-- `or(1, A000079(n)²-(A000244(n)-A074555(n)))` -/
def P12687502932115224573.Spec : Prop :=
  ∀ n, P12687502932115224573.a n = A074565 n

end A074565

/-! ## A074565.P12745241521636379424

`abs(A062394(n)-(A118004(n)-A155656(n)))`
-/

namespace A074565.P12745241521636379424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062394 n - (A118004 n - A155656 n)|

end

end A074565.P12745241521636379424

namespace A074565

/-- `abs(A062394(n)-(A118004(n)-A155656(n)))` -/
def P12745241521636379424.Spec : Prop :=
  ∀ n, P12745241521636379424.a n = A074565 n

end A074565

/-!
# A074566: a(n) = 4^n + 6^n + 8^n.

The programs for A074566, the canonical program `A074566.P13156039349728247320` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074566 has offset 0).

The definition of A074566 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n+6^n+8^n` (program `A074566.P13156039349728247320`, by `A074566.P13156039349728247320.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074566.P13156039349728247320

`4^n+6^n+8^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074566

/-- `4^n+6^n+8^n` -/
def P13156039349728247320.Spec : Prop :=
  ∀ n, (P13156039349728247320.a n : ℤ) = A074566 n

theorem P13156039349728247320.correct : P13156039349728247320.Spec := by
  intro n
  simp only [A074566]

end A074566

/-! ## A074566.P4890920867194041730

`2^n*A074526(n)`
-/

namespace A074566.P4890920867194041730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A074526 n

end

end A074566.P4890920867194041730

namespace A074566

/-- `2^n*A074526(n)` -/
def P4890920867194041730.Spec : Prop :=
  ∀ n, P4890920867194041730.a n = A074566 n

end A074566

/-! ## A074566.P6064860662662235173

`lcm(A000079(n), A074526(n))`
-/

namespace A074566.P6064860662662235173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A074526 n)

end

end A074566.P6064860662662235173

namespace A074566

/-- `lcm(A000079(n), A074526(n))` -/
def P6064860662662235173.Spec : Prop :=
  ∀ n, (P6064860662662235173.a n : ℤ) = A074566 n

end A074566

/-! ## A074566.P14443153664613028104

`(A001551(n)-1)*A000079(n)`
-/

namespace A074566.P14443153664613028104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001551 n - 1) * A000079 n

end

end A074566.P14443153664613028104

namespace A074566

/-- `(A001551(n)-1)*A000079(n)` -/
def P14443153664613028104.Spec : Prop :=
  ∀ n, P14443153664613028104.a n = A074566 n

end A074566

/-! ## A074566.P14562564203512592537

`(A074605(n)+A000079(n))*A000079(n)`
-/

namespace A074566.P14562564203512592537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074605 n + A000079 n) * A000079 n

end

end A074566.P14562564203512592537

namespace A074566

/-- `(A074605(n)+A000079(n))*A000079(n)` -/
def P14562564203512592537.Spec : Prop :=
  ∀ n, P14562564203512592537.a n = A074566 n

end A074566

/-! ## A074566.P16883595006096142420

`A074526(n)/A001576(n)*A074535(n)`
-/

namespace A074566.P16883595006096142420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074526 n : ℚ) / (A001576 n : ℚ) * (A074535 n : ℚ)

end

end A074566.P16883595006096142420

namespace A074566

/-- `A074526(n)/A001576(n)*A074535(n)` -/
def P16883595006096142420.Spec : Prop :=
  ∀ n, P16883595006096142420.a n = (A074566 n : ℚ)

end A074566

/-! ## A074566.P9221738525647655784

`(A007689(n)+A000079(n)²)*A000079(n)`
-/

namespace A074566.P9221738525647655784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007689 n + A000079 n ^ 2) * A000079 n

end

end A074566.P9221738525647655784

namespace A074566

/-- `(A007689(n)+A000079(n)²)*A000079(n)` -/
def P9221738525647655784.Spec : Prop :=
  ∀ n, P9221738525647655784.a n = A074566 n

end A074566

/-! ## A074566.P15149398026382132094

`(A000079(n)+Δ[A085282(n)])*A000079(n)`
-/

namespace A074566.P15149398026382132094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085282 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 n + (f1 (n + 1) - f1 n)) * A000079 n

end

end A074566.P15149398026382132094

namespace A074566

/-- `(A000079(n)+Δ[A085282(n)])*A000079(n)` -/
def P15149398026382132094.Spec : Prop :=
  ∀ n, P15149398026382132094.a n = A074566 n

end A074566

/-! ## A074566.P17416195904949184096

`(A085281(n+1)+A011782(n+1)²)*A011782(n+1)`
-/

namespace A074566.P17416195904949184096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A085281 (n + 1) + A011782 (n + 1) ^ 2) * A011782 (n + 1)

end

end A074566.P17416195904949184096

namespace A074566

/-- `(A085281(n+1)+A011782(n+1)²)*A011782(n+1)` -/
def P17416195904949184096.Spec : Prop :=
  ∀ n, P17416195904949184096.a n = A074566 n

end A074566

/-! ## A074566.P16089044325764536906

`(A131577(n+1)²+A085281(n+1))*A131577(n+1)`
-/

namespace A074566.P16089044325764536906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131577 (n + 1) ^ 2 + A085281 (n + 1)) * A131577 (n + 1)

end

end A074566.P16089044325764536906

namespace A074566

/-- `(A131577(n+1)²+A085281(n+1))*A131577(n+1)` -/
def P16089044325764536906.Spec : Prop :=
  ∀ n, P16089044325764536906.a n = A074566 n

end A074566

/-! ## A074566.P11055940346155687029

`(A085281(n+1)+A011782(2*n+1))*A011782(n+1)`
-/

namespace A074566.P11055940346155687029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A085281 (n + 1) + A011782 (2 * n + 1)) * A011782 (n + 1)

end

end A074566.P11055940346155687029

namespace A074566

/-- `(A085281(n+1)+A011782(2*n+1))*A011782(n+1)` -/
def P11055940346155687029.Spec : Prop :=
  ∀ n, P11055940346155687029.a n = A074566 n

end A074566

/-! ## A074566.P15242369638877350813

`(A131577(2*n+1)+A085281(n+1))*A131577(n+1)`
-/

namespace A074566.P15242369638877350813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131577 (2 * n + 1) + A085281 (n + 1)) * A131577 (n + 1)

end

end A074566.P15242369638877350813

namespace A074566

/-- `(A131577(2*n+1)+A085281(n+1))*A131577(n+1)` -/
def P15242369638877350813.Spec : Prop :=
  ∀ n, P15242369638877350813.a n = A074566 n

end A074566

/-!
# A074567: a(n) = 4^n + 6^n + 9^n.

The programs for A074567, the canonical program `A074567.P9244853333748286242` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074567 has offset 0).

The definition of A074567 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n+6^n+9^n` (program `A074567.P9244853333748286242`, by `A074567.P9244853333748286242.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074567.P9244853333748286242

`4^n+6^n+9^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074567

/-- `4^n+6^n+9^n` -/
def P9244853333748286242.Spec : Prop :=
  ∀ n, (P9244853333748286242.a n : ℤ) = A074567 n

theorem P9244853333748286242.correct : P9244853333748286242.Spec := by
  intro n
  simp only [A074567]

end A074567

/-! ## A074567.P256688766208681767

`root(A074557(n)+A005061(n), 2)²`
-/

namespace A074567.P256688766208681767
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A074557 n + A005061 n : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A074567.P256688766208681767

namespace A074567

/-- `root(A074557(n)+A005061(n), 2)²` -/
def P256688766208681767.Spec : Prop :=
  ∀ n, P256688766208681767.a n = (A074567 n : ℝ)

end A074567

/-! ## A074567.P3602224139077708750

`(A074557(n)+A005061(n))%A169724(n+1)`
-/

namespace A074567.P3602224139077708750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074557 n + A005061 n) (A169724 (n + 1))

end

end A074567.P3602224139077708750

namespace A074567

/-- `(A074557(n)+A005061(n))%A169724(n+1)` -/
def P3602224139077708750.Spec : Prop :=
  ∀ n, P3602224139077708750.a n = A074567 n

end A074567

/-! ## A074567.P7102532799427865474

`(A074557(n)+A005061(n))*A293015(∑[n])`
-/

namespace A074567.P7102532799427865474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074557 n + A005061 n) * A293015 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074567.P7102532799427865474

namespace A074567

/-- `(A074557(n)+A005061(n))*A293015(∑[n])` -/
def P7102532799427865474.Spec : Prop :=
  ∀ n, P7102532799427865474.a n = A074567 n

end A074567

/-! ## A074567.P12996646749668249163

`(A074557(n)+A005061(n))*A145460(∑[n])`
-/

namespace A074567.P12996646749668249163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074557 n + A005061 n) * A145460 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074567.P12996646749668249163

namespace A074567

/-- `(A074557(n)+A005061(n))*A145460(∑[n])` -/
def P12996646749668249163.Spec : Prop :=
  ∀ n, P12996646749668249163.a n = A074567 n

end A074567

/-!
# A074568: a(n) = 4^n + 7^n + 8^n.

The programs for A074568, the canonical program `A074568.P7662103537063629659` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074568 has offset 0).

The definition of A074568 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n+7^n+8^n` (program `A074568.P7662103537063629659`, by `A074568.P7662103537063629659.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074568.P7662103537063629659

`4^n+7^n+8^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074568

/-- `4^n+7^n+8^n` -/
def P7662103537063629659.Spec : Prop :=
  ∀ n, (P7662103537063629659.a n : ℤ) = A074568 n

theorem P7662103537063629659.correct : P7662103537063629659.Spec := by
  intro n
  simp only [A074568]

end A074568

/-! ## A074568.P17958569065675380353

`xor(1, A074523(n)+A024036(n)-1)`
-/

namespace A074568.P17958569065675380353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A074523 n + A024036 n - 1)

end

end A074568.P17958569065675380353

namespace A074568

/-- `xor(1, A074523(n)+A024036(n)-1)` -/
def P17958569065675380353.Spec : Prop :=
  ∀ n, P17958569065675380353.a n = A074568 n

end A074568

/-! ## A074568.P13768119425243790750

`(A074523(n)+A024036(n))*A257075(n)²`
-/

namespace A074568.P13768119425243790750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074523 n + A024036 n) * A257075 n ^ 2

end

end A074568.P13768119425243790750

namespace A074568

/-- `(A074523(n)+A024036(n))*A257075(n)²` -/
def P13768119425243790750.Spec : Prop :=
  ∀ n, P13768119425243790750.a n = A074568 n

end A074568

/-! ## A074568.P7014594329160752810

`(A074523(n)+A024036(n))*dr(A106400(n))`
-/

namespace A074568.P7014594329160752810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074523 n + A024036 n) * (SequenceMachineLib.digitalRoot (A106400 n) : ℤ)

end

end A074568.P7014594329160752810

namespace A074568

/-- `(A074523(n)+A024036(n))*dr(A106400(n))` -/
def P7014594329160752810.Spec : Prop :=
  ∀ n, P7014594329160752810.a n = A074568 n

end A074568

/-! ## A074568.P13620798169413875000

`(A074523(n)+A024036(n))*char[A001057(n)]`
-/

namespace A074568.P13620798169413875000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074523 n + A024036 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A074568.P13620798169413875000

namespace A074568

/-- `(A074523(n)+A024036(n))*char[A001057(n)]` -/
def P13620798169413875000.Spec : Prop :=
  ∀ n, P13620798169413875000.a n = A074568 n

end A074568

/-! ## A074568.P4427457672960099136

`abs(A074580(n)-A118004(n))`
-/

namespace A074568.P4427457672960099136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074580 n - A118004 n|

end

end A074568.P4427457672960099136

namespace A074568

/-- `abs(A074580(n)-A118004(n))` -/
def P4427457672960099136.Spec : Prop :=
  ∀ n, P4427457672960099136.a n = A074568 n

end A074568

/-! ## A074568.P9925406145210253689

`or(A074580(n)-A118004(n), A000007(n))`
-/

namespace A074568.P9925406145210253689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A074580 n - A118004 n) (A000007 n)

end

end A074568.P9925406145210253689

namespace A074568

/-- `or(A074580(n)-A118004(n), A000007(n))` -/
def P9925406145210253689.Spec : Prop :=
  ∀ n, P9925406145210253689.a n = A074568 n

end A074568

/-! ## A074568.P3552433623707438114

`or(A074580(n)-A118004(n), A000035(n))`
-/

namespace A074568.P3552433623707438114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A074580 n - A118004 n) (A000035 n)

end

end A074568.P3552433623707438114

namespace A074568

/-- `or(A074580(n)-A118004(n), A000035(n))` -/
def P3552433623707438114.Spec : Prop :=
  ∀ n, P3552433623707438114.a n = A074568 n

end A074568

/-! ## A074568.P13463160635146150533

`(A074580(n)-A118004(n))*A033999(n)²`
-/

namespace A074568.P13463160635146150533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074580 n - A118004 n) * A033999 n ^ 2

end

end A074568.P13463160635146150533

namespace A074568

/-- `(A074580(n)-A118004(n))*A033999(n)²` -/
def P13463160635146150533.Spec : Prop :=
  ∀ n, P13463160635146150533.a n = A074568 n

end A074568

/-! ## A074568.P7018308372234709130

`(A074580(n)-A118004(n))*A007318(∑[n])`
-/

namespace A074568.P7018308372234709130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074580 n - A118004 n) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074568.P7018308372234709130

namespace A074568

/-- `(A074580(n)-A118004(n))*A007318(∑[n])` -/
def P7018308372234709130.Spec : Prop :=
  ∀ n, P7018308372234709130.a n = A074568 n

end A074568

/-! ## A074568.P673115558431444973

`(A074580(n)-A118004(n))*A057427(n+1)`
-/

namespace A074568.P673115558431444973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074580 n - A118004 n) * A057427 (n + 1)

end

end A074568.P673115558431444973

namespace A074568

/-- `(A074580(n)-A118004(n))*A057427(n+1)` -/
def P673115558431444973.Spec : Prop :=
  ∀ n, P673115558431444973.a n = A074568 n

end A074568

/-! ## A074568.P6707579497654310471

`or(A074580(n)-A118004(n), A001511(n+1))`
-/

namespace A074568.P6707579497654310471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A074580 n - A118004 n) (A001511 (n + 1))

end

end A074568.P6707579497654310471

namespace A074568

/-- `or(A074580(n)-A118004(n), A001511(n+1))` -/
def P6707579497654310471.Spec : Prop :=
  ∀ n, P6707579497654310471.a n = A074568 n

end A074568

/-! ## A074568.P6130315242819974717

`(A074580(n)-A118004(n))*A014963(6*(n+1))`
-/

namespace A074568.P6130315242819974717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074580 n - A118004 n) * A014963 (6 * (n + 1))

end

end A074568.P6130315242819974717

namespace A074568

/-- `(A074580(n)-A118004(n))*A014963(6*(n+1))` -/
def P6130315242819974717.Spec : Prop :=
  ∀ n, P6130315242819974717.a n = A074568 n

end A074568

/-! ## A074568.P399658977060999573

`(A074580(n)-A118004(n))*(-1%A001567(n+1))²`
-/

namespace A074568.P399658977060999573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074580 n - A118004 n) * Int.tmod (-1) (A001567 (n + 1)) ^ 2

end

end A074568.P399658977060999573

namespace A074568

/-- `(A074580(n)-A118004(n))*(-1%A001567(n+1))²` -/
def P399658977060999573.Spec : Prop :=
  ∀ n, P399658977060999573.a n = A074568 n

end A074568

/-! ## A074568.P13681743165650795955

`(A074580(n)-A118004(n))*char[A014473(n)]`
-/

namespace A074568.P13681743165650795955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074580 n - A118004 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A074568.P13681743165650795955

namespace A074568

/-- `(A074580(n)-A118004(n))*char[A014473(n)]` -/
def P13681743165650795955.Spec : Prop :=
  ∀ n, P13681743165650795955.a n = A074568 n

end A074568

/-!
# A074569: a(n) = 4^n + 7^n + 9^n.

The programs for A074569, the canonical program `A074569.P12714360922354287209` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074569 has offset 0).

The definition of A074569 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n+7^n+9^n` (program `A074569.P12714360922354287209`, by `A074569.P12714360922354287209.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074569.P12714360922354287209

`4^n+7^n+9^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074569

/-- `4^n+7^n+9^n` -/
def P12714360922354287209.Spec : Prop :=
  ∀ n, (P12714360922354287209.a n : ℤ) = A074569 n

theorem P12714360922354287209.correct : P12714360922354287209.Spec := by
  intro n
  simp only [A074569]

end A074569

/-! ## A074569.P9357726245002964235

`abs(A059409(n)-A074580(n))`
-/

namespace A074569.P9357726245002964235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A059409 n - A074580 n|

end

end A074569.P9357726245002964235

namespace A074569

/-- `abs(A059409(n)-A074580(n))` -/
def P9357726245002964235.Spec : Prop :=
  ∀ n, P9357726245002964235.a n = A074569 n

end A074569

/-! ## A074569.P5554720486560672282

`Δ[A002452(n)+A047852(n)+A047849(n)]`
-/

namespace A074569.P5554720486560672282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002452 n + (A047852 n + A047849 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074569.P5554720486560672282

namespace A074569

/-- `Δ[A002452(n)+A047852(n)+A047849(n)]` -/
def P5554720486560672282.Spec : Prop :=
  ∀ n, P5554720486560672282.a n = A074569 n

end A074569

/-! ## A074569.P8735085261148385220

`(A059409(n)-A074580(n))*A008683(A092627(n+1))`
-/

namespace A074569.P8735085261148385220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059409 n - A074580 n) * A008683 (A092627 (n + 1)).toNat

end

end A074569.P8735085261148385220

namespace A074569

/-- `(A059409(n)-A074580(n))*A008683(A092627(n+1))` -/
def P8735085261148385220.Spec : Prop :=
  ∀ n, P8735085261148385220.a n = A074569 n

end A074569

/-! ## A074569.P1150671407783042345

`(A000217(n)-A000124(n))*(A059409(n)-A074580(n))`
-/

namespace A074569.P1150671407783042345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 n - A000124 n) * (A059409 n - A074580 n)

end

end A074569.P1150671407783042345

namespace A074569

/-- `(A000217(n)-A000124(n))*(A059409(n)-A074580(n))` -/
def P1150671407783042345.Spec : Prop :=
  ∀ n, P1150671407783042345.a n = A074569 n

end A074569

/-!
# A074570: a(n) = 4^n + 8^n + 9^n.

The programs for A074570, the canonical program `A074570.P5306716372487342324` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074570 has offset 0).

The definition of A074570 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n+8^n+9^n` (program `A074570.P5306716372487342324`, by `A074570.P5306716372487342324.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074570.P5306716372487342324

`4^n+8^n+9^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074570

/-- `4^n+8^n+9^n` -/
def P5306716372487342324.Spec : Prop :=
  ∀ n, (P5306716372487342324.a n : ℤ) = A074570 n

theorem P5306716372487342324.correct : P5306716372487342324.Spec := by
  intro n
  simp only [A074570]

end A074570

/-! ## A074570.P4607172748723888152

`or(1, A074624(n)+A000302(n))`
-/

namespace A074570.P4607172748723888152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A074624 n + A000302 n)

end

end A074570.P4607172748723888152

namespace A074570

/-- `or(1, A074624(n)+A000302(n))` -/
def P4607172748723888152.Spec : Prop :=
  ∀ n, P4607172748723888152.a n = A074570 n

end A074570

/-! ## A074570.P713487308066461165

`(A074624(n)+A000302(n))*char[A061579(n)]`
-/

namespace A074570.P713487308066461165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074624 n + A000302 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A074570.P713487308066461165

namespace A074570

/-- `(A074624(n)+A000302(n))*char[A061579(n)]` -/
def P713487308066461165.Spec : Prop :=
  ∀ n, P713487308066461165.a n = A074570 n

end A074570

/-! ## A074570.P15202088987510546328

`(A074624(n)+A000302(n))*A001222(A023201(n+1))`
-/

namespace A074570.P15202088987510546328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074624 n + A000302 n) * A001222 (A023201 (n + 1)).toNat

end

end A074570.P15202088987510546328

namespace A074570

/-- `(A074624(n)+A000302(n))*A001222(A023201(n+1))` -/
def P15202088987510546328.Spec : Prop :=
  ∀ n, P15202088987510546328.a n = A074570 n

end A074570

/-! ## A074570.P11669678485351885721

`(A074624(n)+A000302(n))*A007318(A000217(n+10))`
-/

namespace A074570.P11669678485351885721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074624 n + A000302 n) * A007318 (A000217 (n + 10)).toNat

end

end A074570.P11669678485351885721

namespace A074570

/-- `(A074624(n)+A000302(n))*A007318(A000217(n+10))` -/
def P11669678485351885721.Spec : Prop :=
  ∀ n, P11669678485351885721.a n = A074570 n

end A074570

/-! ## A074570.P7739910587690713996

`(A074624(n)+A000302(n))*A000041(A151933(n))`
-/

namespace A074570.P7739910587690713996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074624 n + A000302 n) * A000041 (A151933 n).toNat

end

end A074570.P7739910587690713996

namespace A074570

/-- `(A074624(n)+A000302(n))*A000041(A151933(n))` -/
def P7739910587690713996.Spec : Prop :=
  ∀ n, P7739910587690713996.a n = A074570 n

end A074570

/-!
# A074571: a(n) = 5^n + 6^n + 7^n.

The programs for A074571, the canonical program `A074571.P12377823437741786856` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074571 has offset 0).

The definition of A074571 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n+6^n+7^n` (program `A074571.P12377823437741786856`, by `A074571.P12377823437741786856.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074571.P12377823437741786856

`5^n+6^n+7^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074571

/-- `5^n+6^n+7^n` -/
def P12377823437741786856.Spec : Prop :=
  ∀ n, (P12377823437741786856.a n : ℤ) = A074571 n

theorem P12377823437741786856.correct : P12377823437741786856.Spec := by
  intro n
  simp only [A074571]

end A074571

/-! ## A074571.P1311042482784531553

`abs(A001551(n)-A001554(n))`
-/

namespace A074571.P1311042482784531553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001551 n - A001554 n|

end

end A074571.P1311042482784531553

namespace A074571

/-- `abs(A001551(n)-A001554(n))` -/
def P1311042482784531553.Spec : Prop :=
  ∀ n, P1311042482784531553.a n = A074571 n

end A074571

/-! ## A074571.P5863128598601655025

`-or(A001551(n)-A001554(n), A000007(n))`
-/

namespace A074571.P5863128598601655025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (A001551 n - A001554 n) (A000007 n)

end

end A074571.P5863128598601655025

namespace A074571

/-- `-or(A001551(n)-A001554(n), A000007(n))` -/
def P5863128598601655025.Spec : Prop :=
  ∀ n, P5863128598601655025.a n = A074571 n

end A074571

/-! ## A074571.P2290370461448953889

`(A001554(n)-A001551(n))*A000034(2*n)`
-/

namespace A074571.P2290370461448953889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001554 n - A001551 n) * A000034 (2 * n)

end

end A074571.P2290370461448953889

namespace A074571

/-- `(A001554(n)-A001551(n))*A000034(2*n)` -/
def P2290370461448953889.Spec : Prop :=
  ∀ n, P2290370461448953889.a n = A074571 n

end A074571

/-! ## A074571.P12149168435136739076

`(A001551(n)-A001554(n))*A008683(A088175(n+1))`
-/

namespace A074571.P12149168435136739076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001551 n - A001554 n) * A008683 (A088175 (n + 1)).toNat

end

end A074571.P12149168435136739076

namespace A074571

/-- `(A001551(n)-A001554(n))*A008683(A088175(n+1))` -/
def P12149168435136739076.Spec : Prop :=
  ∀ n, P12149168435136739076.a n = A074571 n

end A074571

/-! ## A074571.P13956900692710855167

`-((A001551(n)-A001554(n))%A280215(n+1))`
-/

namespace A074571.P13956900692710855167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A001551 n - A001554 n) (A280215 (n + 1))

end

end A074571.P13956900692710855167

namespace A074571

/-- `-((A001551(n)-A001554(n))%A280215(n+1))` -/
def P13956900692710855167.Spec : Prop :=
  ∀ n, P13956900692710855167.a n = A074571 n

end A074571

/-!
# A074572: a(n) = 5^n + 6^n + 8^n.

The programs for A074572, the canonical program `A074572.P16324031131915373030` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074572 has offset 0).

The definition of A074572 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n+6^n+8^n` (program `A074572.P16324031131915373030`, by `A074572.P16324031131915373030.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074572.P16324031131915373030

`5^n+6^n+8^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074572

/-- `5^n+6^n+8^n` -/
def P16324031131915373030.Spec : Prop :=
  ∀ n, (P16324031131915373030.a n : ℤ) = A074572 n

theorem P16324031131915373030.correct : P16324031131915373030.Spec := by
  intro n
  simp only [A074572]

end A074572

/-! ## A074572.P1552226074042052203

`abs(A074577(n)-A121213(n))`
-/

namespace A074572.P1552226074042052203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074577 n - A121213 n|

end

end A074572.P1552226074042052203

namespace A074572

/-- `abs(A074577(n)-A121213(n))` -/
def P1552226074042052203.Spec : Prop :=
  ∀ n, P1552226074042052203.a n = A074572 n

end A074572

/-! ## A074572.P7543985792191793297

`or(1, A155646(n)+A034474(n))`
-/

namespace A074572.P7543985792191793297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A155646 n + A034474 n)

end

end A074572.P7543985792191793297

namespace A074572

/-- `or(1, A155646(n)+A034474(n))` -/
def P7543985792191793297.Spec : Prop :=
  ∀ n, P7543985792191793297.a n = A074572 n

end A074572

/-! ## A074572.P2685831109931867256

`xor(1, A074620(n)+A024049(n))`
-/

namespace A074572.P2685831109931867256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A074620 n + A024049 n)

end

end A074572.P2685831109931867256

namespace A074572

/-- `xor(1, A074620(n)+A024049(n))` -/
def P2685831109931867256.Spec : Prop :=
  ∀ n, P2685831109931867256.a n = A074572 n

end A074572

/-! ## A074572.P10047906368123156711

`(A074620(n)+5^n)*A007318(∑[n])`
-/

namespace A074572.P10047906368123156711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074620 n + (5 ^ n : ℤ)) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074572.P10047906368123156711

namespace A074572

/-- `(A074620(n)+5^n)*A007318(∑[n])` -/
def P10047906368123156711.Spec : Prop :=
  ∀ n, P10047906368123156711.a n = A074572 n

end A074572

/-! ## A074572.P12610050875335463820

`abs(A016185(n)-A074573(n))`
-/

namespace A074572.P12610050875335463820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016185 n - A074573 n|

end

end A074572.P12610050875335463820

namespace A074572

/-- `abs(A016185(n)-A074573(n))` -/
def P12610050875335463820.Spec : Prop :=
  ∀ n, P12610050875335463820.a n = A074572 n

end A074572

/-!
# A074573: a(n) = 5^n + 6^n + 9^n.

The programs for A074573, the canonical program `A074573.P1298338052645532930` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074573 has offset 0).

The definition of A074573 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n+6^n+9^n` (program `A074573.P1298338052645532930`, by `A074573.P1298338052645532930.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074573.P1298338052645532930

`5^n+6^n+9^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074573

/-- `5^n+6^n+9^n` -/
def P1298338052645532930.Spec : Prop :=
  ∀ n, (P1298338052645532930.a n : ℤ) = A074573 n

theorem P1298338052645532930.correct : P1298338052645532930.Spec := by
  intro n
  simp only [A074573]

end A074573

/-! ## A074573.P12518712160195280035

`abs(A074578(n)-A121213(n))`
-/

namespace A074573.P12518712160195280035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074578 n - A121213 n|

end

end A074573.P12518712160195280035

namespace A074573

/-- `abs(A074578(n)-A121213(n))` -/
def P12518712160195280035.Spec : Prop :=
  ∀ n, P12518712160195280035.a n = A074573 n

end A074573

/-! ## A074573.P1377832833685384199

`(A074578(n)-A121213(n))*A007318(A000096(n+1))`
-/

namespace A074573.P1377832833685384199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074578 n - A121213 n) * A007318 (A000096 (n + 1)).toNat

end

end A074573.P1377832833685384199

namespace A074573

/-- `(A074578(n)-A121213(n))*A007318(A000096(n+1))` -/
def P1377832833685384199.Spec : Prop :=
  ∀ n, P1377832833685384199.a n = A074573 n

end A074573

/-! ## A074573.P391048880889183742

`(A074578(n)-A121213(n))*A050782(A263992(n+1))`
-/

namespace A074573.P391048880889183742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074578 n - A121213 n) * A050782 (A263992 (n + 1)).toNat

end

end A074573.P391048880889183742

namespace A074573

/-- `(A074578(n)-A121213(n))*A050782(A263992(n+1))` -/
def P391048880889183742.Spec : Prop :=
  ∀ n, P391048880889183742.a n = A074573 n

end A074573

/-! ## A074573.P16510625752014273827

`(A074578(n)-A121213(n))%(A125403(n)+15)`
-/

namespace A074573.P16510625752014273827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074578 n - A121213 n) (A125403 n + 15)

end

end A074573.P16510625752014273827

namespace A074573

/-- `(A074578(n)-A121213(n))%(A125403(n)+15)` -/
def P16510625752014273827.Spec : Prop :=
  ∀ n, P16510625752014273827.a n = A074573 n

end A074573

/-! ## A074573.P6019062116418341379

`(A074578(n)-A121213(n))*A014963(A128253(n+1))`
-/

namespace A074573.P6019062116418341379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074578 n - A121213 n) * A014963 (A128253 (n + 1)).toNat

end

end A074573.P6019062116418341379

namespace A074573

/-- `(A074578(n)-A121213(n))*A014963(A128253(n+1))` -/
def P6019062116418341379.Spec : Prop :=
  ∀ n, P6019062116418341379.a n = A074573 n

end A074573

/-!
# A074574: a(n) = 5^n + 7^n + 8^n.

The programs for A074574, the canonical program `A074574.P2464668067127189727` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074574 has offset 0).

The definition of A074574 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n+7^n+8^n` (program `A074574.P2464668067127189727`, by `A074574.P2464668067127189727.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074574.P2464668067127189727

`5^n+7^n+8^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074574

/-- `5^n+7^n+8^n` -/
def P2464668067127189727.Spec : Prop :=
  ∀ n, (P2464668067127189727.a n : ℤ) = A074574 n

theorem P2464668067127189727.correct : P2464668067127189727.Spec := by
  intro n
  simp only [A074574]

end A074574

/-! ## A074574.P11387894155909751629

`Δ[A003463(n)+A023001(n)+A023000(n)]`
-/

namespace A074574.P11387894155909751629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n + (A023001 n + A023000 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074574.P11387894155909751629

namespace A074574

/-- `Δ[A003463(n)+A023001(n)+A023000(n)]` -/
def P11387894155909751629.Spec : Prop :=
  ∀ n, P11387894155909751629.a n = A074574 n

end A074574

/-! ## A074574.P9641715300860937806

`(A074523(n)+A024049(n))*A007318(∑[n])`
-/

namespace A074574.P9641715300860937806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074523 n + A024049 n) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074574.P9641715300860937806

namespace A074574

/-- `(A074523(n)+A024049(n))*A007318(∑[n])` -/
def P9641715300860937806.Spec : Prop :=
  ∀ n, P9641715300860937806.a n = A074574 n

end A074574

/-! ## A074574.P3007474508970875048

`(A074523(n)+A024049(n))*and(1, A198644(n))`
-/

namespace A074574.P3007474508970875048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074523 n + A024049 n) * Int.land 1 (A198644 n)

end

end A074574.P3007474508970875048

namespace A074574

/-- `(A074523(n)+A024049(n))*and(1, A198644(n))` -/
def P3007474508970875048.Spec : Prop :=
  ∀ n, P3007474508970875048.a n = A074574 n

end A074574

/-! ## A074574.P4395189514113424765

`(A074523(n)+A024049(n))*A000005(gcd(n, n+1))`
-/

namespace A074574.P4395189514113424765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074523 n + A024049 n) * A000005 (Nat.gcd n (n + 1))

end

end A074574.P4395189514113424765

namespace A074574

/-- `(A074523(n)+A024049(n))*A000005(gcd(n, n+1))` -/
def P4395189514113424765.Spec : Prop :=
  ∀ n, P4395189514113424765.a n = A074574 n

end A074574

/-! ## A074574.P17427966918474006191

`(A074523(n)+A024049(n))*A001222(A256267(n+1))`
-/

namespace A074574.P17427966918474006191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074523 n + A024049 n) * A001222 (A256267 (n + 1)).toNat

end

end A074574.P17427966918474006191

namespace A074574

/-- `(A074523(n)+A024049(n))*A001222(A256267(n+1))` -/
def P17427966918474006191.Spec : Prop :=
  ∀ n, P17427966918474006191.a n = A074574 n

end A074574

/-! ## A074574.P7358535484972093649

`(A074523(n)+A024049(n))%A034982(n+1)`
-/

namespace A074574.P7358535484972093649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074523 n + A024049 n) (A034982 (n + 1))

end

end A074574.P7358535484972093649

namespace A074574

/-- `(A074523(n)+A024049(n))%A034982(n+1)` -/
def P7358535484972093649.Spec : Prop :=
  ∀ n, P7358535484972093649.a n = A074574 n

end A074574

/-!
# A074575: a(n) = 5^n + 7^n + 9^n.

The programs for A074575, the canonical program `A074575.P7136983271451830220` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074575 has offset 0).

The definition of A074575 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n+7^n+9^n` (program `A074575.P7136983271451830220`, by `A074575.P7136983271451830220.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074575.P7136983271451830220

`5^n+7^n+9^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074575

/-- `5^n+7^n+9^n` -/
def P7136983271451830220.Spec : Prop :=
  ∀ n, (P7136983271451830220.a n : ℤ) = A074575 n

theorem P7136983271451830220.correct : P7136983271451830220.Spec := by
  intro n
  simp only [A074575]

end A074575

/-! ## A074575.P3006412089062033206

`abs(A005062(n)-A074578(n))`
-/

namespace A074575.P3006412089062033206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005062 n - A074578 n|

end

end A074575.P3006412089062033206

namespace A074575

/-- `abs(A005062(n)-A074578(n))` -/
def P3006412089062033206.Spec : Prop :=
  ∀ n, P3006412089062033206.a n = A074575 n

end A074575

/-! ## A074575.P3759492489850980694

`abs(A034472(n)-A134007(n))`
-/

namespace A074575.P3759492489850980694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034472 n - A134007 n|

end

end A074575.P3759492489850980694

namespace A074575

/-- `abs(A034472(n)-A134007(n))` -/
def P3759492489850980694.Spec : Prop :=
  ∀ n, P3759492489850980694.a n = A074575 n

end A074575

/-! ## A074575.P15929891576843779226

`floor(A134007(n)-sqrt(A034513(n)))`
-/

namespace A074575.P15929891576843779226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A134007 n : ℝ) - Real.sqrt (A034513 n : ℝ)⌋

end

end A074575.P15929891576843779226

namespace A074575

/-- `floor(A134007(n)-sqrt(A034513(n)))` -/
def P15929891576843779226.Spec : Prop :=
  ∀ n, P15929891576843779226.a n = A074575 n

end A074575

/-! ## A074575.P2058800669154765

`or(A155634(n)+A062396(n), A178334(n))`
-/

namespace A074575.P2058800669154765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A155634 n + A062396 n) (A178334 n)

end

end A074575.P2058800669154765

namespace A074575

/-- `or(A155634(n)+A062396(n), A178334(n))` -/
def P2058800669154765.Spec : Prop :=
  ∀ n, P2058800669154765.a n = A074575 n

end A074575

/-! ## A074575.P1023281919797059298

`(A155634(n)+A062396(n))*A276284(C(2, n))`
-/

namespace A074575.P1023281919797059298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155634 n + A062396 n) * A276284 (Nat.choose 2 n)

end

end A074575.P1023281919797059298

namespace A074575

/-- `(A155634(n)+A062396(n))*A276284(C(2, n))` -/
def P1023281919797059298.Spec : Prop :=
  ∀ n, P1023281919797059298.a n = A074575 n

end A074575

/-! ## A074575.P719425158191141353

`gcd(A005062(n)-A074578(n), A008585(n)%3)`
-/

namespace A074575.P719425158191141353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005062 n - A074578 n) (Int.tmod (A008585 n) 3)

end

end A074575.P719425158191141353

namespace A074575

/-- `gcd(A005062(n)-A074578(n), A008585(n)%3)` -/
def P719425158191141353.Spec : Prop :=
  ∀ n, (P719425158191141353.a n : ℤ) = A074575 n

end A074575

/-! ## A074575.P7158778577622344925

`(A155634(n)+A062396(n))*A007318(C(n+2, 2))`
-/

namespace A074575.P7158778577622344925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155634 n + A062396 n) * A007318 (Nat.choose (n + 2) 2)

end

end A074575.P7158778577622344925

namespace A074575

/-- `(A155634(n)+A062396(n))*A007318(C(n+2, 2))` -/
def P7158778577622344925.Spec : Prop :=
  ∀ n, P7158778577622344925.a n = A074575 n

end A074575

/-! ## A074575.P11952456290671007252

`-((A005062(n)-A074578(n))*A001221(A027746(n+2)))`
-/

namespace A074575.P11952456290671007252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((A005062 n - A074578 n) * A001221 (A027746 (n + 2)).toNat)

end

end A074575.P11952456290671007252

namespace A074575

/-- `-((A005062(n)-A074578(n))*A001221(A027746(n+2)))` -/
def P11952456290671007252.Spec : Prop :=
  ∀ n, P11952456290671007252.a n = A074575 n

end A074575

/-!
# A074576: a(n) = 5^n + 8^n + 9^n.

The programs for A074576, the canonical program `A074576.P14304956569486685152` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074576 has offset 0).

The definition of A074576 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n+8^n+9^n` (program `A074576.P14304956569486685152`, by `A074576.P14304956569486685152.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074576.P14304956569486685152

`5^n+8^n+9^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074576

/-- `5^n+8^n+9^n` -/
def P14304956569486685152.Spec : Prop :=
  ∀ n, (P14304956569486685152.a n : ℤ) = A074576 n

theorem P14304956569486685152.correct : P14304956569486685152.Spec := by
  intro n
  simp only [A074576]

end A074576

/-! ## A074576.P8722136171102748796

`or(2, A074624(n)+5^n)`
-/

namespace A074576.P8722136171102748796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A074624 n + (5 ^ n : ℤ))

end

end A074576.P8722136171102748796

namespace A074576

/-- `or(2, A074624(n)+5^n)` -/
def P8722136171102748796.Spec : Prop :=
  ∀ n, P8722136171102748796.a n = A074576 n

end A074576

/-! ## A074576.P1939768213518136270

`(A074624(n)+A000351(n))*A007318(∑[n])`
-/

namespace A074576.P1939768213518136270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074624 n + A000351 n) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074576.P1939768213518136270

namespace A074576

/-- `(A074624(n)+A000351(n))*A007318(∑[n])` -/
def P1939768213518136270.Spec : Prop :=
  ∀ n, P1939768213518136270.a n = A074576 n

end A074576

/-! ## A074576.P12337262341128271247

`(A074624(n)+A000351(n))*A001221(A076727(n+1))`
-/

namespace A074576.P12337262341128271247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074624 n + A000351 n) * A001221 (A076727 (n + 1)).toNat

end

end A074576.P12337262341128271247

namespace A074576

/-- `(A074624(n)+A000351(n))*A001221(A076727(n+1))` -/
def P12337262341128271247.Spec : Prop :=
  ∀ n, P12337262341128271247.a n = A074576 n

end A074576

/-! ## A074576.P15551929665736314355

`(A074624(n)+A000351(n))*A057427(A046682(n))`
-/

namespace A074576.P15551929665736314355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074624 n + A000351 n) * A057427 (A046682 n).toNat

end

end A074576.P15551929665736314355

namespace A074576

/-- `(A074624(n)+A000351(n))*A057427(A046682(n))` -/
def P15551929665736314355.Spec : Prop :=
  ∀ n, P15551929665736314355.a n = A074576 n

end A074576

/-!
# A074577: a(n) = 6^n + 7^n + 8^n.

The programs for A074577, the canonical program `A074577.P11705556661611286287` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074577 has offset 0).

The definition of A074577 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n+7^n+8^n` (program `A074577.P11705556661611286287`, by `A074577.P11705556661611286287.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074577.P11705556661611286287

`6^n+7^n+8^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074577

/-- `6^n+7^n+8^n` -/
def P11705556661611286287.Spec : Prop :=
  ∀ n, (P11705556661611286287.a n : ℤ) = A074577 n

theorem P11705556661611286287.correct : P11705556661611286287.Spec := by
  intro n
  simp only [A074577]

end A074577

/-! ## A074577.P17570388151685167799

`or(1, A074622(n)+6^n)`
-/

namespace A074577.P17570388151685167799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A074622 n + (6 ^ n : ℤ))

end

end A074577.P17570388151685167799

namespace A074577

/-- `or(1, A074622(n)+6^n)` -/
def P17570388151685167799.Spec : Prop :=
  ∀ n, P17570388151685167799.a n = A074577 n

end A074577

/-! ## A074577.P8369016639870763403

`abs(A001552(n)-A001555(n))`
-/

namespace A074577.P8369016639870763403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001552 n - A001555 n|

end

end A074577.P8369016639870763403

namespace A074577

/-- `abs(A001552(n)-A001555(n))` -/
def P8369016639870763403.Spec : Prop :=
  ∀ n, P8369016639870763403.a n = A074577 n

end A074577

/-! ## A074577.P4993635125575604838

`or(1, A155645(n)+A062395(n))`
-/

namespace A074577.P4993635125575604838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A155645 n + A062395 n)

end

end A074577.P4993635125575604838

namespace A074577

/-- `or(1, A155645(n)+A062395(n))` -/
def P4993635125575604838.Spec : Prop :=
  ∀ n, P4993635125575604838.a n = A074577 n

end A074577

/-! ## A074577.P15200685337460007936

`(A001552(n)-A001555(n))*A134824(n+2)`
-/

namespace A074577.P15200685337460007936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001552 n - A001555 n) * A134824 (n + 2)

end

end A074577.P15200685337460007936

namespace A074577

/-- `(A001552(n)-A001555(n))*A134824(n+2)` -/
def P15200685337460007936.Spec : Prop :=
  ∀ n, P15200685337460007936.a n = A074577 n

end A074577

/-! ## A074577.P1564041490960706137

`gcd(A001552(n)-A001555(n), A024155(2*n+1))`
-/

namespace A074577.P1564041490960706137
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001552 n - A001555 n) (A024155 (2 * n + 1))

end

end A074577.P1564041490960706137

namespace A074577

/-- `gcd(A001552(n)-A001555(n), A024155(2*n+1))` -/
def P1564041490960706137.Spec : Prop :=
  ∀ n, (P1564041490960706137.a n : ℤ) = A074577 n

end A074577

/-! ## A074577.P17167754522247020468

`(A001552(n)-A001555(n))*-A000040(n+2)%2`
-/

namespace A074577.P17167754522247020468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001552 n - A001555 n) * Int.tmod (-A000040 (n + 2)) 2

end

end A074577.P17167754522247020468

namespace A074577

/-- `(A001552(n)-A001555(n))*-A000040(n+2)%2` -/
def P17167754522247020468.Spec : Prop :=
  ∀ n, P17167754522247020468.a n = A074577 n

end A074577

/-! ## A074577.P12357465910854569929

`-((A001552(n)-A001555(n))*A001222(A002476(n+1)))`
-/

namespace A074577.P12357465910854569929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((A001552 n - A001555 n) * A001222 (A002476 (n + 1)).toNat)

end

end A074577.P12357465910854569929

namespace A074577

/-- `-((A001552(n)-A001555(n))*A001222(A002476(n+1)))` -/
def P12357465910854569929.Spec : Prop :=
  ∀ n, P12357465910854569929.a n = A074577 n

end A074577

/-! ## A074577.P8497466531714382189

`(A001555(n)-A001552(n))%A001557(n)`
-/

namespace A074577.P8497466531714382189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001555 n - A001552 n) (A001557 n)

end

end A074577.P8497466531714382189

namespace A074577

/-- `(A001555(n)-A001552(n))%A001557(n)` -/
def P8497466531714382189.Spec : Prop :=
  ∀ n, P8497466531714382189.a n = A074577 n

end A074577

/-!
# A074578: a(n) = 6^n + 7^n + 9^n.

The programs for A074578, the canonical program `A074578.P9565326728207394404` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074578 has offset 0).

The definition of A074578 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n+7^n+9^n` (program `A074578.P9565326728207394404`, by `A074578.P9565326728207394404.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074578.P9565326728207394404

`6^n+7^n+9^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074578

/-- `6^n+7^n+9^n` -/
def P9565326728207394404.Spec : Prop :=
  ∀ n, (P9565326728207394404.a n : ℤ) = A074578 n

theorem P9565326728207394404.correct : P9565326728207394404.Spec := by
  intro n
  simp only [A074578]

end A074578

/-! ## A074578.P8489900636235314751

`(A155645(n)+A062396(n))*(n%2)!`
-/

namespace A074578.P8489900636235314751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155645 n + A062396 n) * (Nat.factorial (n % 2) : ℤ)

end

end A074578.P8489900636235314751

namespace A074578

/-- `(A155645(n)+A062396(n))*(n%2)!` -/
def P8489900636235314751.Spec : Prop :=
  ∀ n, P8489900636235314751.a n = A074578 n

end A074578

/-! ## A074578.P4463506975990549663

`(A155645(n)+A062396(n))*A007318(C(2, n))`
-/

namespace A074578.P4463506975990549663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155645 n + A062396 n) * A007318 (Nat.choose 2 n)

end

end A074578.P4463506975990549663

namespace A074578

/-- `(A155645(n)+A062396(n))*A007318(C(2, n))` -/
def P4463506975990549663.Spec : Prop :=
  ∀ n, P4463506975990549663.a n = A074578 n

end A074578

/-! ## A074578.P2701658863868878721

`abs(A074571(n)+2*(A000244(n)²-A081338(n)))`
-/

namespace A074578.P2701658863868878721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074571 n + 2 * (A000244 n ^ 2 - A081338 n)|

end

end A074578.P2701658863868878721

namespace A074578

/-- `abs(A074571(n)+2*(A000244(n)²-A081338(n)))` -/
def P2701658863868878721.Spec : Prop :=
  ∀ n, P2701658863868878721.a n = A074578 n

end A074578

/-! ## A074578.P10763983624321763927

`(A155645(n)+A062396(n))/(A000040(n+1)%2)!`
-/

namespace A074578.P10763983624321763927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155645 n + A062396 n : ℚ) / (Nat.factorial (Int.tmod (A000040 (n + 1)) 2).toNat : ℚ)

end

end A074578.P10763983624321763927

namespace A074578

/-- `(A155645(n)+A062396(n))/(A000040(n+1)%2)!` -/
def P10763983624321763927.Spec : Prop :=
  ∀ n, P10763983624321763927.a n = (A074578 n : ℚ)

end A074578

/-! ## A074578.P4976835378378359405

`(A155645(n)+A062396(n))*A008683(16*(n+1))!`
-/

namespace A074578.P4976835378378359405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155645 n + A062396 n) * (Nat.factorial (A008683 (16 * (n + 1))).toNat : ℤ)

end

end A074578.P4976835378378359405

namespace A074578

/-- `(A155645(n)+A062396(n))*A008683(16*(n+1))!` -/
def P4976835378378359405.Spec : Prop :=
  ∀ n, P4976835378378359405.a n = A074578 n

end A074578

/-!
# A074579: a(n) = 6^n + 8^n + 9^n.

The programs for A074579, the canonical program `A074579.P11019084193790550151` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074579 has offset 0).

The definition of A074579 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n+8^n+9^n` (program `A074579.P11019084193790550151`, by `A074579.P11019084193790550151.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074579.P11019084193790550151

`6^n+8^n+9^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074579

/-- `6^n+8^n+9^n` -/
def P11019084193790550151.Spec : Prop :=
  ∀ n, (P11019084193790550151.a n : ℤ) = A074579 n

theorem P11019084193790550151.correct : P11019084193790550151.Spec := by
  intro n
  simp only [A074579]

end A074579

/-! ## A074579.P15869181032028767342

`or(1, A074621(n)+8^n)`
-/

namespace A074579.P15869181032028767342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A074621 n + (8 ^ n : ℤ))

end

end A074579.P15869181032028767342

namespace A074579

/-- `or(1, A074621(n)+8^n)` -/
def P15869181032028767342.Spec : Prop :=
  ∀ n, P15869181032028767342.a n = A074579 n

end A074579

/-! ## A074579.P8392549697226461121

`abs(A016169(n)-A074580(n))`
-/

namespace A074579.P8392549697226461121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016169 n - A074580 n|

end

end A074579.P8392549697226461121

namespace A074579

/-- `abs(A016169(n)-A074580(n))` -/
def P8392549697226461121.Spec : Prop :=
  ∀ n, P8392549697226461121.a n = A074579 n

end A074579

/-! ## A074579.P14291500380069379181

`lcm(A016169(n)-A074580(n), A033999(n))`
-/

namespace A074579.P14291500380069379181
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016169 n - A074580 n) (A033999 n)

end

end A074579.P14291500380069379181

namespace A074579

/-- `lcm(A016169(n)-A074580(n), A033999(n))` -/
def P14291500380069379181.Spec : Prop :=
  ∀ n, (P14291500380069379181.a n : ℤ) = A074579 n

end A074579

/-! ## A074579.P4110382278054553357

`or(A155647(n)+A062395(n), A178334(n))`
-/

namespace A074579.P4110382278054553357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A155647 n + A062395 n) (A178334 n)

end

end A074579.P4110382278054553357

namespace A074579

/-- `or(A155647(n)+A062395(n), A178334(n))` -/
def P4110382278054553357.Spec : Prop :=
  ∀ n, P4110382278054553357.a n = A074579 n

end A074579

/-! ## A074579.P16092926315393661039

`(A155647(n)+A062395(n))*A000045(2-C(2, n+2))`
-/

namespace A074579.P16092926315393661039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155647 n + A062395 n) * A000045 (2 - Nat.choose 2 (n + 2))

end

end A074579.P16092926315393661039

namespace A074579

/-- `(A155647(n)+A062395(n))*A000045(2-C(2, n+2))` -/
def P16092926315393661039.Spec : Prop :=
  ∀ n, P16092926315393661039.a n = A074579 n

end A074579

/-! ## A074579.P3468956120079130839

`(A155647(n)+A062395(n))*A001221(A101300(n))`
-/

namespace A074579.P3468956120079130839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155647 n + A062395 n) * A001221 (A101300 n).toNat

end

end A074579.P3468956120079130839

namespace A074579

/-- `(A155647(n)+A062395(n))*A001221(A101300(n))` -/
def P3468956120079130839.Spec : Prop :=
  ∀ n, P3468956120079130839.a n = A074579 n

end A074579

/-!
# A074580: a(n) = 7^n + 8^n + 9^n.

The programs for A074580, the canonical program `A074580.P17802850478880268909` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074580 has offset 0).

The definition of A074580 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n+8^n+9^n` (program `A074580.P17802850478880268909`, by `A074580.P17802850478880268909.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074580.P17802850478880268909

`7^n+8^n+9^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074580

/-- `7^n+8^n+9^n` -/
def P17802850478880268909.Spec : Prop :=
  ∀ n, (P17802850478880268909.a n : ℤ) = A074580 n

theorem P17802850478880268909.correct : P17802850478880268909.Spec := by
  intro n
  simp only [A074580]

end A074580

/-! ## A074580.P6760966162891127595

`abs(A001553(n)-A001556(n))`
-/

namespace A074580.P6760966162891127595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001553 n - A001556 n|

end

end A074580.P6760966162891127595

namespace A074580

/-- `abs(A001553(n)-A001556(n))` -/
def P6760966162891127595.Spec : Prop :=
  ∀ n, P6760966162891127595.a n = A074580 n

end A074580

/-! ## A074580.P4043024378313069807

`(A001556(n)-A001553(n))*A000034(2*n)`
-/

namespace A074580.P4043024378313069807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001556 n - A001553 n) * A000034 (2 * n)

end

end A074580.P4043024378313069807

namespace A074580

/-- `(A001556(n)-A001553(n))*A000034(2*n)` -/
def P4043024378313069807.Spec : Prop :=
  ∀ n, P4043024378313069807.a n = A074580 n

end A074580

/-! ## A074580.P1605971092930310187

`gcd(A001553(n)-A001556(n), A000038(n+1))`
-/

namespace A074580.P1605971092930310187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001553 n - A001556 n) (A000038 (n + 1))

end

end A074580.P1605971092930310187

namespace A074580

/-- `gcd(A001553(n)-A001556(n), A000038(n+1))` -/
def P1605971092930310187.Spec : Prop :=
  ∀ n, (P1605971092930310187.a n : ℤ) = A074580 n

end A074580

/-! ## A074580.P988131900420722347

`lcm(A001553(n)-A001556(n), A108775(n+1))`
-/

namespace A074580.P988131900420722347
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001553 n - A001556 n) (A108775 (n + 1))

end

end A074580.P988131900420722347

namespace A074580

/-- `lcm(A001553(n)-A001556(n), A108775(n+1))` -/
def P988131900420722347.Spec : Prop :=
  ∀ n, (P988131900420722347.a n : ℤ) = A074580 n

end A074580

/-! ## A074580.P4146774416501928709

`(A001553(n)-A001556(n))*A280193(2*n+1)`
-/

namespace A074580.P4146774416501928709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001553 n - A001556 n) * A280193 (2 * n + 1)

end

end A074580.P4146774416501928709

namespace A074580

/-- `(A001553(n)-A001556(n))*A280193(2*n+1)` -/
def P4146774416501928709.Spec : Prop :=
  ∀ n, P4146774416501928709.a n = A074580 n

end A074580

/-! ## A074580.P11616244274321135017

`(A209615(n+1)²-2)*(A001553(n)-A001556(n))`
-/

namespace A074580.P11616244274321135017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A209615 (n + 1) ^ 2 - 2) * (A001553 n - A001556 n)

end

end A074580.P11616244274321135017

namespace A074580

/-- `(A209615(n+1)²-2)*(A001553(n)-A001556(n))` -/
def P11616244274321135017.Spec : Prop :=
  ∀ n, P11616244274321135017.a n = A074580 n

end A074580

/-! ## A074580.P9808176983299473416

`(A001553(n)-A001556(n))*A008683(A031215(n+2))`
-/

namespace A074580.P9808176983299473416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001553 n - A001556 n) * A008683 (A031215 (n + 2)).toNat

end

end A074580.P9808176983299473416

namespace A074580

/-- `(A001553(n)-A001556(n))*A008683(A031215(n+2))` -/
def P9808176983299473416.Spec : Prop :=
  ∀ n, P9808176983299473416.a n = A074580 n

end A074580

/-! ## A074580.P17228698039241561111

`(A001556(n)-A001553(n))%A001557(n)`
-/

namespace A074580.P17228698039241561111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001556 n - A001553 n) (A001557 n)

end

end A074580.P17228698039241561111

namespace A074580

/-- `(A001556(n)-A001553(n))%A001557(n)` -/
def P17228698039241561111.Spec : Prop :=
  ∀ n, P17228698039241561111.a n = A074580 n

end A074580

/-!
# A074581: a(n) = T(3n+1), where T(n) are tribonacci numbers A000073.

The programs for A074581, the canonical program `A074581.P6434494262900503128` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074581 has offset 0).

The definition of A074581 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074581.P6434494262900503128

`7*a(n-1)-5*a(n-2)+a(n-3)` with `a(0)=0, a(1)=2, a(2)=13`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074581

/-- `7*a(n-1)-5*a(n-2)+a(n-3)` -/
def P6434494262900503128.Spec : Prop :=
  ∀ n, P6434494262900503128.a n = A074581 n

theorem P6434494262900503128.correct : P6434494262900503128.Spec := by
  intro n
  simp only [A074581]

end A074581

/-! ## A074581.P12590991622515115466

`ogf((2x-x^2)/(1-7x+5x^2-x^3))`
-/

namespace A074581.P12590991622515115466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -1] [1, -7, 5, -1] n

end

end A074581.P12590991622515115466

namespace A074581

/-- `ogf((2x-x^2)/(1-7x+5x^2-x^3))` -/
def P12590991622515115466.Spec : Prop :=
  ∀ n, P12590991622515115466.a n = A074581 n

end A074581

/-! ## A074581.P12171657835880448646

`A000073(3*n+1)`
-/

namespace A074581.P12171657835880448646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (3 * n + 1)

end

end A074581.P12171657835880448646

namespace A074581

/-- `A000073(3*n+1)` -/
def P12171657835880448646.Spec : Prop :=
  ∀ n, P12171657835880448646.a n = A074581 n

end A074581

/-! ## A074581.P11402535542149436708

`A354784(3*n+1)/2`
-/

namespace A074581.P11402535542149436708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354784 (3 * n + 1) : ℚ) / 2

end

end A074581.P11402535542149436708

namespace A074581

/-- `A354784(3*n+1)/2` -/
def P11402535542149436708.Spec : Prop :=
  ∀ n, P11402535542149436708.a n = (A074581 n : ℚ)

end A074581

/-! ## A074581.P18219630896875435231

`∑[A001590(3*n+1)]-1`
-/

namespace A074581.P18219630896875435231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A074581.P18219630896875435231

namespace A074581

/-- `∑[A001590(3*n+1)]-1` -/
def P18219630896875435231.Spec : Prop :=
  ∀ n, P18219630896875435231.a n = A074581 n

end A074581

/-! ## A074581.P5649897159678796929

`record[A000073(Δ[n*∑[n%2]])]`
-/

namespace A074581.P5649897159678796929
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074581.P5649897159678796929

namespace A074581

/-- `record[A000073(Δ[n*∑[n%2]])]` -/
def P5649897159678796929.Spec : Prop :=
  ∀ n, P5649897159678796929.a n = A074581 n

end A074581

/-! ## A074581.P14147872626557038544

`A192807(n)+A099464(n)`
-/

namespace A074581.P14147872626557038544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192807 n + A099464 n

end

end A074581.P14147872626557038544

namespace A074581

/-- `A192807(n)+A099464(n)` -/
def P14147872626557038544.Spec : Prop :=
  ∀ n, P14147872626557038544.a n = A074581 n

end A074581

/-! ## A074581.P9985057213261711567

`∑[A001590(A008486(n)+1)]`
-/

namespace A074581.P9985057213261711567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (A008486 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074581.P9985057213261711567

namespace A074581

/-- `∑[A001590(A008486(n)+1)]` -/
def P9985057213261711567.Spec : Prop :=
  ∀ n, P9985057213261711567.a n = A074581 n

end A074581

/-! ## A074581.P467697976702767027

`∑[A001590(A033627(n+2))]`
-/

namespace A074581.P467697976702767027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (A033627 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074581.P467697976702767027

namespace A074581

/-- `∑[A001590(A033627(n+2))]` -/
def P467697976702767027.Spec : Prop :=
  ∀ n, P467697976702767027.a n = A074581 n

end A074581

/-! ## A074581.P6986321843824191382

`record[A000073(A004155(n)+n)]`
-/

namespace A074581.P6986321843824191382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A004155 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074581.P6986321843824191382

namespace A074581

/-- `record[A000073(A004155(n)+n)]` -/
def P6986321843824191382.Spec : Prop :=
  ∀ n, P6986321843824191382.a n = A074581 n

end A074581

/-! ## A074581.P9707472983044747030

`∑[A001590(comp[A065033(3*n)])]`
-/

namespace A074581.P9707472983044747030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (3 * n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074581.P9707472983044747030

namespace A074581

/-- `∑[A001590(comp[A065033(3*n)])]` -/
def P9707472983044747030.Spec : Prop :=
  ∀ n, P9707472983044747030.a n = A074581 n

end A074581

/-! ## A074581.P9889923275779815483

`∑[A001590(comp[A065033(n)+n])]`
-/

namespace A074581.P9889923275779815483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074581.P9889923275779815483

namespace A074581

/-- `∑[A001590(comp[A065033(n)+n])]` -/
def P9889923275779815483.Spec : Prop :=
  ∀ n, P9889923275779815483.a n = A074581 n

end A074581

/-! ## A074581.P17344511422211618936

`Δ[A000213(A033627(n+1))/2]`
-/

namespace A074581.P17344511422211618936
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000213 (A033627 (n + 1)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074581.P17344511422211618936

namespace A074581

/-- `Δ[A000213(A033627(n+1))/2]` -/
def P17344511422211618936.Spec : Prop :=
  ∀ n, P17344511422211618936.a n = (A074581 n : ℚ)

end A074581

/-! ## A074581.P11721320507622167980

`record[A000073(A014682(n+1)-1)]`
-/

namespace A074581.P11721320507622167980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A014682 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074581.P11721320507622167980

namespace A074581

/-- `record[A000073(A014682(n+1)-1)]` -/
def P11721320507622167980.Spec : Prop :=
  ∀ n, P11721320507622167980.a n = A074581 n

end A074581

/-! ## A074581.P5820679220939904113

`∑[A001590(A004273(n)+2+n)]`
-/

namespace A074581.P5820679220939904113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (A004273 n + 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074581.P5820679220939904113

namespace A074581

/-- `∑[A001590(A004273(n)+2+n)]` -/
def P5820679220939904113.Spec : Prop :=
  ∀ n, P5820679220939904113.a n = A074581 n

end A074581

/-! ## A074581.P3710592197776932434

`∑[A001590(A004280(n+2)+n)]`
-/

namespace A074581.P3710592197776932434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (A004280 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074581.P3710592197776932434

namespace A074581

/-- `∑[A001590(A004280(n+2)+n)]` -/
def P3710592197776932434.Spec : Prop :=
  ∀ n, P3710592197776932434.a n = A074581 n

end A074581

/-! ## A074581.P16467600794730157093

`record[A000073(A071054(and(n, n-1)))]`
-/

namespace A074581.P16467600794730157093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A071054 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074581.P16467600794730157093

namespace A074581

/-- `record[A000073(A071054(and(n, n-1)))]` -/
def P16467600794730157093.Spec : Prop :=
  ∀ n, P16467600794730157093.a n = A074581 n

end A074581

/-! ## A074581.P2343568139613585068

`A114952(4*n+A014601(n+1))`
-/

namespace A074581.P2343568139613585068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114952 ((4 * n : ℤ) + A014601 (n + 1)).toNat

end

end A074581.P2343568139613585068

namespace A074581

/-- `A114952(4*n+A014601(n+1))` -/
def P2343568139613585068.Spec : Prop :=
  ∀ n, P2343568139613585068.a n = A074581 n

end A074581

/-! ## A074581.P18275071858710300177

`A001590(3*n)+∑[A001590(3*n)]`
-/

namespace A074581.P18275071858710300177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (3 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074581.P18275071858710300177

namespace A074581

/-- `A001590(3*n)+∑[A001590(3*n)]` -/
def P18275071858710300177.Spec : Prop :=
  ∀ n, P18275071858710300177.a n = A074581 n

end A074581

/-! ## A074581.P16892506031272765444

`A192806(n+1)-(A192806(n)+A099464(n))`
-/

namespace A074581.P16892506031272765444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192806 (n + 1) - (A192806 n + A099464 n)

end

end A074581.P16892506031272765444

namespace A074581

/-- `A192806(n+1)-(A192806(n)+A099464(n))` -/
def P16892506031272765444.Spec : Prop :=
  ∀ n, P16892506031272765444.a n = A074581 n

end A074581

/-!
# A074582: a(n) = S(3n), where S(n) is the generalized tribonacci sequence A001644.

The programs for A074582, the canonical program `A074582.P8116197716199792781` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074582 has offset 0).

The definition of A074582 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074582.P8116197716199792781

`7*a(n-1)-5*a(n-2)+a(n-3)` with `a(0)=3, a(1)=7, a(2)=39`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074582

/-- `7*a(n-1)-5*a(n-2)+a(n-3)` -/
def P8116197716199792781.Spec : Prop :=
  ∀ n, P8116197716199792781.a n = A074582 n

theorem P8116197716199792781.correct : P8116197716199792781.Spec := by
  intro n
  simp only [A074582]

end A074582

/-! ## A074582.P3127888448137602644

`A001644(3*n)`
-/

namespace A074582.P3127888448137602644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 (3 * n)

end

end A074582.P3127888448137602644

namespace A074582

/-- `A001644(3*n)` -/
def P3127888448137602644.Spec : Prop :=
  ∀ n, P3127888448137602644.a n = A074582 n

end A074582

/-! ## A074582.P16181657468991626355

`record[A001644(A006368(n))]`
-/

namespace A074582.P16181657468991626355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 (A006368 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074582.P16181657468991626355

namespace A074582

/-- `record[A001644(A006368(n))]` -/
def P16181657468991626355.Spec : Prop :=
  ∀ n, P16181657468991626355.a n = A074582 n

end A074582

/-! ## A074582.P11776744150565744228

`record[A001644(n-A091684(n))]`
-/

namespace A074582.P11776744150565744228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 ((n : ℤ) - A091684 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074582.P11776744150565744228

namespace A074582

/-- `record[A001644(n-A091684(n))]` -/
def P11776744150565744228.Spec : Prop :=
  ∀ n, P11776744150565744228.a n = A074582 n

end A074582

/-! ## A074582.P102611697974173118

`record[gcd(A001644(n), A091684(n))]`
-/

namespace A074582.P102611697974173118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001644 n) (A091684 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074582.P102611697974173118

namespace A074582

/-- `record[gcd(A001644(n), A091684(n))]` -/
def P102611697974173118.Spec : Prop :=
  ∀ n, (P102611697974173118.a n : ℤ) = A074582 n

end A074582

/-! ## A074582.P15068048390864212885

`record[A001644(A007494(A014681(n)))]`
-/

namespace A074582.P15068048390864212885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 (A007494 (A014681 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074582.P15068048390864212885

namespace A074582

/-- `record[A001644(A007494(A014681(n)))]` -/
def P15068048390864212885.Spec : Prop :=
  ∀ n, P15068048390864212885.a n = A074582 n

end A074582

/-!
# A074583: Numbers k such that sopfr(k) = S(k), where sopfr = A001414 and S = A002034.

The programs for A074583, the canonical program `A074583.P15123226653629379694` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074583 has offset 1).

The definition of A074583 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, A192188, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A074583.P15123226653629379694

`A000961(A192188(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A074583

/-- `A000961(A192188(n+1))` -/
def P15123226653629379694.Spec : Prop :=
  ∀ n, P15123226653629379694.a n = A074583 (n + 1)

theorem P15123226653629379694.correct : P15123226653629379694.Spec := by
  intro n
  simp only [A074583, Nat.add_sub_cancel]

end A074583

/-! ## A074583.P14380602144273818873

`∪[A067126(n+1), A073045(n+1)]`
-/

namespace A074583.P14380602144273818873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A074583.P14380602144273818873

namespace A074583

/-- `∪[A067126(n+1), A073045(n+1)]` -/
def P14380602144273818873.Spec : Prop :=
  ∀ n, (P14380602144273818873.a n : ℤ) = A074583 (n + 1)

end A074583

/-! ## A074583.P2658477668818655423

`∩[A000961(n+1), A343983(n+1)]`
-/

namespace A074583.P2658477668818655423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074583.P2658477668818655423

namespace A074583

/-- `∩[A000961(n+1), A343983(n+1)]` -/
def P2658477668818655423.Spec : Prop :=
  ∀ n, (P2658477668818655423.a n : ℤ) = A074583 (n + 1)

end A074583

/-! ## A074583.P10850932580059022463

`filter[A343983(n+1), A344884(#)]`
-/

namespace A074583.P10850932580059022463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344884 (f1 j).toNat = 1) n)

end

end A074583.P10850932580059022463

namespace A074583

/-- `filter[A343983(n+1), A344884(#)]` -/
def P10850932580059022463.Spec : Prop :=
  ∀ n, P10850932580059022463.a n = A074583 (n + 1)

end A074583

/-! ## A074583.P17845637234275082419

`filter[A343983(n+1), A344885(#)]`
-/

namespace A074583.P17845637234275082419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344885 (f1 j).toNat = 1) n)

end

end A074583.P17845637234275082419

namespace A074583

/-- `filter[A343983(n+1), A344885(#)]` -/
def P17845637234275082419.Spec : Prop :=
  ∀ n, P17845637234275082419.a n = A074583 (n + 1)

end A074583

/-! ## A074583.P14150876763242456544

`filter[A343983(n+1), A345064(#)]`
-/

namespace A074583.P14150876763242456544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345064 (f1 j).toNat = 1) n)

end

end A074583.P14150876763242456544

namespace A074583

/-- `filter[A343983(n+1), A345064(#)]` -/
def P14150876763242456544.Spec : Prop :=
  ∀ n, P14150876763242456544.a n = A074583 (n + 1)

end A074583

/-! ## A074583.P2697938990302985654

`filter[A343983(n+1), A345950(#)]`
-/

namespace A074583.P2697938990302985654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345950 (f1 j).toNat = 1) n)

end

end A074583.P2697938990302985654

namespace A074583

/-- `filter[A343983(n+1), A345950(#)]` -/
def P2697938990302985654.Spec : Prop :=
  ∀ n, P2697938990302985654.a n = A074583 (n + 1)

end A074583

/-! ## A074583.P2881588637555104455

`∩[A056867(n+1), A343983(n+1)]`
-/

namespace A074583.P2881588637555104455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074583.P2881588637555104455

namespace A074583

/-- `∩[A056867(n+1), A343983(n+1)]` -/
def P2881588637555104455.Spec : Prop :=
  ∀ n, (P2881588637555104455.a n : ℤ) = A074583 (n + 1)

end A074583

/-! ## A074583.P4294629470712430273

`∩[A085156(n+1), A343983(n+1)]`
-/

namespace A074583.P4294629470712430273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074583.P4294629470712430273

namespace A074583

/-- `∩[A085156(n+1), A343983(n+1)]` -/
def P4294629470712430273.Spec : Prop :=
  ∀ n, (P4294629470712430273.a n : ℤ) = A074583 (n + 1)

end A074583

/-! ## A074583.P10171475155008885832

`∩[A343983(n+1), A085924(n)]`
-/

namespace A074583.P10171475155008885832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085924 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074583.P10171475155008885832

namespace A074583

/-- `∩[A343983(n+1), A085924(n)]` -/
def P10171475155008885832.Spec : Prop :=
  ∀ n, (P10171475155008885832.a n : ℤ) = A074583 (n + 1)

end A074583

/-! ## A074583.P13721523549447499531

`∩[A060683(n+1), A343983(n+1)]`
-/

namespace A074583.P13721523549447499531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074583.P13721523549447499531

namespace A074583

/-- `∩[A060683(n+1), A343983(n+1)]` -/
def P13721523549447499531.Spec : Prop :=
  ∀ n, (P13721523549447499531.a n : ℤ) = A074583 (n + 1)

end A074583

/-! ## A074583.P2171330579409329692

`filter[A380693(n+1), A345950(#)]`
-/

namespace A074583.P2171330579409329692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345950 (f1 j).toNat = 1) n)

end

end A074583.P2171330579409329692

namespace A074583

/-- `filter[A380693(n+1), A345950(#)]` -/
def P2171330579409329692.Spec : Prop :=
  ∀ n, P2171330579409329692.a n = A074583 (n + 1)

end A074583

/-! ## A074583.P4324005512765498260

`record[A034699(A207481(n+1))]`
-/

namespace A074583.P4324005512765498260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A207481 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074583.P4324005512765498260

namespace A074583

/-- `record[A034699(A207481(n+1))]` -/
def P4324005512765498260.Spec : Prop :=
  ∀ n, P4324005512765498260.a n = A074583 (n + 1)

end A074583

/-! ## A074583.P9312277735177644354

`filter[A207481(n+1), A345950(#)]`
-/

namespace A074583.P9312277735177644354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345950 (f1 j).toNat = 1) n)

end

end A074583.P9312277735177644354

namespace A074583

/-- `filter[A207481(n+1), A345950(#)]` -/
def P9312277735177644354.Spec : Prop :=
  ∀ n, P9312277735177644354.a n = A074583 (n + 1)

end A074583

/-! ## A074583.P16162984816555468510

`∩[A000961(n+1), A207481(n+1)]`
-/

namespace A074583.P16162984816555468510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074583.P16162984816555468510

namespace A074583

/-- `∩[A000961(n+1), A207481(n+1)]` -/
def P16162984816555468510.Spec : Prop :=
  ∀ n, (P16162984816555468510.a n : ℤ) = A074583 (n + 1)

end A074583

/-! ## A074583.P18052952255068983569

`∩[A164336(n+1), A207481(n+1)]`
-/

namespace A074583.P18052952255068983569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074583.P18052952255068983569

namespace A074583

/-- `∩[A164336(n+1), A207481(n+1)]` -/
def P18052952255068983569.Spec : Prop :=
  ∀ n, (P18052952255068983569.a n : ℤ) = A074583 (n + 1)

end A074583

/-! ## A074583.P4385016504047591932

`record[A034699(A068937(n+1))]`
-/

namespace A074583.P4385016504047591932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A068937 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074583.P4385016504047591932

namespace A074583

/-- `record[A034699(A068937(n+1))]` -/
def P4385016504047591932.Spec : Prop :=
  ∀ n, P4385016504047591932.a n = A074583 (n + 1)

end A074583

/-! ## A074583.P9406937436498217128

`filter[A068937(n+1), A345950(#)]`
-/

namespace A074583.P9406937436498217128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345950 (f1 j).toNat = 1) n)

end

end A074583.P9406937436498217128

namespace A074583

/-- `filter[A068937(n+1), A345950(#)]` -/
def P9406937436498217128.Spec : Prop :=
  ∀ n, P9406937436498217128.a n = A074583 (n + 1)

end A074583

/-! ## A074583.P2465062427550007924

`∩[A000961(n+1), A068937(n+1)]`
-/

namespace A074583.P2465062427550007924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074583.P2465062427550007924

namespace A074583

/-- `∩[A000961(n+1), A068937(n+1)]` -/
def P2465062427550007924.Spec : Prop :=
  ∀ n, (P2465062427550007924.a n : ℤ) = A074583 (n + 1)

end A074583

/-! ## A074583.P11981475863419354270

`∩[A068937(n+1), A164336(n+1)]`
-/

namespace A074583.P11981475863419354270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074583.P11981475863419354270

namespace A074583

/-- `∩[A068937(n+1), A164336(n+1)]` -/
def P11981475863419354270.Spec : Prop :=
  ∀ n, (P11981475863419354270.a n : ℤ) = A074583 (n + 1)

end A074583

/-!
# A074584: Esanacci (hexanacci or "6-anacci") numbers.

The programs for A074584, the canonical program `A074584.P3920882411418601067` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074584 has offset 0).

The definition of A074584 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074584.P3920882411418601067

`2*a(n-1)-a(n-7)` with `a(0)=6, a(1)=1, a(2)=3, a(3)=7, a(4)=15, a(5)=31, a(6)=63`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A074584

/-- `2*a(n-1)-a(n-7)` -/
def P3920882411418601067.Spec : Prop :=
  ∀ n, P3920882411418601067.a n = A074584 n

theorem P3920882411418601067.correct : P3920882411418601067.Spec := by
  intro n
  simp only [A074584]

end A074584

/-! ## A074584.P9758857233154908177

`a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)+a(n-6)` with `a(0)=6, a(1)=1, a(2)=3, a(3)=7, a(4)=15, a(5)=31`
-/

namespace A074584.P9758857233154908177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6, 1, 3, 7, 15, 31] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3) + a (n - 4) + a (n - 5) + a (n - 6)

end

end A074584.P9758857233154908177

namespace A074584

/-- `a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)+a(n-6)` -/
def P9758857233154908177.Spec : Prop :=
  ∀ n, (P9758857233154908177.a n : ℤ) = A074584 n

end A074584

/-!
# A074585: a(n)= Sum_{j=0..floor(n/2)} A073145(2*j + q), where q = 2*(n/2 - floor(n/2)).

The programs for A074585, the canonical program `A074585.P10482400427346925936` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074585 has offset 0).

The definition of A074585 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 755 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074585.P10482400427346925936

`∑[A073145(n)-a(n-1)]` with `a(0)=3`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A074585

/-- `∑[A073145(n)-a(n-1)]` -/
def P10482400427346925936.Spec : Prop :=
  ∀ n, P10482400427346925936.a n = A074585 n

theorem P10482400427346925936.correct : P10482400427346925936.Spec := by
  intro n
  simp only [A074585]

end A074585

/-! ## A074585.P17671924389146903250

`∑[A190913(n)-A000032(n)-a(n-1)]` with `a(0)=3`
-/

namespace A074585.P17671924389146903250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A190913 n - A000032 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074585.P17671924389146903250

namespace A074585

/-- `∑[A190913(n)-A000032(n)-a(n-1)]` -/
def P17671924389146903250.Spec : Prop :=
  ∀ n, P17671924389146903250.a n = A074585 n

end A074585

/-! ## A074585.P17358286819271825553

`∑[A190913(n)+2-A000211(n)-a(n-1)]` with `a(0)=3`
-/

namespace A074585.P17358286819271825553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A190913 n + (2 - A000211 n) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074585.P17358286819271825553

namespace A074585

/-- `∑[A190913(n)+2-A000211(n)-a(n-1)]` -/
def P17358286819271825553.Spec : Prop :=
  ∀ n, P17358286819271825553.a n = A074585 n

end A074585

/-!
# A074586: Triangle of Moebius polynomial coefficients, read by rows, the n-th row forming the polynomial M(n,x) such that M(n,-1) = mu(n), the Moebius function of n.

The programs for A074586, there is no canonical definition to state claims against.
-/

/-! ## A074586.P2517839348337368350

`A029600(n)-A010059(A046691(A060546(n)))`
-/

namespace A074586.P2517839348337368350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 n - A010059 (A046691 (A060546 n).toNat).toNat

end

end A074586.P2517839348337368350

/-! ## A074586.P15111438494983252010

`A029600(n)-A166486(A097683(n+1))`
-/

namespace A074586.P15111438494983252010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 n - A166486 (A097683 (n + 1)).toNat

end

end A074586.P15111438494983252010

/-! ## A074586.P2538860821278207496

`A354703(A190088(n))`
-/

namespace A074586.P2538860821278207496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354703 (A190088 n).toNat

end

end A074586.P2538860821278207496

/-! ## A074586.P13878657784390013354

`A125936(A114706(n+1))`
-/

namespace A074586.P13878657784390013354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125936 (A114706 (n + 1)).toNat

end

end A074586.P13878657784390013354

/-! ## A074586.P5577692181348364232

`A162352(A321331(n)+2)`
-/

namespace A074586.P5577692181348364232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162352 (A321331 n + 2).toNat

end

end A074586.P5577692181348364232

/-!
# A074587: Sum of the coefficients of the n-th Moebius polynomial, M(n,x), where M(n,-1) = mu(n), the Moebius function of n.

The programs for A074587, there is no canonical definition to state claims against.
-/

/-! ## A074587.P15761471595862375438

`A184744(A126656(n+1))`
-/

namespace A074587.P15761471595862375438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184744 (A126656 (n + 1)).toNat

end

end A074587.P15761471595862375438

/-! ## A074587.P13624463890960659419

`A169659(∑[n]+1)`
-/

namespace A074587.P13624463890960659419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169659 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A074587.P13624463890960659419

/-! ## A074587.P7434739546269976822

`record[A169659(n+1)]`
-/

namespace A074587.P7434739546269976822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074587.P7434739546269976822

/-! ## A074587.P17560583239201512254

`or(char[1], A169659(A000124(n)))`
-/

namespace A074587.P17560583239201512254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A169659 (A000124 n).toNat)

end

end A074587.P17560583239201512254

/-! ## A074587.P10147842822826046784

`A169659(A000124(n))*A242784(n)`
-/

namespace A074587.P10147842822826046784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169659 (A000124 n).toNat * A242784 n

end

end A074587.P10147842822826046784

/-!
# A074588: Rearrangement of odd primes such that a(k) + a(k+1) + 1 is a prime for all k.

The programs for A074588, there is no canonical definition to state claims against.
-/

/-! ## A074588.P6723163224263453282

`p?[A085478(A092569(n))]`
-/

namespace A074588.P6723163224263453282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 (A092569 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074588.P6723163224263453282

/-! ## A074588.P15703485997370810020

`p?[A085478(A166404(n))]`
-/

namespace A074588.P15703485997370810020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 (A166404 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074588.P15703485997370810020

/-! ## A074588.P9092058385458917644

`p?[A085478(A193231(n))]`
-/

namespace A074588.P9092058385458917644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 (A193231 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074588.P9092058385458917644

/-! ## A074588.P6000294740050543132

`p?[A085478(A269162(n))]`
-/

namespace A074588.P6000294740050543132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 (A269162 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074588.P6000294740050543132

/-! ## A074588.P9642004417215255204

`p?[A085478(A334727(n))]`
-/

namespace A074588.P9642004417215255204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 (A334727 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074588.P9642004417215255204

/-!
# A074589: Replace each number n in Pascal's triangle with the n-th prime.

The programs for A074589, the canonical program `A074589.P13295843883208962175` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074589 has offset 0).

The definition of A074589 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A007318, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A074589.P13295843883208962175

`A000040(A007318(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A074589

/-- `A000040(A007318(n))` -/
def P13295843883208962175.Spec : Prop :=
  ∀ n, P13295843883208962175.a n = A074589 n

theorem P13295843883208962175.correct : P13295843883208962175.Spec := by
  intro n
  simp only [A074589]

end A074589

/-! ## A074589.P9490063355958909793

`A001749(sqrt(A008459(n)))/4`
-/

namespace A074589.P9490063355958909793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (SequenceMachineLib.roundAway (Real.sqrt (A008459 n : ℝ))).toNat : ℚ) / 4

end

end A074589.P9490063355958909793

namespace A074589

/-- `A001749(sqrt(A008459(n)))/4` -/
def P9490063355958909793.Spec : Prop :=
  ∀ n, P9490063355958909793.a n = (A074589 n : ℚ)

end A074589

/-! ## A074589.P17482793911431255449

`A001748(A028326(n)/2)/3`
-/

namespace A074589.P17482793911431255449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (SequenceMachineLib.roundAway ((A028326 n : ℚ) / 2)).toNat : ℚ) / 3

end

end A074589.P17482793911431255449

namespace A074589

/-- `A001748(A028326(n)/2)/3` -/
def P17482793911431255449.Spec : Prop :=
  ∀ n, P17482793911431255449.a n = (A074589 n : ℚ)

end A074589

/-! ## A074589.P13284208279443415340

`A001748(ceil(A131108(n)/2))/3`
-/

namespace A074589.P13284208279443415340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 ⌈(A131108 n : ℚ) / 2⌉.toNat : ℚ) / 3

end

end A074589.P13284208279443415340

namespace A074589

/-- `A001748(ceil(A131108(n)/2))/3` -/
def P13284208279443415340.Spec : Prop :=
  ∀ n, P13284208279443415340.a n = (A074589 n : ℚ)

end A074589

/-! ## A074589.P4085966919285792360

`A001748(abs(sqrt(A008459(n))-1)+1)/3`
-/

namespace A074589.P4085966919285792360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (SequenceMachineLib.roundAway (|Real.sqrt (A008459 n : ℝ) - 1| + 1)).toNat : ℚ) / 3

end

end A074589.P4085966919285792360

namespace A074589

/-- `A001748(abs(sqrt(A008459(n))-1)+1)/3` -/
def P4085966919285792360.Spec : Prop :=
  ∀ n, P4085966919285792360.a n = (A074589 n : ℚ)

end A074589

/-! ## A074589.P6600036770283266714

`A000040(C(∑[char[∑[n+1]]], n-C(∑[char[∑[n]]], 2)))`
-/

namespace A074589.P6600036770283266714
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ)).toNat)

end

end A074589.P6600036770283266714

namespace A074589

/-- `A000040(C(∑[char[∑[n+1]]], n-C(∑[char[∑[n]]], 2)))` -/
def P6600036770283266714.Spec : Prop :=
  ∀ n, P6600036770283266714.a n = A074589 n

end A074589

/-! ## A074589.P11560413341401568646

`A000040(abs(A108086(n)))`
-/

namespace A074589.P11560413341401568646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 |A108086 n|.toNat

end

end A074589.P11560413341401568646

namespace A074589

/-- `A000040(abs(A108086(n)))` -/
def P11560413341401568646.Spec : Prop :=
  ∀ n, P11560413341401568646.a n = A074589 n

end A074589

/-! ## A074589.P13142385771584864271

`A000040(abs(A117440(n)))`
-/

namespace A074589.P13142385771584864271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 |A117440 n|.toNat

end

end A074589.P13142385771584864271

namespace A074589

/-- `A000040(abs(A117440(n)))` -/
def P13142385771584864271.Spec : Prop :=
  ∀ n, P13142385771584864271.a n = A074589 n

end A074589

/-! ## A074589.P13024785128317557566

`A000040(abs(A130595(n)))`
-/

namespace A074589.P13024785128317557566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 |A130595 n|.toNat

end

end A074589.P13024785128317557566

namespace A074589

/-- `A000040(abs(A130595(n)))` -/
def P13024785128317557566.Spec : Prop :=
  ∀ n, P13024785128317557566.a n = A074589 n

end A074589

/-! ## A074589.P2479133705292316282

`A000040(sqrt(A008459(n)))`
-/

namespace A074589.P2479133705292316282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (Real.sqrt (A008459 n : ℝ))).toNat

end

end A074589.P2479133705292316282

namespace A074589

/-- `A000040(sqrt(A008459(n)))` -/
def P2479133705292316282.Spec : Prop :=
  ∀ n, P2479133705292316282.a n = A074589 n

end A074589

/-! ## A074589.P5404863400523982299

`A000040(Δ[A102363(n)])`
-/

namespace A074589.P5404863400523982299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (n + 1) - f1 n).toNat

end

end A074589.P5404863400523982299

namespace A074589

/-- `A000040(Δ[A102363(n)])` -/
def P5404863400523982299.Spec : Prop :=
  ∀ n, P5404863400523982299.a n = A074589 n

end A074589

/-! ## A074589.P2225916962421246341

`A000040(A014473(n)+1)`
-/

namespace A074589.P2225916962421246341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A014473 n + 1).toNat

end

end A074589.P2225916962421246341

namespace A074589

/-- `A000040(A014473(n)+1)` -/
def P2225916962421246341.Spec : Prop :=
  ∀ n, P2225916962421246341.a n = A074589 n

end A074589

/-! ## A074589.P3512329219553742830

`A008578(A007318(n)+1)`
-/

namespace A074589.P3512329219553742830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A007318 n + 1).toNat

end

end A074589.P3512329219553742830

namespace A074589

/-- `A008578(A007318(n)+1)` -/
def P3512329219553742830.Spec : Prop :=
  ∀ n, P3512329219553742830.a n = A074589 n

end A074589

/-! ## A074589.P11119167240961413193

`A000040(A028326(n)/2)`
-/

namespace A074589.P11119167240961413193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((A028326 n : ℚ) / 2)).toNat

end

end A074589.P11119167240961413193

namespace A074589

/-- `A000040(A028326(n)/2)` -/
def P11119167240961413193.Spec : Prop :=
  ∀ n, P11119167240961413193.a n = A074589 n

end A074589

/-! ## A074589.P3439979539771553901

`A000040(root(A008459(n), 2))`
-/

namespace A074589.P3439979539771553901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((A008459 n : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A074589.P3439979539771553901

namespace A074589

/-- `A000040(root(A008459(n), 2))` -/
def P3439979539771553901.Spec : Prop :=
  ∀ n, P3439979539771553901.a n = A074589 n

end A074589

/-! ## A074589.P8636725920427348165

`A000040(A097805(comp[∑[n]]))`
-/

namespace A074589.P8636725920427348165
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A097805 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A074589.P8636725920427348165

namespace A074589

/-- `A000040(A097805(comp[∑[n]]))` -/
def P8636725920427348165.Spec : Prop :=
  ∀ n, P8636725920427348165.a n = A074589 n

end A074589

/-! ## A074589.P5686105702044102497

`A000040(A135225(comp[∑[n]]))`
-/

namespace A074589.P5686105702044102497
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A135225 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A074589.P5686105702044102497

namespace A074589

/-- `A000040(A135225(comp[∑[n]]))` -/
def P5686105702044102497.Spec : Prop :=
  ∀ n, P5686105702044102497.a n = A074589 n

end A074589

/-! ## A074589.P657379970986891809

`A000040(A193554(comp[∑[n]]))`
-/

namespace A074589.P657379970986891809
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A193554 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A074589.P657379970986891809

namespace A074589

/-- `A000040(A193554(comp[∑[n]]))` -/
def P657379970986891809.Spec : Prop :=
  ∀ n, P657379970986891809.a n = A074589 n

end A074589

/-! ## A074589.P1135280650233418511

`A000040(abs(2-A173740(n)))`
-/

namespace A074589.P1135280650233418511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 |2 - A173740 n|.toNat

end

end A074589.P1135280650233418511

namespace A074589

/-- `A000040(abs(2-A173740(n)))` -/
def P1135280650233418511.Spec : Prop :=
  ∀ n, P1135280650233418511.a n = A074589 n

end A074589

/-! ## A074589.P7671432385219988393

`A073846(A028326(n))`
-/

namespace A074589.P7671432385219988393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A028326 n).toNat

end

end A074589.P7671432385219988393

namespace A074589

/-- `A073846(A028326(n))` -/
def P7671432385219988393.Spec : Prop :=
  ∀ n, P7671432385219988393.a n = A074589 n

end A074589

/-!
# A074591: If n is a prime power then 0 else n.

The programs for A074591, the canonical program `A074591.P7866340962004254295` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074591 has offset 1).

The definition of A074591 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010055, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A074591.P7866340962004254295

`(n+1)*(1-A010055(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A074591

/-- `(n+1)*(1-A010055(n+1))` -/
def P7866340962004254295.Spec : Prop :=
  ∀ n, P7866340962004254295.a n = A074591 (n + 1)

theorem P7866340962004254295.correct : P7866340962004254295.Spec := by
  intro n
  simp only [A074591, Nat.add_sub_cancel]

end A074591

/-! ## A074591.P16089426501960526951

`(n+1)%∏{p}[n+1, lcm(#, n+1)]`
-/

namespace A074591.P16089426501960526951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % (∏ p ∈ Nat.primeFactors (f1 n), Nat.lcm p (n + 1))

end

end A074591.P16089426501960526951

namespace A074591

/-- `(n+1)%∏{p}[n+1, lcm(#, n+1)]` -/
def P16089426501960526951.Spec : Prop :=
  ∀ n, (P16089426501960526951.a n : ℤ) = A074591 (n + 1)

end A074591

/-! ## A074591.P2136721240036388513

`(n+1)*A143731(n+1)`
-/

namespace A074591.P2136721240036388513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A143731 (n + 1)

end

end A074591.P2136721240036388513

namespace A074591

/-- `(n+1)*A143731(n+1)` -/
def P2136721240036388513.Spec : Prop :=
  ∀ n, P2136721240036388513.a n = A074591 (n + 1)

end A074591

/-! ## A074591.P13582373950527968146

`(n+1)%A000015(n+1)`
-/

namespace A074591.P13582373950527968146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A000015 (n + 1))

end

end A074591.P13582373950527968146

namespace A074591

/-- `(n+1)%A000015(n+1)` -/
def P13582373950527968146.Spec : Prop :=
  ∀ n, P13582373950527968146.a n = A074591 (n + 1)

end A074591

/-! ## A074591.P11968435470071960405

`(n+1)*A079872(n+1)²`
-/

namespace A074591.P11968435470071960405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A079872 (n + 1) ^ 2

end

end A074591.P11968435470071960405

namespace A074591

/-- `(n+1)*A079872(n+1)²` -/
def P11968435470071960405.Spec : Prop :=
  ∀ n, P11968435470071960405.a n = A074591 (n + 1)

end A074591

/-! ## A074591.P7815476347964689499

`(n+1)*char[A080765(n+1)]`
-/

namespace A074591.P7815476347964689499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A074591.P7815476347964689499

namespace A074591

/-- `(n+1)*char[A080765(n+1)]` -/
def P7815476347964689499.Spec : Prop :=
  ∀ n, (P7815476347964689499.a n : ℤ) = A074591 (n + 1)

end A074591

/-! ## A074591.P3100976547200167965

`(n+1)*floor(atan(A001221(n+1)))`
-/

namespace A074591.P3100976547200167965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌊Real.arctan (A001221 (n + 1) : ℝ)⌋

end

end A074591.P3100976547200167965

namespace A074591

/-- `(n+1)*floor(atan(A001221(n+1)))` -/
def P3100976547200167965.Spec : Prop :=
  ∀ n, P3100976547200167965.a n = A074591 (n + 1)

end A074591

/-! ## A074591.P16308907917528631749

`A143731(n+1)*A153152(n)`
-/

namespace A074591.P16308907917528631749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143731 (n + 1) * A153152 n

end

end A074591.P16308907917528631749

namespace A074591

/-- `A143731(n+1)*A153152(n)` -/
def P16308907917528631749.Spec : Prop :=
  ∀ n, P16308907917528631749.a n = A074591 (n + 1)

end A074591

/-! ## A074591.P7832103924610619071

`A143731(n+1)*A326178(n)`
-/

namespace A074591.P7832103924610619071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143731 (n + 1) * A326178 n

end

end A074591.P7832103924610619071

namespace A074591

/-- `A143731(n+1)*A326178(n)` -/
def P7832103924610619071.Spec : Prop :=
  ∀ n, P7832103924610619071.a n = A074591 (n + 1)

end A074591

/-! ## A074591.P11569150576054602138

`A005915(n)%A130064(n+1)`
-/

namespace A074591.P11569150576054602138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005915 n) (A130064 (n + 1))

end

end A074591.P11569150576054602138

namespace A074591

/-- `A005915(n)%A130064(n+1)` -/
def P11569150576054602138.Spec : Prop :=
  ∀ n, P11569150576054602138.a n = A074591 (n + 1)

end A074591

/-! ## A074591.P18419138619953140957

`A006000(n)%A130064(n+1)`
-/

namespace A074591.P18419138619953140957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006000 n) (A130064 (n + 1))

end

end A074591.P18419138619953140957

namespace A074591

/-- `A006000(n)%A130064(n+1)` -/
def P18419138619953140957.Spec : Prop :=
  ∀ n, P18419138619953140957.a n = A074591 (n + 1)

end A074591

/-! ## A074591.P13570766948459748424

`A011379(n)%A130064(n+1)`
-/

namespace A074591.P13570766948459748424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011379 n) (A130064 (n + 1))

end

end A074591.P13570766948459748424

namespace A074591

/-- `A011379(n)%A130064(n+1)` -/
def P13570766948459748424.Spec : Prop :=
  ∀ n, P13570766948459748424.a n = A074591 (n + 1)

end A074591

/-! ## A074591.P4364263978495795262

`A055112(n)%A130064(n+1)`
-/

namespace A074591.P4364263978495795262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055112 n) (A130064 (n + 1))

end

end A074591.P4364263978495795262

namespace A074591

/-- `A055112(n)%A130064(n+1)` -/
def P4364263978495795262.Spec : Prop :=
  ∀ n, P4364263978495795262.a n = A074591 (n + 1)

end A074591

/-! ## A074591.P11930860385298394306

`A069778(n)%A130064(n+1)`
-/

namespace A074591.P11930860385298394306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069778 n) (A130064 (n + 1))

end

end A074591.P11930860385298394306

namespace A074591

/-- `A069778(n)%A130064(n+1)` -/
def P11930860385298394306.Spec : Prop :=
  ∀ n, P11930860385298394306.a n = A074591 (n + 1)

end A074591

/-! ## A074591.P9540059507568945146

`A101362(n)%A130064(n+1)`
-/

namespace A074591.P9540059507568945146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101362 n) (A130064 (n + 1))

end

end A074591.P9540059507568945146

namespace A074591

/-- `A101362(n)%A130064(n+1)` -/
def P9540059507568945146.Spec : Prop :=
  ∀ n, P9540059507568945146.a n = A074591 (n + 1)

end A074591

/-! ## A074591.P9227677457763950296

`A108495(n)%A130064(n+1)`
-/

namespace A074591.P9227677457763950296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108495 n) (A130064 (n + 1))

end

end A074591.P9227677457763950296

namespace A074591

/-- `A108495(n)%A130064(n+1)` -/
def P9227677457763950296.Spec : Prop :=
  ∀ n, P9227677457763950296.a n = A074591 (n + 1)

end A074591

/-! ## A074591.P1075264494890759377

`A071262(n)%A178637(n+1)`
-/

namespace A074591.P1075264494890759377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071262 n) (A178637 (n + 1))

end

end A074591.P1075264494890759377

namespace A074591

/-- `A071262(n)%A178637(n+1)` -/
def P1075264494890759377.Spec : Prop :=
  ∀ n, P1075264494890759377.a n = A074591 (n + 1)

end A074591

/-! ## A074591.P3366260965327071037

`A085926(n)%A178637(n+1)`
-/

namespace A074591.P3366260965327071037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085926 n) (A178637 (n + 1))

end

end A074591.P3366260965327071037

namespace A074591

/-- `A085926(n)%A178637(n+1)` -/
def P3366260965327071037.Spec : Prop :=
  ∀ n, P3366260965327071037.a n = A074591 (n + 1)

end A074591

/-! ## A074591.P3252313790494051651

`A135503(n)%A130064(n+1)`
-/

namespace A074591.P3252313790494051651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135503 n) (A130064 (n + 1))

end

end A074591.P3252313790494051651

namespace A074591

/-- `A135503(n)%A130064(n+1)` -/
def P3252313790494051651.Spec : Prop :=
  ∀ n, P3252313790494051651.a n = A074591 (n + 1)

end A074591

/-! ## A074591.P5793556719544119008

`A139757(n)%A130064(n+1)`
-/

namespace A074591.P5793556719544119008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139757 n) (A130064 (n + 1))

end

end A074591.P5793556719544119008

namespace A074591

/-- `A139757(n)%A130064(n+1)` -/
def P5793556719544119008.Spec : Prop :=
  ∀ n, P5793556719544119008.a n = A074591 (n + 1)

end A074591

/-!
# A074592: Smallest prime factors of numbers that are not prime powers.

The programs for A074592, there is no canonical definition to state claims against.
-/

/-! ## A074592.P1810100295234526989

`A020639(A024619(n+1))`
-/

namespace A074592.P1810100295234526989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A024619 (n + 1)).toNat

end

end A074592.P1810100295234526989

/-! ## A074592.P16357315631342406113

`A020639(A084365(n+1))`
-/

namespace A074592.P16357315631342406113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A084365 (n + 1)).toNat

end

end A074592.P16357315631342406113

/-! ## A074592.P5136610506405491648

`A020639(A080765(n+1)+1)`
-/

namespace A074592.P5136610506405491648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A080765 (n + 1) + 1).toNat

end

end A074592.P5136610506405491648

/-! ## A074592.P10848969560257430536

`A020639(comp[A181062(n+1)]+1)`
-/

namespace A074592.P10848969560257430536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A074592.P10848969560257430536

/-! ## A074592.P11348289653908915955

`A020639(lt[1, A001221(n+1)]+1)`
-/

namespace A074592.P11348289653908915955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A074592.P11348289653908915955

/-! ## A074592.P1305199839484431908

`A020639(lt[1, A076511(n+1)]+1)`
-/

namespace A074592.P1305199839484431908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A074592.P1305199839484431908

/-! ## A074592.P17860619425244150464

`A020639(lt[1, A080214(n+1)]+1)`
-/

namespace A074592.P17860619425244150464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A074592.P17860619425244150464

/-! ## A074592.P18045413019283753961

`A020639(lt[1, A276781(n+1)]+1)`
-/

namespace A074592.P18045413019283753961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A074592.P18045413019283753961

/-! ## A074592.P16525475214831723587

`A074593(n+1)-A212332(n+1)`
-/

namespace A074592.P16525475214831723587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074593 (n + 1) - A212332 (n + 1)

end

end A074592.P16525475214831723587

/-! ## A074592.P10304245113831116325

`A020639(record[n^a(A001221(n))])` with `a(0)=6, a(1)=0`
-/

namespace A074592.P10304245113831116325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 0] fun n f1 =>
  n ^ f1 (A001221 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A074592.P10304245113831116325

/-! ## A074592.P804762550707586576

`A020639(comp[n^a(A001221(n))])` with `a(0)=2, a(1)=1, a(2)=0`
-/

namespace A074592.P804762550707586576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 0] fun n f1 =>
  n ^ f1 (A001221 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A074592.P804762550707586576

/-! ## A074592.P8051757134413247345

`p?[A020639(n+1)%A006530(n+1)]`
-/

namespace A074592.P8051757134413247345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (n + 1)) (A006530 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074592.P8051757134413247345

/-! ## A074592.P5023282480703624683

`A020639(lt[A020639(n+1), A006530(n+1)]+1)`
-/

namespace A074592.P5023282480703624683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A074592.P5023282480703624683

/-! ## A074592.P4625774957550999533

`A020639(A361102(n+2))`
-/

namespace A074592.P4625774957550999533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A361102 (n + 2)).toNat

end

end A074592.P4625774957550999533

/-! ## A074592.P1029432106206914421

`A020639(lt[2, A066874(n+1)]+1)`
-/

namespace A074592.P1029432106206914421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A074592.P1029432106206914421

/-! ## A074592.P10266833527294967963

`A020639(lt[1, A066882(n)])`
-/

namespace A074592.P10266833527294967963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A074592.P10266833527294967963

/-! ## A074592.P13785377706158940836

`A020639(lt[1, A008480(n+1)]+1)`
-/

namespace A074592.P13785377706158940836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A074592.P13785377706158940836

/-! ## A074592.P15747117579294197089

`A020639(lt[1, A028234(n+1)]+1)`
-/

namespace A074592.P15747117579294197089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A074592.P15747117579294197089

/-! ## A074592.P7302074135042068815

`A361119(A361103(n+1))`
-/

namespace A074592.P7302074135042068815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361119 (A361103 (n + 1)).toNat

end

end A074592.P7302074135042068815

/-!
# A074593: Largest prime factors of numbers that are not prime powers.

The programs for A074593, the canonical program `A074593.P13854002765739044957` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074593 has offset 1).

The definition of A074593 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A024619, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A074593.P13854002765739044957

`A006530(A024619(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A074593

/-- `A006530(A024619(n+1))` -/
def P13854002765739044957.Spec : Prop :=
  ∀ n, P13854002765739044957.a n = A074593 (n + 1)

theorem P13854002765739044957.correct : P13854002765739044957.Spec := by
  intro n
  simp only [A074593, Nat.add_sub_cancel]

end A074593

/-! ## A074593.P15595075087759752175

`A006530(A084365(n+1))`
-/

namespace A074593.P15595075087759752175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A084365 (n + 1)).toNat

end

end A074593.P15595075087759752175

namespace A074593

/-- `A006530(A084365(n+1))` -/
def P15595075087759752175.Spec : Prop :=
  ∀ n, P15595075087759752175.a n = A074593 (n + 1)

end A074593

/-! ## A074593.P1097943665509448119

`A006530(lt[1, A231813(n)])`
-/

namespace A074593.P1097943665509448119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A074593.P1097943665509448119

namespace A074593

/-- `A006530(lt[1, A231813(n)])` -/
def P1097943665509448119.Spec : Prop :=
  ∀ n, P1097943665509448119.a n = A074593 (n + 1)

end A074593

/-! ## A074593.P11684622317176139915

`A006530(comp[A181062(n+1)]+1)`
-/

namespace A074593.P11684622317176139915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A074593.P11684622317176139915

namespace A074593

/-- `A006530(comp[A181062(n+1)]+1)` -/
def P11684622317176139915.Spec : Prop :=
  ∀ n, P11684622317176139915.a n = A074593 (n + 1)

end A074593

/-! ## A074593.P5682000588934618028

`A006530(lt[1, A001221(n+1)]+1)`
-/

namespace A074593.P5682000588934618028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A074593.P5682000588934618028

namespace A074593

/-- `A006530(lt[1, A001221(n+1)]+1)` -/
def P5682000588934618028.Spec : Prop :=
  ∀ n, P5682000588934618028.a n = A074593 (n + 1)

end A074593

/-! ## A074593.P7458939643573161031

`A006530(lt[1, A076511(n+1)]+1)`
-/

namespace A074593.P7458939643573161031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A074593.P7458939643573161031

namespace A074593

/-- `A006530(lt[1, A076511(n+1)]+1)` -/
def P7458939643573161031.Spec : Prop :=
  ∀ n, P7458939643573161031.a n = A074593 (n + 1)

end A074593

/-! ## A074593.P1336217161266947700

`A006530(lt[2, A328830(n+1)]+1)`
-/

namespace A074593.P1336217161266947700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A074593.P1336217161266947700

namespace A074593

/-- `A006530(lt[2, A328830(n+1)]+1)` -/
def P1336217161266947700.Spec : Prop :=
  ∀ n, P1336217161266947700.a n = A074593 (n + 1)

end A074593

/-! ## A074593.P15696685257477140515

`A212332(n+1)+A074592(n+1)`
-/

namespace A074593.P15696685257477140515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212332 (n + 1) + A074592 (n + 1)

end

end A074593.P15696685257477140515

namespace A074593

/-- `A212332(n+1)+A074592(n+1)` -/
def P15696685257477140515.Spec : Prop :=
  ∀ n, P15696685257477140515.a n = A074593 (n + 1)

end A074593

/-! ## A074593.P17134184193403204557

`A006530(record[n^a(A001221(n))])` with `a(0)=6, a(1)=0`
-/

namespace A074593.P17134184193403204557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 0] fun n f1 =>
  n ^ f1 (A001221 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A074593.P17134184193403204557

namespace A074593

/-- `A006530(record[n^a(A001221(n))])` -/
def P17134184193403204557.Spec : Prop :=
  ∀ n, P17134184193403204557.a n = A074593 (n + 1)

end A074593

/-! ## A074593.P16359433894441847980

`A006530(comp[n^a(A001221(n))])` with `a(0)=2, a(1)=1, a(2)=0`
-/

namespace A074593.P16359433894441847980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 0] fun n f1 =>
  n ^ f1 (A001221 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A074593.P16359433894441847980

namespace A074593

/-- `A006530(comp[n^a(A001221(n))])` -/
def P16359433894441847980.Spec : Prop :=
  ∀ n, P16359433894441847980.a n = A074593 (n + 1)

end A074593

/-! ## A074593.P9212345321686585092

`A006530(lt[A020639(n+1), A006530(n+1)]+1)`
-/

namespace A074593.P9212345321686585092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A074593.P9212345321686585092

namespace A074593

/-- `A006530(lt[A020639(n+1), A006530(n+1)]+1)` -/
def P9212345321686585092.Spec : Prop :=
  ∀ n, P9212345321686585092.a n = A074593 (n + 1)

end A074593

/-! ## A074593.P5444014183220038866

`A006530(A361102(n+2))`
-/

namespace A074593.P5444014183220038866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A361102 (n + 2)).toNat

end

end A074593.P5444014183220038866

namespace A074593

/-- `A006530(A361102(n+2))` -/
def P5444014183220038866.Spec : Prop :=
  ∀ n, P5444014183220038866.a n = A074593 (n + 1)

end A074593

/-! ## A074593.P15975092354159786591

`A076566(A080765(n+1))`
-/

namespace A074593.P15975092354159786591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076566 (A080765 (n + 1)).toNat

end

end A074593.P15975092354159786591

namespace A074593

/-- `A076566(A080765(n+1))` -/
def P15975092354159786591.Spec : Prop :=
  ∀ n, P15975092354159786591.a n = A074593 (n + 1)

end A074593

/-! ## A074593.P8732299198556797231

`A006530(lt[1, A066882(n)])`
-/

namespace A074593.P8732299198556797231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A074593.P8732299198556797231

namespace A074593

/-- `A006530(lt[1, A066882(n)])` -/
def P8732299198556797231.Spec : Prop :=
  ∀ n, P8732299198556797231.a n = A074593 (n + 1)

end A074593

/-! ## A074593.P18118756990709833643

`A006530(lt[1, A008480(n+1)]+1)`
-/

namespace A074593.P18118756990709833643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A074593.P18118756990709833643

namespace A074593

/-- `A006530(lt[1, A008480(n+1)]+1)` -/
def P18118756990709833643.Spec : Prop :=
  ∀ n, P18118756990709833643.a n = A074593 (n + 1)

end A074593

/-! ## A074593.P10956528476454289043

`A006530(lt[1, A028234(n+1)]+1)`
-/

namespace A074593.P10956528476454289043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A074593.P10956528476454289043

namespace A074593

/-- `A006530(lt[1, A028234(n+1)]+1)` -/
def P10956528476454289043.Spec : Prop :=
  ∀ n, P10956528476454289043.a n = A074593 (n + 1)

end A074593

/-! ## A074593.P5590252769464083534

`A006530(lt[1, A028236(n+1)]+1)`
-/

namespace A074593.P5590252769464083534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A074593.P5590252769464083534

namespace A074593

/-- `A006530(lt[1, A028236(n+1)]+1)` -/
def P5590252769464083534.Spec : Prop :=
  ∀ n, P5590252769464083534.a n = A074593 (n + 1)

end A074593

/-! ## A074593.P10415416932076468917

`A217434(A084365(2*n+1-n))`
-/

namespace A074593.P10415416932076468917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217434 (A084365 (2 * n + 1 - n)).toNat

end

end A074593.P10415416932076468917

namespace A074593

/-- `A217434(A084365(2*n+1-n))` -/
def P10415416932076468917.Spec : Prop :=
  ∀ n, P10415416932076468917.a n = A074593 (n + 1)

end A074593

/-! ## A074593.P14887577117969421683

`A006530(lt[2, A000005(∏{p}[n+1, #])]+1)`
-/

namespace A074593.P14887577117969421683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f3 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A074593.P14887577117969421683

namespace A074593

/-- `A006530(lt[2, A000005(∏{p}[n+1, #])]+1)` -/
def P14887577117969421683.Spec : Prop :=
  ∀ n, P14887577117969421683.a n = A074593 (n + 1)

end A074593

/-!
# A074594: Number of distinct prime factors of numbers that are not prime powers.

The programs for A074594, the canonical program `A074594.P12974540694644133885` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074594 has offset 1).

The definition of A074594 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A024619, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A074594.P12974540694644133885

`A001221(A024619(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A074594

/-- `A001221(A024619(n+1))` -/
def P12974540694644133885.Spec : Prop :=
  ∀ n, P12974540694644133885.a n = A074594 (n + 1)

theorem P12974540694644133885.correct : P12974540694644133885.Spec := by
  intro n
  simp only [A074594, Nat.add_sub_cancel]

end A074594

/-! ## A074594.P10122153700281141876

`∑{e}[A084365(n+1), #]`
-/

namespace A074594.P10122153700281141876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084365 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A074594.P10122153700281141876

namespace A074594

/-- `∑{e}[A084365(n+1), #]` -/
def P10122153700281141876.Spec : Prop :=
  ∀ n, (P10122153700281141876.a n : ℤ) = A074594 (n + 1)

end A074594

/-! ## A074594.P7474678351948590908

`A001221(A084365(n+1))`
-/

namespace A074594.P7474678351948590908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A084365 (n + 1)).toNat

end

end A074594.P7474678351948590908

namespace A074594

/-- `A001221(A084365(n+1))` -/
def P7474678351948590908.Spec : Prop :=
  ∀ n, P7474678351948590908.a n = A074594 (n + 1)

end A074594

/-! ## A074594.P15609071357211885274

`A001221(lt[1, A231813(n)])`
-/

namespace A074594.P15609071357211885274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A074594.P15609071357211885274

namespace A074594

/-- `A001221(lt[1, A231813(n)])` -/
def P15609071357211885274.Spec : Prop :=
  ∀ n, P15609071357211885274.a n = A074594 (n + 1)

end A074594

/-! ## A074594.P18289042581914963741

`A001221(A080765(n+1)+1)`
-/

namespace A074594.P18289042581914963741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A080765 (n + 1) + 1).toNat

end

end A074594.P18289042581914963741

namespace A074594

/-- `A001221(A080765(n+1)+1)` -/
def P18289042581914963741.Spec : Prop :=
  ∀ n, P18289042581914963741.a n = A074594 (n + 1)

end A074594

/-! ## A074594.P15318810274639473834

`∑{p}[A024619(n+1), A001222(#)]`
-/

namespace A074594.P15318810274639473834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A074594.P15318810274639473834

namespace A074594

/-- `∑{p}[A024619(n+1), A001222(#)]` -/
def P15318810274639473834.Spec : Prop :=
  ∀ n, P15318810274639473834.a n = A074594 (n + 1)

end A074594

/-! ## A074594.P16090737151703896233

`A001222(∏{p}[A024619(n+1), #])`
-/

namespace A074594.P16090737151703896233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A074594.P16090737151703896233

namespace A074594

/-- `A001222(∏{p}[A024619(n+1), #])` -/
def P16090737151703896233.Spec : Prop :=
  ∀ n, P16090737151703896233.a n = A074594 (n + 1)

end A074594

/-! ## A074594.P14326257831023277980

`A001221(lt[1, A001221(n+1)]+1)`
-/

namespace A074594.P14326257831023277980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A074594.P14326257831023277980

namespace A074594

/-- `A001221(lt[1, A001221(n+1)]+1)` -/
def P14326257831023277980.Spec : Prop :=
  ∀ n, P14326257831023277980.a n = A074594 (n + 1)

end A074594

/-! ## A074594.P13842688230631660420

`A001222(A084365(2*n+1-n))`
-/

namespace A074594.P13842688230631660420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A084365 (2 * n + 1 - n)).toNat

end

end A074594.P13842688230631660420

namespace A074594

/-- `A001222(A084365(2*n+1-n))` -/
def P13842688230631660420.Spec : Prop :=
  ∀ n, P13842688230631660420.a n = A074594 (n + 1)

end A074594

/-! ## A074594.P3516575183466548464

`A001221(A361102(n+2))`
-/

namespace A074594.P3516575183466548464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A361102 (n + 2)).toNat

end

end A074594.P3516575183466548464

namespace A074594

/-- `A001221(A361102(n+2))` -/
def P3516575183466548464.Spec : Prop :=
  ∀ n, P3516575183466548464.a n = A074594 (n + 1)

end A074594

/-! ## A074594.P3003069179756481995

`A001221(lt[1, A066882(n)])`
-/

namespace A074594.P3003069179756481995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A074594.P3003069179756481995

namespace A074594

/-- `A001221(lt[1, A066882(n)])` -/
def P3003069179756481995.Spec : Prop :=
  ∀ n, P3003069179756481995.a n = A074594 (n + 1)

end A074594

/-! ## A074594.P18373097363430778041

`∑{p}[lt[A014963(n+2), 2]+2, A001222(#)]`
-/

namespace A074594.P18373097363430778041
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A001222 p

end

end A074594.P18373097363430778041

namespace A074594

/-- `∑{p}[lt[A014963(n+2), 2]+2, A001222(#)]` -/
def P18373097363430778041.Spec : Prop :=
  ∀ n, P18373097363430778041.a n = A074594 (n + 1)

end A074594

/-! ## A074594.P7435092113514820812

`A001222(∏{p}[lt[A014963(n+2), 2]+2, #])`
-/

namespace A074594.P7435092113514820812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A074594.P7435092113514820812

namespace A074594

/-- `A001222(∏{p}[lt[A014963(n+2), 2]+2, #])` -/
def P7435092113514820812.Spec : Prop :=
  ∀ n, P7435092113514820812.a n = A074594 (n + 1)

end A074594

/-! ## A074594.P9084730415058451472

`and(63, A001221(eq[0, A072931(a(A243055(n)))]))` with `a(0)=63`
-/

namespace A074594.P9084730415058451472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [63] fun n f2 =>
  A072931 (f2 (A243055 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 63 (A001221 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n))

end

end A074594.P9084730415058451472

namespace A074594

/-- `and(63, A001221(eq[0, A072931(a(A243055(n)))]))` -/
def P9084730415058451472.Spec : Prop :=
  ∀ n, P9084730415058451472.a n = A074594 (n + 1)

end A074594

/-! ## A074594.P10342350319374152505

`A001221(A360529(n+1))`
-/

namespace A074594.P10342350319374152505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A360529 (n + 1)).toNat

end

end A074594.P10342350319374152505

namespace A074594

/-- `A001221(A360529(n+1))` -/
def P10342350319374152505.Spec : Prop :=
  ∀ n, P10342350319374152505.a n = A074594 (n + 1)

end A074594

/-! ## A074594.P10910702786273460647

`A341644(A074816(A024619(n+1))²)`
-/

namespace A074594.P10910702786273460647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341644 (A074816 (A024619 (n + 1)).toNat ^ 2).toNat

end

end A074594.P10910702786273460647

namespace A074594

/-- `A341644(A074816(A024619(n+1))²)` -/
def P10910702786273460647.Spec : Prop :=
  ∀ n, P10910702786273460647.a n = A074594 (n + 1)

end A074594

/-! ## A074594.P9069246285919786636

`A001222(A084365(n+1)²)/2`
-/

namespace A074594.P9069246285919786636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A084365 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A074594.P9069246285919786636

namespace A074594

/-- `A001222(A084365(n+1)²)/2` -/
def P9069246285919786636.Spec : Prop :=
  ∀ n, P9069246285919786636.a n = (A074594 (n + 1) : ℚ)

end A074594

/-! ## A074594.P4498381401280509961

`A001222(A007947(A024619(n+1)²))`
-/

namespace A074594.P4498381401280509961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007947 (A024619 (n + 1) ^ 2).toNat).toNat

end

end A074594.P4498381401280509961

namespace A074594

/-- `A001222(A007947(A024619(n+1)²))` -/
def P4498381401280509961.Spec : Prop :=
  ∀ n, P4498381401280509961.a n = A074594 (n + 1)

end A074594

/-! ## A074594.P17449929379941452905

`A001222(A007947(A084365(n+1)²))`
-/

namespace A074594.P17449929379941452905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007947 (A084365 (n + 1) ^ 2).toNat).toNat

end

end A074594.P17449929379941452905

namespace A074594

/-- `A001222(A007947(A084365(n+1)²))` -/
def P17449929379941452905.Spec : Prop :=
  ∀ n, P17449929379941452905.a n = A074594 (n + 1)

end A074594

/-! ## A074594.P1203211530261151327

`A005361(A005361(A084365(n+1)²))`
-/

namespace A074594.P1203211530261151327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A005361 (A084365 (n + 1) ^ 2).toNat).toNat

end

end A074594.P1203211530261151327

namespace A074594

/-- `A005361(A005361(A084365(n+1)²))` -/
def P1203211530261151327.Spec : Prop :=
  ∀ n, P1203211530261151327.a n = A074594 (n + 1)

end A074594

/-!
# A074595: Number of prime factors of numbers that are not prime powers (with multiplicity).

The programs for A074595, the canonical program `A074595.P16093768430276289458` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074595 has offset 1).

The definition of A074595 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A024619, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A074595.P16093768430276289458

`A001222(A024619(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A074595

/-- `A001222(A024619(n+1))` -/
def P16093768430276289458.Spec : Prop :=
  ∀ n, P16093768430276289458.a n = A074595 (n + 1)

theorem P16093768430276289458.correct : P16093768430276289458.Spec := by
  intro n
  simp only [A074595, Nat.add_sub_cancel]

end A074595

/-! ## A074595.P2282579541175433502

`A001222(lt[1, A231813(n)])`
-/

namespace A074595.P2282579541175433502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A074595.P2282579541175433502

namespace A074595

/-- `A001222(lt[1, A231813(n)])` -/
def P2282579541175433502.Spec : Prop :=
  ∀ n, P2282579541175433502.a n = A074595 (n + 1)

end A074595

/-! ## A074595.P2944680889655328689

`A001222(A080765(n+1)+1)`
-/

namespace A074595.P2944680889655328689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A080765 (n + 1) + 1).toNat

end

end A074595.P2944680889655328689

namespace A074595

/-- `A001222(A080765(n+1)+1)` -/
def P2944680889655328689.Spec : Prop :=
  ∀ n, P2944680889655328689.a n = A074595 (n + 1)

end A074595

/-! ## A074595.P12417481102089031233

`A001222(comp[A181062(n+1)]+1)`
-/

namespace A074595.P12417481102089031233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A074595.P12417481102089031233

namespace A074595

/-- `A001222(comp[A181062(n+1)]+1)` -/
def P12417481102089031233.Spec : Prop :=
  ∀ n, P12417481102089031233.a n = A074595 (n + 1)

end A074595

/-! ## A074595.P14174926157457681077

`A001222(lt[1, A001221(n+1)]+1)`
-/

namespace A074595.P14174926157457681077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A074595.P14174926157457681077

namespace A074595

/-- `A001222(lt[1, A001221(n+1)]+1)` -/
def P14174926157457681077.Spec : Prop :=
  ∀ n, P14174926157457681077.a n = A074595 (n + 1)

end A074595

/-! ## A074595.P783029330661854878

`A001222(lt[1, A076511(n+1)]+1)`
-/

namespace A074595.P783029330661854878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A074595.P783029330661854878

namespace A074595

/-- `A001222(lt[1, A076511(n+1)]+1)` -/
def P783029330661854878.Spec : Prop :=
  ∀ n, P783029330661854878.a n = A074595 (n + 1)

end A074595

/-! ## A074595.P2528509866549743018

`A001222(lt[1, A318305(n+1)]+1)`
-/

namespace A074595.P2528509866549743018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318305 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A074595.P2528509866549743018

namespace A074595

/-- `A001222(lt[1, A318305(n+1)]+1)` -/
def P2528509866549743018.Spec : Prop :=
  ∀ n, P2528509866549743018.a n = A074595 (n + 1)

end A074595

/-! ## A074595.P13628373251149716637

`A001222(lt[2, A323014(n+1)]+1)`
-/

namespace A074595.P13628373251149716637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323014 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A074595.P13628373251149716637

namespace A074595

/-- `A001222(lt[2, A323014(n+1)]+1)` -/
def P13628373251149716637.Spec : Prop :=
  ∀ n, P13628373251149716637.a n = A074595 (n + 1)

end A074595

/-! ## A074595.P10992677504262503507

`A001222(record[n^a(A001221(n))])` with `a(0)=6, a(1)=0`
-/

namespace A074595.P10992677504262503507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 0] fun n f1 =>
  n ^ f1 (A001221 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A074595.P10992677504262503507

namespace A074595

/-- `A001222(record[n^a(A001221(n))])` -/
def P10992677504262503507.Spec : Prop :=
  ∀ n, P10992677504262503507.a n = A074595 (n + 1)

end A074595

/-! ## A074595.P12533518325635113660

`A001222(lt[A020639(n+1), A006530(n+1)]+1)`
-/

namespace A074595.P12533518325635113660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A074595.P12533518325635113660

namespace A074595

/-- `A001222(lt[A020639(n+1), A006530(n+1)]+1)` -/
def P12533518325635113660.Spec : Prop :=
  ∀ n, P12533518325635113660.a n = A074595 (n + 1)

end A074595

/-! ## A074595.P3226829914791055548

`A001222(lt[A051903(n+1), A001222(n+1)]+1)`
-/

namespace A074595.P3226829914791055548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A074595.P3226829914791055548

namespace A074595

/-- `A001222(lt[A051903(n+1), A001222(n+1)]+1)` -/
def P3226829914791055548.Spec : Prop :=
  ∀ n, P3226829914791055548.a n = A074595 (n + 1)

end A074595

/-! ## A074595.P4480304768314713163

`∑{e}[A361102(n+2), #]`
-/

namespace A074595.P4480304768314713163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A074595.P4480304768314713163

namespace A074595

/-- `∑{e}[A361102(n+2), #]` -/
def P4480304768314713163.Spec : Prop :=
  ∀ n, (P4480304768314713163.a n : ℤ) = A074595 (n + 1)

end A074595

/-! ## A074595.P1168147105811960667

`A001222(A361102(n+2))`
-/

namespace A074595.P1168147105811960667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A361102 (n + 2)).toNat

end

end A074595.P1168147105811960667

namespace A074595

/-- `A001222(A361102(n+2))` -/
def P1168147105811960667.Spec : Prop :=
  ∀ n, P1168147105811960667.a n = A074595 (n + 1)

end A074595

/-! ## A074595.P2733191721446734294

`∑{e}[lt[1, A066882(n)], #]`
-/

namespace A074595.P2733191721446734294
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A074595.P2733191721446734294

namespace A074595

/-- `∑{e}[lt[1, A066882(n)], #]` -/
def P2733191721446734294.Spec : Prop :=
  ∀ n, (P2733191721446734294.a n : ℤ) = A074595 (n + 1)

end A074595

/-! ## A074595.P4403717198318713779

`∑{e}[lt[1, A007875(n+1)]+1, #]`
-/

namespace A074595.P4403717198318713779
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A074595.P4403717198318713779

namespace A074595

/-- `∑{e}[lt[1, A007875(n+1)]+1, #]` -/
def P4403717198318713779.Spec : Prop :=
  ∀ n, (P4403717198318713779.a n : ℤ) = A074595 (n + 1)

end A074595

/-! ## A074595.P10819592760542219507

`A001222(lt[1, A066882(n)])`
-/

namespace A074595.P10819592760542219507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A074595.P10819592760542219507

namespace A074595

/-- `A001222(lt[1, A066882(n)])` -/
def P10819592760542219507.Spec : Prop :=
  ∀ n, P10819592760542219507.a n = A074595 (n + 1)

end A074595

/-! ## A074595.P6016202838490735867

`A001222(eq[1, A014963(n+2)]+2)`
-/

namespace A074595.P6016202838490735867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A074595.P6016202838490735867

namespace A074595

/-- `A001222(eq[1, A014963(n+2)]+2)` -/
def P6016202838490735867.Spec : Prop :=
  ∀ n, P6016202838490735867.a n = A074595 (n + 1)

end A074595

/-! ## A074595.P16769372493972404248

`A001222(lt[2, A182850(n+1)]+1)`
-/

namespace A074595.P16769372493972404248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A074595.P16769372493972404248

namespace A074595

/-- `A001222(lt[2, A182850(n+1)]+1)` -/
def P16769372493972404248.Spec : Prop :=
  ∀ n, P16769372493972404248.a n = A074595 (n + 1)

end A074595

/-! ## A074595.P12464796233590463482

`A001222(lt[A014963(n+3), 2]+3)`
-/

namespace A074595.P12464796233590463482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 3)

end

end A074595.P12464796233590463482

namespace A074595

/-- `A001222(lt[A014963(n+3), 2]+3)` -/
def P12464796233590463482.Spec : Prop :=
  ∀ n, P12464796233590463482.a n = A074595 (n + 1)

end A074595

/-!
# A074596: Numerator of 3 * H(n,3,1), a generalized harmonic number. See A075135.

The programs for A074596, there is no canonical definition to state claims against.
-/

/-! ## A074596.P6291128951310921744

`3*A075135(n+1)`
-/

namespace A074596.P6291128951310921744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A075135 (n + 1)

end

end A074596.P6291128951310921744

/-! ## A074596.P11592082503657561863

`3*A000265(A024216(n))`
-/

namespace A074596.P11592082503657561863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000265 (A024216 n).toNat

end

end A074596.P11592082503657561863

/-!
# A074597: Numerator of 3 * H(n,3,2), a generalized harmonic number. See A075135.

The programs for A074597, there is no canonical definition to state claims against.
-/

/-! ## A074597.P16534189161448404967

`A000265(3*A024395(n))`
-/

namespace A074597.P16534189161448404967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (3 * A024395 n).toNat

end

end A074597.P16534189161448404967

/-!
# A074598: Numerator of 4 * H(n,4,1), a generalized harmonic number. See A075136.

The programs for A074598, there is no canonical definition to state claims against.
-/

/-! ## A074598.P816507778807415379

`4*A075136(n+1)`
-/

namespace A074598.P816507778807415379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A075136 (n + 1)

end

end A074598.P816507778807415379

/-! ## A074598.P3448768190201199584

`lcm(A171977(A005843(n+1)), A075136(n+1))`
-/

namespace A074598.P3448768190201199584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A171977 (A005843 (n + 1)).toNat) (A075136 (n + 1))

end

end A074598.P3448768190201199584

/-!
# A074599: Numerator of 2 * H(n,2,1), a generalized harmonic number. See A075135. Also 2 * A350669.

The programs for A074599, there is no canonical definition to state claims against.
-/

/-! ## A074599.P7476574530592785482

`2*A025550(n+1)`
-/

namespace A074599.P7476574530592785482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025550 (n + 1)

end

end A074599.P7476574530592785482

/-! ## A074599.P13542252546788623845

`A025550(A000027(n+1))+A025550(n+1)`
-/

namespace A074599.P13542252546788623845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025550 (A000027 (n + 1)).toNat + A025550 (n + 1)

end

end A074599.P13542252546788623845

/-! ## A074599.P6022546972606971438

`A025550(n+1)+A245196(A124780(n))+A025550(n+1)`
-/

namespace A074599.P6022546972606971438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025550 (n + 1) + (A245196 (A124780 n).toNat + A025550 (n + 1))

end

end A074599.P6022546972606971438

/-! ## A074599.P15733042247037527671

`2/A025549(n+1)*A004041(n)`
-/

namespace A074599.P15733042247037527671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A025549 (n + 1) : ℚ) * (A004041 n : ℚ)

end

end A074599.P15733042247037527671

/-! ## A074599.P9329364217137439403

`2/A006519(n+1)*A233470(n+1)`
-/

namespace A074599.P9329364217137439403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A006519 (n + 1) : ℚ) * (A233470 (n + 1) : ℚ)

end

end A074599.P9329364217137439403

