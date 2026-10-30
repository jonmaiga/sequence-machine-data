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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
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
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C002
import Seq.B005.C001
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A126500: Number of base 32 n-digit numbers with adjacent digits differing by three or less.

The programs for A126500, there is no canonical definition to state claims against.
-/

/-! ## A126500.P9836708032956120864

`A004277(A126489(n))-A126478(n)`
-/

namespace A126500.P9836708032956120864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A126489 n).toNat - A126478 n

end

end A126500.P9836708032956120864

/-!
# A126501: Number of n-tuples of numbers [0..5] (leading zeros allowed) in which adjacent digits differ by 4 or less.

The programs for A126501, the canonical program `A126501.P13747091634572302499` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126501 has offset 0).

The definition of A126501 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126501.P6142318655221966337

`ogf((1+x)/(1-5x-4x^2))`
-/

namespace A126501.P6142318655221966337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -5, -4] n

end

end A126501.P6142318655221966337

namespace A126501

/-- `ogf((1+x)/(1-5x-4x^2))` -/
def P6142318655221966337.Spec : Prop :=
  ∀ n, P6142318655221966337.a n = A126501 n

end A126501

/-! ## A126501.P13747091634572302499

`5*a(n-1)+4*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126501

/-- `5*a(n-1)+4*a(n-2)` -/
def P13747091634572302499.Spec : Prop :=
  ∀ n, (P13747091634572302499.a n : ℤ) = A126501 n

theorem P13747091634572302499.correct : P13747091634572302499.Spec := by
  intro n
  simp only [A126501]

end A126501

/-! ## A126501.P15930597481421542247

`6*a(n-1)-a(n-2)-4*a(n-3)` with `a(0)=1, a(1)=6, a(2)=34`
-/

namespace A126501.P15930597481421542247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 34] fun n a =>
  6 * a (n - 1) - a (n - 2) - 4 * a (n - 3)

end

end A126501.P15930597481421542247

namespace A126501

/-- `6*a(n-1)-a(n-2)-4*a(n-3)` -/
def P15930597481421542247.Spec : Prop :=
  ∀ n, P15930597481421542247.a n = A126501 n

end A126501

/-! ## A126501.P8478796601749229467

`∑{#}[n, C(n, #)*A179598(#)]`
-/

namespace A126501.P8478796601749229467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A179598 k

end

end A126501.P8478796601749229467

namespace A126501

/-- `∑{#}[n, C(n, #)*A179598(#)]` -/
def P8478796601749229467.Spec : Prop :=
  ∀ n, P8478796601749229467.a n = A126501 n

end A126501

/-! ## A126501.P7968176934705924518

`A015537(n)+∑[A122690(n)]`
-/

namespace A126501.P7968176934705924518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015537 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126501.P7968176934705924518

namespace A126501

/-- `A015537(n)+∑[A122690(n)]` -/
def P7968176934705924518.Spec : Prop :=
  ∀ n, P7968176934705924518.a n = A126501 n

end A126501

/-! ## A126501.P12882471184927448303

`A015537(n+1)+A015537(n)`
-/

namespace A126501.P12882471184927448303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015537 (n + 1) + A015537 n

end

end A126501.P12882471184927448303

namespace A126501

/-- `A015537(n+1)+A015537(n)` -/
def P12882471184927448303.Spec : Prop :=
  ∀ n, P12882471184927448303.a n = A126501 n

end A126501

/-! ## A126501.P3796473243520488892

`A122690(n)+A106567(n)/2`
-/

namespace A126501.P3796473243520488892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122690 n : ℚ) + (A106567 n : ℚ) / 2

end

end A126501.P3796473243520488892

namespace A126501

/-- `A122690(n)+A106567(n)/2` -/
def P3796473243520488892.Spec : Prop :=
  ∀ n, P3796473243520488892.a n = (A126501 n : ℚ)

end A126501

/-! ## A126501.P16407593192167600549

`A122690(n+1)/4`
-/

namespace A126501.P16407593192167600549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122690 (n + 1) : ℚ) / 4

end

end A126501.P16407593192167600549

namespace A126501

/-- `A122690(n+1)/4` -/
def P16407593192167600549.Spec : Prop :=
  ∀ n, P16407593192167600549.a n = (A126501 n : ℚ)

end A126501

/-! ## A126501.P5770780102269694518

`∑{#}[n, (-1)^(n-#)*C(n, #)*A186446(#)]`
-/

namespace A126501.P5770780102269694518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A186446 k : ℚ)

end

end A126501.P5770780102269694518

namespace A126501

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A186446(#)]` -/
def P5770780102269694518.Spec : Prop :=
  ∀ n, P5770780102269694518.a n = (A126501 n : ℚ)

end A126501

/-! ## A126501.P17247827019493046619

`A235118(n)/4^n`
-/

namespace A126501.P17247827019493046619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235118 n : ℚ) / (4 ^ n : ℚ)

end

end A126501.P17247827019493046619

namespace A126501

/-- `A235118(n)/4^n` -/
def P17247827019493046619.Spec : Prop :=
  ∀ n, P17247827019493046619.a n = (A126501 n : ℚ)

end A126501

/-!
# A126502: Number of base 7 n-digit numbers with adjacent digits differing by four or less.

The programs for A126502, the canonical program `A126502.P6687940031577216390` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126502 has offset 0).

The definition of A126502 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126502.P13985092063187013341

`ogf((1+x-x^2)/(1-6x-2x^2+3x^3))`
-/

namespace A126502.P13985092063187013341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, -6, -2, 3] n

end

end A126502.P13985092063187013341

namespace A126502

/-- `ogf((1+x-x^2)/(1-6x-2x^2+3x^3))` -/
def P13985092063187013341.Spec : Prop :=
  ∀ n, P13985092063187013341.a n = A126502 n

end A126502

/-! ## A126502.P6687940031577216390

`6*a(n-1)+2*a(n-2)-3*a(n-3)` with `a(0)=1, a(1)=7, a(2)=43`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126502

/-- `6*a(n-1)+2*a(n-2)-3*a(n-3)` -/
def P6687940031577216390.Spec : Prop :=
  ∀ n, P6687940031577216390.a n = A126502 n

theorem P6687940031577216390.correct : P6687940031577216390.Spec := by
  intro n
  simp only [A126502]

end A126502

/-!
# A126503: Number of base 8 n-digit numbers with adjacent digits differing by four or less.

The programs for A126503, the canonical program `A126503.P11384020090245526684` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126503 has offset 0).

The definition of A126503 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126503.P4310341531480466856

`ogf((1+2x-x^2-x^3)/(1-6x-5x^2+3x^3+2x^4))`
-/

namespace A126503.P4310341531480466856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -1, -1] [1, -6, -5, 3, 2] n

end

end A126503.P4310341531480466856

namespace A126503

/-- `ogf((1+2x-x^2-x^3)/(1-6x-5x^2+3x^3+2x^4))` -/
def P4310341531480466856.Spec : Prop :=
  ∀ n, P4310341531480466856.a n = A126503 n

end A126503

/-! ## A126503.P11384020090245526684

`6*a(n-1)+5*a(n-2)-3*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=8, a(2)=52, a(3)=348`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126503

/-- `6*a(n-1)+5*a(n-2)-3*a(n-3)-2*a(n-4)` -/
def P11384020090245526684.Spec : Prop :=
  ∀ n, P11384020090245526684.a n = A126503 n

theorem P11384020090245526684.correct : P11384020090245526684.Spec := by
  intro n
  simp only [A126503]

end A126503

/-!
# A126504: Number of base 9 n-digit numbers with adjacent digits differing by four or less.

The programs for A126504, the canonical program `A126504.P15900271426190722980` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126504 has offset 0).

The definition of A126504 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126504.P15900271426190722980

`ogf((1+2x-3x^2-x^3+x^4)/(1-7x-x^2+6x^3-x^5))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126504

/-- `ogf((1+2x-3x^2-x^3+x^4)/(1-7x-x^2+6x^3-x^5))` -/
def P15900271426190722980.Spec : Prop :=
  ∀ n, P15900271426190722980.a n = A126504 n

theorem P15900271426190722980.correct : P15900271426190722980.Spec := by
  intro n
  simp only [A126504]

end A126504

/-! ## A126504.P4553623060995176652

`A201042(∑[n+3])%A062397(n)`
-/

namespace A126504.P4553623060995176652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201042 (∑ j ∈ Finset.range (n + 1), f1 j)) (A062397 n)

end

end A126504.P4553623060995176652

namespace A126504

/-- `A201042(∑[n+3])%A062397(n)` -/
def P4553623060995176652.Spec : Prop :=
  ∀ n, P4553623060995176652.a n = A126504 n

end A126504

/-! ## A126504.P15089175761123175026

`A201042(∑[n+3])^(A040000(n)-1)`
-/

namespace A126504.P15089175761123175026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201042 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) ^ (A040000 n - 1 : ℤ)

end

end A126504.P15089175761123175026

namespace A126504

/-- `A201042(∑[n+3])^(A040000(n)-1)` -/
def P15089175761123175026.Spec : Prop :=
  ∀ n, P15089175761123175026.a n = (A126504 n : ℚ)

end A126504

/-! ## A126504.P7719883118248141429

`A201042(∑[n+3])^A019426(2*n)`
-/

namespace A126504.P7719883118248141429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201042 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) ^ (A019426 (2 * n) : ℤ)

end

end A126504.P7719883118248141429

namespace A126504

/-- `A201042(∑[n+3])^A019426(2*n)` -/
def P7719883118248141429.Spec : Prop :=
  ∀ n, P7719883118248141429.a n = (A126504 n : ℚ)

end A126504

/-! ## A126504.P15851276054337388491

`gcd(A201042(∑[n+3]), A323169(2*n+1))`
-/

namespace A126504.P15851276054337388491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A201042 (∑ j ∈ Finset.range (n + 1), f1 j)) (A323169 (2 * n + 1))

end

end A126504.P15851276054337388491

namespace A126504

/-- `gcd(A201042(∑[n+3]), A323169(2*n+1))` -/
def P15851276054337388491.Spec : Prop :=
  ∀ n, (P15851276054337388491.a n : ℤ) = A126504 n

end A126504

/-! ## A126504.P434803998609100847

`A201042(∑[n+3])^(A000040(n+1)%2)`
-/

namespace A126504.P434803998609100847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201042 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A126504.P434803998609100847

namespace A126504

/-- `A201042(∑[n+3])^(A000040(n+1)%2)` -/
def P434803998609100847.Spec : Prop :=
  ∀ n, P434803998609100847.a n = (A126504 n : ℚ)

end A126504

/-! ## A126504.P15223879166210125841

`A201042(A055998(n+1))%A074610(n)`
-/

namespace A126504.P15223879166210125841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201042 (A055998 (n + 1)).toNat) (A074610 n)

end

end A126504.P15223879166210125841

namespace A126504

/-- `A201042(A055998(n+1))%A074610(n)` -/
def P15223879166210125841.Spec : Prop :=
  ∀ n, P15223879166210125841.a n = A126504 n

end A126504

/-!
# A126505: Number of base 10 n-digit numbers with adjacent digits differing by four or less.

The programs for A126505, the canonical program `A126505.P6295759164138402961` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126505 has offset 0).

The definition of A126505 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126505.P6295759164138402961

`ogf((1+3x-3x^2-4x^3+x^4+x^5)/(1-7x-3x^2+6x^3+x^4-x^5))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126505

/-- `ogf((1+3x-3x^2-4x^3+x^4+x^5)/(1-7x-3x^2+6x^3+x^4-x^5))` -/
def P6295759164138402961.Spec : Prop :=
  ∀ n, P6295759164138402961.a n = A126505 n

theorem P6295759164138402961.correct : P6295759164138402961.Spec := by
  intro n
  simp only [A126505]

end A126505

/-!
# A126506: Number of base 11 n-digit numbers with adjacent digits differing by four or less.

The programs for A126506, the canonical program `A126506.P16479294831068401853` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126506 has offset 0).

The definition of A126506 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126506.P16479294831068401853

`ogf((1+3x-7x^2-6x^3+8x^4+2x^5-2x^6)/(1-8x+2x^2+13x^3-6x^4-4x^5+2x^6))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126506

/-- `ogf((1+3x-7x^2-6x^3+8x^4+2x^5-2x^6)/(1-8x+2x^2+13x^3-6x^4-4x^5+2x^6))` -/
def P16479294831068401853.Spec : Prop :=
  ∀ n, P16479294831068401853.a n = A126506 n

theorem P16479294831068401853.correct : P16479294831068401853.Spec := by
  intro n
  simp only [A126506]

end A126506

/-!
# A126507: Number of base 12 n-digit numbers with adjacent digits differing by four or less.

The programs for A126507, the canonical program `A126507.P1420379129703181201` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126507 has offset 0).

The definition of A126507 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126507.P1420379129703181201

`ogf((1+4x-8x^2-14x^3+6x^4+6x^5)/(1-8x+18x^3-2x^4-6x^5))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126507

/-- `ogf((1+4x-8x^2-14x^3+6x^4+6x^5)/(1-8x+18x^3-2x^4-6x^5))` -/
def P1420379129703181201.Spec : Prop :=
  ∀ n, P1420379129703181201.a n = A126507 n

theorem P1420379129703181201.correct : P1420379129703181201.Spec := by
  intro n
  simp only [A126507]

end A126507

/-!
# A126508: Number of base 13 n-digit numbers with adjacent digits differing by four or less.

The programs for A126508, the canonical program `A126508.P11768246035918333412` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126508 has offset 0).

The definition of A126508 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126508.P11768246035918333412

`ogf((1+4x-14x^2-16x^3+22x^4+8x^5-8x^6)/(1-9x+6x^2+26x^3-18x^4-12x^5+8x^6))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126508

/-- `ogf((1+4x-14x^2-16x^3+22x^4+8x^5-8x^6)/(1-9x+6x^2+26x^3-18x^4-12x^5+8x^6))` -/
def P11768246035918333412.Spec : Prop :=
  ∀ n, P11768246035918333412.a n = A126508 n

theorem P11768246035918333412.correct : P11768246035918333412.Spec := by
  intro n
  simp only [A126508]

end A126508

/-!
# A126509: Number of base 14 n-digit numbers with adjacent digits differing by four or less.

The programs for A126509, the canonical program `A126509.P1546209368544457767` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126509 has offset 0).

The definition of A126509 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126509.P1546209368544457767

`ogf((1+5x-16x^2-30x^3+14x^4+20x^5)/(1-9x+4x^2+34x^3-6x^4-20x^5))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126509

/-- `ogf((1+5x-16x^2-30x^3+14x^4+20x^5)/(1-9x+4x^2+34x^3-6x^4-20x^5))` -/
def P1546209368544457767.Spec : Prop :=
  ∀ n, P1546209368544457767.a n = A126509 n

theorem P1546209368544457767.correct : P1546209368544457767.Spec := by
  intro n
  simp only [A126509]

end A126509

/-!
# A126510: Number of base 15 n-digit numbers with adjacent digits differing by four or less.

The programs for A126510, the canonical program `A126510.P13836995760509936230` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126510 has offset 0).

The definition of A126510 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126510.P13836995760509936230

`ogf((1+6x-18x^2-48x^3-6x^4+24x^5+8x^6)/(1-9x+2x^2+42x^3+14x^4-20x^5-8x^6))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126510

/-- `ogf((1+6x-18x^2-48x^3-6x^4+24x^5+8x^6)/(1-9x+2x^2+42x^3+14x^4-20x^5-8x^6))` -/
def P13836995760509936230.Spec : Prop :=
  ∀ n, P13836995760509936230.a n = A126510 n

theorem P13836995760509936230.correct : P13836995760509936230.Spec := by
  intro n
  simp only [A126510]

end A126510

/-!
# A126511: Number of base 16 n-digit numbers with adjacent digits differing by four or less.

The programs for A126511, the canonical program `A126511.P18181498947489134370` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126511 has offset 0).

The definition of A126511 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126511.P18181498947489134370

`ogf((1+7x-20x^2-70x^3-40x^4+8x^5+6x^6)/(1-9x+50x^3+40x^4-4x^5-6x^6))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126511

/-- `ogf((1+7x-20x^2-70x^3-40x^4+8x^5+6x^6)/(1-9x+50x^3+40x^4-4x^5-6x^6))` -/
def P18181498947489134370.Spec : Prop :=
  ∀ n, P18181498947489134370.a n = A126511 n

theorem P18181498947489134370.correct : P18181498947489134370.Spec := by
  intro n
  simp only [A126511]

end A126511

/-! ## A126511.P14705929350164251758

`A126517(n)-A300222(A025192(2*n))`
-/

namespace A126511.P14705929350164251758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126517 n - A300222 (A025192 (2 * n)).toNat

end

end A126511.P14705929350164251758

namespace A126511

/-- `A126517(n)-A300222(A025192(2*n))` -/
def P14705929350164251758.Spec : Prop :=
  ∀ n, P14705929350164251758.a n = A126511 n

end A126511

/-!
# A126512: Number of base 17 n-digit numbers with adjacent digits differing by four or less.

The programs for A126512, the canonical program `A126512.P12008492372644937854` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126512 has offset 0).

The definition of A126512 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126512.P12008492372644937854

`ogf((1+7x-30x^2-74x^3+7x^4+56x^5+10x^6-8x^7-2x^8)/(1-10x+7x^2+60x^3+13x^4-43x^5-14x^6+6x^7+2x^8))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126512

/-- `ogf((1+7x-30x^2-74x^3+7x^4+56x^5+10x^6-8x^7-2x^8)/(1-10x+7x^2+60x^3+13x^4-43x^5-14x^6+6x^7+2x^8))` -/
def P12008492372644937854.Spec : Prop :=
  ∀ n, P12008492372644937854.a n = A126512 n

theorem P12008492372644937854.correct : P12008492372644937854.Spec := by
  intro n
  simp only [A126512]

end A126512

/-!
# A126513: Number of base 18 n-digit numbers with adjacent digits differing by four or less.

The programs for A126513, there is no canonical definition to state claims against.
-/

/-! ## A126513.P9111234942854883063

`A014682(A126515(n)+A126511(n))`
-/

namespace A126513.P9111234942854883063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A126515 n + A126511 n).toNat

end

end A126513.P9111234942854883063

/-!
# A126514: Number of base 19 n-digit numbers with adjacent digits differing by four or less.

The programs for A126514, there is no canonical definition to state claims against.
-/

/-! ## A126514.P4006685819049973632

`A000027(A126515(n)-A140429(n)²)`
-/

namespace A126514.P4006685819049973632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A126515 n - A140429 n ^ 2).toNat

end

end A126514.P4006685819049973632

/-! ## A126514.P16624423880128203731

`A126520(n)-A300222(A025192(2*n))`
-/

namespace A126514.P16624423880128203731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126520 n - A300222 (A025192 (2 * n)).toNat

end

end A126514.P16624423880128203731

/-!
# A126515: Number of base 20 n-digit numbers with adjacent digits differing by four or less.

The programs for A126515, there is no canonical definition to state claims against.
-/

/-! ## A126515.P2380716409959858829

`A000027(A126516(n)-A140429(n)²)`
-/

namespace A126515.P2380716409959858829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A126516 n - A140429 n ^ 2).toNat

end

end A126515.P2380716409959858829

/-! ## A126515.P14234314185366941300

`A140429(n)²+A126520(n)-A300222(A025192(2*n))`
-/

namespace A126515.P14234314185366941300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n ^ 2 + (A126520 n - A300222 (A025192 (2 * n)).toNat)

end

end A126515.P14234314185366941300

/-!
# A126516: Number of base 21 n-digit numbers with adjacent digits differing by four or less.

The programs for A126516, there is no canonical definition to state claims against.
-/

/-! ## A126516.P2515718108871048207

`A000027(A126515(n)+A140429(n)²)`
-/

namespace A126516.P2515718108871048207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A126515 n + A140429 n ^ 2).toNat

end

end A126516.P2515718108871048207

/-!
# A126517: Number of base 22 n-digit numbers with adjacent digits differing by four or less.

The programs for A126517, there is no canonical definition to state claims against.
-/

/-! ## A126517.P17287985000439071782

`A000027(A126516(n)+A140429(n)²)`
-/

namespace A126517.P17287985000439071782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A126516 n + A140429 n ^ 2).toNat

end

end A126517.P17287985000439071782

/-! ## A126517.P7112249313008966095

`A000027(A126520(n)-A140429(2*n))`
-/

namespace A126517.P7112249313008966095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A126520 n - A140429 (2 * n)).toNat

end

end A126517.P7112249313008966095

/-!
# A126518: Number of base 23 n-digit numbers with adjacent digits differing by four or less.

The programs for A126518, there is no canonical definition to state claims against.
-/

/-! ## A126518.P14384790072913951745

`A000027(A126516(n)+A140429(n)²)+A140429(n)²`
-/

namespace A126518.P14384790072913951745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A126516 n + A140429 n ^ 2).toNat + A140429 n ^ 2

end

end A126518.P14384790072913951745

/-!
# A126519: Number of base 24 n-digit numbers with adjacent digits differing by four or less.

The programs for A126519, there is no canonical definition to state claims against.
-/

/-! ## A126519.P7721743002691586476

`A000027(A126522(n)-A140429(2*n))`
-/

namespace A126519.P7721743002691586476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A126522 n - A140429 (2 * n)).toNat

end

end A126519.P7721743002691586476

/-! ## A126519.P2551853987234151023

`A126522(n)-A140429(A062399(2*n))`
-/

namespace A126519.P2551853987234151023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126522 n - A140429 (A062399 (2 * n)).toNat

end

end A126519.P2551853987234151023

/-!
# A126520: Number of base 25 n-digit numbers with adjacent digits differing by four or less.

The programs for A126520, there is no canonical definition to state claims against.
-/

/-! ## A126520.P12164929134922613911

`A140429(n)²+A126525(n)-A300222(A025192(2*n))`
-/

namespace A126520.P12164929134922613911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n ^ 2 + (A126525 n - A300222 (A025192 (2 * n)).toNat)

end

end A126520.P12164929134922613911

/-! ## A126520.P3246418734951408174

`A000027(A126524(n)-A140429(2*n))-A140429(n)²`
-/

namespace A126520.P3246418734951408174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A126524 n - A140429 (2 * n)).toNat - A140429 n ^ 2

end

end A126520.P3246418734951408174

/-!
# A126521: Number of base 26 n-digit numbers with adjacent digits differing by four or less.

The programs for A126521, there is no canonical definition to state claims against.
-/

/-! ## A126521.P7785121264107104884

`A000027(A126524(n)-A140429(2*n))`
-/

namespace A126521.P7785121264107104884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A126524 n - A140429 (2 * n)).toNat

end

end A126521.P7785121264107104884

/-! ## A126521.P14606854378102336959

`A126524(n)-A140429(A062399(2*n))`
-/

namespace A126521.P14606854378102336959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126524 n - A140429 (A062399 (2 * n)).toNat

end

end A126521.P14606854378102336959

/-!
# A126522: Number of base 27 n-digit numbers with adjacent digits differing by four or less.

The programs for A126522, there is no canonical definition to state claims against.
-/

/-! ## A126522.P8749114220918867572

`A000027(A126525(n)-A140429(2*n))`
-/

namespace A126522.P8749114220918867572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A126525 n - A140429 (2 * n)).toNat

end

end A126522.P8749114220918867572

/-! ## A126522.P2986807510023593370

`A126525(n)-A140429(A062399(2*n))`
-/

namespace A126522.P2986807510023593370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126525 n - A140429 (A062399 (2 * n)).toNat

end

end A126522.P2986807510023593370

/-!
# A126523: Number of base 28 n-digit numbers with adjacent digits differing by four or less.

The programs for A126523, there is no canonical definition to state claims against.
-/

/-! ## A126523.P14243501072257387149

`A126527(n)-A056838(Δ[3^n])`
-/

namespace A126523.P14243501072257387149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126527 n - A056838 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A126523.P14243501072257387149

/-! ## A126523.P2855891244632521306

`A340197(A000079(2*n+1))+A126517(n)`
-/

namespace A126523.P2855891244632521306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340197 (A000079 (2 * n + 1)).toNat + A126517 n

end

end A126523.P2855891244632521306

/-!
# A126524: Number of base 29 n-digit numbers with adjacent digits differing by four or less.

The programs for A126524, there is no canonical definition to state claims against.
-/

/-! ## A126524.P7875144358419599890

`A000027(A126525(n)-A140429(n)²)`
-/

namespace A126524.P7875144358419599890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A126525 n - A140429 n ^ 2).toNat

end

end A126524.P7875144358419599890

/-! ## A126524.P760815565227892092

`A300222(A025192(2*n))+A126518(n)`
-/

namespace A126524.P760815565227892092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300222 (A025192 (2 * n)).toNat + A126518 n

end

end A126524.P760815565227892092

/-!
# A126525: Number of base 30 n-digit numbers with adjacent digits differing by four or less.

The programs for A126525, there is no canonical definition to state claims against.
-/

/-! ## A126525.P8843312135871257898

`A000027(A126524(n)+A140429(n)²)`
-/

namespace A126525.P8843312135871257898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A126524 n + A140429 n ^ 2).toNat

end

end A126525.P8843312135871257898

/-! ## A126525.P2511856603402291286

`A000027(A140429(2*n)+A126522(n))`
-/

namespace A126525.P2511856603402291286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A140429 (2 * n) + A126522 n).toNat

end

end A126525.P2511856603402291286

/-!
# A126526: Number of base 31 n-digit numbers with adjacent digits differing by four or less.

The programs for A126526, there is no canonical definition to state claims against.
-/

/-! ## A126526.P11271410534579576258

`A000027(A126525(n)+A140429(n)²)`
-/

namespace A126526.P11271410534579576258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A126525 n + A140429 n ^ 2).toNat

end

end A126526.P11271410534579576258

/-! ## A126526.P15160257104445856374

`A300222(A025192(2*n))+A126520(n)`
-/

namespace A126526.P15160257104445856374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300222 (A025192 (2 * n)).toNat + A126520 n

end

end A126526.P15160257104445856374

/-!
# A126527: Number of base 32 n-digit numbers with adjacent digits differing by four or less.

The programs for A126527, there is no canonical definition to state claims against.
-/

/-! ## A126527.P8250293369775164189

`A000027(A126526(n)+A140429(n)²)`
-/

namespace A126527.P8250293369775164189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A126526 n + A140429 n ^ 2).toNat

end

end A126527.P8250293369775164189

/-! ## A126527.P3806669064565656736

`A000027(A140429(2*n)+A126524(n))`
-/

namespace A126527.P3806669064565656736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A140429 (2 * n) + A126524 n).toNat

end

end A126527.P3806669064565656736

/-!
# A126528: Number of base 7 n-digit numbers with adjacent digits differing by five or less.

The programs for A126528, the canonical program `A126528.P12443830806879842938` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126528 has offset 0).

The definition of A126528 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126528.P15408476105488944279

`ogf((1+x)/(1-6x-5x^2))`
-/

namespace A126528.P15408476105488944279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -6, -5] n

end

end A126528.P15408476105488944279

namespace A126528

/-- `ogf((1+x)/(1-6x-5x^2))` -/
def P15408476105488944279.Spec : Prop :=
  ∀ n, P15408476105488944279.a n = A126528 n

end A126528

/-! ## A126528.P12443830806879842938

`6*a(n-1)+5*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126528

/-- `6*a(n-1)+5*a(n-2)` -/
def P12443830806879842938.Spec : Prop :=
  ∀ n, (P12443830806879842938.a n : ℤ) = A126528 n

theorem P12443830806879842938.correct : P12443830806879842938.Spec := by
  intro n
  simp only [A126528]

end A126528

/-! ## A126528.P10445306039719886658

`A091928(n+1)/5`
-/

namespace A126528.P10445306039719886658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091928 (n + 1) : ℚ) / 5

end

end A126528.P10445306039719886658

namespace A126528

/-- `A091928(n+1)/5` -/
def P10445306039719886658.Spec : Prop :=
  ∀ n, P10445306039719886658.a n = (A126528 n : ℚ)

end A126528

/-! ## A126528.P18400487711125188397

`7*a(n-1)-a(n-2)-5*a(n-3)` with `a(0)=1, a(1)=7, a(2)=47`
-/

namespace A126528.P18400487711125188397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 47] fun n a =>
  7 * a (n - 1) - a (n - 2) - 5 * a (n - 3)

end

end A126528.P18400487711125188397

namespace A126528

/-- `7*a(n-1)-a(n-2)-5*a(n-3)` -/
def P18400487711125188397.Spec : Prop :=
  ∀ n, P18400487711125188397.a n = A126528 n

end A126528

/-! ## A126528.P13735140533584099957

`A015551(n)+∑[A091928(n)]`
-/

namespace A126528.P13735140533584099957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015551 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126528.P13735140533584099957

namespace A126528

/-- `A015551(n)+∑[A091928(n)]` -/
def P13735140533584099957.Spec : Prop :=
  ∀ n, P13735140533584099957.a n = A126528 n

end A126528

/-! ## A126528.P5000306190766937494

`A015551(n+1)+A015551(n)`
-/

namespace A126528.P5000306190766937494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015551 (n + 1) + A015551 n

end

end A126528.P5000306190766937494

namespace A126528

/-- `A015551(n+1)+A015551(n)` -/
def P5000306190766937494.Spec : Prop :=
  ∀ n, P5000306190766937494.a n = A126528 n

end A126528

/-! ## A126528.P11549474732264841836

`Δ[A091927(n)]+2*A123362(n)`
-/

namespace A126528.P11549474732264841836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091927 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A123362 n

end

end A126528.P11549474732264841836

namespace A126528

/-- `Δ[A091927(n)]+2*A123362(n)` -/
def P11549474732264841836.Spec : Prop :=
  ∀ n, P11549474732264841836.a n = A126528 n

end A126528

/-! ## A126528.P8408169497463077655

`∑[A091928(n)]+A123362(n)-A091927(n)`
-/

namespace A126528.P8408169497463077655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A123362 n - A091927 n)

end

end A126528.P8408169497463077655

namespace A126528

/-- `∑[A091928(n)]+A123362(n)-A091927(n)` -/
def P8408169497463077655.Spec : Prop :=
  ∀ n, P8408169497463077655.a n = A126528 n

end A126528

/-! ## A126528.P5844099789966822128

`record[A091928(A344180(n))/5]`
-/

namespace A126528.P5844099789966822128
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091928 (A344180 n).toNat : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126528.P5844099789966822128

namespace A126528

/-- `record[A091928(A344180(n))/5]` -/
def P5844099789966822128.Spec : Prop :=
  ∀ n, P5844099789966822128.a n = (A126528 n : ℚ)

end A126528

/-!
# A126529: Number of base 8 n-digit numbers with adjacent digits differing by five or less.

The programs for A126529, the canonical program `A126529.P1254182873148211544` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126529 has offset 0).

The definition of A126529 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126529.P6505697442263356109

`ogf((1+x-x^2)/(1-7x-3x^2+4x^3))`
-/

namespace A126529.P6505697442263356109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, -7, -3, 4] n

end

end A126529.P6505697442263356109

namespace A126529

/-- `ogf((1+x-x^2)/(1-7x-3x^2+4x^3))` -/
def P6505697442263356109.Spec : Prop :=
  ∀ n, P6505697442263356109.a n = A126529 n

end A126529

/-! ## A126529.P1254182873148211544

`7*a(n-1)+3*a(n-2)-4*a(n-3)` with `a(0)=1, a(1)=8, a(2)=58`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126529

/-- `7*a(n-1)+3*a(n-2)-4*a(n-3)` -/
def P1254182873148211544.Spec : Prop :=
  ∀ n, P1254182873148211544.a n = A126529 n

theorem P1254182873148211544.correct : P1254182873148211544.Spec := by
  intro n
  simp only [A126529]

end A126529

/-!
# A126530: Number of base 9 n-digit numbers with adjacent digits differing by five or less.

The programs for A126530, the canonical program `A126530.P12770812876300514152` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126530 has offset 0).

The definition of A126530 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126530.P12809492547176957901

`ogf((1+2x-x^2-x^3)/(1-7x-7x^2+4x^3+3x^4))`
-/

namespace A126530.P12809492547176957901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -1, -1] [1, -7, -7, 4, 3] n

end

end A126530.P12809492547176957901

namespace A126530

/-- `ogf((1+2x-x^2-x^3)/(1-7x-7x^2+4x^3+3x^4))` -/
def P12809492547176957901.Spec : Prop :=
  ∀ n, P12809492547176957901.a n = A126530 n

end A126530

/-! ## A126530.P12770812876300514152

`7*a(n-1)+7*a(n-2)-4*a(n-3)-3*a(n-4)` with `a(0)=1, a(1)=9, a(2)=69, a(3)=541`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126530

/-- `7*a(n-1)+7*a(n-2)-4*a(n-3)-3*a(n-4)` -/
def P12770812876300514152.Spec : Prop :=
  ∀ n, P12770812876300514152.a n = A126530 n

theorem P12770812876300514152.correct : P12770812876300514152.Spec := by
  intro n
  simp only [A126530]

end A126530

/-!
# A126531: Number of base 10 n-digit numbers with adjacent digits differing by five or less.

The programs for A126531, the canonical program `A126531.P11897930692629806523` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126531 has offset 0).

The definition of A126531 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126531.P11897930692629806523

`ogf((1+2x-3x^2-x^3+x^4)/(1-8x-3x^2+9x^3+x^4-2x^5))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126531

/-- `ogf((1+2x-3x^2-x^3+x^4)/(1-8x-3x^2+9x^3+x^4-2x^5))` -/
def P11897930692629806523.Spec : Prop :=
  ∀ n, P11897930692629806523.a n = A126531 n

theorem P11897930692629806523.correct : P11897930692629806523.Spec := by
  intro n
  simp only [A126531]

end A126531

/-!
# A126532: Number of base 11 n-digit numbers with adjacent digits differing by five or less.

The programs for A126532, the canonical program `A126532.P2416871551386201768` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126532 has offset 0).

The definition of A126532 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126532.P2416871551386201768

`ogf((1+3x-3x^2-4x^3+x^4+x^5)/(1-8x-6x^2+9x^3+5x^4-2x^5-x^6))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126532

/-- `ogf((1+3x-3x^2-4x^3+x^4+x^5)/(1-8x-6x^2+9x^3+5x^4-2x^5-x^6))` -/
def P2416871551386201768.Spec : Prop :=
  ∀ n, P2416871551386201768.a n = A126532 n

theorem P2416871551386201768.correct : P2416871551386201768.Spec := by
  intro n
  simp only [A126532]

end A126532

/-!
# A126533: Number of base 12 n-digit numbers with adjacent digits differing by five or less.

The programs for A126533, the canonical program `A126533.P18249960677971821708` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126533 has offset 0).

The definition of A126533 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126533.P18249960677971821708

`ogf((1+3x-6x^2-4x^3+5x^4+x^5-x^6)/(1-9x+12x^3-3x^4-3x^5+x^6))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126533

/-- `ogf((1+3x-6x^2-4x^3+5x^4+x^5-x^6)/(1-9x+12x^3-3x^4-3x^5+x^6))` -/
def P18249960677971821708.Spec : Prop :=
  ∀ n, P18249960677971821708.a n = A126533 n

theorem P18249960677971821708.correct : P18249960677971821708.Spec := by
  intro n
  simp only [A126533]

end A126533

/-!
# A126534: Number of base 13 n-digit numbers with adjacent digits differing by five or less.

The programs for A126534, the canonical program `A126534.P16514580008212400427` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126534 has offset 0).

The definition of A126534 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126534.P16514580008212400427

`ogf((1+4x-7x^2-13x^3+8x^4+10x^5-2x^6-2x^7)/(1-9x-3x^2+20x^3+x^4-12x^5+2x^7))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126534

/-- `ogf((1+4x-7x^2-13x^3+8x^4+10x^5-2x^6-2x^7)/(1-9x-3x^2+20x^3+x^4-12x^5+2x^7))` -/
def P16514580008212400427.Spec : Prop :=
  ∀ n, P16514580008212400427.a n = A126534 n

theorem P16514580008212400427.correct : P16514580008212400427.Spec := by
  intro n
  simp only [A126534]

end A126534

/-!
# A126535: Number of base 14 n-digit numbers with adjacent digits differing by five or less.

The programs for A126535, the canonical program `A126535.P7884500855464022424` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126535 has offset 0).

The definition of A126535 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126535.P7884500855464022424

`ogf((1+4x-12x^2-14x^3+20x^4+6x^5-6x^6)/(1-10x+4x^2+26x^3-16x^4-10x^5+6x^6))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126535

/-- `ogf((1+4x-12x^2-14x^3+20x^4+6x^5-6x^6)/(1-10x+4x^2+26x^3-16x^4-10x^5+6x^6))` -/
def P7884500855464022424.Spec : Prop :=
  ∀ n, P7884500855464022424.a n = A126535 n

theorem P7884500855464022424.correct : P7884500855464022424.Spec := by
  intro n
  simp only [A126535]

end A126535

/-!
# A126536: Number of base 15 n-digit numbers with adjacent digits differing by five or less.

The programs for A126536, the canonical program `A126536.P1081766933397274446` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126536 has offset 0).

The definition of A126536 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126536.P1081766933397274446

`ogf((1+5x-14x^2-30x^3+22x^4+30x^5-8x^6-8x^7)/(1-10x+x^2+40x^3-8x^4-34x^5+4x^6+8x^7))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126536

/-- `ogf((1+5x-14x^2-30x^3+22x^4+30x^5-8x^6-8x^7)/(1-10x+x^2+40x^3-8x^4-34x^5+4x^6+8x^7))` -/
def P1081766933397274446.Spec : Prop :=
  ∀ n, P1081766933397274446.a n = A126536 n

theorem P1081766933397274446.correct : P1081766933397274446.Spec := by
  intro n
  simp only [A126536]

end A126536

/-!
# A126537: Number of base 16 n-digit numbers with adjacent digits differing by five or less.

The programs for A126537, the canonical program `A126537.P8559113859526695078` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126537 has offset 0).

The definition of A126537 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126537.P8559113859526695078

`ogf((1+5x-21x^2-30x^3+44x^4+20x^5-20x^6)/(1-11x+9x^2+46x^3-36x^4-28x^5+20x^6))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126537

/-- `ogf((1+5x-21x^2-30x^3+44x^4+20x^5-20x^6)/(1-11x+9x^2+46x^3-36x^4-28x^5+20x^6))` -/
def P8559113859526695078.Spec : Prop :=
  ∀ n, P8559113859526695078.a n = A126537 n

theorem P8559113859526695078.correct : P8559113859526695078.Spec := by
  intro n
  simp only [A126537]

end A126537

/-!
# A126538: Number of base 17 n-digit numbers with adjacent digits differing by five or less.

The programs for A126538, the canonical program `A126538.P8315176862313364737` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126538 has offset 0).

The definition of A126538 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126538.P8315176862313364737

`ogf((1+6x-24x^2-54x^3+42x^4+72x^5-16x^6-24x^7)/(1-11x+6x^2+64x^3-18x^4-76x^5+8x^6+24x^7))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126538

/-- `ogf((1+6x-24x^2-54x^3+42x^4+72x^5-16x^6-24x^7)/(1-11x+6x^2+64x^3-18x^4-76x^5+8x^6+24x^7))` -/
def P8315176862313364737.Spec : Prop :=
  ∀ n, P8315176862313364737.a n = A126538 n

theorem P8315176862313364737.correct : P8315176862313364737.Spec := by
  intro n
  simp only [A126538]

end A126538

/-!
# A126539: Number of base 18 n-digit numbers with adjacent digits differing by five or less.

The programs for A126539, the canonical program `A126539.P12374115973675516971` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126539 has offset 0).

The definition of A126539 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126539.P12374115973675516971

`ogf((1+6x-33x^2-51x^3+76x^4+64x^5-36x^6-20x^7)/(1-12x+15x^2+67x^3-52x^4-72x^5+28x^6+20x^7))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126539

/-- `ogf((1+6x-33x^2-51x^3+76x^4+64x^5-36x^6-20x^7)/(1-12x+15x^2+67x^3-52x^4-72x^5+28x^6+20x^7))` -/
def P12374115973675516971.Spec : Prop :=
  ∀ n, P12374115973675516971.a n = A126539 n

theorem P12374115973675516971.correct : P12374115973675516971.Spec := by
  intro n
  simp only [A126539]

end A126539

/-!
# A126540: Number of base 19 n-digit numbers with adjacent digits differing by five or less.

The programs for A126540, there is no canonical definition to state claims against.
-/

/-! ## A126540.P2749540804136016902

`A000265(A126541(n)+A126539(n))`
-/

namespace A126540.P2749540804136016902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A126541 n + A126539 n).toNat

end

end A126540.P2749540804136016902

/-!
# A126541: Number of base 20 n-digit numbers with adjacent digits differing by five or less.

The programs for A126541, there is no canonical definition to state claims against.
-/

/-! ## A126541.P15661697511092208055

`A126542(n)-A014682(A126544(n)-A126542(n))`
-/

namespace A126541.P15661697511092208055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126542 n - A014682 (A126544 n - A126542 n).toNat

end

end A126541.P15661697511092208055

/-!
# A126542: Number of base 21 n-digit numbers with adjacent digits differing by five or less.

The programs for A126542, there is no canonical definition to state claims against.
-/

/-! ## A126542.P13642882033628361446

`A000265(A126543(n)+A126541(n))`
-/

namespace A126542.P13642882033628361446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A126543 n + A126541 n).toNat

end

end A126542.P13642882033628361446

/-!
# A126543: Number of base 22 n-digit numbers with adjacent digits differing by five or less.

The programs for A126543, there is no canonical definition to state claims against.
-/

/-! ## A126543.P17582927803251211167

`A126542(n)+A014682(A126544(n)-A126542(n))`
-/

namespace A126543.P17582927803251211167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126542 n + A014682 (A126544 n - A126542 n).toNat

end

end A126543.P17582927803251211167

/-!
# A126544: Number of base 23 n-digit numbers with adjacent digits differing by five or less.

The programs for A126544, there is no canonical definition to state claims against.
-/

/-! ## A126544.P11231755968348105934

`A000265(A126545(n)+A126543(n))`
-/

namespace A126544.P11231755968348105934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A126545 n + A126543 n).toNat

end

end A126544.P11231755968348105934

/-!
# A126545: Number of base 24 n-digit numbers with adjacent digits differing by five or less.

The programs for A126545, there is no canonical definition to state claims against.
-/

/-! ## A126545.P17445967812126872953

`A126544(n)+A014682(A126544(n)-A126542(n))`
-/

namespace A126545.P17445967812126872953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126544 n + A014682 (A126544 n - A126542 n).toNat

end

end A126545.P17445967812126872953

/-! ## A126545.P5464440972549752248

`A126544(n)+A014682(A126546(n)-A126544(n))`
-/

namespace A126545.P5464440972549752248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126544 n + A014682 (A126546 n - A126544 n).toNat

end

end A126545.P5464440972549752248

/-!
# A126546: Number of base 25 n-digit numbers with adjacent digits differing by five or less.

The programs for A126546, there is no canonical definition to state claims against.
-/

/-! ## A126546.P12651401036917312649

`A000265(A126547(n)+A126545(n))`
-/

namespace A126546.P12651401036917312649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A126547 n + A126545 n).toNat

end

end A126546.P12651401036917312649

/-!
# A126547: Number of base 26 n-digit numbers with adjacent digits differing by five or less.

The programs for A126547, there is no canonical definition to state claims against.
-/

/-! ## A126547.P2816147375385531619

`A126546(n)+A014682(A126546(n)-A126544(n))`
-/

namespace A126547.P2816147375385531619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126546 n + A014682 (A126546 n - A126544 n).toNat

end

end A126547.P2816147375385531619

/-! ## A126547.P2272548007061141470

`A126546(n)+A014682(A126548(n)-A126546(n))`
-/

namespace A126547.P2272548007061141470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126546 n + A014682 (A126548 n - A126546 n).toNat

end

end A126547.P2272548007061141470

/-!
# A126548: Number of base 27 n-digit numbers with adjacent digits differing by five or less.

The programs for A126548, there is no canonical definition to state claims against.
-/

/-! ## A126548.P3430239021651144261

`A000265(A126549(n)+A126547(n))`
-/

namespace A126548.P3430239021651144261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A126549 n + A126547 n).toNat

end

end A126548.P3430239021651144261

/-!
# A126549: Number of base 28 n-digit numbers with adjacent digits differing by five or less.

The programs for A126549, there is no canonical definition to state claims against.
-/

/-! ## A126549.P7552382378508902170

`A126548(n)+A014682(A126548(n)-A126546(n))`
-/

namespace A126549.P7552382378508902170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126548 n + A014682 (A126548 n - A126546 n).toNat

end

end A126549.P7552382378508902170

/-! ## A126549.P112948389357496113

`A126548(n)+A014682(A126550(n)-A126548(n))`
-/

namespace A126549.P112948389357496113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126548 n + A014682 (A126550 n - A126548 n).toNat

end

end A126549.P112948389357496113

/-!
# A126550: Number of base 29 n-digit numbers with adjacent digits differing by five or less.

The programs for A126550, there is no canonical definition to state claims against.
-/

/-! ## A126550.P7184662521831377096

`A000265(A126551(n)+A126549(n))`
-/

namespace A126550.P7184662521831377096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A126551 n + A126549 n).toNat

end

end A126550.P7184662521831377096

/-!
# A126551: Number of base 30 n-digit numbers with adjacent digits differing by five or less.

The programs for A126551, there is no canonical definition to state claims against.
-/

/-! ## A126551.P6918058336727479556

`A126550(n)+A014682(A126550(n)-A126548(n))`
-/

namespace A126551.P6918058336727479556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126550 n + A014682 (A126550 n - A126548 n).toNat

end

end A126551.P6918058336727479556

/-! ## A126551.P6742128759159809315

`A126550(n)+A014682(A126552(n)-A126550(n))`
-/

namespace A126551.P6742128759159809315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126550 n + A014682 (A126552 n - A126550 n).toNat

end

end A126551.P6742128759159809315

/-!
# A126552: Number of base 31 n-digit numbers with adjacent digits differing by five or less.

The programs for A126552, there is no canonical definition to state claims against.
-/

/-! ## A126552.P11399209319479882577

`A000265(A126553(n)+A126551(n))`
-/

namespace A126552.P11399209319479882577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A126553 n + A126551 n).toNat

end

end A126552.P11399209319479882577

/-!
# A126553: Number of base 32 n-digit numbers with adjacent digits differing by five or less.

The programs for A126553, there is no canonical definition to state claims against.
-/

/-! ## A126553.P1752798433642460890

`A126552(n)+A014682(A126552(n)-A126550(n))`
-/

namespace A126553.P1752798433642460890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126552 n + A014682 (A126552 n - A126550 n).toNat

end

end A126553.P1752798433642460890

/-!
# A126554: Arithmetic mean of two consecutive balanced primes (of order one).

The programs for A126554, there is no canonical definition to state claims against.
-/

/-! ## A126554.P12493291312752939097

`(A006562(n+2)+A006562(n+1))/2`
-/

namespace A126554.P12493291312752939097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006562 (n + 2) + A006562 (n + 1) : ℚ) / 2

end

end A126554.P12493291312752939097

/-! ## A126554.P9683157787809202709

`A006562(n+1)+A004525(Δ[A006562(n+1)])`
-/

namespace A126554.P9683157787809202709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1) + A004525 (f1 (n + 1) - f1 n).toNat

end

end A126554.P9683157787809202709

/-! ## A126554.P16984944488567122438

`A006562(n+1)+A004526(Δ[A006562(n+1)])`
-/

namespace A126554.P16984944488567122438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1) + A004526 (f1 (n + 1) - f1 n).toNat

end

end A126554.P16984944488567122438

/-! ## A126554.P15821742882467651753

`A078898(Δ[A006562(n+1)])+A006562(n+1)`
-/

namespace A126554.P15821742882467651753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (f1 (n + 1) - f1 n).toNat + A006562 (n + 1)

end

end A126554.P15821742882467651753

/-! ## A126554.P6046491447589410594

`A117818(Δ[A006562(n+1)])+A006562(n+1)`
-/

namespace A126554.P6046491447589410594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117818 (f1 (n + 1) - f1 n).toNat + A006562 (n + 1)

end

end A126554.P6046491447589410594

/-! ## A126554.P6293012946903606587

`A323467(Δ[A006562(n+1)])+A006562(n+1)`
-/

namespace A126554.P6293012946903606587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323467 (f1 (n + 1) - f1 n).toNat + A006562 (n + 1)

end

end A126554.P6293012946903606587

/-! ## A126554.P11082319730479494832

`A006562(n+1)-A001057(Δ[A006562(n+1)])`
-/

namespace A126554.P11082319730479494832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1) - A001057 (f1 (n + 1) - f1 n).toNat

end

end A126554.P11082319730479494832

/-!
# A126555: Primes in A126554.

The programs for A126555, there is no canonical definition to state claims against.
-/

/-! ## A126555.P13127985566700252651

`p?[A126554(n+1)]`
-/

namespace A126555.P13127985566700252651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126555.P13127985566700252651

/-! ## A126555.P3854412098431441846

`record[p?[A126554(A117910(n))]]`
-/

namespace A126555.P3854412098431441846
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126554 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126555.P3854412098431441846

/-! ## A126555.P4812057196001466990

`record[p?[A126554(A246694(n))]]`
-/

namespace A126555.P4812057196001466990
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126554 (A246694 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126555.P4812057196001466990

/-! ## A126555.P17552873788696428577

`record[p?[A126554(A344180(n))]]`
-/

namespace A126555.P17552873788696428577
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126554 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126555.P17552873788696428577

/-!
# A126556: Arithmetic mean of two consecutive prime interprimes of second order: interprimes of third order.

The programs for A126556, there is no canonical definition to state claims against.
-/

/-! ## A126556.P7738001767955489672

`(A126555(n+1)+A126555(n+2))/2`
-/

namespace A126556.P7738001767955489672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126555 (n + 1) + A126555 (n + 2) : ℚ) / 2

end

end A126556.P7738001767955489672

/-! ## A126556.P2019185217444317011

`A126555(n+1)+A014682(Δ[A126555(n+1)])`
-/

namespace A126556.P2019185217444317011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126555 (n + 1) + A014682 (f1 (n + 1) - f1 n).toNat

end

end A126556.P2019185217444317011

/-! ## A126556.P7632105996958055785

`A014682(A126555(n+1)+A126555(n+2))`
-/

namespace A126556.P7632105996958055785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A126555 (n + 1) + A126555 (n + 2)).toNat

end

end A126556.P7632105996958055785

/-!
# A126557: Primes in A126556.

The programs for A126557, there is no canonical definition to state claims against.
-/

/-! ## A126557.P5132262247787203922

`p?[A126556(n+1)]`
-/

namespace A126557.P5132262247787203922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126556 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126557.P5132262247787203922

/-! ## A126557.P6648011469966499678

`record[p?[A126556(A117910(n))]]`
-/

namespace A126557.P6648011469966499678
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126556 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126557.P6648011469966499678

/-! ## A126557.P8415472650474041802

`record[p?[A126556(A328399(n))]]`
-/

namespace A126557.P8415472650474041802
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126556 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126557.P8415472650474041802

/-!
# A126558: Arithmetic mean of two consecutive prime interprimes of third order: interprimes of fourth order.

The programs for A126558, there is no canonical definition to state claims against.
-/

/-! ## A126558.P5605920378106152670

`(A126557(n+1)+A126557(n+2))/2`
-/

namespace A126558.P5605920378106152670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126557 (n + 1) + A126557 (n + 2) : ℚ) / 2

end

end A126558.P5605920378106152670

/-!
# A126560: a(n) = gcd(4*(n+1)*(n+2), n*(n+3)), periodic with 8-cycle 4,2,2,4,8,2,2,8.

The programs for A126560, the canonical program `A126560.P3618206103046378309` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126560 has offset 1).

The definition of A126560 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(4*(n+2)*(n+3), (n+1)*(n+4))` (program `A126560.P3618206103046378309`, by `A126560.P3618206103046378309.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A126560.P3618206103046378309

`gcd(4*(n+2)*(n+3), (n+1)*(n+4))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126560

/-- `gcd(4*(n+2)*(n+3), (n+1)*(n+4))` -/
def P3618206103046378309.Spec : Prop :=
  ∀ n, (P3618206103046378309.a n : ℤ) = A126560 (n + 1)

theorem P3618206103046378309.correct : P3618206103046378309.Spec := by
  intro n
  simp only [A126560, Nat.add_sub_cancel]

end A126560

/-!
# A126562: Number of intersections of at least four edges in a cube of n X n X n smaller cubes.

The programs for A126562, the canonical program `A126562.P13585952680832232842` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126562 has offset 1).

The definition of A126562 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126562.P13585952680832232842

`6*n²+n^3`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126562

/-- `6*n²+n^3` -/
def P13585952680832232842.Spec : Prop :=
  ∀ n, (P13585952680832232842.a n : ℤ) = A126562 (n + 1)

theorem P13585952680832232842.correct : P13585952680832232842.Spec := by
  intro n
  simp only [A126562, Nat.add_sub_cancel]

end A126562

/-! ## A126562.P14735643555644071680

`ogf((7x+4x^2-5x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A126562.P14735643555644071680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7, 4, -5] [1, -4, 6, -4, 1] n

end

end A126562.P14735643555644071680

namespace A126562

/-- `ogf((7x+4x^2-5x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P14735643555644071680.Spec : Prop :=
  ∀ n, P14735643555644071680.a n = A126562 (n + 1)

end A126562

/-! ## A126562.P14459151004877504964

`lcm(n, (n+6)*n²)`
-/

namespace A126562.P14459151004877504964
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n ((n + 6) * n ^ 2)

end

end A126562.P14459151004877504964

namespace A126562

/-- `lcm(n, (n+6)*n²)` -/
def P14459151004877504964.Spec : Prop :=
  ∀ n, (P14459151004877504964.a n : ℤ) = A126562 (n + 1)

end A126562

/-! ## A126562.P8879677986337716632

`record[(n-6)*n]*n`
-/

namespace A126562.P8879677986337716632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 6) * (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * (n : ℤ)

end

end A126562.P8879677986337716632

namespace A126562

/-- `record[(n-6)*n]*n` -/
def P8879677986337716632.Spec : Prop :=
  ∀ n, P8879677986337716632.a n = A126562 (n + 1)

end A126562

/-! ## A126562.P1347624620952526851

`n²/tan(acot(n+6))`
-/

namespace A126562.P1347624620952526851
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℝ) / Real.tan (SequenceMachineLib.acot (n + 6 : ℝ))

end

end A126562.P1347624620952526851

namespace A126562

/-- `n²/tan(acot(n+6))` -/
def P1347624620952526851.Spec : Prop :=
  ∀ n, P1347624620952526851.a n = (A126562 (n + 1) : ℝ)

end A126562

/-! ## A126562.P8519185577008524788

`n*∑[a(n-1)+2]` with `a(0)=0, a(1)=7`
-/

namespace A126562.P8519185577008524788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 7] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A126562.P8519185577008524788

namespace A126562

/-- `n*∑[a(n-1)+2]` -/
def P8519185577008524788.Spec : Prop :=
  ∀ n, (P8519185577008524788.a n : ℤ) = A126562 (n + 1)

end A126562

/-! ## A126562.P5470149218478824030

`n*A028560(n)`
-/

namespace A126562.P5470149218478824030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A028560 n

end

end A126562.P5470149218478824030

namespace A126562

/-- `n*A028560(n)` -/
def P5470149218478824030.Spec : Prop :=
  ∀ n, P5470149218478824030.a n = A126562 (n + 1)

theorem P5470149218478824030.correct : P5470149218478824030.Spec := by
  intro n
  simp only [A126562, Nat.add_sub_cancel, A126562.P5470149218478824030.a, A126562.P13585952680832232842.a, A028560, A028560.P2309686278855513759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A126562

/-! ## A126562.P6349212822494458596

`n*(A028884(n)-1)`
-/

namespace A126562.P6349212822494458596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A028884 n - 1)

end

end A126562.P6349212822494458596

namespace A126562

/-- `n*(A028884(n)-1)` -/
def P6349212822494458596.Spec : Prop :=
  ∀ n, P6349212822494458596.a n = A126562 (n + 1)

theorem P6349212822494458596.correct : P6349212822494458596.Spec := by
  intro n
  simp only [A126562, Nat.add_sub_cancel, A126562.P6349212822494458596.a, A126562.P13585952680832232842.a, A028884, A028884.P6863667227585996307.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A126562

/-! ## A126562.P18437881885227382634

`n*(A028878(n)-3)`
-/

namespace A126562.P18437881885227382634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A028878 n - 3)

end

end A126562.P18437881885227382634

namespace A126562

/-- `n*(A028878(n)-3)` -/
def P18437881885227382634.Spec : Prop :=
  ∀ n, P18437881885227382634.a n = A126562 (n + 1)

theorem P18437881885227382634.correct : P18437881885227382634.Spec := by
  intro n
  simp only [A126562, Nat.add_sub_cancel, A126562.P18437881885227382634.a, A126562.P13585952680832232842.a, A028878, A028878.P2945989185203519759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A126562

/-! ## A126562.P14333640091381742909

`n/3*A140681(n)`
-/

namespace A126562.P14333640091381742909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (A140681 n : ℚ)

end

end A126562.P14333640091381742909

namespace A126562

/-- `n/3*A140681(n)` -/
def P14333640091381742909.Spec : Prop :=
  ∀ n, P14333640091381742909.a n = (A126562 (n + 1) : ℚ)

theorem P14333640091381742909.correct : P14333640091381742909.Spec := by
  intro n
  simp only [A126562, Nat.add_sub_cancel, A126562.P14333640091381742909.a, A126562.P13585952680832232842.a, A140681, A140681.P11404641493444198903.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A126562

/-! ## A126562.P6556190079531361835

`n*(A028557(n)+n)`
-/

namespace A126562.P6556190079531361835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A028557 n + (n : ℤ))

end

end A126562.P6556190079531361835

namespace A126562

/-- `n*(A028557(n)+n)` -/
def P6556190079531361835.Spec : Prop :=
  ∀ n, P6556190079531361835.a n = A126562 (n + 1)

theorem P6556190079531361835.correct : P6556190079531361835.Spec := by
  intro n
  simp only [A126562, Nat.add_sub_cancel, A126562.P6556190079531361835.a, A126562.P13585952680832232842.a, A028557, A028557.P14629390258788046737.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A126562

/-! ## A126562.P12662683785955284986

`n*(A028563(n)-n)`
-/

namespace A126562.P12662683785955284986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A028563 n - (n : ℤ))

end

end A126562.P12662683785955284986

namespace A126562

/-- `n*(A028563(n)-n)` -/
def P12662683785955284986.Spec : Prop :=
  ∀ n, P12662683785955284986.a n = A126562 (n + 1)

theorem P12662683785955284986.correct : P12662683785955284986.Spec := by
  intro n
  simp only [A126562, Nat.add_sub_cancel, A126562.P12662683785955284986.a, A126562.P13585952680832232842.a, A028563, A028563.P15186121141906373506.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A126562

/-! ## A126562.P16111360666190189745

`n*n*A020715(n)`
-/

namespace A126562.P16111360666190189745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) * A020715 n)

end

end A126562.P16111360666190189745

namespace A126562

/-- `n*n*A020715(n)` -/
def P16111360666190189745.Spec : Prop :=
  ∀ n, P16111360666190189745.a n = A126562 (n + 1)

theorem P16111360666190189745.correct : P16111360666190189745.Spec := by
  intro n
  simp only [A126562, Nat.add_sub_cancel, A126562.P16111360666190189745.a, A126562.P13585952680832232842.a, A020715, A020715.P16829433482326866133.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A126562

/-! ## A126562.P9215134464508348052

`n*(A028881(n+3)-2)`
-/

namespace A126562.P9215134464508348052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A028881 (n + 3) - 2)

end

end A126562.P9215134464508348052

namespace A126562

/-- `n*(A028881(n+3)-2)` -/
def P9215134464508348052.Spec : Prop :=
  ∀ n, P9215134464508348052.a n = A126562 (n + 1)

theorem P9215134464508348052.correct : P9215134464508348052.Spec := by
  intro n
  simp only [A126562, Nat.add_sub_cancel, A126562.P9215134464508348052.a, A126562.P13585952680832232842.a, A028881, A028881.P11268468400886381584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A126562

/-! ## A126562.P17209564562667220488

`n*n*A242963(n+1)`
-/

namespace A126562.P17209564562667220488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) * A242963 (n + 1))

end

end A126562.P17209564562667220488

namespace A126562

/-- `n*n*A242963(n+1)` -/
def P17209564562667220488.Spec : Prop :=
  ∀ n, P17209564562667220488.a n = A126562 (n + 1)

end A126562

/-! ## A126562.P9105645896683310120

`n*(A190576(n+1)-(n+1))`
-/

namespace A126562.P9105645896683310120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A190576 (n + 1) - (n + 1 : ℤ))

end

end A126562.P9105645896683310120

namespace A126562

/-- `n*(A190576(n+1)-(n+1))` -/
def P9105645896683310120.Spec : Prop :=
  ∀ n, P9105645896683310120.a n = A126562 (n + 1)

theorem P9105645896683310120.correct : P9105645896683310120.Spec := by
  intro n
  simp only [A126562, Nat.add_sub_cancel, A126562.P9105645896683310120.a, A126562.P13585952680832232842.a, A190576, A190576.P14376266656277020032.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A126562

/-! ## A126562.P10112671582678673901

`(A117619(n)-A002061(n))*A000290(n)`
-/

namespace A126562.P10112671582678673901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A117619 n - A002061 n) * A000290 n

end

end A126562.P10112671582678673901

namespace A126562

/-- `(A117619(n)-A002061(n))*A000290(n)` -/
def P10112671582678673901.Spec : Prop :=
  ∀ n, P10112671582678673901.a n = A126562 (n + 1)

theorem P10112671582678673901.correct : P10112671582678673901.Spec := by
  intro n
  simp only [A126562, Nat.add_sub_cancel, A126562.P10112671582678673901.a, A126562.P13585952680832232842.a, A000290, A000290.P12206242496348924484.a, A002061, A002061.P13016590216674735232.a, A117619, A117619.P10032462743252771968.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A126562

/-! ## A126562.P3895842355289836661

`n*A094765(A005563(n))`
-/

namespace A126562.P3895842355289836661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A094765 (A005563 n).toNat

end

end A126562.P3895842355289836661

namespace A126562

/-- `n*A094765(A005563(n))` -/
def P3895842355289836661.Spec : Prop :=
  ∀ n, P3895842355289836661.a n = A126562 (n + 1)

end A126562

/-!
# A126563: Numbers k such that the ratio of A117731(k) and A082687(k) is composite.

The programs for A126563, there is no canonical definition to state claims against.
-/

/-! ## A126563.P10107109281292565777

`A037461(Δ[∏[A046109(n+4)]])`
-/

namespace A126563.P10107109281292565777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046109 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037461 (f1 (n + 1) - f1 n).toNat

end

end A126563.P10107109281292565777

/-!
# A126564: a(n) = floor( sin(n)*cos(n) ).

The programs for A126564, the canonical program `A126564.P576208583452320244` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126564 has offset 0).

The definition of A126564 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126564.P576208583452320244

`floor(sin(2*n))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126564

/-- `floor(sin(2*n))` -/
def P576208583452320244.Spec : Prop :=
  ∀ n, P576208583452320244.a n = A126564 n

theorem P576208583452320244.correct : P576208583452320244.Spec := by
  intro n
  simp only [A126564]

end A126564

/-! ## A126564.P1871547954524101513

`floor(sin(n)*cos(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A126564.P1871547954524101513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sin (n : ℝ) * Real.cos (n : ℝ)⌋

end

end A126564.P1871547954524101513

namespace A126564

/-- `floor(sin(n)*cos(n))` -/
def P1871547954524101513.Spec : Prop :=
  ∀ n, P1871547954524101513.a n = A126564 n

end A126564

/-!
# A126565: a(n) = ceiling(sin(n)*cos(n)).

The programs for A126565, the canonical program `A126565.P520160138071269050` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126565 has offset 0).

The definition of A126565 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(sin(n)*cos(n))` (program `A126565.P520160138071269050`, by `A126565.P520160138071269050.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A126565.P520160138071269050

`ceil(sin(n)*cos(n))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126565

/-- `ceil(sin(n)*cos(n))` -/
def P520160138071269050.Spec : Prop :=
  ∀ n, P520160138071269050.a n = A126565 n

theorem P520160138071269050.correct : P520160138071269050.Spec := by
  intro n
  simp only [A126565]

end A126565

/-!
# A126566: a(0)=1; a(1)=2; a(2)=5; a(3)=14; for n>3: a(n) = 8*a(n-1)-20*a(n-2)+16*a(n-3)-a(n-4).

The programs for A126566, the canonical program `A126566.P7283824426233553833` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126566 has offset 0).

The definition of A126566 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)-20*a(n-2)+16*a(n-3)-a(n-4)` (program `A126566.P7283824426233553833`, by `A126566.P7283824426233553833.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A126566.P13657919822981472843

`ogf((1-6x+9x^2-2x^3)/(1-8x+20x^2-16x^3+x^4))`
-/

namespace A126566.P13657919822981472843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -6, 9, -2] [1, -8, 20, -16, 1] n

end

end A126566.P13657919822981472843

namespace A126566

/-- `ogf((1-6x+9x^2-2x^3)/(1-8x+20x^2-16x^3+x^4))` -/
def P13657919822981472843.Spec : Prop :=
  ∀ n, P13657919822981472843.a n = A126566 n

end A126566

/-! ## A126566.P7283824426233553833

`8*a(n-1)-20*a(n-2)+16*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=14`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126566

/-- `8*a(n-1)-20*a(n-2)+16*a(n-3)-a(n-4)` -/
def P7283824426233553833.Spec : Prop :=
  ∀ n, P7283824426233553833.a n = A126566 n

theorem P7283824426233553833.correct : P7283824426233553833.Spec := by
  intro n
  simp only [A126566]

end A126566

/-! ## A126566.P10859340328786150130

`2*A126567(n)-A007051(n)`
-/

namespace A126566.P10859340328786150130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126567 n - A007051 n

end

end A126566.P10859340328786150130

namespace A126566

/-- `2*A126567(n)-A007051(n)` -/
def P10859340328786150130.Spec : Prop :=
  ∀ n, P10859340328786150130.a n = A126566 n

end A126566

/-! ## A126566.P13374121389081388270

`2*A126567(n)+A001478(A007051(n)+1)+1`
-/

namespace A126566.P13374121389081388270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126567 n + (A001478 (A007051 n + 1).toNat + 1)

end

end A126566.P13374121389081388270

namespace A126566

/-- `2*A126567(n)+A001478(A007051(n)+1)+1` -/
def P13374121389081388270.Spec : Prop :=
  ∀ n, P13374121389081388270.a n = A126566 n

end A126566

/-! ## A126566.P5486594687685734106

`A004273(A125501(n)-A003462(n))+A003462(n)`
-/

namespace A126566.P5486594687685734106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A125501 n - A003462 n).toNat + A003462 n

end

end A126566.P5486594687685734106

namespace A126566

/-- `A004273(A125501(n)-A003462(n))+A003462(n)` -/
def P5486594687685734106.Spec : Prop :=
  ∀ n, P5486594687685734106.a n = A126566 n

end A126566

/-!
# A126567: Sequence generated from the E6 Cartan matrix.

The programs for A126567, the canonical program `A126567.P4001307750954268195` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126567 has offset 0).

The definition of A126567 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126567.P4001307750954268195

`(A126566(n)+A007051(n))/2`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A126567

/-- `(A126566(n)+A007051(n))/2` -/
def P4001307750954268195.Spec : Prop :=
  ∀ n, P4001307750954268195.a n = (A126567 n : ℚ)

end A126567

/-! ## A126567.P11398228640482543458

`A125501(n)-A044941(A125501(n))`
-/

namespace A126567.P11398228640482543458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125501 n - A044941 (A125501 n).toNat

end

end A126567.P11398228640482543458

namespace A126567

/-- `A125501(n)-A044941(A125501(n))` -/
def P11398228640482543458.Spec : Prop :=
  ∀ n, P11398228640482543458.a n = A126567 n

end A126567

/-! ## A126567.P13378545507273226610

`A126569(n)-A044941(A126569(n))`
-/

namespace A126567.P13378545507273226610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126569 n - A044941 (A126569 n).toNat

end

end A126567.P13378545507273226610

namespace A126567

/-- `A126569(n)-A044941(A126569(n))` -/
def P13378545507273226610.Spec : Prop :=
  ∀ n, P13378545507273226610.a n = A126567 n

end A126567

/-! ## A126567.P6826259654185462941

`A125501(n)-A175861(A001519(n))`
-/

namespace A126567.P6826259654185462941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125501 n - A175861 (A001519 n).toNat

end

end A126567.P6826259654185462941

namespace A126567

/-- `A125501(n)-A175861(A001519(n))` -/
def P6826259654185462941.Spec : Prop :=
  ∀ n, P6826259654185462941.a n = A126567 n

end A126567

/-! ## A126567.P3159389818889434624

`A126569(n)-A254377(A090837(n+1))`
-/

namespace A126567.P3159389818889434624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126569 n - A254377 (A090837 (n + 1)).toNat

end

end A126567.P3159389818889434624

namespace A126567

/-- `A126569(n)-A254377(A090837(n+1))` -/
def P3159389818889434624.Spec : Prop :=
  ∀ n, P3159389818889434624.a n = A126567 n

end A126567

/-!
# A126568: Binomial transform of A026641.

The programs for A126568, the canonical program `A126568.P6461263699830526418` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126568 has offset 0).

The definition of A126568 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126568.P7731786429713437375

`∑{#}[n, A110877(C(n+1, 2)+#)]`
-/

namespace A126568.P7731786429713437375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A110877 (Nat.choose (n + 1) 2 + k)

end

end A126568.P7731786429713437375

namespace A126568

/-- `∑{#}[n, A110877(C(n+1, 2)+#)]` -/
def P7731786429713437375.Spec : Prop :=
  ∀ n, P7731786429713437375.a n = A126568 n

end A126568

/-! ## A126568.P17122355148247267351

`∑{#}[n, C(n, #)*A026641(#)]`
-/

namespace A126568.P17122355148247267351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A026641 k

end

end A126568.P17122355148247267351

namespace A126568

/-- `∑{#}[n, C(n, #)*A026641(#)]` -/
def P17122355148247267351.Spec : Prop :=
  ∀ n, P17122355148247267351.a n = A126568 n

end A126568

/-! ## A126568.P9578110766357260828

`A085362(n)-A128732(n)`
-/

namespace A126568.P9578110766357260828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085362 n - A128732 n

end

end A126568.P9578110766357260828

namespace A126568

/-- `A085362(n)-A128732(n)` -/
def P9578110766357260828.Spec : Prop :=
  ∀ n, P9578110766357260828.a n = A126568 n

theorem P9578110766357260828.correct : P9578110766357260828.Spec := by
  intro n
  simp only [A126568, Nat.add_sub_cancel, A126568.P9578110766357260828.a, A126568.P6461263699830526418.a, A085362, A085362.P5421159430058564435.a, A128732, A128732.P11834199392977418506.a, A262664, A262664.P13727299382595381877.a, A303952, A303952.P9236870532199443884.f1, A303952.P9236870532199443884.a, A014300, A014300.P6272885527061733046.a, A138415, A138415.P3566733532317934836.f1, A138415.P3566733532317934836.a, A033321, A033321.P18077803018006367237.f1, A033321.P18077803018006367237.a, A333564, A333564.P18087434835058333693.a, A091965, A091965.P11327072405225623467.a, A119259, A119259.P15056154096299746551.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A126568

/-! ## A126568.P2354665439743565938

`A242586(n)+∑[A128732(n)]`
-/

namespace A126568.P2354665439743565938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242586 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126568.P2354665439743565938

namespace A126568

/-- `A242586(n)+∑[A128732(n)]` -/
def P2354665439743565938.Spec : Prop :=
  ∀ n, P2354665439743565938.a n = A126568 n

end A126568

/-! ## A126568.P13759919925061139261

`A128732(n+1)+A033321(n)`
-/

namespace A126568.P13759919925061139261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128732 (n + 1) + A033321 n

end

end A126568.P13759919925061139261

namespace A126568

/-- `A128732(n+1)+A033321(n)` -/
def P13759919925061139261.Spec : Prop :=
  ∀ n, P13759919925061139261.a n = A126568 n

end A126568

/-! ## A126568.P6461263699830526418

`A262664(n)+A303952(n)-1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A126568

/-- `A262664(n)+A303952(n)-1` -/
def P6461263699830526418.Spec : Prop :=
  ∀ n, P6461263699830526418.a n = A126568 n

theorem P6461263699830526418.correct : P6461263699830526418.Spec := by
  intro n
  simp only [A126568]

end A126568

/-! ## A126568.P9572177127805783877

`∑[A085362(n)-Δ[A128730(n)]]`
-/

namespace A126568.P9572177127805783877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128730 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085362 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126568.P9572177127805783877

namespace A126568

/-- `∑[A085362(n)-Δ[A128730(n)]]` -/
def P9572177127805783877.Spec : Prop :=
  ∀ n, P9572177127805783877.a n = A126568 n

end A126568

/-! ## A126568.P15297492081577389197

`A128734(n+1)+A033321(n+1)`
-/

namespace A126568.P15297492081577389197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128734 (n + 1) + A033321 (n + 1)

end

end A126568.P15297492081577389197

namespace A126568

/-- `A128734(n+1)+A033321(n+1)` -/
def P15297492081577389197.Spec : Prop :=
  ∀ n, P15297492081577389197.a n = A126568 n

end A126568

/-! ## A126568.P8802468112251907282

`A007317(n+1)+2*A128726(n+1)`
-/

namespace A126568.P8802468112251907282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007317 (n + 1) + 2 * A128726 (n + 1)

end

end A126568.P8802468112251907282

namespace A126568

/-- `A007317(n+1)+2*A128726(n+1)` -/
def P8802468112251907282.Spec : Prop :=
  ∀ n, P8802468112251907282.a n = A126568 n

end A126568

/-! ## A126568.P2122307735605086135

`A181768(n+1)+2*A128726(n+1)`
-/

namespace A126568.P2122307735605086135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181768 (n + 1) + 2 * A128726 (n + 1)

end

end A126568.P2122307735605086135

namespace A126568

/-- `A181768(n+1)+2*A128726(n+1)` -/
def P2122307735605086135.Spec : Prop :=
  ∀ n, P2122307735605086135.a n = A126568 n

end A126568

/-! ## A126568.P10637740887920858401

`A085362(n)-(A128734(n)+A128714(n))`
-/

namespace A126568.P10637740887920858401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085362 n - (A128734 n + A128714 n)

end

end A126568.P10637740887920858401

namespace A126568

/-- `A085362(n)-(A128734(n)+A128714(n))` -/
def P10637740887920858401.Spec : Prop :=
  ∀ n, P10637740887920858401.a n = A126568 n

theorem P10637740887920858401.correct : P10637740887920858401.Spec := by
  intro n
  simp only [A126568, Nat.add_sub_cancel, A126568.P10637740887920858401.a, A126568.P6461263699830526418.a, A085362, A085362.P5421159430058564435.a, A128714, A128714.P13217542877390641147.f1, A128714.P13217542877390641147.a, A128734, A128734.P4148169688179482597.a, A262664, A262664.P13727299382595381877.a, A303952, A303952.P9236870532199443884.f1, A303952.P9236870532199443884.a, A014300, A014300.P6272885527061733046.a, A033321, A033321.P18077803018006367237.f1, A033321.P18077803018006367237.a, A128732, A128732.P11834199392977418506.a, A138415, A138415.P3566733532317934836.f1, A138415.P3566733532317934836.a, A091965, A091965.P11327072405225623467.a, A333564, A333564.P18087434835058333693.a, A119259, A119259.P15056154096299746551.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A126568

/-! ## A126568.P15047413645726546008

`A026375(n)-A128730(n+1)`
-/

namespace A126568.P15047413645726546008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026375 n - A128730 (n + 1)

end

end A126568.P15047413645726546008

namespace A126568

/-- `A026375(n)-A128730(n+1)` -/
def P15047413645726546008.Spec : Prop :=
  ∀ n, P15047413645726546008.a n = A126568 n

end A126568

/-! ## A126568.P8195469357367201039

`A026375(n)+1-A303952(n)`
-/

namespace A126568.P8195469357367201039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026375 n + (1 - A303952 n)

end

end A126568.P8195469357367201039

namespace A126568

/-- `A026375(n)+1-A303952(n)` -/
def P8195469357367201039.Spec : Prop :=
  ∀ n, P8195469357367201039.a n = A126568 n

end A126568

/-! ## A126568.P9223582002136456728

`(A262664(n)+A026375(n))/2`
-/

namespace A126568.P9223582002136456728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262664 n + A026375 n : ℚ) / 2

end

end A126568.P9223582002136456728

namespace A126568

/-- `(A262664(n)+A026375(n))/2` -/
def P9223582002136456728.Spec : Prop :=
  ∀ n, P9223582002136456728.a n = (A126568 n : ℚ)

end A126568

/-! ## A126568.P5514636493575616628

`∑[A085362(n)]-A128730(n+1)`
-/

namespace A126568.P5514636493575616628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085362 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A128730 (n + 1)

end

end A126568.P5514636493575616628

namespace A126568

/-- `∑[A085362(n)]-A128730(n+1)` -/
def P5514636493575616628.Spec : Prop :=
  ∀ n, P5514636493575616628.a n = A126568 n

end A126568

/-! ## A126568.P13288529728556980767

`Δ[A128730(n+1)]-A128732(n+1)`
-/

namespace A126568.P13288529728556980767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128730 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A128732 (n + 1)

end

end A126568.P13288529728556980767

namespace A126568

/-- `Δ[A128730(n+1)]-A128732(n+1)` -/
def P13288529728556980767.Spec : Prop :=
  ∀ n, P13288529728556980767.a n = A126568 n

end A126568

/-! ## A126568.P16233918870967500910

`∑{#}[n, (-1)^(n-#)*C(n, #)*A133158(#)]`
-/

namespace A126568.P16233918870967500910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A133158 k : ℚ)

end

end A126568.P16233918870967500910

namespace A126568

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A133158(#)]` -/
def P16233918870967500910.Spec : Prop :=
  ∀ n, P16233918870967500910.a n = (A126568 n : ℚ)

end A126568

/-!
# A126569: Top-left "head" entry of the n-th power of the E8 Cartan matrix.

The programs for A126569, there is no canonical definition to state claims against.
-/

/-! ## A126569.P3861532571067142194

`A125501(n)+A025469(A107467(n))`
-/

namespace A126569.P3861532571067142194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125501 n + A025469 (A107467 n).toNat

end

end A126569.P3861532571067142194

/-! ## A126569.P3791468920126990795

`A185284(∑[A117418(n)])+A125501(n)`
-/

namespace A126569.P3791468920126990795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117418 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A125501 n

end

end A126569.P3791468920126990795

/-! ## A126569.P12585081863334904338

`A185284(A008578(n+1))+A125501(n)`
-/

namespace A126569.P12585081863334904338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A008578 (n + 1)).toNat + A125501 n

end

end A126569.P12585081863334904338

/-! ## A126569.P14856464971485457883

`A125501(n)+A044941(A242438(n+1))`
-/

namespace A126569.P14856464971485457883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125501 n + A044941 (A242438 (n + 1)).toNat

end

end A126569.P14856464971485457883

/-! ## A126569.P13841997111890960697

`A165766(A124151(n+1))+A125501(n)`
-/

namespace A126569.P13841997111890960697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165766 (A124151 (n + 1)).toNat + A125501 n

end

end A126569.P13841997111890960697

/-!
# A126570: Triangle read by rows: row n gives coefficients (ignoring the alternating signs) of the characteristic polynomial of the n X n matrix with 2's in the main diagonal, 1's in the super- and subdiagonals, and 1 in the upper-right corner, with other elements zeros.

The programs for A126570, there is no canonical definition to state claims against.
-/

/-! ## A126570.P15234069358168984716

`xor(char[A000096(n+3)], A172431(n+1))`
-/

namespace A126570.P15234069358168984716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A172431 (n + 1))

end

end A126570.P15234069358168984716

/-! ## A126570.P9271017307317488817

`xor(A172431(n+1), A268340(A211955(n)))`
-/

namespace A126570.P9271017307317488817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A172431 (n + 1)) (A268340 (A211955 n).toNat)

end

end A126570.P9271017307317488817

/-! ## A126570.P10997149641048251368

`A172431(n+1)+Δ[A025456(A209553(n+1))]`
-/

namespace A126570.P10997149641048251368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025456 (A209553 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172431 (n + 1) + (f1 (n + 1) - f1 n)

end

end A126570.P10997149641048251368

/-! ## A126570.P17067840355006635151

`or(A010057(2^n), A172431(n+1))`
-/

namespace A126570.P17067840355006635151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010057 (2 ^ n)) (A172431 (n + 1))

end

end A126570.P17067840355006635151

/-! ## A126570.P7567543884289540092

`or(A010060(A006127(n)), A172431(n+1))`
-/

namespace A126570.P7567543884289540092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010060 (A006127 n).toNat) (A172431 (n + 1))

end

end A126570.P7567543884289540092

/-!
# A126571: Triangle where the m-th term in row n is the n-th integer from among those positive integers coprime to m.

The programs for A126571, there is no canonical definition to state claims against.
-/

/-! ## A126571.P11120052100035651279

`A126572(A245300(n)+A004736(n+1))`
-/

namespace A126571.P11120052100035651279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126572 (A245300 n + A004736 (n + 1)).toNat

end

end A126571.P11120052100035651279

/-! ## A126571.P10023385257049646512

`Δ[A123731(C(n, 2))]+1`
-/

namespace A126571.P10023385257049646512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123731 (Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A126571.P10023385257049646512

/-! ## A126571.P16135687756437405561

`A220780(A255908(n+1))`
-/

namespace A126571.P16135687756437405561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220780 (A255908 (n + 1)).toNat

end

end A126571.P16135687756437405561

/-! ## A126571.P12834292544383063588

`A274011(A354165(n+1))`
-/

namespace A126571.P12834292544383063588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274011 (A354165 (n + 1)).toNat

end

end A126571.P12834292544383063588

/-! ## A126571.P9432803447124934258

`A260649(6*A255908(n+1))`
-/

namespace A126571.P9432803447124934258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260649 (6 * A255908 (n + 1)).toNat

end

end A126571.P9432803447124934258

/-!
# A126572: Array read by antidiagonals: a(n,m) = the m-th integer from among those positive integers coprime to n.

The programs for A126572, there is no canonical definition to state claims against.
-/

/-! ## A126572.P10955042668451565389

`or(A000035(A156914(n)), A145111(n))`
-/

namespace A126572.P10955042668451565389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A156914 n).toNat) (A145111 n)

end

end A126572.P10955042668451565389

/-! ## A126572.P9296202293673911218

`or(A000035(A156914(n)), A216274(n))`
-/

namespace A126572.P9296202293673911218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A156914 n).toNat) (A216274 n)

end

end A126572.P9296202293673911218

/-! ## A126572.P8277050906626078980

`or(A000035(A156914(n)), A259324(n))`
-/

namespace A126572.P8277050906626078980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A156914 n).toNat) (A259324 n)

end

end A126572.P8277050906626078980

/-! ## A126572.P7987575707863791396

`or(A058998(A265656(n+1)), A145111(n))`
-/

namespace A126572.P7987575707863791396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A058998 (A265656 (n + 1)).toNat) (A145111 n)

end

end A126572.P7987575707863791396

/-! ## A126572.P9378902230038007155

`or(A058998(A265656(n+1)), A216274(n))`
-/

namespace A126572.P9378902230038007155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A058998 (A265656 (n + 1)).toNat) (A216274 n)

end

end A126572.P9378902230038007155

/-!
# A126574: a(n) = product of terms in n-th row of triangle A126571.

The programs for A126574, there is no canonical definition to state claims against.
-/

/-! ## A126574.P5807168819360259744

`A002457(n)*A003983(A002398(n))`
-/

namespace A126574.P5807168819360259744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 n * A003983 (A002398 n).toNat

end

end A126574.P5807168819360259744

/-!
# A126575: a(n) = numerator of the sum of reciprocals of the terms in n-th row of triangle A126571.

The programs for A126575, there is no canonical definition to state claims against.
-/

/-! ## A126575.P14269295447654941945

`A317679(A024472(n+1))`
-/

namespace A126575.P14269295447654941945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317679 (A024472 (n + 1)).toNat

end

end A126575.P14269295447654941945

/-!
# A126576: a(n) = denominator of the sum of reciprocals of the terms in n-th row of triangle A126571.

The programs for A126576, there is no canonical definition to state claims against.
-/

/-! ## A126576.P18382481310593983550

`record[A324500(∑{d}[n+1, #]+∑[n])]`
-/

namespace A126576.P18382481310593983550
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324500 (∑ d ∈ Nat.divisors (f2 n), d + ∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126576.P18382481310593983550

/-!
# A126579: a(n) = numerator of r_n, where r_0 =0, r_1 =1, r_{n+1} = the continued fraction (of rational terms) [r_0,r_1,r_2,r_3,...,r_n].

The programs for A126579, there is no canonical definition to state claims against.
-/

/-! ## A126579.P10592111001285172734

`A316655(A004114(n))+A010060(n)`
-/

namespace A126579.P10592111001285172734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316655 (A004114 n).toNat + A010060 n

end

end A126579.P10592111001285172734

/-! ## A126579.P10151215633634683490

`A316655(A079571(n)+A057427(n))`
-/

namespace A126579.P10151215633634683490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316655 (A079571 n + A057427 n).toNat

end

end A126579.P10151215633634683490

/-!
# A126580: a(n) = denominator of r_n, where r_0 =0, r_1 =1, r_{n+1} = the continued fraction (of rational terms) [r_0,r_1,r_2,r_3,...,r_n].

The programs for A126580, there is no canonical definition to state claims against.
-/

/-! ## A126580.P2327380389088719621

`∏[A098382(lcm(n, a(n-1)))]` with `a(0)=1`
-/

namespace A126580.P2327380389088719621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A098382 (Int.lcm (n : ℤ) (f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A126580.P2327380389088719621

/-! ## A126580.P3459197337384060558

`A145890(A108122(n))`
-/

namespace A126580.P3459197337384060558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145890 (A108122 n).toNat

end

end A126580.P3459197337384060558

/-! ## A126580.P14121765462348763201

`A145890(A298415(n))`
-/

namespace A126580.P14121765462348763201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145890 (A298415 n).toNat

end

end A126580.P14121765462348763201

/-!
# A126587: a(n) is the number of integer lattice points inside the right triangle with legs 3n and 4n (and hypotenuse 5n).

The programs for A126587, the canonical program `A126587.P3273504862915625129` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126587 has offset 1).

The definition of A126587 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126587.P16111033117685437477

`ogf((3+8x+x^2)/(1-3x+3x^2-x^3))`
-/

namespace A126587.P16111033117685437477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 8, 1] [1, -3, 3, -1] n

end

end A126587.P16111033117685437477

namespace A126587

/-- `ogf((3+8x+x^2)/(1-3x+3x^2-x^3))` -/
def P16111033117685437477.Spec : Prop :=
  ∀ n, P16111033117685437477.a n = A126587 (n + 1)

end A126587

/-! ## A126587.P3273504862915625129

`6*(n+1)²-4*(n+1)+1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126587

/-- `6*(n+1)²-4*(n+1)+1` -/
def P3273504862915625129.Spec : Prop :=
  ∀ n, P3273504862915625129.a n = A126587 (n + 1)

theorem P3273504862915625129.correct : P3273504862915625129.Spec := by
  intro n
  simp only [A126587, Nat.add_sub_cancel]

end A126587

/-! ## A126587.P8298062951740392323

`A186424(2*(n+1)-1)`
-/

namespace A126587.P8298062951740392323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186424 (2 * (n + 1) - 1)

end

end A126587.P8298062951740392323

namespace A126587

/-- `A186424(2*(n+1)-1)` -/
def P8298062951740392323.Spec : Prop :=
  ∀ n, P8298062951740392323.a n = A126587 (n + 1)

end A126587

/-! ## A126587.P7747227315583619070

`(A000326(2*(n+1)-1)+A000326(2*(n+1)))/2`
-/

namespace A126587.P7747227315583619070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000326 (2 * (n + 1) - 1) + A000326 (2 * (n + 1)) : ℚ) / 2

end

end A126587.P7747227315583619070

namespace A126587

/-- `(A000326(2*(n+1)-1)+A000326(2*(n+1)))/2` -/
def P7747227315583619070.Spec : Prop :=
  ∀ n, P7747227315583619070.a n = (A126587 (n + 1) : ℚ)

end A126587

/-! ## A126587.P14222353988345564914

`∑[or(2, 12*n)]+1`
-/

namespace A126587.P14222353988345564914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (12 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A126587.P14222353988345564914

namespace A126587

/-- `∑[or(2, 12*n)]+1` -/
def P14222353988345564914.Spec : Prop :=
  ∀ n, (P14222353988345564914.a n : ℤ) = A126587 (n + 1)

end A126587

/-! ## A126587.P5884552684122100505

`xor(1, ∑[12*n+2])`
-/

namespace A126587.P5884552684122100505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A126587.P5884552684122100505

namespace A126587

/-- `xor(1, ∑[12*n+2])` -/
def P5884552684122100505.Spec : Prop :=
  ∀ n, (P5884552684122100505.a n : ℤ) = A126587 (n + 1)

end A126587

/-! ## A126587.P15485394988993952041

`∑[a(n-1)+12]` with `a(0)=3, a(1)=14`
-/

namespace A126587.P15485394988993952041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 14] fun n f1 =>
  f1 (n - 1) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126587.P15485394988993952041

namespace A126587

/-- `∑[a(n-1)+12]` -/
def P15485394988993952041.Spec : Prop :=
  ∀ n, (P15485394988993952041.a n : ℤ) = A126587 (n + 1)

end A126587

/-! ## A126587.P15538025079580658906

`Δ[lcm(2*n+1, n²)]`
-/

namespace A126587.P15538025079580658906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A126587.P15538025079580658906

namespace A126587

/-- `Δ[lcm(2*n+1, n²)]` -/
def P15538025079580658906.Spec : Prop :=
  ∀ n, P15538025079580658906.a n = A126587 (n + 1)

end A126587

/-! ## A126587.P5802826878797701411

`Δ[n²*or(1, 2*n)]`
-/

namespace A126587.P5802826878797701411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 * Nat.lor 1 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A126587.P5802826878797701411

namespace A126587

/-- `Δ[n²*or(1, 2*n)]` -/
def P5802826878797701411.Spec : Prop :=
  ∀ n, P5802826878797701411.a n = A126587 (n + 1)

end A126587

/-! ## A126587.P15935024857918672782

`∑[ogf((3+8x+x^2)/(1-2x+x^2))]`
-/

namespace A126587.P15935024857918672782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 8, 1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126587.P15935024857918672782

namespace A126587

/-- `∑[ogf((3+8x+x^2)/(1-2x+x^2))]` -/
def P15935024857918672782.Spec : Prop :=
  ∀ n, P15935024857918672782.a n = A126587 (n + 1)

end A126587

/-! ## A126587.P17791209427777122185

`Δ[(n+1)*C(2*n, 2)]+1`
-/

namespace A126587.P17791209427777122185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1

end

end A126587.P17791209427777122185

namespace A126587

/-- `Δ[(n+1)*C(2*n, 2)]+1` -/
def P17791209427777122185.Spec : Prop :=
  ∀ n, P17791209427777122185.a n = A126587 (n + 1)

theorem P17791209427777122185.correct : P17791209427777122185.Spec := by
  intro n
  simp only [A126587, Nat.add_sub_cancel, A126587.P17791209427777122185.f1, A126587.P17791209427777122185.a, A126587.P3273504862915625129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A126587

/-! ## A126587.P3011537378287985122

`lcm(2, Δ[n^3])+2*n+1`
-/

namespace A126587.P3011537378287985122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + (2 * n + 1)

end

end A126587.P3011537378287985122

namespace A126587

/-- `lcm(2, Δ[n^3])+2*n+1` -/
def P3011537378287985122.Spec : Prop :=
  ∀ n, (P3011537378287985122.a n : ℤ) = A126587 (n + 1)

end A126587

/-! ## A126587.P13304354590708002494

`or(1, Δ[n*n*(2*n+1)])`
-/

namespace A126587.P13304354590708002494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n * (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A126587.P13304354590708002494

namespace A126587

/-- `or(1, Δ[n*n*(2*n+1)])` -/
def P13304354590708002494.Spec : Prop :=
  ∀ n, P13304354590708002494.a n = A126587 (n + 1)

end A126587

/-! ## A126587.P16356840483529746395

`∑[A063098(n+1)]`
-/

namespace A126587.P16356840483529746395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126587.P16356840483529746395

namespace A126587

/-- `∑[A063098(n+1)]` -/
def P16356840483529746395.Spec : Prop :=
  ∀ n, P16356840483529746395.a n = A126587 (n + 1)

end A126587

/-! ## A126587.P15550918989136259380

`Δ[n*A014105(n)]`
-/

namespace A126587.P15550918989136259380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A014105 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A126587.P15550918989136259380

namespace A126587

/-- `Δ[n*A014105(n)]` -/
def P15550918989136259380.Spec : Prop :=
  ∀ n, P15550918989136259380.a n = A126587 (n + 1)

theorem P15550918989136259380.correct : P15550918989136259380.Spec := by
  intro n
  simp only [A126587, Nat.add_sub_cancel, A126587.P15550918989136259380.f1, A126587.P15550918989136259380.a, A126587.P3273504862915625129.a, A014105, A014105.P182524374866796289.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A126587

/-! ## A126587.P8054117115850081583

`Δ[A033431(n)+n²]`
-/

namespace A126587.P8054117115850081583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A126587.P8054117115850081583

namespace A126587

/-- `Δ[A033431(n)+n²]` -/
def P8054117115850081583.Spec : Prop :=
  ∀ n, P8054117115850081583.a n = A126587 (n + 1)

theorem P8054117115850081583.correct : P8054117115850081583.Spec := by
  intro n
  simp only [A126587, Nat.add_sub_cancel, A126587.P8054117115850081583.f1, A126587.P8054117115850081583.a, A126587.P3273504862915625129.a, A033431, A033431.P14261726496554658204.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A126587

/-! ## A126587.P4258761500264311568

`Δ[n²*A005408(n)]`
-/

namespace A126587.P4258761500264311568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A126587.P4258761500264311568

namespace A126587

/-- `Δ[n²*A005408(n)]` -/
def P4258761500264311568.Spec : Prop :=
  ∀ n, P4258761500264311568.a n = A126587 (n + 1)

theorem P4258761500264311568.correct : P4258761500264311568.Spec := by
  intro n
  simp only [A126587, Nat.add_sub_cancel, A126587.P4258761500264311568.f1, A126587.P4258761500264311568.a, A126587.P3273504862915625129.a, A005408, A005408.P17437947328870227736.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A126587

/-! ## A126587.P5636777596035974024

`∑[A298036(2*n)+2]`
-/

namespace A126587.P5636777596035974024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298036 (2 * n) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126587.P5636777596035974024

namespace A126587

/-- `∑[A298036(2*n)+2]` -/
def P5636777596035974024.Spec : Prop :=
  ∀ n, P5636777596035974024.a n = A126587 (n + 1)

end A126587

/-! ## A126587.P3515224169992874361

`Δ[n*A000217(2*n)]`
-/

namespace A126587.P3515224169992874361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000217 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A126587.P3515224169992874361

namespace A126587

/-- `Δ[n*A000217(2*n)]` -/
def P3515224169992874361.Spec : Prop :=
  ∀ n, P3515224169992874361.a n = A126587 (n + 1)

theorem P3515224169992874361.correct : P3515224169992874361.Spec := by
  intro n
  simp only [A126587, Nat.add_sub_cancel, A126587.P3515224169992874361.f1, A126587.P3515224169992874361.a, A126587.P3273504862915625129.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A126587

/-! ## A126587.P15715639094806385980

`Δ[(2*n+1)*A000290(n)]`
-/

namespace A126587.P15715639094806385980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A000290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A126587.P15715639094806385980

namespace A126587

/-- `Δ[(2*n+1)*A000290(n)]` -/
def P15715639094806385980.Spec : Prop :=
  ∀ n, P15715639094806385980.a n = A126587 (n + 1)

theorem P15715639094806385980.correct : P15715639094806385980.Spec := by
  intro n
  simp only [A126587, Nat.add_sub_cancel, A126587.P15715639094806385980.f1, A126587.P15715639094806385980.a, A126587.P3273504862915625129.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A126587

/-!
# A126588: a(n) = prime(13*n).

The programs for A126588, the canonical program `A126588.P5932802011646552187` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126588 has offset 1).

The definition of A126588 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(13*(n+1))` (program `A126588.P5932802011646552187`, by `A126588.P5932802011646552187.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A126588.P5932802011646552187

`A000040(13*(n+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A126588

/-- `A000040(13*(n+1))` -/
def P5932802011646552187.Spec : Prop :=
  ∀ n, P5932802011646552187.a n = A126588 (n + 1)

theorem P5932802011646552187.correct : P5932802011646552187.Spec := by
  intro n
  simp only [A126588, Nat.add_sub_cancel]

end A126588

/-! ## A126588.P7358379373479227655

`A001749(A008595(n+1))/4`
-/

namespace A126588.P7358379373479227655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (A008595 (n + 1)).toNat : ℚ) / 4

end

end A126588.P7358379373479227655

namespace A126588

/-- `A001749(A008595(n+1))/4` -/
def P7358379373479227655.Spec : Prop :=
  ∀ n, P7358379373479227655.a n = (A126588 (n + 1) : ℚ)

end A126588

/-! ## A126588.P15912056849958135828

`A006005(13*(n+1))`
-/

namespace A126588.P15912056849958135828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (13 * (n + 1))

end

end A126588.P15912056849958135828

namespace A126588

/-- `A006005(13*(n+1))` -/
def P15912056849958135828.Spec : Prop :=
  ∀ n, P15912056849958135828.a n = A126588 (n + 1)

end A126588

/-! ## A126588.P15921763441104683949

`A083249(13*(n+1))`
-/

namespace A126588.P15921763441104683949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (13 * (n + 1))

end

end A126588.P15921763441104683949

namespace A126588

/-- `A083249(13*(n+1))` -/
def P15921763441104683949.Spec : Prop :=
  ∀ n, P15921763441104683949.a n = A126588 (n + 1)

end A126588

/-! ## A126588.P12651791927169978303

`A004139(13*n+11)`
-/

namespace A126588.P12651791927169978303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (13 * n + 11)

end

end A126588.P12651791927169978303

namespace A126588

/-- `A004139(13*n+11)` -/
def P12651791927169978303.Spec : Prop :=
  ∀ n, P12651791927169978303.a n = A126588 (n + 1)

end A126588

/-! ## A126588.P2488544260025639348

`A215848(13*n+11)`
-/

namespace A126588.P2488544260025639348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (13 * n + 11)

end

end A126588.P2488544260025639348

namespace A126588

/-- `A215848(13*n+11)` -/
def P2488544260025639348.Spec : Prop :=
  ∀ n, P2488544260025639348.a n = A126588 (n + 1)

end A126588

/-! ## A126588.P16427782178903628898

`p?[A008578(13*n+1)]`
-/

namespace A126588.P16427782178903628898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (13 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126588.P16427782178903628898

namespace A126588

/-- `p?[A008578(13*n+1)]` -/
def P16427782178903628898.Spec : Prop :=
  ∀ n, P16427782178903628898.a n = A126588 (n + 1)

end A126588

/-! ## A126588.P15046179688999865042

`A008578(13*(n+1)+1)`
-/

namespace A126588.P15046179688999865042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (13 * (n + 1) + 1)

end

end A126588.P15046179688999865042

namespace A126588

/-- `A008578(13*(n+1)+1)` -/
def P15046179688999865042.Spec : Prop :=
  ∀ n, P15046179688999865042.a n = A126588 (n + 1)

end A126588

/-! ## A126588.P18437533806218235402

`A078138(A186113(n))`
-/

namespace A126588.P18437533806218235402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078138 (A186113 n).toNat

end

end A126588.P18437533806218235402

namespace A126588

/-- `A078138(A186113(n))` -/
def P18437533806218235402.Spec : Prop :=
  ∀ n, P18437533806218235402.a n = A126588 (n + 1)

end A126588

/-! ## A126588.P10974816133410180563

`A071621(A269044(n))`
-/

namespace A126588.P10974816133410180563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (A269044 n).toNat

end

end A126588.P10974816133410180563

namespace A126588

/-- `A071621(A269044(n))` -/
def P10974816133410180563.Spec : Prop :=
  ∀ n, P10974816133410180563.a n = A126588 (n + 1)

end A126588

/-! ## A126588.P13449530784733060378

`A046022(A153080(n+1))`
-/

namespace A126588.P13449530784733060378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (A153080 (n + 1)).toNat

end

end A126588.P13449530784733060378

namespace A126588

/-- `A046022(A153080(n+1))` -/
def P13449530784733060378.Spec : Prop :=
  ∀ n, P13449530784733060378.a n = A126588 (n + 1)

end A126588

/-! ## A126588.P14292510266245775797

`A045319(A269100(n)+1)`
-/

namespace A126588.P14292510266245775797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A269100 n + 1).toNat

end

end A126588.P14292510266245775797

namespace A126588

/-- `A045319(A269100(n)+1)` -/
def P14292510266245775797.Spec : Prop :=
  ∀ n, P14292510266245775797.a n = A126588 (n + 1)

end A126588

/-! ## A126588.P13630150337868801764

`A045344(A269100(n)+1)`
-/

namespace A126588.P13630150337868801764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A269100 n + 1).toNat

end

end A126588.P13630150337868801764

namespace A126588

/-- `A045344(A269100(n)+1)` -/
def P13630150337868801764.Spec : Prop :=
  ∀ n, P13630150337868801764.a n = A126588 (n + 1)

end A126588

/-! ## A126588.P4298369340587816599

`A065091(A269100(n)+1)`
-/

namespace A126588.P4298369340587816599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A269100 n + 1).toNat

end

end A126588.P4298369340587816599

namespace A126588

/-- `A065091(A269100(n)+1)` -/
def P4298369340587816599.Spec : Prop :=
  ∀ n, P4298369340587816599.a n = A126588 (n + 1)

end A126588

/-! ## A126588.P7671044420834052067

`record[A000040(A176593(n+2))]`
-/

namespace A126588.P7671044420834052067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A176593 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126588.P7671044420834052067

namespace A126588

/-- `record[A000040(A176593(n+2))]` -/
def P7671044420834052067.Spec : Prop :=
  ∀ n, P7671044420834052067.a n = A126588 (n + 1)

end A126588

/-! ## A126588.P2248448518845143013

`record[A000040(A317313(n+2))]`
-/

namespace A126588.P2248448518845143013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A317313 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126588.P2248448518845143013

namespace A126588

/-- `record[A000040(A317313(n+2))]` -/
def P2248448518845143013.Spec : Prop :=
  ∀ n, P2248448518845143013.a n = A126588 (n + 1)

end A126588

/-! ## A126588.P716940651748578329

`A001747(A190991(n+1))/2`
-/

namespace A126588.P716940651748578329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001747 (A190991 (n + 1)).toNat : ℚ) / 2

end

end A126588.P716940651748578329

namespace A126588

/-- `A001747(A190991(n+1))/2` -/
def P716940651748578329.Spec : Prop :=
  ∀ n, P716940651748578329.a n = (A126588 (n + 1) : ℚ)

end A126588

/-! ## A126588.P10001014100981861490

`A045319(A017653(n)+1+n)`
-/

namespace A126588.P10001014100981861490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A017653 n + 1 + (n : ℤ)).toNat

end

end A126588.P10001014100981861490

namespace A126588

/-- `A045319(A017653(n)+1+n)` -/
def P10001014100981861490.Spec : Prop :=
  ∀ n, P10001014100981861490.a n = A126588 (n + 1)

end A126588

/-! ## A126588.P2889336660672174544

`A157996(A017605(n)+1+n)`
-/

namespace A126588.P2889336660672174544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (A017605 n + 1 + (n : ℤ)).toNat

end

end A126588.P2889336660672174544

namespace A126588

/-- `A157996(A017605(n)+1+n)` -/
def P2889336660672174544.Spec : Prop :=
  ∀ n, P2889336660672174544.a n = A126588 (n + 1)

end A126588

/-!
# A126589: Numbers n>1 such that prime of the form (n^k-1)/(n-1) does not exist for k>2; or A128164(n) = 0.

The programs for A126589, there is no canonical definition to state claims against.
-/

/-! ## A126589.P7386066373680302194

`A001597(lt[A210610(2*n+1), A001597(n+1)])`
-/

namespace A126589.P7386066373680302194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210610 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A126589.P7386066373680302194

/-! ## A126589.P16831110315632758206

`eq[A004016(A286102(n+1)), A301573(n)]`
-/

namespace A126589.P16831110315632758206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 (A286102 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A126589.P16831110315632758206

/-! ## A126589.P902667586720081907

`A001694(lt[A210391(n), A084268(3*n+1)])`
-/

namespace A126589.P902667586720081907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084268 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A126589.P902667586720081907

/-! ## A126589.P5536628830947632591

`A001694(lt[A061782(n+1), A143979(3*n+1)])`
-/

namespace A126589.P5536628830947632591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143979 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A126589.P5536628830947632591

/-! ## A126589.P6465578329040992288

`A001597(lt[A317245(2*n+1), A089858(n)])`
-/

namespace A126589.P6465578329040992288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317245 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A126589.P6465578329040992288

/-!
# A126590: Multiples of 3 or 5 but not both.

The programs for A126590, the canonical program `A126590.P15971277393748991957` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126590 has offset 1).

The definition of A126590 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126590.P6530392196218338110

`ogf((3+2x+x^2+3x^3+x^4+2x^5+3x^6)/(1-x-x^6+x^7))`
-/

namespace A126590.P6530392196218338110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 2, 1, 3, 1, 2, 3] [1, -1, 0, 0, 0, 0, -1, 1] n

end

end A126590.P6530392196218338110

namespace A126590

/-- `ogf((3+2x+x^2+3x^3+x^4+2x^5+3x^6)/(1-x-x^6+x^7))` -/
def P6530392196218338110.Spec : Prop :=
  ∀ n, P6530392196218338110.a n = A126590 (n + 1)

end A126590

/-! ## A126590.P15971277393748991957

`a(n-1)+a(n-6)-a(n-7)` with `a(0)=3, a(1)=5, a(2)=6, a(3)=9, a(4)=10, a(5)=12, a(6)=18`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126590

/-- `a(n-1)+a(n-6)-a(n-7)` -/
def P15971277393748991957.Spec : Prop :=
  ∀ n, P15971277393748991957.a n = A126590 (n + 1)

theorem P15971277393748991957.correct : P15971277393748991957.Spec := by
  intro n
  simp only [A126590, Nat.add_sub_cancel]

end A126590

/-! ## A126590.P3417383756510194775

`A271346(n+1)-A063208(n+1)`
-/

namespace A126590.P3417383756510194775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271346 (n + 1) - A063208 (n + 1)

end

end A126590.P3417383756510194775

namespace A126590

/-- `A271346(n+1)-A063208(n+1)` -/
def P3417383756510194775.Spec : Prop :=
  ∀ n, P3417383756510194775.a n = A126590 (n + 1)

end A126590

/-! ## A126590.P7804223402016246892

`A281746(A047306(n+2))`
-/

namespace A126590.P7804223402016246892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281746 (A047306 (n + 2)).toNat

end

end A126590.P7804223402016246892

namespace A126590

/-- `A281746(A047306(n+2))` -/
def P7804223402016246892.Spec : Prop :=
  ∀ n, P7804223402016246892.a n = A126590 (n + 1)

end A126590

/-! ## A126590.P414266764408655920

`A281746(A047304(n+1)+1)`
-/

namespace A126590.P414266764408655920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281746 (A047304 (n + 1) + 1).toNat

end

end A126590.P414266764408655920

namespace A126590

/-- `A281746(A047304(n+1)+1)` -/
def P414266764408655920.Spec : Prop :=
  ∀ n, P414266764408655920.a n = A126590 (n + 1)

end A126590

/-! ## A126590.P2286939878557483258

`record[Δ[A126073(n+2)]]`
-/

namespace A126590.P2286939878557483258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126073 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126590.P2286939878557483258

namespace A126590

/-- `record[Δ[A126073(n+2)]]` -/
def P2286939878557483258.Spec : Prop :=
  ∀ n, P2286939878557483258.a n = A126590 (n + 1)

end A126590

/-! ## A126590.P12233222258016843110

`eq[1, A166333(A220130(n)+n)]`
-/

namespace A126590.P12233222258016843110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (A220130 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A126590.P12233222258016843110

namespace A126590

/-- `eq[1, A166333(A220130(n)+n)]` -/
def P12233222258016843110.Spec : Prop :=
  ∀ n, (P12233222258016843110.a n : ℤ) = A126590 (n + 1)

end A126590

/-! ## A126590.P13762286812672461950

`eq[A008676(n+7), A008676(n)]`
-/

namespace A126590.P13762286812672461950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (n + 7)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A126590.P13762286812672461950

namespace A126590

/-- `eq[A008676(n+7), A008676(n)]` -/
def P13762286812672461950.Spec : Prop :=
  ∀ n, (P13762286812672461950.a n : ℤ) = A126590 (n + 1)

end A126590

/-! ## A126590.P9509248508474774554

`lt[1, A057979(A220130(n)+n)]`
-/

namespace A126590.P9509248508474774554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A220130 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A126590.P9509248508474774554

namespace A126590

/-- `lt[1, A057979(A220130(n)+n)]` -/
def P9509248508474774554.Spec : Prop :=
  ∀ n, (P9509248508474774554.a n : ℤ) = A126590 (n + 1)

end A126590

/-! ## A126590.P11185255030142750619

`eq[2, A020639(A008620(A222221(4*(n+1))))]`
-/

namespace A126590.P11185255030142750619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008620 (A222221 (4 * (n + 1))).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A126590.P11185255030142750619

namespace A126590

/-- `eq[2, A020639(A008620(A222221(4*(n+1))))]` -/
def P11185255030142750619.Spec : Prop :=
  ∀ n, (P11185255030142750619.a n : ℤ) = A126590 (n + 1)

end A126590

/-! ## A126590.P3146344196658252934

`lt[xor(2, A003269(2*n)), A003269(2*n)]`
-/

namespace A126590.P3146344196658252934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A003269 (2 * n))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A126590.P3146344196658252934

namespace A126590

/-- `lt[xor(2, A003269(2*n)), A003269(2*n)]` -/
def P3146344196658252934.Spec : Prop :=
  ∀ n, (P3146344196658252934.a n : ℤ) = A126590 (n + 1)

end A126590

/-!
# A126591: Coordination sequence of a point in the sphere packing 4/3/c27 of Fischer, or the lcv-a net.

The programs for A126591, there is no canonical definition to state claims against.
-/

/-! ## A126591.P15744338448535686889

`A018502(A293897(2*n+1)+A007494(n))`
-/

namespace A126591.P15744338448535686889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018502 (A293897 (2 * n + 1) + A007494 n).toNat

end

end A126591.P15744338448535686889

/-!
# A126592: Sum of numbers less than or equal to n which are multiples of 3 or 5.

The programs for A126592, the canonical program `A126592.P7427870163815360223` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126592 has offset 1).

The definition of A126592 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126592.P7427870163815360223

`∑[(n+1)%(gcd(15, n+1)+n)]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126592

/-- `∑[(n+1)%(gcd(15, n+1)+n)]` -/
def P7427870163815360223.Spec : Prop :=
  ∀ n, (P7427870163815360223.a n : ℤ) = A126592 (n + 1)

theorem P7427870163815360223.correct : P7427870163815360223.Spec := by
  intro n
  simp only [A126592, Nat.add_sub_cancel]

end A126592

/-! ## A126592.P734566600511158169

`∑[C(n+1, A255680(n+1)+1)]`
-/

namespace A126592.P734566600511158169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A255680 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126592.P734566600511158169

namespace A126592

/-- `∑[C(n+1, A255680(n+1)+1)]` -/
def P734566600511158169.Spec : Prop :=
  ∀ n, (P734566600511158169.a n : ℤ) = A126592 (n + 1)

end A126592

/-! ## A126592.P17213728854381243851

`∑[(n+1)*A178333(A255680(n+1)+1)]`
-/

namespace A126592.P17213728854381243851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A178333 (A255680 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126592.P17213728854381243851

namespace A126592

/-- `∑[(n+1)*A178333(A255680(n+1)+1)]` -/
def P17213728854381243851.Spec : Prop :=
  ∀ n, P17213728854381243851.a n = A126592 (n + 1)

end A126592

/-! ## A126592.P37560576999122472

`∑[(n+1)*A010056(A163169(28*(n+1)))]`
-/

namespace A126592.P37560576999122472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010056 (A163169 (28 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126592.P37560576999122472

namespace A126592

/-- `∑[(n+1)*A010056(A163169(28*(n+1)))]` -/
def P37560576999122472.Spec : Prop :=
  ∀ n, P37560576999122472.a n = A126592 (n + 1)

end A126592

/-! ## A126592.P2173244345324520647

`∑[A010056(A163169(28*(n+1)))*A153152(n)]`
-/

namespace A126592.P2173244345324520647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 (A163169 (28 * (n + 1))).toNat * A153152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126592.P2173244345324520647

namespace A126592

/-- `∑[A010056(A163169(28*(n+1)))*A153152(n)]` -/
def P2173244345324520647.Spec : Prop :=
  ∀ n, P2173244345324520647.a n = A126592 (n + 1)

end A126592

/-! ## A126592.P2669672928538983494

`∑[(n+1)*A002487(n-A274462(n+1))]`
-/

namespace A126592.P2669672928538983494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002487 ((n : ℤ) - A274462 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126592.P2669672928538983494

namespace A126592

/-- `∑[(n+1)*A002487(n-A274462(n+1))]` -/
def P2669672928538983494.Spec : Prop :=
  ∀ n, P2669672928538983494.a n = A126592 (n + 1)

end A126592

/-! ## A126592.P2561599241720259847

`∑[A002487(n-A274462(n+1))*A153152(n)]`
-/

namespace A126592.P2561599241720259847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 ((n : ℤ) - A274462 (n + 1)).toNat * A153152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126592.P2561599241720259847

namespace A126592

/-- `∑[A002487(n-A274462(n+1))*A153152(n)]` -/
def P2561599241720259847.Spec : Prop :=
  ∀ n, P2561599241720259847.a n = A126592 (n + 1)

end A126592

/-!
# A126594: Floor of the average of the prime factors of n with multiplicity.

The programs for A126594, the canonical program `A126594.P6678301091838759697` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126594 has offset 2).

The definition of A126594 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126594.P6678301091838759697

`floor(A001414(n+2)/A001222(n+2))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A126594

/-- `floor(A001414(n+2)/A001222(n+2))` -/
def P6678301091838759697.Spec : Prop :=
  ∀ n, P6678301091838759697.a n = A126594 (n + 2)

theorem P6678301091838759697.correct : P6678301091838759697.Spec := by
  intro n
  simp only [A126594, Nat.add_sub_cancel]

end A126594

/-! ## A126594.P10818935982732521935

`ceil(A036288(n+2)/A001222(n+2))-1`
-/

namespace A126594.P10818935982732521935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A036288 (n + 2) : ℚ) / (A001222 (n + 2) : ℚ)⌉ - 1

end

end A126594.P10818935982732521935

namespace A126594

/-- `ceil(A036288(n+2)/A001222(n+2))-1` -/
def P10818935982732521935.Spec : Prop :=
  ∀ n, P10818935982732521935.a n = A126594 (n + 2)

end A126594

/-! ## A126594.P9400329033241975568

`floor(A123528(n+2)/A123529(n+2))`
-/

namespace A126594.P9400329033241975568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A123528 (n + 2) : ℚ) / (A123529 (n + 2) : ℚ)⌋

end

end A126594.P9400329033241975568

namespace A126594

/-- `floor(A123528(n+2)/A123529(n+2))` -/
def P9400329033241975568.Spec : Prop :=
  ∀ n, P9400329033241975568.a n = A126594 (n + 2)

end A126594

/-! ## A126594.P166784194087611632

`floor(A122811(n+2)/A122810(n+2))+1`
-/

namespace A126594.P166784194087611632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A122811 (n + 2) : ℚ) / (A122810 (n + 2) : ℚ)⌋ + 1

end

end A126594.P166784194087611632

namespace A126594

/-- `floor(A122811(n+2)/A122810(n+2))+1` -/
def P166784194087611632.Spec : Prop :=
  ∀ n, P166784194087611632.a n = A126594 (n + 2)

end A126594

/-! ## A126594.P18029853472705065787

`A363895(n+2)-A014707(A185237(n))`
-/

namespace A126594.P18029853472705065787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363895 (n + 2) - A014707 (A185237 n).toNat

end

end A126594.P18029853472705065787

namespace A126594

/-- `A363895(n+2)-A014707(A185237(n))` -/
def P18029853472705065787.Spec : Prop :=
  ∀ n, P18029853472705065787.a n = A126594 (n + 2)

end A126594

/-!
# A126596: a(n) = binomial(4*n,n)*(2*n+1)/(3*n+1).

The programs for A126596, the canonical program `A126596.P10511034239323337704` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126596 has offset 0).

The definition of A126596 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126596.P16278768688821347433

`A208983(2*n)`
-/

namespace A126596.P16278768688821347433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208983 (2 * n)

end

end A126596.P16278768688821347433

namespace A126596

/-- `A208983(2*n)` -/
def P16278768688821347433.Spec : Prop :=
  ∀ n, P16278768688821347433.a n = A126596 n

end A126596

/-! ## A126596.P7241324059820466375

`(2*n+1)*A002293(n)`
-/

namespace A126596.P7241324059820466375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A002293 n

end

end A126596.P7241324059820466375

namespace A126596

/-- `(2*n+1)*A002293(n)` -/
def P7241324059820466375.Spec : Prop :=
  ∀ n, P7241324059820466375.a n = A126596 n

end A126596

/-! ## A126596.P10511034239323337704

`A005810(n)*A005408(n)/A016777(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A126596

/-- `A005810(n)*A005408(n)/A016777(n)` -/
def P10511034239323337704.Spec : Prop :=
  ∀ n, P10511034239323337704.a n = (A126596 n : ℚ)

end A126596

/-! ## A126596.P1581154896041355878

`(2*n+1)*C(4*n, n)/(3*n+1)`
-/

namespace A126596.P1581154896041355878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * Nat.choose (4 * n) n : ℚ) / (3 * n + 1 : ℚ)

end

end A126596.P1581154896041355878

namespace A126596

/-- `(2*n+1)*C(4*n, n)/(3*n+1)` -/
def P1581154896041355878.Spec : Prop :=
  ∀ n, P1581154896041355878.a n = (A126596 n : ℚ)

end A126596

/-! ## A126596.P18079991953283023464

`C(4*n, n)*(2*n+1)/(3*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A126596.P18079991953283023464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (4 * n) n * (2 * n + 1) : ℚ) / (3 * n + 1 : ℚ)

end

end A126596.P18079991953283023464

namespace A126596

/-- `C(4*n, n)*(2*n+1)/(3*n+1)` -/
def P18079991953283023464.Spec : Prop :=
  ∀ n, P18079991953283023464.a n = (A126596 n : ℚ)

end A126596

/-! ## A126596.P8684941755446149452

`A039599(C(2*n+1, 2)+n)`
-/

namespace A126596.P8684941755446149452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039599 (Nat.choose (2 * n + 1) 2 + n)

end

end A126596.P8684941755446149452

namespace A126596

/-- `A039599(C(2*n+1, 2)+n)` -/
def P8684941755446149452.Spec : Prop :=
  ∀ n, P8684941755446149452.a n = A126596 n

end A126596

/-! ## A126596.P1002779511189604577

`(2*n+1)*A369082(2*n)`
-/

namespace A126596.P1002779511189604577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A369082 (2 * n)

end

end A126596.P1002779511189604577

namespace A126596

/-- `(2*n+1)*A369082(2*n)` -/
def P1002779511189604577.Spec : Prop :=
  ∀ n, P1002779511189604577.a n = A126596 n

end A126596

/-! ## A126596.P18161502790512188928

`record[A208983(A083220(n))]`
-/

namespace A126596.P18161502790512188928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208983 (A083220 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126596.P18161502790512188928

namespace A126596

/-- `record[A208983(A083220(n))]` -/
def P18161502790512188928.Spec : Prop :=
  ∀ n, P18161502790512188928.a n = A126596 n

end A126596

/-! ## A126596.P13535567118392983697

`A002293(n)*A005408(n)`
-/

namespace A126596.P13535567118392983697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 n * A005408 n

end

end A126596.P13535567118392983697

namespace A126596

/-- `A002293(n)*A005408(n)` -/
def P13535567118392983697.Spec : Prop :=
  ∀ n, P13535567118392983697.a n = A126596 n

end A126596

/-! ## A126596.P537056495415967949

`record[gcd(A090192(n), A208983(n))]`
-/

namespace A126596.P537056495415967949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A090192 n) (A208983 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126596.P537056495415967949

namespace A126596

/-- `record[gcd(A090192(n), A208983(n))]` -/
def P537056495415967949.Spec : Prop :=
  ∀ n, (P537056495415967949.a n : ℤ) = A126596 n

end A126596

/-! ## A126596.P13845996712963492312

`(A052203(n)+A002293(n))/2`
-/

namespace A126596.P13845996712963492312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052203 n + A002293 n : ℚ) / 2

end

end A126596.P13845996712963492312

namespace A126596

/-- `(A052203(n)+A002293(n))/2` -/
def P13845996712963492312.Spec : Prop :=
  ∀ n, P13845996712963492312.a n = (A126596 n : ℚ)

end A126596

/-! ## A126596.P9747319930463117389

`2*A005810(n)-A052203(n)`
-/

namespace A126596.P9747319930463117389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005810 n - A052203 n

end

end A126596.P9747319930463117389

namespace A126596

/-- `2*A005810(n)-A052203(n)` -/
def P9747319930463117389.Spec : Prop :=
  ∀ n, P9747319930463117389.a n = A126596 n

end A126596

/-! ## A126596.P6140001187208505908

`A005810(n)-n*A002293(n)`
-/

namespace A126596.P6140001187208505908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005810 n - (n : ℤ) * A002293 n

end

end A126596.P6140001187208505908

namespace A126596

/-- `A005810(n)-n*A002293(n)` -/
def P6140001187208505908.Spec : Prop :=
  ∀ n, P6140001187208505908.a n = A126596 n

end A126596

/-! ## A126596.P10285422388640266866

`Δ[n²]*A069270(A000096(n))`
-/

namespace A126596.P10285422388640266866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A069270 (A000096 n).toNat

end

end A126596.P10285422388640266866

namespace A126596

/-- `Δ[n²]*A069270(A000096(n))` -/
def P10285422388640266866.Spec : Prop :=
  ∀ n, P10285422388640266866.a n = A126596 n

end A126596

/-! ## A126596.P1502602201382014162

`A002293(n)*A110654(A016813(n))`
-/

namespace A126596.P1502602201382014162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 n * A110654 (A016813 n).toNat

end

end A126596.P1502602201382014162

namespace A126596

/-- `A002293(n)*A110654(A016813(n))` -/
def P1502602201382014162.Spec : Prop :=
  ∀ n, P1502602201382014162.a n = A126596 n

end A126596

/-! ## A126596.P4801848620669896375

`A069270(A000096(n))/2*A016825(n)`
-/

namespace A126596.P4801848620669896375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069270 (A000096 n).toNat : ℚ) / 2 * (A016825 n : ℚ)

end

end A126596.P4801848620669896375

namespace A126596

/-- `A069270(A000096(n))/2*A016825(n)` -/
def P4801848620669896375.Spec : Prop :=
  ∀ n, P4801848620669896375.a n = (A126596 n : ℚ)

end A126596

/-! ## A126596.P89234538536944100

`A005408(n)*A005810(n)/A016777(n)`
-/

namespace A126596.P89234538536944100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n * A005810 n : ℚ) / (A016777 n : ℚ)

end

end A126596.P89234538536944100

namespace A126596

/-- `A005408(n)*A005810(n)/A016777(n)` -/
def P89234538536944100.Spec : Prop :=
  ∀ n, P89234538536944100.a n = (A126596 n : ℚ)

end A126596

/-! ## A126596.P4831638598970592491

`(A016777(n)-n)*A243663(A152947(n+1))`
-/

namespace A126596.P4831638598970592491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016777 n - (n : ℤ)) * A243663 (A152947 (n + 1)).toNat

end

end A126596.P4831638598970592491

namespace A126596

/-- `(A016777(n)-n)*A243663(A152947(n+1))` -/
def P4831638598970592491.Spec : Prop :=
  ∀ n, P4831638598970592491.a n = A126596 n

end A126596

/-!
# A126597: Triangle read by rows: Start with the row 1,2. To get the next row, do the following: if the sum of two adjacent terms is odd then insert this sum in between them, otherwise insert the absolute value of their difference; repeat the procedure.

The programs for A126597, there is no canonical definition to state claims against.
-/

/-! ## A126597.P8029039227893534913

`gcd(Δ[A349642(n)], A087458(n+1))`
-/

namespace A126597.P8029039227893534913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A087458 (n + 1))

end

end A126597.P8029039227893534913

/-! ## A126597.P524562287399005166

`A066099(A198633(n))+A006842(n+1)`
-/

namespace A126597.P524562287399005166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (A198633 n).toNat + A006842 (n + 1)

end

end A126597.P524562287399005166

/-! ## A126597.P3519350440197225714

`A006530(A131967(n+1)%A122956(n))`
-/

namespace A126597.P3519350440197225714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.tmod (A131967 (n + 1)) (A122956 n)).toNat

end

end A126597.P3519350440197225714

/-! ## A126597.P16796533579665990911

`gcd(A004186(A146529(n)), A237984(n+1))`
-/

namespace A126597.P16796533579665990911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004186 (A146529 n).toNat) (A237984 (n + 1))

end

end A126597.P16796533579665990911

/-! ## A126597.P12922989864588845032

`A349685(or(A306483(n), A306491(n+1)))`
-/

namespace A126597.P12922989864588845032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349685 (Int.lor (A306483 n) (A306491 (n + 1))).toNat

end

end A126597.P12922989864588845032

