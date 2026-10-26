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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C003
import Seq.B002.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B010.C000
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A204700: Number of nX3 0..2 arrays with no occurrence of three equal elements in a row horizontally, vertically or nw-to-se diagonally, and new values 0..2 introduced in row major order.

The programs for A204700, there is no canonical definition to state claims against.
-/

/-! ## A204700.P3870360869338139659

`A204705(∑[n+2]+4)`
-/

namespace A204700.P3870360869338139659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204705 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A204700.P3870360869338139659

/-! ## A204700.P7012566542577662991

`A152847(n)*A204705(A167614(n+1))`
-/

namespace A204700.P7012566542577662991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152847 n * A204705 (A167614 (n + 1)).toNat

end

end A204700.P7012566542577662991

/-! ## A204700.P17425569071781134378

`A204705(A167614(n+1))%A017192(n)`
-/

namespace A204700.P17425569071781134378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204705 (A167614 (n + 1)).toNat) (A017192 n)

end

end A204700.P17425569071781134378

/-! ## A204700.P13696166361517942001

`lcm(A204705(A167614(n+1)), A343785(n+1))`
-/

namespace A204700.P13696166361517942001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A204705 (A167614 (n + 1)).toNat) (A343785 (n + 1))

end

end A204700.P13696166361517942001

/-! ## A204700.P2552323233231899152

`A014963(6*(n+1))*A204705(A034856(n+2))`
-/

namespace A204700.P2552323233231899152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A204705 (A034856 (n + 2)).toNat

end

end A204700.P2552323233231899152

/-!
# A204701: Number of nX4 0..2 arrays with no occurrence of three equal elements in a row horizontally, vertically or nw-to-se diagonally, and new values 0..2 introduced in row major order.

The programs for A204701, there is no canonical definition to state claims against.
-/

/-! ## A204701.P10560912202547018945

`A204705(A141214(n)+7)`
-/

namespace A204701.P10560912202547018945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204705 (A141214 n + 7).toNat

end

end A204701.P10560912202547018945

/-! ## A204701.P6329782794531737870

`A204705(A052905(n)+9)`
-/

namespace A204701.P6329782794531737870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204705 (A052905 n + 9).toNat

end

end A204701.P6329782794531737870

/-! ## A204701.P14166640312543326867

`A204705(A055999(n)+10)`
-/

namespace A204701.P14166640312543326867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204705 (A055999 n + 10).toNat

end

end A204701.P14166640312543326867

/-! ## A204701.P9488110687840646704

`A204705(A167614(n+2)+1)`
-/

namespace A204701.P9488110687840646704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204705 (A167614 (n + 2) + 1).toNat

end

end A204701.P9488110687840646704

/-! ## A204701.P10430625625133741626

`A204705(A374004(n+1))`
-/

namespace A204701.P10430625625133741626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204705 (A374004 (n + 1)).toNat

end

end A204701.P10430625625133741626

/-!
# A204702: Number of nX5 0..2 arrays with no occurrence of three equal elements in a row horizontally, vertically or nw-to-se diagonally, and new values 0..2 introduced in row major order.

The programs for A204702, there is no canonical definition to state claims against.
-/

/-! ## A204702.P1648901302303318938

`A204705(A155212(n)+13)`
-/

namespace A204702.P1648901302303318938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204705 (A155212 n + 13).toNat

end

end A204702.P1648901302303318938

/-! ## A204702.P14108114987646972193

`A204705(A056000(n)+15)`
-/

namespace A204702.P14108114987646972193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204705 (A056000 n + 15).toNat

end

end A204702.P14108114987646972193

/-! ## A204702.P6457846075574806203

`A204705(eq[6, A131818(n+1)])`
-/

namespace A204702.P6457846075574806203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204705 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204702.P6457846075574806203

/-! ## A204702.P4278326368111946438

`A204705(A374005(n+1))`
-/

namespace A204702.P4278326368111946438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204705 (A374005 (n + 1)).toNat

end

end A204702.P4278326368111946438

/-! ## A204702.P3070468219480828833

`A204705(eq[4, A193592(n)])`
-/

namespace A204702.P3070468219480828833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204705 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204702.P3070468219480828833

/-!
# A204703: Number of nX6 0..2 arrays with no occurrence of three equal elements in a row horizontally, vertically or nw-to-se diagonally, and new values 0..2 introduced in row major order.

The programs for A204703, there is no canonical definition to state claims against.
-/

/-! ## A204703.P7123927112698850804

`A204705(C(n+7, 2)-n)`
-/

namespace A204703.P7123927112698850804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204705 (Nat.choose (n + 7) 2 - n)

end

end A204703.P7123927112698850804

/-! ## A204703.P15958744285647397679

`A204705(A000217(n+5)+6)`
-/

namespace A204703.P15958744285647397679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204705 (A000217 (n + 5) + 6).toNat

end

end A204703.P15958744285647397679

/-! ## A204703.P12262351780797325879

`A204705(A141214(n+2)+9)`
-/

namespace A204703.P12262351780797325879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204705 (A141214 (n + 2) + 9).toNat

end

end A204703.P12262351780797325879

/-! ## A204703.P13142152701328618517

`A204705(eq[7, A131818(n+1)])`
-/

namespace A204703.P13142152701328618517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204705 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204703.P13142152701328618517

/-! ## A204703.P15925623772564677835

`A204705(A055999(n+4)-Δ[n²])`
-/

namespace A204703.P15925623772564677835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204705 (A055999 (n + 4) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A204703.P15925623772564677835

/-!
# A204704: Number of nX7 0..2 arrays with no occurrence of three equal elements in a row horizontally, vertically or nw-to-se diagonally, and new values 0..2 introduced in row major order.

The programs for A204704, there is no canonical definition to state claims against.
-/

/-! ## A204704.P4608563222118705890

`A204705(A000217(n+6)+7)`
-/

namespace A204704.P4608563222118705890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204705 (A000217 (n + 6) + 7).toNat

end

end A204704.P4608563222118705890

/-! ## A204704.P15418527183499986881

`A204705(A374008(n+1))`
-/

namespace A204704.P15418527183499986881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204705 (A374008 (n + 1)).toNat

end

end A204704.P15418527183499986881

/-! ## A204704.P17263385281961924301

`A204705(eq[6, A193592(n)])`
-/

namespace A204704.P17263385281961924301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204705 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204704.P17263385281961924301

/-! ## A204704.P3832704905894680558

`A204705(A055998(n+5)-3)`
-/

namespace A204704.P3832704905894680558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204705 (A055998 (n + 5) - 3).toNat

end

end A204704.P3832704905894680558

/-!
# A204705: T(n,k) = Number of n X k 0..2 arrays with no occurrence of three equal elements in a row horizontally, vertically or nw-to-se diagonally, and new values 0..2 introduced in row major order.

The programs for A204705, there is no canonical definition to state claims against.
-/

/-! ## A204705.P9007716307241891781

`A204978(A084193(∑[n]))`
-/

namespace A204705.P9007716307241891781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204978 (A084193 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A204705.P9007716307241891781

/-! ## A204705.P6705895483737804350

`A204978(A043317(n+1))`
-/

namespace A204705.P6705895483737804350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204978 (A043317 (n + 1)).toNat

end

end A204705.P6705895483737804350

/-! ## A204705.P12499816979286357616

`A204978(A044914(n+1))`
-/

namespace A204705.P12499816979286357616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204978 (A044914 (n + 1)).toNat

end

end A204705.P12499816979286357616

/-! ## A204705.P7762462555093529553

`A204978(A055648(n+1))`
-/

namespace A204705.P7762462555093529553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204978 (A055648 (n + 1)).toNat

end

end A204705.P7762462555093529553

/-! ## A204705.P14291368936129863328

`A204978(A132378(n+1))`
-/

namespace A204705.P14291368936129863328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204978 (A132378 (n + 1)).toNat

end

end A204705.P14291368936129863328

/-!
# A204706: Number of (n+1)X(n+1) 0..1 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A204706, there is no canonical definition to state claims against.
-/

/-! ## A204706.P16863116811519255119

`A183681(n+1)+1`
-/

namespace A204706.P16863116811519255119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183681 (n + 1) + 1

end

end A204706.P16863116811519255119

/-! ## A204706.P12428792189855953027

`A204713(∑[4*n]+1)`
-/

namespace A204706.P12428792189855953027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204713 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204706.P12428792189855953027

/-! ## A204706.P1640684130257326080

`A183688(∑[4*n]+1)+1`
-/

namespace A204706.P1640684130257326080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183688 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1

end

end A204706.P1640684130257326080

/-! ## A204706.P16313011818106751684

`or(1, A204713(A001844(n)))`
-/

namespace A204706.P16313011818106751684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A204713 (A001844 n).toNat)

end

end A204706.P16313011818106751684

/-! ## A204706.P9605704659443009085

`record[A003982(n)*A204713(n+1)]`
-/

namespace A204706.P9605704659443009085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A204713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204706.P9605704659443009085

/-!
# A204707: Number of (n+1) X 3 0..1 arrays with the permanents of all 2 X 2 subblocks equal and nonzero.

The programs for A204707, the canonical program `A204707.P5650591119854460917` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204707 has offset 1).

The definition of A204707 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204707.P5650591119854460917

`A183682(n+1)+1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A204707

/-- `A183682(n+1)+1` -/
def P5650591119854460917.Spec : Prop :=
  ∀ n, P5650591119854460917.a n = A204707 (n + 1)

theorem P5650591119854460917.correct : P5650591119854460917.Spec := by
  intro n
  simp only [A204707, Nat.add_sub_cancel]

end A204707

/-! ## A204707.P981867329110196781

`abs(Δ[4*A122112(n)])+1`
-/

namespace A204707.P981867329110196781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A122112 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| + 1

end

end A204707.P981867329110196781

namespace A204707

/-- `abs(Δ[4*A122112(n)])+1` -/
def P981867329110196781.Spec : Prop :=
  ∀ n, P981867329110196781.a n = A204707 (n + 1)

end A204707

/-! ## A204707.P7291779577563329542

`Δ[a(n-1)+4*a(n-2)]+1` with `a(0)=8, a(1)=20`
-/

namespace A204707.P7291779577563329542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8, 20] fun n f1 =>
  f1 (n - 1) + 4 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1

end

end A204707.P7291779577563329542

namespace A204707

/-- `Δ[a(n-1)+4*a(n-2)]+1` -/
def P7291779577563329542.Spec : Prop :=
  ∀ n, P7291779577563329542.a n = A204707 (n + 1)

end A204707

/-! ## A204707.P6479958019352554959

`2*a(n-1)+3*a(n-2)-4*a(n-3)` with `a(0)=13, a(1)=33, a(2)=81`
-/

namespace A204707.P6479958019352554959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13, 33, 81] fun n a =>
  2 * a (n - 1) + 3 * a (n - 2) - 4 * a (n - 3)

end

end A204707.P6479958019352554959

namespace A204707

/-- `2*a(n-1)+3*a(n-2)-4*a(n-3)` -/
def P6479958019352554959.Spec : Prop :=
  ∀ n, P6479958019352554959.a n = A204707 (n + 1)

end A204707

/-! ## A204707.P16256613152453330512

`Δ[A205219(n+1)]+1`
-/

namespace A204707.P16256613152453330512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A204707.P16256613152453330512

namespace A204707

/-- `Δ[A205219(n+1)]+1` -/
def P16256613152453330512.Spec : Prop :=
  ∀ n, P16256613152453330512.a n = A204707 (n + 1)

end A204707

/-! ## A204707.P433969451597966767

`Δ[4*A183774(n)]+1`
-/

namespace A204707.P433969451597966767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A183774 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A204707.P433969451597966767

namespace A204707

/-- `Δ[4*A183774(n)]+1` -/
def P433969451597966767.Spec : Prop :=
  ∀ n, P433969451597966767.a n = A204707 (n + 1)

end A204707

/-! ## A204707.P12154597502971467977

`Δ[Δ[A183774(n+1)]]+1`
-/

namespace A204707.P12154597502971467977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183774 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A204707.P12154597502971467977

namespace A204707

/-- `Δ[Δ[A183774(n+1)]]+1` -/
def P12154597502971467977.Spec : Prop :=
  ∀ n, P12154597502971467977.a n = A204707 (n + 1)

end A204707

/-! ## A204707.P16711386425014034083

`A205220(n+1)+1-A205219(n+1)`
-/

namespace A204707.P16711386425014034083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205220 (n + 1) + (1 - A205219 (n + 1))

end

end A204707.P16711386425014034083

namespace A204707

/-- `A205220(n+1)+1-A205219(n+1)` -/
def P16711386425014034083.Spec : Prop :=
  ∀ n, P16711386425014034083.a n = A204707 (n + 1)

end A204707

/-! ## A204707.P12254162381702514015

`Δ[A185761(n+1)/2]+1`
-/

namespace A204707.P12254162381702514015
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185761 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A204707.P12254162381702514015

namespace A204707

/-- `Δ[A185761(n+1)/2]+1` -/
def P12254162381702514015.Spec : Prop :=
  ∀ n, P12254162381702514015.a n = (A204707 (n + 1) : ℚ)

end A204707

/-!
# A204708: Number of (n+1) X 4 0..1 arrays with the permanents of all 2 X 2 subblocks equal and nonzero.

The programs for A204708, the canonical program `A204708.P15726710374413608264` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204708 has offset 1).

The definition of A204708 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 194 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204708.P15726710374413608264

`3*a(n-1)+2*a(n-2)-4*a(n-3)` with `a(0)=25, a(1)=81, a(2)=257`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A204708

/-- `3*a(n-1)+2*a(n-2)-4*a(n-3)` -/
def P15726710374413608264.Spec : Prop :=
  ∀ n, P15726710374413608264.a n = A204708 (n + 1)

theorem P15726710374413608264.correct : P15726710374413608264.Spec := by
  intro n
  simp only [A204708, Nat.add_sub_cancel]

end A204708

/-! ## A204708.P14247879388881948697

`A063727(n+3)+1`
-/

namespace A204708.P14247879388881948697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063727 (n + 3) + 1

end

end A204708.P14247879388881948697

namespace A204708

/-- `A063727(n+3)+1` -/
def P14247879388881948697.Spec : Prop :=
  ∀ n, P14247879388881948697.a n = A204708 (n + 1)

end A204708

/-! ## A204708.P4512779485017104668

`A085449(n+4)+1`
-/

namespace A204708.P4512779485017104668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085449 (n + 4) + 1

end

end A204708.P4512779485017104668

namespace A204708

/-- `A085449(n+4)+1` -/
def P4512779485017104668.Spec : Prop :=
  ∀ n, P4512779485017104668.a n = A204708 (n + 1)

end A204708

/-! ## A204708.P1815299130918813128

`2*A087206(n+2)+1`
-/

namespace A204708.P1815299130918813128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087206 (n + 2) + 1

end

end A204708.P1815299130918813128

namespace A204708

/-- `2*A087206(n+2)+1` -/
def P1815299130918813128.Spec : Prop :=
  ∀ n, P1815299130918813128.a n = A204708 (n + 1)

end A204708

/-! ## A204708.P16455676047914908083

`A279312(2*n+5)+1`
-/

namespace A204708.P16455676047914908083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279312 (2 * n + 5) + 1

end

end A204708.P16455676047914908083

namespace A204708

/-- `A279312(2*n+5)+1` -/
def P16455676047914908083.Spec : Prop :=
  ∀ n, P16455676047914908083.a n = A204708 (n + 1)

end A204708

/-! ## A204708.P12275264125253056280

`8*A063782(n+1)+1`
-/

namespace A204708.P12275264125253056280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A063782 (n + 1) + 1

end

end A204708.P12275264125253056280

namespace A204708

/-- `8*A063782(n+1)+1` -/
def P12275264125253056280.Spec : Prop :=
  ∀ n, P12275264125253056280.a n = A204708 (n + 1)

end A204708

/-! ## A204708.P14184489465764620960

`A171648(2*n+7)+1`
-/

namespace A204708.P14184489465764620960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171648 (2 * n + 7) + 1

end

end A204708.P14184489465764620960

namespace A204708

/-- `A171648(2*n+7)+1` -/
def P14184489465764620960.Spec : Prop :=
  ∀ n, P14184489465764620960.a n = A204708 (n + 1)

end A204708

/-! ## A204708.P16374217228066315749

`A020707(n)*A090991(n+1)+1`
-/

namespace A204708.P16374217228066315749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n * A090991 (n + 1) + 1

end

end A204708.P16374217228066315749

namespace A204708

/-- `A020707(n)*A090991(n+1)+1` -/
def P16374217228066315749.Spec : Prop :=
  ∀ n, P16374217228066315749.a n = A204708 (n + 1)

end A204708

/-! ## A204708.P17336917386980569345

`A020695(n+1)*A020707(n+1)+1`
-/

namespace A204708.P17336917386980569345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (n + 1) * A020707 (n + 1) + 1

end

end A204708.P17336917386980569345

namespace A204708

/-- `A020695(n+1)*A020707(n+1)+1` -/
def P17336917386980569345.Spec : Prop :=
  ∀ n, P17336917386980569345.a n = A204708 (n + 1)

end A204708

/-! ## A204708.P5501818174025916462

`A000079(n+2)*A090991(n+1)+1`
-/

namespace A204708.P5501818174025916462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 2) * A090991 (n + 1) + 1

end

end A204708.P5501818174025916462

namespace A204708

/-- `A000079(n+2)*A090991(n+1)+1` -/
def P5501818174025916462.Spec : Prop :=
  ∀ n, P5501818174025916462.a n = A204708 (n + 1)

end A204708

/-! ## A204708.P800392894138426297

`A078642(n+2)*A163978(2*(n+1))+1`
-/

namespace A204708.P800392894138426297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078642 (n + 2) * A163978 (2 * (n + 1)) + 1

end

end A204708.P800392894138426297

namespace A204708

/-- `A078642(n+2)*A163978(2*(n+1))+1` -/
def P800392894138426297.Spec : Prop :=
  ∀ n, P800392894138426297.a n = A204708 (n + 1)

end A204708

/-! ## A204708.P2912357947064286628

`4*A000045(n+4)*A000079(n+1)+1`
-/

namespace A204708.P2912357947064286628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000045 (n + 4) * A000079 (n + 1) + 1

end

end A204708.P2912357947064286628

namespace A204708

/-- `4*A000045(n+4)*A000079(n+1)+1` -/
def P2912357947064286628.Spec : Prop :=
  ∀ n, P2912357947064286628.a n = A204708 (n + 1)

end A204708

/-! ## A204708.P4055901113630218656

`4*A000045(n+4)*A011782(n+2)+1`
-/

namespace A204708.P4055901113630218656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000045 (n + 4) * A011782 (n + 2) + 1

end

end A204708.P4055901113630218656

namespace A204708

/-- `4*A000045(n+4)*A011782(n+2)+1` -/
def P4055901113630218656.Spec : Prop :=
  ∀ n, P4055901113630218656.a n = A204708 (n + 1)

end A204708

/-!
# A204709: Number of (n+1) X 5 0..1 arrays with the permanents of all 2 X 2 subblocks equal and nonzero.

The programs for A204709, the canonical program `A204709.P3193264368587489793` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204709 has offset 1).

The definition of A204709 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204709.P3193264368587489793

`A183683(n+1)+1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A204709

/-- `A183683(n+1)+1` -/
def P3193264368587489793.Spec : Prop :=
  ∀ n, P3193264368587489793.a n = A204709 (n + 1)

theorem P3193264368587489793.correct : P3193264368587489793.Spec := by
  intro n
  simp only [A204709, Nat.add_sub_cancel]

end A204709

/-! ## A204709.P15449358576177927865

`A204713(A374004(n+1))`
-/

namespace A204709.P15449358576177927865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204713 (A374004 (n + 1)).toNat

end

end A204709.P15449358576177927865

namespace A204709

/-- `A204713(A374004(n+1))` -/
def P15449358576177927865.Spec : Prop :=
  ∀ n, P15449358576177927865.a n = A204709 (n + 1)

end A204709

/-! ## A204709.P183893101202760508

`A204713(A167614(n+2)+1)`
-/

namespace A204709.P183893101202760508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204713 (A167614 (n + 2) + 1).toNat

end

end A204709.P183893101202760508

namespace A204709

/-- `A204713(A167614(n+2)+1)` -/
def P183893101202760508.Spec : Prop :=
  ∀ n, P183893101202760508.a n = A204709 (n + 1)

end A204709

/-! ## A204709.P2135560229278203125

`A204713(A112355(n+1)+4)`
-/

namespace A204709.P2135560229278203125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204713 (A112355 (n + 1) + 4).toNat

end

end A204709.P2135560229278203125

namespace A204709

/-- `A204713(A112355(n+1)+4)` -/
def P2135560229278203125.Spec : Prop :=
  ∀ n, P2135560229278203125.a n = A204709 (n + 1)

end A204709

/-! ## A204709.P2575577798364551521

`A204713(A166136(n+2)-2)`
-/

namespace A204709.P2575577798364551521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204713 (A166136 (n + 2) - 2).toNat

end

end A204709.P2575577798364551521

namespace A204709

/-- `A204713(A166136(n+2)-2)` -/
def P2575577798364551521.Spec : Prop :=
  ∀ n, P2575577798364551521.a n = A204709 (n + 1)

end A204709

/-!
# A204710: Number of (n+1) X 6 0..1 arrays with the permanents of all 2 X 2 subblocks equal and nonzero.

The programs for A204710, there is no canonical definition to state claims against.
-/

/-! ## A204710.P11522069974458441551

`A183684(n+1)+1`
-/

namespace A204710.P11522069974458441551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183684 (n + 1) + 1

end

end A204710.P11522069974458441551

/-! ## A204710.P3435770088399162544

`A204713(A374005(n+1))`
-/

namespace A204710.P3435770088399162544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204713 (A374005 (n + 1)).toNat

end

end A204710.P3435770088399162544

/-! ## A204710.P4433492129030208792

`A204713(A167499(n+3))`
-/

namespace A204710.P4433492129030208792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204713 (A167499 (n + 3)).toNat

end

end A204710.P4433492129030208792

/-! ## A204710.P39848067226400668

`A204713(A155212(n)+13)`
-/

namespace A204710.P39848067226400668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204713 (A155212 n + 13).toNat

end

end A204710.P39848067226400668

/-! ## A204710.P5368025531587154687

`A204713(A056000(n)+15)`
-/

namespace A204710.P5368025531587154687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204713 (A056000 n + 15).toNat

end

end A204710.P5368025531587154687

/-!
# A204711: Number of (n+1)X7 0..1 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A204711, there is no canonical definition to state claims against.
-/

/-! ## A204711.P3474651352113809040

`A183685(n+1)+1`
-/

namespace A204711.P3474651352113809040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183685 (n + 1) + 1

end

end A204711.P3474651352113809040

/-! ## A204711.P17533335936255281237

`A204713(C(n+7, 2)-n)`
-/

namespace A204711.P17533335936255281237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204713 (Nat.choose (n + 7) 2 - n)

end

end A204711.P17533335936255281237

/-! ## A204711.P11396052467565351311

`A204713(A374007(n+1))`
-/

namespace A204711.P11396052467565351311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204713 (A374007 (n + 1)).toNat

end

end A204711.P11396052467565351311

/-! ## A204711.P11201043070321130104

`A204713(A167499(n+4)+1)`
-/

namespace A204711.P11201043070321130104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204713 (A167499 (n + 4) + 1).toNat

end

end A204711.P11201043070321130104

/-! ## A204711.P7540174383030706839

`A204713(A000096(n+4)+7)`
-/

namespace A204711.P7540174383030706839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204713 (A000096 (n + 4) + 7).toNat

end

end A204711.P7540174383030706839

/-!
# A204712: Number of (n+1) X 8 0..1 arrays with the permanents of all 2 X 2 subblocks equal and nonzero.

The programs for A204712, there is no canonical definition to state claims against.
-/

/-! ## A204712.P3737233238640827377

`A183686(n+1)+1`
-/

namespace A204712.P3737233238640827377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183686 (n + 1) + 1

end

end A204712.P3737233238640827377

/-! ## A204712.P10504322883036588329

`or(1, A183686(A028242(2*n)))`
-/

namespace A204712.P10504322883036588329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A183686 (A028242 (2 * n)).toNat)

end

end A204712.P10504322883036588329

/-! ## A204712.P14545829437553080329

`xor(A033999(n)², A183686(A028242(2*n)))`
-/

namespace A204712.P14545829437553080329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033999 n ^ 2) (A183686 (A028242 (2 * n)).toNat)

end

end A204712.P14545829437553080329

/-! ## A204712.P9308047868891727481

`xor(A033999(2*n), A183686(A028242(2*n)))`
-/

namespace A204712.P9308047868891727481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033999 (2 * n)) (A183686 (A028242 (2 * n)).toNat)

end

end A204712.P9308047868891727481

/-! ## A204712.P14389436234387992058

`xor((A004442(n)-n)², A183686(A028242(2*n)))`
-/

namespace A204712.P14389436234387992058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((A004442 n - (n : ℤ)) ^ 2) (A183686 (A028242 (2 * n)).toNat)

end

end A204712.P14389436234387992058

/-!
# A204713: T(n,k) is the number of (n+1) X (k+1) 0..1 arrays with the permanents of all 2 X 2 subblocks equal and nonzero.

The programs for A204713, there is no canonical definition to state claims against.
-/

/-! ## A204713.P16613690410800741057

`A183688(n+1)+1`
-/

namespace A204713.P16613690410800741057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183688 (n + 1) + 1

end

end A204713.P16613690410800741057

/-! ## A204713.P14691733961581415511

`or(1, A183688(A028242(2*n)))`
-/

namespace A204713.P14691733961581415511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A183688 (A028242 (2 * n)).toNat)

end

end A204713.P14691733961581415511

/-! ## A204713.P12412124184992789422

`xor(1, A183688(A008619(2*n)))`
-/

namespace A204713.P12412124184992789422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A183688 (A008619 (2 * n)).toNat)

end

end A204713.P12412124184992789422

/-! ## A204713.P48789459829431502

`A008619(2*n)-(n-A183688(A028242(2*n)))`
-/

namespace A204713.P48789459829431502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - ((n : ℤ) - A183688 (A028242 (2 * n)).toNat)

end

end A204713.P48789459829431502

/-! ## A204713.P18409871569386621047

`A008611(3*n)-(n-A183688(A028242(2*n)))`
-/

namespace A204713.P18409871569386621047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * n) - ((n : ℤ) - A183688 (A028242 (2 * n)).toNat)

end

end A204713.P18409871569386621047

/-! ## A204713.P16671817874189513611

`2-(A057427(A002522(n))-A183688(A028242(2*n)))`
-/

namespace A204713.P16671817874189513611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A057427 (A002522 n).toNat - A183688 (A028242 (2 * n)).toNat)

end

end A204713.P16671817874189513611

/-!
# A204715: Number of (n+1)X(n+1) 0..1 arrays with the permanents of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A204715, there is no canonical definition to state claims against.
-/

/-! ## A204715.P12068364415997334434

`A204723(∑[4*n]+1)`
-/

namespace A204715.P12068364415997334434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204723 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204715.P12068364415997334434

/-! ## A204715.P2940049922358094951

`record[root(A204723(n+1), A143182(n))]`
-/

namespace A204715.P2940049922358094951
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204723 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204715.P2940049922358094951

/-! ## A204715.P8928642889774803460

`record[gcd(A114327(n), A204723(n+1))]`
-/

namespace A204715.P8928642889774803460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A204723 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204715.P8928642889774803460

/-! ## A204715.P16161077710457909888

`A204723(A001844(n))+A025469(n)`
-/

namespace A204715.P16161077710457909888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204723 (A001844 n).toNat + A025469 n

end

end A204715.P16161077710457909888

/-! ## A204715.P12471700810372173795

`A014963(A010004(n))*A204723(A001844(n))`
-/

namespace A204715.P12471700810372173795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A010004 n).toNat * A204723 (A001844 n).toNat

end

end A204715.P12471700810372173795

/-!
# A204716: Number of (n+1) X 2 0..1 arrays with the permanents of 2 X 2 subblocks nondecreasing rightwards and downwards.

The programs for A204716, there is no canonical definition to state claims against.
-/

/-! ## A204716.P11941401018122722141

`A204723(∑[n]+1)`
-/

namespace A204716.P11941401018122722141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204723 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204716.P11941401018122722141

/-! ## A204716.P15645823114450659137

`abs(A204723(A000124(n))-1)+1`
-/

namespace A204716.P15645823114450659137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A204723 (A000124 n).toNat - 1| + 1

end

end A204716.P15645823114450659137

/-! ## A204716.P8202327544174603973

`record[A010054(n)*A204723(n+1)]`
-/

namespace A204716.P8202327544174603973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A204723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204716.P8202327544174603973

/-! ## A204716.P7351564250663327652

`record[A204723(n+1)/A154336(n)]`
-/

namespace A204716.P7351564250663327652
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204723 (n + 1) : ℚ) / (A154336 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204716.P7351564250663327652

/-! ## A204716.P10161776848804499091

`record[gcd(A002262(n), A204723(n+1))]`
-/

namespace A204716.P10161776848804499091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A204723 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204716.P10161776848804499091

/-!
# A204717: Number of (n+1) X 3 0..1 arrays with the permanents of 2 X 2 subblocks nondecreasing rightwards and downwards.

The programs for A204717, there is no canonical definition to state claims against.
-/

/-! ## A204717.P1544652661380778229

`A204723(∑[n+1]+2)`
-/

namespace A204717.P1544652661380778229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204723 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204717.P1544652661380778229

/-! ## A204717.P3853692983089469658

`record[A010054(n)*A204723(n+2)]`
-/

namespace A204717.P3853692983089469658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A204723 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204717.P3853692983089469658

/-! ## A204717.P3160240822820464091

`record[gcd(A002262(n), A204723(n+2))]`
-/

namespace A204717.P3160240822820464091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A204723 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204717.P3160240822820464091

/-! ## A204717.P18356842882107259954

`record[A204723(abs(A201163(n)))]`
-/

namespace A204717.P18356842882107259954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204723 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204717.P18356842882107259954

/-! ## A204717.P566518287042503130

`record[A204723(Δ[A003453(n+5)])]`
-/

namespace A204717.P566518287042503130
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204723 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204717.P566518287042503130

/-!
# A204718: Number of (n+1)X4 0..1 arrays with the permanents of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A204718, there is no canonical definition to state claims against.
-/

/-! ## A204718.P10392283945472031106

`A204723(∑[n+2]+4)`
-/

namespace A204718.P10392283945472031106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204723 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A204718.P10392283945472031106

/-! ## A204718.P14116244333780863992

`lcm((-1)^n, A204723(A167614(n+1)))`
-/

namespace A204718.P14116244333780863992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A204723 (A167614 (n + 1)).toNat)

end

end A204718.P14116244333780863992

/-! ## A204718.P6654313528464423568

`A204723(A167614(n+1))+A025469(n)`
-/

namespace A204718.P6654313528464423568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204723 (A167614 (n + 1)).toNat + A025469 n

end

end A204718.P6654313528464423568

/-! ## A204718.P11446630720892202259

`A204723(A167614(n+1))+A178798(n)`
-/

namespace A204718.P11446630720892202259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204723 (A167614 (n + 1)).toNat + A178798 n

end

end A204718.P11446630720892202259

/-! ## A204718.P15221405536024657229

`A204723(A167614(n+1))%A204719(n+1)`
-/

namespace A204718.P15221405536024657229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204723 (A167614 (n + 1)).toNat) (A204719 (n + 1))

end

end A204718.P15221405536024657229

/-!
# A204719: Number of (n+1)X5 0..1 arrays with the permanents of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A204719, there is no canonical definition to state claims against.
-/

/-! ## A204719.P17270141997330195921

`A204723(A141214(n)+7)`
-/

namespace A204719.P17270141997330195921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204723 (A141214 n + 7).toNat

end

end A204719.P17270141997330195921

/-! ## A204719.P16739377400569673760

`A204723(A052905(n)+9)`
-/

namespace A204719.P16739377400569673760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204723 (A052905 n + 9).toNat

end

end A204719.P16739377400569673760

/-! ## A204719.P6905940536883108401

`A204723(A167614(n+2)+1)`
-/

namespace A204719.P6905940536883108401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204723 (A167614 (n + 2) + 1).toNat

end

end A204719.P6905940536883108401

/-! ## A204719.P17181936160280944499

`A204723(A167499(n+2)-1)`
-/

namespace A204719.P17181936160280944499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204723 (A167499 (n + 2) - 1).toNat

end

end A204719.P17181936160280944499

/-! ## A204719.P14461528568396140218

`A204723(A034856(n+3)-(n-2))`
-/

namespace A204719.P14461528568396140218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204723 (A034856 (n + 3) - ((n : ℤ) - 2)).toNat

end

end A204719.P14461528568396140218

/-!
# A204720: Number of (n+1)X6 0..1 arrays with the permanents of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A204720, there is no canonical definition to state claims against.
-/

/-! ## A204720.P9603155889358145301

`A204723(A167499(n+3))`
-/

namespace A204720.P9603155889358145301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204723 (A167499 (n + 3)).toNat

end

end A204720.P9603155889358145301

/-! ## A204720.P8783504916073207746

`A204723(A141214(n+1)+8)`
-/

namespace A204720.P8783504916073207746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204723 (A141214 (n + 1) + 8).toNat

end

end A204720.P8783504916073207746

/-! ## A204720.P15203138906156383827

`A204723(A000124(n+6)-6-Δ[n²])`
-/

namespace A204720.P15203138906156383827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204723 (A000124 (n + 6) - 6 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A204720.P15203138906156383827

/-! ## A204720.P10036864807726940477

`A204723(A374005(n+1))`
-/

namespace A204720.P10036864807726940477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204723 (A374005 (n + 1)).toNat

end

end A204720.P10036864807726940477

/-! ## A204720.P12201581160537960820

`A204723(eq[4, A193592(n)])`
-/

namespace A204720.P12201581160537960820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204720.P12201581160537960820

/-!
# A204721: Number of (n+1)X7 0..1 arrays with the permanents of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A204721, there is no canonical definition to state claims against.
-/

/-! ## A204721.P4736778184287956277

`A204723(C(n+7, 2)-n)`
-/

namespace A204721.P4736778184287956277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204723 (Nat.choose (n + 7) 2 - n)

end

end A204721.P4736778184287956277

/-! ## A204721.P1936265947459835785

`A204723(eq[7, A131818(n+1)])`
-/

namespace A204721.P1936265947459835785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204721.P1936265947459835785

/-! ## A204721.P15428475137839125226

`A204723(A374007(n+1))`
-/

namespace A204721.P15428475137839125226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204723 (A374007 (n + 1)).toNat

end

end A204721.P15428475137839125226

/-! ## A204721.P8014227499935994413

`A204723(A052905(n+3))`
-/

namespace A204721.P8014227499935994413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204723 (A052905 (n + 3)).toNat

end

end A204721.P8014227499935994413

/-! ## A204721.P678798536069093146

`A204723(eq[3, A219347(n)])`
-/

namespace A204721.P678798536069093146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204721.P678798536069093146

/-!
# A204722: Number of (n+1)X8 0..1 arrays with the permanents of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A204722, there is no canonical definition to state claims against.
-/

/-! ## A204722.P12340129646590373793

`A204723(A000217(n+6)+7)`
-/

namespace A204722.P12340129646590373793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204723 (A000217 (n + 6) + 7).toNat

end

end A204722.P12340129646590373793

/-! ## A204722.P3703192910139111122

`A204723(eq[8, A131818(n+1)])`
-/

namespace A204722.P3703192910139111122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204722.P3703192910139111122

/-! ## A204722.P5309979561790869078

`A204723(eq[7, A002260(n+1)]+1)`
-/

namespace A204722.P5309979561790869078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A204722.P5309979561790869078

/-! ## A204722.P1382436230784700614

`A204723(A374008(n+1))`
-/

namespace A204722.P1382436230784700614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204723 (A374008 (n + 1)).toNat

end

end A204722.P1382436230784700614

/-! ## A204722.P1125553411242418377

`A204723(eq[4, A219347(n)])`
-/

namespace A204722.P1125553411242418377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204722.P1125553411242418377

/-!
# A204724: Number of (n+1)X(n+1) 0..4 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A204724, there is no canonical definition to state claims against.
-/

/-! ## A204724.P8208291289928581521

`A204732(∑[4*n]+1)`
-/

namespace A204724.P8208291289928581521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204732 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204724.P8208291289928581521

/-! ## A204724.P5829602170782526661

`lcm(2, A204732(A001844(n)))`
-/

namespace A204724.P5829602170782526661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A204732 (A001844 n).toNat)

end

end A204724.P5829602170782526661

/-! ## A204724.P7525706167125851275

`record[A204732(A330613(n+1))]`
-/

namespace A204724.P7525706167125851275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204732 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204724.P7525706167125851275

/-!
# A204725: Number of (n+1) X 2 0..4 arrays with the permanents of all 2 X 2 subblocks equal and nonzero.

The programs for A204725, there is no canonical definition to state claims against.
-/

/-! ## A204725.P16466950550211544354

`A204732(∑[n]+1)`
-/

namespace A204725.P16466950550211544354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204732 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204725.P16466950550211544354

/-! ## A204725.P17460867165953579100

`record[A204732(n+1)/A022169(n)]`
-/

namespace A204725.P17460867165953579100
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204732 (n + 1) : ℚ) / (A022169 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204725.P17460867165953579100

/-! ## A204725.P2908431804663742895

`record[root(A204732(n+1), A007318(n))]`
-/

namespace A204725.P2908431804663742895
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204732 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204725.P2908431804663742895

/-! ## A204725.P8389477948396394774

`record[root(A204732(n+1), A093768(n))]`
-/

namespace A204725.P8389477948396394774
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204732 (n + 1) : ℝ) ^ (1 / (A093768 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204725.P8389477948396394774

/-! ## A204725.P10991334089215816434

`record[root(A204732(n+1), A193592(n))]`
-/

namespace A204725.P10991334089215816434
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204732 (n + 1) : ℝ) ^ (1 / (A193592 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204725.P10991334089215816434

/-!
# A204726: Number of (n+1)X3 0..4 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A204726, there is no canonical definition to state claims against.
-/

/-! ## A204726.P12634481787532099362

`A204732(∑[n+1]+2)`
-/

namespace A204726.P12634481787532099362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204732 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204726.P12634481787532099362

/-! ## A204726.P3632820187395183894

`lcm(2, A204732(C(n+2, 2)+2))`
-/

namespace A204726.P3632820187395183894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A204732 (Nat.choose (n + 2) 2 + 2))

end

end A204726.P3632820187395183894

/-! ## A204726.P1232267948879780163

`lcm(2, A204732(A000096(n)+3))`
-/

namespace A204726.P1232267948879780163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A204732 (A000096 n + 3).toNat)

end

end A204726.P1232267948879780163

/-! ## A204726.P4667920761734885443

`record[gcd(A102765(n), A204732(n+2))]`
-/

namespace A204726.P4667920761734885443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A102765 n) (A204732 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204726.P4667920761734885443

/-! ## A204726.P1231899482311144285

`A204732(C(n+2, 2)+2)%A204729(n+1)`
-/

namespace A204726.P1231899482311144285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204732 (Nat.choose (n + 2) 2 + 2)) (A204729 (n + 1))

end

end A204726.P1231899482311144285

/-!
# A204727: Number of (n+1)X4 0..4 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A204727, there is no canonical definition to state claims against.
-/

/-! ## A204727.P13361601381002657072

`A204732(∑[n+2]+4)`
-/

namespace A204727.P13361601381002657072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204732 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A204727.P13361601381002657072

/-! ## A204727.P9672154011648538504

`lcm(2, A204732(A167614(n+1)))`
-/

namespace A204727.P9672154011648538504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A204732 (A167614 (n + 1)).toNat)

end

end A204727.P9672154011648538504

/-! ## A204727.P11531333331618784178

`A204732(A167614(n+1))*A271839(n)`
-/

namespace A204727.P11531333331618784178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204732 (A167614 (n + 1)).toNat * A271839 n

end

end A204727.P11531333331618784178

/-! ## A204727.P12302137436372709355

`A204732(A167614(n+1))*A278657(n)`
-/

namespace A204727.P12302137436372709355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204732 (A167614 (n + 1)).toNat * A278657 n

end

end A204727.P12302137436372709355

/-! ## A204727.P10017316996318761846

`A204732(A167614(n+1))+A000007(n+1)`
-/

namespace A204727.P10017316996318761846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204732 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A204727.P10017316996318761846

/-!
# A204728: Number of (n+1)X5 0..4 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A204728, there is no canonical definition to state claims against.
-/

/-! ## A204728.P16014603192145961847

`A204732(A374004(n+1))`
-/

namespace A204728.P16014603192145961847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204732 (A374004 (n + 1)).toNat

end

end A204728.P16014603192145961847

/-! ## A204728.P7660053809713568414

`A204732(A141214(n)+7)`
-/

namespace A204728.P7660053809713568414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204732 (A141214 n + 7).toNat

end

end A204728.P7660053809713568414

/-! ## A204728.P16922607215487630381

`A204732(A052905(n)+9)`
-/

namespace A204728.P16922607215487630381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204732 (A052905 n + 9).toNat

end

end A204728.P16922607215487630381

/-! ## A204728.P7250729258311075469

`A204732(A055999(n)+10)`
-/

namespace A204728.P7250729258311075469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204732 (A055999 n + 10).toNat

end

end A204728.P7250729258311075469

/-! ## A204728.P16921729444308421361

`A204732(eq[5, A066657(n)])`
-/

namespace A204728.P16921729444308421361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204732 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204728.P16921729444308421361

/-!
# A204729: Number of (n+1)X6 0..4 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A204729, there is no canonical definition to state claims against.
-/

/-! ## A204729.P2187209479908238024

`A204732(∑[n+4]+11)`
-/

namespace A204729.P2187209479908238024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204732 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A204729.P2187209479908238024

/-! ## A204729.P9210841956755252253

`-xor(A204732(A052905(n+2)+1)-1, -1)`
-/

namespace A204729.P9210841956755252253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (A204732 (A052905 (n + 2) + 1).toNat - 1) (-1)

end

end A204729.P9210841956755252253

/-!
# A204730: Number of (n+1)X7 0..4 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A204730, there is no canonical definition to state claims against.
-/

/-! ## A204730.P1549407482310293839

`A204732(A374007(n+1))`
-/

namespace A204730.P1549407482310293839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204732 (A374007 (n + 1)).toNat

end

end A204730.P1549407482310293839

/-! ## A204730.P3999999611721618581

`A204732(A056115(n)+21)`
-/

namespace A204730.P3999999611721618581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204732 (A056115 n + 21).toNat

end

end A204730.P3999999611721618581

/-! ## A204730.P846705032862665853

`A204732(A167614(n+4)+3)`
-/

namespace A204730.P846705032862665853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204732 (A167614 (n + 4) + 3).toNat

end

end A204730.P846705032862665853

/-! ## A204730.P14538206573040225196

`A204732(eq[7, A131818(n+1)])`
-/

namespace A204730.P14538206573040225196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204732 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204730.P14538206573040225196

/-! ## A204730.P7263826817034882580

`A204732(eq[3, A219347(n)])`
-/

namespace A204730.P7263826817034882580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204732 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204730.P7263826817034882580

/-!
# A204731: Number of (n+1)X8 0..4 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A204731, there is no canonical definition to state claims against.
-/

/-! ## A204731.P7051319764074202207

`A204732(A374008(n+1))`
-/

namespace A204731.P7051319764074202207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204732 (A374008 (n + 1)).toNat

end

end A204731.P7051319764074202207

/-! ## A204731.P3958535606808796004

`A204732(eq[11, A066657(n)])`
-/

namespace A204731.P3958535606808796004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204732 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204731.P3958535606808796004

/-! ## A204731.P4197253334159382728

`A204732(eq[8, A131818(n+1)])`
-/

namespace A204731.P4197253334159382728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204732 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204731.P4197253334159382728

/-! ## A204731.P2028013410753283543

`A204732(eq[6, A144328(n+1)]+1)`
-/

namespace A204731.P2028013410753283543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204732 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A204731.P2028013410753283543

/-!
# A204733: Number of (n+1) X (n+1) 0..1 arrays with rows and columns of permanents of all 2 X 2 subblocks lexicographically nondecreasing, and all 2 X 2 permanents nonzero.

The programs for A204733, there is no canonical definition to state claims against.
-/

/-! ## A204733.P14022716912691733442

`A204740(∑[4*n]+1)`
-/

namespace A204733.P14022716912691733442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204740 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204733.P14022716912691733442

/-! ## A204733.P16663576818181661867

`and(-1, A204740(n²+(n+1)²))`
-/

namespace A204733.P16663576818181661867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A204740 (n ^ 2 + (n + 1) ^ 2))

end

end A204733.P16663576818181661867

/-! ## A204733.P8211014299156207896

`A204740(A001844(n))+char[10]`
-/

namespace A204733.P8211014299156207896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204740 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A204733.P8211014299156207896

/-! ## A204733.P14759342849537130209

`record[A003982(n)*A204740(n+1)]`
-/

namespace A204733.P14759342849537130209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A204740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204733.P14759342849537130209

/-! ## A204733.P5679646657417779992

`lcm(A155040(n), A204740(A001844(n)))`
-/

namespace A204733.P5679646657417779992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A155040 n) (A204740 (A001844 n).toNat)

end

end A204733.P5679646657417779992

/-!
# A204734: Number of (n+1)X3 0..1 arrays with rows and columns of permanents of all 2X2 subblocks lexicographically nondecreasing, and all 2X2 permanents nonzero.

The programs for A204734, there is no canonical definition to state claims against.
-/

/-! ## A204734.P17235733410584465810

`A204740(∑[n+1]+2)`
-/

namespace A204734.P17235733410584465810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204740 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204734.P17235733410584465810

/-! ## A204734.P10347147829871087124

`A204740(A000096(n)+3)+A185284(n)`
-/

namespace A204734.P10347147829871087124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204740 (A000096 n + 3).toNat + A185284 n

end

end A204734.P10347147829871087124

/-! ## A204734.P774230483743874985

`lcm(A155040(n), A204740(A000096(n)+3))`
-/

namespace A204734.P774230483743874985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A155040 n) (A204740 (A000096 n + 3).toNat)

end

end A204734.P774230483743874985

/-! ## A204734.P1568492930134634406

`A204740(A133263(n+1))%A204716(n+1)`
-/

namespace A204734.P1568492930134634406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204740 (A133263 (n + 1)).toNat) (A204716 (n + 1))

end

end A204734.P1568492930134634406

/-! ## A204734.P16661057761079193083

`A204740(A000096(n)+3)%A202938(n+1)`
-/

namespace A204734.P16661057761079193083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204740 (A000096 n + 3).toNat) (A202938 (n + 1))

end

end A204734.P16661057761079193083

/-!
# A204735: Number of (n+1)X4 0..1 arrays with rows and columns of permanents of all 2X2 subblocks lexicographically nondecreasing, and all 2X2 permanents nonzero.

The programs for A204735, there is no canonical definition to state claims against.
-/

/-! ## A204735.P5557367480582189444

`A204740(∑[n+2]+4)`
-/

namespace A204735.P5557367480582189444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204740 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A204735.P5557367480582189444

/-! ## A204735.P14299706398229838979

`lcm(A033999(n), A204740(A167614(n+1)))`
-/

namespace A204735.P14299706398229838979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A204740 (A167614 (n + 1)).toNat)

end

end A204735.P14299706398229838979

/-! ## A204735.P11475475338440652260

`A212619(n+1)+A204740(A167614(n+1))`
-/

namespace A204735.P11475475338440652260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212619 (n + 1) + A204740 (A167614 (n + 1)).toNat

end

end A204735.P11475475338440652260

/-!
# A204736: Number of (n+1)X5 0..1 arrays with rows and columns of permanents of all 2X2 subblocks lexicographically nondecreasing, and all 2X2 permanents nonzero.

The programs for A204736, there is no canonical definition to state claims against.
-/

/-! ## A204736.P16433113246282928974

`A204740(A374004(n+1))`
-/

namespace A204736.P16433113246282928974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204740 (A374004 (n + 1)).toNat

end

end A204736.P16433113246282928974

/-! ## A204736.P10435596694557777886

`A204740(A052905(n)+9)`
-/

namespace A204736.P10435596694557777886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204740 (A052905 n + 9).toNat

end

end A204736.P10435596694557777886

/-! ## A204736.P5939301989565424497

`A204740(Δ[A008778(n)]+6)`
-/

namespace A204736.P5939301989565424497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204740 (f1 (n + 1) - f1 n + 6).toNat

end

end A204736.P5939301989565424497

/-! ## A204736.P1700301500329818830

`A204740(A167614(n+2)+1)`
-/

namespace A204736.P1700301500329818830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204740 (A167614 (n + 2) + 1).toNat

end

end A204736.P1700301500329818830

/-! ## A204736.P15250002347967379674

`A204740(A000096(n+2)+5)`
-/

namespace A204736.P15250002347967379674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204740 (A000096 (n + 2) + 5).toNat

end

end A204736.P15250002347967379674

/-!
# A204737: Number of (n+1)X6 0..1 arrays with rows and columns of permanents of all 2X2 subblocks lexicographically nondecreasing, and all 2X2 permanents nonzero.

The programs for A204737, there is no canonical definition to state claims against.
-/

/-! ## A204737.P5534686086633893225

`A204740(A374005(n+1))`
-/

namespace A204737.P5534686086633893225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204740 (A374005 (n + 1)).toNat

end

end A204737.P5534686086633893225

/-! ## A204737.P7254633660386001796

`A204740(A000124(n+4)+4)`
-/

namespace A204737.P7254633660386001796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204740 (A000124 (n + 4) + 4).toNat

end

end A204737.P7254633660386001796

/-! ## A204737.P17182070756034238972

`A204740(A000217(n+4)+5)`
-/

namespace A204737.P17182070756034238972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204740 (A000217 (n + 4) + 5).toNat

end

end A204737.P17182070756034238972

/-! ## A204737.P18023214511809815115

`A204740(A027379(n+2)+8)`
-/

namespace A204737.P18023214511809815115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204740 (A027379 (n + 2) + 8).toNat

end

end A204737.P18023214511809815115

/-!
# A204738: Number of (n+1)X7 0..1 arrays with rows and columns of permanents of all 2X2 subblocks lexicographically nondecreasing, and all 2X2 permanents nonzero.

The programs for A204738, there is no canonical definition to state claims against.
-/

/-! ## A204738.P18336162412803093308

`A204740(A374007(n+1))`
-/

namespace A204738.P18336162412803093308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204740 (A374007 (n + 1)).toNat

end

end A204738.P18336162412803093308

/-! ## A204738.P2681349425099241796

`A204740(A167614(n+4)+3)`
-/

namespace A204738.P2681349425099241796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204740 (A167614 (n + 4) + 3).toNat

end

end A204738.P2681349425099241796

/-! ## A204738.P7840315036671960534

`A204740(A000217(n+5)+6)`
-/

namespace A204738.P7840315036671960534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204740 (A000217 (n + 5) + 6).toNat

end

end A204738.P7840315036671960534

/-! ## A204738.P11363232867156287286

`A204740(A141214(n+2)+9)`
-/

namespace A204738.P11363232867156287286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204740 (A141214 (n + 2) + 9).toNat

end

end A204738.P11363232867156287286

/-! ## A204738.P4331102269702728451

`A204740(A027379(n+3)+9)`
-/

namespace A204738.P4331102269702728451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204740 (A027379 (n + 3) + 9).toNat

end

end A204738.P4331102269702728451

/-!
# A204739: Number of (n+1)X8 0..1 arrays with rows and columns of permanents of all 2X2 subblocks lexicographically nondecreasing, and all 2X2 permanents nonzero.

The programs for A204739, there is no canonical definition to state claims against.
-/

/-! ## A204739.P8028401743518337388

`A204740(C(n+8, 2)-n)`
-/

namespace A204739.P8028401743518337388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204740 (Nat.choose (n + 8) 2 - n)

end

end A204739.P8028401743518337388

/-! ## A204739.P3513994611223727021

`A204740(A374008(n+1))`
-/

namespace A204739.P3513994611223727021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204740 (A374008 (n + 1)).toNat

end

end A204739.P3513994611223727021

/-! ## A204739.P16391353967110863903

`A204740(eq[11, A066657(n)])`
-/

namespace A204739.P16391353967110863903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204739.P16391353967110863903

/-! ## A204739.P13580658808839288528

`A204740(A167614(n+5)+4)`
-/

namespace A204739.P13580658808839288528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204740 (A167614 (n + 5) + 4).toNat

end

end A204739.P13580658808839288528

/-! ## A204739.P11813796916792059841

`A204740(eq[8, A131818(n+1)])`
-/

namespace A204739.P11813796916792059841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204739.P11813796916792059841

/-!
# A204741: Number of (n+2)X3 0..2 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly one way, and new values 0..2 introduced in row major order.

The programs for A204741, there is no canonical definition to state claims against.
-/

/-! ## A204741.P16824103236795089539

`A204745(∑[n]+1)`
-/

namespace A204741.P16824103236795089539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204745 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204741.P16824103236795089539

/-! ## A204741.P5930325822142848296

`record[A010054(n)*A204745(n+1)]`
-/

namespace A204741.P5930325822142848296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A204745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204741.P5930325822142848296

/-! ## A204741.P6885149273101498364

`record[A176270(n)*A204745(n+1)]`
-/

namespace A204741.P6885149273101498364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176270 n * A204745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204741.P6885149273101498364

/-! ## A204741.P4709953055591428055

`record[A204745(n+1)/A001498(n)]`
-/

namespace A204741.P4709953055591428055
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204745 (n + 1) : ℚ) / (A001498 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204741.P4709953055591428055

/-! ## A204741.P11180643853380846967

`record[A204745(n+1)/A008459(n)]`
-/

namespace A204741.P11180643853380846967
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204745 (n + 1) : ℚ) / (A008459 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204741.P11180643853380846967

/-!
# A204742: Number of (n+2)X4 0..2 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly one way, and new values 0..2 introduced in row major order.

The programs for A204742, there is no canonical definition to state claims against.
-/

/-! ## A204742.P11453375492487748223

`A204745(∑[n+1]+2)`
-/

namespace A204742.P11453375492487748223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204745 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204742.P11453375492487748223

/-! ## A204742.P15133171348586023761

`record[A010054(n)*A204745(n+2)]`
-/

namespace A204742.P15133171348586023761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A204745 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204742.P15133171348586023761

/-! ## A204742.P8176649197544927134

`gcd(A102684(n), A204745(A373662(n+1)))`
-/

namespace A204742.P8176649197544927134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A102684 n) (A204745 (A373662 (n + 1)).toNat)

end

end A204742.P8176649197544927134

/-! ## A204742.P14572452826409654332

`or(A204745(A133263(n+1)), A280750(n))`
-/

namespace A204742.P14572452826409654332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A204745 (A133263 (n + 1)).toNat) (A280750 n)

end

end A204742.P14572452826409654332

/-!
# A204743: Number of (n+2)X5 0..2 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly one way, and new values 0..2 introduced in row major order.

The programs for A204743, there is no canonical definition to state claims against.
-/

/-! ## A204743.P14249360872853143840

`A204745(∑[n+2]+4)`
-/

namespace A204743.P14249360872853143840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204745 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A204743.P14249360872853143840

/-! ## A204743.P7817701311532793778

`record[A204745(A333530(n+1)+4)]`
-/

namespace A204743.P7817701311532793778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204745 (A333530 (n + 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204743.P7817701311532793778

/-! ## A204743.P17643758156657018662

`A204745(A167614(n+1))+A025437(n)`
-/

namespace A204743.P17643758156657018662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204745 (A167614 (n + 1)).toNat + A025437 n

end

end A204743.P17643758156657018662

/-!
# A204744: Number of (n+2) X 6 0..2 arrays with every 3 X 3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly one way, and new values 0..2 introduced in row major order.

The programs for A204744, there is no canonical definition to state claims against.
-/

/-! ## A204744.P17625478415419779744

`A204745(∑[n+3]+7)`
-/

namespace A204744.P17625478415419779744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204745 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A204744.P17625478415419779744

/-!
# A204746: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly three ways, and new values 0..1 introduced in row major order.

The programs for A204746, the canonical program `A204746.P17176570300952066759` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204746 has offset 1).

The definition of A204746 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204746.P17176570300952066759

`a(n-1)+2*A000045(n+2)` with `a(0)=40, a(1)=46, a(2)=22`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A204746

/-- `a(n-1)+2*A000045(n+2)` -/
def P17176570300952066759.Spec : Prop :=
  ∀ n, P17176570300952066759.a n = A204746 (n + 1)

theorem P17176570300952066759.correct : P17176570300952066759.Spec := by
  intro n
  simp only [A204746, Nat.add_sub_cancel]

end A204746

/-! ## A204746.P11700899539663301544

`A204754(∑[4*n]+1)`
-/

namespace A204746.P11700899539663301544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204754 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204746.P11700899539663301544

namespace A204746

/-- `A204754(∑[4*n]+1)` -/
def P11700899539663301544.Spec : Prop :=
  ∀ n, P11700899539663301544.a n = A204746 (n + 1)

end A204746

/-! ## A204746.P11735875134437131122

`lcm(2, A204754(A001844(n)))`
-/

namespace A204746.P11735875134437131122
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A204754 (A001844 n).toNat)

end

end A204746.P11735875134437131122

namespace A204746

/-- `lcm(2, A204754(A001844(n)))` -/
def P11735875134437131122.Spec : Prop :=
  ∀ n, (P11735875134437131122.a n : ℤ) = A204746 (n + 1)

end A204746

/-! ## A204746.P5535144083120355461

`A204754(A001844(n))+A185284(n)`
-/

namespace A204746.P5535144083120355461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204754 (A001844 n).toNat + A185284 n

end

end A204746.P5535144083120355461

namespace A204746

/-- `A204754(A001844(n))+A185284(n)` -/
def P5535144083120355461.Spec : Prop :=
  ∀ n, P5535144083120355461.a n = A204746 (n + 1)

end A204746

/-! ## A204746.P6728827392323187124

`A369054(n)+A204754(A001844(n))`
-/

namespace A204746.P6728827392323187124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 n + A204754 (A001844 n).toNat

end

end A204746.P6728827392323187124

namespace A204746

/-- `A369054(n)+A204754(A001844(n))` -/
def P6728827392323187124.Spec : Prop :=
  ∀ n, P6728827392323187124.a n = A204746 (n + 1)

end A204746

/-!
# A204747: Number of (n+2)X3 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly three ways, and new values 0..1 introduced in row major order.

The programs for A204747, there is no canonical definition to state claims against.
-/

/-! ## A204747.P1561643425601055860

`A204754(∑[n]+1)`
-/

namespace A204747.P1561643425601055860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204754 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204747.P1561643425601055860

/-! ## A204747.P3617870234603088862

`record[A204754(n+1)]`
-/

namespace A204747.P3617870234603088862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204747.P3617870234603088862

/-! ## A204747.P8039886118289068630

`and(-1, A204754(A000124(n)))`
-/

namespace A204747.P8039886118289068630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A204754 (A000124 n).toNat)

end

end A204747.P8039886118289068630

/-! ## A204747.P3999959276627974425

`A204754(A000124(n))*A304042(n)`
-/

namespace A204747.P3999959276627974425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204754 (A000124 n).toNat * A304042 n

end

end A204747.P3999959276627974425

/-! ## A204747.P6470529040763466260

`A007318(∑[n])*A204754(A000124(n))`
-/

namespace A204747.P6470529040763466260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A204754 (A000124 n).toNat

end

end A204747.P6470529040763466260

/-!
# A204748: Number of (n+2) X 4 0..1 arrays with every 3 X 3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly three ways, and new values 0..1 introduced in row major order.

The programs for A204748, the canonical program `A204748.P3794064724862976965` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204748 has offset 1).

The definition of A204748 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204748.P3794064724862976965

`a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` with `a(0)=61, a(1)=46, a(2)=31, a(3)=28, a(4)=38, a(5)=49, a(6)=70, a(7)=106`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A204748

/-- `a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` -/
def P3794064724862976965.Spec : Prop :=
  ∀ n, P3794064724862976965.a n = A204748 (n + 1)

theorem P3794064724862976965.correct : P3794064724862976965.Spec := by
  intro n
  simp only [A204748, Nat.add_sub_cancel]

end A204748

/-! ## A204748.P38746122306005192

`A204754(∑[n+1]+2)`
-/

namespace A204748.P38746122306005192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204754 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204748.P38746122306005192

namespace A204748

/-- `A204754(∑[n+1]+2)` -/
def P38746122306005192.Spec : Prop :=
  ∀ n, P38746122306005192.a n = A204748 (n + 1)

end A204748

/-! ## A204748.P6938870191219707886

`or(char[2], A204754(A133263(n+1)))`
-/

namespace A204748.P6938870191219707886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A204754 (A133263 (n + 1)).toNat)

end

end A204748.P6938870191219707886

namespace A204748

/-- `or(char[2], A204754(A133263(n+1)))` -/
def P6938870191219707886.Spec : Prop :=
  ∀ n, P6938870191219707886.a n = A204748 (n + 1)

end A204748

/-! ## A204748.P12732510351163201361

`A007318(C(2, n))*A204754(A133263(n+1))`
-/

namespace A204748.P12732510351163201361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A204754 (A133263 (n + 1)).toNat

end

end A204748.P12732510351163201361

namespace A204748

/-- `A007318(C(2, n))*A204754(A133263(n+1))` -/
def P12732510351163201361.Spec : Prop :=
  ∀ n, P12732510351163201361.a n = A204748 (n + 1)

end A204748

/-! ## A204748.P3866012568768055040

`A000108(C(n, 47))*A204754(A133263(n+1))`
-/

namespace A204748.P3866012568768055040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose n 47) * A204754 (A133263 (n + 1)).toNat

end

end A204748.P3866012568768055040

namespace A204748

/-- `A000108(C(n, 47))*A204754(A133263(n+1))` -/
def P3866012568768055040.Spec : Prop :=
  ∀ n, P3866012568768055040.a n = A204748 (n + 1)

end A204748

/-!
# A204749: Number of (n+2) X 5 0..1 arrays with every 3 X 3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly three ways, and new values 0..1 introduced in row major order.

The programs for A204749, the canonical program `A204749.P9999574866074250319` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204749 has offset 1).

The definition of A204749 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204749.P9999574866074250319

`2*a(n-1)-a(n-3)` with `a(0)=102, a(1)=31, a(2)=22, a(3)=27, a(4)=35`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A204749

/-- `2*a(n-1)-a(n-3)` -/
def P9999574866074250319.Spec : Prop :=
  ∀ n, P9999574866074250319.a n = A204749 (n + 1)

theorem P9999574866074250319.correct : P9999574866074250319.Spec := by
  intro n
  simp only [A204749, Nat.add_sub_cancel]

end A204749

/-! ## A204749.P17104150176858739695

`A204754(∑[n+2]+4)`
-/

namespace A204749.P17104150176858739695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204754 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A204749.P17104150176858739695

namespace A204749

/-- `A204754(∑[n+2]+4)` -/
def P17104150176858739695.Spec : Prop :=
  ∀ n, P17104150176858739695.a n = A204749 (n + 1)

end A204749

/-! ## A204749.P16107551410833775538

`or(char[1], A204754(A167614(n+1)))`
-/

namespace A204749.P16107551410833775538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A204754 (A167614 (n + 1)).toNat)

end

end A204749.P16107551410833775538

namespace A204749

/-- `or(char[1], A204754(A167614(n+1)))` -/
def P16107551410833775538.Spec : Prop :=
  ∀ n, P16107551410833775538.a n = A204749 (n + 1)

end A204749

/-! ## A204749.P13798921920619611543

`A007318(C(n, 2))*A204754(A167614(n+1))`
-/

namespace A204749.P13798921920619611543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A204754 (A167614 (n + 1)).toNat

end

end A204749.P13798921920619611543

namespace A204749

/-- `A007318(C(n, 2))*A204754(A167614(n+1))` -/
def P13798921920619611543.Spec : Prop :=
  ∀ n, P13798921920619611543.a n = A204749 (n + 1)

end A204749

/-! ## A204749.P1179759182274271874

`A204754(A167614(n+1))/A007318(C(n, n²))`
-/

namespace A204749.P1179759182274271874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204754 (A167614 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose n (n ^ 2)) : ℚ)

end

end A204749.P1179759182274271874

namespace A204749

/-- `A204754(A167614(n+1))/A007318(C(n, n²))` -/
def P1179759182274271874.Spec : Prop :=
  ∀ n, P1179759182274271874.a n = (A204749 (n + 1) : ℚ)

end A204749

/-!
# A204750: Number of (n+2) X 6 0..1 arrays with every 3 X 3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly three ways, and new values 0..1 introduced in row major order.

The programs for A204750, the canonical program `A204750.P9937993652373609478` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204750 has offset 1).

The definition of A204750 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204750.P9937993652373609478

`2*a(n-1)-a(n-3)` with `a(0)=188, a(1)=28, a(2)=27, a(3)=32, a(4)=40`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A204750

/-- `2*a(n-1)-a(n-3)` -/
def P9937993652373609478.Spec : Prop :=
  ∀ n, P9937993652373609478.a n = A204750 (n + 1)

theorem P9937993652373609478.correct : P9937993652373609478.Spec := by
  intro n
  simp only [A204750, Nat.add_sub_cancel]

end A204750

/-! ## A204750.P5304542621832776976

`A204754(∑[n+3]+7)`
-/

namespace A204750.P5304542621832776976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204754 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A204750.P5304542621832776976

namespace A204750

/-- `A204754(∑[n+3]+7)` -/
def P5304542621832776976.Spec : Prop :=
  ∀ n, P5304542621832776976.a n = A204750 (n + 1)

end A204750

/-! ## A204750.P15402417763080578749

`or(char[2], A204754(A167499(n+2)-1))`
-/

namespace A204750.P15402417763080578749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A204754 (A167499 (n + 2) - 1).toNat)

end

end A204750.P15402417763080578749

namespace A204750

/-- `or(char[2], A204754(A167499(n+2)-1))` -/
def P15402417763080578749.Spec : Prop :=
  ∀ n, P15402417763080578749.a n = A204750 (n + 1)

end A204750

/-! ## A204750.P18047357449909897840

`A007318(C(2, n))*A204754(A167499(n+2)-1)`
-/

namespace A204750.P18047357449909897840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A204754 (A167499 (n + 2) - 1).toNat

end

end A204750.P18047357449909897840

namespace A204750

/-- `A007318(C(2, n))*A204754(A167499(n+2)-1)` -/
def P18047357449909897840.Spec : Prop :=
  ∀ n, P18047357449909897840.a n = A204750 (n + 1)

end A204750

/-! ## A204750.P2957095400726748390

`A007318(and(1, -n))*A204754(A167499(n+2)-1)`
-/

namespace A204750.P2957095400726748390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * A204754 (A167499 (n + 2) - 1).toNat

end

end A204750.P2957095400726748390

namespace A204750

/-- `A007318(and(1, -n))*A204754(A167499(n+2)-1)` -/
def P2957095400726748390.Spec : Prop :=
  ∀ n, P2957095400726748390.a n = A204750 (n + 1)

end A204750

/-!
# A204751: Number of (n+2) X 7 0..1 arrays with every 3 X 3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly three ways, and new values 0..1 introduced in row major order.

The programs for A204751, the canonical program `A204751.P9808858098508660525` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204751 has offset 1).

The definition of A204751 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204751.P9808858098508660525

`2*a(n-1)-a(n-3)` with `a(0)=342, a(1)=38, a(2)=35, a(3)=40, a(4)=48`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A204751

/-- `2*a(n-1)-a(n-3)` -/
def P9808858098508660525.Spec : Prop :=
  ∀ n, P9808858098508660525.a n = A204751 (n + 1)

theorem P9808858098508660525.correct : P9808858098508660525.Spec := by
  intro n
  simp only [A204751, Nat.add_sub_cancel]

end A204751

/-! ## A204751.P15098830088920057377

`A204754(C(n+5, 2)+5)`
-/

namespace A204751.P15098830088920057377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204754 (Nat.choose (n + 5) 2 + 5)

end

end A204751.P15098830088920057377

namespace A204751

/-- `A204754(C(n+5, 2)+5)` -/
def P15098830088920057377.Spec : Prop :=
  ∀ n, P15098830088920057377.a n = A204751 (n + 1)

end A204751

/-! ## A204751.P9550056389198608986

`A204754(A167499(n+3))`
-/

namespace A204751.P9550056389198608986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204754 (A167499 (n + 3)).toNat

end

end A204751.P9550056389198608986

namespace A204751

/-- `A204754(A167499(n+3))` -/
def P9550056389198608986.Spec : Prop :=
  ∀ n, P9550056389198608986.a n = A204751 (n + 1)

end A204751

/-! ## A204751.P18264390372586703306

`A204754(A155212(n)+13)`
-/

namespace A204751.P18264390372586703306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204754 (A155212 n + 13).toNat

end

end A204751.P18264390372586703306

namespace A204751

/-- `A204754(A155212(n)+13)` -/
def P18264390372586703306.Spec : Prop :=
  ∀ n, P18264390372586703306.a n = A204751 (n + 1)

end A204751

/-! ## A204751.P314550042265934495

`A204754(A056000(n)+15)`
-/

namespace A204751.P314550042265934495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204754 (A056000 n + 15).toNat

end

end A204751.P314550042265934495

namespace A204751

/-- `A204754(A056000(n)+15)` -/
def P314550042265934495.Spec : Prop :=
  ∀ n, P314550042265934495.a n = A204751 (n + 1)

end A204751

/-!
# A204752: Number of (n+2) X 8 0..1 arrays with every 3 X 3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly three ways, and new values 0..1 introduced in row major order.

The programs for A204752, the canonical program `A204752.P1933236919313161046` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204752 has offset 1).

The definition of A204752 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204752.P1933236919313161046

`2*a(n-1)-a(n-3)` with `a(0)=590, a(1)=49, a(2)=48, a(3)=53, a(4)=61`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A204752

/-- `2*a(n-1)-a(n-3)` -/
def P1933236919313161046.Spec : Prop :=
  ∀ n, P1933236919313161046.a n = A204752 (n + 1)

theorem P1933236919313161046.correct : P1933236919313161046.Spec := by
  intro n
  simp only [A204752, Nat.add_sub_cancel]

end A204752

/-! ## A204752.P300867977392892556

`A204754(A167499(n+4)+1)`
-/

namespace A204752.P300867977392892556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204754 (A167499 (n + 4) + 1).toNat

end

end A204752.P300867977392892556

namespace A204752

/-- `A204754(A167499(n+4)+1)` -/
def P300867977392892556.Spec : Prop :=
  ∀ n, P300867977392892556.a n = A204752 (n + 1)

end A204752

/-! ## A204752.P8963662875842312206

`A204754(A167487(n+4)-1)`
-/

namespace A204752.P8963662875842312206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204754 (A167487 (n + 4) - 1).toNat

end

end A204752.P8963662875842312206

namespace A204752

/-- `A204754(A167487(n+4)-1)` -/
def P8963662875842312206.Spec : Prop :=
  ∀ n, P8963662875842312206.a n = A204752 (n + 1)

end A204752

/-! ## A204752.P18420100967805165303

`A204754(A000124(n+5)+5)`
-/

namespace A204752.P18420100967805165303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204754 (A000124 (n + 5) + 5).toNat

end

end A204752.P18420100967805165303

namespace A204752

/-- `A204754(A000124(n+5)+5)` -/
def P18420100967805165303.Spec : Prop :=
  ∀ n, P18420100967805165303.a n = A204752 (n + 1)

end A204752

/-! ## A204752.P11797763149128930794

`A204754(A000217(n+5)+6)`
-/

namespace A204752.P11797763149128930794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204754 (A000217 (n + 5) + 6).toNat

end

end A204752.P11797763149128930794

namespace A204752

/-- `A204754(A000217(n+5)+6)` -/
def P11797763149128930794.Spec : Prop :=
  ∀ n, P11797763149128930794.a n = A204752 (n + 1)

end A204752

/-!
# A204753: Number of (n+2) X 9 0..1 arrays with every 3 X 3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly three ways, and new values 0..1 introduced in row major order.

The programs for A204753, there is no canonical definition to state claims against.
-/

/-! ## A204753.P7016855685731542232

`A204754(A167487(n+5))`
-/

namespace A204753.P7016855685731542232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204754 (A167487 (n + 5)).toNat

end

end A204753.P7016855685731542232

/-! ## A204753.P10506639365280954530

`A204754(∑[A020715(n)]+22)`
-/

namespace A204753.P10506639365280954530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204754 (∑ j ∈ Finset.range (n + 1), f1 j + 22).toNat

end

end A204753.P10506639365280954530

/-! ## A204753.P4640205551984642000

`A204754(A000124(n+6)+6)`
-/

namespace A204753.P4640205551984642000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204754 (A000124 (n + 6) + 6).toNat

end

end A204753.P4640205551984642000

/-! ## A204753.P7326210303302896001

`A204754(A000217(n+6)+7)`
-/

namespace A204753.P7326210303302896001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204754 (A000217 (n + 6) + 7).toNat

end

end A204753.P7326210303302896001

/-! ## A204753.P6155258744689219493

`A204754(A034856(n+5)+9)`
-/

namespace A204753.P6155258744689219493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204754 (A034856 (n + 5) + 9).toNat

end

end A204753.P6155258744689219493

/-!
# A204755: Number of (n+1)X(n+1) 0..5 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A204755, there is no canonical definition to state claims against.
-/

/-! ## A204755.P14322377840148853851

`A204763((n+1)²+n²)`
-/

namespace A204755.P14322377840148853851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204763 ((n + 1) ^ 2 + n ^ 2)

end

end A204755.P14322377840148853851

/-!
# A204756: Number of (n+1)X2 0..5 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A204756, there is no canonical definition to state claims against.
-/

/-! ## A204756.P9448374128612220071

`A204763(∑[n]+1)`
-/

namespace A204756.P9448374128612220071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204763 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204756.P9448374128612220071

/-! ## A204756.P6479810268574139758

`or(1, A204763(A000124(n)))`
-/

namespace A204756.P6479810268574139758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A204763 (A000124 n).toNat)

end

end A204756.P6479810268574139758

/-! ## A204756.P6203180558723396865

`record[gcd(A098356(n), A204763(n+1))]`
-/

namespace A204756.P6203180558723396865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098356 n) (A204763 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204756.P6203180558723396865

/-! ## A204756.P17300381067524490374

`record[A204763(n+1)/A142075(n+1)]`
-/

namespace A204756.P17300381067524490374
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204763 (n + 1) : ℚ) / (A142075 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204756.P17300381067524490374

/-! ## A204756.P2011792515428102971

`record[root(A204763(n+1), A103881(n+1))]`
-/

namespace A204756.P2011792515428102971
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204763 (n + 1) : ℝ) ^ (1 / (A103881 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204756.P2011792515428102971

/-!
# A204757: Number of (n+1)X3 0..5 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A204757, there is no canonical definition to state claims against.
-/

/-! ## A204757.P12265117238626524884

`A204763(∑[n+1]+2)`
-/

namespace A204757.P12265117238626524884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204763 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204757.P12265117238626524884

/-! ## A204757.P7509034828537584618

`or(1, A204763(A133263(n+1)))`
-/

namespace A204757.P7509034828537584618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A204763 (A133263 (n + 1)).toNat)

end

end A204757.P7509034828537584618

/-! ## A204757.P10347230340534627199

`record[root(A204763(n+2), A200370(n+1))]`
-/

namespace A204757.P10347230340534627199
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204763 (n + 2) : ℝ) ^ (1 / (A200370 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204757.P10347230340534627199

/-! ## A204757.P18136058274731038242

`A204763(A133263(n+1))+A142150(2*n+1)`
-/

namespace A204757.P18136058274731038242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204763 (A133263 (n + 1)).toNat + A142150 (2 * n + 1)

end

end A204757.P18136058274731038242

/-! ## A204757.P1607388672210446429

`A010201(2*n+1)*A204763(A133263(n+1))`
-/

namespace A204757.P1607388672210446429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010201 (2 * n + 1) * A204763 (A133263 (n + 1)).toNat

end

end A204757.P1607388672210446429

/-!
# A204758: Number of (n+1)X4 0..5 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A204758, there is no canonical definition to state claims against.
-/

/-! ## A204758.P7627684239182311682

`A204763(∑[n+2]+4)`
-/

namespace A204758.P7627684239182311682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204763 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A204758.P7627684239182311682

/-! ## A204758.P5772244638599265829

`or(1, A204763(A167614(n+1)))`
-/

namespace A204758.P5772244638599265829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A204763 (A167614 (n + 1)).toNat)

end

end A204758.P5772244638599265829

/-! ## A204758.P2232180119227901434

`A204763(A167614(n+1))+A184955(n)`
-/

namespace A204758.P2232180119227901434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204763 (A167614 (n + 1)).toNat + A184955 n

end

end A204758.P2232180119227901434

/-! ## A204758.P16769687220565488877

`A204763(A000124(n+2)+2)*A345045(n+1)`
-/

namespace A204758.P16769687220565488877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204763 (A000124 (n + 2) + 2).toNat * A345045 (n + 1)

end

end A204758.P16769687220565488877

/-! ## A204758.P9410630620152301005

`record[A204763(A198464(n+1))]`
-/

namespace A204758.P9410630620152301005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204763 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204758.P9410630620152301005

/-!
# A204759: Number of (n+1)X5 0..5 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A204759, there is no canonical definition to state claims against.
-/

/-! ## A204759.P7011005681531002603

`A204763(A141214(n)+7)`
-/

namespace A204759.P7011005681531002603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204763 (A141214 n + 7).toNat

end

end A204759.P7011005681531002603

/-! ## A204759.P4774000889867822964

`A204763(A052905(n)+9)`
-/

namespace A204759.P4774000889867822964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204763 (A052905 n + 9).toNat

end

end A204759.P4774000889867822964

/-! ## A204759.P16730341027222577163

`A204763(A055999(n)+10)`
-/

namespace A204759.P16730341027222577163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204763 (A055999 n + 10).toNat

end

end A204759.P16730341027222577163

/-! ## A204759.P3051054791871722896

`A204763(A167614(n+2)+1)`
-/

namespace A204759.P3051054791871722896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204763 (A167614 (n + 2) + 1).toNat

end

end A204759.P3051054791871722896

/-! ## A204759.P11283948065196951942

`A204763(A166136(n+2)-2)`
-/

namespace A204759.P11283948065196951942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204763 (A166136 (n + 2) - 2).toNat

end

end A204759.P11283948065196951942

/-!
# A204760: Number of (n+1)X6 0..5 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A204760, there is no canonical definition to state claims against.
-/

/-! ## A204760.P6533245701278747010

`A204763(A167499(n+3))`
-/

namespace A204760.P6533245701278747010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204763 (A167499 (n + 3)).toNat

end

end A204760.P6533245701278747010

/-! ## A204760.P14151220849854517027

`A204763(A155212(n)+13)`
-/

namespace A204760.P14151220849854517027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204763 (A155212 n + 13).toNat

end

end A204760.P14151220849854517027

/-! ## A204760.P1364411502488291088

`A204763(A056000(n)+15)`
-/

namespace A204760.P1364411502488291088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204763 (A056000 n + 15).toNat

end

end A204760.P1364411502488291088

/-! ## A204760.P14075052612853772475

`A204763(eq[7, A066657(n)])`
-/

namespace A204760.P14075052612853772475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204763 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204760.P14075052612853772475

/-! ## A204760.P7320865531598839264

`A204763(Δ[A264443(n)])`
-/

namespace A204760.P7320865531598839264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204763 (f1 (n + 1) - f1 n).toNat

end

end A204760.P7320865531598839264

/-!
# A204761: Number of (n+1)X7 0..5 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A204761, there is no canonical definition to state claims against.
-/

/-! ## A204761.P14738349650317329120

`A204763(A166136(n+4))`
-/

namespace A204761.P14738349650317329120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204763 (A166136 (n + 4)).toNat

end

end A204761.P14738349650317329120

/-! ## A204761.P17639962757498518448

`A204763(A056115(n)+21)`
-/

namespace A204761.P17639962757498518448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204763 (A056115 n + 21).toNat

end

end A204761.P17639962757498518448

/-! ## A204761.P15729501568034657898

`A204763(A141214(n+2)+9)`
-/

namespace A204761.P15729501568034657898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204763 (A141214 (n + 2) + 9).toNat

end

end A204761.P15729501568034657898

/-! ## A204761.P3723618820834611664

`A204763(A056000(n+1)+16)`
-/

namespace A204761.P3723618820834611664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204763 (A056000 (n + 1) + 16).toNat

end

end A204761.P3723618820834611664

/-! ## A204761.P16651324657938911932

`A204763(eq[7, A131818(n+1)])`
-/

namespace A204761.P16651324657938911932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204763 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204761.P16651324657938911932

/-!
# A204762: Number of (n+1) X 8 0..5 arrays with the permanents of all 2 X 2 subblocks equal and nonzero.

The programs for A204762, there is no canonical definition to state claims against.
-/

/-! ## A204762.P8711772426320541725

`A204763(A374008(n+1))`
-/

namespace A204762.P8711772426320541725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204763 (A374008 (n + 1)).toNat

end

end A204762.P8711772426320541725

/-! ## A204762.P114018205888583375

`A204763(eq[32, A057728(n+1)])`
-/

namespace A204762.P114018205888583375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204763 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204762.P114018205888583375

/-!
# A204766: a(n) = 167*(n-1)-a(n-1) with n>1, a(1)=13.

The programs for A204766, the canonical program `A204766.P4176528374091881297` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204766 has offset 1).

The definition of A204766 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `167*n-a(n-1)` (program `A204766.P4176528374091881297`, by `A204766.P4176528374091881297.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A204766.P4176528374091881297

`167*n-a(n-1)` with `a(0)=13`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A204766

/-- `167*n-a(n-1)` -/
def P4176528374091881297.Spec : Prop :=
  ∀ n, P4176528374091881297.a n = A204766 (n + 1)

theorem P4176528374091881297.correct : P4176528374091881297.Spec := by
  intro n
  simp only [A204766, Nat.add_sub_cancel]

end A204766

/-! ## A204766.P2873525985387199876

`14*A091998(n+1)-A028242(n)`
-/

namespace A204766.P2873525985387199876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * A091998 (n + 1) - A028242 n

end

end A204766.P2873525985387199876

namespace A204766

/-- `14*A091998(n+1)-A028242(n)` -/
def P2873525985387199876.Spec : Prop :=
  ∀ n, P2873525985387199876.a n = A204766 (n + 1)

end A204766

/-! ## A204766.P14596010045759613341

`A175885(n+1)+12*A175886(n+1)`
-/

namespace A204766.P14596010045759613341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175885 (n + 1) + 12 * A175886 (n + 1)

end

end A204766.P14596010045759613341

namespace A204766

/-- `A175885(n+1)+12*A175886(n+1)` -/
def P14596010045759613341.Spec : Prop :=
  ∀ n, P14596010045759613341.a n = A204766 (n + 1)

end A204766

/-! ## A204766.P17801924438842266441

`14*A175886(n+1)-A175887(n+1)`
-/

namespace A204766.P17801924438842266441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * A175886 (n + 1) - A175887 (n + 1)

end

end A204766.P17801924438842266441

namespace A204766

/-- `14*A175886(n+1)-A175887(n+1)` -/
def P17801924438842266441.Spec : Prop :=
  ∀ n, P17801924438842266441.a n = A204766 (n + 1)

end A204766

/-! ## A204766.P6242278650875410822

`A182323(A014601(n))-A008585(A156638(n+1))`
-/

namespace A204766.P6242278650875410822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182323 (A014601 n).toNat - A008585 (A156638 (n + 1)).toNat

end

end A204766.P6242278650875410822

namespace A204766

/-- `A182323(A014601(n))-A008585(A156638(n+1))` -/
def P6242278650875410822.Spec : Prop :=
  ∀ n, P6242278650875410822.a n = A204766 (n + 1)

end A204766

/-! ## A204766.P1063526010796355632

`A008596(A091998(n+1))-A028242(n)`
-/

namespace A204766.P1063526010796355632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008596 (A091998 (n + 1)).toNat - A028242 n

end

end A204766.P1063526010796355632

namespace A204766

/-- `A008596(A091998(n+1))-A028242(n)` -/
def P1063526010796355632.Spec : Prop :=
  ∀ n, P1063526010796355632.a n = A204766 (n + 1)

end A204766

/-! ## A204766.P6954512782168736860

`A175885(n+1)+A008594(A175886(n+1))`
-/

namespace A204766.P6954512782168736860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175885 (n + 1) + A008594 (A175886 (n + 1)).toNat

end

end A204766.P6954512782168736860

namespace A204766

/-- `A175885(n+1)+A008594(A175886(n+1))` -/
def P6954512782168736860.Spec : Prop :=
  ∀ n, P6954512782168736860.a n = A204766 (n + 1)

end A204766

/-! ## A204766.P13933301026405424975

`A008596(A175886(n+1))-A175887(n+1)`
-/

namespace A204766.P13933301026405424975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008596 (A175886 (n + 1)).toNat - A175887 (n + 1)

end

end A204766.P13933301026405424975

namespace A204766

/-- `A008596(A175886(n+1))-A175887(n+1)` -/
def P13933301026405424975.Spec : Prop :=
  ∀ n, P13933301026405424975.a n = A204766 (n + 1)

end A204766

/-! ## A204766.P9280020849846394208

`A008597(A175886(n+1))-2*A113801(n+1)`
-/

namespace A204766.P9280020849846394208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008597 (A175886 (n + 1)).toNat - 2 * A113801 (n + 1)

end

end A204766.P9280020849846394208

namespace A204766

/-- `A008597(A175886(n+1))-2*A113801(n+1)` -/
def P9280020849846394208.Spec : Prop :=
  ∀ n, P9280020849846394208.a n = A204766 (n + 1)

end A204766

/-! ## A204766.P16221255494168134288

`A008597(A175886(n+1))-A005843(A113801(n+1))`
-/

namespace A204766.P16221255494168134288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008597 (A175886 (n + 1)).toNat - A005843 (A113801 (n + 1)).toNat

end

end A204766.P16221255494168134288

namespace A204766

/-- `A008597(A175886(n+1))-A005843(A113801(n+1))` -/
def P16221255494168134288.Spec : Prop :=
  ∀ n, P16221255494168134288.a n = A204766 (n + 1)

end A204766

/-!
# A204768: 7^p - 6^p - 1, with p = prime(n).

The programs for A204768, the canonical program `A204768.P10519969148662508923` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204768 has offset 1).

The definition of A204768 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A204768.P10519969148662508923

`7^A000040(n+1)-6^A000040(n+1)-1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A204768

/-- `7^A000040(n+1)-6^A000040(n+1)-1` -/
def P10519969148662508923.Spec : Prop :=
  ∀ n, P10519969148662508923.a n = (A204768 (n + 1) : ℚ)

end A204768

/-! ## A204768.P5386057768768558547

`A209901(n+1)+1`
-/

namespace A204768.P5386057768768558547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209901 (n + 1) + 1

end

end A204768.P5386057768768558547

namespace A204768

/-- `A209901(n+1)+1` -/
def P5386057768768558547.Spec : Prop :=
  ∀ n, P5386057768768558547.a n = A204768 (n + 1)

end A204768

/-! ## A204768.P1486643236698004634

`A155650(p?[A007989(n)])-2`
-/

namespace A204768.P1486643236698004634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155650 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 2

end

end A204768.P1486643236698004634

namespace A204768

/-- `A155650(p?[A007989(n)])-2` -/
def P1486643236698004634.Spec : Prop :=
  ∀ n, P1486643236698004634.a n = A204768 (n + 1)

end A204768

/-! ## A204768.P11037085055958245200

`A155650(p?[A091203(n)])-2`
-/

namespace A204768.P11037085055958245200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155650 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 2

end

end A204768.P11037085055958245200

namespace A204768

/-- `A155650(p?[A091203(n)])-2` -/
def P11037085055958245200.Spec : Prop :=
  ∀ n, P11037085055958245200.a n = A204768 (n + 1)

end A204768

/-! ## A204768.P3193411827438434250

`A155650(p?[A259153(n)])-2`
-/

namespace A204768.P3193411827438434250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155650 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 2

end

end A204768.P3193411827438434250

namespace A204768

/-- `A155650(p?[A259153(n)])-2` -/
def P3193411827438434250.Spec : Prop :=
  ∀ n, P3193411827438434250.a n = A204768 (n + 1)

end A204768

/-!
# A204769: a(n) = 151*(n-1) - a(n-1) with n>1, a(1)=46.

The programs for A204769, the canonical program `A204769.P4619367791702206366` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204769 has offset 1).

The definition of A204769 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `151*n-a(n-1)` (program `A204769.P4619367791702206366`, by `A204769.P4619367791702206366.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A204769.P4619367791702206366

`151*n-a(n-1)` with `a(0)=46`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A204769

/-- `151*n-a(n-1)` -/
def P4619367791702206366.Spec : Prop :=
  ∀ n, P4619367791702206366.a n = A204769 (n + 1)

theorem P4619367791702206366.correct : P4619367791702206366.Spec := by
  intro n
  simp only [A204769, Nat.add_sub_cancel]

end A204769

/-! ## A204769.P16624847809830800773

`A028242(n)+15*A063226(n+1)`
-/

namespace A204769.P16624847809830800773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n + 15 * A063226 (n + 1)

end

end A204769.P16624847809830800773

namespace A204769

/-- `A028242(n)+15*A063226(n+1)` -/
def P16624847809830800773.Spec : Prop :=
  ∀ n, P16624847809830800773.a n = A204769 (n + 1)

end A204769

/-! ## A204769.P12913881791205288408

`A177044(n+1)+2*A259755(n+1)`
-/

namespace A204769.P12913881791205288408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177044 (n + 1) + 2 * A259755 (n + 1)

end

end A204769.P12913881791205288408

namespace A204769

/-- `A177044(n+1)+2*A259755(n+1)` -/
def P12913881791205288408.Spec : Prop :=
  ∀ n, P12913881791205288408.a n = A204769 (n + 1)

end A204769

/-! ## A204769.P8521554172249090670

`A177044(n+1)+8*A007310(n+1)`
-/

namespace A204769.P8521554172249090670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177044 (n + 1) + 8 * A007310 (n + 1)

end

end A204769.P8521554172249090670

namespace A204769

/-- `A177044(n+1)+8*A007310(n+1)` -/
def P8521554172249090670.Spec : Prop :=
  ∀ n, P8521554172249090670.a n = A204769 (n + 1)

end A204769

/-! ## A204769.P10269108079488493489

`A159008(n+1)+A177044(n+1)-A158803(n+1)`
-/

namespace A204769.P10269108079488493489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159008 (n + 1) + (A177044 (n + 1) - A158803 (n + 1))

end

end A204769.P10269108079488493489

namespace A204769

/-- `A159008(n+1)+A177044(n+1)-A158803(n+1)` -/
def P10269108079488493489.Spec : Prop :=
  ∀ n, P10269108079488493489.a n = A204769 (n + 1)

end A204769

/-! ## A204769.P1696922434922559581

`A241521(n+1)+A008458(A156638(n+1))`
-/

namespace A204769.P1696922434922559581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241521 (n + 1) + A008458 (A156638 (n + 1)).toNat

end

end A204769.P1696922434922559581

namespace A204769

/-- `A241521(n+1)+A008458(A156638(n+1))` -/
def P1696922434922559581.Spec : Prop :=
  ∀ n, P1696922434922559581.a n = A204769 (n + 1)

end A204769

/-! ## A204769.P1922450486185693900

`A028242(n)+A008597(A063226(n+1))`
-/

namespace A204769.P1922450486185693900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n + A008597 (A063226 (n + 1)).toNat

end

end A204769.P1922450486185693900

namespace A204769

/-- `A028242(n)+A008597(A063226(n+1))` -/
def P1922450486185693900.Spec : Prop :=
  ∀ n, P1922450486185693900.a n = A204769 (n + 1)

end A204769

/-! ## A204769.P17875513171350541004

`A017413(A028242(n))+A017305(A017017(n))`
-/

namespace A204769.P17875513171350541004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017413 (A028242 n).toNat + A017305 (A017017 n).toNat

end

end A204769.P17875513171350541004

namespace A204769

/-- `A017413(A028242(n))+A017305(A017017(n))` -/
def P17875513171350541004.Spec : Prop :=
  ∀ n, P17875513171350541004.a n = A204769 (n + 1)

end A204769

/-! ## A204769.P395196252383023878

`A177044(n+1)+A005843(A259755(n+1))`
-/

namespace A204769.P395196252383023878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177044 (n + 1) + A005843 (A259755 (n + 1)).toNat

end

end A204769.P395196252383023878

namespace A204769

/-- `A177044(n+1)+A005843(A259755(n+1))` -/
def P395196252383023878.Spec : Prop :=
  ∀ n, P395196252383023878.a n = A204769 (n + 1)

end A204769

/-!
# A204770: Expansion of psi(x^3) * f(-x) in powers of x where psi(), f() are Ramanujan theta functions.

The programs for A204770, there is no canonical definition to state claims against.
-/

/-! ## A204770.P14326882921294597133

`A008683(∑[A051847(∏{e}[n+1, #])])`
-/

namespace A204770.P14326882921294597133
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051847 (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A204770.P14326882921294597133

/-! ## A204770.P15913979580158367971

`A008683(A002524(n)+record[Δ[∏[gcd(2, n)]]-n])`
-/

namespace A204770.P15913979580158367971
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002524 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A204770.P15913979580158367971

/-! ## A204770.P12376713659051923615

`A008683(A002524(n)+∑[floor(2^n-acot(acot(n)))])`
-/

namespace A204770.P12376713659051923615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ n : ℝ) - SequenceMachineLib.acot (SequenceMachineLib.acot (n : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002524 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A204770.P12376713659051923615

/-! ## A204770.P13220006096330166835

`A008683(A002524(n)+∑[2^n-ceil(acot(acot(n)))])`
-/

namespace A204770.P13220006096330166835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ⌈SequenceMachineLib.acot (SequenceMachineLib.acot (n : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002524 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A204770.P13220006096330166835

/-! ## A204770.P14197681474649025844

`A008683(A329050(n)-A124725(n))`
-/

namespace A204770.P14197681474649025844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A329050 n - A124725 n).toNat

end

end A204770.P14197681474649025844

/-!
# A204771: a(n) = a(n-1) XOR (a(n-2)*3).

The programs for A204771, the canonical program `A204771.P14995269886181278064` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204771 has offset 0).

The definition of A204771 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204771.P14995269886181278064

`xor(3*a(n-2), a(n-1))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A204771

/-- `xor(3*a(n-2), a(n-1))` -/
def P14995269886181278064.Spec : Prop :=
  ∀ n, (P14995269886181278064.a n : ℤ) = A204771 n

theorem P14995269886181278064.correct : P14995269886181278064.Spec := by
  intro n
  simp only [A204771]

end A204771

/-! ## A204771.P12203745800302594789

`xor(a(n-2)/sqrt(1/9), a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A204771.P12203745800302594789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.xor (SequenceMachineLib.roundAway ((a (n - 2) : ℝ) / Real.sqrt ((1 : ℚ) / 9 : ℝ))) (a (n - 1))

end

end A204771.P12203745800302594789

namespace A204771

/-- `xor(a(n-2)/sqrt(1/9), a(n-1))` -/
def P12203745800302594789.Spec : Prop :=
  ∀ n, P12203745800302594789.a n = A204771 n

end A204771

/-! ## A204771.P16510011877173818110

`xor(a(n-2)/(1/2)²-a(n-2), a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A204771.P16510011877173818110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.xor (SequenceMachineLib.roundAway ((a (n - 2) : ℚ) / ((1 : ℚ) / 2) ^ 2 - (a (n - 2) : ℚ))) (a (n - 1))

end

end A204771.P16510011877173818110

namespace A204771

/-- `xor(a(n-2)/(1/2)²-a(n-2), a(n-1))` -/
def P16510011877173818110.Spec : Prop :=
  ∀ n, P16510011877173818110.a n = A204771 n

end A204771

/-! ## A204771.P16120776613140044625

`xor(a(n-2)+a(n-2)+a(n-2), a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A204771.P16120776613140044625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.xor (a (n - 2) + (a (n - 2) + a (n - 2))) (a (n - 1))

end

end A204771.P16120776613140044625

namespace A204771

/-- `xor(a(n-2)+a(n-2)+a(n-2), a(n-1))` -/
def P16120776613140044625.Spec : Prop :=
  ∀ n, (P16120776613140044625.a n : ℤ) = A204771 n

theorem P16120776613140044625.correct : P16120776613140044625.Spec := by
  intro n
  simp only [A204771, Nat.add_sub_cancel, A204771.P16120776613140044625.a, A204771.P14995269886181278064.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A204771

/-!
# A204772: "Fairly optimal" shellsort sequence for reverse-sorting an ascending sequence of size N=128.

The programs for A204772, there is no canonical definition to state claims against.
-/

/-! ## A204772.P16721066295907709699

`A010784(A139402(n+1)-A262881(n))`
-/

namespace A204772.P16721066295907709699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (A139402 (n + 1) - A262881 n).toNat

end

end A204772.P16721066295907709699

/-!
# A204774: 

The programs for A204774, there is no canonical definition to state claims against.
-/

/-! ## A204774.P11764500212817726769

`A204782((n+1)²+n²)`
-/

namespace A204774.P11764500212817726769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204782 ((n + 1) ^ 2 + n ^ 2)

end

end A204774.P11764500212817726769

/-!
# A204775: Number of (n+2) X 3 0..2 arrays with no 3 X 3 subblock having three equal diagonal elements or three equal antidiagonal elements, and new values 0..2 introduced in row major order.

The programs for A204775, there is no canonical definition to state claims against.
-/

/-! ## A204775.P17602983857773060741

`A204782(∑[n]+1)`
-/

namespace A204775.P17602983857773060741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204782 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204775.P17602983857773060741

/-! ## A204775.P4548333126278763029

`lcm(2, A204782(A000124(n)))`
-/

namespace A204775.P4548333126278763029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A204782 (A000124 n).toNat)

end

end A204775.P4548333126278763029

/-! ## A204775.P10859473146694945199

`record[A010054(n)*A204782(n+1)]`
-/

namespace A204775.P10859473146694945199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A204782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204775.P10859473146694945199

/-! ## A204775.P3398635521163689313

`record[A204782(n+1)/A158117(n)]`
-/

namespace A204775.P3398635521163689313
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204782 (n + 1) : ℚ) / (A158117 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204775.P3398635521163689313

/-! ## A204775.P18165556650677710306

`record[root(A204782(n+1), A039755(n))]`
-/

namespace A204775.P18165556650677710306
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204782 (n + 1) : ℝ) ^ (1 / (A039755 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204775.P18165556650677710306

/-!
# A204776: Number of (n+2)X4 0..2 arrays with no 3X3 subblock having three equal diagonal elements or three equal antidiagonal elements, and new values 0..2 introduced in row major order.

The programs for A204776, there is no canonical definition to state claims against.
-/

/-! ## A204776.P4407947043544594997

`A204782(∑[n+1]+2)`
-/

namespace A204776.P4407947043544594997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204782 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204776.P4407947043544594997

/-! ## A204776.P7823474564547378064

`record[A010054(n)*A204782(n+2)]`
-/

namespace A204776.P7823474564547378064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A204782 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204776.P7823474564547378064

/-! ## A204776.P7802827718174822952

`record[A204782(abs(A201163(n)))]`
-/

namespace A204776.P7802827718174822952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204782 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204776.P7802827718174822952

/-!
# A204777: Number of (n+2)X5 0..2 arrays with no 3X3 subblock having three equal diagonal elements or three equal antidiagonal elements, and new values 0..2 introduced in row major order.

The programs for A204777, there is no canonical definition to state claims against.
-/

/-! ## A204777.P15745959903619611937

`A204782(A167499(n)+n)`
-/

namespace A204777.P15745959903619611937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204782 (A167499 n + (n : ℤ)).toNat

end

end A204777.P15745959903619611937

/-! ## A204777.P4363250851644376081

`A204782(∑[n+3]+1)`
-/

namespace A204777.P4363250851644376081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204782 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204777.P4363250851644376081

/-!
# A204779: 

The programs for A204779, there is no canonical definition to state claims against.
-/

/-! ## A204779.P11562231306675030222

`A204782(A155212(n)+13)`
-/

namespace A204779.P11562231306675030222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204782 (A155212 n + 13).toNat

end

end A204779.P11562231306675030222

/-!
# A204781: 

The programs for A204781, there is no canonical definition to state claims against.
-/

/-! ## A204781.P4598434439805320929

`A204782(A000217(n+7)-n)`
-/

namespace A204781.P4598434439805320929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204782 (A000217 (n + 7) - (n : ℤ)).toNat

end

end A204781.P4598434439805320929

/-!
# A204783: Number of (n+1) X (n+1) 0..7 arrays with the permanents of all 2 X 2 subblocks equal and nonzero.

The programs for A204783, there is no canonical definition to state claims against.
-/

/-! ## A204783.P12175324569432301277

`A204791(∑[4*n]+1)`
-/

namespace A204783.P12175324569432301277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204791 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204783.P12175324569432301277

/-!
# A204784: Number of (n+1)X2 0..7 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A204784, there is no canonical definition to state claims against.
-/

/-! ## A204784.P910749705044423095

`A204791(∑[n]+1)`
-/

namespace A204784.P910749705044423095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204791 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204784.P910749705044423095

/-! ## A204784.P1819444014499936580

`or(1, A204791(-xor(∑[n], -1)))`
-/

namespace A204784.P1819444014499936580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A204791 (-Int.xor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (-1)).toNat)

end

end A204784.P1819444014499936580

/-! ## A204784.P1661426069301150355

`or(1, A204791(A000124(n)))`
-/

namespace A204784.P1661426069301150355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A204791 (A000124 n).toNat)

end

end A204784.P1661426069301150355

/-! ## A204784.P14617731653827610621

`record[A204791(A114091(n+1))]`
-/

namespace A204784.P14617731653827610621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204791 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204784.P14617731653827610621

/-! ## A204784.P15069527326711827048

`A096825(A006723(n))*A204791(A000124(n))`
-/

namespace A204784.P15069527326711827048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096825 (A006723 n).toNat * A204791 (A000124 n).toNat

end

end A204784.P15069527326711827048

/-!
# A204785: Number of (n+1)X3 0..7 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A204785, there is no canonical definition to state claims against.
-/

/-! ## A204785.P2533492452901962103

`A204791(∑[n+1]+2)`
-/

namespace A204785.P2533492452901962103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204791 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204785.P2533492452901962103

/-! ## A204785.P14122290205260140015

`or(1, A204791(A133263(n+1)))`
-/

namespace A204785.P14122290205260140015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A204791 (A133263 (n + 1)).toNat)

end

end A204785.P14122290205260140015

/-! ## A204785.P12947531000300717699

`record[A204791(A114091(n+1)+1)]`
-/

namespace A204785.P12947531000300717699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204791 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204785.P12947531000300717699

/-! ## A204785.P16799027951821308986

`record[A010054(n)*A204791(n+2)]`
-/

namespace A204785.P16799027951821308986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A204791 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204785.P16799027951821308986

/-! ## A204785.P2078235797291008170

`record[A204791(n+3)/A038243(n)]`
-/

namespace A204785.P2078235797291008170
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204791 (n + 3) : ℚ) / (A038243 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204785.P2078235797291008170

/-!
# A204786: Number of (n+1)X4 0..7 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A204786, there is no canonical definition to state claims against.
-/

/-! ## A204786.P9438645227306754080

`A204791(∑[n+2]+4)`
-/

namespace A204786.P9438645227306754080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204791 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A204786.P9438645227306754080

/-! ## A204786.P9981873751234523531

`or(1, A204791(A167614(n+1)))`
-/

namespace A204786.P9981873751234523531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A204791 (A167614 (n + 1)).toNat)

end

end A204786.P9981873751234523531

/-! ## A204786.P7962568252816617439

`record[A204791(A167614(val(n+1, 2)+1))]`
-/

namespace A204786.P7962568252816617439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204791 (A167614 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204786.P7962568252816617439

/-! ## A204786.P12205181931207844575

`A204791(A167614(n+1))+A026831(n)`
-/

namespace A204786.P12205181931207844575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204791 (A167614 (n + 1)).toNat + A026831 n

end

end A204786.P12205181931207844575

/-! ## A204786.P5895745461772192542

`A067059(n)*A204791(A167614(n+1))`
-/

namespace A204786.P5895745461772192542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067059 n * A204791 (A167614 (n + 1)).toNat

end

end A204786.P5895745461772192542

/-!
# A204787: Number of (n+1)X5 0..7 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A204787, there is no canonical definition to state claims against.
-/

/-! ## A204787.P1684330480397052842

`A204791(A374004(n+1))`
-/

namespace A204787.P1684330480397052842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204791 (A374004 (n + 1)).toNat

end

end A204787.P1684330480397052842

/-! ## A204787.P2442775244671638660

`A204791(A141214(n)+7)`
-/

namespace A204787.P2442775244671638660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204791 (A141214 n + 7).toNat

end

end A204787.P2442775244671638660

/-! ## A204787.P9576783261779063158

`A204791(A052905(n)+9)`
-/

namespace A204787.P9576783261779063158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204791 (A052905 n + 9).toNat

end

end A204787.P9576783261779063158

/-! ## A204787.P4966836008125793003

`A204791(A055999(n)+10)`
-/

namespace A204787.P4966836008125793003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204791 (A055999 n + 10).toNat

end

end A204787.P4966836008125793003

/-!
# A204788: Number of (n+1)X6 0..7 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A204788, there is no canonical definition to state claims against.
-/

/-! ## A204788.P14284239840339076001

`A204791(C(Δ[(n+2)²]+1-n, 2)-n)`
-/

namespace A204788.P14284239840339076001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204791 (Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1 - (n : ℤ)).toNat 2 - n)

end

end A204788.P14284239840339076001

/-! ## A204788.P8068978177110235969

`A204791(A374005(n+1))`
-/

namespace A204788.P8068978177110235969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204791 (A374005 (n + 1)).toNat

end

end A204788.P8068978177110235969

/-! ## A204788.P4160265205685784055

`A204791(A167499(n+3))`
-/

namespace A204788.P4160265205685784055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204791 (A167499 (n + 3)).toNat

end

end A204788.P4160265205685784055

/-!
# A204789: Number of (n+1)X7 0..7 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A204789, there is no canonical definition to state claims against.
-/

/-! ## A204789.P17984491402626797763

`A204791(A374007(n+1))`
-/

namespace A204789.P17984491402626797763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204791 (A374007 (n + 1)).toNat

end

end A204789.P17984491402626797763

/-!
# A204790: Number of (n+1)X8 0..7 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A204790, there is no canonical definition to state claims against.
-/

/-! ## A204790.P5077543829596784

`A204791(eq[4, A219347(n)])`
-/

namespace A204790.P5077543829596784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204791 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204790.P5077543829596784

/-!
# A204792: Primes p followed by a gap of 70 = nextprime(p) - p.

The programs for A204792, there is no canonical definition to state claims against.
-/

/-! ## A204792.P17640367058182144134

`A055670(A116493(n+1))-1`
-/

namespace A204792.P17640367058182144134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (A116493 (n + 1)).toNat - 1

end

end A204792.P17640367058182144134

/-!
# A204793: Number of (n+1)X(n+1) 0..1 arrays with rows and columns of determinants of all 2X2 subblocks lexicographically nondecreasing.

The programs for A204793, there is no canonical definition to state claims against.
-/

/-! ## A204793.P17963905823372028348

`A204800(∑[4*n]+1)`
-/

namespace A204793.P17963905823372028348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204800 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204793.P17963905823372028348

/-! ## A204793.P6102677668256561096

`record[A003982(n)*A204800(n+1)]`
-/

namespace A204793.P6102677668256561096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A204800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204793.P6102677668256561096

/-! ## A204793.P12352108710364141198

`record[root(A204800(n+1), A143182(n))]`
-/

namespace A204793.P12352108710364141198
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204800 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204793.P12352108710364141198

/-! ## A204793.P6841189838388582267

`record[gcd(A204800(n+1), A214292(n))]`
-/

namespace A204793.P6841189838388582267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A204800 (n + 1)) (A214292 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204793.P6841189838388582267

/-! ## A204793.P12338366202629896647

`A204800(A001844(n))+A185284(n)`
-/

namespace A204793.P12338366202629896647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204800 (A001844 n).toNat + A185284 n

end

end A204793.P12338366202629896647

/-!
# A204794: Number of (n+1) X 3 0..1 arrays with rows and columns of determinants of all 2 X 2 subblocks lexicographically nondecreasing.

The programs for A204794, there is no canonical definition to state claims against.
-/

/-! ## A204794.P629381078302253947

`A204800(∑[n+1]+2)`
-/

namespace A204794.P629381078302253947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204800 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204794.P629381078302253947

/-! ## A204794.P3508124420300612323

`A204800(A133263(n+1))%A008411(n+1)`
-/

namespace A204794.P3508124420300612323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204800 (A133263 (n + 1)).toNat) (A008411 (n + 1))

end

end A204794.P3508124420300612323

/-! ## A204794.P15787984186680899725

`record[A204800(Δ[A003453(n+5)])]`
-/

namespace A204794.P15787984186680899725
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204800 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204794.P15787984186680899725

/-! ## A204794.P13869549865871826566

`record[gcd(A165253(n+2), A204800(n+2))]`
-/

namespace A204794.P13869549865871826566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A165253 (n + 2)) (A204800 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204794.P13869549865871826566

/-! ## A204794.P11455822317522953554

`A204800(A000096(n+1))+A178798(n)`
-/

namespace A204794.P11455822317522953554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204800 (A000096 (n + 1)).toNat + A178798 n

end

end A204794.P11455822317522953554

/-!
# A204795: Number of (n+1)X4 0..1 arrays with rows and columns of determinants of all 2X2 subblocks lexicographically nondecreasing.

The programs for A204795, there is no canonical definition to state claims against.
-/

/-! ## A204795.P521706636415658864

`A204800(∑[n+2]+4)`
-/

namespace A204795.P521706636415658864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204800 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A204795.P521706636415658864

/-! ## A204795.P8545037431915093645

`A204800(A167614(n+1))+A178798(n)`
-/

namespace A204795.P8545037431915093645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204800 (A167614 (n + 1)).toNat + A178798 n

end

end A204795.P8545037431915093645

/-! ## A204795.P11769824453444554222

`A204800(A167614(n+1))+A185284(n)`
-/

namespace A204795.P11769824453444554222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204800 (A167614 (n + 1)).toNat + A185284 n

end

end A204795.P11769824453444554222

/-! ## A204795.P10519111700966846390

`or(A000007(n), A204800(A167614(n+1)))`
-/

namespace A204795.P10519111700966846390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A204800 (A167614 (n + 1)).toNat)

end

end A204795.P10519111700966846390

/-! ## A204795.P14688158785866507478

`or(A178333(n), A204800(A167614(n+1)))`
-/

namespace A204795.P14688158785866507478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A178333 n) (A204800 (A167614 (n + 1)).toNat)

end

end A204795.P14688158785866507478

/-!
# A204796: Number of (n+1)X5 0..1 arrays with rows and columns of determinants of all 2X2 subblocks lexicographically nondecreasing.

The programs for A204796, there is no canonical definition to state claims against.
-/

/-! ## A204796.P12367687368228587173

`A204800(A374004(n+1))`
-/

namespace A204796.P12367687368228587173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204800 (A374004 (n + 1)).toNat

end

end A204796.P12367687368228587173

/-! ## A204796.P13688008324640667432

`A204800(A141214(n)+7)`
-/

namespace A204796.P13688008324640667432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204800 (A141214 n + 7).toNat

end

end A204796.P13688008324640667432

/-! ## A204796.P12839671033002226279

`A204800(A167614(n+2)+1)`
-/

namespace A204796.P12839671033002226279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204800 (A167614 (n + 2) + 1).toNat

end

end A204796.P12839671033002226279

/-! ## A204796.P3972081373862207879

`A204800(A167499(n+2)-1)`
-/

namespace A204796.P3972081373862207879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204800 (A167499 (n + 2) - 1).toNat

end

end A204796.P3972081373862207879

/-! ## A204796.P11922944211135319284

`A204800(A166136(n+2)-2)`
-/

namespace A204796.P11922944211135319284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204800 (A166136 (n + 2) - 2).toNat

end

end A204796.P11922944211135319284

/-!
# A204797: Number of (n+1)X6 0..1 arrays with rows and columns of determinants of all 2X2 subblocks lexicographically nondecreasing.

The programs for A204797, there is no canonical definition to state claims against.
-/

/-! ## A204797.P2574575839104863554

`A204800(A374005(n+1))`
-/

namespace A204797.P2574575839104863554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204800 (A374005 (n + 1)).toNat

end

end A204797.P2574575839104863554

/-! ## A204797.P11611238295988347026

`A204800(A167499(n+3))`
-/

namespace A204797.P11611238295988347026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204800 (A167499 (n + 3)).toNat

end

end A204797.P11611238295988347026

/-! ## A204797.P8171831124710727829

`A204800(A056000(n)+15)`
-/

namespace A204797.P8171831124710727829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204800 (A056000 n + 15).toNat

end

end A204797.P8171831124710727829

/-! ## A204797.P3069105876209034664

`A204800(A167614(n+3)+2)`
-/

namespace A204797.P3069105876209034664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204800 (A167614 (n + 3) + 2).toNat

end

end A204797.P3069105876209034664

/-! ## A204797.P1603036627547339501

`A204800(A046691(n+3))`
-/

namespace A204797.P1603036627547339501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204800 (A046691 (n + 3)).toNat

end

end A204797.P1603036627547339501

/-!
# A204798: Number of (n+1)X7 0..1 arrays with rows and columns of determinants of all 2X2 subblocks lexicographically nondecreasing.

The programs for A204798, there is no canonical definition to state claims against.
-/

/-! ## A204798.P4839872720146923921

`A204800(A374007(n+1))`
-/

namespace A204798.P4839872720146923921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204800 (A374007 (n + 1)).toNat

end

end A204798.P4839872720146923921

/-! ## A204798.P10624600035755607424

`A204800(A166136(n+4))`
-/

namespace A204798.P10624600035755607424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204800 (A166136 (n + 4)).toNat

end

end A204798.P10624600035755607424

/-! ## A204798.P15141980304927533530

`A204800(A167499(n+4)+1)`
-/

namespace A204798.P15141980304927533530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204800 (A167499 (n + 4) + 1).toNat

end

end A204798.P15141980304927533530

/-! ## A204798.P17061958474490738980

`A204800(eq[7, A131818(n+1)])`
-/

namespace A204798.P17061958474490738980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204798.P17061958474490738980

/-! ## A204798.P4515620225584104125

`A204800(Δ[A023545(n+1)]+10)`
-/

namespace A204798.P4515620225584104125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204800 (f1 (n + 1) - f1 n + 10).toNat

end

end A204798.P4515620225584104125

/-!
# A204799: Number of (n+1)X8 0..1 arrays with rows and columns of determinants of all 2X2 subblocks lexicographically nondecreasing.

The programs for A204799, there is no canonical definition to state claims against.
-/

/-! ## A204799.P3066662721597466173

`A204800(A374008(n+1))`
-/

namespace A204799.P3066662721597466173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204800 (A374008 (n + 1)).toNat

end

end A204799.P3066662721597466173

/-! ## A204799.P7169009029101374845

`A204800(eq[8, A131818(n+1)])`
-/

namespace A204799.P7169009029101374845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204799.P7169009029101374845

/-! ## A204799.P17833728472065125379

`A204800(A055999(n+4))`
-/

namespace A204799.P17833728472065125379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204800 (A055999 (n + 4)).toNat

end

end A204799.P17833728472065125379

/-! ## A204799.P4229094017618551794

`A204800(eq[6, A193592(n)])`
-/

namespace A204799.P4229094017618551794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204799.P4229094017618551794

/-! ## A204799.P15887857635136959696

`A204800(eq[10, A185782(n+1)])`
-/

namespace A204799.P15887857635136959696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204799.P15887857635136959696

