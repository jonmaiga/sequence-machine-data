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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
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
import Seq.B006.C000
import Seq.B006.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A281400: T(n,k)=Number of nXk 0..1 arrays with no element equal to more than two of its horizontal, diagonal or antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281400, there is no canonical definition to state claims against.
-/

/-! ## A281400.P17735486870200593737

`and(A045326(A038228(n)), A283726(n+1))`
-/

namespace A281400.P17735486870200593737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A045326 (A038228 n).toNat) (A283726 (n + 1))

end

end A281400.P17735486870200593737

/-! ## A281400.P16453635808188319561

`A072088(A283726(n+1))`
-/

namespace A281400.P16453635808188319561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A283726 (n + 1)).toNat

end

end A281400.P16453635808188319561

/-! ## A281400.P11843209314017109146

`A099439(A229345(n))-4`
-/

namespace A281400.P11843209314017109146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099439 (A229345 n).toNat - 4

end

end A281400.P11843209314017109146

/-! ## A281400.P13966116509843753002

`A059446(n+1)%A176129(n)!`
-/

namespace A281400.P13966116509843753002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059446 (n + 1)) (Nat.factorial (A176129 n).toNat : ℤ)

end

end A281400.P13966116509843753002

/-! ## A281400.P11385927375297195864

`A279805(∑[n]+1)%(A176339(n)+1)`
-/

namespace A281400.P11385927375297195864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279805 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) (A176339 n + 1)

end

end A281400.P11385927375297195864

/-!
# A281401: Number of 2 X n 0..1 arrays with no element equal to more than two of its horizontal, diagonal or antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281401, the canonical program `A281401.P137340598752103484` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281401 has offset 1).

The definition of A281401 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281401.P137340598752103484

`ogf((10x^2+12x^3-48x^4-88x^5+32x^6+112x^7+8x^8-48x^9)/(1-4x-x^2+16x^3+x^4-30x^5-4x^6+24x^7+4x^8-8x^9))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A281401

/-- `ogf((10x^2+12x^3-48x^4-88x^5+32x^6+112x^7+8x^8-48x^9)/(1-4x-x^2+16x^3+x^4-30x^5-4x^6+24x^7+4x^8-8x^9))` -/
def P137340598752103484.Spec : Prop :=
  ∀ n, P137340598752103484.a n = A281401 (n + 1)

theorem P137340598752103484.correct : P137340598752103484.Spec := by
  intro n
  simp only [A281401, Nat.add_sub_cancel]

end A281401

/-! ## A281401.P13530368636352102237

`A281400(∑[n+1]+2)`
-/

namespace A281401.P13530368636352102237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281400 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A281401.P13530368636352102237

namespace A281401

/-- `A281400(∑[n+1]+2)` -/
def P13530368636352102237.Spec : Prop :=
  ∀ n, P13530368636352102237.a n = A281401 (n + 1)

end A281401

/-! ## A281401.P6581339050950486400

`lcm(2, A281400(A133263(n+1)))`
-/

namespace A281401.P6581339050950486400
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A281400 (A133263 (n + 1)).toNat)

end

end A281401.P6581339050950486400

namespace A281401

/-- `lcm(2, A281400(A133263(n+1)))` -/
def P6581339050950486400.Spec : Prop :=
  ∀ n, (P6581339050950486400.a n : ℤ) = A281401 (n + 1)

end A281401

/-! ## A281401.P2604580490854877766

`A281400(A133263(n+1))+A085974(n+1)`
-/

namespace A281401.P2604580490854877766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281400 (A133263 (n + 1)).toNat + A085974 (n + 1)

end

end A281401.P2604580490854877766

namespace A281401

/-- `A281400(A133263(n+1))+A085974(n+1)` -/
def P2604580490854877766.Spec : Prop :=
  ∀ n, P2604580490854877766.a n = A281401 (n + 1)

end A281401

/-! ## A281401.P3895577918889929813

`A007318(C(2, n))*A281400(A133263(n+1))`
-/

namespace A281401.P3895577918889929813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A281400 (A133263 (n + 1)).toNat

end

end A281401.P3895577918889929813

namespace A281401

/-- `A007318(C(2, n))*A281400(A133263(n+1))` -/
def P3895577918889929813.Spec : Prop :=
  ∀ n, P3895577918889929813.a n = A281401 (n + 1)

end A281401

/-!
# A281402: Number of 3 X n 0..1 arrays with no element equal to more than two of its horizontal, diagonal or antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281402, there is no canonical definition to state claims against.
-/

/-! ## A281402.P6809948353980234731

`A281400(∑[n+2]+4)`
-/

namespace A281402.P6809948353980234731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281400 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A281402.P6809948353980234731

/-! ## A281402.P15860702255142421398

`A281400(A055998(n)+6)+char[24]`
-/

namespace A281402.P15860702255142421398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281400 (A055998 n + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A281402.P15860702255142421398

/-! ## A281402.P9492598498963846917

`record[A010054(n)*A281400(n+3)]`
-/

namespace A281402.P9492598498963846917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A281400 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281402.P9492598498963846917

/-! ## A281402.P13050007698480931433

`lcm((-1)^n, A281400(A167614(n+1)))`
-/

namespace A281402.P13050007698480931433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A281400 (A167614 (n + 1)).toNat)

end

end A281402.P13050007698480931433

/-! ## A281402.P7168677363170135485

`A281400(A167614(n+1))+A025469(n)`
-/

namespace A281402.P7168677363170135485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281400 (A167614 (n + 1)).toNat + A025469 n

end

end A281402.P7168677363170135485

/-!
# A281403: Number of 4Xn 0..1 arrays with no element equal to more than two of its horizontal, diagonal or antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281403, there is no canonical definition to state claims against.
-/

/-! ## A281403.P16024664558066042219

`A281400(∑[n+3]+7)`
-/

namespace A281403.P16024664558066042219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281400 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A281403.P16024664558066042219

/-! ## A281403.P15370440500436106563

`lcm(2, A281400(A055999(n)+10))`
-/

namespace A281403.P15370440500436106563
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A281400 (A055999 n + 10).toNat)

end

end A281403.P15370440500436106563

/-! ## A281403.P18143284002002372797

`char[A007318(n)]*A281400(A055999(n)+10)`
-/

namespace A281403.P18143284002002372797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A281400 (A055999 n + 10).toNat

end

end A281403.P18143284002002372797

/-! ## A281403.P6108766132612607329

`A281400(A145018(n+4))+A000007(n+2)`
-/

namespace A281403.P6108766132612607329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281400 (A145018 (n + 4)).toNat + A000007 (n + 2)

end

end A281403.P6108766132612607329

/-! ## A281403.P17622260451427519601

`A007318(C(2, n))*A281400(A055999(n)+10)`
-/

namespace A281403.P17622260451427519601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A281400 (A055999 n + 10).toNat

end

end A281403.P17622260451427519601

/-!
# A281404: Number of 5 X n 0..1 arrays with no element equal to more than two of its horizontal, diagonal or antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281404, there is no canonical definition to state claims against.
-/

/-! ## A281404.P12337412651006619810

`A281400(A167499(n+3))`
-/

namespace A281404.P12337412651006619810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281400 (A167499 (n + 3)).toNat

end

end A281404.P12337412651006619810

/-! ## A281404.P15478454999183206502

`A281400(A155212(n)+13)`
-/

namespace A281404.P15478454999183206502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281400 (A155212 n + 13).toNat

end

end A281404.P15478454999183206502

/-! ## A281404.P13244106120366380077

`A281400(A056000(n)+15)`
-/

namespace A281404.P13244106120366380077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281400 (A056000 n + 15).toNat

end

end A281404.P13244106120366380077

/-! ## A281404.P10824053650962135022

`A281400(A167614(n+3)+2)`
-/

namespace A281404.P10824053650962135022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281400 (A167614 (n + 3) + 2).toNat

end

end A281404.P10824053650962135022

/-! ## A281404.P10321276696137689255

`A281400(A152950(n+5)+2)`
-/

namespace A281404.P10321276696137689255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281400 (A152950 (n + 5) + 2).toNat

end

end A281404.P10321276696137689255

/-!
# A281405: Number of 6 X n 0..1 arrays with no element equal to more than two of its horizontal, diagonal or antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281405, there is no canonical definition to state claims against.
-/

/-! ## A281405.P15425028401627031308

`A281400(∑[n+5]+16)`
-/

namespace A281405.P15425028401627031308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281400 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A281405.P15425028401627031308

/-! ## A281405.P15088396461229105895

`lcm(2, A281400(A000124(n+5)+5))`
-/

namespace A281405.P15088396461229105895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A281400 (A000124 (n + 5) + 5).toNat)

end

end A281405.P15088396461229105895

/-! ## A281405.P14195867513128590808

`char[A007318(n)]*A281400(A000124(n+5)+5)`
-/

namespace A281405.P14195867513128590808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A281400 (A000124 (n + 5) + 5).toNat

end

end A281405.P14195867513128590808

/-! ## A281405.P11663090746924632984

`A007318(floor(n/81))*A281400(A166136(n+4))`
-/

namespace A281405.P11663090746924632984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊(n : ℚ) / 81⌋.toNat * A281400 (A166136 (n + 4)).toNat

end

end A281405.P11663090746924632984

/-! ## A281405.P12367559186717352424

`A007318(C(2, n))²*A281400(A000124(n+5)+5)`
-/

namespace A281405.P12367559186717352424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) ^ 2 * A281400 (A000124 (n + 5) + 5).toNat

end

end A281405.P12367559186717352424

/-!
# A281406: Number of 7Xn 0..1 arrays with no element equal to more than two of its horizontal, diagonal or antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281406, there is no canonical definition to state claims against.
-/

/-! ## A281406.P7601949117147898957

`A281400(A167487(n+5))`
-/

namespace A281406.P7601949117147898957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281400 (A167487 (n + 5)).toNat

end

end A281406.P7601949117147898957

/-! ## A281406.P16816913810856360900

`A281400(A056119(n)+28)`
-/

namespace A281406.P16816913810856360900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281400 (A056119 n + 28).toNat

end

end A281406.P16816913810856360900

/-! ## A281406.P16127055085531785398

`A281400(A166136(n+5)+1)`
-/

namespace A281406.P16127055085531785398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281400 (A166136 (n + 5) + 1).toNat

end

end A281406.P16127055085531785398

/-! ## A281406.P5944789710470826543

`A281400(A000124(n+6)+6)`
-/

namespace A281406.P5944789710470826543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281400 (A000124 (n + 6) + 6).toNat

end

end A281406.P5944789710470826543

/-! ## A281406.P14025271463740987262

`A281400(A000096(n+5)+8)`
-/

namespace A281406.P14025271463740987262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281400 (A000096 (n + 5) + 8).toNat

end

end A281406.P14025271463740987262

/-!
# A281410: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 361", based on the 5-celled von Neumann neighborhood.

The programs for A281410, there is no canonical definition to state claims against.
-/

/-! ## A281410.P8478701282788517558

`A007088(A281412(n))`
-/

namespace A281410.P8478701282788517558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281412 n).toNat

end

end A281410.P8478701282788517558

/-! ## A281410.P16598329359856052116

`A185544(2*A281412(n))`
-/

namespace A281410.P16598329359856052116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281412 n).toNat

end

end A281410.P16598329359856052116

/-! ## A281410.P1366256108907337254

`A278719(n)+A001222(A290995(n)!)`
-/

namespace A281410.P1366256108907337254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278719 n + A001222 (Nat.factorial (A290995 n).toNat)

end

end A281410.P1366256108907337254

/-!
# A281411: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 361", based on the 5-celled von Neumann neighborhood.

The programs for A281411, there is no canonical definition to state claims against.
-/

/-! ## A281411.P3995411055490678989

`A007088(A281413(n))`
-/

namespace A281411.P3995411055490678989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281413 n).toNat

end

end A281411.P3995411055490678989

/-! ## A281411.P14720331881883545689

`A185544(2*A281413(n))`
-/

namespace A281411.P14720331881883545689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281413 n).toNat

end

end A281411.P14720331881883545689

/-!
# A281413: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 361", based on the 5-celled von Neumann neighborhood.

The programs for A281413, there is no canonical definition to state claims against.
-/

/-! ## A281413.P6848098585808579639

`A188646(A324088(n+1))*A278863(n)`
-/

namespace A281413.P6848098585808579639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188646 (A324088 (n + 1)).toNat * A278863 n

end

end A281413.P6848098585808579639

/-!
# A281414: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 363", based on the 5-celled von Neumann neighborhood.

The programs for A281414, there is no canonical definition to state claims against.
-/

/-! ## A281414.P2935118426359973903

`A007088(A281416(n))`
-/

namespace A281414.P2935118426359973903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281416 n).toNat

end

end A281414.P2935118426359973903

/-! ## A281414.P12357357175719082223

`A185544(2*A281416(n))`
-/

namespace A281414.P12357357175719082223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281416 n).toNat

end

end A281414.P12357357175719082223

/-! ## A281414.P12023228677200222406

`A281304(A281540(n+5))*A281304(n)`
-/

namespace A281414.P12023228677200222406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281304 (A281540 (n + 5)).toNat * A281304 n

end

end A281414.P12023228677200222406

/-!
# A281415: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 363", based on the 5-celled von Neumann neighborhood.

The programs for A281415, there is no canonical definition to state claims against.
-/

/-! ## A281415.P6057880791219520600

`A007088(A281417(n))`
-/

namespace A281415.P6057880791219520600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281417 n).toNat

end

end A281415.P6057880791219520600

/-! ## A281415.P642829243832101396

`A185544(2*A281417(n))`
-/

namespace A281415.P642829243832101396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281417 n).toNat

end

end A281415.P642829243832101396

/-!
# A281416: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 363", based on the 5-celled von Neumann neighborhood.

The programs for A281416, there is no canonical definition to state claims against.
-/

/-! ## A281416.P7355270834699779758

`and(A287780(A004891(n+1)), A287805(n))`
-/

namespace A281416.P7355270834699779758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A287780 (A004891 (n + 1)).toNat) (A287805 n)

end

end A281416.P7355270834699779758

/-! ## A281416.P1311902943965069524

`and(A287780(A004902(n+1)), A287805(n))`
-/

namespace A281416.P1311902943965069524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A287780 (A004902 (n + 1)).toNat) (A287805 n)

end

end A281416.P1311902943965069524

/-! ## A281416.P8420753697183341399

`and(A287780(A004913(n+1)), A287805(n))`
-/

namespace A281416.P8420753697183341399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A287780 (A004913 (n + 1)).toNat) (A287805 n)

end

end A281416.P8420753697183341399

/-! ## A281416.P11503239040842660299

`and(A287805(A004891(n+1)), A287850(n))`
-/

namespace A281416.P11503239040842660299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A287805 (A004891 (n + 1)).toNat) (A287850 n)

end

end A281416.P11503239040842660299

/-!
# A281418: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 366", based on the 5-celled von Neumann neighborhood.

The programs for A281418, there is no canonical definition to state claims against.
-/

/-! ## A281418.P2977626106289503585

`A007088(A281420(n))`
-/

namespace A281418.P2977626106289503585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281420 n).toNat

end

end A281418.P2977626106289503585

/-! ## A281418.P14422375110963021787

`A007088(or(A275962(n)², A282123(n)))`
-/

namespace A281418.P14422375110963021787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A275962 n ^ 2) (A282123 n)).toNat

end

end A281418.P14422375110963021787

/-! ## A281418.P17724152855837782776

`A007088(or(2*A275962(n), A282123(n)))`
-/

namespace A281418.P17724152855837782776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (2 * A275962 n) (A282123 n)).toNat

end

end A281418.P17724152855837782776

/-! ## A281418.P16655046571472078724

`A007088(A126646(n+1)-A283015(n+1))`
-/

namespace A281418.P16655046571472078724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A126646 (n + 1) - A283015 (n + 1)).toNat

end

end A281418.P16655046571472078724

/-! ## A281418.P17137825956071408779

`A007088(A000225(n+2)-A283015(n+1))`
-/

namespace A281418.P17137825956071408779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000225 (n + 2) - A283015 (n + 1)).toNat

end

end A281418.P17137825956071408779

/-!
# A281419: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 366", based on the 5-celled von Neumann neighborhood.

The programs for A281419, there is no canonical definition to state claims against.
-/

/-! ## A281419.P14142248803239609963

`A007088(A281421(n))`
-/

namespace A281419.P14142248803239609963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281421 n).toNat

end

end A281419.P14142248803239609963

/-! ## A281419.P7316978127716767578

`A282122(A122201(∑[n]))`
-/

namespace A281419.P7316978127716767578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282122 (A122201 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A281419.P7316978127716767578

/-! ## A281419.P1065303870723339884

`A282122(A122202(∑[n]))`
-/

namespace A281419.P1065303870723339884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282122 (A122202 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A281419.P1065303870723339884

/-! ## A281419.P12258770319923893548

`A282122(A122204(∑[n]))`
-/

namespace A281419.P12258770319923893548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282122 (A122204 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A281419.P12258770319923893548

/-! ## A281419.P17206429134831044443

`A282122(A122285(∑[n]))`
-/

namespace A281419.P17206429134831044443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282122 (A122285 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A281419.P17206429134831044443

/-!
# A281420: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 366", based on the 5-celled von Neumann neighborhood.

The programs for A281420, there is no canonical definition to state claims against.
-/

/-! ## A281420.P18295950566154510680

`A126646(n+1)-A283015(n+1)`
-/

namespace A281420.P18295950566154510680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (n + 1) - A283015 (n + 1)

end

end A281420.P18295950566154510680

/-! ## A281420.P6925300260856897575

`A000225(n+2)-A283015(n+1)`
-/

namespace A281420.P6925300260856897575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 2) - A283015 (n + 1)

end

end A281420.P6925300260856897575

/-! ## A281420.P14057210133066962897

`A095121(n+1)+1-A283015(n+1)`
-/

namespace A281420.P14057210133066962897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 (n + 1) + (1 - A283015 (n + 1))

end

end A281420.P14057210133066962897

/-! ## A281420.P5203869284094558595

`∑[A000079(n+1)]+1-A283015(n+1)`
-/

namespace A281420.P5203869284094558595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A283015 (n + 1))

end

end A281420.P5203869284094558595

/-! ## A281420.P10787708074117651023

`A000225(n+2)%A283015(A028242(2*n))`
-/

namespace A281420.P10787708074117651023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000225 (n + 2)) (A283015 (A028242 (2 * n)).toNat)

end

end A281420.P10787708074117651023

/-!
# A281421: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 366", based on the 5-celled von Neumann neighborhood.

The programs for A281421, there is no canonical definition to state claims against.
-/

/-! ## A281421.P17527230694244653896

`2*A051712(2^n)+1`
-/

namespace A281421.P17527230694244653896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051712 (2 ^ n) + 1

end

end A281421.P17527230694244653896

/-! ## A281421.P17249387109572074423

`A294178(floor(∑[2^n/3]))`
-/

namespace A281421.P17249387109572074423
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294178 ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋.toNat

end

end A281421.P17249387109572074423

/-! ## A281421.P10550353968130713050

`3^(n%2)*A004396(2^n)`
-/

namespace A281421.P10550353968130713050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n % 2) : ℤ) * A004396 (2 ^ n)

end

end A281421.P10550353968130713050

/-! ## A281421.P1840028024346449722

`A006068(2^n-(-1)^n)+1`
-/

namespace A281421.P1840028024346449722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 ((2 ^ n : ℤ) - (-1) ^ n).toNat + 1

end

end A281421.P1840028024346449722

/-! ## A281421.P9725390044141651832

`or(1, A006068(2^n-log2(gcd(2, n))))`
-/

namespace A281421.P9725390044141651832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006068 (SequenceMachineLib.roundAway ((2 ^ n : ℝ) - Real.logb 2 (Nat.gcd 2 n : ℝ))).toNat)

end

end A281421.P9725390044141651832

/-!
# A281422: Expansion of 1/(1 - Sum_{k>=1} x^prime(prime(k))).

The programs for A281422, there is no canonical definition to state claims against.
-/

/-! ## A281422.P15967681226117129741

`A093997(A052920(n)^A000121(n))`
-/

namespace A281422.P15967681226117129741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093997 (SequenceMachineLib.roundAway ((A052920 n : ℚ) ^ (A000121 n : ℤ))).toNat

end

end A281422.P15967681226117129741

/-! ## A281422.P6167743103768356640

`A239000(n)*A330348(A092524(n+1))`
-/

namespace A281422.P6167743103768356640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239000 n * A330348 (A092524 (n + 1)).toNat

end

end A281422.P6167743103768356640

/-! ## A281422.P7532407279029743884

`and(A002124(n), A244231(A290670(n)))`
-/

namespace A281422.P7532407279029743884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002124 n) (A244231 (A290670 n).toNat)

end

end A281422.P7532407279029743884

/-! ## A281422.P10516215995901916627

`A084558(A052920(n)^A072436(n+1))`
-/

namespace A281422.P10516215995901916627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (SequenceMachineLib.roundAway ((A052920 n : ℚ) ^ (A072436 (n + 1) : ℤ))).toNat

end

end A281422.P10516215995901916627

/-! ## A281422.P11817458457804017108

`A055641(A010750(n))+A052920(n)`
-/

namespace A281422.P11817458457804017108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A010750 n).toNat + A052920 n

end

end A281422.P11817458457804017108

/-!
# A281423: Expansion of (Sum_{k>=1} x^prime(prime(k)))^2 [even terms only].

The programs for A281423, there is no canonical definition to state claims against.
-/

/-! ## A281423.P11217565074229280260

`and(A121041(A200801(n+1)), A276085(n+3))`
-/

namespace A281423.P11217565074229280260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A121041 (A200801 (n + 1)).toNat) (A276085 (n + 3))

end

end A281423.P11217565074229280260

/-! ## A281423.P16672605308937853125

`A033584(n)%A039703(A111278(n+1))`
-/

namespace A281423.P16672605308937853125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033584 n) (A039703 (A111278 (n + 1)).toNat)

end

end A281423.P16672605308937853125

/-! ## A281423.P11932380569056135482

`and(A002375(A187829(n+1)), A090293(n))`
-/

namespace A281423.P11932380569056135482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002375 (A187829 (n + 1)).toNat) (A090293 n)

end

end A281423.P11932380569056135482

/-! ## A281423.P1605908360981137951

`and(A002375(n+1), A056964(A288048(n)))`
-/

namespace A281423.P1605908360981137951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002375 (n + 1)) (A056964 (A288048 n).toNat)

end

end A281423.P1605908360981137951

/-! ## A281423.P8016226217233642411

`and(A064065(n), A110657(A187829(n+1)))`
-/

namespace A281423.P8016226217233642411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A064065 n) (A110657 (A187829 (n + 1)).toNat)

end

end A281423.P8016226217233642411

/-!
# A281424: Numbers k such that 16*(10^k - 1)/3 + 1 is prime.

The programs for A281424, there is no canonical definition to state claims against.
-/

/-! ## A281424.P17562584129041859698

`A098286(A044065(n+1))-n`
-/

namespace A281424.P17562584129041859698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098286 (A044065 (n + 1)).toNat - (n : ℤ)

end

end A281424.P17562584129041859698

/-!
# A281425: a(n) = [q^n] (1 - q)^n / Product_{j=1..n} (1 - q^j).

The programs for A281425, there is no canonical definition to state claims against.
-/

/-! ## A281425.P392662491261775271

`∑{#}[n, (-1)^#*C(n, #)*A000041(n-#)]`
-/

namespace A281425.P392662491261775271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1) ^ k * (Nat.choose n k : ℤ) * A000041 (n - k)

end

end A281425.P392662491261775271

/-! ## A281425.P15826848416677224545

`A320590(n)-a(n-1)` with `a(0)=1`
-/

namespace A281425.P15826848416677224545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A320590 n - a (n - 1)

end

end A281425.P15826848416677224545

/-! ## A281425.P15047350350052847019

`A175804(∑[n])`
-/

namespace A281425.P15047350350052847019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175804 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A281425.P15047350350052847019

/-! ## A281425.P12329150040767934783

`A175804(A000217(n))%A002023(n)`
-/

namespace A281425.P12329150040767934783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175804 (A000217 n).toNat) (A002023 n)

end

end A281425.P12329150040767934783

/-! ## A281425.P2617717236174883214

`A175804(A066247((n+1)²)+A000217(n))-a(n-1)` with `a(0)=1`
-/

namespace A281425.P2617717236174883214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A175804 (A066247 ((n + 1) ^ 2) + A000217 n).toNat - a (n - 1)

end

end A281425.P2617717236174883214

/-! ## A281425.P1582035007277209840

`A193581(A050605(n))+A175804(A000217(n))`
-/

namespace A281425.P1582035007277209840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 (A050605 n).toNat + A175804 (A000217 n).toNat

end

end A281425.P1582035007277209840

/-! ## A281425.P4591415702075746290

`A104763(A000217(n)+1)*A175804(A000217(n))`
-/

namespace A281425.P4591415702075746290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (A000217 n + 1).toNat * A175804 (A000217 n).toNat

end

end A281425.P4591415702075746290

/-! ## A281425.P1979514442334467524

`A175804(A000217(n))/A001511(A157996(n+1))`
-/

namespace A281425.P1979514442334467524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175804 (A000217 n).toNat : ℚ) / (A001511 (A157996 (n + 1)).toNat : ℚ)

end

end A281425.P1979514442334467524

/-! ## A281425.P11361046522220282423

`A398990(∑[n]+n)`
-/

namespace A281425.P11361046522220282423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398990 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A281425.P11361046522220282423

/-! ## A281425.P16753703151310280859

`A066247(A112770(n+1))*A175804(A000217(n))`
-/

namespace A281425.P16753703151310280859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (A112770 (n + 1)).toNat * A175804 (A000217 n).toNat

end

end A281425.P16753703151310280859

/-!
# A281427: E.g.f. S(x) satisfies: S(x) = Integral (1 + S(x)^2)^(5/2) dx.

The programs for A281427, there is no canonical definition to state claims against.
-/

/-! ## A281427.P17633490795071538466

`A281429(Δ[n²])`
-/

namespace A281427.P17633490795071538466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281429 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A281427.P17633490795071538466

/-! ## A281427.P15420520077033164162

`record[A281429(A026741(n))]`
-/

namespace A281427.P15420520077033164162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281429 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281427.P15420520077033164162

/-! ## A281427.P16791415330343972954

`record[A281429(A131843(n))]`
-/

namespace A281427.P16791415330343972954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281429 (A131843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281427.P16791415330343972954

/-! ## A281427.P927368532522460267

`record[A281429(abs(A009001(n)))]`
-/

namespace A281427.P927368532522460267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281429 |A009001 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281427.P927368532522460267

/-! ## A281427.P14939824776938261564

`record[A281429(A161955(n+1))]`
-/

namespace A281427.P14939824776938261564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281429 (A161955 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281427.P14939824776938261564

/-!
# A281428: E.g.f. C(x) satisfies C(x) = cosh( Integral C(x)^4 dx ).

The programs for A281428, there is no canonical definition to state claims against.
-/

/-! ## A281428.P8404711279171654216

`A395146(∑[n+1]+n)`
-/

namespace A281428.P8404711279171654216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395146 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A281428.P8404711279171654216

/-! ## A281428.P17150058275751795355

`A281429(2*n)`
-/

namespace A281428.P17150058275751795355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281429 (2 * n)

end

end A281428.P17150058275751795355

/-! ## A281428.P16319966403994896763

`or(1, A281429(A005843(n)))`
-/

namespace A281428.P16319966403994896763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A281429 (A005843 n).toNat)

end

end A281428.P16319966403994896763

/-! ## A281428.P8061875518051628120

`A281429(A005843(n))^-A057428(n)`
-/

namespace A281428.P8061875518051628120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281429 (A005843 n).toNat : ℚ) ^ (-A057428 n : ℤ)

end

end A281428.P8061875518051628120

/-! ## A281428.P5654125828174669384

`A281429(A005843(n))+A000007(n+1)`
-/

namespace A281428.P5654125828174669384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281429 (A005843 n).toNat + A000007 (n + 1)

end

end A281428.P5654125828174669384

/-!
# A281429: E.g.f.: C(x) + S(x) = exp( Integral C(x)^4 dx ) where C(x) and S(x) is described by A281428 and A281427, respectively.

The programs for A281429, there is no canonical definition to state claims against.
-/

/-! ## A281429.P7999921213221751900

`A171462(A293488(n))+1`
-/

namespace A281429.P7999921213221751900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171462 (A293488 n).toNat + 1

end

end A281429.P7999921213221751900

/-! ## A281429.P14462723976560689302

`or(1, A010554(A000629(n)))`
-/

namespace A281429.P14462723976560689302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A010554 (A000629 n).toNat)

end

end A281429.P14462723976560689302

/-! ## A281429.P15350715548313098628

`or(1, A010554(A000670(n)))`
-/

namespace A281429.P15350715548313098628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A010554 (A000670 n).toNat)

end

end A281429.P15350715548313098628

/-!
# A281430: Expansion of e.g.f. C(x)^4 where C(x) is described by A281428.

The programs for A281430, the canonical program `A281430.P15226192626949792049` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281430 has offset 0).

The definition of A281430 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A281430.P15226192626949792049

`(2*n)!/3^n*∑{#}[n, C(3*#, #)*C(3*n-3*#, n-#)]`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A281430

/-- `(2*n)!/3^n*∑{#}[n, C(3*#, #)*C(3*n-3*#, n-#)]` -/
def P15226192626949792049.Spec : Prop :=
  ∀ n, P15226192626949792049.a n = (A281430 n : ℚ)

end A281430

/-! ## A281430.P8324966561711062964

`(2*n)!/3^n*A006256(n)`
-/

namespace A281430.P8324966561711062964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n) : ℚ) / (3 ^ n : ℚ) * (A006256 n : ℚ)

end

end A281430.P8324966561711062964

namespace A281430

/-- `(2*n)!/3^n*A006256(n)` -/
def P8324966561711062964.Spec : Prop :=
  ∀ n, P8324966561711062964.a n = (A281430 n : ℚ)

end A281430

/-! ## A281430.P13826645774370307054

`∑{#}[n, (2*n+#)!/#!*1/3^#]`
-/

namespace A281430.P13826645774370307054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.factorial (2 * n + k) : ℚ) / (Nat.factorial k : ℚ) * (1 / (3 ^ k : ℚ))

end

end A281430.P13826645774370307054

namespace A281430

/-- `∑{#}[n, (2*n+#)!/#!*1/3^#]` -/
def P13826645774370307054.Spec : Prop :=
  ∀ n, P13826645774370307054.a n = (A281430 n : ℚ)

end A281430

/-!
# A281432: E.g.f. C(x) satisfies: C(x) = cosh( Integral C(x)^5 dx ).

The programs for A281432, there is no canonical definition to state claims against.
-/

/-! ## A281432.P10243479560843218076

`A395172(∑[n+1]+n)`
-/

namespace A281432.P10243479560843218076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395172 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A281432.P10243479560843218076

/-!
# A281433: Number of maximal matchings in the 2 X n rook graph.

The programs for A281433, there is no canonical definition to state claims against.
-/

/-! ## A281433.P4237725261359015573

`A341847(∑[n+3])`
-/

namespace A281433.P4237725261359015573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341847 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A281433.P4237725261359015573

/-! ## A281433.P4153105237949192318

`A341847(A141214(n))%A199030(n)`
-/

namespace A281433.P4153105237949192318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341847 (A141214 n).toNat) (A199030 n)

end

end A281433.P4153105237949192318

/-! ## A281433.P7285722889594264178

`gcd(A285476(n), A341847(A141214(n)))`
-/

namespace A281433.P7285722889594264178
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A285476 n) (A341847 (A141214 n).toNat)

end

end A281433.P7285722889594264178

/-! ## A281433.P7853561344355164881

`or(A000007(n), A341847(A141214(n)))`
-/

namespace A281433.P7853561344355164881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A341847 (A141214 n).toNat)

end

end A281433.P7853561344355164881

/-! ## A281433.P8426551363546434638

`A014963(A005899(n))*A341847(A141214(n))`
-/

namespace A281433.P8426551363546434638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A005899 n).toNat * A341847 (A141214 n).toNat

end

end A281433.P8426551363546434638

/-!
# A281434: Number of terms in the fully expanded n-th derivative of x^(x^x).

The programs for A281434, there is no canonical definition to state claims against.
-/

/-! ## A281434.P9157820611592321038

`A005894(n)-A001222(2^n*∑[2^n])`
-/

namespace A281434.P9157820611592321038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005894 n - A001222 (2 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A281434.P9157820611592321038

/-! ## A281434.P15853832825616929563

`A321478(A001006(n))+A006331(n)`
-/

namespace A281434.P15853832825616929563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321478 (A001006 n).toNat + A006331 n

end

end A281434.P15853832825616929563

/-!
# A281437: Primes of the form 25*n^2 + 25*n + 47.

The programs for A281437, the canonical program `A281437.P7193636464516630686` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281437 has offset 1).

The definition of A281437 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281437.P289416653841617598

`∩[A141944(n+1), A202018(n)]`
-/

namespace A281437.P289416653841617598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281437.P289416653841617598

namespace A281437

/-- `∩[A141944(n+1), A202018(n)]` -/
def P289416653841617598.Spec : Prop :=
  ∀ n, (P289416653841617598.a n : ℤ) = A281437 (n + 1)

end A281437

/-! ## A281437.P16285073572366720291

`∩[A005846(n+1), A141944(n+1)]`
-/

namespace A281437.P16285073572366720291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281437.P16285073572366720291

namespace A281437

/-- `∩[A005846(n+1), A141944(n+1)]` -/
def P16285073572366720291.Spec : Prop :=
  ∀ n, (P16285073572366720291.a n : ℤ) = A281437 (n + 1)

end A281437

/-! ## A281437.P2983256164325370713

`∩[A054057(n+1), A141944(n+1)]`
-/

namespace A281437.P2983256164325370713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281437.P2983256164325370713

namespace A281437

/-- `∩[A054057(n+1), A141944(n+1)]` -/
def P2983256164325370713.Spec : Prop :=
  ∀ n, (P2983256164325370713.a n : ℤ) = A281437 (n + 1)

end A281437

/-! ## A281437.P3858809196034180224

`∩[A141944(n+1), A342253(n+1)]`
-/

namespace A281437.P3858809196034180224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281437.P3858809196034180224

namespace A281437

/-- `∩[A141944(n+1), A342253(n+1)]` -/
def P3858809196034180224.Spec : Prop :=
  ∀ n, (P3858809196034180224.a n : ℤ) = A281437 (n + 1)

end A281437

/-! ## A281437.P10860097505972901502

`∩[A030432(n+1), A202018(n)]`
-/

namespace A281437.P10860097505972901502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281437.P10860097505972901502

namespace A281437

/-- `∩[A030432(n+1), A202018(n)]` -/
def P10860097505972901502.Spec : Prop :=
  ∀ n, (P10860097505972901502.a n : ℤ) = A281437 (n + 1)

end A281437

/-! ## A281437.P1397053552934159434

`∩[A005846(n+1), A030432(n+1)]`
-/

namespace A281437.P1397053552934159434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281437.P1397053552934159434

namespace A281437

/-- `∩[A005846(n+1), A030432(n+1)]` -/
def P1397053552934159434.Spec : Prop :=
  ∀ n, (P1397053552934159434.a n : ℤ) = A281437 (n + 1)

end A281437

/-! ## A281437.P7780153736908740855

`∩[A030432(n+1), A054057(n+1)]`
-/

namespace A281437.P7780153736908740855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281437.P7780153736908740855

namespace A281437

/-- `∩[A030432(n+1), A054057(n+1)]` -/
def P7780153736908740855.Spec : Prop :=
  ∀ n, (P7780153736908740855.a n : ℤ) = A281437 (n + 1)

end A281437

/-! ## A281437.P7193636464516630686

`p?[a(n-1)+50*n]` with `a(0)=47`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A281437

/-- `p?[a(n-1)+50*n]` -/
def P7193636464516630686.Spec : Prop :=
  ∀ n, (P7193636464516630686.a n : ℤ) = A281437 (n + 1)

theorem P7193636464516630686.correct : P7193636464516630686.Spec := by
  intro n
  simp only [A281437, Nat.add_sub_cancel]

end A281437

/-! ## A281437.P9106450825665757646

`p?[25*(n²+2+n)-3]`
-/

namespace A281437.P9106450825665757646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (25 * (n ^ 2 + 2 + n) : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A281437.P9106450825665757646

namespace A281437

/-- `p?[25*(n²+2+n)-3]` -/
def P9106450825665757646.Spec : Prop :=
  ∀ n, P9106450825665757646.a n = A281437 (n + 1)

end A281437

/-! ## A281437.P16287401526046745300

`or(1, p?[A202018(5*n+2)])`
-/

namespace A281437.P16287401526046745300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 (5 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A281437.P16287401526046745300

namespace A281437

/-- `or(1, p?[A202018(5*n+2)])` -/
def P16287401526046745300.Spec : Prop :=
  ∀ n, P16287401526046745300.a n = A281437 (n + 1)

end A281437

/-! ## A281437.P13225039647651584388

`A007318(∑[n])*p?[A202018(5*n+2)]`
-/

namespace A281437.P13225039647651584388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 (5 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A281437.P13225039647651584388

namespace A281437

/-- `A007318(∑[n])*p?[A202018(5*n+2)]` -/
def P13225039647651584388.Spec : Prop :=
  ∀ n, P13225039647651584388.a n = A281437 (n + 1)

end A281437

/-! ## A281437.P11576003541221457442

`p?[A202018(5*n+2)]*A128227(∑[n])`
-/

namespace A281437.P11576003541221457442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 (5 * n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A128227 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A281437.P11576003541221457442

namespace A281437

/-- `p?[A202018(5*n+2)]*A128227(∑[n])` -/
def P11576003541221457442.Spec : Prop :=
  ∀ n, P11576003541221457442.a n = A281437 (n + 1)

end A281437

/-! ## A281437.P4658336276302890200

`A000038(n+1)+p?[A202018(5*n+2)]`
-/

namespace A281437.P4658336276302890200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 (5 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A281437.P4658336276302890200

namespace A281437

/-- `A000038(n+1)+p?[A202018(5*n+2)]` -/
def P4658336276302890200.Spec : Prop :=
  ∀ n, P4658336276302890200.a n = A281437 (n + 1)

end A281437

/-! ## A281437.P16732976801607591012

`p?[A202018(5*n+2)]%A000145(n+2)`
-/

namespace A281437.P16732976801607591012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 (5 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000145 (n + 2))

end

end A281437.P16732976801607591012

namespace A281437

/-- `p?[A202018(5*n+2)]%A000145(n+2)` -/
def P16732976801607591012.Spec : Prop :=
  ∀ n, P16732976801607591012.a n = A281437 (n + 1)

end A281437

/-! ## A281437.P9111409071264038398

`p?[A202018(5*n+2)]/A007318(C(2, n))`
-/

namespace A281437.P9111409071264038398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 (5 * n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A281437.P9111409071264038398

namespace A281437

/-- `p?[A202018(5*n+2)]/A007318(C(2, n))` -/
def P9111409071264038398.Spec : Prop :=
  ∀ n, P9111409071264038398.a n = (A281437 (n + 1) : ℚ)

end A281437

/-! ## A281437.P17239545193671509876

`A000122(4*n+3)+p?[A202018(5*n+2)]`
-/

namespace A281437.P17239545193671509876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 (5 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (4 * n + 3) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A281437.P17239545193671509876

namespace A281437

/-- `A000122(4*n+3)+p?[A202018(5*n+2)]` -/
def P17239545193671509876.Spec : Prop :=
  ∀ n, P17239545193671509876.a n = A281437 (n + 1)

end A281437

/-! ## A281437.P11982388367607198344

`p?[A202018(5*n+2)]+A008683(8*(n+2))`
-/

namespace A281437.P11982388367607198344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 (5 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A008683 (8 * (n + 2))

end

end A281437.P11982388367607198344

namespace A281437

/-- `p?[A202018(5*n+2)]+A008683(8*(n+2))` -/
def P11982388367607198344.Spec : Prop :=
  ∀ n, P11982388367607198344.a n = A281437 (n + 1)

end A281437

/-! ## A281437.P4905813219218924218

`A014963(12*(n+1))*p?[A202018(5*n+2)]`
-/

namespace A281437.P4905813219218924218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 (5 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * (n + 1)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A281437.P4905813219218924218

namespace A281437

/-- `A014963(12*(n+1))*p?[A202018(5*n+2)]` -/
def P4905813219218924218.Spec : Prop :=
  ∀ n, P4905813219218924218.a n = A281437 (n + 1)

end A281437

/-! ## A281437.P11658039248881816742

`p?[A202018(5*n+2)]-A000038(A007318(n))`
-/

namespace A281437.P11658039248881816742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 (5 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A000038 (A007318 n).toNat

end

end A281437.P11658039248881816742

namespace A281437

/-- `p?[A202018(5*n+2)]-A000038(A007318(n))` -/
def P11658039248881816742.Spec : Prop :=
  ∀ n, P11658039248881816742.a n = A281437 (n + 1)

end A281437

/-!
# A281441: Triangle read by rows: T(n,r), 0 <= r <= n, is the number of idempotents of rank r in the Jones monoid J_n.

The programs for A281441, there is no canonical definition to state claims against.
-/

/-! ## A281441.P223128610377029110

`∑{d}[A066325(n), A052938(A247309(#))]`
-/

namespace A281441.P223128610377029110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A052938 (A247309 d).toNat

end

end A281441.P223128610377029110

/-! ## A281441.P18269242944197703419

`A070451(A053121(n)^A292712(n))`
-/

namespace A281441.P18269242944197703419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070451 (SequenceMachineLib.roundAway ((A053121 n : ℚ) ^ (A292712 n : ℤ))).toNat

end

end A281441.P18269242944197703419

/-! ## A281441.P18356134153610553566

`A213600(n)-A093693(A168288(n))`
-/

namespace A281441.P18356134153610553566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213600 n - A093693 (A168288 n).toNat

end

end A281441.P18356134153610553566

/-! ## A281441.P17653643953723135929

`xor(A185284(A008459(n)), A213600(n))`
-/

namespace A281441.P17653643953723135929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A008459 n).toNat) (A213600 n)

end

end A281441.P17653643953723135929

/-! ## A281441.P16147400742412656585

`A115726(A256036(n))`
-/

namespace A281441.P16147400742412656585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115726 (A256036 n).toNat

end

end A281441.P16147400742412656585

/-!
# A281442: Triangle read by rows: T(n,r), 0 <= r <= n, is the number of idempotents of rank r in the Kauffman monoid K_n.

The programs for A281442, there is no canonical definition to state claims against.
-/

/-! ## A281442.P1933310121831326311

`A240834(A111594(n)+1)`
-/

namespace A281442.P1933310121831326311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240834 (A111594 n + 1).toNat

end

end A281442.P1933310121831326311

/-! ## A281442.P17929574105683940632

`A001222(2^A256038(n))`
-/

namespace A281442.P17929574105683940632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A256038 n : ℤ))).toNat

end

end A281442.P17929574105683940632

/-! ## A281442.P17975957280619478397

`A056239(2^A256038(n))`
-/

namespace A281442.P17975957280619478397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A256038 n : ℤ))).toNat

end

end A281442.P17975957280619478397

/-! ## A281442.P14380258603763340436

`A329697(3^A256038(n))`
-/

namespace A281442.P14380258603763340436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A256038 n : ℤ))).toNat

end

end A281442.P14380258603763340436

/-!
# A281445: Nonnegative k for which (2*k^2 + 1)/11 is an integer.

The programs for A281445, the canonical program `A281445.P12498793138673045197` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281445 has offset 1).

The definition of A281445 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A281445.P5016543251096207442

`ogf((4+3x+4x^2)/(1-x-x^2+x^3))`
-/

namespace A281445.P5016543251096207442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 3, 4] [1, -1, -1, 1] n

end

end A281445.P5016543251096207442

namespace A281445

/-- `ogf((4+3x+4x^2)/(1-x-x^2+x^3))` -/
def P5016543251096207442.Spec : Prop :=
  ∀ n, P5016543251096207442.a n = A281445 (n + 1)

end A281445

/-! ## A281445.P12498793138673045197

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=4, a(1)=7, a(2)=15`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A281445

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P12498793138673045197.Spec : Prop :=
  ∀ n, P12498793138673045197.a n = A281445 (n + 1)

theorem P12498793138673045197.correct : P12498793138673045197.Spec := by
  intro n
  simp only [A281445, Nat.add_sub_cancel]

end A281445

/-! ## A281445.P9565990988187370424

`(22*(n+1)-5*(-1)^(n+1)-11)/4`
-/

namespace A281445.P9565990988187370424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((22 * (n + 1) : ℤ) - 5 * (-1) ^ (n + 1) - 11 : ℚ) / 4

end

end A281445.P9565990988187370424

namespace A281445

/-- `(22*(n+1)-5*(-1)^(n+1)-11)/4` -/
def P9565990988187370424.Spec : Prop :=
  ∀ n, P9565990988187370424.a n = (A281445 (n + 1) : ℚ)

theorem P9565990988187370424.correct : P9565990988187370424.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A281445, Nat.add_sub_cancel, A281445.P9565990988187370424.a, A281445.P12498793138673045197.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A281445, Nat.add_sub_cancel, A281445.P9565990988187370424.a, A281445.P12498793138673045197.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A281445

/-! ## A281445.P6135832270352135826

`a(n-2)+11` with `a(0)=4, a(1)=7`
-/

namespace A281445.P6135832270352135826
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 7] fun n a =>
  a (n - 2) + 11

end

end A281445.P6135832270352135826

namespace A281445

/-- `a(n-2)+11` -/
def P6135832270352135826.Spec : Prop :=
  ∀ n, (P6135832270352135826.a n : ℤ) = A281445 (n + 1)

end A281445

/-! ## A281445.P16909431175424337213

`∑[11-a(n-1)]` with `a(0)=4, a(1)=3`
-/

namespace A281445.P16909431175424337213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 3] fun n f1 =>
  11 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281445.P16909431175424337213

namespace A281445

/-- `∑[11-a(n-1)]` -/
def P16909431175424337213.Spec : Prop :=
  ∀ n, P16909431175424337213.a n = A281445 (n + 1)

end A281445

/-! ## A281445.P3329429827028183321

`11*n-a(n-1)` with `a(0)=4`
-/

namespace A281445.P3329429827028183321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  (11 * n : ℤ) - a (n - 1)

end

end A281445.P3329429827028183321

namespace A281445

/-- `11*n-a(n-1)` -/
def P3329429827028183321.Spec : Prop :=
  ∀ n, P3329429827028183321.a n = A281445 (n + 1)

end A281445

/-! ## A281445.P3947621240672242972

`∑[∑[ogf((4+3x+4x^2)/(1+x))]]`
-/

namespace A281445.P3947621240672242972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 3, 4] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281445.P3947621240672242972

namespace A281445

/-- `∑[∑[ogf((4+3x+4x^2)/(1+x))]]` -/
def P3947621240672242972.Spec : Prop :=
  ∀ n, P3947621240672242972.a n = A281445 (n + 1)

end A281445

/-! ## A281445.P18160943557510187372

`∑[5*gcd(2, n)-2]-4`
-/

namespace A281445.P18160943557510187372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * Nat.gcd 2 n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 4

end

end A281445.P18160943557510187372

namespace A281445

/-- `∑[5*gcd(2, n)-2]-4` -/
def P18160943557510187372.Spec : Prop :=
  ∀ n, P18160943557510187372.a n = A281445 (n + 1)

end A281445

/-! ## A281445.P5795244136387422307

`∑[5*(n+1)%2+3]-4`
-/

namespace A281445.P5795244136387422307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * ((n + 1) % 2) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 4

end

end A281445.P5795244136387422307

namespace A281445

/-- `∑[5*(n+1)%2+3]-4` -/
def P5795244136387422307.Spec : Prop :=
  ∀ n, P5795244136387422307.a n = A281445 (n + 1)

end A281445

/-! ## A281445.P13952055013157601066

`record[lcm(3, n+1)+2*n+1]-2*n`
-/

namespace A281445.P13952055013157601066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (n + 1) + (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (2 * n : ℤ)

end

end A281445.P13952055013157601066

namespace A281445

/-- `record[lcm(3, n+1)+2*n+1]-2*n` -/
def P13952055013157601066.Spec : Prop :=
  ∀ n, P13952055013157601066.a n = A281445 (n + 1)

end A281445

/-! ## A281445.P4362914012408348948

`record[n+2-dr(2*n+1)²]+n+3`
-/

namespace A281445.P4362914012408348948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (SequenceMachineLib.digitalRoot (2 * n + 1 : ℤ) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n + 3 : ℤ)

end

end A281445.P4362914012408348948

namespace A281445

/-- `record[n+2-dr(2*n+1)²]+n+3` -/
def P4362914012408348948.Spec : Prop :=
  ∀ n, P4362914012408348948.a n = A281445 (n + 1)

end A281445

/-! ## A281445.P5914963192083820500

`∑[A010127(2*n)]`
-/

namespace A281445.P5914963192083820500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010127 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281445.P5914963192083820500

namespace A281445

/-- `∑[A010127(2*n)]` -/
def P5914963192083820500.Spec : Prop :=
  ∀ n, P5914963192083820500.a n = A281445 (n + 1)

end A281445

/-! ## A281445.P4896124264647745648

`∑[A040433(n)%17]`
-/

namespace A281445.P4896124264647745648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040433 n) 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281445.P4896124264647745648

namespace A281445

/-- `∑[A040433(n)%17]` -/
def P4896124264647745648.Spec : Prop :=
  ∀ n, P4896124264647745648.a n = A281445 (n + 1)

end A281445

/-! ## A281445.P6825741594028441878

`A168486(n+1)+2`
-/

namespace A281445.P6825741594028441878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168486 (n + 1) + 2

end

end A281445.P6825741594028441878

namespace A281445

/-- `A168486(n+1)+2` -/
def P6825741594028441878.Spec : Prop :=
  ∀ n, P6825741594028441878.a n = A281445 (n + 1)

end A281445

/-! ## A281445.P8476740834550447509

`∑[A010706(a(n-1))]` with `a(0)=4`
-/

namespace A281445.P8476740834550447509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A010706 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281445.P8476740834550447509

namespace A281445

/-- `∑[A010706(a(n-1))]` -/
def P8476740834550447509.Spec : Prop :=
  ∀ n, P8476740834550447509.a n = A281445 (n + 1)

end A281445

/-! ## A281445.P13328521096811778798

`∑[A015136(a(n-1))]` with `a(0)=4`
-/

namespace A281445.P13328521096811778798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A015136 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281445.P13328521096811778798

namespace A281445

/-- `∑[A015136(a(n-1))]` -/
def P13328521096811778798.Spec : Prop :=
  ∀ n, P13328521096811778798.a n = A281445 (n + 1)

end A281445

/-! ## A281445.P11350939772183529010

`∑[A035292(a(n-1))]` with `a(0)=4`
-/

namespace A281445.P11350939772183529010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A035292 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281445.P11350939772183529010

namespace A281445

/-- `∑[A035292(a(n-1))]` -/
def P11350939772183529010.Spec : Prop :=
  ∀ n, P11350939772183529010.a n = A281445 (n + 1)

end A281445

/-! ## A281445.P5143845485054942940

`∑[A151857(a(n-1))]` with `a(0)=4`
-/

namespace A281445.P5143845485054942940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A151857 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281445.P5143845485054942940

namespace A281445

/-- `∑[A151857(a(n-1))]` -/
def P5143845485054942940.Spec : Prop :=
  ∀ n, P5143845485054942940.a n = A281445 (n + 1)

end A281445

/-! ## A281445.P1735531175326743342

`∑[A166853(a(n-1))]` with `a(0)=4`
-/

namespace A281445.P1735531175326743342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A166853 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281445.P1735531175326743342

namespace A281445

/-- `∑[A166853(a(n-1))]` -/
def P1735531175326743342.Spec : Prop :=
  ∀ n, P1735531175326743342.a n = A281445 (n + 1)

end A281445

/-! ## A281445.P3514342353208654206

`∑[A213277(a(n-1))]` with `a(0)=4`
-/

namespace A281445.P3514342353208654206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A213277 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281445.P3514342353208654206

namespace A281445

/-- `∑[A213277(a(n-1))]` -/
def P3514342353208654206.Spec : Prop :=
  ∀ n, P3514342353208654206.a n = A281445 (n + 1)

end A281445

/-!
# A281446: Triangle read by rows: Number of oriented graphs on n nodes with k components.

The programs for A281446, there is no canonical definition to state claims against.
-/

/-! ## A281446.P16806946285975609335

`A122304(A155586(n)*A238802(n))`
-/

namespace A281446.P16806946285975609335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122304 (A155586 n * A238802 n).toNat

end

end A281446.P16806946285975609335

/-! ## A281446.P5261936655181769533

`A003056(A238802(n)^A174571(n))`
-/

namespace A281446.P5261936655181769533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.roundAway ((A238802 n : ℚ) ^ (A174571 n : ℤ))).toNat

end

end A281446.P5261936655181769533

/-! ## A281446.P6072785059973057864

`A004489(A238802(n)^A174571(n))`
-/

namespace A281446.P6072785059973057864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004489 (SequenceMachineLib.roundAway ((A238802 n : ℚ) ^ (A174571 n : ℤ))).toNat

end

end A281446.P6072785059973057864

/-! ## A281446.P8881257545702481197

`A000196(lcm(A276974(n), A299427(n)))`
-/

namespace A281446.P8881257545702481197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.lcm (A276974 n) (A299427 n))

end

end A281446.P8881257545702481197

/-! ## A281446.P5829624656047181336

`A236362(4^A287822(n))`
-/

namespace A281446.P5829624656047181336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236362 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A287822 n : ℤ))).toNat

end

end A281446.P5829624656047181336

/-!
# A281449: Expansion of Sum_{k>=1} x^(prime(k)^2)/(1 - x^(prime(k)^2)) / Product_{k>=1} (1 - x^(prime(k)^2)).

The programs for A281449, there is no canonical definition to state claims against.
-/

/-! ## A281449.P5729325032894741939

`A011738(A185130(n+2))+Δ[A286305(n)]`
-/

namespace A281449.P5729325032894741939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011738 (A185130 (n + 2)).toNat + (f1 (n + 1) - f1 n)

end

end A281449.P5729325032894741939

/-! ## A281449.P17779953865678751952

`A102673((A122768(n)-1)*A078134(n+1))`
-/

namespace A281449.P17779953865678751952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102673 ((A122768 n - 1) * A078134 (n + 1)).toNat

end

end A281449.P17779953865678751952

/-! ## A281449.P719050061257298417

`A078134(n+1)*A102673(A122768(n))`
-/

namespace A281449.P719050061257298417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078134 (n + 1) * A102673 (A122768 n).toNat

end

end A281449.P719050061257298417

/-! ## A281449.P17212414214187008693

`A078134(n+1)*A274459(A000031(n))`
-/

namespace A281449.P17212414214187008693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078134 (n + 1) * A274459 (A000031 n).toNat

end

end A281449.P17212414214187008693

/-! ## A281449.P8760416488199724265

`val(A163364(A255047(n)), 4)`
-/

namespace A281449.P8760416488199724265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A163364 (A255047 n).toNat).toNat 4

end

end A281449.P8760416488199724265

/-!
# A281450: a(n) = Fibonacci(binomial(2*n,n)).

The programs for A281450, the canonical program `A281450.P14480629358371352962` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281450 has offset 0).

The definition of A281450 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(C(2*n, n))` (program `A281450.P14480629358371352962`, by `A281450.P14480629358371352962.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A281450.P14480629358371352962

`A000045(C(2*n, n))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A281450

/-- `A000045(C(2*n, n))` -/
def P14480629358371352962.Spec : Prop :=
  ∀ n, P14480629358371352962.a n = A281450 n

theorem P14480629358371352962.correct : P14480629358371352962.Spec := by
  intro n
  simp only [A281450]

end A281450

/-!
# A281451: Expansion of x * f(x, x) * f(x, x^17) in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A281451, the canonical program `A281451.P319179514857330733` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281451 has offset 1).

The definition of A281451 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A281451.P319179514857330733

`A122865(3*(n+1)+2)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A281451

/-- `A122865(3*(n+1)+2)` -/
def P319179514857330733.Spec : Prop :=
  ∀ n, P319179514857330733.a n = A281451 (n + 1)

theorem P319179514857330733.correct : P319179514857330733.Spec := by
  intro n
  simp only [A281451, Nat.add_sub_cancel]

end A281451

/-! ## A281451.P6586975993910635388

`A122856(6*(n+1)+4)`
-/

namespace A281451.P6586975993910635388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122856 (6 * (n + 1) + 4)

end

end A281451.P6586975993910635388

namespace A281451

/-- `A122856(6*(n+1)+4)` -/
def P6586975993910635388.Spec : Prop :=
  ∀ n, P6586975993910635388.a n = A281451 (n + 1)

end A281451

/-! ## A281451.P7034749437930999262

`A258278(6*(n+1)+4)`
-/

namespace A281451.P7034749437930999262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258278 (6 * (n + 1) + 4)

end

end A281451.P7034749437930999262

namespace A281451

/-- `A258278(6*(n+1)+4)` -/
def P7034749437930999262.Spec : Prop :=
  ∀ n, P7034749437930999262.a n = A281451 (n + 1)

end A281451

/-! ## A281451.P8675747274453372335

`-A256269(9*(n+1)+7)`
-/

namespace A281451.P8675747274453372335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A256269 (9 * (n + 1) + 7)

end

end A281451.P8675747274453372335

namespace A281451

/-- `-A256269(9*(n+1)+7)` -/
def P8675747274453372335.Spec : Prop :=
  ∀ n, P8675747274453372335.a n = A281451 (n + 1)

end A281451

/-! ## A281451.P14880991303570003100

`abs(A258277(3*(n+1)+2))`
-/

namespace A281451.P14880991303570003100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A258277 (3 * (n + 1) + 2)|

end

end A281451.P14880991303570003100

namespace A281451

/-- `abs(A258277(3*(n+1)+2))` -/
def P14880991303570003100.Spec : Prop :=
  ∀ n, P14880991303570003100.a n = A281451 (n + 1)

end A281451

/-! ## A281451.P12805244187218278908

`A281453(3*(n+2)+n+1)`
-/

namespace A281451.P12805244187218278908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281453 (3 * (n + 2) + (n + 1))

end

end A281451.P12805244187218278908

namespace A281451

/-- `A281453(3*(n+2)+n+1)` -/
def P12805244187218278908.Spec : Prop :=
  ∀ n, P12805244187218278908.a n = A281451 (n + 1)

end A281451

/-! ## A281451.P16546636464770443437

`A002654(9*(n+2)-2)`
-/

namespace A281451.P16546636464770443437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (9 * (n + 2) - 2)

end

end A281451.P16546636464770443437

namespace A281451

/-- `A002654(9*(n+2)-2)` -/
def P16546636464770443437.Spec : Prop :=
  ∀ n, P16546636464770443437.a n = A281451 (n + 1)

end A281451

/-! ## A281451.P12489814704764722267

`A035154(9*(n+2)-2)`
-/

namespace A281451.P12489814704764722267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035154 (9 * (n + 2) - 2)

end

end A281451.P12489814704764722267

namespace A281451

/-- `A035154(9*(n+2)-2)` -/
def P12489814704764722267.Spec : Prop :=
  ∀ n, P12489814704764722267.a n = A281451 (n + 1)

end A281451

/-! ## A281451.P12852411104435170866

`A122864(A008591(n+2)-2)`
-/

namespace A281451.P12852411104435170866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122864 (A008591 (n + 2) - 2).toNat

end

end A281451.P12852411104435170866

namespace A281451

/-- `A122864(A008591(n+2)-2)` -/
def P12852411104435170866.Spec : Prop :=
  ∀ n, P12852411104435170866.a n = A281451 (n + 1)

end A281451

/-! ## A281451.P16593040780454491897

`A281452(A098502(n+2))`
-/

namespace A281451.P16593040780454491897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281452 (A098502 (n + 2)).toNat

end

end A281451.P16593040780454491897

namespace A281451

/-- `A281452(A098502(n+2))` -/
def P16593040780454491897.Spec : Prop :=
  ∀ n, P16593040780454491897.a n = A281451 (n + 1)

end A281451

/-! ## A281451.P1245408054264463443

`A063725(2*(9*(n+2)-2))`
-/

namespace A281451.P1245408054264463443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 (2 * ((9 * (n + 2) : ℤ) - 2)).toNat

end

end A281451.P1245408054264463443

namespace A281451

/-- `A063725(2*(9*(n+2)-2))` -/
def P1245408054264463443.Spec : Prop :=
  ∀ n, P1245408054264463443.a n = A281451 (n + 1)

end A281451

/-! ## A281451.P18016777236964294293

`A000925(9*(2*n+3)+5)`
-/

namespace A281451.P18016777236964294293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 (9 * (2 * n + 3) + 5)

end

end A281451.P18016777236964294293

namespace A281451

/-- `A000925(9*(2*n+3)+5)` -/
def P18016777236964294293.Spec : Prop :=
  ∀ n, P18016777236964294293.a n = A281451 (n + 1)

end A281451

/-!
# A281452: Expansion of f(x, x) * f(x^5, x^13) in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A281452, the canonical program `A281452.P16373175316652639648` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281452 has offset 0).

The definition of A281452 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A281452.P16373175316652639648

`A122865(3*n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A281452

/-- `A122865(3*n+1)` -/
def P16373175316652639648.Spec : Prop :=
  ∀ n, P16373175316652639648.a n = A281452 n

theorem P16373175316652639648.correct : P16373175316652639648.Spec := by
  intro n
  simp only [A281452]

end A281452

/-! ## A281452.P4818950894502745544

`A122856(6*n+2)`
-/

namespace A281452.P4818950894502745544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122856 (6 * n + 2)

end

end A281452.P4818950894502745544

namespace A281452

/-- `A122856(6*n+2)` -/
def P4818950894502745544.Spec : Prop :=
  ∀ n, P4818950894502745544.a n = A281452 n

end A281452

/-! ## A281452.P3882886265136408664

`A258278(6*n+2)`
-/

namespace A281452.P3882886265136408664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258278 (6 * n + 2)

end

end A281452.P3882886265136408664

namespace A281452

/-- `A258278(6*n+2)` -/
def P3882886265136408664.Spec : Prop :=
  ∀ n, P3882886265136408664.a n = A281452 n

end A281452

/-! ## A281452.P6619015501934525364

`A122865(A016777(n))%(2*(∑[gcd(n-1, 2*n)²]-n))`
-/

namespace A281452.P6619015501934525364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - 1) (2 * n : ℤ) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122865 (A016777 n).toNat) (2 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)))

end

end A281452.P6619015501934525364

namespace A281452

/-- `A122865(A016777(n))%(2*(∑[gcd(n-1, 2*n)²]-n))` -/
def P6619015501934525364.Spec : Prop :=
  ∀ n, P6619015501934525364.a n = A281452 n

end A281452

/-! ## A281452.P3558918068981389622

`A122865(A016777(n))%A016789(n)`
-/

namespace A281452.P3558918068981389622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122865 (A016777 n).toNat) (A016789 n)

end

end A281452.P3558918068981389622

namespace A281452

/-- `A122865(A016777(n))%A016789(n)` -/
def P3558918068981389622.Spec : Prop :=
  ∀ n, P3558918068981389622.a n = A281452 n

end A281452

/-! ## A281452.P15201096265359612846

`A122865(A016777(n))-A010674(2*n)`
-/

namespace A281452.P15201096265359612846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122865 (A016777 n).toNat - A010674 (2 * n)

end

end A281452.P15201096265359612846

namespace A281452

/-- `A122865(A016777(n))-A010674(2*n)` -/
def P15201096265359612846.Spec : Prop :=
  ∀ n, P15201096265359612846.a n = A281452 n

end A281452

/-! ## A281452.P12791511653403645284

`A281451(4*n+1)`
-/

namespace A281452.P12791511653403645284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281451 (4 * n + 1)

end

end A281452.P12791511653403645284

namespace A281452

/-- `A281451(4*n+1)` -/
def P12791511653403645284.Spec : Prop :=
  ∀ n, P12791511653403645284.a n = A281452 n

end A281452

/-! ## A281452.P10097071160109748982

`A122856(A016789(2*n))%A016789(n)`
-/

namespace A281452.P10097071160109748982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122856 (A016789 (2 * n)).toNat) (A016789 n)

end

end A281452.P10097071160109748982

namespace A281452

/-- `A122856(A016789(2*n))%A016789(n)` -/
def P10097071160109748982.Spec : Prop :=
  ∀ n, P10097071160109748982.a n = A281452 n

end A281452

/-! ## A281452.P17147515950480758524

`A002654(9*n+4)`
-/

namespace A281452.P17147515950480758524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (9 * n + 4)

end

end A281452.P17147515950480758524

namespace A281452

/-- `A002654(9*n+4)` -/
def P17147515950480758524.Spec : Prop :=
  ∀ n, P17147515950480758524.a n = A281452 n

theorem P17147515950480758524.correct : P17147515950480758524.Spec := by
  intro n
  simp only [A281452, Nat.add_sub_cancel, A281452.P17147515950480758524.a, A281452.P16373175316652639648.a, A002654, A002654.P11574922253888480122.a, A122865, A122865.P3452293728173949375.a, A001826, A001826.P1518250824516108745.a, A001842, A001842.P7159875081872045936.f1, A001842.P7159875081872045936.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A121262, A121262.P5808261376347758400.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A281452

/-! ## A281452.P17881947640501970363

`A035154(9*n+4)`
-/

namespace A281452.P17881947640501970363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035154 (9 * n + 4)

end

end A281452.P17881947640501970363

namespace A281452

/-- `A035154(9*n+4)` -/
def P17881947640501970363.Spec : Prop :=
  ∀ n, P17881947640501970363.a n = A281452 n

end A281452

/-! ## A281452.P5523376523864541391

`A113446(9*n+4)`
-/

namespace A281452.P5523376523864541391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113446 (9 * n + 4)

end

end A281452.P5523376523864541391

namespace A281452

/-- `A113446(9*n+4)` -/
def P5523376523864541391.Spec : Prop :=
  ∀ n, P5523376523864541391.a n = A281452 n

end A281452

/-! ## A281452.P3050497079633592885

`A163746(8*n+4+n)`
-/

namespace A281452.P3050497079633592885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163746 (8 * n + 4 + n)

end

end A281452.P3050497079633592885

namespace A281452

/-- `A163746(8*n+4+n)` -/
def P3050497079633592885.Spec : Prop :=
  ∀ n, P3050497079633592885.a n = A281452 n

end A281452

/-! ## A281452.P10525019360732662396

`A125061(A017113(n)+n)`
-/

namespace A281452.P10525019360732662396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125061 (A017113 n + (n : ℤ)).toNat

end

end A281452.P10525019360732662396

namespace A281452

/-- `A125061(A017113(n)+n)` -/
def P10525019360732662396.Spec : Prop :=
  ∀ n, P10525019360732662396.a n = A281452 n

end A281452

/-! ## A281452.P8603211658364509591

`A138950(A017113(n)+n)`
-/

namespace A281452.P8603211658364509591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138950 (A017113 n + (n : ℤ)).toNat

end

end A281452.P8603211658364509591

namespace A281452

/-- `A138950(A017113(n)+n)` -/
def P8603211658364509591.Spec : Prop :=
  ∀ n, P8603211658364509591.a n = A281452 n

end A281452

/-! ## A281452.P8255711849766217388

`A000925(2*(9*n+4))`
-/

namespace A281452.P8255711849766217388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 (2 * (9 * n + 4))

end

end A281452.P8255711849766217388

namespace A281452

/-- `A000925(2*(9*n+4))` -/
def P8255711849766217388.Spec : Prop :=
  ∀ n, P8255711849766217388.a n = A281452 n

end A281452

/-! ## A281452.P3395640111122264000

`A122864(A008591(2*n+1)-1)`
-/

namespace A281452.P3395640111122264000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122864 (A008591 (2 * n + 1) - 1).toNat

end

end A281452.P3395640111122264000

namespace A281452

/-- `A122864(A008591(2*n+1)-1)` -/
def P3395640111122264000.Spec : Prop :=
  ∀ n, P3395640111122264000.a n = A281452 n

end A281452

/-! ## A281452.P17719891458497972993

`A063725(A019432(2*n+1)+A019432(2*n))`
-/

namespace A281452.P17719891458497972993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 (A019432 (2 * n + 1) + A019432 (2 * n)).toNat

end

end A281452.P17719891458497972993

namespace A281452

/-- `A063725(A019432(2*n+1)+A019432(2*n))` -/
def P17719891458497972993.Spec : Prop :=
  ∀ n, P17719891458497972993.a n = A281452 n

end A281452

/-! ## A281452.P9171943967188800120

`A256282(6*(6*n+3)-2)`
-/

namespace A281452.P9171943967188800120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256282 (6 * (6 * n + 3) - 2)

end

end A281452.P9171943967188800120

namespace A281452

/-- `A256282(6*(6*n+3)-2)` -/
def P9171943967188800120.Spec : Prop :=
  ∀ n, P9171943967188800120.a n = A281452 n

end A281452

/-! ## A281452.P13608875206832499602

`A138745(A008600(2*n+1)-2)`
-/

namespace A281452.P13608875206832499602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138745 (A008600 (2 * n + 1) - 2).toNat

end

end A281452.P13608875206832499602

namespace A281452

/-- `A138745(A008600(2*n+1)-2)` -/
def P13608875206832499602.Spec : Prop :=
  ∀ n, P13608875206832499602.a n = A281452 n

end A281452

/-!
# A281453: Expansion of f(x, x) * f(x^7, x^11) in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A281453, the canonical program `A281453.P11275303056165070648` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281453 has offset 0).

The definition of A281453 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A281453.P11275303056165070648

`A122865(3*n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A281453

/-- `A122865(3*n)` -/
def P11275303056165070648.Spec : Prop :=
  ∀ n, P11275303056165070648.a n = A281453 n

theorem P11275303056165070648.correct : P11275303056165070648.Spec := by
  intro n
  simp only [A281453]

end A281453

/-! ## A281453.P3069880544635427037

`A122856(6*n)`
-/

namespace A281453.P3069880544635427037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122856 (6 * n)

end

end A281453.P3069880544635427037

namespace A281453

/-- `A122856(6*n)` -/
def P3069880544635427037.Spec : Prop :=
  ∀ n, P3069880544635427037.a n = A281453 n

end A281453

/-! ## A281453.P9147949494408549845

`A258278(6*n)`
-/

namespace A281453.P9147949494408549845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258278 (6 * n)

end

end A281453.P9147949494408549845

namespace A281453

/-- `A258278(6*n)` -/
def P9147949494408549845.Spec : Prop :=
  ∀ n, P9147949494408549845.a n = A281453 n

end A281453

/-! ## A281453.P15312737300090679996

`abs(A258277(3*n))`
-/

namespace A281453.P15312737300090679996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A258277 (3 * n)|

end

end A281453.P15312737300090679996

namespace A281453

/-- `abs(A258277(3*n))` -/
def P15312737300090679996.Spec : Prop :=
  ∀ n, P15312737300090679996.a n = A281453 n

end A281453

/-! ## A281453.P18253238194733151013

`lcm(A006466(n), A258277(3*n))`
-/

namespace A281453.P18253238194733151013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006466 n) (A258277 (3 * n))

end

end A281453.P18253238194733151013

namespace A281453

/-- `lcm(A006466(n), A258277(3*n))` -/
def P18253238194733151013.Spec : Prop :=
  ∀ n, (P18253238194733151013.a n : ℤ) = A281453 n

end A281453

/-! ## A281453.P7450277576459014145

`A122865(A008585(n))%A096376(n)`
-/

namespace A281453.P7450277576459014145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122865 (A008585 n).toNat) (A096376 n)

end

end A281453.P7450277576459014145

namespace A281453

/-- `A122865(A008585(n))%A096376(n)` -/
def P7450277576459014145.Spec : Prop :=
  ∀ n, P7450277576459014145.a n = A281453 n

end A281453

/-! ## A281453.P15266025427598018401

`A281452(4*n)`
-/

namespace A281453.P15266025427598018401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281452 (4 * n)

end

end A281453.P15266025427598018401

namespace A281453

/-- `A281452(4*n)` -/
def P15266025427598018401.Spec : Prop :=
  ∀ n, P15266025427598018401.a n = A281453 n

end A281453

/-! ## A281453.P8145550405797492392

`A002654(9*n+1)`
-/

namespace A281453.P8145550405797492392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (9 * n + 1)

end

end A281453.P8145550405797492392

namespace A281453

/-- `A002654(9*n+1)` -/
def P8145550405797492392.Spec : Prop :=
  ∀ n, P8145550405797492392.a n = A281453 n

theorem P8145550405797492392.correct : P8145550405797492392.Spec := by
  intro n
  simp only [A281453, Nat.add_sub_cancel, A281453.P8145550405797492392.a, A281453.P11275303056165070648.a, A002654, A002654.P11574922253888480122.a, A122865, A122865.P3452293728173949375.a, A001826, A001826.P1518250824516108745.a, A001842, A001842.P7159875081872045936.f1, A001842.P7159875081872045936.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A121262, A121262.P5808261376347758400.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A281453

/-! ## A281453.P15574697617570149683

`A113446(9*n+1)`
-/

namespace A281453.P15574697617570149683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113446 (9 * n + 1)

end

end A281453.P15574697617570149683

namespace A281453

/-- `A113446(9*n+1)` -/
def P15574697617570149683.Spec : Prop :=
  ∀ n, P15574697617570149683.a n = A281453 n

end A281453

/-! ## A281453.P15690899058525736792

`A122864(9*n+1)`
-/

namespace A281453.P15690899058525736792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122864 (9 * n + 1)

end

end A281453.P15690899058525736792

namespace A281453

/-- `A122864(9*n+1)` -/
def P15690899058525736792.Spec : Prop :=
  ∀ n, P15690899058525736792.a n = A281453 n

end A281453

/-! ## A281453.P10579367255593686545

`A163746(9*n+1)`
-/

namespace A281453.P10579367255593686545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163746 (9 * n + 1)

end

end A281453.P10579367255593686545

namespace A281453

/-- `A163746(9*n+1)` -/
def P10579367255593686545.Spec : Prop :=
  ∀ n, P10579367255593686545.a n = A281453 n

end A281453

/-! ## A281453.P17576013951182783629

`A105673(9*n+1)/2`
-/

namespace A281453.P17576013951182783629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105673 (9 * n + 1) : ℚ) / 2

end

end A281453.P17576013951182783629

namespace A281453

/-- `A105673(9*n+1)/2` -/
def P17576013951182783629.Spec : Prop :=
  ∀ n, P17576013951182783629.a n = (A281453 n : ℚ)

theorem P17576013951182783629.correct : P17576013951182783629.Spec := by
  intro n
  simp only [A281453, Nat.add_sub_cancel, A281453.P17576013951182783629.a, A281453.P11275303056165070648.a, A105673, A105673.P14538287794614071707.a, A122865, A122865.P3452293728173949375.a, A002654, A002654.P11574922253888480122.a, A001826, A001826.P1518250824516108745.a, A001842, A001842.P7159875081872045936.f1, A001842.P7159875081872045936.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A121262, A121262.P5808261376347758400.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A281453

/-! ## A281453.P9321791513322492140

`A035154(A017197(n)-2)`
-/

namespace A281453.P9321791513322492140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035154 (A017197 n - 2).toNat

end

end A281453.P9321791513322492140

namespace A281453

/-- `A035154(A017197(n)-2)` -/
def P9321791513322492140.Spec : Prop :=
  ∀ n, P9321791513322492140.a n = A281453 n

end A281453

/-! ## A281453.P15699617543400487291

`A281451(A158057(n))`
-/

namespace A281453.P15699617543400487291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281451 (A158057 n).toNat

end

end A281453.P15699617543400487291

namespace A281453

/-- `A281451(A158057(n))` -/
def P15699617543400487291.Spec : Prop :=
  ∀ n, P15699617543400487291.a n = A281453 n

end A281453

/-! ## A281453.P17519158373864509300

`A138745(A008600(n)+2)`
-/

namespace A281453.P17519158373864509300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138745 (A008600 n + 2).toNat

end

end A281453.P17519158373864509300

namespace A281453

/-- `A138745(A008600(n)+2)` -/
def P17519158373864509300.Spec : Prop :=
  ∀ n, P17519158373864509300.a n = A281453 n

end A281453

/-! ## A281453.P15549218697869202637

`A132003(A008600(n)+2)/2`
-/

namespace A281453.P15549218697869202637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132003 (A008600 n + 2).toNat : ℚ) / 2

end

end A281453.P15549218697869202637

namespace A281453

/-- `A132003(A008600(n)+2)/2` -/
def P15549218697869202637.Spec : Prop :=
  ∀ n, P15549218697869202637.a n = (A281453 n : ℚ)

end A281453

/-! ## A281453.P1595340441486299280

`A138745(A044102(n)/2+2)`
-/

namespace A281453.P1595340441486299280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138745 (SequenceMachineLib.roundAway ((A044102 n : ℚ) / 2 + 2)).toNat

end

end A281453.P1595340441486299280

namespace A281453

/-- `A138745(A044102(n)/2+2)` -/
def P1595340441486299280.Spec : Prop :=
  ∀ n, P1595340441486299280.a n = A281453 n

end A281453

/-!
# A281454: Exponential transform of the 4-dimensional figurate numbers (A002417).

The programs for A281454, there is no canonical definition to state claims against.
-/

/-! ## A281454.P9615378795212672326

`A347646(lcm(n, ∑[(-2)^n]))`
-/

namespace A281454.P9615378795212672326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347646 (Int.lcm (n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A281454.P9615378795212672326

/-!
# A281455: Expansion of Product_{k>=1} (1 + x^(7*k-2)).

The programs for A281455, there is no canonical definition to state claims against.
-/

/-! ## A281455.P8345540504352846593

`lcm(A051953(A106856(2*n+1)), A284503(n))`
-/

namespace A281455.P8345540504352846593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A051953 (A106856 (2 * n + 1)).toNat) (A284503 n)

end

end A281455.P8345540504352846593

/-! ## A281455.P10018177948549118517

`gcd(A000038(A158361(n+1)), A284503(n))`
-/

namespace A281455.P10018177948549118517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 (A158361 (n + 1)).toNat) (A284503 n)

end

end A281455.P10018177948549118517

/-! ## A281455.P15171987471663881727

`abs(A284503(n)%A352185(n+1))`
-/

namespace A281455.P15171987471663881727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A284503 n) (A352185 (n + 1))|

end

end A281455.P15171987471663881727

/-! ## A281455.P8630585465280363527

`gcd(A000038(A324054(n)), A284503(n))`
-/

namespace A281455.P8630585465280363527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 (A324054 n).toNat) (A284503 n)

end

end A281455.P8630585465280363527

/-! ## A281455.P9232070728969343535

`lcm(A020985(A170974(n)), A284503(n))`
-/

namespace A281455.P9232070728969343535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 (A170974 n).toNat) (A284503 n)

end

end A281455.P9232070728969343535

/-! ## A281455.P5283448819376614303

`abs(A284503(n)%A016993(A281460(n)))`
-/

namespace A281455.P5283448819376614303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A284503 n) (A016993 (A281460 n).toNat)|

end

end A281455.P5283448819376614303

/-! ## A281455.P10770556390276492045

`abs(A000038(A324054(n+1))-A284503(n))`
-/

namespace A281455.P10770556390276492045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000038 (A324054 (n + 1)).toNat - A284503 n|

end

end A281455.P10770556390276492045

/-! ## A281455.P9567596981791948118

`abs(A284503(n))%A305441(n+1)`
-/

namespace A281455.P9567596981791948118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A284503 n| (A305441 (n + 1))

end

end A281455.P9567596981791948118

/-! ## A281455.P13655519139973579468

`A018851(A284503(n)²)`
-/

namespace A281455.P13655519139973579468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A284503 n ^ 2).toNat

end

end A281455.P13655519139973579468

/-! ## A281455.P6486545332834792155

`A000194(A284503(n)²)`
-/

namespace A281455.P6486545332834792155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A284503 n ^ 2).toNat

end

end A281455.P6486545332834792155

/-! ## A281455.P2713372002804652704

`A000196(A284503(n)²)`
-/

namespace A281455.P2713372002804652704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A284503 n ^ 2).toNat

end

end A281455.P2713372002804652704

/-! ## A281455.P11829380811455607639

`A037213(A284503(n)²)`
-/

namespace A281455.P11829380811455607639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A284503 n ^ 2).toNat

end

end A281455.P11829380811455607639

/-! ## A281455.P12895113249242960329

`A259372(A284503(n)²)`
-/

namespace A281455.P12895113249242960329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259372 (A284503 n ^ 2).toNat

end

end A281455.P12895113249242960329

/-! ## A281455.P18048782778341451608

`A007966(A284503(n)²)`
-/

namespace A281455.P18048782778341451608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007966 (A284503 n ^ 2).toNat

end

end A281455.P18048782778341451608

/-! ## A281455.P15772741180810703515

`A007967(A284503(n)²)`
-/

namespace A281455.P15772741180810703515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007967 (A284503 n ^ 2).toNat

end

end A281455.P15772741180810703515

/-!
# A281456: Expansion of Product_{k>=1} (1 + x^(7*k-3)).

The programs for A281456, there is no canonical definition to state claims against.
-/

/-! ## A281456.P15330319158248357878

`gcd(A000038(A292030(n)), A284502(n))`
-/

namespace A281456.P15330319158248357878
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 (A292030 n).toNat) (A284502 n)

end

end A281456.P15330319158248357878

/-! ## A281456.P2602316910092714073

`abs(A284502(n)%A305441(n+1))`
-/

namespace A281456.P2602316910092714073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A284502 n) (A305441 (n + 1))|

end

end A281456.P2602316910092714073

/-! ## A281456.P17553561946689767542

`lcm(A091050(A161344(3*n+4)), A284502(n))`
-/

namespace A281456.P17553561946689767542
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A091050 (A161344 (3 * n + 4)).toNat) (A284502 n)

end

end A281456.P17553561946689767542

/-! ## A281456.P7373487517946749968

`abs(A284502(n))%A253129(n+1)`
-/

namespace A281456.P7373487517946749968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A284502 n| (A253129 (n + 1))

end

end A281456.P7373487517946749968

/-! ## A281456.P7027426457566227986

`lcm(A284502(n), A335452(A001122(n+1)))`
-/

namespace A281456.P7027426457566227986
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A284502 n) (A335452 (A001122 (n + 1)).toNat)

end

end A281456.P7027426457566227986

/-! ## A281456.P9237267808925633733

`A018851(A284502(n)²)`
-/

namespace A281456.P9237267808925633733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A284502 n ^ 2).toNat

end

end A281456.P9237267808925633733

/-! ## A281456.P7285369187771948364

`A018851(A284502(n)*A284502(n))`
-/

namespace A281456.P7285369187771948364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A284502 n * A284502 n).toNat

end

end A281456.P7285369187771948364

/-! ## A281456.P3800195212143480263

`A000194(A284502(n)²)`
-/

namespace A281456.P3800195212143480263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A284502 n ^ 2).toNat

end

end A281456.P3800195212143480263

/-! ## A281456.P6794449594471012413

`A000196(A284502(n)²)`
-/

namespace A281456.P6794449594471012413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A284502 n ^ 2).toNat

end

end A281456.P6794449594471012413

/-! ## A281456.P10133256144508832305

`A037213(A284502(n)²)`
-/

namespace A281456.P10133256144508832305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A284502 n ^ 2).toNat

end

end A281456.P10133256144508832305

/-! ## A281456.P5559563719976101591

`A002262(2*A284502(n)²)`
-/

namespace A281456.P5559563719976101591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (2 * A284502 n ^ 2).toNat

end

end A281456.P5559563719976101591

/-! ## A281456.P12339267401574168450

`A002262(2*A284502(n)*A284502(n))`
-/

namespace A281456.P12339267401574168450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (2 * A284502 n * A284502 n).toNat

end

end A281456.P12339267401574168450

/-! ## A281456.P15277284498545247023

`A007966(A284502(n)²)`
-/

namespace A281456.P15277284498545247023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007966 (A284502 n ^ 2).toNat

end

end A281456.P15277284498545247023

/-! ## A281456.P4580839786630591685

`A007967(A284502(n)²)`
-/

namespace A281456.P4580839786630591685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007967 (A284502 n ^ 2).toNat

end

end A281456.P4580839786630591685

/-!
# A281457: Expansion of Product_{k>=1} (1 + x^(7*k-4)).

The programs for A281457, there is no canonical definition to state claims against.
-/

/-! ## A281457.P10247395260452617514

`abs(A284501(n))%A167475(2*(n+1))`
-/

namespace A281457.P10247395260452617514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A284501 n| (A167475 (2 * (n + 1)))

end

end A281457.P10247395260452617514

/-! ## A281457.P9149420474993946461

`lcm(A057077(A286957(n)), A284501(n))`
-/

namespace A281457.P9149420474993946461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 (A286957 n).toNat) (A284501 n)

end

end A281457.P9149420474993946461

/-! ## A281457.P14993815224088907455

`gcd(A193095(A048113(n)), A284501(n))`
-/

namespace A281457.P14993815224088907455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A193095 (A048113 n).toNat) (A284501 n)

end

end A281457.P14993815224088907455

/-! ## A281457.P11525038208952140496

`A193095(A048113(n+1))+abs(A284501(n))`
-/

namespace A281457.P11525038208952140496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193095 (A048113 (n + 1)).toNat + |A284501 n|

end

end A281457.P11525038208952140496

/-! ## A281457.P9229566649825650176

`abs(A057077(A286957(n+2))*A284501(n))`
-/

namespace A281457.P9229566649825650176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057077 (A286957 (n + 2)).toNat * A284501 n|

end

end A281457.P9229566649825650176

/-! ## A281457.P9025136971214322239

`A018851(A284501(n)²)`
-/

namespace A281457.P9025136971214322239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A284501 n ^ 2).toNat

end

end A281457.P9025136971214322239

/-! ## A281457.P12165749580134247558

`A018851(A284501(n)*A284501(n))`
-/

namespace A281457.P12165749580134247558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A284501 n * A284501 n).toNat

end

end A281457.P12165749580134247558

/-! ## A281457.P10313720641721624960

`abs(A284501(n))%p?[A046691(n+5)]`
-/

namespace A281457.P10313720641721624960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046691 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A284501 n| (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A281457.P10313720641721624960

/-! ## A281457.P18086946019498134338

`abs(A001511(A053742(n))*A284501(n))`
-/

namespace A281457.P18086946019498134338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001511 (A053742 n).toNat * A284501 n|

end

end A281457.P18086946019498134338

/-! ## A281457.P16666311539047294447

`abs(A284501(n)%A077344(A000124(n)))`
-/

namespace A281457.P16666311539047294447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A284501 n) (A077344 (A000124 n).toNat)|

end

end A281457.P16666311539047294447

/-! ## A281457.P12224844358453588609

`A000194(A284501(n)²)`
-/

namespace A281457.P12224844358453588609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A284501 n ^ 2).toNat

end

end A281457.P12224844358453588609

/-! ## A281457.P15487717519255178907

`A000196(A284501(n)²)`
-/

namespace A281457.P15487717519255178907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A284501 n ^ 2).toNat

end

end A281457.P15487717519255178907

/-! ## A281457.P3103338901947080591

`A037213(A284501(n)²)`
-/

namespace A281457.P3103338901947080591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A284501 n ^ 2).toNat

end

end A281457.P3103338901947080591

/-! ## A281457.P4906523565548666475

`A178786(A284501(n)²)`
-/

namespace A281457.P4906523565548666475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178786 (A284501 n ^ 2).toNat

end

end A281457.P4906523565548666475

/-! ## A281457.P14783453437063104696

`A000196(A284501(n)^2)`
-/

namespace A281457.P14783453437063104696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A284501 n ^ 2).toNat

end

end A281457.P14783453437063104696

/-! ## A281457.P5946484851689624228

`A007966(A284501(n)²)`
-/

namespace A281457.P5946484851689624228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007966 (A284501 n ^ 2).toNat

end

end A281457.P5946484851689624228

/-! ## A281457.P8328537285646269000

`A007967(A284501(n)²)`
-/

namespace A281457.P8328537285646269000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007967 (A284501 n ^ 2).toNat

end

end A281457.P8328537285646269000

/-!
# A281458: Expansion of Product_{k>=1} (1 + x^(7*k-5)).

The programs for A281458, there is no canonical definition to state claims against.
-/

/-! ## A281458.P6058585725381914124

`gcd(A000038(A181103(n+1)), A284500(n))`
-/

namespace A281458.P6058585725381914124
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 (A181103 (n + 1)).toNat) (A284500 n)

end

end A281458.P6058585725381914124

/-! ## A281458.P8315392094920303724

`A000038(A181103(2*n+1-n))+abs(A284500(n))`
-/

namespace A281458.P8315392094920303724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A181103 ((2 * n : ℤ) + (1 - (n : ℤ))).toNat).toNat + |A284500 n|

end

end A281458.P8315392094920303724

/-! ## A281458.P2451216166971088604

`A018851(A284500(n)²)`
-/

namespace A281458.P2451216166971088604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A284500 n ^ 2).toNat

end

end A281458.P2451216166971088604

/-! ## A281458.P7366977352605411837

`abs(A000038(A181103(n+2))-A284500(n))`
-/

namespace A281458.P7366977352605411837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000038 (A181103 (n + 2)).toNat - A284500 n|

end

end A281458.P7366977352605411837

/-! ## A281458.P12761182726903422603

`lcm(A033999(A258632(n+1)), A284500(n))`
-/

namespace A281458.P12761182726903422603
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 (A258632 (n + 1)).toNat) (A284500 n)

end

end A281458.P12761182726903422603

/-! ## A281458.P16409744034608261478

`abs(A057427(A007062(n+1))*A284500(n))`
-/

namespace A281458.P16409744034608261478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057427 (A007062 (n + 1)).toNat * A284500 n|

end

end A281458.P16409744034608261478

/-! ## A281458.P6981708880647959636

`A000194(A284500(n)²)`
-/

namespace A281458.P6981708880647959636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A284500 n ^ 2).toNat

end

end A281458.P6981708880647959636

/-! ## A281458.P6496275447906235844

`A000196(A284500(n)²)`
-/

namespace A281458.P6496275447906235844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A284500 n ^ 2).toNat

end

end A281458.P6496275447906235844

/-! ## A281458.P5105425915939451518

`A037213(A284500(n)²)`
-/

namespace A281458.P5105425915939451518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A284500 n ^ 2).toNat

end

end A281458.P5105425915939451518

/-! ## A281458.P7812550849547884606

`A178786(A284500(n)²)`
-/

namespace A281458.P7812550849547884606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178786 (A284500 n ^ 2).toNat

end

end A281458.P7812550849547884606

/-! ## A281458.P14021471720130517015

`A004197(∑[n])+abs(A284500(n))`
-/

namespace A281458.P14021471720130517015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 (∑ j ∈ Finset.range (n + 1), f1 j) + |A284500 n|

end

end A281458.P14021471720130517015

/-! ## A281458.P12859961835410201734

`A007966(A284500(n)²)`
-/

namespace A281458.P12859961835410201734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007966 (A284500 n ^ 2).toNat

end

end A281458.P12859961835410201734

/-! ## A281458.P838090418242513905

`A007967(A284500(n)²)`
-/

namespace A281458.P838090418242513905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007967 (A284500 n ^ 2).toNat

end

end A281458.P838090418242513905

/-! ## A281458.P2765293171337452904

`gcd(A000038(n²), A284500(n))`
-/

namespace A281458.P2765293171337452904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 (n ^ 2)) (A284500 n)

end

end A281458.P2765293171337452904

/-!
# A281459: Expansion of Product_{k>=1} (1 + x^(7*k-1))*(1 + x^(7*k-6)).

The programs for A281459, there is no canonical definition to state claims against.
-/

/-! ## A281459.P6375130699498911172

`A098884(A057357(2*n+1))%A154646(2*n)`
-/

namespace A281459.P6375130699498911172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098884 (A057357 (2 * n + 1)).toNat) (A154646 (2 * n))

end

end A281459.P6375130699498911172

/-!
# A281460: Expansion of Product_{k>=1} (1 + x^(7*k-2))*(1 + x^(7*k-5)).

The programs for A281460, there is no canonical definition to state claims against.
-/

/-! ## A281460.P9729711673882336651

`A103221(or(A191347(n), A325789(2*n+3)))`
-/

namespace A281460.P9729711673882336651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (Int.lor (A191347 n) (A325789 (2 * n + 3))).toNat

end

end A281460.P9729711673882336651

/-! ## A281460.P6128715401985191433

`A376650(A375787(3*n+4)+A000961(n+1))`
-/

namespace A281460.P6128715401985191433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376650 (A375787 (3 * n + 4) + A000961 (n + 1)).toNat

end

end A281460.P6128715401985191433

/-! ## A281460.P2620238630653541476

`A001222(gcd(A007504(3*(n+1)), A225640(4*n+3)))`
-/

namespace A281460.P2620238630653541476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A007504 (3 * (n + 1))) (A225640 (4 * n + 3)))

end

end A281460.P2620238630653541476

/-! ## A281460.P11664184319266217046

`Δ[A000720(A061071(A000029(n)))]`
-/

namespace A281460.P11664184319266217046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A061071 (A000029 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A281460.P11664184319266217046

/-! ## A281460.P1130614530074525524

`A376657(A315701(n))`
-/

namespace A281460.P1130614530074525524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376657 (A315701 n).toNat

end

end A281460.P1130614530074525524

/-!
# A281461: Expansion of Product_{k>=1} (1 + x^(7*k-3))*(1 + x^(7*k-4)).

The programs for A281461, there is no canonical definition to state claims against.
-/

/-! ## A281461.P18352848485512937800

`A358194(A261958(n+1))`
-/

namespace A281461.P18352848485512937800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358194 (A261958 (n + 1)).toNat

end

end A281461.P18352848485512937800

/-! ## A281461.P4371717919964692889

`A056170(A000041(n)*A007951(n+3))`
-/

namespace A281461.P4371717919964692889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A000041 n * A007951 (n + 3)).toNat

end

end A281461.P4371717919964692889

/-! ## A281461.P14679772688583584020

`and(A065339(A139491(n+1)), A308504(n+1))`
-/

namespace A281461.P14679772688583584020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A065339 (A139491 (n + 1)).toNat) (A308504 (n + 1))

end

end A281461.P14679772688583584020

/-! ## A281461.P8274756717172705072

`A065293(or(A156882(n)+n, A003649(n+2)))`
-/

namespace A281461.P8274756717172705072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065293 (Int.lor (A156882 n + (n : ℤ)) (A003649 (n + 2))).toNat

end

end A281461.P8274756717172705072

/-! ## A281461.P3475118975625999698

`A086017(A248663(n+1)+A098566(n+3))`
-/

namespace A281461.P3475118975625999698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086017 (A248663 (n + 1) + A098566 (n + 3)).toNat

end

end A281461.P3475118975625999698

/-!
# A281462: Number of code loops of order n.

The programs for A281462, there is no canonical definition to state claims against.
-/

/-! ## A281462.P10651984498972144128

`A337483(∑[(-1)^(n%3)]*char[2^n-1])`
-/

namespace A281462.P10651984498972144128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337483 ((∑ j ∈ Finset.range (n + 1), f1 j) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A281462.P10651984498972144128

/-! ## A281462.P7556684439331879574

`and(A068385(n+1), A249399(n+1))`
-/

namespace A281462.P7556684439331879574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A068385 (n + 1)) (A249399 (n + 1))

end

end A281462.P7556684439331879574

/-! ## A281462.P10993612210096727048

`char[2^n-1]*A337483(A008611(n))`
-/

namespace A281462.P10993612210096727048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A337483 (A008611 n).toNat

end

end A281462.P10993612210096727048

/-! ## A281462.P4900918057855453990

`∑[A161908(n+1)]%A182660(n+1)!`
-/

namespace A281462.P4900918057855453990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161908 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (Nat.factorial (A182660 (n + 1)).toNat : ℤ)

end

end A281462.P4900918057855453990

/-! ## A281462.P12362437630043395436

`A128084(n)*A237668(round(n*∏{e}[n+1, #/n]))`
-/

namespace A281462.P12362437630043395436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128084 n * A237668 (SequenceMachineLib.roundAway ((n : ℚ) * (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℚ) / (n : ℚ)))).toNat

end

end A281462.P12362437630043395436

/-! ## A281462.P12368064473131098784

`A337483(A008611(n*A036987(n)))`
-/

namespace A281462.P12368064473131098784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337483 (A008611 ((n : ℤ) * A036987 n).toNat).toNat

end

end A281462.P12368064473131098784

/-! ## A281462.P9066901885815138763

`A337483(A008611(n)%A118821(n+1))`
-/

namespace A281462.P9066901885815138763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337483 (Int.tmod (A008611 n) (A118821 (n + 1))).toNat

end

end A281462.P9066901885815138763

/-! ## A281462.P2201271154989837278

`A068088(n+1)%A280918(A000688(n+1))`
-/

namespace A281462.P2201271154989837278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068088 (n + 1)) (A280918 (A000688 (n + 1)).toNat)

end

end A281462.P2201271154989837278

/-! ## A281462.P6590952594148452031

`and(A036039(n+1), A045763(A066060(n+1)))`
-/

namespace A281462.P6590952594148452031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A036039 (n + 1)) (A045763 (A066060 (n + 1)).toNat)

end

end A281462.P6590952594148452031

/-! ## A281462.P8619408727696966098

`and(A008612(A112624(n+1)), A036039(n+1))`
-/

namespace A281462.P8619408727696966098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008612 (A112624 (n + 1)).toNat) (A036039 (n + 1))

end

end A281462.P8619408727696966098

/-!
# A281463: Number of n X n 0..1 arrays with no element equal to more than two of its horizontal, diagonal or antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281463, there is no canonical definition to state claims against.
-/

/-! ## A281463.P11981756010144869905

`A281469(∑[4*n]+1)`
-/

namespace A281463.P11981756010144869905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281469 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A281463.P11981756010144869905

/-! ## A281463.P9773428953036930845

`A281469(A001844(n))+char[17]`
-/

namespace A281463.P9773428953036930845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281469 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A281463.P9773428953036930845

/-! ## A281463.P10373610358393594793

`record[A003982(n)*A281469(n+1)]`
-/

namespace A281463.P10373610358393594793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A281469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281463.P10373610358393594793

/-! ## A281463.P1979415722979082115

`record[gcd(A037012(n), A281469(n+1))]`
-/

namespace A281463.P1979415722979082115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A281469 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281463.P1979415722979082115

/-! ## A281463.P7134545840852916028

`A043568(n)*A281469(A001844(n))`
-/

namespace A281463.P7134545840852916028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 n * A281469 (A001844 n).toNat

end

end A281463.P7134545840852916028

/-!
# A281464: Number of n X 3 0..1 arrays with no element equal to more than two of its horizontal, diagonal or antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281464, the canonical program `A281464.P16881041455675765264` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281464 has offset 1).

The definition of A281464 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 289 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281464.P16881041455675765264

`ogf((4+9x-10x^2-26x^4+12x^5+12x^6-24x^7+16x^8)/(1-2x-3x^3+3x^4+4x^5-4x^6+4x^7))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A281464

/-- `ogf((4+9x-10x^2-26x^4+12x^5+12x^6-24x^7+16x^8)/(1-2x-3x^3+3x^4+4x^5-4x^6+4x^7))` -/
def P16881041455675765264.Spec : Prop :=
  ∀ n, P16881041455675765264.a n = A281464 (n + 1)

theorem P16881041455675765264.correct : P16881041455675765264.Spec := by
  intro n
  simp only [A281464, Nat.add_sub_cancel]

end A281464

/-! ## A281464.P7752366414897355492

`A281469(∑[n+3]+1)`
-/

namespace A281464.P7752366414897355492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281469 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A281464.P7752366414897355492

namespace A281464

/-- `A281469(∑[n+3]+1)` -/
def P7752366414897355492.Spec : Prop :=
  ∀ n, P7752366414897355492.a n = A281464 (n + 1)

end A281464

/-! ## A281464.P11668313806240824734

`or(char[1], A281469(A034856(n+2)))`
-/

namespace A281464.P11668313806240824734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A281469 (A034856 (n + 2)).toNat)

end

end A281464.P11668313806240824734

namespace A281464

/-- `or(char[1], A281469(A034856(n+2)))` -/
def P11668313806240824734.Spec : Prop :=
  ∀ n, P11668313806240824734.a n = A281464 (n + 1)

end A281464

/-! ## A281464.P2643775713418084173

`A281469(A034856(n+2))+A025466(n)`
-/

namespace A281464.P2643775713418084173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281469 (A034856 (n + 2)).toNat + A025466 n

end

end A281464.P2643775713418084173

namespace A281464

/-- `A281469(A034856(n+2))+A025466(n)` -/
def P2643775713418084173.Spec : Prop :=
  ∀ n, P2643775713418084173.a n = A281464 (n + 1)

end A281464

/-! ## A281464.P4794355057525391173

`A007318(C(n, 2))*A281469(A034856(n+2))`
-/

namespace A281464.P4794355057525391173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A281469 (A034856 (n + 2)).toNat

end

end A281464.P4794355057525391173

namespace A281464

/-- `A007318(C(n, 2))*A281469(A034856(n+2))` -/
def P4794355057525391173.Spec : Prop :=
  ∀ n, P4794355057525391173.a n = A281464 (n + 1)

end A281464

/-!
# A281465: Number of n X 4 0..1 arrays with no element equal to more than two of its horizontal, diagonal or antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281465, the canonical program `A281465.P8384030532151288740` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281465 has offset 1).

The definition of A281465 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 298 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281465.P8384030532151288740

`ogf((8+29x-6x^2-12x^3-84x^4-59x^5+50x^6+90x^7+10x^8-41x^9)/(1-x-x^2-4x^3-x^4+4x^5+5x^6-3x^8))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A281465

/-- `ogf((8+29x-6x^2-12x^3-84x^4-59x^5+50x^6+90x^7+10x^8-41x^9)/(1-x-x^2-4x^3-x^4+4x^5+5x^6-3x^8))` -/
def P8384030532151288740.Spec : Prop :=
  ∀ n, P8384030532151288740.a n = A281465 (n + 1)

theorem P8384030532151288740.correct : P8384030532151288740.Spec := by
  intro n
  simp only [A281465, Nat.add_sub_cancel]

end A281465

/-! ## A281465.P7949786507701044026

`A281469(∑[n+4]+3)`
-/

namespace A281465.P7949786507701044026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281469 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A281465.P7949786507701044026

namespace A281465

/-- `A281469(∑[n+4]+3)` -/
def P7949786507701044026.Spec : Prop :=
  ∀ n, P7949786507701044026.a n = A281465 (n + 1)

end A281465

/-! ## A281465.P2529560170308127224

`A281469(A141214(n+1))+char[27]`
-/

namespace A281465.P2529560170308127224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281469 (A141214 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A281465.P2529560170308127224

namespace A281465

/-- `A281469(A141214(n+1))+char[27]` -/
def P2529560170308127224.Spec : Prop :=
  ∀ n, P2529560170308127224.a n = A281465 (n + 1)

end A281465

/-! ## A281465.P10597850885469809713

`gcd(A025466(n), A281469(A141214(n+1)))`
-/

namespace A281465.P10597850885469809713
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025466 n) (A281469 (A141214 (n + 1)).toNat)

end

end A281465.P10597850885469809713

namespace A281465

/-- `gcd(A025466(n), A281469(A141214(n+1)))` -/
def P10597850885469809713.Spec : Prop :=
  ∀ n, (P10597850885469809713.a n : ℤ) = A281465 (n + 1)

end A281465

/-! ## A281465.P9303792286508317145

`or(A185284(n), A281469(A141214(n+1)))`
-/

namespace A281465.P9303792286508317145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185284 n) (A281469 (A141214 (n + 1)).toNat)

end

end A281465.P9303792286508317145

namespace A281465

/-- `or(A185284(n), A281469(A141214(n+1)))` -/
def P9303792286508317145.Spec : Prop :=
  ∀ n, P9303792286508317145.a n = A281465 (n + 1)

end A281465

/-!
# A281466: Number of nX5 0..1 arrays with no element equal to more than two of its horizontal, diagonal or antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281466, there is no canonical definition to state claims against.
-/

/-! ## A281466.P17072861143961636483

`A281469(∑[n+5]+6)`
-/

namespace A281466.P17072861143961636483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281469 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A281466.P17072861143961636483

/-! ## A281466.P6834157028959842664

`A281469(A046691(n+3))+A185284(n)`
-/

namespace A281466.P6834157028959842664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281469 (A046691 (n + 3)).toNat + A185284 n

end

end A281466.P6834157028959842664

/-! ## A281466.P2780968309882555964

`A281469(A060577(n+4))+A025466(n)`
-/

namespace A281466.P2780968309882555964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281469 (A060577 (n + 4)).toNat + A025466 n

end

end A281466.P2780968309882555964

/-! ## A281466.P7655082783589031399

`A281469(A060577(n+4))+A025469(n)`
-/

namespace A281466.P7655082783589031399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281469 (A060577 (n + 4)).toNat + A025469 n

end

end A281466.P7655082783589031399

/-! ## A281466.P7001198991134165979

`A281469(Δ[A023545(n+1)])%A283696(n+1)`
-/

namespace A281466.P7001198991134165979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281469 (f1 (n + 1) - f1 n).toNat) (A283696 (n + 1))

end

end A281466.P7001198991134165979

/-!
# A281467: Number of nX6 0..1 arrays with no element equal to more than two of its horizontal, diagonal or antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281467, there is no canonical definition to state claims against.
-/

/-! ## A281467.P11809103167634193328

`A281469(A052905(n+3))`
-/

namespace A281467.P11809103167634193328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281469 (A052905 (n + 3)).toNat

end

end A281467.P11809103167634193328

/-! ## A281467.P10890489374895009927

`A281469(A302537(n)+15)`
-/

namespace A281467.P10890489374895009927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281469 (A302537 n + 15).toNat

end

end A281467.P10890489374895009927

/-! ## A281467.P7045784166081931476

`A281469(A056119(n)+16)`
-/

namespace A281467.P7045784166081931476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281469 (A056119 n + 16).toNat

end

end A281467.P7045784166081931476

/-! ## A281467.P2740327111802758059

`A281469(eq[3, A219347(n)])`
-/

namespace A281467.P2740327111802758059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281469 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281467.P2740327111802758059

/-! ## A281467.P14728697964271914338

`A281469(eq[5, A193592(n)])`
-/

namespace A281467.P14728697964271914338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281469 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281467.P14728697964271914338

/-!
# A281468: Number of nX7 0..1 arrays with no element equal to more than two of its horizontal, diagonal or antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281468, there is no canonical definition to state claims against.
-/

/-! ## A281468.P9344524053524190597

`A281469(C(n+7, 2)+n+1)`
-/

namespace A281468.P9344524053524190597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281469 (Nat.choose (n + 7) 2 + n + 1)

end

end A281468.P9344524053524190597

/-! ## A281468.P4758135617635602673

`A281469(A055999(n+4))`
-/

namespace A281468.P4758135617635602673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281469 (A055999 (n + 4)).toNat

end

end A281468.P4758135617635602673

/-! ## A281468.P6437598911244390842

`A281469(eq[4, A219347(n)])`
-/

namespace A281468.P6437598911244390842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281469 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281468.P6437598911244390842

/-! ## A281468.P4924418466479347315

`A281469(eq[6, A193592(n)])`
-/

namespace A281468.P4924418466479347315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281469 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281468.P4924418466479347315

/-! ## A281468.P4295716388424857014

`A281469(Δ[A023551(n+2)])`
-/

namespace A281468.P4295716388424857014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281469 (f1 (n + 1) - f1 n).toNat

end

end A281468.P4295716388424857014

/-!
# A281469: T(n,k)=Number of nXk 0..1 arrays with no element equal to more than two of its horizontal, diagonal or antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281469, there is no canonical definition to state claims against.
-/

/-! ## A281469.P15215675516811664831

`A302623(n+1)+A016389(A022166(n))`
-/

namespace A281469.P15215675516811664831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302623 (n + 1) + A016389 (A022166 n).toNat

end

end A281469.P15215675516811664831

/-! ## A281469.P8643287788433942845

`A302623(n+1)+A016389(A027336(n))`
-/

namespace A281469.P8643287788433942845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302623 (n + 1) + A016389 (A027336 n).toNat

end

end A281469.P8643287788433942845

/-! ## A281469.P17668128252047415125

`A302623(n+1)-A025466(A001296(n))`
-/

namespace A281469.P17668128252047415125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302623 (n + 1) - A025466 (A001296 n).toNat

end

end A281469.P17668128252047415125

/-! ## A281469.P6990454053911992680

`A302623(n+1)-A011737(A022171(n))`
-/

namespace A281469.P6990454053911992680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302623 (n + 1) - A011737 (A022171 n).toNat

end

end A281469.P6990454053911992680

/-! ## A281469.P14548845691639445369

`A302623(n+1)-A025465(A022345(n))`
-/

namespace A281469.P14548845691639445369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302623 (n + 1) - A025465 (A022345 n).toNat

end

end A281469.P14548845691639445369

/-!
# A281470: Number of 2Xn 0..1 arrays with no element equal to more than two of its horizontal, diagonal or antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281470, the canonical program `A281470.P4138501487951549908` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281470 has offset 1).

The definition of A281470 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 294 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281470.P13624470870724055369

`ogf((2+2x-9x^2-10x^3+2x^4+8x^5)/(1-3x-x^2+6x^3+2x^4-4x^5))`
-/

namespace A281470.P13624470870724055369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2, -9, -10, 2, 8] [1, -3, -1, 6, 2, -4] n

end

end A281470.P13624470870724055369

namespace A281470

/-- `ogf((2+2x-9x^2-10x^3+2x^4+8x^5)/(1-3x-x^2+6x^3+2x^4-4x^5))` -/
def P13624470870724055369.Spec : Prop :=
  ∀ n, P13624470870724055369.a n = A281470 (n + 1)

end A281470

/-! ## A281470.P4138501487951549908

`3*a(n-1)+a(n-2)-6*a(n-3)-2*a(n-4)+4*a(n-5)` with `a(0)=2, a(1)=8, a(2)=17, a(3)=37, a(4)=78, a(5)=169`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A281470

/-- `3*a(n-1)+a(n-2)-6*a(n-3)-2*a(n-4)+4*a(n-5)` -/
def P4138501487951549908.Spec : Prop :=
  ∀ n, P4138501487951549908.a n = A281470 (n + 1)

theorem P4138501487951549908.correct : P4138501487951549908.Spec := by
  intro n
  simp only [A281470, Nat.add_sub_cancel]

end A281470

/-! ## A281470.P13445547345452868279

`A052933(n²%(n+1)+n+1)+2^n`
-/

namespace A281470.P13445547345452868279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052933 (n ^ 2 % (n + 1) + (n + 1)) + (2 ^ n : ℤ)

end

end A281470.P13445547345452868279

namespace A281470

/-- `A052933(n²%(n+1)+n+1)+2^n` -/
def P13445547345452868279.Spec : Prop :=
  ∀ n, P13445547345452868279.a n = A281470 (n + 1)

end A281470

/-! ## A281470.P12283312392932862896

`A052933(A065475(n+1))+2^n`
-/

namespace A281470.P12283312392932862896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052933 (A065475 (n + 1)).toNat + (2 ^ n : ℤ)

end

end A281470.P12283312392932862896

namespace A281470

/-- `A052933(A065475(n+1))+2^n` -/
def P12283312392932862896.Spec : Prop :=
  ∀ n, P12283312392932862896.a n = A281470 (n + 1)

end A281470

/-! ## A281470.P8216737299215195362

`A052933(and(1, A000040(n+1))+1+n)+2^n`
-/

namespace A281470.P8216737299215195362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052933 (Int.land 1 (A000040 (n + 1)) + 1 + (n : ℤ)).toNat + (2 ^ n : ℤ)

end

end A281470.P8216737299215195362

namespace A281470

/-- `A052933(and(1, A000040(n+1))+1+n)+2^n` -/
def P8216737299215195362.Spec : Prop :=
  ∀ n, P8216737299215195362.a n = A281470 (n + 1)

end A281470

/-! ## A281470.P10554738970692600900

`A156552(A000040(n+1))+A052933(A065475(n+1))`
-/

namespace A281470.P10554738970692600900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A000040 (n + 1)).toNat + A052933 (A065475 (n + 1)).toNat

end

end A281470.P10554738970692600900

namespace A281470

/-- `A156552(A000040(n+1))+A052933(A065475(n+1))` -/
def P10554738970692600900.Spec : Prop :=
  ∀ n, P10554738970692600900.a n = A281470 (n + 1)

end A281470

/-!
# A281471: Number of 3 X n 0..1 arrays with no element equal to more than two of its horizontal, diagonal or antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281471, the canonical program `A281471.P2897887390028269471` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281471 has offset 1).

The definition of A281471 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 433 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281471.P16047426566165382193

`ogf((4+17x-22x^2+8x^3-39x^4+14x^5-2x^6+2x^7)/(1-2x+x^2-2x^3+2x^4))`
-/

namespace A281471.P16047426566165382193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 17, -22, 8, -39, 14, -2, 2] [1, -2, 1, -2, 2] n

end

end A281471.P16047426566165382193

namespace A281471

/-- `ogf((4+17x-22x^2+8x^3-39x^4+14x^5-2x^6+2x^7)/(1-2x+x^2-2x^3+2x^4))` -/
def P16047426566165382193.Spec : Prop :=
  ∀ n, P16047426566165382193.a n = A281471 (n + 1)

end A281471

/-! ## A281471.P2897887390028269471

`2*a(n-1)-a(n-2)+2*a(n-3)-2*a(n-4)` with `a(0)=4, a(1)=25, a(2)=24, a(3)=39, a(4)=57, a(5)=87, a(6)=145, a(7)=241`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A281471

/-- `2*a(n-1)-a(n-2)+2*a(n-3)-2*a(n-4)` -/
def P2897887390028269471.Spec : Prop :=
  ∀ n, P2897887390028269471.a n = A281471 (n + 1)

theorem P2897887390028269471.correct : P2897887390028269471.Spec := by
  intro n
  simp only [A281471, Nat.add_sub_cancel]

end A281471

/-! ## A281471.P6894171008925206163

`A281469(∑[n+2]+4)`
-/

namespace A281471.P6894171008925206163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281469 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A281471.P6894171008925206163

namespace A281471

/-- `A281469(∑[n+2]+4)` -/
def P6894171008925206163.Spec : Prop :=
  ∀ n, P6894171008925206163.a n = A281471 (n + 1)

end A281471

/-! ## A281471.P625857340559038705

`or(char[1], A281469(A167614(n+1)))`
-/

namespace A281471.P625857340559038705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A281469 (A167614 (n + 1)).toNat)

end

end A281471.P625857340559038705

namespace A281471

/-- `or(char[1], A281469(A167614(n+1)))` -/
def P625857340559038705.Spec : Prop :=
  ∀ n, P625857340559038705.a n = A281471 (n + 1)

end A281471

/-! ## A281471.P16427940736248471588

`or(char[1], A281469(A000096(n+1)+4))`
-/

namespace A281471.P16427940736248471588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A281469 (A000096 (n + 1) + 4).toNat)

end

end A281471.P16427940736248471588

namespace A281471

/-- `or(char[1], A281469(A000096(n+1)+4))` -/
def P16427940736248471588.Spec : Prop :=
  ∀ n, P16427940736248471588.a n = A281471 (n + 1)

end A281471

/-!
# A281472: Number of 4 X n 0..1 arrays with no element equal to more than two of its horizontal, diagonal or antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281472, the canonical program `A281472.P2415642488865003970` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281472 has offset 1).

The definition of A281472 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281472.P10363468383409971880

`ogf((8+65x-94x^2+49x^3-83x^4-40x^5+23x^6-8x^7+4x^8)/(1-2x+x^2-x^3+x^5))`
-/

namespace A281472.P10363468383409971880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 65, -94, 49, -83, -40, 23, -8, 4] [1, -2, 1, -1, 0, 1] n

end

end A281472.P10363468383409971880

namespace A281472

/-- `ogf((8+65x-94x^2+49x^3-83x^4-40x^5+23x^6-8x^7+4x^8)/(1-2x+x^2-x^3+x^5))` -/
def P10363468383409971880.Spec : Prop :=
  ∀ n, P10363468383409971880.a n = A281472 (n + 1)

end A281472

/-! ## A281472.P2415642488865003970

`2*a(n-1)-a(n-2)+a(n-3)-a(n-5)` with `a(0)=8, a(1)=81, a(2)=60, a(3)=96, a(4)=130, a(5)=176, a(6)=260, a(7)=406, a(8)=636`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A281472

/-- `2*a(n-1)-a(n-2)+a(n-3)-a(n-5)` -/
def P2415642488865003970.Spec : Prop :=
  ∀ n, P2415642488865003970.a n = A281472 (n + 1)

theorem P2415642488865003970.correct : P2415642488865003970.Spec := by
  intro n
  simp only [A281472, Nat.add_sub_cancel]

end A281472

/-! ## A281472.P13632187135181125265

`A281469(∑[n+3]+7)`
-/

namespace A281472.P13632187135181125265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281469 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A281472.P13632187135181125265

namespace A281472

/-- `A281469(∑[n+3]+7)` -/
def P13632187135181125265.Spec : Prop :=
  ∀ n, P13632187135181125265.a n = A281472 (n + 1)

end A281472

/-! ## A281472.P14754008028960436637

`or(char[1], A281469(A167614(n+2)+1))`
-/

namespace A281472.P14754008028960436637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A281469 (A167614 (n + 2) + 1).toNat)

end

end A281472.P14754008028960436637

namespace A281472

/-- `or(char[1], A281469(A167614(n+2)+1))` -/
def P14754008028960436637.Spec : Prop :=
  ∀ n, P14754008028960436637.a n = A281472 (n + 1)

end A281472

/-! ## A281472.P2592906399180810100

`A281469(A000217(n+3)+4)%A345085(n+1)`
-/

namespace A281472.P2592906399180810100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281469 (A000217 (n + 3) + 4).toNat) (A345085 (n + 1))

end

end A281472.P2592906399180810100

namespace A281472

/-- `A281469(A000217(n+3)+4)%A345085(n+1)` -/
def P2592906399180810100.Spec : Prop :=
  ∀ n, P2592906399180810100.a n = A281472 (n + 1)

end A281472

/-!
# A281473: Number of 5 X n 0..1 arrays with no element equal to more than two of its horizontal, diagonal or antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281473, there is no canonical definition to state claims against.
-/

/-! ## A281473.P10328901126525978678

`A281469(A167499(n+3))`
-/

namespace A281473.P10328901126525978678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281469 (A167499 (n + 3)).toNat

end

end A281473.P10328901126525978678

/-! ## A281473.P4008525335248331258

`A281469(A155212(n)+13)`
-/

namespace A281473.P4008525335248331258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281469 (A155212 n + 13).toNat

end

end A281473.P4008525335248331258

/-! ## A281473.P11644827059911906431

`A281469(A056000(n)+15)`
-/

namespace A281473.P11644827059911906431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281469 (A056000 n + 15).toNat

end

end A281473.P11644827059911906431

/-! ## A281473.P15437466510716036349

`A281469(A167614(n+3)+2)`
-/

namespace A281473.P15437466510716036349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281469 (A167614 (n + 3) + 2).toNat

end

end A281473.P15437466510716036349

/-! ## A281473.P2756139365714934746

`A281469(A133263(n+4)+3)`
-/

namespace A281473.P2756139365714934746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281469 (A133263 (n + 4) + 3).toNat

end

end A281473.P2756139365714934746

/-!
# A281474: Number of 6 X n 0..1 arrays with no element equal to more than two of its horizontal, diagonal or antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281474, there is no canonical definition to state claims against.
-/

/-! ## A281474.P17279786115355255498

`A281469(A166136(n+4))`
-/

namespace A281474.P17279786115355255498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281469 (A166136 (n + 4)).toNat

end

end A281474.P17279786115355255498

/-! ## A281474.P6376341340604381347

`A281469(A056115(n)+21)`
-/

namespace A281474.P6376341340604381347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281469 (A056115 n + 21).toNat

end

end A281474.P6376341340604381347

/-! ## A281474.P14080460533426371300

`A281469(A167499(n+4)+1)`
-/

namespace A281474.P14080460533426371300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281469 (A167499 (n + 4) + 1).toNat

end

end A281474.P14080460533426371300

/-! ## A281474.P1816902744139067974

`A281469(A167614(n+4)+3)`
-/

namespace A281474.P1816902744139067974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281469 (A167614 (n + 4) + 3).toNat

end

end A281474.P1816902744139067974

/-! ## A281474.P15557795150542410953

`A281469(A133263(n+5)+4)`
-/

namespace A281474.P15557795150542410953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281469 (A133263 (n + 5) + 4).toNat

end

end A281474.P15557795150542410953

/-!
# A281475: Number of 7 X n 0..1 arrays with no element equal to more than two of its horizontal, diagonal or antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281475, there is no canonical definition to state claims against.
-/

/-! ## A281475.P17048607997411519744

`A281469(A167487(n+5))`
-/

namespace A281475.P17048607997411519744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281469 (A167487 (n + 5)).toNat

end

end A281475.P17048607997411519744

/-! ## A281475.P6688044078445727770

`A281469(A302537(n)+27)`
-/

namespace A281475.P6688044078445727770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281469 (A302537 n + 27).toNat

end

end A281475.P6688044078445727770

/-! ## A281475.P4744311765184052969

`A281469(A056119(n)+28)`
-/

namespace A281475.P4744311765184052969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281469 (A056119 n + 28).toNat

end

end A281475.P4744311765184052969

/-! ## A281475.P6941356166174384756

`A281469(A166136(n+5)+1)`
-/

namespace A281475.P6941356166174384756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281469 (A166136 (n + 5) + 1).toNat

end

end A281475.P6941356166174384756

/-! ## A281475.P6402604988141961211

`A281469(A167614(n+5)+4)`
-/

namespace A281475.P6402604988141961211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281469 (A167614 (n + 5) + 4).toNat

end

end A281475.P6402604988141961211

/-!
# A281476: Maximum length of binary (sign) sequences with corresponding peak sidelobe level.

The programs for A281476, there is no canonical definition to state claims against.
-/

/-! ## A281476.P3231319935708687448

`∑[or(5, A162612(n+3))]`
-/

namespace A281476.P3231319935708687448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 5 (A162612 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281476.P3231319935708687448

/-!
# A281477: Expansion of Sum_{k>=1} x^(prime(k)^2)/(1 + x^(prime(k)^2)) * Product_{k>=1} (1 + x^(prime(k)^2)).

The programs for A281477, there is no canonical definition to state claims against.
-/

/-! ## A281477.P11985900035479912806

`A057428(A049063(n))+A111900(n+1)*A274459(n+1)+1`
-/

namespace A281477.P11985900035479912806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A049063 n).toNat + (A111900 (n + 1) * A274459 (n + 1) + 1)

end

end A281477.P11985900035479912806

/-! ## A281477.P17180737254995015498

`A111900(n+1)*A274459(n+1)*A249351(n+1)`
-/

namespace A281477.P17180737254995015498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111900 (n + 1) * A274459 (n + 1) * A249351 (n + 1)

end

end A281477.P17180737254995015498

/-! ## A281477.P8490147301622434825

`A111900(A060681(2*(n+1)))*A225927(n+1)`
-/

namespace A281477.P8490147301622434825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111900 (A060681 (2 * (n + 1))).toNat * A225927 (n + 1)

end

end A281477.P8490147301622434825

/-! ## A281477.P3646358201794988479

`and(A205600(3*n+2)-n%2, A087127(n+4))`
-/

namespace A281477.P3646358201794988479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A205600 (3 * n + 2) - ((n % 2 : ℕ) : ℤ)) (A087127 (n + 4))

end

end A281477.P3646358201794988479

/-! ## A281477.P18409362726330331175

`((n+1)*∑{d}[n+1, #])%A001222(A194056(2*(n+1)))`
-/

namespace A281477.P18409362726330331175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((n + 1) * (∑ d ∈ Nat.divisors (f1 n), d) : ℕ) : ℤ) (A001222 (A194056 (2 * (n + 1))).toNat)

end

end A281477.P18409362726330331175

/-!
# A281478: Central coefficients of Joffe's central differences of zero (assuming offset 0 and T(n,k) extended to 0 <= k <= n in A241171).

The programs for A281478, there is no canonical definition to state claims against.
-/

/-! ## A281478.P2169104287406088463

`n!*A327416(n)`
-/

namespace A281478.P2169104287406088463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A327416 n

end

end A281478.P2169104287406088463

/-! ## A281478.P15444381948092562654

`A241171(A004277(n²))`
-/

namespace A281478.P15444381948092562654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241171 (A004277 (n ^ 2)).toNat

end

end A281478.P15444381948092562654

/-! ## A281478.P14054131616776368196

`A241171(A179865(2*n+1)-n)`
-/

namespace A281478.P14054131616776368196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241171 (A179865 (2 * n + 1) - (n : ℤ)).toNat

end

end A281478.P14054131616776368196

/-! ## A281478.P8496302099013749363

`A241171(A004277(n)*A028310(n))`
-/

namespace A281478.P8496302099013749363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241171 (A004277 n * A028310 n).toNat

end

end A281478.P8496302099013749363

/-! ## A281478.P8964819805447233139

`A241171(A004277(n)*A233583(n+1))`
-/

namespace A281478.P8964819805447233139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241171 (A004277 n * A233583 (n + 1)).toNat

end

end A281478.P8964819805447233139

/-!
# A281479: Central coefficients of the polynomials defined in A278073.

The programs for A281479, there is no canonical definition to state claims against.
-/

/-! ## A281479.P10081641739764991470

`n!*A327417(n)`
-/

namespace A281479.P10081641739764991470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A327417 n

end

end A281479.P10081641739764991470

/-! ## A281479.P17182832741235069103

`A098361(A000124(n+1))*A327417(n)`
-/

namespace A281479.P17182832741235069103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 (A000124 (n + 1)).toNat * A327417 n

end

end A281479.P17182832741235069103

/-!
# A281480: 

The programs for A281480, there is no canonical definition to state claims against.
-/

/-! ## A281480.P4095613213685256249

`A278074(∑[4*n])`
-/

namespace A281480.P4095613213685256249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278074 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A281480.P4095613213685256249

/-!
# A281481: a(n) = 2^(n - 1) * (2^n + 1) + 1.

The programs for A281481, the canonical program `A281481.P3201181797122776370` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281481 has offset 0).

The definition of A281481 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A281481.anchor (n : ℕ) : (A281481 n : ℚ) = (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (2 ^ n + 1 : ℚ) + 1` in `Proof.A281.A281481`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A281481.P2766482706787733010

`ogf((2-10x+11x^2)/(1-7x+14x^2-8x^3))`
-/

namespace A281481.P2766482706787733010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -10, 11] [1, -7, 14, -8] n

end

end A281481.P2766482706787733010

namespace A281481

/-- `ogf((2-10x+11x^2)/(1-7x+14x^2-8x^3))` -/
def P2766482706787733010.Spec : Prop :=
  ∀ n, P2766482706787733010.a n = A281481 n

end A281481

/-! ## A281481.P3201181797122776370

`2^(n-1)*(2^n+1)+1`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A281481

/-- `2^(n-1)*(2^n+1)+1` -/
def P3201181797122776370.Spec : Prop :=
  ∀ n, P3201181797122776370.a n = (A281481 n : ℚ)

end A281481

/-! ## A281481.P9897640238784656877

`∑[2*(3*a(n-1)-4*a(n-2))]` with `a(0)=2, a(1)=2, a(2)=7`
-/

namespace A281481.P9897640238784656877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 7] fun n f1 =>
  2 * (3 * f1 (n - 1) - 4 * f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281481.P9897640238784656877

namespace A281481

/-- `∑[2*(3*a(n-1)-4*a(n-2))]` -/
def P9897640238784656877.Spec : Prop :=
  ∀ n, P9897640238784656877.a n = A281481 n

end A281481

/-! ## A281481.P12809748074995305620

`abs(a(n-1)+a(n-1)+4^(n-1)-1)` with `a(0)=2`
-/

namespace A281481.P12809748074995305620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  |a (n - 1) + (a (n - 1) + (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) - 1|

end

end A281481.P12809748074995305620

namespace A281481

/-- `abs(a(n-1)+a(n-1)+4^(n-1)-1)` -/
def P12809748074995305620.Spec : Prop :=
  ∀ n, P12809748074995305620.a n = (A281481 n : ℚ)

end A281481

/-! ## A281481.P3247307454799115935

`A170938(n)/2`
-/

namespace A281481.P3247307454799115935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170938 n : ℚ) / 2

end

end A281481.P3247307454799115935

namespace A281481

/-- `A170938(n)/2` -/
def P3247307454799115935.Spec : Prop :=
  ∀ n, P3247307454799115935.a n = (A281481 n : ℚ)

end A281481

/-! ## A281481.P14635335850603529607

`ceil(A001576(n)/2)`
-/

namespace A281481.P14635335850603529607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001576 n : ℚ) / 2⌉

end

end A281481.P14635335850603529607

namespace A281481

/-- `ceil(A001576(n)/2)` -/
def P14635335850603529607.Spec : Prop :=
  ∀ n, P14635335850603529607.a n = A281481 n

end A281481

/-! ## A281481.P5264620065311277091

`Δ[A007581(n)+n]`
-/

namespace A281481.P5264620065311277091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007581 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A281481.P5264620065311277091

namespace A281481

/-- `Δ[A007581(n)+n]` -/
def P5264620065311277091.Spec : Prop :=
  ∀ n, P5264620065311277091.a n = A281481 n

end A281481

/-! ## A281481.P15715621446196648560

`Δ[A076024(n)+n]`
-/

namespace A281481.P15715621446196648560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076024 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A281481.P15715621446196648560

namespace A281481

/-- `Δ[A076024(n)+n]` -/
def P15715621446196648560.Spec : Prop :=
  ∀ n, P15715621446196648560.a n = A281481 n

end A281481

/-! ## A281481.P17588321854297448232

`(A161168(n)+2)/2`
-/

namespace A281481.P17588321854297448232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161168 n + 2 : ℚ) / 2

end

end A281481.P17588321854297448232

namespace A281481

/-- `(A161168(n)+2)/2` -/
def P17588321854297448232.Spec : Prop :=
  ∀ n, P17588321854297448232.a n = (A281481 n : ℚ)

end A281481

/-! ## A281481.P15549365185328463509

`(A099393(n)+3)/2`
-/

namespace A281481.P15549365185328463509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099393 n + 3 : ℚ) / 2

end

end A281481.P15549365185328463509

namespace A281481

/-- `(A099393(n)+3)/2` -/
def P15549365185328463509.Spec : Prop :=
  ∀ n, P15549365185328463509.a n = (A281481 n : ℚ)

end A281481

/-! ## A281481.P10774597205604728568

`Δ[A124303(n+1)+n]`
-/

namespace A281481.P10774597205604728568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124303 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A281481.P10774597205604728568

namespace A281481

/-- `Δ[A124303(n+1)+n]` -/
def P10774597205604728568.Spec : Prop :=
  ∀ n, P10774597205604728568.a n = A281481 n

end A281481

/-! ## A281481.P13578577482232083188

`A188129(n)%A256871(n)`
-/

namespace A281481.P13578577482232083188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188129 n) (A256871 n)

end

end A281481.P13578577482232083188

namespace A281481

/-- `A188129(n)%A256871(n)` -/
def P13578577482232083188.Spec : Prop :=
  ∀ n, P13578577482232083188.a n = A281481 n

end A281481

/-! ## A281481.P17794474578886695012

`xor(A082505(n), A343175(n))`
-/

namespace A281481.P17794474578886695012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A082505 n) (A343175 n)

end

end A281481.P17794474578886695012

namespace A281481

/-- `xor(A082505(n), A343175(n))` -/
def P17794474578886695012.Spec : Prop :=
  ∀ n, P17794474578886695012.a n = A281481 n

end A281481

/-! ## A281481.P2077423290340990012

`xor(A000079(n), A028401(n+2))`
-/

namespace A281481.P2077423290340990012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000079 n) (A028401 (n + 2))

end

end A281481.P2077423290340990012

namespace A281481

/-- `xor(A000079(n), A028401(n+2))` -/
def P2077423290340990012.Spec : Prop :=
  ∀ n, P2077423290340990012.a n = A281481 n

end A281481

/-! ## A281481.P14885749849234872762

`(A000051(n)²-A000225(n))/2`
-/

namespace A281481.P14885749849234872762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000051 n ^ 2 - A000225 n : ℚ) / 2

end

end A281481.P14885749849234872762

namespace A281481

/-- `(A000051(n)²-A000225(n))/2` -/
def P14885749849234872762.Spec : Prop :=
  ∀ n, P14885749849234872762.a n = (A281481 n : ℚ)

end A281481

/-! ## A281481.P10375851075130957468

`(A085601(n)+3)/4`
-/

namespace A281481.P10375851075130957468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085601 n + 3 : ℚ) / 4

end

end A281481.P10375851075130957468

namespace A281481

/-- `(A085601(n)+3)/4` -/
def P10375851075130957468.Spec : Prop :=
  ∀ n, P10375851075130957468.a n = (A281481 n : ℚ)

end A281481

/-! ## A281481.P9099491237192267352

`(A281482(n)+5)/4`
-/

namespace A281481.P9099491237192267352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281482 n + 5 : ℚ) / 4

end

end A281481.P9099491237192267352

namespace A281481

/-- `(A281482(n)+5)/4` -/
def P9099491237192267352.Spec : Prop :=
  ∀ n, P9099491237192267352.a n = (A281481 n : ℚ)

end A281481

/-! ## A281481.P12648560247954647373

`record[C(A052552(n), 2)+1]`
-/

namespace A281481.P12648560247954647373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A052552 n).toNat 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281481.P12648560247954647373

namespace A281481

/-- `record[C(A052552(n), 2)+1]` -/
def P12648560247954647373.Spec : Prop :=
  ∀ n, (P12648560247954647373.a n : ℤ) = A281481 n

end A281481

/-! ## A281481.P3756911944038035608

`A283456(n)%A074526(n)`
-/

namespace A281481.P3756911944038035608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283456 n) (A074526 n)

end

end A281481.P3756911944038035608

namespace A281481

/-- `A283456(n)%A074526(n)` -/
def P3756911944038035608.Spec : Prop :=
  ∀ n, P3756911944038035608.a n = A281481 n

end A281481

/-!
# A281482: a(n) = 2^(n + 1) * (2^n + 1) - 1.

The programs for A281482, the canonical program `A281482.P14924405954727194800` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281482 has offset 0).

The definition of A281482 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n+1)*(2^n+1)-1` (program `A281482.P14924405954727194800`, by `A281482.P14924405954727194800.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A281482.P4139046840191861621

`ogf((3-10x+4x^2)/(1-7x+14x^2-8x^3))`
-/

namespace A281482.P4139046840191861621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -10, 4] [1, -7, 14, -8] n

end

end A281482.P4139046840191861621

namespace A281482

/-- `ogf((3-10x+4x^2)/(1-7x+14x^2-8x^3))` -/
def P4139046840191861621.Spec : Prop :=
  ∀ n, P4139046840191861621.a n = A281482 n

end A281482

/-! ## A281482.P14924405954727194800

`2^(n+1)*(2^n+1)-1`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A281482

/-- `2^(n+1)*(2^n+1)-1` -/
def P14924405954727194800.Spec : Prop :=
  ∀ n, P14924405954727194800.a n = A281482 n

theorem P14924405954727194800.correct : P14924405954727194800.Spec := by
  intro n
  simp only [A281482]

end A281482

/-! ## A281482.P5830029838830352012

`∑[ogf((3-10x+4x^2)/(1-6x+8x^2))]`
-/

namespace A281482.P5830029838830352012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -10, 4] [1, -6, 8] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281482.P5830029838830352012

namespace A281482

/-- `∑[ogf((3-10x+4x^2)/(1-6x+8x^2))]` -/
def P5830029838830352012.Spec : Prop :=
  ∀ n, P5830029838830352012.a n = A281482 n

end A281482

/-! ## A281482.P6159190397022095301

`or(2*4^n, ∑[2^n])`
-/

namespace A281482.P6159190397022095301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * 4 ^ n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A281482.P6159190397022095301

namespace A281482

/-- `or(2*4^n, ∑[2^n])` -/
def P6159190397022095301.Spec : Prop :=
  ∀ n, (P6159190397022095301.a n : ℤ) = A281482 n

end A281482

/-! ## A281482.P12847300580809501044

`xor(2*4^n, ∑[2^n])`
-/

namespace A281482.P12847300580809501044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * 4 ^ n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A281482.P12847300580809501044

namespace A281482

/-- `xor(2*4^n, ∑[2^n])` -/
def P12847300580809501044.Spec : Prop :=
  ∀ n, (P12847300580809501044.a n : ℤ) = A281482 n

end A281482

/-! ## A281482.P3059993581076706223

`∑[4*a(n-1)-2^n]` with `a(0)=3, a(1)=8`
-/

namespace A281482.P3059993581076706223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 8] fun n f1 =>
  4 * f1 (n - 1) - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281482.P3059993581076706223

namespace A281482

/-- `∑[4*a(n-1)-2^n]` -/
def P3059993581076706223.Spec : Prop :=
  ∀ n, P3059993581076706223.a n = A281482 n

end A281482

/-! ## A281482.P13190541781446955931

`abs(2-A085601(n))`
-/

namespace A281482.P13190541781446955931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A085601 n|

end

end A281482.P13190541781446955931

namespace A281482

/-- `abs(2-A085601(n))` -/
def P13190541781446955931.Spec : Prop :=
  ∀ n, P13190541781446955931.a n = A281482 n

end A281482

/-! ## A281482.P341881993379955686

`∑[A093356(n+1)]`
-/

namespace A281482.P341881993379955686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281482.P341881993379955686

namespace A281482

/-- `∑[A093356(n+1)]` -/
def P341881993379955686.Spec : Prop :=
  ∀ n, P341881993379955686.a n = A281482 n

end A281482

/-! ## A281482.P13672213006859291811

`∑[abs(Δ[A343175(n)])]`
-/

namespace A281482.P13672213006859291811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343175 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281482.P13672213006859291811

namespace A281482

/-- `∑[abs(Δ[A343175(n)])]` -/
def P13672213006859291811.Spec : Prop :=
  ∀ n, P13672213006859291811.a n = A281482 n

end A281482

/-! ## A281482.P1156021119132734439

`A116362(2*(n+1))`
-/

namespace A281482.P1156021119132734439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116362 (2 * (n + 1))

end

end A281482.P1156021119132734439

namespace A281482

/-- `A116362(2*(n+1))` -/
def P1156021119132734439.Spec : Prop :=
  ∀ n, P1156021119132734439.a n = A281482 n

end A281482

/-! ## A281482.P5459524949657550489

`abs(1-A028403(n+1))`
-/

namespace A281482.P5459524949657550489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A028403 (n + 1)|

end

end A281482.P5459524949657550489

namespace A281482

/-- `abs(1-A028403(n+1))` -/
def P5459524949657550489.Spec : Prop :=
  ∀ n, P5459524949657550489.a n = A281482 n

end A281482

/-! ## A281482.P2401743680307102082

`floor(A093069(n+1)/2)`
-/

namespace A281482.P2401743680307102082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A093069 (n + 1) : ℚ) / 2⌋

end

end A281482.P2401743680307102082

namespace A281482

/-- `floor(A093069(n+1)/2)` -/
def P2401743680307102082.Spec : Prop :=
  ∀ n, P2401743680307102082.a n = A281482 n

end A281482

/-! ## A281482.P12360874267327911137

`(A130567(n+2)-1)/2`
-/

namespace A281482.P12360874267327911137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130567 (n + 2) - 1 : ℚ) / 2

end

end A281482.P12360874267327911137

namespace A281482

/-- `(A130567(n+2)-1)/2` -/
def P12360874267327911137.Spec : Prop :=
  ∀ n, P12360874267327911137.a n = (A281482 n : ℚ)

end A281482

/-! ## A281482.P6219926403064399043

`(A028400(n+1)-3)/2`
-/

namespace A281482.P6219926403064399043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028400 (n + 1) - 3 : ℚ) / 2

end

end A281482.P6219926403064399043

namespace A281482

/-- `(A028400(n+1)-3)/2` -/
def P6219926403064399043.Spec : Prop :=
  ∀ n, P6219926403064399043.a n = (A281482 n : ℚ)

theorem P6219926403064399043.correct : P6219926403064399043.Spec := by
  intro n
  simp only [A281482, Nat.add_sub_cancel, A281482.P6219926403064399043.a, A281482.P14924405954727194800.a, A028400, A028400.P8275181187823269939.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A281482

/-! ## A281482.P6617464315252908941

`abs(2*(A001576(n)-1)-1)`
-/

namespace A281482.P6617464315252908941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * (A001576 n - 1) - 1|

end

end A281482.P6617464315252908941

namespace A281482

/-- `abs(2*(A001576(n)-1)-1)` -/
def P6617464315252908941.Spec : Prop :=
  ∀ n, P6617464315252908941.a n = A281482 n

end A281482

/-! ## A281482.P10937494762295386766

`floor(((∑[A000079(n)]+2)²-2)/2)`
-/

namespace A281482.P10937494762295386766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j + 2) ^ 2 - 2 : ℤ) : ℚ) / 2⌋

end

end A281482.P10937494762295386766

namespace A281482

/-- `floor(((∑[A000079(n)]+2)²-2)/2)` -/
def P10937494762295386766.Spec : Prop :=
  ∀ n, P10937494762295386766.a n = A281482 n

end A281482

/-! ## A281482.P10713737909389576179

`A093069(n+1)%A028403(n+1)`
-/

namespace A281482.P10713737909389576179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093069 (n + 1)) (A028403 (n + 1))

end

end A281482.P10713737909389576179

namespace A281482

/-- `A093069(n+1)%A028403(n+1)` -/
def P10713737909389576179.Spec : Prop :=
  ∀ n, P10713737909389576179.a n = A281482 n

end A281482

/-! ## A281482.P3206164314347562501

`abs(A000051(n)*A000079(n+1)-1)`
-/

namespace A281482.P3206164314347562501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000051 n * A000079 (n + 1) - 1|

end

end A281482.P3206164314347562501

namespace A281482

/-- `abs(A000051(n)*A000079(n+1)-1)` -/
def P3206164314347562501.Spec : Prop :=
  ∀ n, P3206164314347562501.a n = A281482 n

end A281482

/-! ## A281482.P6913214076174264540

`A270682(n+2)/8`
-/

namespace A281482.P6913214076174264540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270682 (n + 2) : ℚ) / 8

end

end A281482.P6913214076174264540

namespace A281482

/-- `A270682(n+2)/8` -/
def P6913214076174264540.Spec : Prop :=
  ∀ n, P6913214076174264540.a n = (A281482 n : ℚ)

end A281482

/-! ## A281482.P11584685673085563315

`(A187560(n+1)-A169726(n+1))/2`
-/

namespace A281482.P11584685673085563315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187560 (n + 1) - A169726 (n + 1) : ℚ) / 2

end

end A281482.P11584685673085563315

namespace A281482

/-- `(A187560(n+1)-A169726(n+1))/2` -/
def P11584685673085563315.Spec : Prop :=
  ∀ n, P11584685673085563315.a n = (A281482 n : ℚ)

end A281482

/-!
# A281485: Triangular array T(n,k) = k Sum_{j=0..k-1} (-1)^j binomial(k-1,j) (n-1-j)^(n-1), 1<=k<=n, read by rows.

The programs for A281485, there is no canonical definition to state claims against.
-/

/-! ## A281485.P10718612674141137789

`(1-(C(∑[char[∑[n]]], 2)-n))*A174551(n)`
-/

namespace A281485.P10718612674141137789
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) - (n : ℤ))) * A174551 n

end

end A281485.P10718612674141137789

/-! ## A281485.P15980236834159705341

`A002260(n+1)*A174551(n)`
-/

namespace A281485.P15980236834159705341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A174551 n

end

end A281485.P15980236834159705341

/-! ## A281485.P2318876904459330474

`(A002262(n)+1)*A174551(n)`
-/

namespace A281485.P2318876904459330474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A174551 n

end

end A281485.P2318876904459330474

/-! ## A281485.P3623496718149407098

`abs(A140756(n+1)*A174551(n))`
-/

namespace A281485.P3623496718149407098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140756 (n + 1) * A174551 n|

end

end A281485.P3623496718149407098

/-! ## A281485.P9845275270077087512

`sqrt(A133819(n+1))*A174551(n)`
-/

namespace A281485.P9845275270077087512
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (n + 1) : ℝ) * (A174551 n : ℝ)

end

end A281485.P9845275270077087512

/-!
# A281487: a(n+1) = -Sum_{d|n} a(d), a(1) = 1.

The programs for A281487, there is no canonical definition to state claims against.
-/

/-! ## A281487.P1530831541335765090

`Δ[A328967(abs(1-n)+1)]`
-/

namespace A281487.P1530831541335765090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328967 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A281487.P1530831541335765090

/-! ## A281487.P2401457252164219446

`A328967(n+1)-A328967(abs(1-n)+1)`
-/

namespace A281487.P2401457252164219446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328967 (n + 1) - A328967 (|1 - (n : ℤ)| + 1).toNat

end

end A281487.P2401457252164219446

/-! ## A281487.P7257849423285377559

`A000007(n)+Δ[A328967(A028310(n))]`
-/

namespace A281487.P7257849423285377559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328967 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A281487.P7257849423285377559

/-! ## A281487.P4434588552935306891

`Δ[A328967(A028310(n))]+A004277(n)%2`
-/

namespace A281487.P4434588552935306891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328967 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + Int.tmod (A004277 n) 2

end

end A281487.P4434588552935306891

/-! ## A281487.P5977413402664379623

`Δ[A328967(A028310(n))+A057427(n)]`
-/

namespace A281487.P5977413402664379623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328967 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A281487.P5977413402664379623

/-! ## A281487.P7596132638545439853

`Δ[A328967(A028310(n))-A054977(n)]`
-/

namespace A281487.P7596132638545439853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328967 (A028310 n).toNat - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A281487.P7596132638545439853

/-! ## A281487.P15147004305305628961

`Δ[A328967(A028310(n))+A000040(n+1)%2]`
-/

namespace A281487.P15147004305305628961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328967 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A281487.P15147004305305628961

/-! ## A281487.P6185533152990808643

`Δ[A328967(A028310(n))]+A004012(n)%2`
-/

namespace A281487.P6185533152990808643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328967 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + Int.tmod (A004012 n) 2

end

end A281487.P6185533152990808643

/-!
# A281488: a(n) = -Sum_{d divides (n-2), 1 <= d < n} a(d).

The programs for A281488, there is no canonical definition to state claims against.
-/

/-! ## A281488.P8192508081737282374

`A328361(A219741(n+1))-A341591(n+1)`
-/

namespace A281488.P8192508081737282374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328361 (A219741 (n + 1)).toNat - A341591 (n + 1)

end

end A281488.P8192508081737282374

/-! ## A281488.P8478819734003487868

`A280261(xor(A000235(n+1), A097214(n+1)))`
-/

namespace A281488.P8478819734003487868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280261 (Int.xor (A000235 (n + 1)) (A097214 (n + 1))).toNat

end

end A281488.P8478819734003487868

/-! ## A281488.P14258368974660965596

`A008683(A000646(n)+comp[n²+1])`
-/

namespace A281488.P14258368974660965596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000646 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A281488.P14258368974660965596

/-! ## A281488.P3872356354536554950

`A008683(A065979(n+1)+A025429(n))`
-/

namespace A281488.P3872356354536554950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A065979 (n + 1) + A025429 n).toNat

end

end A281488.P3872356354536554950

/-!
# A281489: Number of partitions of n^2 into distinct odd parts.

The programs for A281489, there is no canonical definition to state claims against.
-/

/-! ## A281489.P6117053684748530794

`A000700(A000290(n))`
-/

namespace A281489.P6117053684748530794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (A000290 n).toNat

end

end A281489.P6117053684748530794

/-! ## A281489.P2315820181830157013

`A000700(n²)`
-/

namespace A281489.P2315820181830157013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (n ^ 2)

end

end A281489.P2315820181830157013

/-! ## A281489.P9863067494889367185

`abs(A081362(n²))`
-/

namespace A281489.P9863067494889367185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081362 (n ^ 2)|

end

end A281489.P9863067494889367185

/-! ## A281489.P11517348192597147562

`xor(1, xor(1, A000700(n^2)))`
-/

namespace A281489.P11517348192597147562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A000700 (n ^ 2)))

end

end A281489.P11517348192597147562

/-! ## A281489.P14593737559634158418

`A033999(n)*A081362(n²)`
-/

namespace A281489.P14593737559634158418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A081362 (n ^ 2)

end

end A281489.P14593737559634158418

/-! ## A281489.P841499922709754248

`gcd(A000038(n), A081362(n²))`
-/

namespace A281489.P841499922709754248
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A081362 (n ^ 2))

end

end A281489.P841499922709754248

/-! ## A281489.P2501803034261992087

`lcm(A020985(n), A081362(n²))`
-/

namespace A281489.P2501803034261992087
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A081362 (n ^ 2))

end

end A281489.P2501803034261992087

/-! ## A281489.P4686770714042752625

`A057077(2*n)*A081362(n²)`
-/

namespace A281489.P4686770714042752625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A081362 (n ^ 2)

end

end A281489.P4686770714042752625

/-!
# A281490: Expansion of f(x, x^3) * f(x, x^8) in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A281490, the canonical program `A281490.P3523098735893646296` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281490 has offset 0).

The definition of A281490 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7282 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281490.P3523098735893646296

`A307597(9*n+7)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A281490

/-- `A307597(9*n+7)` -/
def P3523098735893646296.Spec : Prop :=
  ∀ n, P3523098735893646296.a n = A281490 n

theorem P3523098735893646296.correct : P3523098735893646296.Spec := by
  intro n
  simp only [A281490]

end A281490

/-! ## A281490.P16483327108691517712

`A121444(3*n+2)`
-/

namespace A281490.P16483327108691517712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121444 (3 * n + 2)

end

end A281490.P16483327108691517712

namespace A281490

/-- `A121444(3*n+2)` -/
def P16483327108691517712.Spec : Prop :=
  ∀ n, P16483327108691517712.a n = A281490 n

end A281490

/-! ## A281490.P4536258163553354865

`A281452(8*n+6)/2`
-/

namespace A281490.P4536258163553354865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281452 (8 * n + 6) : ℚ) / 2

end

end A281490.P4536258163553354865

namespace A281490

/-- `A281452(8*n+6)/2` -/
def P4536258163553354865.Spec : Prop :=
  ∀ n, P4536258163553354865.a n = (A281490 n : ℚ)

end A281490

/-! ## A281490.P7292473550571346438

`A052343(9*n+7)`
-/

namespace A281490.P7292473550571346438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 (9 * n + 7)

end

end A281490.P7292473550571346438

namespace A281490

/-- `A052343(9*n+7)` -/
def P7292473550571346438.Spec : Prop :=
  ∀ n, P7292473550571346438.a n = A281490 n

end A281490

/-! ## A281490.P13028119658028250251

`A052344(9*n+7)`
-/

namespace A281490.P13028119658028250251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052344 (9 * n + 7)

end

end A281490.P13028119658028250251

namespace A281490

/-- `A052344(9*n+7)` -/
def P13028119658028250251.Spec : Prop :=
  ∀ n, P13028119658028250251.a n = A281490 n

end A281490

/-! ## A281490.P5510150509209309565

`A008441(9*n+7)/2`
-/

namespace A281490.P5510150509209309565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008441 (9 * n + 7) : ℚ) / 2

end

end A281490.P5510150509209309565

namespace A281490

/-- `A008441(9*n+7)/2` -/
def P5510150509209309565.Spec : Prop :=
  ∀ n, P5510150509209309565.a n = (A281490 n : ℚ)

end A281490

/-! ## A281490.P16807212082820159957

`A259660(A017617(n))`
-/

namespace A281490.P16807212082820159957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259660 (A017617 n).toNat

end

end A281490.P16807212082820159957

namespace A281490

/-- `A259660(A017617(n))` -/
def P16807212082820159957.Spec : Prop :=
  ∀ n, P16807212082820159957.a n = A281490 n

end A281490

/-! ## A281490.P16696749693341847092

`A259660(A017569(2*n+1)/2)`
-/

namespace A281490.P16696749693341847092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259660 (SequenceMachineLib.roundAway ((A017569 (2 * n + 1) : ℚ) / 2)).toNat

end

end A281490.P16696749693341847092

namespace A281490

/-- `A259660(A017569(2*n+1)/2)` -/
def P16696749693341847092.Spec : Prop :=
  ∀ n, P16696749693341847092.a n = A281490 n

end A281490

/-! ## A281490.P10223159319971801296

`A025426(6*6*(n+1)-7)`
-/

namespace A281490.P10223159319971801296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (6 * (6 * (n + 1)) - 7)

end

end A281490.P10223159319971801296

namespace A281490

/-- `A025426(6*6*(n+1)-7)` -/
def P10223159319971801296.Spec : Prop :=
  ∀ n, P10223159319971801296.a n = A281490 n

end A281490

/-! ## A281490.P6620939558800914727

`A025441(A007310(12*n+10))`
-/

namespace A281490.P6620939558800914727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 (A007310 (12 * n + 10)).toNat

end

end A281490.P6620939558800914727

namespace A281490

/-- `A025441(A007310(12*n+10))` -/
def P6620939558800914727.Spec : Prop :=
  ∀ n, P6620939558800914727.a n = A281490 n

end A281490

/-! ## A281490.P6363538189258470438

`A025435(Δ[A152751(2*n+1)]-2)`
-/

namespace A281490.P6363538189258470438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152751 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (f1 (n + 1) - f1 n - 2).toNat

end

end A281490.P6363538189258470438

namespace A281490

/-- `A025435(Δ[A152751(2*n+1)]-2)` -/
def P6363538189258470438.Spec : Prop :=
  ∀ n, P6363538189258470438.a n = A281490 n

end A281490

/-!
# A281491: Expansion of f(x, x^3) * f(x^2, x^7) in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A281491, the canonical program `A281491.P16396584514886976107` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281491 has offset 0).

The definition of A281491 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7282 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281491.P16396584514886976107

`A307597(9*n+4)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A281491

/-- `A307597(9*n+4)` -/
def P16396584514886976107.Spec : Prop :=
  ∀ n, P16396584514886976107.a n = A281491 n

theorem P16396584514886976107.correct : P16396584514886976107.Spec := by
  intro n
  simp only [A281491]

end A281491

/-! ## A281491.P16494986318747247053

`A121444(3*n+1)`
-/

namespace A281491.P16494986318747247053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121444 (3 * n + 1)

end

end A281491.P16494986318747247053

namespace A281491

/-- `A121444(3*n+1)` -/
def P16494986318747247053.Spec : Prop :=
  ∀ n, P16494986318747247053.a n = A281491 n

end A281491

/-! ## A281491.P2698997510573085534

`abs(A258832(3*n+1))`
-/

namespace A281491.P2698997510573085534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A258832 (3 * n + 1)|

end

end A281491.P2698997510573085534

namespace A281491

/-- `abs(A258832(3*n+1))` -/
def P2698997510573085534.Spec : Prop :=
  ∀ n, P2698997510573085534.a n = A281491 n

end A281491

/-! ## A281491.P8595090556295937821

`lcm(A258832(3*n+1), A328569(A000010(n+1)))`
-/

namespace A281491.P8595090556295937821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A258832 (3 * n + 1)) (A328569 (A000010 (n + 1)).toNat)

end

end A281491.P8595090556295937821

namespace A281491

/-- `lcm(A258832(3*n+1), A328569(A000010(n+1)))` -/
def P8595090556295937821.Spec : Prop :=
  ∀ n, (P8595090556295937821.a n : ℤ) = A281491 n

end A281491

/-! ## A281491.P17706799406749492654

`dr(A258832(3*n+1)*A274979(3*n+5))`
-/

namespace A281491.P17706799406749492654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A258832 (3 * n + 1) * A274979 (3 * n + 5))

end

end A281491.P17706799406749492654

namespace A281491

/-- `dr(A258832(3*n+1)*A274979(3*n+5))` -/
def P17706799406749492654.Spec : Prop :=
  ∀ n, (P17706799406749492654.a n : ℤ) = A281491 n

end A281491

/-! ## A281491.P15835122727098587732

`lcm(A258832(3*n+1), A328569(A151672(n)))`
-/

namespace A281491.P15835122727098587732
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A258832 (3 * n + 1)) (A328569 (A151672 n).toNat)

end

end A281491.P15835122727098587732

namespace A281491

/-- `lcm(A258832(3*n+1), A328569(A151672(n)))` -/
def P15835122727098587732.Spec : Prop :=
  ∀ n, (P15835122727098587732.a n : ℤ) = A281491 n

end A281491

/-! ## A281491.P15286399249108729074

`A052343(9*n+4)`
-/

namespace A281491.P15286399249108729074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 (9 * n + 4)

end

end A281491.P15286399249108729074

namespace A281491

/-- `A052343(9*n+4)` -/
def P15286399249108729074.Spec : Prop :=
  ∀ n, P15286399249108729074.a n = A281491 n

end A281491

/-! ## A281491.P13914484203689717762

`A052344(9*n+4)`
-/

namespace A281491.P13914484203689717762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052344 (9 * n + 4)

end

end A281491.P13914484203689717762

namespace A281491

/-- `A052344(9*n+4)` -/
def P13914484203689717762.Spec : Prop :=
  ∀ n, P13914484203689717762.a n = A281491 n

end A281491

/-! ## A281491.P8963584199237851973

`A053603(A017185(n)+2)/2`
-/

namespace A281491.P8963584199237851973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053603 (A017185 n + 2).toNat : ℚ) / 2

end

end A281491.P8963584199237851973

namespace A281491

/-- `A053603(A017185(n)+2)/2` -/
def P8963584199237851973.Spec : Prop :=
  ∀ n, P8963584199237851973.a n = (A281491 n : ℚ)

end A281491

/-! ## A281491.P18256748986012919822

`A259660(12*n+4)`
-/

namespace A281491.P18256748986012919822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259660 (12 * n + 4)

end

end A281491.P18256748986012919822

namespace A281491

/-- `A259660(12*n+4)` -/
def P18256748986012919822.Spec : Prop :=
  ∀ n, P18256748986012919822.a n = A281491 n

end A281491

/-! ## A281491.P3439496490830252726

`A025426(A008600(2*n+1)-1)`
-/

namespace A281491.P3439496490830252726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (A008600 (2 * n + 1) - 1).toNat

end

end A281491.P3439496490830252726

namespace A281491

/-- `A025426(A008600(2*n+1)-1)` -/
def P3439496490830252726.Spec : Prop :=
  ∀ n, P3439496490830252726.a n = A281491 n

end A281491

/-! ## A281491.P2886438381724842563

`A025435(A008600(2*n+1)-1)`
-/

namespace A281491.P2886438381724842563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (A008600 (2 * n + 1) - 1).toNat

end

end A281491.P2886438381724842563

namespace A281491

/-- `A025435(A008600(2*n+1)-1)` -/
def P2886438381724842563.Spec : Prop :=
  ∀ n, P2886438381724842563.a n = A281491 n

end A281491

/-! ## A281491.P13956459721936847778

`A000161(A016813(A016813(2*n)+n+3))`
-/

namespace A281491.P13956459721936847778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (A016813 (A016813 (2 * n) + (n + 3 : ℤ)).toNat).toNat

end

end A281491.P13956459721936847778

namespace A281491

/-- `A000161(A016813(A016813(2*n)+n+3))` -/
def P13956459721936847778.Spec : Prop :=
  ∀ n, P13956459721936847778.a n = A281491 n

end A281491

/-!
# A281492: Expansion of f(x, x^3) * f(x^4, x^5) in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A281492, the canonical program `A281492.P13006118302952997106` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281492 has offset 0).

The definition of A281492 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281492.P13006118302952997106

`A121444(3*n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A281492

/-- `A121444(3*n)` -/
def P13006118302952997106.Spec : Prop :=
  ∀ n, P13006118302952997106.a n = A281492 n

theorem P13006118302952997106.correct : P13006118302952997106.Spec := by
  intro n
  simp only [A281492]

end A281492

/-! ## A281492.P10552440683011978523

`abs(A258832(3*n))`
-/

namespace A281492.P10552440683011978523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A258832 (3 * n)|

end

end A281492.P10552440683011978523

namespace A281492

/-- `abs(A258832(3*n))` -/
def P10552440683011978523.Spec : Prop :=
  ∀ n, P10552440683011978523.a n = A281492 n

end A281492

/-! ## A281492.P16108858917655629254

`lcm(A020985(n), A258832(3*n))`
-/

namespace A281492.P16108858917655629254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A258832 (3 * n))

end

end A281492.P16108858917655629254

namespace A281492

/-- `lcm(A020985(n), A258832(3*n))` -/
def P16108858917655629254.Spec : Prop :=
  ∀ n, (P16108858917655629254.a n : ℤ) = A281492 n

end A281492

/-! ## A281492.P2725331588785603484

`gcd(A002483(2*n), A258832(3*n))`
-/

namespace A281492.P2725331588785603484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002483 (2 * n)) (A258832 (3 * n))

end

end A281492.P2725331588785603484

namespace A281492

/-- `gcd(A002483(2*n), A258832(3*n))` -/
def P2725331588785603484.Spec : Prop :=
  ∀ n, (P2725331588785603484.a n : ℤ) = A281492 n

end A281492

/-! ## A281492.P12440063416439478253

`A020985(2*n+1)*A020985(n)*A258832(3*n)`
-/

namespace A281492.P12440063416439478253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (2 * n + 1) * A020985 n * A258832 (3 * n)

end

end A281492.P12440063416439478253

namespace A281492

/-- `A020985(2*n+1)*A020985(n)*A258832(3*n)` -/
def P12440063416439478253.Spec : Prop :=
  ∀ n, P12440063416439478253.a n = A281492 n

end A281492

/-! ## A281492.P11899038833491306695

`A052343(9*n+1)`
-/

namespace A281492.P11899038833491306695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 (9 * n + 1)

end

end A281492.P11899038833491306695

namespace A281492

/-- `A052343(9*n+1)` -/
def P11899038833491306695.Spec : Prop :=
  ∀ n, P11899038833491306695.a n = A281492 n

theorem P11899038833491306695.correct : P11899038833491306695.Spec := by
  intro n
  simp only [A281492, Nat.add_sub_cancel, A281492.P11899038833491306695.a, A281492.P13006118302952997106.a, A052343, A052343.P15911122501402458117.a, A121444, A121444.P10718778416213000801.a, A008441, A008441.P257068461411472066.a, A002654, A002654.P11574922253888480122.a, A001826, A001826.P1518250824516108745.a, A001842, A001842.P7159875081872045936.f1, A001842.P7159875081872045936.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A281492

/-! ## A281492.P10479147060229824026

`A008441(9*n+1)/2`
-/

namespace A281492.P10479147060229824026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008441 (9 * n + 1) : ℚ) / 2

end

end A281492.P10479147060229824026

namespace A281492

/-- `A008441(9*n+1)/2` -/
def P10479147060229824026.Spec : Prop :=
  ∀ n, P10479147060229824026.a n = (A281492 n : ℚ)

end A281492

/-! ## A281492.P6630036979813105378

`A259660(12*n)`
-/

namespace A281492.P6630036979813105378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259660 (12 * n)

end

end A281492.P6630036979813105378

namespace A281492

/-- `A259660(12*n)` -/
def P6630036979813105378.Spec : Prop :=
  ∀ n, P6630036979813105378.a n = A281492 n

end A281492

/-! ## A281492.P5060622322761600165

`A025426(6*6*n+5)`
-/

namespace A281492.P5060622322761600165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (6 * (6 * n) + 5)

end

end A281492.P5060622322761600165

namespace A281492

/-- `A025426(6*6*n+5)` -/
def P5060622322761600165.Spec : Prop :=
  ∀ n, P5060622322761600165.a n = A281492 n

end A281492

/-! ## A281492.P5478397889667925830

`A125079(A161705(n)+1)/2`
-/

namespace A281492.P5478397889667925830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125079 (A161705 n + 1).toNat : ℚ) / 2

end

end A281492.P5478397889667925830

namespace A281492

/-- `A125079(A161705(n)+1)/2` -/
def P5478397889667925830.Spec : Prop :=
  ∀ n, P5478397889667925830.a n = (A281492 n : ℚ)

end A281492

/-! ## A281492.P17767469598558445664

`A025441(6*6*n+5)`
-/

namespace A281492.P17767469598558445664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 (6 * (6 * n) + 5)

end

end A281492.P17767469598558445664

namespace A281492

/-- `A025441(6*6*n+5)` -/
def P17767469598558445664.Spec : Prop :=
  ∀ n, P17767469598558445664.a n = A281492 n

end A281492

/-! ## A281492.P7885883695272546432

`A000161(A016813(9*n+1))`
-/

namespace A281492.P7885883695272546432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (A016813 (9 * n + 1)).toNat

end

end A281492.P7885883695272546432

namespace A281492

/-- `A000161(A016813(9*n+1))` -/
def P7885883695272546432.Spec : Prop :=
  ∀ n, P7885883695272546432.a n = A281492 n

end A281492

/-! ## A281492.P7026808389206209431

`A000161(A139609(2*n)+1)`
-/

namespace A281492.P7026808389206209431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (A139609 (2 * n) + 1).toNat

end

end A281492.P7026808389206209431

namespace A281492

/-- `A000161(A139609(2*n)+1)` -/
def P7026808389206209431.Spec : Prop :=
  ∀ n, P7026808389206209431.a n = A281492 n

end A281492

/-!
# A281493: Numbers k such that (10^k + 41)/3 is prime.

The programs for A281493, there is no canonical definition to state claims against.
-/

/-! ## A281493.P6631521092811135830

`A157237(A214727(floor((n/2)²)))+n+1`
-/

namespace A281493.P6631521092811135830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157237 (A214727 ⌊((n : ℚ) / 2) ^ 2⌋.toNat).toNat + (n + 1 : ℤ)

end

end A281493.P6631521092811135830

/-! ## A281493.P17770386887200805796

`eq[A029419(A088925(n)), A029423(n)]`
-/

namespace A281493.P17770386887200805796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029419 (A088925 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029423 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281493.P17770386887200805796

/-! ## A281493.P11197685030026155626

`eq[A025855(n), A247505(A247503(n+1))]`
-/

namespace A281493.P11197685030026155626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025855 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247505 (A247503 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281493.P11197685030026155626

/-! ## A281493.P16284612335342317335

`lt[A261019(A291284(n+1)), A218978(n+1)]`
-/

namespace A281493.P16284612335342317335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261019 (A291284 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218978 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A281493.P16284612335342317335

/-!
# A281494: Number of ordered ways to write n as x^2 + y^2 + z^2 + w^2 with x + y + z + w = 2^(floor((ord_2(n)+1)/2)), where ord_2(n) is the 2-adic order of n, and x,y,z,w are integers with |x| <= |y| <= |z| <= |w|.

The programs for A281494, there is no canonical definition to state claims against.
-/

/-! ## A281494.P16515546338120014847

`A031045(or(A000129(n), A188461(n)))`
-/

namespace A281494.P16515546338120014847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031045 (Int.lor (A000129 n) (A188461 n)).toNat

end

end A281494.P16515546338120014847

/-! ## A281494.P72791306218669797

`gcd(A050068(A038193(n+1)), A093566(n))`
-/

namespace A281494.P72791306218669797
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050068 (A038193 (n + 1)).toNat) (A093566 n)

end

end A281494.P72791306218669797

/-!
# A281495: Least k > 1 such that k^n is a refactorable number.

The programs for A281495, there is no canonical definition to state claims against.
-/

/-! ## A281495.P8506749200738903225

`root(A281389(n+1), n+1)`
-/

namespace A281495.P8506749200738903225
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A281389 (n + 1) : ℝ) ^ (1 / (n + 1 : ℝ))

end

end A281495.P8506749200738903225

/-! ## A281495.P13143952181927814006

`A007947(n+2)-A151755(A176420(n))`
-/

namespace A281495.P13143952181927814006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 2) - A151755 (A176420 n).toNat

end

end A281495.P13143952181927814006

/-! ## A281495.P12180809530808706435

`xor(A007947(n+2), A151755(A183562(n+5)))`
-/

namespace A281495.P12180809530808706435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007947 (n + 2)) (A151755 (A183562 (n + 5)).toNat)

end

end A281495.P12180809530808706435

/-! ## A281495.P1862039819973666190

`A007947(n+2)-A151755(A303513(n+1))`
-/

namespace A281495.P1862039819973666190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 2) - A151755 (A303513 (n + 1)).toNat

end

end A281495.P1862039819973666190

/-! ## A281495.P7474824552172036920

`∏{p}[(n+2)^gcd(6, n), #]`
-/

namespace A281495.P7474824552172036920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ Nat.gcd 6 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A281495.P7474824552172036920

/-!
# A281497: Write n in binary reflected Gray code and sum the positions where there is a '1' followed immediately to the left by a '0', counting the rightmost digit as position 1.

The programs for A281497, the canonical program `A281497.P13334527158016198165` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281497 has offset 1).

The definition of A281497 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049502, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A281497.P13334527158016198165

`A049502(A003188(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A281497

/-- `A049502(A003188(n+1))` -/
def P13334527158016198165.Spec : Prop :=
  ∀ n, P13334527158016198165.a n = A281497 (n + 1)

theorem P13334527158016198165.correct : P13334527158016198165.Spec := by
  intro n
  simp only [A281497, Nat.add_sub_cancel]

end A281497

/-! ## A281497.P15615700000969720904

`A049502(∑[A055975(n+1)])`
-/

namespace A281497.P15615700000969720904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049502 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A281497.P15615700000969720904

namespace A281497

/-- `A049502(∑[A055975(n+1)])` -/
def P15615700000969720904.Spec : Prop :=
  ∀ n, P15615700000969720904.a n = A281497 (n + 1)

end A281497

/-! ## A281497.P13850500429421461514

`A049321(A035053(A286468(n+1)))`
-/

namespace A281497.P13850500429421461514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049321 (A035053 (A286468 (n + 1)).toNat).toNat

end

end A281497.P13850500429421461514

namespace A281497

/-- `A049321(A035053(A286468(n+1)))` -/
def P13850500429421461514.Spec : Prop :=
  ∀ n, P13850500429421461514.a n = A281497 (n + 1)

end A281497

/-! ## A281497.P13423334388178517673

`and(∑[A139803(n+3)], A037898(n+1))`
-/

namespace A281497.P13423334388178517673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139803 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A037898 (n + 1))

end

end A281497.P13423334388178517673

namespace A281497

/-- `and(∑[A139803(n+3)], A037898(n+1))` -/
def P13423334388178517673.Spec : Prop :=
  ∀ n, P13423334388178517673.a n = A281497 (n + 1)

end A281497

/-! ## A281497.P13862435076756951936

`A230425(A230448(n)^A230405(n))`
-/

namespace A281497.P13862435076756951936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230425 (SequenceMachineLib.roundAway ((A230448 n : ℚ) ^ (A230405 n : ℤ))).toNat

end

end A281497.P13862435076756951936

namespace A281497

/-- `A230425(A230448(n)^A230405(n))` -/
def P13862435076756951936.Spec : Prop :=
  ∀ n, P13862435076756951936.a n = A281497 (n + 1)

end A281497

/-!
# A281499: Write n in binary reflected Gray code, interchange the 1's and 0's, reverse the code and convert it back to decimal.

The programs for A281499, the canonical program `A281499.P7725258825879446995` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281499 has offset 0).

The definition of A281499 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036044, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A281499.P7725258825879446995

`A036044(A003188(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A281499

/-- `A036044(A003188(n))` -/
def P7725258825879446995.Spec : Prop :=
  ∀ n, P7725258825879446995.a n = A281499 n

theorem P7725258825879446995.correct : P7725258825879446995.Spec := by
  intro n
  simp only [A281499]

end A281499

/-! ## A281499.P9041967054275128067

`A000005(A008578(n+1))*A035327(A341915(n))`
-/

namespace A281499.P9041967054275128067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008578 (n + 1)).toNat * A035327 (A341915 n).toNat

end

end A281499.P9041967054275128067

namespace A281499

/-- `A000005(A008578(n+1))*A035327(A341915(n))` -/
def P9041967054275128067.Spec : Prop :=
  ∀ n, P9041967054275128067.a n = A281499 n

end A281499

/-! ## A281499.P8010743988738440341

`A036044(xor(n, floor(n/2)))`
-/

namespace A281499.P8010743988738440341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A281499.P8010743988738440341

namespace A281499

/-- `A036044(xor(n, floor(n/2)))` -/
def P8010743988738440341.Spec : Prop :=
  ∀ n, P8010743988738440341.a n = A281499 n

end A281499

/-! ## A281499.P2636423844419724992

`A036044(abs(xor(n, n-∑[n%2])))`
-/

namespace A281499.P2636423844419724992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 |Int.xor (n : ℤ) ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))|.toNat

end

end A281499.P2636423844419724992

namespace A281499

/-- `A036044(abs(xor(n, n-∑[n%2])))` -/
def P2636423844419724992.Spec : Prop :=
  ∀ n, P2636423844419724992.a n = A281499 n

end A281499

/-! ## A281499.P13827651684144497685

`A036044(abs(xor(n, (or(1, n)-1)/2)))`
-/

namespace A281499.P13827651684144497685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 |Int.xor (n : ℤ) (SequenceMachineLib.roundAway (((Nat.lor 1 n : ℤ) - 1 : ℚ) / 2))|.toNat

end

end A281499.P13827651684144497685

namespace A281499

/-- `A036044(abs(xor(n, (or(1, n)-1)/2)))` -/
def P13827651684144497685.Spec : Prop :=
  ∀ n, P13827651684144497685.a n = A281499 n

end A281499

/-! ## A281499.P15291809916436352844

`A036044(xor(2*n, and(n, -2))/2)`
-/

namespace A281499.P15291809916436352844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (SequenceMachineLib.roundAway ((Int.xor (2 * n : ℤ) (Int.land (n : ℤ) (-2)) : ℚ) / 2)).toNat

end

end A281499.P15291809916436352844

namespace A281499

/-- `A036044(xor(2*n, and(n, -2))/2)` -/
def P15291809916436352844.Spec : Prop :=
  ∀ n, P15291809916436352844.a n = A281499 n

end A281499

/-! ## A281499.P8018883870996664930

`A036044(or(n, 2*n)-ceil(3*n/2))`
-/

namespace A281499.P8018883870996664930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 ((Nat.lor n (2 * n) : ℤ) - ⌈3 * ((n : ℚ) / 2)⌉).toNat

end

end A281499.P8018883870996664930

namespace A281499

/-- `A036044(or(n, 2*n)-ceil(3*n/2))` -/
def P8018883870996664930.Spec : Prop :=
  ∀ n, P8018883870996664930.a n = A281499 n

end A281499

/-! ## A281499.P13216559628211036379

`A036044(ceil(1/2*xor(2*n+1, n+1)))`
-/

namespace A281499.P13216559628211036379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 ⌈(1 : ℚ) / 2 * (Nat.xor (2 * n + 1) (n + 1) : ℚ)⌉.toNat

end

end A281499.P13216559628211036379

namespace A281499

/-- `A036044(ceil(1/2*xor(2*n+1, n+1)))` -/
def P13216559628211036379.Spec : Prop :=
  ∀ n, P13216559628211036379.a n = A281499 n

end A281499

/-! ## A281499.P5929401537699504084

`A036044(∑[2/a(n-1)]-and(2*n+1, n+1))` with `a(0)=1`
-/

namespace A281499.P5929401537699504084
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  2 / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j - (Nat.land (2 * n + 1) (n + 1) : ℚ))).toNat

end

end A281499.P5929401537699504084

namespace A281499

/-- `A036044(∑[2/a(n-1)]-and(2*n+1, n+1))` -/
def P5929401537699504084.Spec : Prop :=
  ∀ n, P5929401537699504084.a n = A281499 n

end A281499

/-! ## A281499.P15790517740243883172

`A036044(A105081(n+1)-1)`
-/

namespace A281499.P15790517740243883172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (A105081 (n + 1) - 1).toNat

end

end A281499.P15790517740243883172

namespace A281499

/-- `A036044(A105081(n+1)-1)` -/
def P15790517740243883172.Spec : Prop :=
  ∀ n, P15790517740243883172.a n = A281499 n

theorem P15790517740243883172.correct : P15790517740243883172.Spec := by
  intro n
  simp only [A281499, Nat.add_sub_cancel, A281499.P15790517740243883172.a, A281499.P7725258825879446995.a, A003188, A003188.P10544524695508875182.a, A036044, A036044.P16648927426293672306.a, A105081, A105081.P13201815104131715710.a, A035327, A035327.P258997810375859489.a, A055945, A055945.P5963763732554067333.a, A038572, A038572.P6039021529582153667.a, A053644, A053644.P1707366427427647095.a, A000035, A000035.P2023072528413494694.a, A004526, A004526.P10084182425416171735.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A281499

/-! ## A281499.P8636019430160299860

`A036044(∑[A055975(n+1)]-A055975(n+1))`
-/

namespace A281499.P8636019430160299860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (∑ j ∈ Finset.range (n + 1), f1 j - A055975 (n + 1)).toNat

end

end A281499.P8636019430160299860

namespace A281499

/-- `A036044(∑[A055975(n+1)]-A055975(n+1))` -/
def P8636019430160299860.Spec : Prop :=
  ∀ n, P8636019430160299860.a n = A281499 n

end A281499

/-! ## A281499.P14321277900838255426

`A036044(A048724(n/A040001(n)))`
-/

namespace A281499.P14321277900838255426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (A048724 (SequenceMachineLib.roundAway ((n : ℚ) / (A040001 n : ℚ))).toNat).toNat

end

end A281499.P14321277900838255426

namespace A281499

/-- `A036044(A048724(n/A040001(n)))` -/
def P14321277900838255426.Spec : Prop :=
  ∀ n, P14321277900838255426.a n = A281499 n

end A281499

/-! ## A281499.P12510261297617221868

`A036044(A040001(n)+A048724(n)-1)`
-/

namespace A281499.P12510261297617221868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (A040001 n + (A048724 n - 1)).toNat

end

end A281499.P12510261297617221868

namespace A281499

/-- `A036044(A040001(n)+A048724(n)-1)` -/
def P12510261297617221868.Spec : Prop :=
  ∀ n, P12510261297617221868.a n = A281499 n

end A281499

/-! ## A281499.P12858837735138233495

`A036044(A040001(n)-(1-A048724(n)))`
-/

namespace A281499.P12858837735138233495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (A040001 n - (1 - A048724 n)).toNat

end

end A281499.P12858837735138233495

namespace A281499

/-- `A036044(A040001(n)-(1-A048724(n)))` -/
def P12858837735138233495.Spec : Prop :=
  ∀ n, P12858837735138233495.a n = A281499 n

end A281499

