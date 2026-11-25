import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C003
import Seq.B002.C007
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
import Seq.B006.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A302201: E.g.f.: exp (e.g.f. for the "cusp form" A002408).

The programs for A302201, there is no canonical definition to state claims against.
-/

/-! ## A302201.P7112108159410595945

`p?[A038719(n)]-A313057(n)`
-/

namespace A302201.P7112108159410595945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038719 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A313057 n

end

end A302201.P7112108159410595945

/-!
# A302202: a(n) = number of distinct words arising in Post's tag system {00, 1101} applied to the word (100)^n , or a(n) = -1 if this word has an unbounded trajectory.

The programs for A302202, there is no canonical definition to state claims against.
-/

/-! ## A302202.P12250357589516993772

`A284121(n+1)+A284119(n+1)`
-/

namespace A302202.P12250357589516993772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284121 (n + 1) + A284119 (n + 1)

end

end A302202.P12250357589516993772

/-! ## A302202.P15131874929524215179

`A284119(n+1)+A028310(A291793(n+1))%A014284(61*n+37)`
-/

namespace A302202.P15131874929524215179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284119 (n + 1) + Int.tmod (A028310 (A291793 (n + 1)).toNat) (A014284 (61 * n + 37))

end

end A302202.P15131874929524215179

/-! ## A302202.P6112407946558832051

`A284119(n+1)+A028310(A291793(n+1))%A350184(A008621(n))`
-/

namespace A302202.P6112407946558832051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284119 (n + 1) + Int.tmod (A028310 (A291793 (n + 1)).toNat) (A350184 (A008621 n).toNat)

end

end A302202.P6112407946558832051

/-! ## A302202.P4946254479098974972

`A284119(n+1)+A274922(A291793(n+1))%A271991(A174571(n))`
-/

namespace A302202.P4946254479098974972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284119 (n + 1) + Int.tmod (A274922 (A291793 (n + 1)).toNat) (A271991 (A174571 n).toNat)

end

end A302202.P4946254479098974972

/-! ## A302202.P12014016146687830462

`A284119(n+1)+A028310(A291793(n+1))+0`
-/

namespace A302202.P12014016146687830462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284119 (n + 1) + (A028310 (A291793 (n + 1)).toNat + 0)

end

end A302202.P12014016146687830462

/-!
# A302203: a(n) = floor(sin(n)) + 1.

The programs for A302203, the canonical program `A302203.P7558070158541408753` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302203 has offset 0).

The definition of A302203 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sin(n))+1` (program `A302203.P7558070158541408753`, by `A302203.P7558070158541408753.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A302203.P7558070158541408753

`floor(sin(n))+1`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A302203

/-- `floor(sin(n))+1` -/
def P7558070158541408753.Spec : Prop :=
  ∀ n, P7558070158541408753.a n = A302203 n

theorem P7558070158541408753.correct : P7558070158541408753.Spec := by
  intro n
  simp only [A302203]

end A302203

/-! ## A302203.P5031416559627473515

`floor(2^sin(n))`
-/

namespace A302203.P5031416559627473515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℝ) ^ (Real.sin (n : ℝ))⌋

end

end A302203.P5031416559627473515

namespace A302203

/-- `floor(2^sin(n))` -/
def P5031416559627473515.Spec : Prop :=
  ∀ n, P5031416559627473515.a n = A302203 n

end A302203

/-! ## A302203.P15108386519285522702

`ceil(cos(n+11))`
-/

namespace A302203.P15108386519285522702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (n + 11 : ℝ)⌉

end

end A302203.P15108386519285522702

namespace A302203

/-- `ceil(cos(n+11))` -/
def P15108386519285522702.Spec : Prop :=
  ∀ n, P15108386519285522702.a n = A302203 n

end A302203

/-! ## A302203.P4872270890433811026

`ceil(sin(n))^n`
-/

namespace A302203.P4872270890433811026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ)⌉ ^ n

end

end A302203.P4872270890433811026

namespace A302203

/-- `ceil(sin(n))^n` -/
def P4872270890433811026.Spec : Prop :=
  ∀ n, P4872270890433811026.a n = A302203 n

end A302203

/-! ## A302203.P11551106248471019855

`floor(sqrt(exp(sin(n))))`
-/

namespace A302203.P11551106248471019855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.exp (Real.sin (n : ℝ)))⌋

end

end A302203.P11551106248471019855

namespace A302203

/-- `floor(sqrt(exp(sin(n))))` -/
def P11551106248471019855.Spec : Prop :=
  ∀ n, P11551106248471019855.a n = A302203 n

end A302203

/-! ## A302203.P18107785664893159835

`floor(exp(floor(sin(n))))`
-/

namespace A302203.P18107785664893159835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (⌊Real.sin (n : ℝ)⌋ : ℝ)⌋

end

end A302203.P18107785664893159835

namespace A302203

/-- `floor(exp(floor(sin(n))))` -/
def P18107785664893159835.Spec : Prop :=
  ∀ n, P18107785664893159835.a n = A302203 n

end A302203

/-! ## A302203.P14408186478563528506

`floor(cos(floor(sin(n))))`
-/

namespace A302203.P14408186478563528506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (⌊Real.sin (n : ℝ)⌋ : ℝ)⌋

end

end A302203.P14408186478563528506

namespace A302203

/-- `floor(cos(floor(sin(n))))` -/
def P14408186478563528506.Spec : Prop :=
  ∀ n, P14408186478563528506.a n = A302203 n

end A302203

/-! ## A302203.P4963701069349322912

`sin(acos(floor(sin(n))))`
-/

namespace A302203.P4963701069349322912
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (Real.arccos (⌊Real.sin (n : ℝ)⌋ : ℝ))

end

end A302203.P4963701069349322912

namespace A302203

/-- `sin(acos(floor(sin(n))))` -/
def P4963701069349322912.Spec : Prop :=
  ∀ n, P4963701069349322912.a n = (A302203 n : ℝ)

end A302203

/-! ## A302203.P6362404527325065921

`ceil(sin(acot(sin(n))))`
-/

namespace A302203.P6362404527325065921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (SequenceMachineLib.acot (Real.sin (n : ℝ)))⌉

end

end A302203.P6362404527325065921

namespace A302203

/-- `ceil(sin(acot(sin(n))))` -/
def P6362404527325065921.Spec : Prop :=
  ∀ n, P6362404527325065921.a n = A302203 n

end A302203

/-! ## A302203.P16575881301550307867

`1-abs(floor(sin(n)))`
-/

namespace A302203.P16575881301550307867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - |⌊Real.sin (n : ℝ)⌋|

end

end A302203.P16575881301550307867

namespace A302203

/-- `1-abs(floor(sin(n)))` -/
def P16575881301550307867.Spec : Prop :=
  ∀ n, P16575881301550307867.a n = A302203 n

end A302203

/-! ## A302203.P865003376021936889

`1-floor(sin(n))²`
-/

namespace A302203.P865003376021936889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌊Real.sin (n : ℝ)⌋ ^ 2

end

end A302203.P865003376021936889

namespace A302203

/-- `1-floor(sin(n))²` -/
def P865003376021936889.Spec : Prop :=
  ∀ n, P865003376021936889.a n = A302203 n

end A302203

/-! ## A302203.P18361848771730241986

`round(exp(sin(n))/2)`
-/

namespace A302203.P18361848771730241986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp (Real.sin (n : ℝ)) / 2)

end

end A302203.P18361848771730241986

namespace A302203

/-- `round(exp(sin(n))/2)` -/
def P18361848771730241986.Spec : Prop :=
  ∀ n, P18361848771730241986.a n = A302203 n

end A302203

/-! ## A302203.P17758613878388892977

`1-dr(floor(sin(n)))`
-/

namespace A302203.P17758613878388892977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (SequenceMachineLib.digitalRoot ⌊Real.sin (n : ℝ)⌋ : ℤ)

end

end A302203.P17758613878388892977

namespace A302203

/-- `1-dr(floor(sin(n)))` -/
def P17758613878388892977.Spec : Prop :=
  ∀ n, P17758613878388892977.a n = A302203 n

end A302203

/-! ## A302203.P8796704421799989607

`xor(1, abs(floor(sin(n))))`
-/

namespace A302203.P8796704421799989607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 |⌊Real.sin (n : ℝ)⌋|

end

end A302203.P8796704421799989607

namespace A302203

/-- `xor(1, abs(floor(sin(n))))` -/
def P8796704421799989607.Spec : Prop :=
  ∀ n, P8796704421799989607.a n = A302203 n

end A302203

/-! ## A302203.P6722544697994871492

`xor(1, -floor(sin(n)))`
-/

namespace A302203.P6722544697994871492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-⌊Real.sin (n : ℝ)⌋)

end

end A302203.P6722544697994871492

namespace A302203

/-- `xor(1, -floor(sin(n)))` -/
def P6722544697994871492.Spec : Prop :=
  ∀ n, P6722544697994871492.a n = A302203 n

end A302203

/-! ## A302203.P10170426477731291675

`xor(1, floor(sin(n))²)`
-/

namespace A302203.P10170426477731291675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (⌊Real.sin (n : ℝ)⌋ ^ 2)

end

end A302203.P10170426477731291675

namespace A302203

/-- `xor(1, floor(sin(n))²)` -/
def P10170426477731291675.Spec : Prop :=
  ∀ n, P10170426477731291675.a n = A302203 n

end A302203

/-! ## A302203.P5946631032646318001

`log2(gcd(2, floor(sin(n))))`
-/

namespace A302203.P5946631032646318001
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 ⌊Real.sin (n : ℝ)⌋ : ℝ)

end

end A302203.P5946631032646318001

namespace A302203

/-- `log2(gcd(2, floor(sin(n))))` -/
def P5946631032646318001.Spec : Prop :=
  ∀ n, P5946631032646318001.a n = (A302203 n : ℝ)

end A302203

/-! ## A302203.P11232142166625400134

`xor(1, dr(floor(sin(n))))`
-/

namespace A302203.P11232142166625400134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (SequenceMachineLib.digitalRoot ⌊Real.sin (n : ℝ)⌋)

end

end A302203.P11232142166625400134

namespace A302203

/-- `xor(1, dr(floor(sin(n))))` -/
def P11232142166625400134.Spec : Prop :=
  ∀ n, (P11232142166625400134.a n : ℤ) = A302203 n

end A302203

/-! ## A302203.P10221948761238255349

`floor(2/(2-sin(n)))`
-/

namespace A302203.P10221948761238255349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / (2 - Real.sin (n : ℝ))⌋

end

end A302203.P10221948761238255349

namespace A302203

/-- `floor(2/(2-sin(n)))` -/
def P10221948761238255349.Spec : Prop :=
  ∀ n, P10221948761238255349.a n = A302203 n

end A302203

/-!
# A302206: Number of n X n 0..1 arrays with every element equal to 0, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302206, there is no canonical definition to state claims against.
-/

/-! ## A302206.P14518754127536431622

`A302212(∑[4*n]+1)`
-/

namespace A302206.P14518754127536431622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302212 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302206.P14518754127536431622

/-!
# A302207: Number of nX3 0..1 arrays with every element equal to 0, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302207, there is no canonical definition to state claims against.
-/

/-! ## A302207.P8505812678968229009

`A302212(∑[3+n]+1)`
-/

namespace A302207.P8505812678968229009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302212 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302207.P8505812678968229009

/-! ## A302207.P16197482308071243720

`record[A302212(A237519(n+1))]`
-/

namespace A302207.P16197482308071243720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302212 (A237519 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302207.P16197482308071243720

/-! ## A302207.P6388582642793271620

`record[A010054(n+3)*A302212(n+1)]`
-/

namespace A302207.P6388582642793271620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3) * A302212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302207.P6388582642793271620

/-! ## A302207.P6133736389440657651

`record[A302212(n+1)/A029653(n+2)]`
-/

namespace A302207.P6133736389440657651
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302212 (n + 1) : ℚ) / (A029653 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302207.P6133736389440657651

/-!
# A302208: Number of nX4 0..1 arrays with every element equal to 0, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302208, there is no canonical definition to state claims against.
-/

/-! ## A302208.P16030203006702846061

`A302212(∑[n+4]+3)`
-/

namespace A302208.P16030203006702846061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302212 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A302208.P16030203006702846061

/-!
# A302209: Number of nX5 0..1 arrays with every element equal to 0, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302209, there is no canonical definition to state claims against.
-/

/-! ## A302209.P10067140952604545338

`A302212(∑[n+5]+6)`
-/

namespace A302209.P10067140952604545338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302212 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A302209.P10067140952604545338

/-!
# A302210: Number of nX6 0..1 arrays with every element equal to 0, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302210, there is no canonical definition to state claims against.
-/

/-! ## A302210.P16565243729293617795

`A302212(∑[n+6]+10)`
-/

namespace A302210.P16565243729293617795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302212 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A302210.P16565243729293617795

/-!
# A302211: Number of n X 7 0..1 arrays with every element equal to 0, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302211, there is no canonical definition to state claims against.
-/

/-! ## A302211.P5543124160733310395

`A302212(A055999(n+4))`
-/

namespace A302211.P5543124160733310395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302212 (A055999 (n + 4)).toNat

end

end A302211.P5543124160733310395

/-!
# A302212: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302212, there is no canonical definition to state claims against.
-/

/-! ## A302212.P6449833909207723296

`A302460(n+1)-A033886(A059922(n))`
-/

namespace A302212.P6449833909207723296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302460 (n + 1) - A033886 (A059922 n).toNat

end

end A302212.P6449833909207723296

/-! ## A302212.P14593436450560557073

`A303242(n+1)-A033886(A059922(n))`
-/

namespace A302212.P14593436450560557073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (n + 1) - A033886 (A059922 n).toNat

end

end A302212.P14593436450560557073

/-! ## A302212.P17989301664959904709

`A302460(n+1)-A089049(A033886(n))`
-/

namespace A302212.P17989301664959904709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302460 (n + 1) - A089049 (A033886 n).toNat

end

end A302212.P17989301664959904709

/-! ## A302212.P11426921113786557031

`A302460(n+1)-A001221(A135302(n)!)`
-/

namespace A302212.P11426921113786557031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302460 (n + 1) - A001221 (Nat.factorial (A135302 n).toNat)

end

end A302212.P11426921113786557031

/-! ## A302212.P13058381405299977477

`A303242(n+1)-A001221(A135302(n)!)`
-/

namespace A302212.P13058381405299977477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (n + 1) - A001221 (Nat.factorial (A135302 n).toNat)

end

end A302212.P13058381405299977477

/-!
# A302213: Number of 3Xn 0..1 arrays with every element equal to 0, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302213, there is no canonical definition to state claims against.
-/

/-! ## A302213.P3734818188569405591

`A302212(∑[n+2]+4)`
-/

namespace A302213.P3734818188569405591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302212 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A302213.P3734818188569405591

/-!
# A302214: Number of 4 X n 0..1 arrays with every element equal to 0, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302214, there is no canonical definition to state claims against.
-/

/-! ## A302214.P1606154537839886709

`A302212(∑[n+3]+7)`
-/

namespace A302214.P1606154537839886709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302212 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A302214.P1606154537839886709

/-!
# A302215: Number of 5Xn 0..1 arrays with every element equal to 0, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302215, there is no canonical definition to state claims against.
-/

/-! ## A302215.P16788332886566852114

`A302212(∑[n+4]+11)`
-/

namespace A302215.P16788332886566852114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302212 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A302215.P16788332886566852114

/-!
# A302216: Number of 6 X n 0..1 arrays with every element equal to 0, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302216, there is no canonical definition to state claims against.
-/

/-! ## A302216.P3034774708557884571

`A302212(∑[n+5]+16)`
-/

namespace A302216.P3034774708557884571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302212 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A302216.P3034774708557884571

/-!
# A302217: Number of 7Xn 0..1 arrays with every element equal to 0, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302217, there is no canonical definition to state claims against.
-/

/-! ## A302217.P4723615654234106749

`A302212(A167487(n+5))`
-/

namespace A302217.P4723615654234106749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302212 (A167487 (n + 5)).toNat

end

end A302217.P4723615654234106749

/-!
# A302218: Number of n X n 0..1 arrays with every element equal to 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302218, there is no canonical definition to state claims against.
-/

/-! ## A302218.P14175079884286266189

`A302224(∑[4*n]+1)`
-/

namespace A302218.P14175079884286266189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302218.P14175079884286266189

/-!
# A302219: Number of n X 3 0..1 arrays with every element equal to 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302219, there is no canonical definition to state claims against.
-/

/-! ## A302219.P15759376576695332812

`A302224(∑[n+3]+1)`
-/

namespace A302219.P15759376576695332812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302219.P15759376576695332812

/-! ## A302219.P2856980553174185842

`record[A302224(A198464(n+1))]`
-/

namespace A302219.P2856980553174185842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302219.P2856980553174185842

/-!
# A302220: Number of nX4 0..1 arrays with every element equal to 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302220, there is no canonical definition to state claims against.
-/

/-! ## A302220.P3425554702183678664

`A302224(∑[n+4]+3)`
-/

namespace A302220.P3425554702183678664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A302220.P3425554702183678664

/-! ## A302220.P10286073500632940422

`record[A302224(A141214(ceil(abs((1-n)/2))))]`
-/

namespace A302220.P10286073500632940422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (A141214 ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302220.P10286073500632940422

/-!
# A302221: Number of n X 5 0..1 arrays with every element equal to 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302221, there is no canonical definition to state claims against.
-/

/-! ## A302221.P7901466538613837199

`A302224(∑[n+5]+6)`
-/

namespace A302221.P7901466538613837199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A302221.P7901466538613837199

/-!
# A302222: Number of nX6 0..1 arrays with every element equal to 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302222, there is no canonical definition to state claims against.
-/

/-! ## A302222.P3271008409479014353

`A302224(A052905(n+3))`
-/

namespace A302222.P3271008409479014353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (A052905 (n + 3)).toNat

end

end A302222.P3271008409479014353

/-!
# A302223: Number of n X 7 0..1 arrays with every element equal to 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302223, there is no canonical definition to state claims against.
-/

/-! ## A302223.P3502449901435810668

`A302224(A055999(n+4))`
-/

namespace A302223.P3502449901435810668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (A055999 (n + 4)).toNat

end

end A302223.P3502449901435810668

/-!
# A302224: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302224, there is no canonical definition to state claims against.
-/

/-! ## A302224.P14031056676719657648

`A302670(n+1)`
-/

namespace A302224.P14031056676719657648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302670 (n + 1)

end

end A302224.P14031056676719657648

/-!
# A302225: Number of 2Xn 0..1 arrays with every element equal to 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302225, there is no canonical definition to state claims against.
-/

/-! ## A302225.P15692965097342666702

`A302224(∑[1+n]+2)`
-/

namespace A302225.P15692965097342666702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A302225.P15692965097342666702

/-! ## A302225.P17530270521304322305

`A302472(∑[n+1]+2)`
-/

namespace A302225.P17530270521304322305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302472 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A302225.P17530270521304322305

/-! ## A302225.P886512095885871039

`A302670(∑[n+1]+2)`
-/

namespace A302225.P886512095885871039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302670 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A302225.P886512095885871039

/-! ## A302225.P14379120217750641900

`A303254(∑[n+1]+2)`
-/

namespace A302225.P14379120217750641900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303254 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A302225.P14379120217750641900

/-! ## A302225.P16744208091909731361

`record[A302224(A130270(n+1)+2)]`
-/

namespace A302225.P16744208091909731361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (A130270 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302225.P16744208091909731361

/-!
# A302226: Number of 3 X n 0..1 arrays with every element equal to 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302226, there is no canonical definition to state claims against.
-/

/-! ## A302226.P3528997533495652509

`A302224(∑[n+2]+4)`
-/

namespace A302226.P3528997533495652509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A302226.P3528997533495652509

/-! ## A302226.P16094596069945084619

`A302670(∑[n+2]+4)`
-/

namespace A302226.P16094596069945084619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302670 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A302226.P16094596069945084619

/-!
# A302227: Number of 4Xn 0..1 arrays with every element equal to 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302227, there is no canonical definition to state claims against.
-/

/-! ## A302227.P3432928588297737327

`A302224(∑[n+3]+7)`
-/

namespace A302227.P3432928588297737327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A302227.P3432928588297737327

/-! ## A302227.P7145068936542815954

`A302670(∑[n+3]+7)`
-/

namespace A302227.P7145068936542815954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302670 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A302227.P7145068936542815954

/-!
# A302228: Number of 5Xn 0..1 arrays with every element equal to 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302228, there is no canonical definition to state claims against.
-/

/-! ## A302228.P3961079416995675162

`A302224(A167499(n+3))`
-/

namespace A302228.P3961079416995675162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (A167499 (n + 3)).toNat

end

end A302228.P3961079416995675162

/-!
# A302229: Number of 6Xn 0..1 arrays with every element equal to 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302229, there is no canonical definition to state claims against.
-/

/-! ## A302229.P13311276412819802875

`A302224(A166136(n+4))`
-/

namespace A302229.P13311276412819802875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (A166136 (n + 4)).toNat

end

end A302229.P13311276412819802875

/-!
# A302230: Number of 7Xn 0..1 arrays with every element equal to 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302230, there is no canonical definition to state claims against.
-/

/-! ## A302230.P11983116749718543414

`A302224(A167487(n+5))`
-/

namespace A302230.P11983116749718543414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (A167487 (n + 5)).toNat

end

end A302230.P11983116749718543414

/-!
# A302231: Number of pairs of Goldbach partitions of 2n, (p,q) and (s,t) with p < s <= t < q such that s = p + 2 and t = q - 2.

The programs for A302231, there is no canonical definition to state claims against.
-/

/-! ## A302231.P9078008494526108115

`A348453(n+5)%A055089(A096502(n))`
-/

namespace A302231.P9078008494526108115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348453 (n + 5)) (A055089 (A096502 n).toNat)

end

end A302231.P9078008494526108115

/-! ## A302231.P15499138282811591899

`A296210(A362641(n+1))`
-/

namespace A302231.P15499138282811591899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296210 (A362641 (n + 1)).toNat

end

end A302231.P15499138282811591899

/-! ## A302231.P7579783272755346948

`A086971(5^A341237(n+1))`
-/

namespace A302231.P7579783272755346948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A341237 (n + 1) : ℤ))).toNat

end

end A302231.P7579783272755346948

/-! ## A302231.P17490825911151462471

`A011655(n*A308910(n+3))`
-/

namespace A302231.P17490825911151462471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 ((n : ℤ) * A308910 (n + 3)).toNat

end

end A302231.P17490825911151462471

/-! ## A302231.P16500461882299336728

`A212126(A306788(n+1))`
-/

namespace A302231.P16500461882299336728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212126 (A306788 (n + 1)).toNat

end

end A302231.P16500461882299336728

/-!
# A302233: Square array A(n,k), n >= 0, k >= 1, read by antidiagonals, where column k is the expansion of Product_{j>=1} (1 + x^(k*j))/(1 + x^j).

The programs for A302233, there is no canonical definition to state claims against.
-/

/-! ## A302233.P7671698605211458273

`A293299(n)+A286351(A293724(n))`
-/

namespace A302233.P7671698605211458273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293299 n + A286351 (A293724 n).toNat

end

end A302233.P7671698605211458273

/-! ## A302233.P8532532410672924578

`A295343(n)*A355739(A229243(n))`
-/

namespace A302233.P8532532410672924578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295343 n * A355739 (A229243 n).toNat

end

end A302233.P8532532410672924578

/-! ## A302233.P6339778515056347404

`A295343(n)-A010894(A360960(2*(n+1)))`
-/

namespace A302233.P6339778515056347404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295343 n - A010894 ((A360960 (2 * (n + 1))).toNat + 21)

end

end A302233.P6339778515056347404

/-!
# A302234: Expansion of Product_{k>=1} (1 - x^k)/(1 - x^prime(k)).

The programs for A302234, there is no canonical definition to state claims against.
-/

/-! ## A302234.P7286228513606800060

`A008683(A359440(2*n+3)+A281045(n))`
-/

namespace A302234.P7286228513606800060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A359440 (2 * n + 3) + A281045 n).toNat

end

end A302234.P7286228513606800060

/-! ## A302234.P6095508415558419577

`A055132(A362683(n+2))`
-/

namespace A302234.P6095508415558419577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055132 (A362683 (n + 2)).toNat

end

end A302234.P6095508415558419577

/-! ## A302234.P9972782613358827734

`A016351(A039956(2*n+3)+A016372(n))`
-/

namespace A302234.P9972782613358827734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016351 (A039956 (2 * n + 3) + A016372 n).toNat

end

end A302234.P9972782613358827734

/-! ## A302234.P8355610181523520429

`A008683(∑[A188087(ceil(2^(n-1)))])`
-/

namespace A302234.P8355610181523520429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188087 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A302234.P8355610181523520429

/-! ## A302234.P14143166190541083150

`A001468(A396529(n+3))-A001468(n)`
-/

namespace A302234.P14143166190541083150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (A396529 (n + 3)).toNat - A001468 n

end

end A302234.P14143166190541083150

/-!
# A302236: Expansion of Product_{k>=1} (1 + x^prime(k))/(1 + x^k).

The programs for A302236, there is no canonical definition to state claims against.
-/

/-! ## A302236.P8540096436571689786

`2*A339395(n)-A002095(n)`
-/

namespace A302236.P8540096436571689786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339395 n - A002095 n

end

end A302236.P8540096436571689786

/-! ## A302236.P8870954542518592261

`2*A339395(n)-∑[A023895(n)]`
-/

namespace A302236.P8870954542518592261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339395 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302236.P8870954542518592261

/-! ## A302236.P5159725838471691298

`A339395(n)-A339396(n)`
-/

namespace A302236.P5159725838471691298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339395 n - A339396 n

end

end A302236.P5159725838471691298

/-! ## A302236.P1614561222969560436

`A002095(n)-2*A339396(n)`
-/

namespace A302236.P1614561222969560436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002095 n - 2 * A339396 n

end

end A302236.P1614561222969560436

/-! ## A302236.P17002022441654880722

`∑[A023895(n)]-2*A339396(n)`
-/

namespace A302236.P17002022441654880722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2 * A339396 n

end

end A302236.P17002022441654880722

/-! ## A302236.P3129264152005699752

`2*A339395(n)-A222656(A076921(n+1))`
-/

namespace A302236.P3129264152005699752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339395 n - A222656 (A076921 (n + 1)).toNat

end

end A302236.P3129264152005699752

/-! ## A302236.P3229402983149626838

`A222656(A076921(n+1))-2*A339396(n)`
-/

namespace A302236.P3229402983149626838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222656 (A076921 (n + 1)).toNat - 2 * A339396 n

end

end A302236.P3229402983149626838

/-! ## A302236.P13703557729497042751

`A005843(A339395(n))-A002095(n)`
-/

namespace A302236.P13703557729497042751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A339395 n).toNat - A002095 n

end

end A302236.P13703557729497042751

/-! ## A302236.P8001839242731390949

`A002095(n)-A005843(A339396(n))`
-/

namespace A302236.P8001839242731390949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002095 n - A005843 (A339396 n).toNat

end

end A302236.P8001839242731390949

/-!
# A302237: Expansion of Product_{k>=1} ((1 + x^k)/(1 - x^k))^(k*(k+1)/2).

The programs for A302237, there is no canonical definition to state claims against.
-/

/-! ## A302237.P13254087230404248936

`A316470(A018115(n))`
-/

namespace A302237.P13254087230404248936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316470 (A018115 n).toNat

end

end A302237.P13254087230404248936

/-! ## A302237.P12696848755474450669

`row(A184795(A082758(n)))`
-/

namespace A302237.P12696848755474450669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A184795 (A082758 n).toNat).toNat

end

end A302237.P12696848755474450669

/-!
# A302238: Expansion of Product_{k>=1} ((1 + x^k)/(1 - x^k))^prime(k).

The programs for A302238, there is no canonical definition to state claims against.
-/

/-! ## A302238.P183132365585234330

`A002900(n+1)-A265745(A002903(n))`
-/

namespace A302238.P183132365585234330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002900 (n + 1) - A265745 (A002903 n).toNat

end

end A302238.P183132365585234330

/-!
# A302239: Expansion of Product_{k>=1} ((1 + x^k)/(1 - x^k))^p(k), where p(k) = number of partitions of k (A000041).

The programs for A302239, there is no canonical definition to state claims against.
-/

/-! ## A302239.P10230776765653932168

`A359288(A130294(n))+A057711(n+1)`
-/

namespace A302239.P10230776765653932168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359288 (A130294 n).toNat + A057711 (n + 1)

end

end A302239.P10230776765653932168

/-! ## A302239.P2580863043377510024

`A381662(n+1)+A035327(A288687(n))`
-/

namespace A302239.P2580863043377510024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381662 (n + 1) + A035327 (A288687 n).toNat

end

end A302239.P2580863043377510024

/-! ## A302239.P10973995040932361268

`A026819(A006253(n))*A036453(n+1)`
-/

namespace A302239.P10973995040932361268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A006253 n).toNat * A036453 (n + 1)

end

end A302239.P10973995040932361268

/-!
# A302240: Triangle T(n,k) of the numbers of k-matchings in the n-pan graph (0 <= k <= ceiling(n/2)).

The programs for A302240, there is no canonical definition to state claims against.
-/

/-! ## A302240.P1797809650844392284

`A028262(A091018(n+2))`
-/

namespace A302240.P1797809650844392284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028262 (A091018 (n + 2)).toNat

end

end A302240.P1797809650844392284

/-!
# A302242: Total weight of the n-th multiset multisystem. Totally additive with a(prime(n)) = Omega(n).

The programs for A302242, the canonical program `A302242.P10573320807127788977` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302242 has offset 1).

The definition of A302242 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302242.P10573320807127788977

`∑{e}[A003963(1+n), #]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A302242

/-- `∑{e}[A003963(1+n), #]` -/
def P10573320807127788977.Spec : Prop :=
  ∀ n, (P10573320807127788977.a n : ℤ) = A302242 (n + 1)

theorem P10573320807127788977.correct : P10573320807127788977.Spec := by
  intro n
  simp only [A302242, Nat.add_sub_cancel]

end A302242

/-! ## A302242.P18385305458268977485

`A302243(A025480(n))`
-/

namespace A302242.P18385305458268977485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302243 (A025480 n).toNat

end

end A302242.P18385305458268977485

namespace A302242

/-- `A302243(A025480(n))` -/
def P18385305458268977485.Spec : Prop :=
  ∀ n, P18385305458268977485.a n = A302242 (n + 1)

end A302242

/-! ## A302242.P15325493187134567815

`A001222(A003963(1+n))`
-/

namespace A302242.P15325493187134567815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A003963 (1 + n)).toNat

end

end A302242.P15325493187134567815

namespace A302242

/-- `A001222(A003963(1+n))` -/
def P15325493187134567815.Spec : Prop :=
  ∀ n, P15325493187134567815.a n = A302242 (n + 1)

end A302242

/-! ## A302242.P3028120999194683756

`A275024(A064989(n+1))`
-/

namespace A302242.P3028120999194683756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275024 (A064989 (n + 1)).toNat

end

end A302242.P3028120999194683756

namespace A302242

/-- `A275024(A064989(n+1))` -/
def P3028120999194683756.Spec : Prop :=
  ∀ n, P3028120999194683756.a n = A302242 (n + 1)

end A302242

/-! ## A302242.P16132394437901611845

`A252736(2*A003963(n+1))`
-/

namespace A302242.P16132394437901611845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (2 * A003963 (n + 1)).toNat

end

end A302242.P16132394437901611845

namespace A302242

/-- `A252736(2*A003963(n+1))` -/
def P16132394437901611845.Spec : Prop :=
  ∀ n, P16132394437901611845.a n = A302242 (n + 1)

end A302242

/-! ## A302242.P6162095389012545924

`A073093(2*A003963(n+1))-2`
-/

namespace A302242.P6162095389012545924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (2 * A003963 (n + 1)).toNat - 2

end

end A302242.P6162095389012545924

namespace A302242

/-- `A073093(2*A003963(n+1))-2` -/
def P6162095389012545924.Spec : Prop :=
  ∀ n, P6162095389012545924.a n = A302242 (n + 1)

end A302242

/-! ## A302242.P11345813276193316794

`A196052(n+1)-A001222(n+1)`
-/

namespace A302242.P11345813276193316794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196052 (n + 1) - A001222 (n + 1)

end

end A302242.P11345813276193316794

namespace A302242

/-- `A196052(n+1)-A001222(n+1)` -/
def P11345813276193316794.Spec : Prop :=
  ∀ n, P11345813276193316794.a n = A302242 (n + 1)

end A302242

/-! ## A302242.P13459564098918545237

`A056239(∏{e}[A003963(n+1), A000040(#)])`
-/

namespace A302242.P13459564098918545237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A302242.P13459564098918545237

namespace A302242

/-- `A056239(∏{e}[A003963(n+1), A000040(#)])` -/
def P13459564098918545237.Spec : Prop :=
  ∀ n, P13459564098918545237.a n = A302242 (n + 1)

end A302242

/-! ## A302242.P10113630196075306962

`A324930(record[A051698(n)])`
-/

namespace A302242.P10113630196075306962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324930 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A302242.P10113630196075306962

namespace A302242

/-- `A324930(record[A051698(n)])` -/
def P10113630196075306962.Spec : Prop :=
  ∀ n, P10113630196075306962.a n = A302242 (n + 1)

end A302242

/-! ## A302242.P8746088334126112405

`A196052(n+1)+1-A196052(A000040(n+1))`
-/

namespace A302242.P8746088334126112405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196052 (n + 1) + (1 - A196052 (A000040 (n + 1)).toNat)

end

end A302242.P8746088334126112405

namespace A302242

/-- `A196052(n+1)+1-A196052(A000040(n+1))` -/
def P8746088334126112405.Spec : Prop :=
  ∀ n, P8746088334126112405.a n = A302242 (n + 1)

end A302242

/-! ## A302242.P18201381326412150621

`A073093(A003963(n+1)²)-A073093(A003963(n+1))`
-/

namespace A302242.P18201381326412150621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (A003963 (n + 1) ^ 2).toNat - A073093 (A003963 (n + 1)).toNat

end

end A302242.P18201381326412150621

namespace A302242

/-- `A073093(A003963(n+1)²)-A073093(A003963(n+1))` -/
def P18201381326412150621.Spec : Prop :=
  ∀ n, P18201381326412150621.a n = A302242 (n + 1)

end A302242

/-! ## A302242.P11715325304612978848

`A252736(A003963(n+1)²)-A252736(A003963(n+1))`
-/

namespace A302242.P11715325304612978848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A003963 (n + 1) ^ 2).toNat - A252736 (A003963 (n + 1)).toNat

end

end A302242.P11715325304612978848

namespace A302242

/-- `A252736(A003963(n+1)²)-A252736(A003963(n+1))` -/
def P11715325304612978848.Spec : Prop :=
  ∀ n, P11715325304612978848.a n = A302242 (n + 1)

end A302242

/-! ## A302242.P16979860126935620147

`A379306(A064988(A357984(A064988(n+1))))`
-/

namespace A302242.P16979860126935620147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379306 (A064988 (A357984 (A064988 (n + 1)).toNat).toNat).toNat

end

end A302242.P16979860126935620147

namespace A302242

/-- `A379306(A064988(A357984(A064988(n+1))))` -/
def P16979860126935620147.Spec : Prop :=
  ∀ n, P16979860126935620147.a n = A302242 (n + 1)

end A302242

/-! ## A302242.P249057895902024510

`A001221(A181821(A181821(A353394(n+1))))`
-/

namespace A302242.P249057895902024510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A181821 (A181821 (A353394 (n + 1)).toNat).toNat).toNat

end

end A302242.P249057895902024510

namespace A302242

/-- `A001221(A181821(A181821(A353394(n+1))))` -/
def P249057895902024510.Spec : Prop :=
  ∀ n, P249057895902024510.a n = A302242 (n + 1)

end A302242

/-!
# A302243: Total weight of the n-th twice-odd-factored multiset partition.

The programs for A302243, the canonical program `A302243.P14933239355494242855` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302243 has offset 0).

The definition of A302243 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A302242, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A302243.P14933239355494242855

`A302242(2*n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A302243

/-- `A302242(2*n+1)` -/
def P14933239355494242855.Spec : Prop :=
  ∀ n, P14933239355494242855.a n = A302243 n

theorem P14933239355494242855.correct : P14933239355494242855.Spec := by
  intro n
  simp only [A302243]

end A302243

/-! ## A302243.P8255124579779604017

`A302242(record[xor(1, n)])`
-/

namespace A302243.P8255124579779604017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A302243.P8255124579779604017

namespace A302243

/-- `A302242(record[xor(1, n)])` -/
def P8255124579779604017.Spec : Prop :=
  ∀ n, P8255124579779604017.a n = A302243 n

end A302243

/-! ## A302243.P15054641465745043802

`A275024(A064216(n+1))`
-/

namespace A302243.P15054641465745043802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275024 (A064216 (n + 1)).toNat

end

end A302243.P15054641465745043802

namespace A302243

/-- `A275024(A064216(n+1))` -/
def P15054641465745043802.Spec : Prop :=
  ∀ n, P15054641465745043802.a n = A302243 n

end A302243

/-! ## A302243.P15090878758361029547

`∑{e}[A003963(Δ[n²]), #]`
-/

namespace A302243.P15090878758361029547
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A302243.P15090878758361029547

namespace A302243

/-- `∑{e}[A003963(Δ[n²]), #]` -/
def P15090878758361029547.Spec : Prop :=
  ∀ n, (P15090878758361029547.a n : ℤ) = A302243 n

end A302243

/-! ## A302243.P7736917622077881219

`A001222(A003963(Δ[n²]))`
-/

namespace A302243.P7736917622077881219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A003963 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A302243.P7736917622077881219

namespace A302243

/-- `A001222(A003963(Δ[n²]))` -/
def P7736917622077881219.Spec : Prop :=
  ∀ n, P7736917622077881219.a n = A302243 n

end A302243

/-! ## A302243.P17818014856346218017

`A252736(2*A003963(2*n+1))`
-/

namespace A302243.P17818014856346218017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (2 * A003963 (2 * n + 1)).toNat

end

end A302243.P17818014856346218017

namespace A302243

/-- `A252736(2*A003963(2*n+1))` -/
def P17818014856346218017.Spec : Prop :=
  ∀ n, P17818014856346218017.a n = A302243 n

end A302243

/-! ## A302243.P7968850413967419421

`A196052(2*n+1)-A001222(2*n+1)`
-/

namespace A302243.P7968850413967419421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196052 (2 * n + 1) - A001222 (2 * n + 1)

end

end A302243.P7968850413967419421

namespace A302243

/-- `A196052(2*n+1)-A001222(2*n+1)` -/
def P7968850413967419421.Spec : Prop :=
  ∀ n, P7968850413967419421.a n = A302243 n

end A302243

/-! ## A302243.P7553536670264380910

`A324930(A031368(n+1))`
-/

namespace A302243.P7553536670264380910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324930 (A031368 (n + 1)).toNat

end

end A302243.P7553536670264380910

namespace A302243

/-- `A324930(A031368(n+1))` -/
def P7553536670264380910.Spec : Prop :=
  ∀ n, P7553536670264380910.a n = A302243 n

end A302243

/-! ## A302243.P2534143286060441132

`A379306(A064988(A357984(A064988(2*n+1))))`
-/

namespace A302243.P2534143286060441132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379306 (A064988 (A357984 (A064988 (2 * n + 1)).toNat).toNat).toNat

end

end A302243.P2534143286060441132

namespace A302243

/-- `A379306(A064988(A357984(A064988(2*n+1))))` -/
def P2534143286060441132.Spec : Prop :=
  ∀ n, P2534143286060441132.a n = A302243 n

end A302243

/-! ## A302243.P1794117626050108343

`A056239(A356231(A003963(2*n+1)))`
-/

namespace A302243.P1794117626050108343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A356231 (A003963 (2 * n + 1)).toNat).toNat

end

end A302243.P1794117626050108343

namespace A302243

/-- `A056239(A356231(A003963(2*n+1)))` -/
def P1794117626050108343.Spec : Prop :=
  ∀ n, P1794117626050108343.a n = A302243 n

end A302243

/-! ## A302243.P8135760687760150777

`A302242(Δ[n²]²)/2`
-/

namespace A302243.P8135760687760150777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302242 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat : ℚ) / 2

end

end A302243.P8135760687760150777

namespace A302243

/-- `A302242(Δ[n²]²)/2` -/
def P8135760687760150777.Spec : Prop :=
  ∀ n, P8135760687760150777.a n = (A302243 n : ℚ)

end A302243

/-!
# A302244: Length of longest run of primes in any of the four diagonals starting from the center of a square number spiral with n at the center.

The programs for A302244, there is no canonical definition to state claims against.
-/

/-! ## A302244.P12009887506640090374

`A247149(and(∏[n%2+2]/2, A286080(n)))`
-/

namespace A302244.P12009887506640090374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247149 (Int.land (SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2)) (A286080 n)).toNat

end

end A302244.P12009887506640090374

/-! ## A302244.P13190415322123798719

`(A342768(n+1)+A065985(A059479(2*n+1)))%A323130(2*(n+1))`
-/

namespace A302244.P13190415322123798719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342768 (n + 1) + A065985 (A059479 (2 * n + 1)).toNat) (A323130 (2 * (n + 1)))

end

end A302244.P13190415322123798719

/-!
# A302245: Maximum remainder of p*q divided by p+q with 0 < p <= q <= n.

The programs for A302245, there is no canonical definition to state claims against.
-/

/-! ## A302245.P16115781080987911337

`A140201(a(n-2))+3` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A302245.P16115781080987911337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A140201 (a (n - 2)).toNat + 3

end

end A302245.P16115781080987911337

/-! ## A302245.P1592550351086310602

`A302404(a(n-2)+n)+1` with `a(0)=1, a(1)=2`
-/

namespace A302245.P1592550351086310602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A302404 (a (n - 2) + (n : ℤ)).toNat + 1

end

end A302245.P1592550351086310602

/-! ## A302245.P869347686718942203

`A034584(a(n-2)+2*n+1)` with `a(0)=1, a(1)=2`
-/

namespace A302245.P869347686718942203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A034584 (a (n - 2) + (2 * n + 1 : ℤ)).toNat

end

end A302245.P869347686718942203

/-! ## A302245.P5289423928706317516

`A316355(A014206(n)-A019425(n))`
-/

namespace A302245.P5289423928706317516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316355 (A014206 n - A019425 n).toNat

end

end A302245.P5289423928706317516

/-! ## A302245.P8761525529061296963

`A004280(n+1)-A307247(A097564(n+1))`
-/

namespace A302245.P8761525529061296963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1) - A307247 (A097564 (n + 1)).toNat

end

end A302245.P8761525529061296963

/-!
# A302246: Irregular triangle read by rows in which row n lists all parts of all partitions of n, in nonincreasing order.

The programs for A302246, there is no canonical definition to state claims against.
-/

/-! ## A302246.P4379681682131244909

`A345272(A177151(2*n+1)+A002265(n))`
-/

namespace A302246.P4379681682131244909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345272 (A177151 (2 * n + 1) + A002265 n).toNat

end

end A302246.P4379681682131244909

/-! ## A302246.P11711035752013209533

`A374515(lt[A204086(n+1), A374141(n+1)])`
-/

namespace A302246.P11711035752013209533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374515 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A302246.P11711035752013209533

/-! ## A302246.P6046256913377449240

`A374515(lt[A274078(n+1), A257124(n+1)])`
-/

namespace A302246.P6046256913377449240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257124 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374515 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A302246.P6046256913377449240

/-! ## A302246.P12191656223471627937

`A374515(lt[A318846(n+1), A059899(n+1)])`
-/

namespace A302246.P12191656223471627937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374515 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A302246.P12191656223471627937

/-!
# A302247: Irregular triangle read by rows in which row n lists all parts of all partitions of n, in nondecreasing order.

The programs for A302247, there is no canonical definition to state claims against.
-/

/-! ## A302247.P9167144318333383510

`A227349(A078881(n+1))`
-/

namespace A302247.P9167144318333383510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227349 (A078881 (n + 1)).toNat

end

end A302247.P9167144318333383510

/-! ## A302247.P5684907850768442063

`gcd(A211098(n+1), A331889(n+1))`
-/

namespace A302247.P5684907850768442063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A211098 (n + 1)) (A331889 (n + 1))

end

end A302247.P5684907850768442063

/-!
# A302248: Irregular triangle read by rows in which the odd-indexed terms of the n-th row together with the even-indexed terms of the same row but listed in reverse order give the n-th row of triangle A299778.

The programs for A302248, there is no canonical definition to state claims against.
-/

/-! ## A302248.P8525165601179260873

`A299778(A246074(n+1))`
-/

namespace A302248.P8525165601179260873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299778 (A246074 (n + 1)).toNat

end

end A302248.P8525165601179260873

/-!
# A302249: a(n) is the number of divisors of A279254(n) in Gaussian integers.

The programs for A302249, there is no canonical definition to state claims against.
-/

/-! ## A302249.P10212608116638076990

`A062327(A279254(n+1))`
-/

namespace A302249.P10212608116638076990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062327 (A279254 (n + 1)).toNat

end

end A302249.P10212608116638076990

/-! ## A302249.P16198086418756547583

`record[A062327(n+1)]`
-/

namespace A302249.P16198086418756547583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062327 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302249.P16198086418756547583

/-! ## A302249.P14677459687751862805

`record[A035154(n+1)*A069735(n+1)]`
-/

namespace A302249.P14677459687751862805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035154 (n + 1) * A069735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302249.P14677459687751862805

/-! ## A302249.P8593499988854829897

`record[A062327(A029579(n))/A000034(n)]`
-/

namespace A302249.P8593499988854829897
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062327 (A029579 n).toNat : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302249.P8593499988854829897

/-! ## A302249.P11635128789207240419

`record[A343068(2*(n+1)²)]`
-/

namespace A302249.P11635128789207240419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343068 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302249.P11635128789207240419

/-!
# A302250: The number of antichains in the lattice of set partitions of an n-element set.

The programs for A302250, there is no canonical definition to state claims against.
-/

/-! ## A302250.P7458885078900055818

`A302251(1+n)+1`
-/

namespace A302250.P7458885078900055818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302251 (1 + n) + 1

end

end A302250.P7458885078900055818

/-!
# A302251: The number of nonempty antichains in the lattice of set partitions.

The programs for A302251, there is no canonical definition to state claims against.
-/

/-! ## A302251.P12586615983263198620

`A302250(1+n)-1`
-/

namespace A302251.P12586615983263198620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302250 (1 + n) - 1

end

end A302251.P12586615983263198620

/-!
# A302252: Smallest number with exactly n divisors in Gaussian integers.

The programs for A302252, there is no canonical definition to state claims against.
-/

/-! ## A302252.P11237804184676612146

`fo[A062327(n+1)-1]+1`
-/

namespace A302252.P11237804184676612146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062327 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A302252.P11237804184676612146

/-! ## A302252.P542673531895229710

`A276618(A075301(n)%A140635(2^n))`
-/

namespace A302252.P542673531895229710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276618 (Int.tmod (A075301 n) (A140635 (2 ^ n))).toNat

end

end A302252.P542673531895229710

/-! ## A302252.P18425221863360499662

`A276618(A075301(n))`
-/

namespace A302252.P18425221863360499662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276618 (A075301 n).toNat

end

end A302252.P18425221863360499662

/-! ## A302252.P6089328909831110171

`A387325(n)+A113983(A387336(n))`
-/

namespace A302252.P6089328909831110171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387325 n + A113983 (A387336 n).toNat

end

end A302252.P6089328909831110171

/-! ## A302252.P17400900024090148121

`A117303(n+1)+A004788(A271424(n)!)`
-/

namespace A302252.P17400900024090148121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117303 (n + 1) + A004788 (Nat.factorial (A271424 n).toNat)

end

end A302252.P17400900024090148121

/-!
# A302253: Positions of 3 in A190436.

The programs for A302253, the canonical program `A302253.P10939319436702998548` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302253 has offset 1).

The definition of A302253 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302253.P100122249124200268

`floor(ϕ*A190432(n+1))`
-/

namespace A302253.P100122249124200268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (A190432 (n + 1) : ℝ)⌋

end

end A302253.P100122249124200268

namespace A302253

/-- `floor(ϕ*A190432(n+1))` -/
def P100122249124200268.Spec : Prop :=
  ∀ n, P100122249124200268.a n = A302253 (n + 1)

end A302253

/-! ## A302253.P3517121034276088801

`A190435(1+n)+A190432(n+1)`
-/

namespace A302253.P3517121034276088801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190435 (1 + n) + A190432 (n + 1)

end

end A302253.P3517121034276088801

namespace A302253

/-- `A190435(1+n)+A190432(n+1)` -/
def P3517121034276088801.Spec : Prop :=
  ∀ n, P3517121034276088801.a n = A302253 (n + 1)

end A302253

/-! ## A302253.P10939319436702998548

`A140398(n+1)+2*A190435(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A302253

/-- `A140398(n+1)+2*A190435(n+1)` -/
def P10939319436702998548.Spec : Prop :=
  ∀ n, P10939319436702998548.a n = A302253 (n + 1)

theorem P10939319436702998548.correct : P10939319436702998548.Spec := by
  intro n
  simp only [A302253, Nat.add_sub_cancel]

end A302253

/-! ## A302253.P8358437668059648759

`2*A190432(n+1)-A140398(n+1)`
-/

namespace A302253.P8358437668059648759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190432 (n + 1) - A140398 (n + 1)

end

end A302253.P8358437668059648759

namespace A302253

/-- `2*A190432(n+1)-A140398(n+1)` -/
def P8358437668059648759.Spec : Prop :=
  ∀ n, P8358437668059648759.a n = A302253 (n + 1)

theorem P8358437668059648759.correct : P8358437668059648759.Spec := by
  intro n
  simp only [A302253, Nat.add_sub_cancel, A302253.P8358437668059648759.a, A302253.P10939319436702998548.a, A140398, A140398.P5444328004615797917.f1, A140398.P5444328004615797917.f2, A140398.P5444328004615797917.a, A190432, A190432.P422911984236821990.a, A190435, A190435.P4495769777369891294.f1, A190435.P4495769777369891294.a, A184659, A184659.P18094353049432743810.a, A327174, A327174.P2217078710281402132.a, A096270, A096270.P2264202797001532424.f1, A096270.P2264202797001532424.a, A187944, A187944.P13840225638985330360.f2, A187944.P13840225638985330360.f1, A187944.P13840225638985330360.a, A187945, A187945.P5960428020690763838.f1, A187945.P5960428020690763838.f2, A187945.P5960428020690763838.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A302253

/-! ## A302253.P12321326016810413228

`A003623(A140398(n+1))`
-/

namespace A302253.P12321326016810413228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (A140398 (n + 1)).toNat

end

end A302253.P12321326016810413228

namespace A302253

/-- `A003623(A140398(n+1))` -/
def P12321326016810413228.Spec : Prop :=
  ∀ n, P12321326016810413228.a n = A302253 (n + 1)

end A302253

/-! ## A302253.P11712899546012968159

`A004957(A190435(n+1)-1)+2`
-/

namespace A302253.P11712899546012968159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 (A190435 (n + 1) - 1).toNat + 2

end

end A302253.P11712899546012968159

namespace A302253

/-- `A004957(A190435(n+1)-1)+2` -/
def P11712899546012968159.Spec : Prop :=
  ∀ n, P11712899546012968159.a n = A302253 (n + 1)

end A302253

/-! ## A302253.P15366758338699598069

`A004937(A190435(n+1))`
-/

namespace A302253.P15366758338699598069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 (A190435 (n + 1)).toNat

end

end A302253.P15366758338699598069

namespace A302253

/-- `A004937(A190435(n+1))` -/
def P15366758338699598069.Spec : Prop :=
  ∀ n, P15366758338699598069.a n = A302253 (n + 1)

end A302253

/-! ## A302253.P3854320340881983802

`A004957(∩[A184659(n+1), A004957(n)])`
-/

namespace A302253.P3854320340881983802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A302253.P3854320340881983802

namespace A302253

/-- `A004957(∩[A184659(n+1), A004957(n)])` -/
def P3854320340881983802.Spec : Prop :=
  ∀ n, P3854320340881983802.a n = A302253 (n + 1)

end A302253

/-! ## A302253.P14791710378163556801

`A026352(∩[A184659(n+1), A026352(n)])`
-/

namespace A302253.P14791710378163556801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A302253.P14791710378163556801

namespace A302253

/-- `A026352(∩[A184659(n+1), A026352(n)])` -/
def P14791710378163556801.Spec : Prop :=
  ∀ n, P14791710378163556801.a n = A302253 (n + 1)

end A302253

/-! ## A302253.P12928384358900155808

`A184659(∩[A184659(n+1), A066096(n)])`
-/

namespace A302253.P12928384358900155808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A302253.P12928384358900155808

namespace A302253

/-- `A184659(∩[A184659(n+1), A066096(n)])` -/
def P12928384358900155808.Spec : Prop :=
  ∀ n, P12928384358900155808.a n = A302253 (n + 1)

end A302253

/-! ## A302253.P17989110033487693509

`A000201(A190432(n+1))`
-/

namespace A302253.P17989110033487693509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A190432 (n + 1)).toNat

end

end A302253.P17989110033487693509

namespace A302253

/-- `A000201(A190432(n+1))` -/
def P17989110033487693509.Spec : Prop :=
  ∀ n, P17989110033487693509.a n = A302253 (n + 1)

end A302253

/-!
# A302254: Exponent of the group of the Gaussian integers in a reduced system modulo (1+i)^n.

The programs for A302254, the canonical program `A302254.P13556079208698521694` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302254 has offset 0).

The definition of A302254 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302254.P13556079208698521694

`ogf((1+x+2x^3-4x^5-4x^6-4x^7)/(1-2x^2))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A302254

/-- `ogf((1+x+2x^3-4x^5-4x^6-4x^7)/(1-2x^2))` -/
def P13556079208698521694.Spec : Prop :=
  ∀ n, P13556079208698521694.a n = A302254 n

theorem P13556079208698521694.correct : P13556079208698521694.Spec := by
  intro n
  simp only [A302254]

end A302254

/-! ## A302254.P12687547063847387431

`2*a(n-2)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=4, a(5)=4, a(6)=4, a(7)=4`
-/

namespace A302254.P12687547063847387431
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 4, 4, 4, 4, 4] fun n a =>
  2 * a (n - 2)

end

end A302254.P12687547063847387431

namespace A302254

/-- `2*a(n-2)` -/
def P12687547063847387431.Spec : Prop :=
  ∀ n, (P12687547063847387431.a n : ℤ) = A302254 n

end A302254

/-! ## A302254.P18141203405162867533

`a(n-2)+a(n-2)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=4, a(5)=4, a(6)=4, a(7)=4`
-/

namespace A302254.P18141203405162867533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 4, 4, 4, 4, 4] fun n a =>
  a (n - 2) + a (n - 2)

end

end A302254.P18141203405162867533

namespace A302254

/-- `a(n-2)+a(n-2)` -/
def P18141203405162867533.Spec : Prop :=
  ∀ n, (P18141203405162867533.a n : ℤ) = A302254 n

end A302254

/-! ## A302254.P267768557606298816

`lcm(a(n-1), A158780(n))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A302254.P267768557606298816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 4] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A158780 n)

end

end A302254.P267768557606298816

namespace A302254

/-- `lcm(a(n-1), A158780(n))` -/
def P267768557606298816.Spec : Prop :=
  ∀ n, (P267768557606298816.a n : ℤ) = A302254 n

end A302254

/-! ## A302254.P5190264953467044170

`A011782(∑[char[A057543(n)]])`
-/

namespace A302254.P5190264953467044170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057543 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A302254.P5190264953467044170

namespace A302254

/-- `A011782(∑[char[A057543(n)]])` -/
def P5190264953467044170.Spec : Prop :=
  ∀ n, P5190264953467044170.a n = A302254 n

end A302254

/-! ## A302254.P5495705729430248742

`round(2^round((n-3)/2))+A038519(n)%4`
-/

namespace A302254.P5495705729430248742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ (SequenceMachineLib.roundAway (((n : ℤ) - 3 : ℚ) / 2) : ℤ)) + Int.tmod (A038519 n) 4

end

end A302254.P5495705729430248742

namespace A302254

/-- `round(2^round((n-3)/2))+A038519(n)%4` -/
def P5495705729430248742.Spec : Prop :=
  ∀ n, P5495705729430248742.a n = A302254 n

end A302254

/-! ## A302254.P1761314563140702341

`gcd(lcm(4, A024175(n)), A011782(n))`
-/

namespace A302254.P1761314563140702341
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.lcm 4 (A024175 n) : ℤ) (A011782 n)

end

end A302254.P1761314563140702341

namespace A302254

/-- `gcd(lcm(4, A024175(n)), A011782(n))` -/
def P1761314563140702341.Spec : Prop :=
  ∀ n, (P1761314563140702341.a n : ℤ) = A302254 n

end A302254

/-!
# A302255: Total domination number of the n-antiprism graph.

The programs for A302255, the canonical program `A302255.P18129636687704175036` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302255 has offset 0).

The definition of A302255 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302255.P18129636687704175036

`a(n-7)+4` with `a(0)=0, a(1)=1, a(2)=2, a(3)=2, a(4)=3, a(5)=4, a(6)=4`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A302255

/-- `a(n-7)+4` -/
def P18129636687704175036.Spec : Prop :=
  ∀ n, (P18129636687704175036.a n : ℤ) = A302255 n

theorem P18129636687704175036.correct : P18129636687704175036.Spec := by
  intro n
  simp only [A302255]

end A302255

/-! ## A302255.P14118172337209313701

`ogf((x+x^2+x^4+x^5)/(1-x-x^7+x^8))`
-/

namespace A302255.P14118172337209313701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 0, 1, 1] [1, -1, 0, 0, 0, 0, 0, -1, 1] n

end

end A302255.P14118172337209313701

namespace A302255

/-- `ogf((x+x^2+x^4+x^5)/(1-x-x^7+x^8))` -/
def P14118172337209313701.Spec : Prop :=
  ∀ n, P14118172337209313701.a n = A302255 n

end A302255

/-! ## A302255.P12508416945719588743

`∑[(n%7)²%3]`
-/

namespace A302255.P12508416945719588743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 7) ^ 2 % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302255.P12508416945719588743

namespace A302255

/-- `∑[(n%7)²%3]` -/
def P12508416945719588743.Spec : Prop :=
  ∀ n, (P12508416945719588743.a n : ℤ) = A302255 n

end A302255

/-! ## A302255.P9481775105729444953

`∑[(∑[n]%7)%2]`
-/

namespace A302255.P9481775105729444953
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 7 % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302255.P9481775105729444953

namespace A302255

/-- `∑[(∑[n]%7)%2]` -/
def P9481775105729444953.Spec : Prop :=
  ∀ n, (P9481775105729444953.a n : ℤ) = A302255 n

end A302255

/-! ## A302255.P14152490505293623951

`Δ[floor(∑[4*n/7])]`
-/

namespace A302255.P14152490505293623951
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * n : ℚ) / 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A302255.P14152490505293623951

namespace A302255

/-- `Δ[floor(∑[4*n/7])]` -/
def P14152490505293623951.Spec : Prop :=
  ∀ n, P14152490505293623951.a n = A302255 n

end A302255

/-! ## A302255.P15793891129173775236

`∑[and(1, ∑[round(8*n/7)])]`
-/

namespace A302255.P15793891129173775236
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302255.P15793891129173775236

namespace A302255

/-- `∑[and(1, ∑[round(8*n/7)])]` -/
def P15793891129173775236.Spec : Prop :=
  ∀ n, P15793891129173775236.a n = A302255 n

end A302255

/-! ## A302255.P6923154998527119572

`∑[char[ceil(xor(1, 7*n)/4)]]`
-/

namespace A302255.P6923154998527119572
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (7 * n) : ℚ) / 4⌉

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302255.P6923154998527119572

namespace A302255

/-- `∑[char[ceil(xor(1, 7*n)/4)]]` -/
def P6923154998527119572.Spec : Prop :=
  ∀ n, (P6923154998527119572.a n : ℤ) = A302255 n

end A302255

/-! ## A302255.P16021297686001904432

`∑[char[a(n-4)+7]]` with `a(0)=1, a(1)=2, a(2)=4, a(3)=5`
-/

namespace A302255.P16021297686001904432
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 5] fun n f2 =>
  f2 (n - 4) + 7

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302255.P16021297686001904432

namespace A302255

/-- `∑[char[a(n-4)+7]]` -/
def P16021297686001904432.Spec : Prop :=
  ∀ n, (P16021297686001904432.a n : ℤ) = A302255 n

end A302255

/-! ## A302255.P1612083512458600305

`fp[A047380(n+1)]`
-/

namespace A302255.P1612083512458600305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047380 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A302255.P1612083512458600305

namespace A302255

/-- `fp[A047380(n+1)]` -/
def P1612083512458600305.Spec : Prop :=
  ∀ n, (P1612083512458600305.a n : ℤ) = A302255 n

end A302255

/-! ## A302255.P11805418648165369448

`∑[char[A008612(n)+n]]`
-/

namespace A302255.P11805418648165369448
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302255.P11805418648165369448

namespace A302255

/-- `∑[char[A008612(n)+n]]` -/
def P11805418648165369448.Spec : Prop :=
  ∀ n, (P11805418648165369448.a n : ℤ) = A302255 n

end A302255

/-! ## A302255.P17713166059164547210

`fp[A047344(n+1)+1]`
-/

namespace A302255.P17713166059164547210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047344 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A302255.P17713166059164547210

namespace A302255

/-- `fp[A047344(n+1)+1]` -/
def P17713166059164547210.Spec : Prop :=
  ∀ n, (P17713166059164547210.a n : ℤ) = A302255 n

end A302255

/-! ## A302255.P13453113606428066805

`fp[A047331(n+1)-1]`
-/

namespace A302255.P13453113606428066805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047331 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A302255.P13453113606428066805

namespace A302255

/-- `fp[A047331(n+1)-1]` -/
def P13453113606428066805.Spec : Prop :=
  ∀ n, (P13453113606428066805.a n : ℤ) = A302255 n

end A302255

/-! ## A302255.P12167936736283994666

`ceil(∑[ceil((A053879(n)/2)²)]/3)`
-/

namespace A302255.P12167936736283994666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A053879 n : ℚ) / 2) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌉

end

end A302255.P12167936736283994666

namespace A302255

/-- `ceil(∑[ceil((A053879(n)/2)²)]/3)` -/
def P12167936736283994666.Spec : Prop :=
  ∀ n, P12167936736283994666.a n = A302255 n

end A302255

/-! ## A302255.P12669711009387527352

`A004523(A145569(n)+1)`
-/

namespace A302255.P12669711009387527352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A145569 n + 1).toNat

end

end A302255.P12669711009387527352

namespace A302255

/-- `A004523(A145569(n)+1)` -/
def P12669711009387527352.Spec : Prop :=
  ∀ n, P12669711009387527352.a n = A302255 n

end A302255

/-! ## A302255.P7350656602991990207

`n-A057355(A057359(n))`
-/

namespace A302255.P7350656602991990207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A057355 (A057359 n).toNat

end

end A302255.P7350656602991990207

namespace A302255

/-- `n-A057355(A057359(n))` -/
def P7350656602991990207.Spec : Prop :=
  ∀ n, P7350656602991990207.a n = A302255 n

end A302255

/-! ## A302255.P5546685938300191513

`∑[A011655(∑[A109720(n)])]`
-/

namespace A302255.P5546685938300191513
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109720 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302255.P5546685938300191513

namespace A302255

/-- `∑[A011655(∑[A109720(n)])]` -/
def P5546685938300191513.Spec : Prop :=
  ∀ n, P5546685938300191513.a n = A302255 n

end A302255

/-! ## A302255.P3196768794082032858

`A047565(n+1)-A289139(n)`
-/

namespace A302255.P3196768794082032858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047565 (n + 1) - A289139 n

end

end A302255.P3196768794082032858

namespace A302255

/-- `A047565(n+1)-A289139(n)` -/
def P3196768794082032858.Spec : Prop :=
  ∀ n, P3196768794082032858.a n = A302255 n

end A302255

/-! ## A302255.P12011071629828673136

`n-A057357(n-A011656(n))`
-/

namespace A302255.P12011071629828673136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A057357 ((n : ℤ) - A011656 n).toNat

end

end A302255.P12011071629828673136

namespace A302255

/-- `n-A057357(n-A011656(n))` -/
def P12011071629828673136.Spec : Prop :=
  ∀ n, P12011071629828673136.a n = A302255 n

end A302255

/-! ## A302255.P11205701153645260210

`A083120(n+1)-A004777(n+1)`
-/

namespace A302255.P11205701153645260210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083120 (n + 1) - A004777 (n + 1)

end

end A302255.P11205701153645260210

namespace A302255

/-- `A083120(n+1)-A004777(n+1)` -/
def P11205701153645260210.Spec : Prop :=
  ∀ n, P11205701153645260210.a n = A302255 n

end A302255

/-!
# A302256: Hyper-Wiener index of rows of unit cells on the face-centered cubic lattice.

The programs for A302256, the canonical program `A302256.P9747349412393931359` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302256 has offset 1).

The definition of A302256 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302256.P9747349412393931359

`(81*(n+1)^4+261*(n+1)^3+264*(n+1)²+540*(n+1)+132)/6`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A302256

/-- `(81*(n+1)^4+261*(n+1)^3+264*(n+1)²+540*(n+1)+132)/6` -/
def P9747349412393931359.Spec : Prop :=
  ∀ n, P9747349412393931359.a n = (A302256 (n + 1) : ℚ)

end A302256

/-!
# A302257: Number of minimal generating sets {x_1, x_2, ..., x_r} of (Z/nZ)* such that Product_{i=1..r} (x_i)^(e_i) == 1 (mod n) implies that (x_i)^(e_i) == 1 (mod n) for 1 <= i <= r. Here (Z/nZ)* is the multiplicative group of integers modulo n.

The programs for A302257, there is no canonical definition to state claims against.
-/

/-! ## A302257.P1147386319742306565

`A327790(1+n)*A327791(n+1)`
-/

namespace A302257.P1147386319742306565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327790 (1 + n) * A327791 (n + 1)

end

end A302257.P1147386319742306565

/-! ## A302257.P7263853249712536005

`A206941(n+1)*A327791(n+1)`
-/

namespace A302257.P7263853249712536005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206941 (n + 1) * A327791 (n + 1)

end

end A302257.P7263853249712536005

/-! ## A302257.P17800095460031034809

`A001222(A039649(n+1)^A111725(n+1))`
-/

namespace A302257.P17800095460031034809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A039649 (n + 1) : ℚ) ^ (A111725 (n + 1) : ℤ))).toNat

end

end A302257.P17800095460031034809

/-! ## A302257.P2099131954444336664

`A083345(A039649(n+1)^A111725(n+1))`
-/

namespace A302257.P2099131954444336664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083345 (SequenceMachineLib.roundAway ((A039649 (n + 1) : ℚ) ^ (A111725 (n + 1) : ℤ))).toNat

end

end A302257.P2099131954444336664

/-!
# A302259: Number of n X n 0..1 arrays with every element equal to 0, 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302259, there is no canonical definition to state claims against.
-/

/-! ## A302259.P11816649797223240607

`A302265(∑[4*n]+1)`
-/

namespace A302259.P11816649797223240607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302259.P11816649797223240607

/-! ## A302259.P17502290044755868447

`record[A003982(n)*A302265(n+1)]`
-/

namespace A302259.P17502290044755868447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A302265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302259.P17502290044755868447

/-! ## A302259.P2396809299036829999

`record[gcd(A008482(n), A302265(n+1))]`
-/

namespace A302259.P2396809299036829999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A302265 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302259.P2396809299036829999

/-!
# A302260: Number of n X 3 0..1 arrays with every element equal to 0, 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302260, there is no canonical definition to state claims against.
-/

/-! ## A302260.P3134680832422015005

`A302265(∑[n+3]+1)`
-/

namespace A302260.P3134680832422015005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302260.P3134680832422015005

/-! ## A302260.P16034915125314320649

`record[A302265(A198464(n+1))]`
-/

namespace A302260.P16034915125314320649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302260.P16034915125314320649

/-!
# A302261: Number of nX4 0..1 arrays with every element equal to 0, 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302261, there is no canonical definition to state claims against.
-/

/-! ## A302261.P3649913526978306367

`A302265(A141214(n+1))`
-/

namespace A302261.P3649913526978306367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (A141214 (n + 1)).toNat

end

end A302261.P3649913526978306367

/-!
# A302262: Number of nX5 0..1 arrays with every element equal to 0, 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302262, there is no canonical definition to state claims against.
-/

/-! ## A302262.P4532894967946268173

`A302265(Δ[A264443(n)])`
-/

namespace A302262.P4532894967946268173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (f1 (n + 1) - f1 n).toNat

end

end A302262.P4532894967946268173

/-!
# A302263: Number of nX6 0..1 arrays with every element equal to 0, 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302263, there is no canonical definition to state claims against.
-/

/-! ## A302263.P8300470619525983530

`A302265(A052905(n+3))`
-/

namespace A302263.P8300470619525983530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (A052905 (n + 3)).toNat

end

end A302263.P8300470619525983530

/-!
# A302264: Number of nX7 0..1 arrays with every element equal to 0, 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302264, there is no canonical definition to state claims against.
-/

/-! ## A302264.P1267011086589172770

`A302265(A055999(n+4))`
-/

namespace A302264.P1267011086589172770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (A055999 (n + 4)).toNat

end

end A302264.P1267011086589172770

/-!
# A302265: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302265, there is no canonical definition to state claims against.
-/

/-! ## A302265.P3540424623445986205

`A302965(n+1)+A016389(A022166(n))`
-/

namespace A302265.P3540424623445986205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (n + 1) + A016389 (A022166 n).toNat

end

end A302265.P3540424623445986205

/-! ## A302265.P17988530089308889045

`A302965(n+1)+A016389(A027336(n))`
-/

namespace A302265.P17988530089308889045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (n + 1) + A016389 (A027336 n).toNat

end

end A302265.P17988530089308889045

/-! ## A302265.P2219288157595105672

`A302965(n+1)+A016389(A176561(n))`
-/

namespace A302265.P2219288157595105672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (n + 1) + A016389 (A176561 n).toNat

end

end A302265.P2219288157595105672

/-! ## A302265.P2940724953394829006

`A302965(n+1)-A011731(A022171(n))`
-/

namespace A302265.P2940724953394829006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (n + 1) - A011731 (A022171 n).toNat

end

end A302265.P2940724953394829006

/-! ## A302265.P9180461181536971958

`A302965(n+1)-A025465(A022345(n))`
-/

namespace A302265.P9180461181536971958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (n + 1) - A025465 (A022345 n).toNat

end

end A302265.P9180461181536971958

/-!
# A302266: Number of 2Xn 0..1 arrays with every element equal to 0, 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302266, the canonical program `A302266.P2891554484872098359` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302266 has offset 1).

The definition of A302266 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302266.P13599266347680522315

`ogf((2+2x+3x^2+2x^3)/(1-3x-x^2-4x^3-4x^4))`
-/

namespace A302266.P13599266347680522315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2, 3, 2] [1, -3, -1, -4, -4] n

end

end A302266.P13599266347680522315

namespace A302266

/-- `ogf((2+2x+3x^2+2x^3)/(1-3x-x^2-4x^3-4x^4))` -/
def P13599266347680522315.Spec : Prop :=
  ∀ n, P13599266347680522315.a n = A302266 (n + 1)

end A302266

/-! ## A302266.P2891554484872098359

`3*a(n-1)+a(n-2)+4*a(n-3)+4*a(n-4)` with `a(0)=2, a(1)=8, a(2)=29, a(3)=105`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A302266

/-- `3*a(n-1)+a(n-2)+4*a(n-3)+4*a(n-4)` -/
def P2891554484872098359.Spec : Prop :=
  ∀ n, (P2891554484872098359.a n : ℤ) = A302266 (n + 1)

theorem P2891554484872098359.correct : P2891554484872098359.Spec := by
  intro n
  simp only [A302266, Nat.add_sub_cancel]

end A302266

/-! ## A302266.P2256535398671313689

`A302265(∑[n+1]+2)`
-/

namespace A302266.P2256535398671313689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A302266.P2256535398671313689

namespace A302266

/-- `A302265(∑[n+1]+2)` -/
def P2256535398671313689.Spec : Prop :=
  ∀ n, P2256535398671313689.a n = A302266 (n + 1)

end A302266

/-! ## A302266.P10579362193677608155

`A302808(∑[n+1]+2)`
-/

namespace A302266.P10579362193677608155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A302266.P10579362193677608155

namespace A302266

/-- `A302808(∑[n+1]+2)` -/
def P10579362193677608155.Spec : Prop :=
  ∀ n, P10579362193677608155.a n = A302266 (n + 1)

end A302266

/-! ## A302266.P12280755110483965392

`A302965(∑[n+1]+2)`
-/

namespace A302266.P12280755110483965392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A302266.P12280755110483965392

namespace A302266

/-- `A302965(∑[n+1]+2)` -/
def P12280755110483965392.Spec : Prop :=
  ∀ n, P12280755110483965392.a n = A302266 (n + 1)

end A302266

/-!
# A302267: Number of 3 X n 0..1 arrays with every element equal to 0, 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302267, there is no canonical definition to state claims against.
-/

/-! ## A302267.P14699936566912857943

`A302265(∑[n+2]+4)`
-/

namespace A302267.P14699936566912857943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A302267.P14699936566912857943

/-!
# A302268: Number of 4 X n 0..1 arrays with every element equal to 0, 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302268, there is no canonical definition to state claims against.
-/

/-! ## A302268.P12658280443862529709

`A302265(A141214(n)+7)`
-/

namespace A302268.P12658280443862529709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (A141214 n + 7).toNat

end

end A302268.P12658280443862529709

/-!
# A302269: Number of 5 X n 0..1 arrays with every element equal to 0, 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302269, there is no canonical definition to state claims against.
-/

/-! ## A302269.P7231059714062469831

`A302265(A167499(n+3))`
-/

namespace A302269.P7231059714062469831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (A167499 (n + 3)).toNat

end

end A302269.P7231059714062469831

/-!
# A302270: Number of 6 X n 0..1 arrays with every element equal to 0, 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302270, there is no canonical definition to state claims against.
-/

/-! ## A302270.P13312698306622030776

`A302265(A166136(n+4))`
-/

namespace A302270.P13312698306622030776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (A166136 (n + 4)).toNat

end

end A302270.P13312698306622030776

/-!
# A302271: Number of 7 X n 0..1 arrays with every element equal to 0, 1, 2 or 3 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302271, there is no canonical definition to state claims against.
-/

/-! ## A302271.P1631499542062104581

`A302265(A056119(n)+28)`
-/

namespace A302271.P1631499542062104581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (A056119 n + 28).toNat

end

end A302271.P1631499542062104581

/-!
# A302272: Number of n X n 0..1 arrays with every element equal to 1, 2 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302272, there is no canonical definition to state claims against.
-/

/-! ## A302272.P15161264820734810054

`A302278(∑[4*n]+1)`
-/

namespace A302272.P15161264820734810054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302272.P15161264820734810054

/-! ## A302272.P2301892666557741361

`record[A302278(A330613(n+1))]`
-/

namespace A302272.P2301892666557741361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302272.P2301892666557741361

/-! ## A302272.P3314941473863723905

`record[A003982(n)*A302278(n+1)]`
-/

namespace A302272.P3314941473863723905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A302278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302272.P3314941473863723905

/-! ## A302272.P9371887926381140473

`record[A005369(n)*A302278(2*n+1)]`
-/

namespace A302272.P9371887926381140473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 n * A302278 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302272.P9371887926381140473

/-!
# A302273: Number of n X 3 0..1 arrays with every element equal to 1, 2 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302273, there is no canonical definition to state claims against.
-/

/-! ## A302273.P652719748244268648

`A302278(∑[n+3]+1)`
-/

namespace A302273.P652719748244268648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302273.P652719748244268648

/-! ## A302273.P2743730806896346651

`record[gcd(A055300(n+2), A302278(n+1))]`
-/

namespace A302273.P2743730806896346651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055300 (n + 2)) (A302278 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302273.P2743730806896346651

/-!
# A302274: Number of n X 4 0..1 arrays with every element equal to 1, 2 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302274, there is no canonical definition to state claims against.
-/

/-! ## A302274.P1749673599768268459

`A302278(∑[n+4]+3)`
-/

namespace A302274.P1749673599768268459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A302274.P1749673599768268459

/-! ## A302274.P15241066340418397852

`A302728(∑[n+4]+3)`
-/

namespace A302274.P15241066340418397852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302728 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A302274.P15241066340418397852

/-!
# A302275: Number of n X 5 0..1 arrays with every element equal to 1, 2 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302275, there is no canonical definition to state claims against.
-/

/-! ## A302275.P10242312773174280479

`A302278(Δ[A264443(n)])`
-/

namespace A302275.P10242312773174280479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (f1 (n + 1) - f1 n).toNat

end

end A302275.P10242312773174280479

/-!
# A302276: Number of n X 6 0..1 arrays with every element equal to 1, 2 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302276, there is no canonical definition to state claims against.
-/

/-! ## A302276.P13767858642620209234

`A302278(∑[n+6]+10)`
-/

namespace A302276.P13767858642620209234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A302276.P13767858642620209234

/-!
# A302277: Number of n X 7 0..1 arrays with every element equal to 1, 2 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302277, there is no canonical definition to state claims against.
-/

/-! ## A302277.P2735069280063339399

`A302278(A055999(n+4))`
-/

namespace A302277.P2735069280063339399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (A055999 (n + 4)).toNat

end

end A302277.P2735069280063339399

/-!
# A302278: T(n,k) = number of n X k 0..1 arrays with every element equal to 1, 2 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302278, there is no canonical definition to state claims against.
-/

/-! ## A302278.P3945205638402285657

`A302728(n+1)-A198318(A198318(2*(n+1)))`
-/

namespace A302278.P3945205638402285657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302728 (n + 1) - A198318 (A198318 (2 * (n + 1))).toNat

end

end A302278.P3945205638402285657

/-! ## A302278.P11246190042469309682

`A302728(n+1)`
-/

namespace A302278.P11246190042469309682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302728 (n + 1)

end

end A302278.P11246190042469309682

/-! ## A302278.P8460171504029027566

`A302528(A004885(n+2))`
-/

namespace A302278.P8460171504029027566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302528 (A004885 (n + 2)).toNat

end

end A302278.P8460171504029027566

/-! ## A302278.P5656326606105816123

`A374192(A337884(n+2))`
-/

namespace A302278.P5656326606105816123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374192 (A337884 (n + 2)).toNat

end

end A302278.P5656326606105816123

/-!
# A302279: Number of 2 X n 0..1 arrays with every element equal to 1, 2 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302279, the canonical program `A302279.P16671391687324915122` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302279 has offset 1).

The definition of A302279 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302279.P16671391687324915122

`a(n-1)+3*a(n-2)-4*a(n-4)` with `a(0)=0, a(1)=3, a(2)=7, a(3)=10, a(4)=27`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A302279

/-- `a(n-1)+3*a(n-2)-4*a(n-4)` -/
def P16671391687324915122.Spec : Prop :=
  ∀ n, P16671391687324915122.a n = A302279 (n + 1)

theorem P16671391687324915122.correct : P16671391687324915122.Spec := by
  intro n
  simp only [A302279, Nat.add_sub_cancel]

end A302279

/-! ## A302279.P1342647931364041570

`A297870(1+n)+A155559(n)`
-/

namespace A302279.P1342647931364041570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297870 (1 + n) + A155559 n

end

end A302279.P1342647931364041570

namespace A302279

/-- `A297870(1+n)+A155559(n)` -/
def P1342647931364041570.Spec : Prop :=
  ∀ n, P1342647931364041570.a n = A302279 (n + 1)

end A302279

/-! ## A302279.P3591543560884352755

`A297870(1+n)+Δ[A255047(n)]`
-/

namespace A302279.P3591543560884352755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297870 (1 + n) + (f1 (n + 1) - f1 n)

end

end A302279.P3591543560884352755

namespace A302279

/-- `A297870(1+n)+Δ[A255047(n)]` -/
def P3591543560884352755.Spec : Prop :=
  ∀ n, P3591543560884352755.a n = A302279 (n + 1)

end A302279

/-! ## A302279.P16543402630875255369

`A297870(n+1)+A000079(n)-A000007(n)`
-/

namespace A302279.P16543402630875255369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297870 (n + 1) + (A000079 n - A000007 n)

end

end A302279.P16543402630875255369

namespace A302279

/-- `A297870(n+1)+A000079(n)-A000007(n)` -/
def P16543402630875255369.Spec : Prop :=
  ∀ n, P16543402630875255369.a n = A302279 (n + 1)

end A302279

/-! ## A302279.P15574119951544658071

`A255047(n+1)+A297870(n+1)-A255047(n)`
-/

namespace A302279.P15574119951544658071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 (n + 1) + (A297870 (n + 1) - A255047 n)

end

end A302279.P15574119951544658071

namespace A302279

/-- `A255047(n+1)+A297870(n+1)-A255047(n)` -/
def P15574119951544658071.Spec : Prop :=
  ∀ n, P15574119951544658071.a n = A302279 (n + 1)

end A302279

/-! ## A302279.P13638893332724151898

`Δ[Δ[A304004(n+1)]]`
-/

namespace A302279.P13638893332724151898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304004 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A302279.P13638893332724151898

namespace A302279

/-- `Δ[Δ[A304004(n+1)]]` -/
def P13638893332724151898.Spec : Prop :=
  ∀ n, P13638893332724151898.a n = A302279 (n + 1)

end A302279

/-! ## A302279.P7746760964319956935

`(A297870(n+1)+A000079(n))%A302455(n+1)`
-/

namespace A302279.P7746760964319956935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297870 (n + 1) + A000079 n) (A302455 (n + 1))

end

end A302279.P7746760964319956935

namespace A302279

/-- `(A297870(n+1)+A000079(n))%A302455(n+1)` -/
def P7746760964319956935.Spec : Prop :=
  ∀ n, P7746760964319956935.a n = A302279 (n + 1)

end A302279

/-! ## A302279.P13071164951735816692

`A297870(n+1)+A000079(n)%A000244(n)`
-/

namespace A302279.P13071164951735816692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297870 (n + 1) + Int.tmod (A000079 n) (A000244 n)

end

end A302279.P13071164951735816692

namespace A302279

/-- `A297870(n+1)+A000079(n)%A000244(n)` -/
def P13071164951735816692.Spec : Prop :=
  ∀ n, P13071164951735816692.a n = A302279 (n + 1)

end A302279

/-!
# A302280: Number of 3 X n 0..1 arrays with every element equal to 1, 2 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302280, there is no canonical definition to state claims against.
-/

/-! ## A302280.P11643328937716410698

`A302278(∑[n+2]+4)`
-/

namespace A302280.P11643328937716410698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A302280.P11643328937716410698

/-! ## A302280.P3900938716814149870

`A302728(∑[n+2]+4)`
-/

namespace A302280.P3900938716814149870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302728 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A302280.P3900938716814149870

/-!
# A302281: Number of 4 X n 0..1 arrays with every element equal to 1, 2 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302281, there is no canonical definition to state claims against.
-/

/-! ## A302281.P9474600964903425650

`A302278(∑[n+3]+7)`
-/

namespace A302281.P9474600964903425650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A302281.P9474600964903425650

/-!
# A302282: Number of 5 X n 0..1 arrays with every element equal to 1, 2 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302282, there is no canonical definition to state claims against.
-/

/-! ## A302282.P4194100800483691078

`A302278(A167499(n+3))`
-/

namespace A302282.P4194100800483691078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (A167499 (n + 3)).toNat

end

end A302282.P4194100800483691078

/-!
# A302283: Number of 6 X n 0..1 arrays with every element equal to 1, 2 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302283, there is no canonical definition to state claims against.
-/

/-! ## A302283.P2451212645887074260

`A302278(A056115(n)+21)`
-/

namespace A302283.P2451212645887074260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (A056115 n + 21).toNat

end

end A302283.P2451212645887074260

/-!
# A302284: Number of 7 X n 0..1 arrays with every element equal to 1, 2 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302284, there is no canonical definition to state claims against.
-/

/-! ## A302284.P11001924368413529080

`A302278(A167487(n+5))`
-/

namespace A302284.P11001924368413529080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (A167487 (n + 5)).toNat

end

end A302284.P11001924368413529080

/-!
# A302285: Expansion of 1/(1 - x - x/(1 - 2*x - x/(1 - 3*x - x/(1 - 4*x - x/(1 - 5*x - x/(1 - ...)))))), a continued fraction.

The programs for A302285, there is no canonical definition to state claims against.
-/

/-! ## A302285.P919977502526586174

`A210434(∑[A188174(n+1)])`
-/

namespace A302285.P919977502526586174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210434 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A302285.P919977502526586174

/-! ## A302285.P16554913469037039052

`A195174(A220817(n+1)+n+2)`
-/

namespace A302285.P16554913469037039052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (A220817 (n + 1) + (n + 2 : ℤ)).toNat

end

end A302285.P16554913469037039052

/-!
# A302286: a(n) = [x^n] 1/(1 - n*x - x/(1 - n*x - x/(1 - n*x - x/(1 - n*x - x/(1 - ...))))), a continued fraction.

The programs for A302286, there is no canonical definition to state claims against.
-/

/-! ## A302286.P2546915667903648394

`A247507(C(n+n+1, 2)+n)`
-/

namespace A302286.P2546915667903648394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247507 (Nat.choose (n + n + 1) 2 + n)

end

end A302286.P2546915667903648394

/-! ## A302286.P7323232060429088268

`record[A176891(n+1)*A243631(n)]`
-/

namespace A302286.P7323232060429088268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176891 (n + 1) * A243631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302286.P7323232060429088268

/-! ## A302286.P14681760145017802580

`(n+1)*A008550(A001105(n+1))`
-/

namespace A302286.P14681760145017802580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008550 (A001105 (n + 1)).toNat

end

end A302286.P14681760145017802580

/-!
# A302287: G.f. A(x) satisfies: A(x) = Product_{k>=1} (1 + x^k*A(x))^k.

The programs for A302287, there is no canonical definition to state claims against.
-/

/-! ## A302287.P13496486191974691439

`A127757(A320654(n))`
-/

namespace A302287.P13496486191974691439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A320654 n).toNat

end

end A302287.P13496486191974691439

/-! ## A302287.P10775730213084171735

`A187186(A259384(n+1)+A154638(n))`
-/

namespace A302287.P10775730213084171735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187186 (A259384 (n + 1) + A154638 n).toNat

end

end A302287.P10775730213084171735

/-! ## A302287.P11096468539909488947

`A008621(A120588(n+3)-A155587(n))`
-/

namespace A302287.P11096468539909488947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A120588 (n + 3) - A155587 n).toNat

end

end A302287.P11096468539909488947

/-!
# A302288: G.f. A(x) satisfies: A(x) = Product_{k>=1} 1/(1 - k*x^k*A(x)).

The programs for A302288, there is no canonical definition to state claims against.
-/

/-! ## A302288.P11564173146511845206

`A065033(A150545(n)+∑[A047967(n)])`
-/

namespace A302288.P11564173146511845206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A150545 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A302288.P11564173146511845206

/-! ## A302288.P2023027218460693374

`A110654(A150545(n)+∑[A047967(n)])`
-/

namespace A302288.P2023027218460693374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A150545 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A302288.P2023027218460693374

/-! ## A302288.P214859148304310076

`A103221(Δ[Δ[A149348(n)]])`
-/

namespace A302288.P214859148304310076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149348 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (f1 (n + 1) - f1 n).toNat

end

end A302288.P214859148304310076

/-!
# A302289: G.f. A(x) satisfies: A(x) = Product_{k>=1} (1 + k*x^k*A(x)).

The programs for A302289, there is no canonical definition to state claims against.
-/

/-! ## A302289.P8618641643764302099

`A261585(A261955(n)+A154638(n))`
-/

namespace A302289.P8618641643764302099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (A261955 n + A154638 n).toNat

end

end A302289.P8618641643764302099

/-! ## A302289.P8063666322992717781

`A156043(n+1)-A008616(A259545(n+1))`
-/

namespace A302289.P8063666322992717781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156043 (n + 1) - A008616 (A259545 (n + 1)).toNat

end

end A302289.P8063666322992717781

/-!
# A302290: a(n) is the 2-norm of denominators of two-variable polynomials of degree n which are integer-valued.

The programs for A302290, the canonical program `A302290.P11762444788538897353` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302290 has offset 0).

The definition of A302290 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302290.P11762444788538897353

`∑{#}[n, A079559(#)*A079559(n-#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A302290

/-- `∑{#}[n, A079559(#)*A079559(n-#)]` -/
def P11762444788538897353.Spec : Prop :=
  ∀ n, P11762444788538897353.a n = A302290 n

theorem P11762444788538897353.correct : P11762444788538897353.Spec := by
  intro n
  simp only [A302290]

end A302290

/-! ## A302290.P16111960300237918548

`A279226(lt[A185225(n), A279226(n)])`
-/

namespace A302290.P16111960300237918548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279226 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A302290.P16111960300237918548

namespace A302290

/-- `A279226(lt[A185225(n), A279226(n)])` -/
def P16111960300237918548.Spec : Prop :=
  ∀ n, P16111960300237918548.a n = A302290 n

end A302290

/-! ## A302290.P1199665151908755879

`gcd(A056239(A282361(n+2)), A282385(n+1))`
-/

namespace A302290.P1199665151908755879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056239 (A282361 (n + 2)).toNat) (A282385 (n + 1))

end

end A302290.P1199665151908755879

namespace A302290

/-- `gcd(A056239(A282361(n+2)), A282385(n+1))` -/
def P1199665151908755879.Spec : Prop :=
  ∀ n, (P1199665151908755879.a n : ℤ) = A302290 n

end A302290

/-!
# A302291: a(n) is the period of the binary expansion of n.

The programs for A302291, there is no canonical definition to state claims against.
-/

/-! ## A302291.P8818586864919869314

`A070939(n)/A138904(n)`
-/

namespace A302291.P8818586864919869314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070939 n : ℚ) / (A138904 n : ℚ)

end

end A302291.P8818586864919869314

/-! ## A302291.P7375562980916035668

`A070939(n)/ceil(A070939(n)/A341766(n))`
-/

namespace A302291.P7375562980916035668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070939 n : ℚ) / (⌈(A070939 n : ℚ) / (A341766 n : ℚ)⌉ : ℚ)

end

end A302291.P7375562980916035668

/-! ## A302291.P3138411205964689300

`A342241(A257697(Δ[n²]))`
-/

namespace A302291.P3138411205964689300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342241 (A257697 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A302291.P3138411205964689300

/-! ## A302291.P7441914299464303836

`A302295(A257697(2*n+1))`
-/

namespace A302291.P7441914299464303836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302295 (A257697 (2 * n + 1)).toNat

end

end A302291.P7441914299464303836

/-! ## A302291.P2572676497833574608

`A113473(A028310(n))/A138904(n)`
-/

namespace A302291.P2572676497833574608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113473 (A028310 n).toNat : ℚ) / (A138904 n : ℚ)

end

end A302291.P2572676497833574608

/-!
# A302292: Number of positive integer pairs (x,y) such that there exist positive integers p and q satisfying p*x + q*y = n.

The programs for A302292, there is no canonical definition to state claims against.
-/

/-! ## A302292.P17696052703312370614

`A302294(n+1)-2*A000005(n+1)`
-/

namespace A302292.P17696052703312370614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302294 (n + 1) - 2 * A000005 (n + 1)

end

end A302292.P17696052703312370614

/-! ## A302292.P6639491740649941332

`A302294(n+1)-A062011(n+1)`
-/

namespace A302292.P6639491740649941332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302294 (n + 1) - A062011 (n + 1)

end

end A302292.P6639491740649941332

/-! ## A302292.P4477185940521359403

`A302294(n+1)-2*A179942(n+1)`
-/

namespace A302292.P4477185940521359403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302294 (n + 1) - 2 * A179942 (n + 1)

end

end A302292.P4477185940521359403

/-! ## A302292.P10203175738236728040

`A302294(n+1)-A004277(A000005(n+1))`
-/

namespace A302292.P10203175738236728040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302294 (n + 1) - A004277 (A000005 (n + 1)).toNat

end

end A302292.P10203175738236728040

/-! ## A302292.P11872055316330545652

`A302294(n+1)-A000005(A033286(n+1))`
-/

namespace A302292.P11872055316330545652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302294 (n + 1) - A000005 (A033286 (n + 1)).toNat

end

end A302292.P11872055316330545652

/-! ## A302292.P253087897649271259

`A302294(n+1)-A000005(A119416(n+1))`
-/

namespace A302292.P253087897649271259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302294 (n + 1) - A000005 (A119416 (n + 1)).toNat

end

end A302292.P253087897649271259

/-! ## A302292.P10140420324442687125

`A302294(n+1)-A004277(A179942(n+1))`
-/

namespace A302292.P10140420324442687125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302294 (n + 1) - A004277 (A179942 (n + 1)).toNat

end

end A302292.P10140420324442687125

/-!
# A302294: Number of nonnegative integer pairs (x,y) such that there exist positive integers p and q satisfying p*x + q*y = n.

The programs for A302294, there is no canonical definition to state claims against.
-/

/-! ## A302294.P16470232753969941179

`A302292(n+1)+A062011(n+1)`
-/

namespace A302294.P16470232753969941179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302292 (n + 1) + A062011 (n + 1)

end

end A302294.P16470232753969941179

/-! ## A302294.P6647393318605993908

`A114003(n+1)+A302292(n+1)+1`
-/

namespace A302294.P6647393318605993908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114003 (n + 1) + (A302292 (n + 1) + 1)

end

end A302294.P6647393318605993908

/-! ## A302294.P1623045728578340314

`A302292(1+n)+2*A000005(n+1)`
-/

namespace A302294.P1623045728578340314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302292 (1 + n) + 2 * A000005 (n + 1)

end

end A302294.P1623045728578340314

/-! ## A302294.P7653149990620434208

`A302292(n+1)+2*A179942(n+1)`
-/

namespace A302294.P7653149990620434208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302292 (n + 1) + 2 * A179942 (n + 1)

end

end A302294.P7653149990620434208

/-! ## A302294.P17268041120205656200

`A302292(n+1)+A005843(∏{e}[n+1, #+1])`
-/

namespace A302294.P17268041120205656200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302292 (n + 1) + A005843 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A302294.P17268041120205656200

/-! ## A302294.P13747414258097074078

`A302292(n+1)+A004277(A000005(n+1))`
-/

namespace A302294.P13747414258097074078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302292 (n + 1) + A004277 (A000005 (n + 1)).toNat

end

end A302294.P13747414258097074078

/-! ## A302294.P12499909060695638748

`A302292(n+1)+A000005(A033286(n+1))`
-/

namespace A302294.P12499909060695638748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302292 (n + 1) + A000005 (A033286 (n + 1)).toNat

end

end A302294.P12499909060695638748

/-! ## A302294.P3794067721432743319

`A302292(n+1)+A000005(A119416(n+1))`
-/

namespace A302294.P3794067721432743319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302292 (n + 1) + A000005 (A119416 (n + 1)).toNat

end

end A302294.P3794067721432743319

/-! ## A302294.P10102650136962781441

`A302292(n+1)+A004277(A179942(n+1))`
-/

namespace A302294.P10102650136962781441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302292 (n + 1) + A004277 (A179942 (n + 1)).toNat

end

end A302294.P10102650136962781441

/-!
# A302295: a(n) is the period of the binary expansion of n (with leading zeros allowed).

The programs for A302295, there is no canonical definition to state claims against.
-/

/-! ## A302295.P10369192641515203207

`A361942(A166166(n))`
-/

namespace A302295.P10369192641515203207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361942 (A166166 n).toNat

end

end A302295.P10369192641515203207

/-! ## A302295.P6327304286094238438

`A302291(n)-A110161(A304975(n))`
-/

namespace A302295.P6327304286094238438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302291 n - A110161 (A304975 n).toNat

end

end A302295.P6327304286094238438

/-! ## A302295.P13569335198486816885

`gcd(A076982(A076992(n+1)), A151382(n))`
-/

namespace A302295.P13569335198486816885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A076982 (A076992 (n + 1)).toNat) (A151382 n)

end

end A302295.P13569335198486816885

/-! ## A302295.P5145059155602547499

`A260390(A027306(n))+A071681(n+1)`
-/

namespace A302295.P5145059155602547499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260390 (A027306 n).toNat + A071681 (n + 1)

end

end A302295.P5145059155602547499

/-! ## A302295.P10945352075226653812

`A334440(A218897(n+1)^∑{d}[n+1, #%2])`
-/

namespace A302295.P10945352075226653812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334440 (A218897 (n + 1) ^ (∑ d ∈ Nat.divisors (f1 n), d % 2)).toNat

end

end A302295.P10945352075226653812

/-!
# A302296: Positive numbers that can be written in exactly one way as i*j*k with i < j < 2*i.

The programs for A302296, there is no canonical definition to state claims against.
-/

/-! ## A302296.P161087018024000550

`eq[1, A301989(n+1)]+1`
-/

namespace A302296.P161087018024000550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A302296.P161087018024000550

/-! ## A302296.P10854671126762593092

`A153152(eq[1, A301989(n+1)])`
-/

namespace A302296.P10854671126762593092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302296.P10854671126762593092

/-! ## A302296.P8106880175939500814

`A181569(eq[1, A301989(n+1)])`
-/

namespace A302296.P8106880175939500814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302296.P8106880175939500814

/-! ## A302296.P11818366090859902779

`filter[A002808(n+1), A301989(#)]`
-/

namespace A302296.P11818366090859902779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A301989 (f1 j).toNat = 1) n)

end

end A302296.P11818366090859902779

/-! ## A302296.P16888700289538274019

`record[A005279(n+1)/A301989(A005279(n+1))]`
-/

namespace A302296.P16888700289538274019
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005279 (n + 1) : ℚ) / (A301989 (A005279 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302296.P16888700289538274019

/-! ## A302296.P2972049137417028363

`record[A107487(n+1)/A301989(A107487(n+1))]`
-/

namespace A302296.P2972049137417028363
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107487 (n + 1) : ℚ) / (A301989 (A107487 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302296.P2972049137417028363

/-! ## A302296.P17827845930253469924

`eq[1, A301989(A233583(n+1))]`
-/

namespace A302296.P17827845930253469924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301989 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A302296.P17827845930253469924

/-!
# A302297: Values of A000010(m) such that two or more solutions share the same prime signature.

The programs for A302297, there is no canonical definition to state claims against.
-/

/-! ## A302297.P17908689421343751560

`lt[n+2, A134188(A026741(n))]`
-/

namespace A302297.P17908689421343751560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134188 (A026741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A302297.P17908689421343751560

/-! ## A302297.P14360257705720050637

`∩[A079042(n+1), A129120(n+1)]`
-/

namespace A302297.P14360257705720050637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302297.P14360257705720050637

/-! ## A302297.P178895975180932084

`lt[A366259(3*(n+1)), A325610(n+1)]+1`
-/

namespace A302297.P178895975180932084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366259 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325610 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A302297.P178895975180932084

/-!
# A302298: Wiener index of the graph of nodes (i,j) of the square lattice such that abs(i) + abs(j) <= n.

The programs for A302298, the canonical program `A302298.P3649473776143126268` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302298 has offset 0).

The definition of A302298 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302298.P17318302260496418321

`ogf((16x+96x^2+96x^3+16x^4)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A302298.P17318302260496418321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 16, 96, 96, 16] [1, -6, 15, -20, 15, -6, 1] n

end

end A302298.P17318302260496418321

namespace A302298

/-- `ogf((16x+96x^2+96x^3+16x^4)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P17318302260496418321.Spec : Prop :=
  ∀ n, P17318302260496418321.a n = A302298 n

end A302298

/-! ## A302298.P3649473776143126268

`2*n*(6+25*n+40*n²+35*n^3+14*n^4)/15`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A302298

/-- `2*n*(6+25*n+40*n²+35*n^3+14*n^4)/15` -/
def P3649473776143126268.Spec : Prop :=
  ∀ n, P3649473776143126268.a n = (A302298 n : ℚ)

end A302298

/-! ## A302298.P15414197594951703502

`∑[8*(A071270(n)+A037270(n))]`
-/

namespace A302298.P15414197594951703502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (A071270 n + A037270 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302298.P15414197594951703502

namespace A302298

/-- `∑[8*(A071270(n)+A037270(n))]` -/
def P15414197594951703502.Spec : Prop :=
  ∀ n, P15414197594951703502.a n = A302298 n

end A302298

/-! ## A302298.P2700198127798193211

`∑[16*(A037270(n)+A002415(n))]`
-/

namespace A302298.P2700198127798193211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * (A037270 n + A002415 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302298.P2700198127798193211

namespace A302298

/-- `∑[16*(A037270(n)+A002415(n))]` -/
def P2700198127798193211.Spec : Prop :=
  ∀ n, P2700198127798193211.a n = A302298 n

end A302298

/-! ## A302298.P15220071274373258111

`∑[16*(A002415(n)+A000217(n²))]`
-/

namespace A302298.P15220071274373258111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * (A002415 n + A000217 (n ^ 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302298.P15220071274373258111

namespace A302298

/-- `∑[16*(A002415(n)+A000217(n²))]` -/
def P15220071274373258111.Spec : Prop :=
  ∀ n, P15220071274373258111.a n = A302298 n

end A302298

/-!
# A302299: Values of A000010(m) such that no solutions share the same prime signature.

The programs for A302299, there is no canonical definition to state claims against.
-/

/-! ## A302299.P10156617967708868391

`∩[A002202(n+1), comp[A302297(n+1)]]`
-/

namespace A302299.P10156617967708868391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302297 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A302299.P10156617967708868391

/-! ## A302299.P24246223230973102

`A145865(A147220(n+1))+A006995(n+1)`
-/

namespace A302299.P24246223230973102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145865 (A147220 (n + 1)).toNat + A006995 (n + 1)

end

end A302299.P24246223230973102

/-! ## A302299.P15141452424954043154

`eq[∑{e}[n+1, #], A120967(A243631(n))]`
-/

namespace A302299.P15141452424954043154
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120967 (A243631 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A302299.P15141452424954043154

/-! ## A302299.P5107352603611469685

`A138259(A328572(2*n))+comp[2*(n+1)]`
-/

namespace A302299.P5107352603611469685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138259 (A328572 (2 * n)).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A302299.P5107352603611469685

/-! ## A302299.P13804053482129722799

`A362927(A223415(n+1))+A006995(n+1)`
-/

namespace A302299.P13804053482129722799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362927 (A223415 (n + 1)).toNat + A006995 (n + 1)

end

end A302299.P13804053482129722799

