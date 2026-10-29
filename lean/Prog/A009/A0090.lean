import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A009000: Ordered hypotenuse numbers (squares are sums of 2 distinct nonzero squares).

The programs for A009000, the canonical program `A009000.P4505653467235074305` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009000 has offset 1).

The definition of A009000 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A009000.P4505653467235074305

`comp[A224921(n+1)+n]-n`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A009000

/-- `comp[A224921(n+1)+n]-n` -/
def P4505653467235074305.Spec : Prop :=
  ∀ n, P4505653467235074305.a n = A009000 (n + 1)

theorem P4505653467235074305.correct : P4505653467235074305.Spec := by
  intro n
  simp only [A009000, Nat.add_sub_cancel]

end A009000

/-! ## A009000.P17392841356661245234

`A009003(∑[char[A224921(n+1)]])`
-/

namespace A009000.P17392841356661245234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224921 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A009000.P17392841356661245234

namespace A009000

/-- `A009003(∑[char[A224921(n+1)]])` -/
def P17392841356661245234.Spec : Prop :=
  ∀ n, P17392841356661245234.a n = A009000 (n + 1)

end A009000

/-! ## A009000.P11289960131447344039

`A001489(n)+comp[A224921(n+1)+n]`
-/

namespace A009000.P11289960131447344039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224921 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A009000.P11289960131447344039

namespace A009000

/-- `A001489(n)+comp[A224921(n+1)+n]` -/
def P11289960131447344039.Spec : Prop :=
  ∀ n, P11289960131447344039.a n = A009000 (n + 1)

end A009000

/-! ## A009000.P5906355599073761875

`sqrt(A046083(n+1)²+A046084(n+1)²)`
-/

namespace A009000.P5906355599073761875
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A046083 (n + 1) ^ 2 + A046084 (n + 1) ^ 2 : ℝ)

end

end A009000.P5906355599073761875

namespace A009000

/-- `sqrt(A046083(n+1)²+A046084(n+1)²)` -/
def P5906355599073761875.Spec : Prop :=
  ∀ n, P5906355599073761875.a n = (A009000 (n + 1) : ℝ)

end A009000

/-! ## A009000.P3497544597892552675

`A001057(2*n)+comp[A224921(n+1)+n]`
-/

namespace A009000.P3497544597892552675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224921 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (2 * n) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A009000.P3497544597892552675

namespace A009000

/-- `A001057(2*n)+comp[A224921(n+1)+n]` -/
def P3497544597892552675.Spec : Prop :=
  ∀ n, P3497544597892552675.a n = A009000 (n + 1)

end A009000

/-! ## A009000.P8574367145404568811

`A114327(A000096(n))+comp[A224921(n+1)+n]`
-/

namespace A009000.P8574367145404568811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224921 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (A000096 n).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A009000.P8574367145404568811

namespace A009000

/-- `A114327(A000096(n))+comp[A224921(n+1)+n]` -/
def P8574367145404568811.Spec : Prop :=
  ∀ n, P8574367145404568811.a n = A009000 (n + 1)

end A009000

/-!
# A009001: Expansion of e.g.f: (1+x)*cos(x).

The programs for A009001, the canonical program `A009001.P14275162091830881705` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009001 has offset 0).

The definition of A009001 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A009001.P7403028056695581480

`ogf((1+x+x^2-x^3)/(1+2x^2+x^4))`
-/

namespace A009001.P7403028056695581480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, -1] [1, 0, 2, 0, 1] n

end

end A009001.P7403028056695581480

namespace A009001

/-- `ogf((1+x+x^2-x^3)/(1+2x^2+x^4))` -/
def P7403028056695581480.Spec : Prop :=
  ∀ n, P7403028056695581480.a n = A009001 n

end A009001

/-! ## A009001.P14275162091830881705

`(-1)^n*(a(n-2)-a(n-1))-a(n-3)` with `a(0)=1, a(1)=1, a(2)=-1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A009001

/-- `(-1)^n*(a(n-2)-a(n-1))-a(n-3)` -/
def P14275162091830881705.Spec : Prop :=
  ∀ n, P14275162091830881705.a n = A009001 n

theorem P14275162091830881705.correct : P14275162091830881705.Spec := by
  intro n
  simp only [A009001]

end A009001

/-! ## A009001.P8886816541463979450

`or(1, ∑[n*(1-and(2, n))])`
-/

namespace A009001.P8886816541463979450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - (Nat.land 2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A009001.P8886816541463979450

namespace A009001

/-- `or(1, ∑[n*(1-and(2, n))])` -/
def P8886816541463979450.Spec : Prop :=
  ∀ n, P8886816541463979450.a n = A009001 n

end A009001

/-! ## A009001.P1927390562627600283

`Δ[and(2, n)-a(n-2)]` with `a(0)=0, a(1)=1`
-/

namespace A009001.P1927390562627600283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (Nat.land 2 n : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A009001.P1927390562627600283

namespace A009001

/-- `Δ[and(2, n)-a(n-2)]` -/
def P1927390562627600283.Spec : Prop :=
  ∀ n, P1927390562627600283.a n = A009001 n

end A009001

/-! ## A009001.P6047532041475634157

`(1-and(2, n))*n^(n%2)`
-/

namespace A009001.P6047532041475634157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.land 2 n : ℤ)) * (n ^ (n % 2) : ℤ)

end

end A009001.P6047532041475634157

namespace A009001

/-- `(1-and(2, n))*n^(n%2)` -/
def P6047532041475634157.Spec : Prop :=
  ∀ n, P6047532041475634157.a n = A009001 n

end A009001

/-! ## A009001.P15782815905515790927

`(Δ[lcm(2, 1-n)]-1)/a(n-1)` with `a(0)=1`
-/

namespace A009001.P15782815905515790927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (1 - (n : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1 : ℚ) / a (n - 1)

end

end A009001.P15782815905515790927

namespace A009001

/-- `(Δ[lcm(2, 1-n)]-1)/a(n-1)` -/
def P15782815905515790927.Spec : Prop :=
  ∀ n, P15782815905515790927.a n = (A009001 n : ℚ)

end A009001

/-! ## A009001.P6094360839621905318

`2*and(1, n)*a(n-1)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A009001.P6094360839621905318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (2 * Nat.land 1 n : ℤ) * a (n - 1) - a (n - 2)

end

end A009001.P6094360839621905318

namespace A009001

/-- `2*and(1, n)*a(n-1)-a(n-2)` -/
def P6094360839621905318.Spec : Prop :=
  ∀ n, P6094360839621905318.a n = A009001 n

end A009001

/-! ## A009001.P16844073638761418046

`(a(n-1)*a(n-2)-2)/a(n-3)` with `a(0)=1, a(1)=1, a(2)=-1`
-/

namespace A009001.P16844073638761418046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, -1] fun n a =>
  (a (n - 1) * a (n - 2) - 2) / a (n - 3)

end

end A009001.P16844073638761418046

namespace A009001

/-- `(a(n-1)*a(n-2)-2)/a(n-3)` -/
def P16844073638761418046.Spec : Prop :=
  ∀ n, P16844073638761418046.a n = (A009001 n : ℚ)

end A009001

/-! ## A009001.P8669680596902032282

`a(n-1)%2-(a(n-2)+a(n-2)%2)` with `a(0)=1, a(1)=1`
-/

namespace A009001.P8669680596902032282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.tmod (a (n - 1)) 2 - (a (n - 2) + Int.tmod (a (n - 2)) 2)

end

end A009001.P8669680596902032282

namespace A009001

/-- `a(n-1)%2-(a(n-2)+a(n-2)%2)` -/
def P8669680596902032282.Spec : Prop :=
  ∀ n, P8669680596902032282.a n = A009001 n

end A009001

/-! ## A009001.P13448855672336562875

`or(1, A309214(n))`
-/

namespace A009001.P13448855672336562875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A309214 n)

end

end A009001.P13448855672336562875

namespace A009001

/-- `or(1, A309214(n))` -/
def P13448855672336562875.Spec : Prop :=
  ∀ n, P13448855672336562875.a n = A009001 n

end A009001

/-! ## A009001.P9195418125718247883

`or(1, -A309215(n))`
-/

namespace A009001.P9195418125718247883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-A309215 n)

end

end A009001.P9195418125718247883

namespace A009001

/-- `or(1, -A309215(n))` -/
def P9195418125718247883.Spec : Prop :=
  ∀ n, P9195418125718247883.a n = A009001 n

end A009001

/-! ## A009001.P5714734809187628526

`2*A374139(n)-1`
-/

namespace A009001.P5714734809187628526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A374139 n - 1

end

end A009001.P5714734809187628526

namespace A009001

/-- `2*A374139(n)-1` -/
def P5714734809187628526.Spec : Prop :=
  ∀ n, P5714734809187628526.a n = A009001 n

end A009001

/-! ## A009001.P2757289229518349182

`∑[2*A127365(n)]+1`
-/

namespace A009001.P2757289229518349182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A127365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A009001.P2757289229518349182

namespace A009001

/-- `∑[2*A127365(n)]+1` -/
def P2757289229518349182.Spec : Prop :=
  ∀ n, P2757289229518349182.a n = A009001 n

end A009001

/-! ## A009001.P3569788500536580230

`A296063(n)/a(n-1)` with `a(0)=1`
-/

namespace A009001.P3569788500536580230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A296063 n : ℚ) / a (n - 1)

end

end A009001.P3569788500536580230

namespace A009001

/-- `A296063(n)/a(n-1)` -/
def P3569788500536580230.Spec : Prop :=
  ∀ n, P3569788500536580230.a n = (A009001 n : ℚ)

end A009001

/-! ## A009001.P4409149028410152682

`A084099(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A009001.P4409149028410152682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A084099 n - a (n - 2)

end

end A009001.P4409149028410152682

namespace A009001

/-- `A084099(n)-a(n-2)` -/
def P4409149028410152682.Spec : Prop :=
  ∀ n, P4409149028410152682.a n = A009001 n

end A009001

/-! ## A009001.P2424579964084025861

`A057077(n)*A093178(n)`
-/

namespace A009001.P2424579964084025861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A093178 n

end

end A009001.P2424579964084025861

namespace A009001

/-- `A057077(n)*A093178(n)` -/
def P2424579964084025861.Spec : Prop :=
  ∀ n, P2424579964084025861.a n = A009001 n

end A009001

/-! ## A009001.P13406388633003819004

`A392334(n)/A127630(n)`
-/

namespace A009001.P13406388633003819004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392334 n : ℚ) / (A127630 n : ℚ)

end

end A009001.P13406388633003819004

namespace A009001

/-- `A392334(n)/A127630(n)` -/
def P13406388633003819004.Spec : Prop :=
  ∀ n, P13406388633003819004.a n = (A009001 n : ℚ)

end A009001

/-! ## A009001.P8663936850531058518

`A127630(n)%A133265(n)`
-/

namespace A009001.P8663936850531058518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127630 n) (A133265 n)

end

end A009001.P8663936850531058518

namespace A009001

/-- `A127630(n)%A133265(n)` -/
def P8663936850531058518.Spec : Prop :=
  ∀ n, P8663936850531058518.a n = A009001 n

end A009001

/-! ## A009001.P15487644459622031612

`xor(A127630(n), A237420(n))`
-/

namespace A009001.P15487644459622031612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A127630 n) (A237420 n)

end

end A009001.P15487644459622031612

namespace A009001

/-- `xor(A127630(n), A237420(n))` -/
def P15487644459622031612.Spec : Prop :=
  ∀ n, P15487644459622031612.a n = A009001 n

end A009001

/-! ## A009001.P9819983257029439992

`A056594(n)-n*A163805(n)`
-/

namespace A009001.P9819983257029439992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n - (n : ℤ) * A163805 n

end

end A009001.P9819983257029439992

namespace A009001

/-- `A056594(n)-n*A163805(n)` -/
def P9819983257029439992.Spec : Prop :=
  ∀ n, P9819983257029439992.a n = A009001 n

end A009001

/-!
# A009002: Expansion of (1+x)/cos(x).

The programs for A009002, there is no canonical definition to state claims against.
-/

/-! ## A009002.P17616792873007087374

`abs(A119882(n))`
-/

namespace A009002.P17616792873007087374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A119882 n|

end

end A009002.P17616792873007087374

/-! ## A009002.P8739144701761594143

`A109449(∑[A014681(n)])`
-/

namespace A009002.P8739144701761594143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109449 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A009002.P8739144701761594143

/-! ## A009002.P13932852561806047057

`A247453(∑[A014681(n)])`
-/

namespace A009002.P13932852561806047057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247453 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A009002.P13932852561806047057

/-! ## A009002.P4995296416031903737

`gcd(A000038(n), A119882(n))`
-/

namespace A009002.P4995296416031903737
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A119882 n)

end

end A009002.P4995296416031903737

/-! ## A009002.P5827790017628700389

`lcm(A033999(n), A119882(n))`
-/

namespace A009002.P5827790017628700389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A119882 n)

end

end A009002.P5827790017628700389

/-! ## A009002.P3652021501879863931

`abs(A119879(∑[A014681(n)]))`
-/

namespace A009002.P3652021501879863931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A119879 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A009002.P3652021501879863931

/-! ## A009002.P10075932179314791139

`A247453(A000035(n)+∑[n])`
-/

namespace A009002.P10075932179314791139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247453 (A000035 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A009002.P10075932179314791139

/-! ## A009002.P4032307538061370031

`A109449(∑[A004442(n+1)]-n)`
-/

namespace A009002.P4032307538061370031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109449 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A009002.P4032307538061370031

/-! ## A009002.P7856781052601771214

`A109449(∑[A028242(A053438(n))])`
-/

namespace A009002.P7856781052601771214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A053438 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109449 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A009002.P7856781052601771214

/-! ## A009002.P2647546584797992666

`A109449(A000217(n)+A000035(n))`
-/

namespace A009002.P2647546584797992666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109449 (A000217 n + A000035 n).toNat

end

end A009002.P2647546584797992666

/-!
# A009003: Hypotenuse numbers (squares are sums of 2 nonzero squares).

The programs for A009003, the canonical program `A009003.P4153996351455582682` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009003 has offset 1).

The definition of A009003 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A009003.P10818060012148139440

`sqrt(A134422(n+1))`
-/

namespace A009003.P10818060012148139440
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A134422 (n + 1) : ℝ)

end

end A009003.P10818060012148139440

namespace A009003

/-- `sqrt(A134422(n+1))` -/
def P10818060012148139440.Spec : Prop :=
  ∀ n, P10818060012148139440.a n = (A009003 (n + 1) : ℝ)

end A009003

/-! ## A009003.P9985698889491308477

`A072592(n+1)/2`
-/

namespace A009003.P9985698889491308477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072592 (n + 1) : ℚ) / 2

end

end A009003.P9985698889491308477

namespace A009003

/-- `A072592(n+1)/2` -/
def P9985698889491308477.Spec : Prop :=
  ∀ n, P9985698889491308477.a n = (A009003 (n + 1) : ℚ)

theorem P9985698889491308477.correct : P9985698889491308477.Spec := by
  intro n
  simp only [A009003, Nat.add_sub_cancel, A009003.P9985698889491308477.a, A009003.P4153996351455582682.f1, A009003.P4153996351455582682.a, A004144, A004144.P17382156593889680767.a, A072592, A072592.P12540866148401735071.a, A081324, A081324.P12063373289040437378.f1, A081324.P12063373289040437378.f2, A081324.P12063373289040437378.a, A063014, A063014.P2435970929241132637.a, A000161, A000161.P12733227588245460575.f1, A000161.P12733227588245460575.f2, A000161.P12733227588245460575.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A009003

/-! ## A009003.P4267469169297924949

`sqrt(A292313(n+1)/3)`
-/

namespace A009003.P4267469169297924949
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A292313 (n + 1) : ℚ) / 3 : ℝ)

end

end A009003.P4267469169297924949

namespace A009003

/-- `sqrt(A292313(n+1)/3)` -/
def P4267469169297924949.Spec : Prop :=
  ∀ n, P4267469169297924949.a n = (A009003 (n + 1) : ℝ)

end A009003

/-! ## A009003.P10556153255494756232

`A088896(n+1)^(1/3)`
-/

namespace A009003.P10556153255494756232
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A088896 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A009003.P10556153255494756232

namespace A009003

/-- `A088896(n+1)^(1/3)` -/
def P10556153255494756232.Spec : Prop :=
  ∀ n, P10556153255494756232.a n = (A009003 (n + 1) : ℝ)

end A009003

/-! ## A009003.P9974284413922154438

`lt[0, A046080(n+1)]+1`
-/

namespace A009003.P9974284413922154438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A009003.P9974284413922154438

namespace A009003

/-- `lt[0, A046080(n+1)]+1` -/
def P9974284413922154438.Spec : Prop :=
  ∀ n, (P9974284413922154438.a n : ℤ) = A009003 (n + 1)

end A009003

/-! ## A009003.P8789088980174478935

`A278647(n)+a(n-1)` with `a(0)=5`
-/

namespace A009003.P8789088980174478935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A278647 n + a (n - 1)

end

end A009003.P8789088980174478935

namespace A009003

/-- `A278647(n)+a(n-1)` -/
def P8789088980174478935.Spec : Prop :=
  ∀ n, P8789088980174478935.a n = A009003 (n + 1)

end A009003

/-! ## A009003.P4153996351455582682

`comp[A004144(n+1)-1]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A009003

/-- `comp[A004144(n+1)-1]+1` -/
def P4153996351455582682.Spec : Prop :=
  ∀ n, (P4153996351455582682.a n : ℤ) = A009003 (n + 1)

theorem P4153996351455582682.correct : P4153996351455582682.Spec := by
  intro n
  simp only [A009003, Nat.add_sub_cancel]

end A009003

/-! ## A009003.P6706561469761987227

`∪[A020714(n), A341329(n+1)]`
-/

namespace A009003.P6706561469761987227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020714 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A009003.P6706561469761987227

namespace A009003

/-- `∪[A020714(n), A341329(n+1)]` -/
def P6706561469761987227.Spec : Prop :=
  ∀ n, (P6706561469761987227.a n : ℤ) = A009003 (n + 1)

end A009003

/-! ## A009003.P10539785121784696064

`A088896(n+1)/A134422(n+1)`
-/

namespace A009003.P10539785121784696064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088896 (n + 1) : ℚ) / (A134422 (n + 1) : ℚ)

end

end A009003.P10539785121784696064

namespace A009003

/-- `A088896(n+1)/A134422(n+1)` -/
def P10539785121784696064.Spec : Prop :=
  ∀ n, P10539785121784696064.a n = (A009003 (n + 1) : ℚ)

end A009003

/-! ## A009003.P4977935782516290365

`∪[A009177(n+1), A084645(n+1)]`
-/

namespace A009003.P4977935782516290365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A009003.P4977935782516290365

namespace A009003

/-- `∪[A009177(n+1), A084645(n+1)]` -/
def P4977935782516290365.Spec : Prop :=
  ∀ n, (P4977935782516290365.a n : ℤ) = A009003 (n + 1)

end A009003

/-! ## A009003.P14383389274551086830

`∪[A004431(n+1), A162592(n+1)]`
-/

namespace A009003.P14383389274551086830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A009003.P14383389274551086830

namespace A009003

/-- `∪[A004431(n+1), A162592(n+1)]` -/
def P14383389274551086830.Spec : Prop :=
  ∀ n, (P14383389274551086830.a n : ℤ) = A009003 (n + 1)

end A009003

/-! ## A009003.P410459697788068562

`∪[A009177(n+1), A209922(n+1)]`
-/

namespace A009003.P410459697788068562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A009003.P410459697788068562

namespace A009003

/-- `∪[A009177(n+1), A209922(n+1)]` -/
def P410459697788068562.Spec : Prop :=
  ∀ n, (P410459697788068562.a n : ℤ) = A009003 (n + 1)

end A009003

/-! ## A009003.P11762145138209076296

`∪[A004431(n+1), A341329(n+1)]`
-/

namespace A009003.P11762145138209076296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A009003.P11762145138209076296

namespace A009003

/-- `∪[A004431(n+1), A341329(n+1)]` -/
def P11762145138209076296.Spec : Prop :=
  ∀ n, (P11762145138209076296.a n : ℤ) = A009003 (n + 1)

end A009003

/-! ## A009003.P2821362402354064577

`∪[A025302(n+1), A341329(n+1)]`
-/

namespace A009003.P2821362402354064577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A009003.P2821362402354064577

namespace A009003

/-- `∪[A025302(n+1), A341329(n+1)]` -/
def P2821362402354064577.Spec : Prop :=
  ∀ n, (P2821362402354064577.a n : ℤ) = A009003 (n + 1)

end A009003

/-! ## A009003.P16086777195168744328

`∪[A072592(n+1), A309812(n+1)]`
-/

namespace A009003.P16086777195168744328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A009003.P16086777195168744328

namespace A009003

/-- `∪[A072592(n+1), A309812(n+1)]` -/
def P16086777195168744328.Spec : Prop :=
  ∀ n, (P16086777195168744328.a n : ℤ) = A009003 (n + 1)

end A009003

/-! ## A009003.P7391917646009850914

`∪[A067761(n+1), A341329(n+1)]`
-/

namespace A009003.P7391917646009850914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A009003.P7391917646009850914

namespace A009003

/-- `∪[A067761(n+1), A341329(n+1)]` -/
def P7391917646009850914.Spec : Prop :=
  ∀ n, (P7391917646009850914.a n : ℤ) = A009003 (n + 1)

end A009003

/-! ## A009003.P9424080671910716801

`∪[A070004(n+1), A341329(n+1)]`
-/

namespace A009003.P9424080671910716801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A009003.P9424080671910716801

namespace A009003

/-- `∪[A070004(n+1), A341329(n+1)]` -/
def P9424080671910716801.Spec : Prop :=
  ∀ n, (P9424080671910716801.a n : ℤ) = A009003 (n + 1)

end A009003

/-! ## A009003.P9435438099851348438

`∪[A072703(n+1), A341329(n+1)]`
-/

namespace A009003.P9435438099851348438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A009003.P9435438099851348438

namespace A009003

/-- `∪[A072703(n+1), A341329(n+1)]` -/
def P9435438099851348438.Spec : Prop :=
  ∀ n, (P9435438099851348438.a n : ℤ) = A009003 (n + 1)

end A009003

/-! ## A009003.P763400867026471005

`∪[A080193(n+1), A341329(n+1)]`
-/

namespace A009003.P763400867026471005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A009003.P763400867026471005

namespace A009003

/-- `∪[A080193(n+1), A341329(n+1)]` -/
def P763400867026471005.Spec : Prop :=
  ∀ n, (P763400867026471005.a n : ℤ) = A009003 (n + 1)

end A009003

/-! ## A009003.P14843593853687742207

`∪[A085128(n+1), A341329(n+1)]`
-/

namespace A009003.P14843593853687742207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A009003.P14843593853687742207

namespace A009003

/-- `∪[A085128(n+1), A341329(n+1)]` -/
def P14843593853687742207.Spec : Prop :=
  ∀ n, (P14843593853687742207.a n : ℤ) = A009003 (n + 1)

end A009003

/-!
# A009004: Ordered short legs of Pythagorean triangles.

The programs for A009004, there is no canonical definition to state claims against.
-/

/-! ## A009004.P15710846054010519485

`A242778(Δ[n²])/2`
-/

namespace A009004.P15710846054010519485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242778 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A009004.P15710846054010519485

/-! ## A009004.P975878682702321134

`ceil(A242778(2*n+1)/2)`
-/

namespace A009004.P975878682702321134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A242778 (2 * n + 1) : ℚ) / 2⌉

end

end A009004.P975878682702321134

/-! ## A009004.P1456133023248406394

`A001281(A242778(Δ[n²]))`
-/

namespace A009004.P1456133023248406394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A242778 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A009004.P1456133023248406394

/-!
# A009005: All natural numbers except 1, 2 and 4.

The programs for A009005, the canonical program `A009005.P5947941232108583855` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009005 has offset 1).

The definition of A009005 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A009005.P5947941232108583855

`ogf((3-x-x^2)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A009005

/-- `ogf((3-x-x^2)/(1-2x+x^2))` -/
def P5947941232108583855.Spec : Prop :=
  ∀ n, P5947941232108583855.a n = A009005 (n + 1)

theorem P5947941232108583855.correct : P5947941232108583855.Spec := by
  intro n
  simp only [A009005, Nat.add_sub_cancel]

end A009005

/-!
# A009006: Expansion of e.g.f.: 1 + tan(x).

The programs for A009006, there is no canonical definition to state claims against.
-/

/-! ## A009006.P1188444610298615850

`abs(A155585(n))`
-/

namespace A009006.P1188444610298615850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155585 n|

end

end A009006.P1188444610298615850

/-! ## A009006.P451209487009889745

`A108040(∑[n])`
-/

namespace A009006.P451209487009889745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A009006.P451209487009889745

/-! ## A009006.P5756316213138520592

`abs(A004174(∑[n]))`
-/

namespace A009006.P5756316213138520592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004174 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A009006.P5756316213138520592

/-! ## A009006.P2138331926191695839

`abs(A081733(∑[n]))`
-/

namespace A009006.P2138331926191695839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081733 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A009006.P2138331926191695839

/-! ## A009006.P4909050821028827114

`abs(A398998(∑[n]))`
-/

namespace A009006.P4909050821028827114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A398998 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A009006.P4909050821028827114

/-! ## A009006.P6161938565918629139

`A008280(∑[n]+n)`
-/

namespace A009006.P6161938565918629139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008280 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A009006.P6161938565918629139

/-! ## A009006.P7407966661582435655

`(n%2)^n*A000111(n)`
-/

namespace A009006.P7407966661582435655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n % 2) ^ n : ℕ) : ℤ) * A000111 n

end

end A009006.P7407966661582435655

/-! ## A009006.P10630903834443548522

`A009725(and((-1)^n, round(sqrt(n²+1))))`
-/

namespace A009006.P10630903834443548522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009725 (Int.land ((-1) ^ n) (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)))).toNat

end

end A009006.P10630903834443548522

/-! ## A009006.P11868019145054593158

`A008281(A316966(n))`
-/

namespace A009006.P11868019145054593158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008281 (A316966 n).toNat

end

end A009006.P11868019145054593158

/-! ## A009006.P16564822534089667733

`A229892(A128918(n+1))`
-/

namespace A009006.P16564822534089667733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229892 (A128918 (n + 1)).toNat

end

end A009006.P16564822534089667733

/-!
# A009007: Expansion of 1/cos(log(1+x)).

The programs for A009007, there is no canonical definition to state claims against.
-/

/-! ## A009007.P110360121137935353

`A306336(n)-A003708(n)`
-/

namespace A009007.P110360121137935353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306336 n - A003708 n

end

end A009007.P110360121137935353

/-!
# A009008: Expansion of e.g.f.: 1/cos(sin(x)) (even-indexed coefficients only).

The programs for A009008, there is no canonical definition to state claims against.
-/

/-! ## A009008.P4000584418996651523

`1-(n-2)*floor(A370642(3*n)/ϕ)`
-/

namespace A009008.P4000584418996651523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n : ℤ) - 2) * ⌊(A370642 (3 * n) : ℝ) / Real.goldenRatio⌋

end

end A009008.P4000584418996651523

/-!
# A009009: Expansion of e.g.f.: 1/cos(sinh(x)) (even-indexed coefficients only).

The programs for A009009, there is no canonical definition to state claims against.
-/

/-! ## A009009.P6955838376345033228

`A128813(n)+A010784(A362656(n))`
-/

namespace A009009.P6955838376345033228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128813 n + A010784 (A362656 n).toNat

end

end A009009.P6955838376345033228

/-!
# A009010: Expansion of e.g.f.: 1/cos(tan(x)) (even-indexed coefficients only).

The programs for A009010, there is no canonical definition to state claims against.
-/

/-! ## A009010.P6609718155074221568

`A000265(A000111(n)*A013527(n))`
-/

namespace A009010.P6609718155074221568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000111 n * A013527 n).toNat

end

end A009010.P6609718155074221568

/-!
# A009011: Expansion of e.g.f.: 1/cos(tanh(x)) (even-indexed coefficients only).

The programs for A009011, there is no canonical definition to state claims against.
-/

/-! ## A009011.P7903223912586878764

`A174427(∑[A282799(n)])`
-/

namespace A009011.P7903223912586878764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282799 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174427 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A009011.P7903223912586878764

/-!
# A009013: Expansion of E.g.f.: 1/(cosh(x)*cos(x)) (only powers that are multiples of 4).

The programs for A009013, there is no canonical definition to state claims against.
-/

/-! ## A009013.P2490238733483957841

`A000302(n)*A178964(4*n)`
-/

namespace A009013.P2490238733483957841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n * A178964 (4 * n)

end

end A009013.P2490238733483957841

/-!
# A009014: Expansion of E.g.f.: (1 + x)/(1 + x + x^2/2).

The programs for A009014, there is no canonical definition to state claims against.
-/

/-! ## A009014.P6076086006346656627

`1/2^n*A009769(n)`
-/

namespace A009014.P6076086006346656627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (2 ^ n : ℚ) * (A009769 n : ℚ)

end

end A009014.P6076086006346656627

/-! ## A009014.P17632797700974817136

`A046978(A016789(n)-1)*A090932(n)`
-/

namespace A009014.P17632797700974817136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 (A016789 n - 1).toNat * A090932 n

end

end A009014.P17632797700974817136

/-! ## A009014.P10626371028939758173

`A009769(n)/A000079(n)`
-/

namespace A009014.P10626371028939758173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009769 n : ℚ) / (A000079 n : ℚ)

end

end A009014.P10626371028939758173

/-! ## A009014.P10268424165328239959

`A009769(n)/Δ[A000051(n)]`
-/

namespace A009014.P10268424165328239959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009769 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A009014.P10268424165328239959

/-! ## A009014.P564040033981478924

`A009769(n)/record[A130321(n)]`
-/

namespace A009014.P564040033981478924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009769 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A009014.P564040033981478924

/-! ## A009014.P16802451254216866942

`A009769(n)/A016116(2*n)`
-/

namespace A009014.P16802451254216866942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009769 n : ℚ) / (A016116 (2 * n) : ℚ)

end

end A009014.P16802451254216866942

/-! ## A009014.P4974074717136171683

`A009769(n)/A130321(A000217(n))`
-/

namespace A009014.P4974074717136171683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009769 n : ℚ) / (A130321 (A000217 n).toNat : ℚ)

end

end A009014.P4974074717136171683

/-! ## A009014.P16388688466162104894

`A009775(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A009014.P16388688466162104894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A009775 n - (n : ℤ) * a (n - 1)

end

end A009014.P16388688466162104894

/-!
# A009015: Expansion of e.g.f.: cos(x*cos(x)) (even powers only).

The programs for A009015, there is no canonical definition to state claims against.
-/

/-! ## A009015.P11562532948929422493

`(-1)^n*A003727(2*n)`
-/

namespace A009015.P11562532948929422493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A003727 (2 * n)

end

end A009015.P11562532948929422493

/-! ## A009015.P18062856373314904407

`A003727(2*n)*A033999(n)`
-/

namespace A009015.P18062856373314904407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003727 (2 * n) * A033999 n

end

end A009015.P18062856373314904407

/-! ## A009015.P14198364142963835218

`A003727(A004277(n))/A033999(n)`
-/

namespace A009015.P14198364142963835218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003727 (A004277 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A009015.P14198364142963835218

/-! ## A009015.P3882410728929470689

`A003727(A005843(n))/A033999(n)`
-/

namespace A009015.P3882410728929470689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003727 (A005843 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A009015.P3882410728929470689

/-! ## A009015.P17956388702633731208

`A003727(2*n)*A008836(A000079(n))`
-/

namespace A009015.P17956388702633731208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003727 (2 * n) * A008836 (A000079 n).toNat

end

end A009015.P17956388702633731208

/-!
# A009016: Expansion of E.g.f.: cos(cosh(x)*x) (even powers only).

The programs for A009016, there is no canonical definition to state claims against.
-/

/-! ## A009016.P14848913040378059643

`(-1)^n*A009189(2*n)`
-/

namespace A009016.P14848913040378059643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A009189 (2 * n)

end

end A009016.P14848913040378059643

/-! ## A009016.P2505081981014442979

`A009189(2*n)*A033999(n)`
-/

namespace A009016.P2505081981014442979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009189 (2 * n) * A033999 n

end

end A009016.P2505081981014442979

/-! ## A009016.P12855088939822619625

`A009189(A004277(n))/A033999(n)`
-/

namespace A009016.P12855088939822619625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009189 (A004277 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A009016.P12855088939822619625

/-! ## A009016.P17506875061826744354

`A009189(A005843(n))/A033999(n)`
-/

namespace A009016.P17506875061826744354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009189 (A005843 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A009016.P17506875061826744354

/-! ## A009016.P7022007940708678831

`A009189(2*n)*A257075(A255411(n))`
-/

namespace A009016.P7022007940708678831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009189 (2 * n) * A257075 (A255411 n).toNat

end

end A009016.P7022007940708678831

/-!
# A009018: Expansion of e.g.f.: cos(log(1+log(1+x))).

The programs for A009018, there is no canonical definition to state claims against.
-/

/-! ## A009018.P634655728878142377

`(A238617(2^n)-and(-2, 2^n))*Δ[A039993(n+1)]`
-/

namespace A009018.P634655728878142377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A238617 (2 ^ n) - Int.land (-2) (2 ^ n : ℤ)) * (f1 (n + 1) - f1 n)

end

end A009018.P634655728878142377

/-! ## A009018.P9732127615804152387

`(A238617(2^n)-and(-2, 2^n))*Δ[A039997(n+1)]`
-/

namespace A009018.P9732127615804152387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A238617 (2 ^ n) - Int.land (-2) (2 ^ n : ℤ)) * (f1 (n + 1) - f1 n)

end

end A009018.P9732127615804152387

/-!
# A009023: Long legs of Pythagorean triangles.

The programs for A009023, there is no canonical definition to state claims against.
-/

/-! ## A009023.P596393138238336598

`lt[0, A056137(n+1)]+1`
-/

namespace A009023.P596393138238336598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056137 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A009023.P596393138238336598

/-! ## A009023.P14562913393892680569

`record[A009012(n+1)%A009012(n+3)]`
-/

namespace A009023.P14562913393892680569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009012 (n + 1)) (A009012 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009023.P14562913393892680569

/-! ## A009023.P12261908871764085536

`lt[1, A227481(n)]`
-/

namespace A009023.P12261908871764085536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227481 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A009023.P12261908871764085536

/-! ## A009023.P11774923018756756695

`eq[1, A054977(A227481(n)-1)]`
-/

namespace A009023.P11774923018756756695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A227481 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A009023.P11774923018756756695

/-! ## A009023.P3504874368288901573

`eq[1, A057427(A227481(n)-1)]`
-/

namespace A009023.P3504874368288901573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A227481 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A009023.P3504874368288901573

/-! ## A009023.P6323658396350749107

`eq[1, A158388(A227481(n)-1)]`
-/

namespace A009023.P6323658396350749107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (A227481 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A009023.P6323658396350749107

/-! ## A009023.P17328560307942540778

`eq[1, A168185(A227481(n)-1)]`
-/

namespace A009023.P17328560307942540778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168185 (A227481 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A009023.P17328560307942540778

/-! ## A009023.P17618136530813056562

`eq[1, A178334(A227481(n)-1)]`
-/

namespace A009023.P17618136530813056562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A227481 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A009023.P17618136530813056562

/-! ## A009023.P1627994589274199445

`eq[1, A250480(2*A227481(n))]`
-/

namespace A009023.P1627994589274199445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250480 (2 * A227481 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A009023.P1627994589274199445

/-! ## A009023.P8117532350620606453

`eq[1, A072650(a(A227481(n)))]` with `a(0)=2, a(1)=7`
-/

namespace A009023.P8117532350620606453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 7] fun n f2 =>
  A072650 (f2 (A227481 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A009023.P8117532350620606453

/-! ## A009023.P12521777073954025097

`eq[1, A227481(a(A227481(n)))]` with `a(0)=2, a(1)=56`
-/

namespace A009023.P12521777073954025097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 56] fun n f2 =>
  A227481 (f2 (A227481 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A009023.P12521777073954025097

/-! ## A009023.P342153193224251559

`eq[1, A014963(2*A083776(A227481(n)))]`
-/

namespace A009023.P342153193224251559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * A083776 (A227481 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A009023.P342153193224251559

/-! ## A009023.P14916702772687886473

`eq[1, A014963(2*A111166(A227481(n)))]`
-/

namespace A009023.P14916702772687886473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * A111166 (A227481 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A009023.P14916702772687886473

/-! ## A009023.P17311560808919012359

`eq[A000038(n), A094497(A227481(n)+1)]`
-/

namespace A009023.P17311560808919012359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094497 (A227481 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A009023.P17311560808919012359

/-! ## A009023.P17750529800451079536

`eq[A000038(n), A094497(2*A227481(n))]`
-/

namespace A009023.P17750529800451079536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094497 (2 * A227481 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A009023.P17750529800451079536

/-! ## A009023.P12979617298992518725

`eq[1, A204120(A227481(n)²²)]`
-/

namespace A009023.P12979617298992518725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204120 ((A227481 n ^ 2) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A009023.P12979617298992518725

/-! ## A009023.P17747679721393150328

`eq[1, A014963(A000051(A227481(n))+1)]`
-/

namespace A009023.P17747679721393150328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000051 (A227481 n).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A009023.P17747679721393150328

/-!
# A009024: Expansion of e.g.f.: x*cos(log(1+x)).

The programs for A009024, there is no canonical definition to state claims against.
-/

/-! ## A009024.P11482104825249328723

`n*A003703(abs(1-n))`
-/

namespace A009024.P11482104825249328723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A003703 |1 - (n : ℤ)|.toNat

end

end A009024.P11482104825249328723

/-! ## A009024.P3598909916311380565

`n*A357720(A347553(n+3)-1)`
-/

namespace A009024.P3598909916311380565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A357720 (A347553 (n + 3) - 1).toNat

end

end A009024.P3598909916311380565

/-!
# A009025: Expansion of e.g.f.: cos(log(1+x))/cos(x).

The programs for A009025, there is no canonical definition to state claims against.
-/

/-! ## A009025.P5442131872033563893

`or(A009174(n), A070635(A020699(n)))`
-/

namespace A009025.P5442131872033563893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A009174 n) (A070635 (A020699 n).toNat)

end

end A009025.P5442131872033563893

/-! ## A009025.P8837951136189867894

`or(A009174(n), A308978(A324665(n)))`
-/

namespace A009025.P8837951136189867894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A009174 n) (A308978 (A324665 n).toNat)

end

end A009025.P8837951136189867894

/-! ## A009025.P4589123109441273965

`A048105(A118987(n+4))+A009174(n)`
-/

namespace A009025.P4589123109441273965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (A118987 (n + 4)).toNat + A009174 n

end

end A009025.P4589123109441273965

/-!
# A009027: Expansion of cos(log(1+x))/exp(x).

The programs for A009027, there is no canonical definition to state claims against.
-/

/-! ## A009027.P8030577889113720759

`2*A009174(n)-A009280(n)`
-/

namespace A009027.P8030577889113720759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009174 n - A009280 n

end

end A009027.P8030577889113720759

/-! ## A009027.P15982239553003728048

`A009174(n)-A009618(n)`
-/

namespace A009027.P15982239553003728048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009174 n - A009618 n

end

end A009027.P15982239553003728048

/-! ## A009027.P7261685734402425202

`A009280(n)-2*A009618(n)`
-/

namespace A009027.P7261685734402425202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009280 n - 2 * A009618 n

end

end A009027.P7261685734402425202

/-! ## A009027.P18161154225124397567

`A009174(n)+A009618(n)*A153881(n+1)`
-/

namespace A009027.P18161154225124397567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009174 n + A009618 n * A153881 (n + 1)

end

end A009027.P18161154225124397567

/-!
# A009031: Expansion of cos(x*log(1+x)).

The programs for A009031, there is no canonical definition to state claims against.
-/

/-! ## A009031.P15078635915102587365

`A000122(A077410(n))-A009136(n)`
-/

namespace A009031.P15078635915102587365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A077410 n).toNat - A009136 n

end

end A009031.P15078635915102587365

/-! ## A009031.P14801449400768251733

`A009136(n)*A062157(A000142(n))`
-/

namespace A009031.P14801449400768251733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009136 n * A062157 (A000142 n).toNat

end

end A009031.P14801449400768251733

/-! ## A009031.P18043039628888450108

`A009136(n)*A062157(A055099(n))`
-/

namespace A009031.P18043039628888450108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009136 n * A062157 (A055099 n).toNat

end

end A009031.P18043039628888450108

/-! ## A009031.P17528342284389225955

`A009136(n)*A062157(A226435(n))`
-/

namespace A009031.P17528342284389225955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009136 n * A062157 (A226435 n).toNat

end

end A009031.P17528342284389225955

/-!
# A009035: Expansion of e.g.f.: cos(log(1+x)^2).

The programs for A009035, there is no canonical definition to state claims against.
-/

/-! ## A009035.P7171854876506976861

`A012274(A297880(n)+n)`
-/

namespace A009035.P7171854876506976861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012274 (A297880 n + (n : ℤ)).toNat

end

end A009035.P7171854876506976861

/-! ## A009035.P13722426879643687642

`A012274(lcm(n, A255591(n)))`
-/

namespace A009035.P13722426879643687642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012274 (Int.lcm (n : ℤ) (A255591 n))

end

end A009035.P13722426879643687642

/-! ## A009035.P7418421743151683089

`A012274(or(n, A297880(n)))`
-/

namespace A009035.P7418421743151683089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012274 (Int.lor (n : ℤ) (A297880 n)).toNat

end

end A009035.P7418421743151683089

/-! ## A009035.P9552109379911136259

`A012274(n)+A000007(A012258(n))`
-/

namespace A009035.P9552109379911136259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012274 n + A000007 (A012258 n).toNat

end

end A009035.P9552109379911136259

/-!
# A009037: Expansion of E.g.f. cos(sin(sin(x))), even powers only.

The programs for A009037, there is no canonical definition to state claims against.
-/

/-! ## A009037.P5679676624907858772

`xor(A193526(A193538(2*n+3)), A193540(n))`
-/

namespace A009037.P5679676624907858772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A193526 (A193538 (2 * n + 3)).toNat) (A193540 n)

end

end A009037.P5679676624907858772

/-!
# A009038: Expansion of E.g.f. cos(sin(sinh(x))), even powers only.

The programs for A009038, there is no canonical definition to state claims against.
-/

/-! ## A009038.P8033303117753925729

`A009219(2*n)*A033999(n)`
-/

namespace A009038.P8033303117753925729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009219 (2 * n) * A033999 n

end

end A009038.P8033303117753925729

/-! ## A009038.P867459226489257876

`A009219(A005843(n))/A033999(n)`
-/

namespace A009038.P867459226489257876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009219 (A005843 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A009038.P867459226489257876

/-!
# A009039: Expansion of E.g.f. cos(sin(tan(x))), even powers only.

The programs for A009039, there is no canonical definition to state claims against.
-/

/-! ## A009039.P5564051650146768177

`A009222(2*n)*A033999(n)`
-/

namespace A009039.P5564051650146768177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009222 (2 * n) * A033999 n

end

end A009039.P5564051650146768177

/-! ## A009039.P6655885337147831812

`A009222(2*n)*A209615(n²+1)`
-/

namespace A009039.P6655885337147831812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009222 (2 * n) * A209615 (n ^ 2 + 1)

end

end A009039.P6655885337147831812

/-!
# A009040: Expansion of E.g.f. cos(sin(tanh(x))), even powers only.

The programs for A009040, there is no canonical definition to state claims against.
-/

/-! ## A009040.P1236521718396883739

`A009221(2*n)*A009384(2*n+1)`
-/

namespace A009040.P1236521718396883739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009221 (2 * n) * A009384 (2 * n + 1)

end

end A009040.P1236521718396883739

/-!
# A009041: Ordered legs of Pythagorean triangles.

The programs for A009041, the canonical program `A009041.P2318627232109113920` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009041 has offset 1).

The definition of A009041 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A009041.P2318627232109113920

`∑[char[∑[A046079(n+1)]]]+2`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A009041

/-- `∑[char[∑[A046079(n+1)]]]+2` -/
def P2318627232109113920.Spec : Prop :=
  ∀ n, (P2318627232109113920.a n : ℤ) = A009041 (n + 1)

theorem P2318627232109113920.correct : P2318627232109113920.Spec := by
  intro n
  simp only [A009041, Nat.add_sub_cancel]

end A009041

/-! ## A009041.P10741591774512037805

`∑[char[∑[A115878(2*(n+1))]]]+2`
-/

namespace A009041.P10741591774512037805
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115878 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A009041.P10741591774512037805

namespace A009041

/-- `∑[char[∑[A115878(2*(n+1))]]]+2` -/
def P10741591774512037805.Spec : Prop :=
  ∀ n, (P10741591774512037805.a n : ℤ) = A009041 (n + 1)

end A009041

/-!
# A009042: Expansion of x*cos(sin(x)), odd terms only.

The programs for A009042, there is no canonical definition to state claims against.
-/

/-! ## A009042.P13620005192307732766

`(2*n+1)*A003709(n)`
-/

namespace A009042.P13620005192307732766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A003709 n

end

end A009042.P13620005192307732766

/-! ## A009042.P1448120290784308971

`A003709(n)*A005408(n)`
-/

namespace A009042.P1448120290784308971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003709 n * A005408 n

end

end A009042.P1448120290784308971

/-! ## A009042.P7373841420528031036

`abs(A003709(n))*A157142(n)`
-/

namespace A009042.P7373841420528031036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003709 n| * A157142 n

end

end A009042.P7373841420528031036

/-! ## A009042.P2841645184068555460

`(A005843(n)+1)*(-1)^n*A003724(2*n)`
-/

namespace A009042.P2841645184068555460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005843 n + 1) * ((-1) ^ n * A003724 (2 * n))

end

end A009042.P2841645184068555460

/-! ## A009042.P5690925637038956703

`A003709(n)*A008619(A008574(n))`
-/

namespace A009042.P5690925637038956703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003709 n * A008619 (A008574 n).toNat

end

end A009042.P5690925637038956703

/-!
# A009043: Expansion of cos(sin(x))/cos(x), even terms only.

The programs for A009043, there is no canonical definition to state claims against.
-/

/-! ## A009043.P12070926594142086709

`abs(A009226(2*n))`
-/

namespace A009043.P12070926594142086709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009226 (2 * n)|

end

end A009043.P12070926594142086709

/-! ## A009043.P13603187312887493348

`A009226(2*n)*A033999(n)`
-/

namespace A009043.P13603187312887493348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009226 (2 * n) * A033999 n

end

end A009043.P13603187312887493348

/-! ## A009043.P3926007179790227428

`gcd(A008683(8*n+4), A009226(2*n))`
-/

namespace A009043.P3926007179790227428
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (8 * n + 4)) (A009226 (2 * n))

end

end A009043.P3926007179790227428

/-!
# A009044: Expansion of cos(sin(x))/cosh(x), even terms only.

The programs for A009044, there is no canonical definition to state claims against.
-/

/-! ## A009044.P11683126356189836589

`(-1)^n*A009225(2*n)`
-/

namespace A009044.P11683126356189836589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A009225 (2 * n)

end

end A009044.P11683126356189836589

/-! ## A009044.P2075808746945059571

`A009225(2*n)*A033999(n)`
-/

namespace A009044.P2075808746945059571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009225 (2 * n) * A033999 n

end

end A009044.P2075808746945059571

/-!
# A009046: Expansion of cos(sin(x)*cos(x)), even terms only.

The programs for A009046, there is no canonical definition to state claims against.
-/

/-! ## A009046.P1667607928222297687

`A009229(2*n)*A033999(n)`
-/

namespace A009046.P1667607928222297687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009229 (2 * n) * A033999 n

end

end A009046.P1667607928222297687

/-! ## A009046.P14828081717211235593

`A009001(2*n)*A009229(2*n)`
-/

namespace A009046.P14828081717211235593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A009229 (2 * n)

end

end A009046.P14828081717211235593

/-! ## A009046.P8078926072897054879

`A009229(A004277(n))/A033999(n)`
-/

namespace A009046.P8078926072897054879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009229 (A004277 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A009046.P8078926072897054879

/-! ## A009046.P13871075348705212

`A009229(A005843(n))/A033999(n)`
-/

namespace A009046.P13871075348705212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009229 (A005843 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A009046.P13871075348705212

/-!
# A009047: Expansion of cos(sin(x)*cosh(x)), even terms only.

The programs for A009047, there is no canonical definition to state claims against.
-/

/-! ## A009047.P12851180074598842290

`A009228(2*n)*A033999(n)`
-/

namespace A009047.P12851180074598842290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009228 (2 * n) * A033999 n

end

end A009047.P12851180074598842290

/-! ## A009047.P1048282835930550079

`A009228(2*n)*A034947(n²+5)`
-/

namespace A009047.P1048282835930550079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009228 (2 * n) * A034947 (n ^ 2 + 5)

end

end A009047.P1048282835930550079

/-! ## A009047.P4982237730704712790

`A009228(A004277(n))/A033999(n)`
-/

namespace A009047.P4982237730704712790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009228 (A004277 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A009047.P4982237730704712790

/-! ## A009047.P5441905819025035318

`A009228(A005843(n))/A033999(n)`
-/

namespace A009047.P5441905819025035318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009228 (A005843 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A009047.P5441905819025035318

/-! ## A009047.P8648866724785660084

`A009228(A005408(n)-1)/A033999(n)`
-/

namespace A009047.P8648866724785660084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009228 (A005408 n - 1).toNat : ℚ) / (A033999 n : ℚ)

end

end A009047.P8648866724785660084

/-!
# A009049: Expansion of cos(sin(x)*log(1+x)).

The programs for A009049, there is no canonical definition to state claims against.
-/

/-! ## A009049.P12131288568596543087

`A012577(n*floor(n^(1/3))^n)`
-/

namespace A009049.P12131288568596543087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012577 ((n : ℤ) * ⌊(n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋ ^ n).toNat

end

end A009049.P12131288568596543087

/-! ## A009049.P2445690509578535168

`A012289(A004902(n+1))`
-/

namespace A009049.P2445690509578535168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012289 (A004902 (n + 1)).toNat

end

end A009049.P2445690509578535168

/-! ## A009049.P14101969345535975759

`A012289(A001222(5^n))`
-/

namespace A009049.P14101969345535975759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012289 (A001222 (5 ^ n)).toNat

end

end A009049.P14101969345535975759

/-! ## A009049.P16426158558391397389

`A012289(A297880(n)+n)`
-/

namespace A009049.P16426158558391397389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012289 (A297880 n + (n : ℤ)).toNat

end

end A009049.P16426158558391397389

/-!
# A009050: Expansion of e.g.f. cos(x*sin(x)) (even power only).

The programs for A009050, there is no canonical definition to state claims against.
-/

/-! ## A009050.P4494303018893383943

`A001813(n)-A048735(A084057(2*n))`
-/

namespace A009050.P4494303018893383943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001813 n - A048735 (A084057 (2 * n)).toNat

end

end A009050.P4494303018893383943

/-!
# A009051: Expansion of e.g.f. cos(sin(x)/cosh(x)), even powers only.

The programs for A009051, there is no canonical definition to state claims against.
-/

/-! ## A009051.P10798925114775808619

`A009234(2*n)*A033999(n)`
-/

namespace A009051.P10798925114775808619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009234 (2 * n) * A033999 n

end

end A009051.P10798925114775808619

/-! ## A009051.P9974207814510169145

`A009234(A004277(n))/A033999(n)`
-/

namespace A009051.P9974207814510169145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009234 (A004277 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A009051.P9974207814510169145

/-! ## A009051.P16556109050086244271

`A009234(A005843(n))/A033999(n)`
-/

namespace A009051.P16556109050086244271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009234 (A005843 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A009051.P16556109050086244271

/-!
# A009052: Expansion of e.g.f. cos(sin(x)^2), even terms only.

The programs for A009052, there is no canonical definition to state claims against.
-/

/-! ## A009052.P9913269644365630315

`A009050(n)*A048766(A009043(n))/A309217(A060058(n))`
-/

namespace A009052.P9913269644365630315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009050 n * A048766 (A009043 n).toNat : ℚ) / (A309217 (A060058 n).toNat : ℚ)

end

end A009052.P9913269644365630315

/-!
# A009054: Expansion of e.g.f. cos(sinh(sin(x))), even terms only.

The programs for A009054, there is no canonical definition to state claims against.
-/

/-! ## A009054.P18400438127488794840

`A009202(2*n)*A033999(n)`
-/

namespace A009054.P18400438127488794840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009202 (2 * n) * A033999 n

end

end A009054.P18400438127488794840

/-! ## A009054.P1314680635742740697

`A009202(2*n)*A130595(∑[n])`
-/

namespace A009054.P1314680635742740697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009202 (2 * n) * A130595 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A009054.P1314680635742740697

/-! ## A009054.P6685069298746747073

`A009202(A005843(n))/A033999(n)`
-/

namespace A009054.P6685069298746747073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009202 (A005843 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A009054.P6685069298746747073

/-!
# A009055: Expansion of e.g.f. cos(sinh(tan(x))), even terms only.

The programs for A009055, there is no canonical definition to state claims against.
-/

/-! ## A009055.P9807923253251241519

`A009204(2*n)*A033999(n)`
-/

namespace A009055.P9807923253251241519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009204 (2 * n) * A033999 n

end

end A009055.P9807923253251241519

/-! ## A009055.P8615850619621006516

`A009204(2*n)*A056594(2*n)`
-/

namespace A009055.P8615850619621006516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009204 (2 * n) * A056594 (2 * n)

end

end A009055.P8615850619621006516

/-! ## A009055.P5833933741292197836

`A009204(2*n)*A009531(2*n+1)`
-/

namespace A009055.P5833933741292197836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009204 (2 * n) * A009531 (2 * n + 1)

end

end A009055.P5833933741292197836

/-! ## A009055.P2888295994190516394

`A009204(A004277(n))/A033999(n)`
-/

namespace A009055.P2888295994190516394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009204 (A004277 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A009055.P2888295994190516394

/-! ## A009055.P16036480481344142864

`A009204(A005843(n))/A033999(n)`
-/

namespace A009055.P16036480481344142864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009204 (A005843 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A009055.P16036480481344142864

/-!
# A009056: Numbers >= 3.

The programs for A009056, the canonical program `A009056.P17290872681499510919` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009056 has offset 1).

The definition of A009056 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A009056.P17290872681499510919

`n+3`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A009056

/-- `n+3` -/
def P17290872681499510919.Spec : Prop :=
  ∀ n, (P17290872681499510919.a n : ℤ) = A009056 (n + 1)

theorem P17290872681499510919.correct : P17290872681499510919.Spec := by
  intro n
  simp only [A009056, Nat.add_sub_cancel]

end A009056

/-!
# A009057: Expansion of e.g.f. x*cos(sinh(x)) (odd powers only).

The programs for A009057, there is no canonical definition to state claims against.
-/

/-! ## A009057.P9804945484710306392

`Δ[-(n*(-1)^n)]*A002017(2*n)`
-/

namespace A009057.P9804945484710306392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * (-1) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A002017 (2 * n)

end

end A009057.P9804945484710306392

/-! ## A009057.P16308670951654746664

`A009206(2*n+1)*A033999(n)`
-/

namespace A009057.P16308670951654746664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009206 (2 * n + 1) * A033999 n

end

end A009057.P16308670951654746664

/-! ## A009057.P576004867914094055

`A009206(A005408(n))/A033999(n)`
-/

namespace A009057.P576004867914094055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009206 (A005408 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A009057.P576004867914094055

/-!
# A009058: Expansion of e.g.f. cos(sinh(x))/cos(x), even terms only.

The programs for A009058, there is no canonical definition to state claims against.
-/

/-! ## A009058.P5478087025300814966

`A009208(2*n)*A033999(n)`
-/

namespace A009058.P5478087025300814966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009208 (2 * n) * A033999 n

end

end A009058.P5478087025300814966

/-! ## A009058.P4720983068082718595

`A009208(2*n)/∑[A280560(n)]`
-/

namespace A009058.P4720983068082718595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009208 (2 * n) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A009058.P4720983068082718595

/-! ## A009058.P13916887544978660624

`A009208(A005843(n))/A033999(n)`
-/

namespace A009058.P13916887544978660624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009208 (A005843 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A009058.P13916887544978660624

/-!
# A009059: Expansion of e.g.f. cos(sinh(x))/exp(x).

The programs for A009059, there is no canonical definition to state claims against.
-/

/-! ## A009059.P15244873311740399726

`A009297(n)*A062157(A001075(n))`
-/

namespace A009059.P15244873311740399726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009297 n * A062157 (A001075 n).toNat

end

end A009059.P15244873311740399726

/-! ## A009059.P7051808291177913727

`A009297(n)*A062157(A117917(n))`
-/

namespace A009059.P7051808291177913727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009297 n * A062157 (A117917 n).toNat

end

end A009059.P7051808291177913727

/-! ## A009059.P13226075517119250990

`A008683(A000045(3*n+2))*A009297(n)`
-/

namespace A009059.P13226075517119250990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000045 (3 * n + 2)).toNat * A009297 n

end

end A009059.P13226075517119250990

/-!
# A009060: Expansion of e.g.f. cos(sinh(x)*cos(x)), even terms only.

The programs for A009060, there is no canonical definition to state claims against.
-/

/-! ## A009060.P4398439570451529653

`A009211(2*n)*A033999(n)`
-/

namespace A009060.P4398439570451529653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009211 (2 * n) * A033999 n

end

end A009060.P4398439570451529653

/-! ## A009060.P9297636252342777198

`A009211(2*n)*A009531(2*n+1)`
-/

namespace A009060.P9297636252342777198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009211 (2 * n) * A009531 (2 * n + 1)

end

end A009060.P9297636252342777198

/-! ## A009060.P7594550215032018787

`A009211(A004277(n))/A033999(n)`
-/

namespace A009060.P7594550215032018787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009211 (A004277 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A009060.P7594550215032018787

/-!
# A009062: Expansion of e.g.f.: cos(sinh(x)*log(1+x)).

The programs for A009062, there is no canonical definition to state claims against.
-/

/-! ## A009062.P4306561654485381534

`A012518(n)%p?[ceil(10^(n/6))]`
-/

namespace A009062.P4306561654485381534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(10 : ℝ) ^ ((n : ℚ) / 6 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A012518 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A009062.P4306561654485381534

/-! ## A009062.P14648589321655600416

`A012308(A032551(n+1))`
-/

namespace A009062.P14648589321655600416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012308 (A032551 (n + 1)).toNat

end

end A009062.P14648589321655600416

/-! ## A009062.P12978920819501742732

`A012518(A001222(5^n))`
-/

namespace A009062.P12978920819501742732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012518 (A001222 (5 ^ n)).toNat

end

end A009062.P12978920819501742732

/-! ## A009062.P13374022659021153290

`A012308(n*A290546(n))`
-/

namespace A009062.P13374022659021153290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012308 ((n : ℤ) * A290546 n).toNat

end

end A009062.P13374022659021153290

/-!
# A009065: Expansion of e.g.f. cos(tan(log(1+x))).

The programs for A009065, there is no canonical definition to state claims against.
-/

/-! ## A009065.P3078516591777253502

`A012779(n)*A097005(A016098(n))`
-/

namespace A009065.P3078516591777253502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012779 n * A097005 (A016098 n).toNat

end

end A009065.P3078516591777253502

/-!
# A009066: Expansion of e.g.f. cos(tan(sin(x))), even terms only.

The programs for A009066, there is no canonical definition to state claims against.
-/

/-! ## A009066.P6531575197495168108

`(-1)^n*A009259(2*n)`
-/

namespace A009066.P6531575197495168108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A009259 (2 * n)

end

end A009066.P6531575197495168108

/-! ## A009066.P11336279930833944113

`A009259(2*n)*A009531(2*n+1)`
-/

namespace A009066.P11336279930833944113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009259 (2 * n) * A009531 (2 * n + 1)

end

end A009066.P11336279930833944113

/-!
# A009067: Expansion of e.g.f. cos(tan(sinh(x))), even terms only.

The programs for A009067, there is no canonical definition to state claims against.
-/

/-! ## A009067.P2633005200214526481

`A009258(2*n)*A033999(n)`
-/

namespace A009067.P2633005200214526481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009258 (2 * n) * A033999 n

end

end A009067.P2633005200214526481

/-! ## A009067.P11366516238832501396

`ratio[A057077(n)]*A009258(2*n)`
-/

namespace A009067.P11366516238832501396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A009258 (2 * n) : ℚ)

end

end A009067.P11366516238832501396

/-! ## A009067.P12043657462362671745

`A009258(2*n)*A057077(2*n)`
-/

namespace A009067.P12043657462362671745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009258 (2 * n) * A057077 (2 * n)

end

end A009067.P12043657462362671745

/-! ## A009067.P3875844990968799003

`A009258(A005843(n))/A033999(n)`
-/

namespace A009067.P3875844990968799003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009258 (A005843 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A009067.P3875844990968799003

/-! ## A009067.P8308071014381984636

`A009258(A005843(n))/ratio[A057077(n)]`
-/

namespace A009067.P8308071014381984636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009258 (A005843 n).toNat : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A009067.P8308071014381984636

/-!
# A009068: Expansion of e.g.f. cos(tan(tan(x))), even terms only.

The programs for A009068, there is no canonical definition to state claims against.
-/

/-! ## A009068.P15074056211759917315

`A009261(2*n)*A033999(n)`
-/

namespace A009068.P15074056211759917315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009261 (2 * n) * A033999 n

end

end A009068.P15074056211759917315

/-!
# A009069: Expansion of e.g.f. cos(tan(tanh(x))), even terms only.

The programs for A009069, there is no canonical definition to state claims against.
-/

/-! ## A009069.P1850804252962993668

`A009260(2*n)*A033999(n)`
-/

namespace A009069.P1850804252962993668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009260 (2 * n) * A033999 n

end

end A009069.P1850804252962993668

/-! ## A009069.P4993550727343079669

`A009260(2*n)*A057077(2*n)`
-/

namespace A009069.P4993550727343079669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009260 (2 * n) * A057077 (2 * n)

end

end A009069.P4993550727343079669

/-! ## A009069.P17062763828284087626

`A009260(A004277(n))/A033999(n)`
-/

namespace A009069.P17062763828284087626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009260 (A004277 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A009069.P17062763828284087626

/-! ## A009069.P1264084373348320477

`A009260(A005843(n))/A033999(n)`
-/

namespace A009069.P1264084373348320477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009260 (A005843 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A009069.P1264084373348320477

/-!
# A009070: Ordered sides of Pythagorean triangles.

The programs for A009070, the canonical program `A009070.P3709477787699467726` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009070 has offset 1).

The definition of A009070 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A009070.P3709477787699467726

`∑[char[∑[A046081(n+1)]]]+2`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A009070

/-- `∑[char[∑[A046081(n+1)]]]+2` -/
def P3709477787699467726.Spec : Prop :=
  ∀ n, (P3709477787699467726.a n : ℤ) = A009070 (n + 1)

theorem P3709477787699467726.correct : P3709477787699467726.Spec := by
  intro n
  simp only [A009070, Nat.add_sub_cancel]

end A009070

/-! ## A009070.P18359973357651591999

`ceil(log(7*A217131(n+1)))`
-/

namespace A009070.P18359973357651591999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (7 * A217131 (n + 1) : ℝ)⌉

end

end A009070.P18359973357651591999

namespace A009070

/-- `ceil(log(7*A217131(n+1)))` -/
def P18359973357651591999.Spec : Prop :=
  ∀ n, P18359973357651591999.a n = A009070 (n + 1)

end A009070

/-! ## A009070.P16158527980012297885

`A130233(record[A382460(n)])+1`
-/

namespace A009070.P16158527980012297885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382460 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130233 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A009070.P16158527980012297885

namespace A009070

/-- `A130233(record[A382460(n)])+1` -/
def P16158527980012297885.Spec : Prop :=
  ∀ n, P16158527980012297885.a n = A009070 (n + 1)

end A009070

/-! ## A009070.P16440868684190791501

`A094192(p?[A072941(A067535(n+1))])`
-/

namespace A009070.P16440868684190791501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072941 (A067535 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094192 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A009070.P16440868684190791501

namespace A009070

/-- `A094192(p?[A072941(A067535(n+1))])` -/
def P16440868684190791501.Spec : Prop :=
  ∀ n, P16440868684190791501.a n = A009070 (n + 1)

end A009070

/-! ## A009070.P9691653533115928241

`A070939(A233862(n+1)+A084790(n+1))`
-/

namespace A009070.P9691653533115928241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A233862 (n + 1) + A084790 (n + 1)).toNat

end

end A009070.P9691653533115928241

namespace A009070

/-- `A070939(A233862(n+1)+A084790(n+1))` -/
def P9691653533115928241.Spec : Prop :=
  ∀ n, P9691653533115928241.a n = A009070 (n + 1)

end A009070

/-!
# A009071: Expansion of e.g.f. cos(tan(x))*x, odd terms only.

The programs for A009071, there is no canonical definition to state claims against.
-/

/-! ## A009071.P1043273235968647111

`(2*n+1)*A003710(n)`
-/

namespace A009071.P1043273235968647111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A003710 n

end

end A009071.P1043273235968647111

/-! ## A009071.P14139932608154695065

`A003710(n)*A005408(n)`
-/

namespace A009071.P14139932608154695065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003710 n * A005408 n

end

end A009071.P14139932608154695065

/-! ## A009071.P10226328353190793902

`A003710(n)*A008619(A008574(n))`
-/

namespace A009071.P10226328353190793902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003710 n * A008619 (A008574 n).toNat

end

end A009071.P10226328353190793902

/-! ## A009071.P12108439230424745983

`A003710(n)*A054582(A000096(n))`
-/

namespace A009071.P12108439230424745983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003710 n * A054582 (A000096 n).toNat

end

end A009071.P12108439230424745983

/-!
# A009072: Expansion of e.g.f. cos(tan(x))/cos(x), even-indexed terms only.

The programs for A009072, there is no canonical definition to state claims against.
-/

/-! ## A009072.P9656093997621596705

`(-1)^n*A009265(2*n)`
-/

namespace A009072.P9656093997621596705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A009265 (2 * n)

end

end A009072.P9656093997621596705

/-! ## A009072.P4509754587007263897

`A009548(n)+A009505(n)`
-/

namespace A009072.P4509754587007263897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009548 n + A009505 n

end

end A009072.P4509754587007263897

/-! ## A009072.P31337175924585842

`A009505(n)+2*A024301(n)`
-/

namespace A009072.P31337175924585842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009505 n + 2 * A024301 n

end

end A009072.P31337175924585842

/-! ## A009072.P17273840076776386548

`A009265(2*n)*A033999(n)`
-/

namespace A009072.P17273840076776386548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009265 (2 * n) * A033999 n

end

end A009072.P17273840076776386548

/-! ## A009072.P14944703079427220816

`A009505(n)+A024301(n)+A024301(A292579(n))`
-/

namespace A009072.P14944703079427220816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009505 n + (A024301 n + A024301 (A292579 n).toNat)

end

end A009072.P14944703079427220816

/-!
# A009073: Expansion of e.g.f. cos(tan(x))/cosh(x), even terms only.

The programs for A009073, there is no canonical definition to state claims against.
-/

/-! ## A009073.P11221433075199226377

`(-1)^n*A009264(2*n)`
-/

namespace A009073.P11221433075199226377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A009264 (2 * n)

end

end A009073.P11221433075199226377

/-! ## A009073.P15190254755212022284

`A009264(2*n)*A033999(n)`
-/

namespace A009073.P15190254755212022284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009264 (2 * n) * A033999 n

end

end A009073.P15190254755212022284

/-! ## A009073.P8086282121627640381

`A009264(A005843(n))/(-1)^n`
-/

namespace A009073.P8086282121627640381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009264 (A005843 n).toNat : ℚ) / ((-1) ^ n : ℚ)

end

end A009073.P8086282121627640381

/-!
# A009075: Expansion of e.g.f. cos(tan(x)*cosh(x)), even terms only.

The programs for A009075, there is no canonical definition to state claims against.
-/

/-! ## A009075.P268570299318376201

`A009267(2*n)*A033999(n)`
-/

namespace A009075.P268570299318376201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009267 (2 * n) * A033999 n

end

end A009075.P268570299318376201

/-! ## A009075.P2413148401639792636

`A009001(2*n)*A009267(2*n)`
-/

namespace A009075.P2413148401639792636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A009267 (2 * n)

end

end A009075.P2413148401639792636

/-!
# A009076: Expansion of e.g.f. cos(tan(x)*exp(x)).

The programs for A009076, there is no canonical definition to state claims against.
-/

/-! ## A009076.P14340441084400767877

`A320656(n+1)-A220658(A115981(2*n+1))`
-/

namespace A009076.P14340441084400767877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320656 (n + 1) - A220658 (A115981 (2 * n + 1)).toNat

end

end A009076.P14340441084400767877

/-! ## A009076.P18195650519592464311

`A012714(A342074(n)+n)`
-/

namespace A009076.P18195650519592464311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012714 (A342074 n + (n : ℤ)).toNat

end

end A009076.P18195650519592464311

/-!
# A009077: Expansion of e.g.f. cos(tan(x)*log(1+x)).

The programs for A009077, there is no canonical definition to state claims against.
-/

/-! ## A009077.P10460172847667633124

`A012360(A004869(n+1))`
-/

namespace A009077.P10460172847667633124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012360 (A004869 (n + 1)).toNat

end

end A009077.P10460172847667633124

/-! ## A009077.P14777631803972466836

`A012360(A004880(n+1))`
-/

namespace A009077.P14777631803972466836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012360 (A004880 (n + 1)).toNat

end

end A009077.P14777631803972466836

/-! ## A009077.P14753451629465552187

`A012360(A004891(n+1))`
-/

namespace A009077.P14753451629465552187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012360 (A004891 (n + 1)).toNat

end

end A009077.P14753451629465552187

/-! ## A009077.P12032320252484306586

`A012360(A032551(n+1))`
-/

namespace A009077.P12032320252484306586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012360 (A032551 (n + 1)).toNat

end

end A009077.P12032320252484306586

/-!
# A009078: Expansion of e.g.f. cos(tan(x)*sin(x)) (even powers only).

The programs for A009078, there is no canonical definition to state claims against.
-/

/-! ## A009078.P12116931250144829890

`A001057(A054878(n)*A151374(n))`
-/

namespace A009078.P12116931250144829890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A054878 n * A151374 n).toNat

end

end A009078.P12116931250144829890

/-!
# A009080: Expansion of e.g.f. cos(x*tan(x)), even terms only.

The programs for A009080, there is no canonical definition to state claims against.
-/

/-! ## A009080.P16694344715811071856

`A000005(A011545(n))-A009233(n)`
-/

namespace A009080.P16694344715811071856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A011545 n).toNat - A009233 n

end

end A009080.P16694344715811071856

/-!
# A009081: E.g.f. is cos(tan(x)/cos(x)), coefficients of even powers of x.

The programs for A009081, there is no canonical definition to state claims against.
-/

/-! ## A009081.P10162507689139263525

`A009275(2*n)*A033999(n)`
-/

namespace A009081.P10162507689139263525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009275 (2 * n) * A033999 n

end

end A009081.P10162507689139263525

/-! ## A009081.P7668584671004648352

`A009275(2*n)*A009531(2*n+1)`
-/

namespace A009081.P7668584671004648352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009275 (2 * n) * A009531 (2 * n + 1)

end

end A009081.P7668584671004648352

/-! ## A009081.P12936753124402608106

`A009275(A005843(n))/A033999(n)`
-/

namespace A009081.P12936753124402608106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009275 (A005843 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A009081.P12936753124402608106

/-!
# A009082: Expansion of e.g.f. cos(tan(x)/cosh(x)), even terms only.

The programs for A009082, there is no canonical definition to state claims against.
-/

/-! ## A009082.P561080330112036904

`A009274(2*n)*A033999(n)`
-/

namespace A009082.P561080330112036904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009274 (2 * n) * A033999 n

end

end A009082.P561080330112036904

/-! ## A009082.P14828823455610444524

`A009274(A005843(n))/A033999(n)`
-/

namespace A009082.P14828823455610444524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009274 (A005843 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A009082.P14828823455610444524

/-! ## A009082.P12976534118290281687

`A009274(A005408(n)-1)/A033999(n)`
-/

namespace A009082.P12976534118290281687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009274 (A005408 n - 1).toNat : ℚ) / (A033999 n : ℚ)

end

end A009082.P12976534118290281687

/-!
# A009085: Expansion of e.g.f. cos(tanh(sin(x))), even powers only.

The programs for A009085, there is no canonical definition to state claims against.
-/

/-! ## A009085.P7663901935239643271

`(-1)^n*A009239(2*n)`
-/

namespace A009085.P7663901935239643271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A009239 (2 * n)

end

end A009085.P7663901935239643271

/-! ## A009085.P10883037905962300934

`A009239(2*n)*A033999(n)`
-/

namespace A009085.P10883037905962300934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009239 (2 * n) * A033999 n

end

end A009085.P10883037905962300934

/-! ## A009085.P159118952243045736

`A009239(2*n)*A087960(n²)`
-/

namespace A009085.P159118952243045736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009239 (2 * n) * A087960 (n ^ 2)

end

end A009085.P159118952243045736

/-! ## A009085.P5026183090838179420

`A009239(A004277(n))/A033999(n)`
-/

namespace A009085.P5026183090838179420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009239 (A004277 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A009085.P5026183090838179420

/-! ## A009085.P3645252978206849254

`A009239(A005843(n))/A033999(n)`
-/

namespace A009085.P3645252978206849254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009239 (A005843 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A009085.P3645252978206849254

/-!
# A009086: Expansion of e.g.f. cos(tanh(tan(x))), even powers only.

The programs for A009086, there is no canonical definition to state claims against.
-/

/-! ## A009086.P10199333097728392458

`(-1)^n*A009241(2*n)`
-/

namespace A009086.P10199333097728392458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A009241 (2 * n)

end

end A009086.P10199333097728392458

/-! ## A009086.P6846745256422730397

`A009241(2*n)*A033999(n)`
-/

namespace A009086.P6846745256422730397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009241 (2 * n) * A033999 n

end

end A009086.P6846745256422730397

/-! ## A009086.P3885551508089784150

`A009241(2*n)*A062157(n+1)`
-/

namespace A009086.P3885551508089784150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009241 (2 * n) * A062157 (n + 1)

end

end A009086.P3885551508089784150

/-! ## A009086.P2684715708113376939

`A009241(2*n)*A056594(2*n)`
-/

namespace A009086.P2684715708113376939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009241 (2 * n) * A056594 (2 * n)

end

end A009086.P2684715708113376939

/-! ## A009086.P10052096448091374649

`xor(n-A004442(n+1), A009241(2*n))`
-/

namespace A009086.P10052096448091374649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - A004442 (n + 1)) (A009241 (2 * n))

end

end A009086.P10052096448091374649

/-!
# A009087: Numbers whose number of divisors is prime (i.e., numbers of the form p^(q-1) for primes p,q).

The programs for A009087, the canonical program `A009087.P18076322764317860629` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009087 has offset 1).

The definition of A009087 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9671 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A009087.P13608385174365461707

`∪[A000430(n+1), A051676(n+1)²]`
-/

namespace A009087.P13608385174365461707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051676 (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A009087.P13608385174365461707

namespace A009087

/-- `∪[A000430(n+1), A051676(n+1)²]` -/
def P13608385174365461707.Spec : Prop :=
  ∀ n, (P13608385174365461707.a n : ℤ) = A009087 (n + 1)

end A009087

/-! ## A009087.P11830990365394021326

`filter[A059046(n+1), A355937(#)]`
-/

namespace A009087.P11830990365394021326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A009087.P11830990365394021326

namespace A009087

/-- `filter[A059046(n+1), A355937(#)]` -/
def P11830990365394021326.Spec : Prop :=
  ∀ n, P11830990365394021326.a n = A009087 (n + 1)

end A009087

/-! ## A009087.P3511435812570877611

`filter[A246655(n+1), A355937(#)]`
-/

namespace A009087.P3511435812570877611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A009087.P3511435812570877611

namespace A009087

/-- `filter[A246655(n+1), A355937(#)]` -/
def P3511435812570877611.Spec : Prop :=
  ∀ n, P3511435812570877611.a n = A009087 (n + 1)

end A009087

/-! ## A009087.P4776396080533399625

`filter[A385030(n+1), A355937(#)]`
-/

namespace A009087.P4776396080533399625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A009087.P4776396080533399625

namespace A009087

/-- `filter[A385030(n+1), A355937(#)]` -/
def P4776396080533399625.Spec : Prop :=
  ∀ n, P4776396080533399625.a n = A009087 (n + 1)

end A009087

/-! ## A009087.P3054844080736748359

`filter[A390250(n+1), A355937(#)]`
-/

namespace A009087.P3054844080736748359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A009087.P3054844080736748359

namespace A009087

/-- `filter[A390250(n+1), A355937(#)]` -/
def P3054844080736748359.Spec : Prop :=
  ∀ n, P3054844080736748359.a n = A009087 (n + 1)

end A009087

/-! ## A009087.P1867637183732367447

`filter[A000961(n+2), A355937(#)]`
-/

namespace A009087.P1867637183732367447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A009087.P1867637183732367447

namespace A009087

/-- `filter[A000961(n+2), A355937(#)]` -/
def P1867637183732367447.Spec : Prop :=
  ∀ n, P1867637183732367447.a n = A009087 (n + 1)

end A009087

/-! ## A009087.P11824289300015962452

`filter[A072303(n+2), A355937(#)]`
-/

namespace A009087.P11824289300015962452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072303 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A009087.P11824289300015962452

namespace A009087

/-- `filter[A072303(n+2), A355937(#)]` -/
def P11824289300015962452.Spec : Prop :=
  ∀ n, P11824289300015962452.a n = A009087 (n + 1)

end A009087

/-! ## A009087.P2179779475596084558

`filter[A081061(n+2), A355937(#)]`
-/

namespace A009087.P2179779475596084558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081061 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A009087.P2179779475596084558

namespace A009087

/-- `filter[A081061(n+2), A355937(#)]` -/
def P2179779475596084558.Spec : Prop :=
  ∀ n, P2179779475596084558.a n = A009087 (n + 1)

end A009087

/-! ## A009087.P7834764047426417440

`filter[A087441(n+2), A355937(#)]`
-/

namespace A009087.P7834764047426417440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087441 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A009087.P7834764047426417440

namespace A009087

/-- `filter[A087441(n+2), A355937(#)]` -/
def P7834764047426417440.Spec : Prop :=
  ∀ n, P7834764047426417440.a n = A009087 (n + 1)

end A009087

/-! ## A009087.P11291607189540081904

`filter[A133810(n+2), A355937(#)]`
-/

namespace A009087.P11291607189540081904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133810 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A009087.P11291607189540081904

namespace A009087

/-- `filter[A133810(n+2), A355937(#)]` -/
def P11291607189540081904.Spec : Prop :=
  ∀ n, P11291607189540081904.a n = A009087 (n + 1)

end A009087

/-! ## A009087.P4615298423103451627

`filter[A133811(n+2), A355937(#)]`
-/

namespace A009087.P4615298423103451627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133811 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A009087.P4615298423103451627

namespace A009087

/-- `filter[A133811(n+2), A355937(#)]` -/
def P4615298423103451627.Spec : Prop :=
  ∀ n, P4615298423103451627.a n = A009087 (n + 1)

end A009087

/-! ## A009087.P17825196293778337390

`filter[A133813(n+2), A355937(#)]`
-/

namespace A009087.P17825196293778337390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133813 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A009087.P17825196293778337390

namespace A009087

/-- `filter[A133813(n+2), A355937(#)]` -/
def P17825196293778337390.Spec : Prop :=
  ∀ n, P17825196293778337390.a n = A009087 (n + 1)

end A009087

/-! ## A009087.P18436901207742075684

`filter[A141807(n+2), A355937(#)]`
-/

namespace A009087.P18436901207742075684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141807 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A009087.P18436901207742075684

namespace A009087

/-- `filter[A141807(n+2), A355937(#)]` -/
def P18436901207742075684.Spec : Prop :=
  ∀ n, P18436901207742075684.a n = A009087 (n + 1)

end A009087

/-! ## A009087.P7566688258676045812

`filter[A225657(n+2), A355937(#)]`
-/

namespace A009087.P7566688258676045812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225657 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A009087.P7566688258676045812

namespace A009087

/-- `filter[A225657(n+2), A355937(#)]` -/
def P7566688258676045812.Spec : Prop :=
  ∀ n, P7566688258676045812.a n = A009087 (n + 1)

end A009087

/-! ## A009087.P7247398684617527062

`filter[A274222(n+2), A355937(#)]`
-/

namespace A009087.P7247398684617527062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274222 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A009087.P7247398684617527062

namespace A009087

/-- `filter[A274222(n+2), A355937(#)]` -/
def P7247398684617527062.Spec : Prop :=
  ∀ n, P7247398684617527062.a n = A009087 (n + 1)

end A009087

/-! ## A009087.P8026393986462657211

`filter[A396856(n+2), A355937(#)]`
-/

namespace A009087.P8026393986462657211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396856 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A009087.P8026393986462657211

namespace A009087

/-- `filter[A396856(n+2), A355937(#)]` -/
def P8026393986462657211.Spec : Prop :=
  ∀ n, P8026393986462657211.a n = A009087 (n + 1)

end A009087

/-! ## A009087.P18076322764317860629

`filter[A089237(n+3), A355937(#)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A009087

/-- `filter[A089237(n+3), A355937(#)]` -/
def P18076322764317860629.Spec : Prop :=
  ∀ n, P18076322764317860629.a n = A009087 (n + 1)

theorem P18076322764317860629.correct : P18076322764317860629.Spec := by
  intro n
  simp only [A009087, Nat.add_sub_cancel]

end A009087

/-! ## A009087.P3247931990272670320

`record[(n+2)/A001222(A000005(n+2))]`
-/

namespace A009087.P3247931990272670320
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A001222 (A000005 (n + 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009087.P3247931990272670320

namespace A009087

/-- `record[(n+2)/A001222(A000005(n+2))]` -/
def P3247931990272670320.Spec : Prop :=
  ∀ n, P3247931990272670320.a n = (A009087 (n + 1) : ℚ)

end A009087

/-! ## A009087.P4640588562563198944

`record[A020639(n+2)^A000010(A001222(n+2)+1)]`
-/

namespace A009087.P4640588562563198944
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 2) : ℚ) ^ (A000010 (A001222 (n + 2) + 1).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009087.P4640588562563198944

namespace A009087

/-- `record[A020639(n+2)^A000010(A001222(n+2)+1)]` -/
def P4640588562563198944.Spec : Prop :=
  ∀ n, P4640588562563198944.a n = (A009087 (n + 1) : ℚ)

end A009087

/-! ## A009087.P5270593109475631035

`filter[A133812(n+2), A355937(#)]`
-/

namespace A009087.P5270593109475631035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133812 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A009087.P5270593109475631035

namespace A009087

/-- `filter[A133812(n+2), A355937(#)]` -/
def P5270593109475631035.Spec : Prop :=
  ∀ n, P5270593109475631035.a n = A009087 (n + 1)

end A009087

/-!
# A009088: Expansion of e.g.f. x*cos(tanh(x)), odd powers only.

The programs for A009088, there is no canonical definition to state claims against.
-/

/-! ## A009088.P15263874576213763378

`(2*n+1)*A003711(n)`
-/

namespace A009088.P15263874576213763378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A003711 n

end

end A009088.P15263874576213763378

/-! ## A009088.P12198049301052024650

`A003711(n)*A005408(n)`
-/

namespace A009088.P12198049301052024650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003711 n * A005408 n

end

end A009088.P12198049301052024650

/-! ## A009088.P13162644876314273052

`A003711(n)*A004442(2*n)`
-/

namespace A009088.P13162644876314273052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003711 n * A004442 (2 * n)

end

end A009088.P13162644876314273052

/-! ## A009088.P10582845684983003244

`A003711(n)*A008619(A008574(n))`
-/

namespace A009088.P10582845684983003244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003711 n * A008619 (A008574 n).toNat

end

end A009088.P10582845684983003244

/-!
# A009089: Expansion of e.g.f. cos(tanh(x))/cos(x), even powers only.

The programs for A009089, there is no canonical definition to state claims against.
-/

/-! ## A009089.P12320820490275399873

`A009245(2*n)*A033999(n)`
-/

namespace A009089.P12320820490275399873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009245 (2 * n) * A033999 n

end

end A009089.P12320820490275399873

/-!
# A009090: Expansion of e.g.f. cos(tanh(x))/exp(x).

The programs for A009090, there is no canonical definition to state claims against.
-/

/-! ## A009090.P15646484064676826535

`A009295(n)*A033999(A001096(n))`
-/

namespace A009090.P15646484064676826535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009295 n * A033999 (A001096 n).toNat

end

end A009090.P15646484064676826535

/-! ## A009090.P17206369137544804625

`A008683(A000045(3*n+2))*A009295(n)`
-/

namespace A009090.P17206369137544804625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000045 (3 * n + 2)).toNat * A009295 n

end

end A009090.P17206369137544804625

/-!
# A009091: Expansion of e.g.f. cos(tanh(x)*cos(x)), even powers only.

The programs for A009091, there is no canonical definition to state claims against.
-/

/-! ## A009091.P921930620120291837

`A009247(2*n)*A033999(n)`
-/

namespace A009091.P921930620120291837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009247 (2 * n) * A033999 n

end

end A009091.P921930620120291837

/-! ## A009091.P10078292476113524396

`A009247(2*n)*A087960(n²)`
-/

namespace A009091.P10078292476113524396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009247 (2 * n) * A087960 (n ^ 2)

end

end A009091.P10078292476113524396

/-! ## A009091.P2279334794967300206

`A009247(2*n)/A087960(2*n)`
-/

namespace A009091.P2279334794967300206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009247 (2 * n) : ℚ) / (A087960 (2 * n) : ℚ)

end

end A009091.P2279334794967300206

/-! ## A009091.P8725846522285371791

`A009247(A005408(n)-1)/A033999(n)`
-/

namespace A009091.P8725846522285371791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009247 (A005408 n - 1).toNat : ℚ) / (A033999 n : ℚ)

end

end A009091.P8725846522285371791

/-!
# A009093: Expansion of e.g.f. cos(tanh(x)*log(1+x)).

The programs for A009093, there is no canonical definition to state claims against.
-/

/-! ## A009093.P5450642371023312373

`∏{e}[7^n, A012658(#)]`
-/

namespace A009093.P5450642371023312373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A012658 (Nat.factorization (f1 n) p)

end

end A009093.P5450642371023312373

/-! ## A009093.P3546065613570372843

`∏{e}[(-7)^n, A012407(#)]`
-/

namespace A009093.P3546065613570372843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-7) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A012407 (Nat.factorization (f1 n).natAbs p)

end

end A009093.P3546065613570372843

/-! ## A009093.P15481215871541683504

`A012400(n*9^val(n+1, 9))`
-/

namespace A009093.P15481215871541683504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012400 (n * 9 ^ SequenceMachineLib.valuation (n + 1) 9)

end

end A009093.P15481215871541683504

/-! ## A009093.P17996720895074741424

`A012407(n*9^val(n+1, 9))`
-/

namespace A009093.P17996720895074741424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012407 (n * 9 ^ SequenceMachineLib.valuation (n + 1) 9)

end

end A009093.P17996720895074741424

/-!
# A009095: Expansion of e.g.f. cos(tanh(x)/cos(x)), even powers only.

The programs for A009095, there is no canonical definition to state claims against.
-/

/-! ## A009095.P2959377108809632808

`A009254(2*n)*A033999(n)`
-/

namespace A009095.P2959377108809632808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009254 (2 * n) * A033999 n

end

end A009095.P2959377108809632808

/-! ## A009095.P9006915782302494141

`A009254(A004277(n))/A033999(n)`
-/

namespace A009095.P9006915782302494141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009254 (A004277 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A009095.P9006915782302494141

/-! ## A009095.P7496930601221960288

`A009254(A105360(n+1))/A033999(n)`
-/

namespace A009095.P7496930601221960288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009254 (A105360 (n + 1)).toNat : ℚ) / (A033999 n : ℚ)

end

end A009095.P7496930601221960288

/-!
# A009096: Ordered perimeters of Pythagorean triangles, listed with multiplicity.

The programs for A009096, there is no canonical definition to state claims against.
-/

/-! ## A009096.P12351199657322791094

`A103605(3*(n+1))+A103605(3*(n+1)-1)+A103605(3*(n+1)-2)`
-/

namespace A009096.P12351199657322791094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103605 (3 * (n + 1)) + A103605 (3 * (n + 1) - 1) + A103605 (3 * (n + 1) - 2)

end

end A009096.P12351199657322791094

/-! ## A009096.P8077026488058572112

`2*A107487(n+1)`
-/

namespace A009096.P8077026488058572112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107487 (n + 1)

end

end A009096.P8077026488058572112

/-! ## A009096.P5784400464251524122

`A004277(A107487(n+1))`
-/

namespace A009096.P5784400464251524122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A107487 (n + 1)).toNat

end

end A009096.P5784400464251524122

/-! ## A009096.P14237387844657898594

`A004275(A107487(n+1)+1)`
-/

namespace A009096.P14237387844657898594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A107487 (n + 1) + 1).toNat

end

end A009096.P14237387844657898594

/-! ## A009096.P5919776971974833289

`A004278(A107487(n+1)+2)`
-/

namespace A009096.P5919776971974833289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (A107487 (n + 1) + 2).toNat

end

end A009096.P5919776971974833289

/-! ## A009096.P9755802312435278226

`A103517(A107487(n+1)-1)`
-/

namespace A009096.P9755802312435278226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A107487 (n + 1) - 1).toNat

end

end A009096.P9755802312435278226

/-! ## A009096.P4860340805424814319

`A107487(A000027(n+1))+A107487(n+1)`
-/

namespace A009096.P4860340805424814319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107487 (A000027 (n + 1)).toNat + A107487 (n + 1)

end

end A009096.P4860340805424814319

/-! ## A009096.P8127897007866534808

`A107487(n+1)+A107487(n+1)%A334759(n+1)`
-/

namespace A009096.P8127897007866534808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107487 (n + 1) + Int.tmod (A107487 (n + 1)) (A334759 (n + 1))

end

end A009096.P8127897007866534808

/-!
# A009098: Expansion of e.g.f. cos(x)*cos(sinh(x)), even powers only.

The programs for A009098, there is no canonical definition to state claims against.
-/

/-! ## A009098.P6878998133552257112

`A009145(2*n)*A033999(n)`
-/

namespace A009098.P6878998133552257112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009145 (2 * n) * A033999 n

end

end A009098.P6878998133552257112

/-! ## A009098.P1663828998350019546

`A009145(2*n)*A057077(2*n)`
-/

namespace A009098.P1663828998350019546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009145 (2 * n) * A057077 (2 * n)

end

end A009098.P1663828998350019546

/-! ## A009098.P6753013500776132627

`A009145(A005843(n))/A033999(n)`
-/

namespace A009098.P6753013500776132627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009145 (A005843 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A009098.P6753013500776132627

/-! ## A009098.P9145899173031133752

`A009184(2*n)*A033999(n)`
-/

namespace A009098.P9145899173031133752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009184 (2 * n) * A033999 n

end

end A009098.P9145899173031133752

/-! ## A009098.P16763756783526958533

`A009184(A005843(n))/A033999(n+2)`
-/

namespace A009098.P16763756783526958533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009184 (A005843 n).toNat : ℚ) / (A033999 (n + 2) : ℚ)

end

end A009098.P16763756783526958533

/-!
# A009099: Expansion of e.g.f. cos(x)*cos(tan(x)), even powers only.

The programs for A009099, there is no canonical definition to state claims against.
-/

/-! ## A009099.P13973599257744901809

`A009170(2*n)*A033999(n)`
-/

namespace A009099.P13973599257744901809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009170 (2 * n) * A033999 n

end

end A009099.P13973599257744901809

/-! ## A009099.P11174349993377105157

`A162395(n+1)%(n+2)*A009170(2*n)`
-/

namespace A009099.P11174349993377105157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162395 (n + 1)) (n + 2 : ℤ) * A009170 (2 * n)

end

end A009099.P11174349993377105157

/-! ## A009099.P6231985587725462726

`A009170(A005843(n))/A033999(n)`
-/

namespace A009099.P6231985587725462726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009170 (A005843 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A009099.P6231985587725462726

/-! ## A009099.P930684641943323677

`A009187(2*n)*A033999(n)`
-/

namespace A009099.P930684641943323677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009187 (2 * n) * A033999 n

end

end A009099.P930684641943323677

