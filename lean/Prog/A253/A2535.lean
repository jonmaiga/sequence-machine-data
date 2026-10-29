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
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A253500: Number of (6+1) X (n+1) 0..2 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253500, there is no canonical definition to state claims against.
-/

/-! ## A253500.P17053754705013144520

`A253495(A166136(n+4))`
-/

namespace A253500.P17053754705013144520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253495 (A166136 (n + 4)).toNat

end

end A253500.P17053754705013144520

/-! ## A253500.P14392183789231964768

`A253495(A056115(n)+21)`
-/

namespace A253500.P14392183789231964768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253495 (A056115 n + 21).toNat

end

end A253500.P14392183789231964768

/-! ## A253500.P8724379353301258323

`A253495(∑[A020710(n)]+16)`
-/

namespace A253500.P8724379353301258323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253495 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A253500.P8724379353301258323

/-! ## A253500.P1086726666113986096

`A253495(A167499(n+4)+1)`
-/

namespace A253500.P1086726666113986096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253495 (A167499 (n + 4) + 1).toNat

end

end A253500.P1086726666113986096

/-! ## A253500.P9885700540296988256

`A253495(A167614(n+4)+3)`
-/

namespace A253500.P9885700540296988256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253495 (A167614 (n + 4) + 3).toNat

end

end A253500.P9885700540296988256

/-!
# A253501: Number of (7+1) X (n+1) 0..2 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253501, there is no canonical definition to state claims against.
-/

/-! ## A253501.P16085845201095157875

`A253495(A167487(n+5))`
-/

namespace A253501.P16085845201095157875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253495 (A167487 (n + 5)).toNat

end

end A253501.P16085845201095157875

/-! ## A253501.P2065623826636988076

`A253495(A056119(n)+28)`
-/

namespace A253501.P2065623826636988076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253495 (A056119 n + 28).toNat

end

end A253501.P2065623826636988076

/-! ## A253501.P13015838811805318218

`A253495(A167614(n+5)+4)`
-/

namespace A253501.P13015838811805318218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253495 (A167614 (n + 5) + 4).toNat

end

end A253501.P13015838811805318218

/-! ## A253501.P16910852803704489913

`A253495(A340266(n+5)+5)`
-/

namespace A253501.P16910852803704489913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253495 (A340266 (n + 5) + 5).toNat

end

end A253501.P16910852803704489913

/-! ## A253501.P34212774077993861

`A253495(A000124(n+6)+6)`
-/

namespace A253501.P34212774077993861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253495 (A000124 (n + 6) + 6).toNat

end

end A253501.P34212774077993861

/-!
# A253502: Number of (n+2)X(n+2) 0..1 arrays with every 2X2 and 3X3 subblock diagonal maximum minus antidiagonal minimum nondecreasing horizontally and vertically.

The programs for A253502, there is no canonical definition to state claims against.
-/

/-! ## A253502.P6248370568371506426

`A253510(∑[4*n]+1)`
-/

namespace A253502.P6248370568371506426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253510 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253502.P6248370568371506426

/-! ## A253502.P15578048649718972509

`lcm(2, A253510(A001844(n)))`
-/

namespace A253502.P15578048649718972509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A253510 (A001844 n).toNat)

end

end A253502.P15578048649718972509

/-! ## A253502.P13123240267964753545

`record[gcd(A037012(n), A253510(n+1))]`
-/

namespace A253502.P13123240267964753545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A253510 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253502.P13123240267964753545

/-! ## A253502.P4867465834458039460

`record[root(A253510(n+1), A113881(n+1))]`
-/

namespace A253502.P4867465834458039460
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A253510 (n + 1) : ℝ) ^ (1 / (A113881 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253502.P4867465834458039460

/-! ## A253502.P14676302158127085270

`A253510(A001844(n))*A262681(n)`
-/

namespace A253502.P14676302158127085270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253510 (A001844 n).toNat * A262681 n

end

end A253502.P14676302158127085270

/-! ## A253502.P3638229380819363139

`A007318(A020639(3*(n+1)))*A253510(A001844(n))`
-/

namespace A253502.P3638229380819363139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A020639 (3 * (n + 1))).toNat * A253510 (A001844 n).toNat

end

end A253502.P3638229380819363139

/-!
# A253503: Number of (n+2) X (1+2) 0..1 arrays with every 2 X 2 and 3 X 3 subblock diagonal maximum minus antidiagonal minimum nondecreasing horizontally and vertically.

The programs for A253503, the canonical program `A253503.P17503406966636517119` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253503 has offset 1).

The definition of A253503 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253503.P17503406966636517119

`20*(n+1)²+68*(n+1)+44`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A253503

/-- `20*(n+1)²+68*(n+1)+44` -/
def P17503406966636517119.Spec : Prop :=
  ∀ n, (P17503406966636517119.a n : ℤ) = A253503 (n + 1)

theorem P17503406966636517119.correct : P17503406966636517119.Spec := by
  intro n
  simp only [A253503, Nat.add_sub_cancel]

end A253503

/-! ## A253503.P13395822757986940178

`lcm(4, 3-A135706(n+3))`
-/

namespace A253503.P13395822757986940178
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (3 - A135706 (n + 3))

end

end A253503.P13395822757986940178

namespace A253503

/-- `lcm(4, 3-A135706(n+3))` -/
def P13395822757986940178.Spec : Prop :=
  ∀ n, (P13395822757986940178.a n : ℤ) = A253503 (n + 1)

end A253503

/-! ## A253503.P18263995902581233400

`4*(A051624(n+3)+n)`
-/

namespace A253503.P18263995902581233400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A051624 (n + 3) + (n : ℤ))

end

end A253503.P18263995902581233400

namespace A253503

/-- `4*(A051624(n+3)+n)` -/
def P18263995902581233400.Spec : Prop :=
  ∀ n, P18263995902581233400.a n = A253503 (n + 1)

theorem P18263995902581233400.correct : P18263995902581233400.Spec := by
  intro n
  simp only [A253503, Nat.add_sub_cancel, A253503.P18263995902581233400.a, A253503.P17503406966636517119.a, A051624, A051624.P2353499915457724243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A253503

/-! ## A253503.P483577069010139788

`2*(A302906(2*(n+2))+n)`
-/

namespace A253503.P483577069010139788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A302906 (2 * (n + 2)) + (n : ℤ))

end

end A253503.P483577069010139788

namespace A253503

/-- `2*(A302906(2*(n+2))+n)` -/
def P483577069010139788.Spec : Prop :=
  ∀ n, P483577069010139788.a n = A253503 (n + 1)

end A253503

/-! ## A253503.P8447275216085546303

`A253510(∑[n]+1)`
-/

namespace A253503.P8447275216085546303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253510 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253503.P8447275216085546303

namespace A253503

/-- `A253510(∑[n]+1)` -/
def P8447275216085546303.Spec : Prop :=
  ∀ n, P8447275216085546303.a n = A253503 (n + 1)

end A253503

/-! ## A253503.P895281281755803782

`lcm(2, A253510(A000096(n)+1))`
-/

namespace A253503.P895281281755803782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A253510 (A000096 n + 1).toNat)

end

end A253503.P895281281755803782

namespace A253503

/-- `lcm(2, A253510(A000096(n)+1))` -/
def P895281281755803782.Spec : Prop :=
  ∀ n, (P895281281755803782.a n : ℤ) = A253503 (n + 1)

end A253503

/-!
# A253504: Number of (n+2) X (2+2) 0..1 arrays with every 2 X 2 and 3X3 subblock diagonal maximum minus antidiagonal minimum nondecreasing horizontally and vertically.

The programs for A253504, there is no canonical definition to state claims against.
-/

/-! ## A253504.P18223295874786096021

`A253510(∑[n+1]+2)`
-/

namespace A253504.P18223295874786096021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253510 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A253504.P18223295874786096021

/-! ## A253504.P10700662129546263297

`A253510(A000096(n)+3)%A253505(n+1)`
-/

namespace A253504.P10700662129546263297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253510 (A000096 n + 3).toNat) (A253505 (n + 1))

end

end A253504.P10700662129546263297

/-! ## A253504.P10015215315086422000

`lcm(2, A253510(A000096(n+1)))`
-/

namespace A253504.P10015215315086422000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A253510 (A000096 (n + 1)).toNat)

end

end A253504.P10015215315086422000

/-! ## A253504.P9715552780170916552

`A253510(A000096(n+1))+A000038(n+1)`
-/

namespace A253504.P9715552780170916552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253510 (A000096 (n + 1)).toNat + A000038 (n + 1)

end

end A253504.P9715552780170916552

/-! ## A253504.P16188744724318962038

`A253510(A000096(n+1))+A000035(2*n)`
-/

namespace A253504.P16188744724318962038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253510 (A000096 (n + 1)).toNat + A000035 (2 * n)

end

end A253504.P16188744724318962038

/-! ## A253504.P3487850092596215756

`A253510(A000096(n+1))%A253505(n+1)`
-/

namespace A253504.P3487850092596215756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253510 (A000096 (n + 1)).toNat) (A253505 (n + 1))

end

end A253504.P3487850092596215756

/-! ## A253504.P7510159818164608053

`A253510(A000096(n+1))+and(2, A000035(n))`
-/

namespace A253504.P7510159818164608053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253510 (A000096 (n + 1)).toNat + Int.land 2 (A000035 n)

end

end A253504.P7510159818164608053

/-! ## A253504.P14763730263396686131

`A253510(A000096(n+1))+char[A253510(n+2)]`
-/

namespace A253504.P14763730263396686131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253510 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253510 (A000096 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A253504.P14763730263396686131

/-! ## A253504.P2325714698169548200

`A253510(A000096(n+1))+A063377(9*(n+1))`
-/

namespace A253504.P2325714698169548200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253510 (A000096 (n + 1)).toNat + A063377 (9 * (n + 1))

end

end A253504.P2325714698169548200

/-! ## A253504.P12768921446979246507

`gcd(5, A034856(n+1))*A253510(A000096(n+1))`
-/

namespace A253504.P12768921446979246507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 5 (A034856 (n + 1)) : ℤ) * A253510 (A000096 (n + 1)).toNat

end

end A253504.P12768921446979246507

/-! ## A253504.P18258807140014716001

`A253510(A000096(n+1))+and(2, A050803(n+1))`
-/

namespace A253504.P18258807140014716001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253510 (A000096 (n + 1)).toNat + Int.land 2 (A050803 (n + 1))

end

end A253504.P18258807140014716001

/-! ## A253504.P11011477786807772229

`gcd(n, A085731(n+1))*A253510(A000096(n+1))`
-/

namespace A253504.P11011477786807772229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n : ℤ) (A085731 (n + 1)) : ℤ) * A253510 (A000096 (n + 1)).toNat

end

end A253504.P11011477786807772229

/-! ## A253504.P14338161682648278490

`gcd(2, A337168(n))*A253510(A000096(n+1))`
-/

namespace A253504.P14338161682648278490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A337168 n) : ℤ) * A253510 (A000096 (n + 1)).toNat

end

end A253504.P14338161682648278490

/-!
# A253505: Number of (n+2) X (3+2) 0..1 arrays with every 2 X 2 and 3 X 3 subblock diagonal maximum minus antidiagonal minimum nondecreasing horizontally and vertically.

The programs for A253505, there is no canonical definition to state claims against.
-/

/-! ## A253505.P1737572745700302512

`record[A253510(∑[n-2]+6)]`
-/

namespace A253505.P1737572745700302512
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253510 (∑ j ∈ Finset.range (n + 1), f2 j + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253505.P1737572745700302512

/-! ## A253505.P4735432018387287413

`A253510(A167614(n+1))`
-/

namespace A253505.P4735432018387287413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253510 (A167614 (n + 1)).toNat

end

end A253505.P4735432018387287413

/-! ## A253505.P12899183172890265443

`A253510(A373663(n+1))`
-/

namespace A253505.P12899183172890265443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253510 (A373663 (n + 1)).toNat

end

end A253505.P12899183172890265443

/-! ## A253505.P7280595114152977881

`A253510(A055998(n)+6)`
-/

namespace A253505.P7280595114152977881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253510 (A055998 n + 6).toNat

end

end A253505.P7280595114152977881

/-! ## A253505.P1421468852135221404

`A253510(A046691(n)+7)`
-/

namespace A253505.P1421468852135221404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253510 (A046691 n + 7).toNat

end

end A253505.P1421468852135221404

/-! ## A253505.P3219963318173995183

`A253510(A167499(n)+n)`
-/

namespace A253505.P3219963318173995183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253510 (A167499 n + (n : ℤ)).toNat

end

end A253505.P3219963318173995183

/-! ## A253505.P13701358573395334519

`A253510(A034856(n+1)+5)`
-/

namespace A253505.P13701358573395334519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253510 (A034856 (n + 1) + 5).toNat

end

end A253505.P13701358573395334519

/-! ## A253505.P17460035211694671723

`A253510(∑[n+3]+1)`
-/

namespace A253505.P17460035211694671723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253510 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253505.P17460035211694671723

/-!
# A253506: Number of (n+2) X (4+2) 0..1 arrays with every 2 X 2 and 3 X 3 subblock diagonal maximum minus antidiagonal minimum nondecreasing horizontally and vertically.

The programs for A253506, there is no canonical definition to state claims against.
-/

/-! ## A253506.P2461107840230678270

`A253510(∑[n+3]+7)`
-/

namespace A253506.P2461107840230678270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253510 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A253506.P2461107840230678270

/-! ## A253506.P13448462622555683617

`lcm(2, A253510(A167614(n+2)+1))`
-/

namespace A253506.P13448462622555683617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A253510 (A167614 (n + 2) + 1).toNat)

end

end A253506.P13448462622555683617

/-! ## A253506.P14976972114526752800

`A253510(A167614(n+2)+1)-A253513(2*n+1)`
-/

namespace A253506.P14976972114526752800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253510 (A167614 (n + 2) + 1).toNat - A253513 (2 * n + 1)

end

end A253506.P14976972114526752800

/-! ## A253506.P7131965756164463149

`A253510(A167614(n+2)+1)+A008683(9*(n+1))`
-/

namespace A253506.P7131965756164463149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253510 (A167614 (n + 2) + 1).toNat + A008683 (9 * (n + 1))

end

end A253506.P7131965756164463149

/-! ## A253506.P10085023177961923882

`A143771(6*(3*n+1))*A253510(A167614(n+2)+1)`
-/

namespace A253506.P10085023177961923882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143771 (6 * (3 * n + 1)) * A253510 (A167614 (n + 2) + 1).toNat

end

end A253506.P10085023177961923882

/-! ## A253506.P7857767462915683682

`A009001(A173457(n))*A253510(A167614(n+2)+1)`
-/

namespace A253506.P7857767462915683682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A173457 n).toNat * A253510 (A167614 (n + 2) + 1).toNat

end

end A253506.P7857767462915683682

/-! ## A253506.P4355879354496103886

`A003557(A005117(n+1))*A253510(A167614(n+2)+1)`
-/

namespace A253506.P4355879354496103886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A005117 (n + 1)).toNat * A253510 (A167614 (n + 2) + 1).toNat

end

end A253506.P4355879354496103886

/-!
# A253507: Number of (n+2) X (5+2) 0..1 arrays with every 2 X 2 and 3 X 3 subblock diagonal maximum minus antidiagonal minimum nondecreasing horizontally and vertically.

The programs for A253507, there is no canonical definition to state claims against.
-/

/-! ## A253507.P227525329942268927

`A253510(A374005(n+1))`
-/

namespace A253507.P227525329942268927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253510 (A374005 (n + 1)).toNat

end

end A253507.P227525329942268927

/-! ## A253507.P6747762781640344712

`A253510(A056000(n)+15)`
-/

namespace A253507.P6747762781640344712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253510 (A056000 n + 15).toNat

end

end A253507.P6747762781640344712

/-! ## A253507.P6488797185357303274

`A253510(A167614(n+3)+2)`
-/

namespace A253507.P6488797185357303274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253510 (A167614 (n + 3) + 2).toNat

end

end A253507.P6488797185357303274

/-! ## A253507.P8637725697305119792

`lcm(2, A253510(A167499(n+3)))`
-/

namespace A253507.P8637725697305119792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A253510 (A167499 (n + 3)).toNat)

end

end A253507.P8637725697305119792

/-! ## A253507.P6333620771741173989

`A253510(∑[n+5]+6)`
-/

namespace A253507.P6333620771741173989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253510 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A253507.P6333620771741173989

/-! ## A253507.P16504788620896986632

`A253510(eq[8, A140996(n)])%A253521(n+1)`
-/

namespace A253507.P16504788620896986632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253510 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A253521 (n + 1))

end

end A253507.P16504788620896986632

/-!
# A253508: Number of (n+2)X(6+2) 0..1 arrays with every 2X2 and 3X3 subblock diagonal maximum minus antidiagonal minimum nondecreasing horizontally and vertically.

The programs for A253508, there is no canonical definition to state claims against.
-/

/-! ## A253508.P16893528143073073145

`A253510(A374007(n+1))`
-/

namespace A253508.P16893528143073073145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253510 (A374007 (n + 1)).toNat

end

end A253508.P16893528143073073145

/-! ## A253508.P12047055943986734601

`A253510(A167614(n+4)+3)`
-/

namespace A253508.P12047055943986734601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253510 (A167614 (n + 4) + 3).toNat

end

end A253508.P12047055943986734601

/-! ## A253508.P10453708637978914712

`A253510(A000124(n+5)+5)`
-/

namespace A253508.P10453708637978914712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253510 (A000124 (n + 5) + 5).toNat

end

end A253508.P10453708637978914712

/-! ## A253508.P11600164854470343518

`A253510(A000217(n+5)+6)`
-/

namespace A253508.P11600164854470343518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253510 (A000217 (n + 5) + 6).toNat

end

end A253508.P11600164854470343518

/-! ## A253508.P9596322335841517094

`A253510((n+4)²-∑[n+1]+1)`
-/

namespace A253508.P9596322335841517094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253510 (((n + 4) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat

end

end A253508.P9596322335841517094

/-! ## A253508.P15219358276646631071

`lcm(2, A253510(A052905(n+3)))`
-/

namespace A253508.P15219358276646631071
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A253510 (A052905 (n + 3)).toNat)

end

end A253508.P15219358276646631071

/-! ## A253508.P7005787570547049430

`A253510(A052905(n+3))%A253509(n+1)`
-/

namespace A253508.P7005787570547049430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253510 (A052905 (n + 3)).toNat) (A253509 (n + 1))

end

end A253508.P7005787570547049430

/-!
# A253509: Number of (n+2)X(7+2) 0..1 arrays with every 2X2 and 3X3 subblock diagonal maximum minus antidiagonal minimum nondecreasing horizontally and vertically.

The programs for A253509, there is no canonical definition to state claims against.
-/

/-! ## A253509.P14287649794922267917

`A253510(A374008(n+1))`
-/

namespace A253509.P14287649794922267917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253510 (A374008 (n + 1)).toNat

end

end A253509.P14287649794922267917

/-! ## A253509.P8409244125689538987

`A253510(A161680(n+7)+7)`
-/

namespace A253509.P8409244125689538987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253510 (A161680 (n + 7) + 7).toNat

end

end A253509.P8409244125689538987

/-! ## A253509.P7618305893342667657

`A253510(A167614(n+9)-A016825(n+7))`
-/

namespace A253509.P7618305893342667657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253510 (A167614 (n + 9) - A016825 (n + 7)).toNat

end

end A253509.P7618305893342667657

/-! ## A253509.P14218358071230943986

`A253510(A055999(n+4))`
-/

namespace A253509.P14218358071230943986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253510 (A055999 (n + 4)).toNat

end

end A253509.P14218358071230943986

/-! ## A253509.P15369166233657595953

`A253510(Δ[A026054(n+4)])`
-/

namespace A253509.P15369166233657595953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253510 (f1 (n + 1) - f1 n).toNat

end

end A253509.P15369166233657595953

/-! ## A253509.P16398730076195006288

`A253510(A000124(n+7)-7)`
-/

namespace A253509.P16398730076195006288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253510 (A000124 (n + 7) - 7).toNat

end

end A253509.P16398730076195006288

/-!
# A253511: Number of n-bit binary strings in which the length of any run of ones is a power of two.

The programs for A253511, there is no canonical definition to state claims against.
-/

/-! ## A253511.P1234335958712355604

`A000102(n)+record[A153462(n+3)]`
-/

namespace A253511.P1234335958712355604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153462 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000102 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253511.P1234335958712355604

/-! ## A253511.P7552972605337857046

`A001462(A120036(n+2)+A077936(n))`
-/

namespace A253511.P7552972605337857046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A120036 (n + 2) + A077936 n).toNat

end

end A253511.P7552972605337857046

/-! ## A253511.P18031575323130263564

`A202193(A134869(n+1))-Δ[A000102(n)]`
-/

namespace A253511.P18031575323130263564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202193 (A134869 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A253511.P18031575323130263564

/-! ## A253511.P5996889300418759184

`A008937(n)+A003056(A045723(n))`
-/

namespace A253511.P5996889300418759184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 n + A003056 (A045723 n).toNat

end

end A253511.P5996889300418759184

/-! ## A253511.P662241466110402080

`A076739(n)+A003056(A000245(n))`
-/

namespace A253511.P662241466110402080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076739 n + A003056 (A000245 n).toNat

end

end A253511.P662241466110402080

/-!
# A253512: a(n) = (2^n - 1) * (3^(n+2) - 1) / 2.

The programs for A253512, the canonical program `A253512.P11283053726059705769` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253512 has offset 0).

The definition of A253512 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n-1)*(3^(n+2)-1)/2` (program `A253512.P18385017594691141540`, by `A253512.P18385017594691141540.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A253512.P9152854202118241380

`ogf((13x-36x^2+18x^3)/(1-12x+47x^2-72x^3+36x^4))`
-/

namespace A253512.P9152854202118241380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 13, -36, 18] [1, -12, 47, -72, 36] n

end

end A253512.P9152854202118241380

namespace A253512

/-- `ogf((13x-36x^2+18x^3)/(1-12x+47x^2-72x^3+36x^4))` -/
def P9152854202118241380.Spec : Prop :=
  ∀ n, P9152854202118241380.a n = A253512 n

end A253512

/-! ## A253512.P18385017594691141540

`(2^n-1)*(3^(n+2)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A253512.P18385017594691141540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 ^ n : ℤ) - 1) * ((3 ^ (n + 2) : ℤ) - 1) : ℚ) / 2

end

end A253512.P18385017594691141540

namespace A253512

/-- `(2^n-1)*(3^(n+2)-1)/2` -/
def P18385017594691141540.Spec : Prop :=
  ∀ n, P18385017594691141540.a n = (A253512 n : ℚ)

theorem P18385017594691141540.correct : P18385017594691141540.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A253512, Nat.add_sub_cancel, A253512.P18385017594691141540.a, A253512.P11283053726059705769.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A253512, Nat.add_sub_cancel, A253512.P18385017594691141540.a, A253512.P11283053726059705769.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A253512

/-! ## A253512.P11283053726059705769

`12*a(n-1)-47*a(n-2)+72*a(n-3)-36*a(n-4)` with `a(0)=0, a(1)=13, a(2)=120, a(3)=847`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A253512

/-- `12*a(n-1)-47*a(n-2)+72*a(n-3)-36*a(n-4)` -/
def P11283053726059705769.Spec : Prop :=
  ∀ n, P11283053726059705769.a n = A253512 n

theorem P11283053726059705769.correct : P11283053726059705769.Spec := by
  intro n
  simp only [A253512]

end A253512

/-! ## A253512.P1622802786718833861

`lcm(2^n-1, Δ[A000340(n)])`
-/

namespace A253512.P1622802786718833861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000340 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((2 ^ n : ℤ) - 1) (f1 (n + 1) - f1 n)

end

end A253512.P1622802786718833861

namespace A253512

/-- `lcm(2^n-1, Δ[A000340(n)])` -/
def P1622802786718833861.Spec : Prop :=
  ∀ n, (P1622802786718833861.a n : ℤ) = A253512 n

end A253512

/-! ## A253512.P13226713215035894118

`lcm(Δ[A000340(n)], A000225(n))`
-/

namespace A253512.P13226713215035894118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000340 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A000225 n)

end

end A253512.P13226713215035894118

namespace A253512

/-- `lcm(Δ[A000340(n)], A000225(n))` -/
def P13226713215035894118.Spec : Prop :=
  ∀ n, (P13226713215035894118.a n : ℤ) = A253512 n

end A253512

/-! ## A253512.P164382123210915478

`A000225(n)*A003462(n+2)`
-/

namespace A253512.P164382123210915478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n * A003462 (n + 2)

end

end A253512.P164382123210915478

namespace A253512

/-- `A000225(n)*A003462(n+2)` -/
def P164382123210915478.Spec : Prop :=
  ∀ n, P164382123210915478.a n = A253512 n

end A253512

/-! ## A253512.P18259732868862565611

`A000225(n)*A261547(n+2)`
-/

namespace A253512.P18259732868862565611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n * A261547 (n + 2)

end

end A253512.P18259732868862565611

namespace A253512

/-- `A000225(n)*A261547(n+2)` -/
def P18259732868862565611.Spec : Prop :=
  ∀ n, P18259732868862565611.a n = A253512 n

end A253512

/-! ## A253512.P8548850317521516862

`lcm(∑[A131577(n)], A003462(n+2))`
-/

namespace A253512.P8548850317521516862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A003462 (n + 2))

end

end A253512.P8548850317521516862

namespace A253512

/-- `lcm(∑[A131577(n)], A003462(n+2))` -/
def P8548850317521516862.Spec : Prop :=
  ∀ n, (P8548850317521516862.a n : ℤ) = A253512 n

end A253512

/-! ## A253512.P16183554588804323363

`A000225(n)+A000225(n)*A123109(n+1)`
-/

namespace A253512.P16183554588804323363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + A000225 n * A123109 (n + 1)

end

end A253512.P16183554588804323363

namespace A253512

/-- `A000225(n)+A000225(n)*A123109(n+1)` -/
def P16183554588804323363.Spec : Prop :=
  ∀ n, P16183554588804323363.a n = A253512 n

end A253512

/-! ## A253512.P10512120498397651190

`A000225(n)+A000225(n)*A029858(n+2)`
-/

namespace A253512.P10512120498397651190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + A000225 n * A029858 (n + 2)

end

end A253512.P10512120498397651190

namespace A253512

/-- `A000225(n)+A000225(n)*A029858(n+2)` -/
def P10512120498397651190.Spec : Prop :=
  ∀ n, P10512120498397651190.a n = A253512 n

end A253512

/-! ## A253512.P6948089999849174976

`(A053156(n+2)+A000225(n+1))*A000225(n)`
-/

namespace A253512.P6948089999849174976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053156 (n + 2) + A000225 (n + 1)) * A000225 n

end

end A253512.P6948089999849174976

namespace A253512

/-- `(A053156(n+2)+A000225(n+1))*A000225(n)` -/
def P6948089999849174976.Spec : Prop :=
  ∀ n, P6948089999849174976.a n = A253512 n

end A253512

/-!
# A253513: The characteristic function of the multiples of eight.

The programs for A253513, the canonical program `A253513.P7768194327896133816` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253513 has offset 0).

The definition of A253513 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253513.P7768194327896133816

`floor(n/8)-floor((n-1)/8)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A253513

/-- `floor(n/8)-floor((n-1)/8)` -/
def P7768194327896133816.Spec : Prop :=
  ∀ n, P7768194327896133816.a n = A253513 n

theorem P7768194327896133816.correct : P7768194327896133816.Spec := by
  intro n
  simp only [A253513]

end A253513

/-!
# A253514: Centered heptagonal numbers (A069099) which are also centered octagonal numbers (A016754).

The programs for A253514, the canonical program `A253514.P4068282425341631059` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253514 has offset 1).

The definition of A253514 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253514.P4068282425341631059

`A157877(n+1)²`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A253514

/-- `A157877(n+1)²` -/
def P4068282425341631059.Spec : Prop :=
  ∀ n, P4068282425341631059.a n = A253514 (n + 1)

theorem P4068282425341631059.correct : P4068282425341631059.Spec := by
  intro n
  simp only [A253514, Nat.add_sub_cancel]

end A253514

/-! ## A253514.P14016407003558826904

`A041097(2*n)²`
-/

namespace A253514.P14016407003558826904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041097 (2 * n) ^ 2

end

end A253514.P14016407003558826904

namespace A253514

/-- `A041097(2*n)²` -/
def P14016407003558826904.Spec : Prop :=
  ∀ n, P14016407003558826904.a n = A253514 (n + 1)

end A253514

/-! ## A253514.P13907385739999852349

`A041419(2*n)²`
-/

namespace A253514.P13907385739999852349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041419 (2 * n) ^ 2

end

end A253514.P13907385739999852349

namespace A253514

/-- `A041419(2*n)²` -/
def P13907385739999852349.Spec : Prop :=
  ∀ n, P13907385739999852349.a n = A253514 (n + 1)

end A253514

/-! ## A253514.P1381284863521544667

`1+7*A157879(n+1)`
-/

namespace A253514.P1381284863521544667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 7 * A157879 (n + 1)

end

end A253514.P1381284863521544667

namespace A253514

/-- `1+7*A157879(n+1)` -/
def P1381284863521544667.Spec : Prop :=
  ∀ n, P1381284863521544667.a n = A253514 (n + 1)

end A253514

/-!
# A253515: Count down from 2*k to 1, then from 2*(k+1) to 1 and so on.

The programs for A253515, the canonical program `A253515.P17804736384522055830` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253515 has offset 1).

The definition of A253515 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253515.P17804736384522055830

`1-(n+1)+floor(sqrt(n+1)+3/2)*floor(sqrt(n+1)+1/2)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A253515

/-- `1-(n+1)+floor(sqrt(n+1)+3/2)*floor(sqrt(n+1)+1/2)` -/
def P17804736384522055830.Spec : Prop :=
  ∀ n, P17804736384522055830.a n = A253515 (n + 1)

theorem P17804736384522055830.correct : P17804736384522055830.Spec := by
  intro n
  simp only [A253515, Nat.add_sub_cancel]

end A253515

/-! ## A253515.P9197255373232573236

`(A005563(n)+2)%(comp[n²]+1)`
-/

namespace A253515.P9197255373232573236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005563 n + 2) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1 : ℤ)

end

end A253515.P9197255373232573236

namespace A253515

/-- `(A005563(n)+2)%(comp[n²]+1)` -/
def P9197255373232573236.Spec : Prop :=
  ∀ n, P9197255373232573236.a n = A253515 (n + 1)

end A253515

/-! ## A253515.P5527718845083100372

`A068527(comp[n²])`
-/

namespace A253515.P5527718845083100372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A253515.P5527718845083100372

namespace A253515

/-- `A068527(comp[n²])` -/
def P5527718845083100372.Spec : Prop :=
  ∀ n, P5527718845083100372.a n = A253515 (n + 1)

end A253515

/-! ## A253515.P10257246522668247151

`A080883(comp[n²])`
-/

namespace A253515.P10257246522668247151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080883 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A253515.P10257246522668247151

namespace A253515

/-- `A080883(comp[n²])` -/
def P10257246522668247151.Spec : Prop :=
  ∀ n, P10257246522668247151.a n = A253515 (n + 1)

end A253515

/-! ## A253515.P8665357249994072632

`A074294(A005843(A053187(n+1))-n)`
-/

namespace A253515.P8665357249994072632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074294 (A005843 (A053187 (n + 1)).toNat - (n : ℤ)).toNat

end

end A253515.P8665357249994072632

namespace A253515

/-- `A074294(A005843(A053187(n+1))-n)` -/
def P8665357249994072632.Spec : Prop :=
  ∀ n, P8665357249994072632.a n = A253515 (n + 1)

end A253515

/-! ## A253515.P8267876629659372645

`A074294(A007607(A053187(n+1))-n)`
-/

namespace A253515.P8267876629659372645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074294 (A007607 (A053187 (n + 1)).toNat - (n : ℤ)).toNat

end

end A253515.P8267876629659372645

namespace A253515

/-- `A074294(A007607(A053187(n+1))-n)` -/
def P8267876629659372645.Spec : Prop :=
  ∀ n, P8267876629659372645.a n = A253515 (n + 1)

end A253515

/-! ## A253515.P13466079138222863063

`A004736(round(sqrt(n+1))²+n+1)`
-/

namespace A253515.P13466079138222863063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2 + (n + 1 : ℤ)).toNat

end

end A253515.P13466079138222863063

namespace A253515

/-- `A004736(round(sqrt(n+1))²+n+1)` -/
def P13466079138222863063.Spec : Prop :=
  ∀ n, P13466079138222863063.a n = A253515 (n + 1)

end A253515

/-! ## A253515.P13544149360397898532

`A368941(A179753(n+1)²)`
-/

namespace A253515.P13544149360397898532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368941 (A179753 (n + 1) ^ 2).toNat

end

end A253515.P13544149360397898532

namespace A253515

/-- `A368941(A179753(n+1)²)` -/
def P13544149360397898532.Spec : Prop :=
  ∀ n, P13544149360397898532.a n = A253515 (n + 1)

end A253515

/-! ## A253515.P1166953680746902655

`A194195(2*A064788(n+1))`
-/

namespace A253515.P1166953680746902655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194195 (2 * A064788 (n + 1)).toNat

end

end A253515.P1166953680746902655

namespace A253515

/-- `A194195(2*A064788(n+1))` -/
def P1166953680746902655.Spec : Prop :=
  ∀ n, P1166953680746902655.a n = A253515 (n + 1)

end A253515

/-! ## A253515.P17112799313730923198

`A194195(A064788(n+1)+A064788(n+1))`
-/

namespace A253515.P17112799313730923198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194195 (A064788 (n + 1) + A064788 (n + 1)).toNat

end

end A253515.P17112799313730923198

namespace A253515

/-- `A194195(A064788(n+1)+A064788(n+1))` -/
def P17112799313730923198.Spec : Prop :=
  ∀ n, P17112799313730923198.a n = A253515 (n + 1)

end A253515

/-! ## A253515.P6731833747494200943

`A368941(A179753(n+1)*A179753(n+1))`
-/

namespace A253515.P6731833747494200943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368941 (A179753 (n + 1) * A179753 (n + 1)).toNat

end

end A253515.P6731833747494200943

namespace A253515

/-- `A368941(A179753(n+1)*A179753(n+1))` -/
def P6731833747494200943.Spec : Prop :=
  ∀ n, P6731833747494200943.a n = A253515 (n + 1)

end A253515

/-! ## A253515.P3224853151242089636

`A256243(4*n+1)/2`
-/

namespace A253515.P3224853151242089636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256243 (4 * n + 1) : ℚ) / 2

end

end A253515.P3224853151242089636

namespace A253515

/-- `A256243(4*n+1)/2` -/
def P3224853151242089636.Spec : Prop :=
  ∀ n, P3224853151242089636.a n = (A253515 (n + 1) : ℚ)

end A253515

/-! ## A253515.P12781480373115793996

`A074294(A179753(n+1)+A002061(n))`
-/

namespace A253515.P12781480373115793996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074294 (A179753 (n + 1) + A002061 n).toNat

end

end A253515.P12781480373115793996

namespace A253515

/-- `A074294(A179753(n+1)+A002061(n))` -/
def P12781480373115793996.Spec : Prop :=
  ∀ n, P12781480373115793996.a n = A253515 (n + 1)

end A253515

/-!
# A253516: Number of (n+1)X(n+1) 0..2 arrays with every 2X2 subblock diagonal minimum minus antidiagonal minimum nondecreasing horizontally and diagonal maximum minus antidiagonal maximum nondecreasing vertically.

The programs for A253516, there is no canonical definition to state claims against.
-/

/-! ## A253516.P13654199921008921500

`A253524(∑[4*n]+1)`
-/

namespace A253516.P13654199921008921500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253524 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253516.P13654199921008921500

/-! ## A253516.P2368026611427554995

`A253524(A001844(n))+char[11]`
-/

namespace A253516.P2368026611427554995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253524 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A253516.P2368026611427554995

/-! ## A253516.P17531283489491211878

`record[A003982(n)*A253524(n+1)]`
-/

namespace A253516.P17531283489491211878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A253524 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253516.P17531283489491211878

/-! ## A253516.P4678277908605203302

`record[gcd(A003987(n), A253524(n+1))]`
-/

namespace A253516.P4678277908605203302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A253524 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253516.P4678277908605203302

/-! ## A253516.P2603826451803705546

`record[A077606(n+1)*A253524(n+1)]`
-/

namespace A253516.P2603826451803705546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077606 (n + 1) * A253524 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253516.P2603826451803705546

/-!
# A253517: Number of (n+1) X (1+1) 0..2 arrays with every 2 X 2 subblock diagonal minimum minus antidiagonal minimum nondecreasing horizontally and diagonal maximum minus antidiagonal maximum nondecreasing vertically.

The programs for A253517, there is no canonical definition to state claims against.
-/

/-! ## A253517.P9080006311849250818

`A253524(∑[n]+1)`
-/

namespace A253517.P9080006311849250818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253524 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253517.P9080006311849250818

/-! ## A253517.P4500927349246960272

`record[A253524(A047216(n+1))]`
-/

namespace A253517.P4500927349246960272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253524 (A047216 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253517.P4500927349246960272

/-! ## A253517.P5505820513048187977

`record[A253524(A056534(n+1))]`
-/

namespace A253517.P5505820513048187977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253524 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253517.P5505820513048187977

/-! ## A253517.P16434853396239300777

`record[A253524(A226387(n+1))]`
-/

namespace A253517.P16434853396239300777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253524 (A226387 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253517.P16434853396239300777

/-! ## A253517.P1148984327663677170

`record[A253524(A254052(n+1))]`
-/

namespace A253517.P1148984327663677170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253524 (A254052 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253517.P1148984327663677170

/-!
# A253518: Number of (n+1)X(2+1) 0..2 arrays with every 2X2 subblock diagonal minimum minus antidiagonal minimum nondecreasing horizontally and diagonal maximum minus antidiagonal maximum nondecreasing vertically.

The programs for A253518, there is no canonical definition to state claims against.
-/

/-! ## A253518.P1231186391703638531

`A253524(∑[n+1]+2)`
-/

namespace A253518.P1231186391703638531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253524 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A253518.P1231186391703638531

/-! ## A253518.P9125955584259162200

`record[A253524(A133263(abs(1-n)))]`
-/

namespace A253518.P9125955584259162200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253524 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253518.P9125955584259162200

/-! ## A253518.P3430063323955363439

`A253524(A167499(n)-3)+char[34]`
-/

namespace A253518.P3430063323955363439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  34

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253524 (A167499 n - 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A253518.P3430063323955363439

/-! ## A253518.P277435198178971497

`record[gcd(A002262(n), A253524(n+2))]`
-/

namespace A253518.P277435198178971497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A253524 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253518.P277435198178971497

/-! ## A253518.P11704543455830182145

`record[A010054(n+1)*A253524(n+3)]`
-/

namespace A253518.P11704543455830182145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) * A253524 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253518.P11704543455830182145

/-!
# A253519: Number of (n+1)X(3+1) 0..2 arrays with every 2X2 subblock diagonal minimum minus antidiagonal minimum nondecreasing horizontally and diagonal maximum minus antidiagonal maximum nondecreasing vertically.

The programs for A253519, there is no canonical definition to state claims against.
-/

/-! ## A253519.P10981772028775472157

`A253524(∑[n+2]+4)`
-/

namespace A253519.P10981772028775472157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253524 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A253519.P10981772028775472157

/-! ## A253519.P11869647916668499948

`A253524(A167614(n+1))+char[20]`
-/

namespace A253519.P11869647916668499948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253524 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A253519.P11869647916668499948

/-! ## A253519.P1131701248791533229

`or(char[2], A253524(A000124(n+2)+2))`
-/

namespace A253519.P1131701248791533229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A253524 (A000124 (n + 2) + 2).toNat)

end

end A253519.P1131701248791533229

/-! ## A253519.P420898383094938914

`gcd(A185284(n), A253524(A167614(n+1)))`
-/

namespace A253519.P420898383094938914
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185284 n) (A253524 (A167614 (n + 1)).toNat)

end

end A253519.P420898383094938914

/-! ## A253519.P11262001448876441449

`lcm(A020985(n), A253524(A167614(n+1)))`
-/

namespace A253519.P11262001448876441449
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A253524 (A167614 (n + 1)).toNat)

end

end A253519.P11262001448876441449

/-!
# A253520: Number of (n+1)X(4+1) 0..2 arrays with every 2X2 subblock diagonal minimum minus antidiagonal minimum nondecreasing horizontally and diagonal maximum minus antidiagonal maximum nondecreasing vertically.

The programs for A253520, there is no canonical definition to state claims against.
-/

/-! ## A253520.P16359818969299155372

`A253524(∑[n+3]+7)`
-/

namespace A253520.P16359818969299155372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253524 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A253520.P16359818969299155372

/-! ## A253520.P10372927106061476281

`xor(1, xor(1, A253524(A052905(n)+9)))`
-/

namespace A253520.P10372927106061476281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A253524 (A052905 n + 9).toNat))

end

end A253520.P10372927106061476281

/-! ## A253520.P106885373028933341

`A253524(A167614(n+2)+1)+char[19]`
-/

namespace A253520.P106885373028933341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253524 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A253520.P106885373028933341

/-! ## A253520.P406559606513583291

`A007318(C(2, n))*A253524(A052905(n)+9)`
-/

namespace A253520.P406559606513583291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A253524 (A052905 n + 9).toNat

end

end A253520.P406559606513583291

/-! ## A253520.P13408038555519133749

`A007318(floor(n/10))*A253524(A052905(n)+9)`
-/

namespace A253520.P13408038555519133749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊(n : ℚ) / 10⌋.toNat * A253524 (A052905 n + 9).toNat

end

end A253520.P13408038555519133749

/-!
# A253521: Number of (n+1)X(5+1) 0..2 arrays with every 2X2 subblock diagonal minimum minus antidiagonal minimum nondecreasing horizontally and diagonal maximum minus antidiagonal maximum nondecreasing vertically.

The programs for A253521, there is no canonical definition to state claims against.
-/

/-! ## A253521.P17919288792627734255

`A253524(∑[n+4]+11)`
-/

namespace A253521.P17919288792627734255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253524 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A253521.P17919288792627734255

/-! ## A253521.P3379887628879435091

`A184303(n+1)*A253524(A056000(n)+15)`
-/

namespace A253521.P3379887628879435091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (n + 1) * A253524 (A056000 n + 15).toNat

end

end A253521.P3379887628879435091

/-! ## A253521.P6965325680606203119

`A184303(n+1)*A253524(A374005(n+1))`
-/

namespace A253521.P6965325680606203119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (n + 1) * A253524 (A374005 (n + 1)).toNat

end

end A253521.P6965325680606203119

/-! ## A253521.P2794697487010134142

`or(A253524(A374005(n+1)), A369461(n+1))`
-/

namespace A253521.P2794697487010134142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A253524 (A374005 (n + 1)).toNat) (A369461 (n + 1))

end

end A253521.P2794697487010134142

/-!
# A253522: Number of (n+1)X(6+1) 0..2 arrays with every 2X2 subblock diagonal minimum minus antidiagonal minimum nondecreasing horizontally and diagonal maximum minus antidiagonal maximum nondecreasing vertically.

The programs for A253522, there is no canonical definition to state claims against.
-/

/-! ## A253522.P5692734082240033150

`A253524(A166136(n+4))`
-/

namespace A253522.P5692734082240033150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253524 (A166136 (n + 4)).toNat

end

end A253522.P5692734082240033150

/-! ## A253522.P8119300777717009703

`A253524(A056115(n)+21)`
-/

namespace A253522.P8119300777717009703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253524 (A056115 n + 21).toNat

end

end A253522.P8119300777717009703

/-! ## A253522.P4952775232078208506

`A253524(A167499(n+4)+1)`
-/

namespace A253522.P4952775232078208506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253524 (A167499 (n + 4) + 1).toNat

end

end A253522.P4952775232078208506

/-! ## A253522.P4908259140511601919

`A253524(A167614(n+4)+3)`
-/

namespace A253522.P4908259140511601919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253524 (A167614 (n + 4) + 3).toNat

end

end A253522.P4908259140511601919

/-! ## A253522.P10558402712797583659

`A253524(A000124(n+5)+5)`
-/

namespace A253522.P10558402712797583659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253524 (A000124 (n + 5) + 5).toNat

end

end A253522.P10558402712797583659

/-!
# A253523: Number of (n+1)X(7+1) 0..2 arrays with every 2X2 subblock diagonal minimum minus antidiagonal minimum nondecreasing horizontally and diagonal maximum minus antidiagonal maximum nondecreasing vertically.

The programs for A253523, there is no canonical definition to state claims against.
-/

/-! ## A253523.P15481067753126872304

`A253524(eq[11, A066657(n)])`
-/

namespace A253523.P15481067753126872304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253524 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253523.P15481067753126872304

/-! ## A253523.P9893412833885523339

`A253524(A166136(n+5)+1)`
-/

namespace A253523.P9893412833885523339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253524 (A166136 (n + 5) + 1).toNat

end

end A253523.P9893412833885523339

/-! ## A253523.P9508967761037354083

`A253524(A167499(n+5)+2)`
-/

namespace A253523.P9508967761037354083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253524 (A167499 (n + 5) + 2).toNat

end

end A253523.P9508967761037354083

/-! ## A253523.P13216017400623771407

`A253524(A000124(n+6)+6)`
-/

namespace A253523.P13216017400623771407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253524 (A000124 (n + 6) + 6).toNat

end

end A253523.P13216017400623771407

/-! ## A253523.P13061718729038661931

`A253524(A000096(n+5)+8)`
-/

namespace A253523.P13061718729038661931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253524 (A000096 (n + 5) + 8).toNat

end

end A253523.P13061718729038661931

/-!
# A253525: Number of (n+1)X(n+1) 0..2 arrays with every 2X2 subblock antidiagonal maximum minus diagonal minimum nondecreasing horizontally and diagonal maximum minus antidiagonal minimum nondecreasing vertically.

The programs for A253525, there is no canonical definition to state claims against.
-/

/-! ## A253525.P3928595110814335124

`A253533(∑[4*n]+1)`
-/

namespace A253525.P3928595110814335124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253533 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253525.P3928595110814335124

/-! ## A253525.P14131668277279137311

`lcm((-1)^n, A253533(A001844(n)))`
-/

namespace A253525.P14131668277279137311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A253533 (A001844 n).toNat)

end

end A253525.P14131668277279137311

/-! ## A253525.P14872176198504084520

`record[A003982(n)*A253533(n+1)]`
-/

namespace A253525.P14872176198504084520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A253533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253525.P14872176198504084520

/-! ## A253525.P15984627692258345103

`record[root(A253533(n+1), A331886(n))]`
-/

namespace A253525.P15984627692258345103
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A253533 (n + 1) : ℝ) ^ (1 / (A331886 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253525.P15984627692258345103

/-! ## A253525.P15208893399137790071

`record[gcd(A003987(n), A253533(n+1))]`
-/

namespace A253525.P15208893399137790071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A253533 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253525.P15208893399137790071

/-!
# A253526: Number of (n+1) X (1+1) 0..2 arrays with every 2 X 2 subblock antidiagonal maximum minus diagonal minimum nondecreasing horizontally and diagonal maximum minus antidiagonal minimum nondecreasing vertically.

The programs for A253526, there is no canonical definition to state claims against.
-/

/-! ## A253526.P14508231293995786882

`A253533(∑[n]+1)`
-/

namespace A253526.P14508231293995786882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253533 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253526.P14508231293995786882

/-! ## A253526.P1635622905644336891

`or(1, A253533(A000124(n)))`
-/

namespace A253526.P1635622905644336891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A253533 (A000124 n).toNat)

end

end A253526.P1635622905644336891

/-! ## A253526.P7889647119456361066

`record[A253533(n+1)/A007318(n)]`
-/

namespace A253526.P7889647119456361066
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253533 (n + 1) : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253526.P7889647119456361066

/-! ## A253526.P6296240886800277724

`record[gcd(A002262(n), A253533(n+1))]`
-/

namespace A253526.P6296240886800277724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A253533 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253526.P6296240886800277724

/-! ## A253526.P8356617060023784738

`record[A253533(n+1)/A002260(n+1)]`
-/

namespace A253526.P8356617060023784738
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253533 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253526.P8356617060023784738

/-!
# A253527: Number of (n+1)X(2+1) 0..2 arrays with every 2X2 subblock antidiagonal maximum minus diagonal minimum nondecreasing horizontally and diagonal maximum minus antidiagonal minimum nondecreasing vertically.

The programs for A253527, there is no canonical definition to state claims against.
-/

/-! ## A253527.P404080977635454165

`A253533(∑[n+1]+2)`
-/

namespace A253527.P404080977635454165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253533 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A253527.P404080977635454165

/-! ## A253527.P11222509470332526558

`record[gcd(A002262(n), A253533(n+2))]`
-/

namespace A253527.P11222509470332526558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A253533 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253527.P11222509470332526558

/-! ## A253527.P1464259814286971092

`A253533(A000096(n+1))+A163537(3*n+1)`
-/

namespace A253527.P1464259814286971092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253533 (A000096 (n + 1)).toNat + A163537 (3 * n + 1)

end

end A253527.P1464259814286971092

/-!
# A253528: Number of (n+1)X(3+1) 0..2 arrays with every 2X2 subblock antidiagonal maximum minus diagonal minimum nondecreasing horizontally and diagonal maximum minus antidiagonal minimum nondecreasing vertically.

The programs for A253528, there is no canonical definition to state claims against.
-/

/-! ## A253528.P9162848427024269146

`A253533(∑[n+2]+4)`
-/

namespace A253528.P9162848427024269146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253533 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A253528.P9162848427024269146

/-! ## A253528.P5128363070838901370

`A253533(A167614(n+1))+char[27]`
-/

namespace A253528.P5128363070838901370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253533 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A253528.P5128363070838901370

/-! ## A253528.P12647004133687694216

`A000034(2*n)*A253533(A167614(n+1))`
-/

namespace A253528.P12647004133687694216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A253533 (A167614 (n + 1)).toNat

end

end A253528.P12647004133687694216

/-! ## A253528.P10869277094570219667

`A253533(A167614(n+1))%A253519(n+1)`
-/

namespace A253528.P10869277094570219667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253533 (A167614 (n + 1)).toNat) (A253519 (n + 1))

end

end A253528.P10869277094570219667

/-! ## A253528.P14342857527589578873

`lcm(A008836(n+1), A253533(A167614(n+1)))`
-/

namespace A253528.P14342857527589578873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A253533 (A167614 (n + 1)).toNat)

end

end A253528.P14342857527589578873

/-!
# A253529: Number of (n+1)X(4+1) 0..2 arrays with every 2X2 subblock antidiagonal maximum minus diagonal minimum nondecreasing horizontally and diagonal maximum minus antidiagonal minimum nondecreasing vertically.

The programs for A253529, there is no canonical definition to state claims against.
-/

/-! ## A253529.P935809925916124124

`A253533(∑[n+2]+n+8)`
-/

namespace A253529.P935809925916124124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253533 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 8))

end

end A253529.P935809925916124124

/-! ## A253529.P3227764196774648311

`or(A000007(n), A253533(A055999(n)+10))`
-/

namespace A253529.P3227764196774648311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A253533 (A055999 n + 10).toNat)

end

end A253529.P3227764196774648311

/-! ## A253529.P8426256700548358477

`char[A025856(n)]*A253533(A055999(n)+10)`
-/

namespace A253529.P8426256700548358477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025856 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A253533 (A055999 n + 10).toNat

end

end A253529.P8426256700548358477

/-! ## A253529.P15112455318581292832

`A000108(C(2, n+2))*A253533(A055999(n)+10)`
-/

namespace A253529.P15112455318581292832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A253533 (A055999 n + 10).toNat

end

end A253529.P15112455318581292832

/-!
# A253530: Number of (n+1)X(5+1) 0..2 arrays with every 2X2 subblock antidiagonal maximum minus diagonal minimum nondecreasing horizontally and diagonal maximum minus antidiagonal minimum nondecreasing vertically.

The programs for A253530, there is no canonical definition to state claims against.
-/

/-! ## A253530.P2741420781321347900

`A253533(A374005(n+1))`
-/

namespace A253530.P2741420781321347900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253533 (A374005 (n + 1)).toNat

end

end A253530.P2741420781321347900

/-! ## A253530.P2227805393539682950

`A253533(A167499(n+3))`
-/

namespace A253530.P2227805393539682950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253533 (A167499 (n + 3)).toNat

end

end A253530.P2227805393539682950

/-! ## A253530.P3127643184309493008

`A253533(A155212(n)+13)`
-/

namespace A253530.P3127643184309493008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253533 (A155212 n + 13).toNat

end

end A253530.P3127643184309493008

/-! ## A253530.P13848406546465963550

`A253533(A056000(n)+15)`
-/

namespace A253530.P13848406546465963550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253533 (A056000 n + 15).toNat

end

end A253530.P13848406546465963550

/-! ## A253530.P14507019761261813810

`A253533(A000124(n+4)+4)`
-/

namespace A253530.P14507019761261813810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253533 (A000124 (n + 4) + 4).toNat

end

end A253530.P14507019761261813810

/-!
# A253531: Number of (n+1)X(6+1) 0..2 arrays with every 2X2 subblock antidiagonal maximum minus diagonal minimum nondecreasing horizontally and diagonal maximum minus antidiagonal minimum nondecreasing vertically.

The programs for A253531, there is no canonical definition to state claims against.
-/

/-! ## A253531.P9083711727223550769

`A253533(A374007(n+1))`
-/

namespace A253531.P9083711727223550769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253533 (A374007 (n + 1)).toNat

end

end A253531.P9083711727223550769

/-! ## A253531.P14200415023346262028

`A253533(A166136(n+4))`
-/

namespace A253531.P14200415023346262028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253533 (A166136 (n + 4)).toNat

end

end A253531.P14200415023346262028

/-! ## A253531.P15535040174938719724

`A253533(A000124(n+5)+5)`
-/

namespace A253531.P15535040174938719724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253533 (A000124 (n + 5) + 5).toNat

end

end A253531.P15535040174938719724

/-! ## A253531.P10732316120935145419

`A253533(A000217(n+5)+6)`
-/

namespace A253531.P10732316120935145419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253533 (A000217 (n + 5) + 6).toNat

end

end A253531.P10732316120935145419

/-! ## A253531.P10163396586553297114

`A253533(A027379(n+3)+9)`
-/

namespace A253531.P10163396586553297114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253533 (A027379 (n + 3) + 9).toNat

end

end A253531.P10163396586553297114

/-!
# A253532: Number of (n+1)X(7+1) 0..2 arrays with every 2X2 subblock antidiagonal maximum minus diagonal minimum nondecreasing horizontally and diagonal maximum minus antidiagonal minimum nondecreasing vertically.

The programs for A253532, there is no canonical definition to state claims against.
-/

/-! ## A253532.P3393001691866214727

`A253533(A374008(n+1))`
-/

namespace A253532.P3393001691866214727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253533 (A374008 (n + 1)).toNat

end

end A253532.P3393001691866214727

/-! ## A253532.P14527169323964075735

`A253533(A167487(n+5))`
-/

namespace A253532.P14527169323964075735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253533 (A167487 (n + 5)).toNat

end

end A253532.P14527169323964075735

/-! ## A253532.P11940087815178464923

`A253533(A167614(n+5)+4)`
-/

namespace A253532.P11940087815178464923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253533 (A167614 (n + 5) + 4).toNat

end

end A253532.P11940087815178464923

/-! ## A253532.P4012451677144933918

`A253533(A000124(n+6)+6)`
-/

namespace A253532.P4012451677144933918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253533 (A000124 (n + 6) + 6).toNat

end

end A253532.P4012451677144933918

/-! ## A253532.P17510445314504580511

`A253533(A000217(n+6)+7)`
-/

namespace A253532.P17510445314504580511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253533 (A000217 (n + 6) + 7).toNat

end

end A253532.P17510445314504580511

/-!
# A253536: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal maximum minus antidiagonal minimum nonincreasing horizontally and nondecreasing vertically.

The programs for A253536, there is no canonical definition to state claims against.
-/

/-! ## A253536.P471334319074534386

`A253544((n+1)²+n²)`
-/

namespace A253536.P471334319074534386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253544 ((n + 1) ^ 2 + n ^ 2)

end

end A253536.P471334319074534386

/-!
# A253537: Number of (n+2) X (1+2) 0..1 arrays with every 3 X 3 subblock diagonal maximum minus antidiagonal minimum nonincreasing horizontally and nondecreasing vertically.

The programs for A253537, there is no canonical definition to state claims against.
-/

/-! ## A253537.P1215975168395018688

`A253871(∑[n]+1)`
-/

namespace A253537.P1215975168395018688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253871 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253537.P1215975168395018688

/-! ## A253537.P10432697112230787356

`lcm(2, A253871(A000124(n)))`
-/

namespace A253537.P10432697112230787356
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A253871 (A000124 n).toNat)

end

end A253537.P10432697112230787356

/-! ## A253537.P8307924312906612949

`record[A010054(n)*A253871(n+1)]`
-/

namespace A253537.P8307924312906612949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A253871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253537.P8307924312906612949

/-! ## A253537.P7132851274371666727

`record[A103451(n)*A253871(n+1)]`
-/

namespace A253537.P7132851274371666727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A253871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253537.P7132851274371666727

/-! ## A253537.P7211515944118203379

`record[gcd(A002262(n), A253871(n+1))]`
-/

namespace A253537.P7211515944118203379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A253871 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253537.P7211515944118203379

/-!
# A253538: Number of (n+2) X (2+2) 0..1 arrays with every 3 X 3 subblock diagonal maximum minus antidiagonal minimum nonincreasing horizontally and nondecreasing vertically.

The programs for A253538, there is no canonical definition to state claims against.
-/

/-! ## A253538.P3536943046804621005

`A253544(∑[n+1]+2)`
-/

namespace A253538.P3536943046804621005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253544 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A253538.P3536943046804621005

/-! ## A253538.P11155956436207664387

`A253544(A000217(n+1)+2)%A253539(n+1)`
-/

namespace A253538.P11155956436207664387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253544 (A000217 (n + 1) + 2).toNat) (A253539 (n + 1))

end

end A253538.P11155956436207664387

/-! ## A253538.P13801860649227632127

`A007318(C(2, n))*A253544(A000217(n+1)+2)`
-/

namespace A253538.P13801860649227632127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A253544 (A000217 (n + 1) + 2).toNat

end

end A253538.P13801860649227632127

/-! ## A253538.P16241711446344694228

`A253544(A000217(n+1)+2)+C(n, A000041(2*n))`
-/

namespace A253538.P16241711446344694228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253544 (A000217 (n + 1) + 2).toNat + (Nat.choose n (A000041 (2 * n)).toNat : ℤ)

end

end A253538.P16241711446344694228

/-! ## A253538.P461907383278539096

`A001222(A002476(n+1))*A253544(A000217(n+1)+2)`
-/

namespace A253538.P461907383278539096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002476 (n + 1)).toNat * A253544 (A000217 (n + 1) + 2).toNat

end

end A253538.P461907383278539096

/-!
# A253539: Number of (n+2)X(3+2) 0..1 arrays with every 3X3 subblock diagonal maximum minus antidiagonal minimum nonincreasing horizontally and nondecreasing vertically.

The programs for A253539, there is no canonical definition to state claims against.
-/

/-! ## A253539.P1305123074422975751

`A253544(∑[n+2]+4)`
-/

namespace A253539.P1305123074422975751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253544 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A253539.P1305123074422975751

/-! ## A253539.P2137865224768422063

`lcm(2, A253544(A167614(n+1)))`
-/

namespace A253539.P2137865224768422063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A253544 (A167614 (n + 1)).toNat)

end

end A253539.P2137865224768422063

/-! ## A253539.P17701257119006094446

`A253544(A167614(n+1))+A185255(n)`
-/

namespace A253539.P17701257119006094446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253544 (A167614 (n + 1)).toNat + A185255 n

end

end A253539.P17701257119006094446

/-! ## A253539.P11502723872540721429

`A253544(A167614(n+1))+A185284(n)`
-/

namespace A253539.P11502723872540721429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253544 (A167614 (n + 1)).toNat + A185284 n

end

end A253539.P11502723872540721429

/-! ## A253539.P2745891875320538442

`A175782(n)*A253544(A167614(n+1))`
-/

namespace A253539.P2745891875320538442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175782 n * A253544 (A167614 (n + 1)).toNat

end

end A253539.P2745891875320538442

/-!
# A253540: Number of (n+2)X(4+2) 0..1 arrays with every 3X3 subblock diagonal maximum minus antidiagonal minimum nonincreasing horizontally and nondecreasing vertically.

The programs for A253540, there is no canonical definition to state claims against.
-/

/-! ## A253540.P1291405254363411711

`A253544(A141214(n)+7)`
-/

namespace A253540.P1291405254363411711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253544 (A141214 n + 7).toNat

end

end A253540.P1291405254363411711

/-! ## A253540.P11449074425923945288

`A253544(A052905(n)+9)`
-/

namespace A253540.P11449074425923945288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253544 (A052905 n + 9).toNat

end

end A253540.P11449074425923945288

/-! ## A253540.P5457517106980006164

`A253544(A167614(n+2)+1)`
-/

namespace A253540.P5457517106980006164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253544 (A167614 (n + 2) + 1).toNat

end

end A253540.P5457517106980006164

/-! ## A253540.P7275581641591096340

`A253544(A141214(n+1))`
-/

namespace A253540.P7275581641591096340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253544 (A141214 (n + 1)).toNat

end

end A253540.P7275581641591096340

/-! ## A253540.P2041518526831211487

`A253544(A374004(n+1))`
-/

namespace A253540.P2041518526831211487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253544 (A374004 (n + 1)).toNat

end

end A253540.P2041518526831211487

/-!
# A253541: Number of (n+2)X(5+2) 0..1 arrays with every 3X3 subblock diagonal maximum minus antidiagonal minimum nonincreasing horizontally and nondecreasing vertically.

The programs for A253541, there is no canonical definition to state claims against.
-/

/-! ## A253541.P15672299467414425319

`A253544(A167499(n+3))`
-/

namespace A253541.P15672299467414425319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253544 (A167499 (n + 3)).toNat

end

end A253541.P15672299467414425319

/-! ## A253541.P9295211509164351096

`A253544(A257075(n)²+A155212(n)+12)`
-/

namespace A253541.P9295211509164351096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253544 (A257075 n ^ 2 + (A155212 n + 12)).toNat

end

end A253541.P9295211509164351096

/-! ## A253541.P13088598188846176478

`A253544(A193518(n+1)+A155212(n)+12)`
-/

namespace A253541.P13088598188846176478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253544 (A193518 (n + 1) + (A155212 n + 12)).toNat

end

end A253541.P13088598188846176478

/-! ## A253541.P5000490812265299236

`A253544(A374005(n+1))`
-/

namespace A253541.P5000490812265299236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253544 (A374005 (n + 1)).toNat

end

end A253541.P5000490812265299236

/-! ## A253541.P11295924067241153821

`A253544(A046691(n+3))`
-/

namespace A253541.P11295924067241153821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253544 (A046691 (n + 3)).toNat

end

end A253541.P11295924067241153821

/-!
# A253542: Number of (n+2)X(6+2) 0..1 arrays with every 3X3 subblock diagonal maximum minus antidiagonal minimum nonincreasing horizontally and nondecreasing vertically.

The programs for A253542, there is no canonical definition to state claims against.
-/

/-! ## A253542.P6675536800446086062

`A253544(eq[6, A025581(n)]-2*n)`
-/

namespace A253542.P6675536800446086062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253544 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 2 * n)

end

end A253542.P6675536800446086062

/-! ## A253542.P1612063513434443628

`A253544(A374007(n+1))`
-/

namespace A253542.P1612063513434443628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253544 (A374007 (n + 1)).toNat

end

end A253542.P1612063513434443628

/-! ## A253542.P14753775727518726799

`A253544(A052905(n+3))`
-/

namespace A253542.P14753775727518726799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253544 (A052905 (n + 3)).toNat

end

end A253542.P14753775727518726799

/-!
# A253543: Number of (n+2) X (7+2) 0..1 arrays with every 3 X 3 subblock diagonal maximum minus antidiagonal minimum nonincreasing horizontally and nondecreasing vertically.

The programs for A253543, there is no canonical definition to state claims against.
-/

/-! ## A253543.P9090115296610015302

`A253544(A145018(n+7)+3)`
-/

namespace A253543.P9090115296610015302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253544 (A145018 (n + 7) + 3).toNat

end

end A253543.P9090115296610015302

/-! ## A253543.P5760301243798203384

`A253544(A374008(n+1))`
-/

namespace A253543.P5760301243798203384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253544 (A374008 (n + 1)).toNat

end

end A253543.P5760301243798203384

/-! ## A253543.P8278464448870523701

`A253544(A055999(n+4))`
-/

namespace A253543.P8278464448870523701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253544 (A055999 (n + 4)).toNat

end

end A253543.P8278464448870523701

/-! ## A253543.P5404540137889535907

`A253544(eq[6, A025581(n)]+1)`
-/

namespace A253543.P5404540137889535907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253544 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A253543.P5404540137889535907

/-!
# A253546: Centered hexagonal numbers (A003215) which are also centered heptagonal numbers (A069099).

The programs for A253546, there is no canonical definition to state claims against.
-/

/-! ## A253546.P4245349485009370592

`ceil(A097308(2*n+1)/16)`
-/

namespace A253546.P4245349485009370592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A097308 (2 * n + 1) : ℚ) / 16⌉

end

end A253546.P4245349485009370592

/-!
# A253547: Total number of star-shaped dodecagons appearing in a variant of hexagon expansion after n iterations.

The programs for A253547, the canonical program `A253547.P11953941641267790373` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253547 has offset 1).

The definition of A253547 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253547.P5318553582448256633

`ogf((x^3+x^4+3x^5-4x^7+2x^8)/(1-2x+2x^3-x^4))`
-/

namespace A253547.P5318553582448256633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 1, 1, 3, 0, -4, 2] [1, -2, 0, 2, -1] n

end

end A253547.P5318553582448256633

namespace A253547

/-- `ogf((x^3+x^4+3x^5-4x^7+2x^8)/(1-2x+2x^3-x^4))` -/
def P5318553582448256633.Spec : Prop :=
  ∀ n, P5318553582448256633.a n = A253547 (n + 1)

end A253547

/-! ## A253547.P11953941641267790373

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=3, a(5)=9, a(6)=16, a(7)=23, a(8)=33`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A253547

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P11953941641267790373.Spec : Prop :=
  ∀ n, P11953941641267790373.a n = A253547 (n + 1)

theorem P11953941641267790373.correct : P11953941641267790373.Spec := by
  intro n
  simp only [A253547, Nat.add_sub_cancel]

end A253547

/-! ## A253547.P5429719466687355795

`∑[∑[A359270(A001168(n))]]`
-/

namespace A253547.P5429719466687355795
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359270 (A001168 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253547.P5429719466687355795

namespace A253547

/-- `∑[∑[A359270(A001168(n))]]` -/
def P5429719466687355795.Spec : Prop :=
  ∀ n, P5429719466687355795.a n = A253547 (n + 1)

end A253547

/-! ## A253547.P5477244621104560571

`∑[∑[A185043(3*n+2)%A006047(n)]]`
-/

namespace A253547.P5477244621104560571
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185043 (3 * n + 2)) (A006047 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253547.P5477244621104560571

namespace A253547

/-- `∑[∑[A185043(3*n+2)%A006047(n)]]` -/
def P5477244621104560571.Spec : Prop :=
  ∀ n, P5477244621104560571.a n = A253547 (n + 1)

end A253547

/-! ## A253547.P14498150100655332190

`A284556(A149172(n))`
-/

namespace A253547.P14498150100655332190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284556 (A149172 n).toNat

end

end A253547.P14498150100655332190

namespace A253547

/-- `A284556(A149172(n))` -/
def P14498150100655332190.Spec : Prop :=
  ∀ n, P14498150100655332190.a n = A253547 (n + 1)

end A253547

/-!
# A253548: Minimal width k for a paper tape such that n symbols can be encoded on a k-hole paper tape so that a used paper tape can always be reused at least once.

The programs for A253548, there is no canonical definition to state claims against.
-/

/-! ## A253548.P7543379647464076146

`round(log(A283983(n)+A264619(n)))`
-/

namespace A253548.P7543379647464076146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A283983 n + A264619 n : ℝ))

end

end A253548.P7543379647464076146

/-! ## A253548.P7643623997288411800

`∑[char[A035001(A330722(n+1))]]+1`
-/

namespace A253548.P7643623997288411800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035001 (A330722 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A253548.P7643623997288411800

/-! ## A253548.P13689023212358674658

`∑[char[A035001(A349152(n+1))]]+1`
-/

namespace A253548.P13689023212358674658
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035001 (A349152 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A253548.P13689023212358674658

/-! ## A253548.P4512150672288103050

`∑[char[A035001(A351596(n+1))]]+1`
-/

namespace A253548.P4512150672288103050
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035001 (A351596 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A253548.P4512150672288103050

/-! ## A253548.P2921607476841484976

`A000193(A283983(n)+A264619(n))`
-/

namespace A253548.P2921607476841484976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000193 (A283983 n + A264619 n).toNat

end

end A253548.P2921607476841484976

/-! ## A253548.P13280605990675639709

`A095791(A004957(n)-A292601(n))`
-/

namespace A253548.P13280605990675639709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095791 (A004957 n - A292601 n).toNat

end

end A253548.P13280605990675639709

/-! ## A253548.P7194408185952854199

`A095791(A026352(n)-A292601(n))`
-/

namespace A253548.P7194408185952854199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095791 (A026352 n - A292601 n).toNat

end

end A253548.P7194408185952854199

/-!
# A253550: Shift one instance of the largest prime one step towards larger primes: a(1) = 1, for n>1: a(n) = (n / prime(g)) * prime(g+1), where g = A061395(n), index of the greatest prime dividing n.

The programs for A253550, the canonical program `A253550.P913024134908634237` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253550 has offset 1).

The definition of A253550 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253550.P913024134908634237

`A119416(n+1)/A111089(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A253550

/-- `A119416(n+1)/A111089(n+1)` -/
def P913024134908634237.Spec : Prop :=
  ∀ n, P913024134908634237.a n = (A253550 (n + 1) : ℚ)

end A253550

/-! ## A253550.P2284977944913310457

`A119416(n+1)/A006530(2*(n+1))`
-/

namespace A253550.P2284977944913310457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119416 (n + 1) : ℚ) / (A006530 (2 * (n + 1)) : ℚ)

end

end A253550.P2284977944913310457

namespace A253550

/-- `A119416(n+1)/A006530(2*(n+1))` -/
def P2284977944913310457.Spec : Prop :=
  ∀ n, P2284977944913310457.a n = (A253550 (n + 1) : ℚ)

end A253550

/-! ## A253550.P1156777049039441538

`A003961(A006530(n+1))*A052126(n+1)`
-/

namespace A253550.P1156777049039441538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A006530 (n + 1)).toNat * A052126 (n + 1)

end

end A253550.P1156777049039441538

namespace A253550

/-- `A003961(A006530(n+1))*A052126(n+1)` -/
def P1156777049039441538.Spec : Prop :=
  ∀ n, P1156777049039441538.a n = A253550 (n + 1)

end A253550

/-! ## A253550.P2581003965351899482

`A119416(n+1)/A117366(A117364(n+1))`
-/

namespace A253550.P2581003965351899482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119416 (n + 1) : ℚ) / (A117366 (A117364 (n + 1)).toNat : ℚ)

end

end A253550.P2581003965351899482

namespace A253550

/-- `A119416(n+1)/A117366(A117364(n+1))` -/
def P2581003965351899482.Spec : Prop :=
  ∀ n, P2581003965351899482.a n = (A253550 (n + 1) : ℚ)

end A253550

/-! ## A253550.P17327131995891002397

`A119416(n+1)/A151800(A006530(n+1)-1)`
-/

namespace A253550.P17327131995891002397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119416 (n + 1) : ℚ) / (A151800 (A006530 (n + 1) - 1).toNat : ℚ)

end

end A253550.P17327131995891002397

namespace A253550

/-- `A119416(n+1)/A151800(A006530(n+1)-1)` -/
def P17327131995891002397.Spec : Prop :=
  ∀ n, P17327131995891002397.a n = (A253550 (n + 1) : ℚ)

end A253550

/-! ## A253550.P41825765360862549

`A003961(A053585(∏{p}[n+1, #]))*A052126(n+1)`
-/

namespace A253550.P41825765360862549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A053585 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat * A052126 (n + 1)

end

end A253550.P41825765360862549

namespace A253550

/-- `A003961(A053585(∏{p}[n+1, #]))*A052126(n+1)` -/
def P41825765360862549.Spec : Prop :=
  ∀ n, P41825765360862549.a n = A253550 (n + 1)

end A253550

/-! ## A253550.P1514449824297347968

`A003961((n+1)/A052126(n+1))*A052126(n+1)`
-/

namespace A253550.P1514449824297347968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A052126 (n + 1) : ℚ))).toNat * A052126 (n + 1)

end

end A253550.P1514449824297347968

namespace A253550

/-- `A003961((n+1)/A052126(n+1))*A052126(n+1)` -/
def P1514449824297347968.Spec : Prop :=
  ∀ n, P1514449824297347968.a n = A253550 (n + 1)

end A253550

/-! ## A253550.P12976265931979680698

`A003961(A318884(n+1)-A318886(n+1))*A052126(n+1)`
-/

namespace A253550.P12976265931979680698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A318884 (n + 1) - A318886 (n + 1)).toNat * A052126 (n + 1)

end

end A253550.P12976265931979680698

namespace A253550

/-- `A003961(A318884(n+1)-A318886(n+1))*A052126(n+1)` -/
def P12976265931979680698.Spec : Prop :=
  ∀ n, P12976265931979680698.a n = A253550 (n + 1)

end A253550

/-! ## A253550.P747125632406479702

`A003961(A051664(n+1)-A070536(n+1))*A052126(n+1)`
-/

namespace A253550.P747125632406479702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A051664 (n + 1) - A070536 (n + 1)).toNat * A052126 (n + 1)

end

end A253550.P747125632406479702

namespace A253550

/-- `A003961(A051664(n+1)-A070536(n+1))*A052126(n+1)` -/
def P747125632406479702.Spec : Prop :=
  ∀ n, P747125632406479702.a n = A253550 (n + 1)

end A253550

/-! ## A253550.P2645963073117013791

`A006530(A003961(n+1))*A052126(n+1)`
-/

namespace A253550.P2645963073117013791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A003961 (n + 1)).toNat * A052126 (n + 1)

end

end A253550.P2645963073117013791

namespace A253550

/-- `A006530(A003961(n+1))*A052126(n+1)` -/
def P2645963073117013791.Spec : Prop :=
  ∀ n, P2645963073117013791.a n = A253550 (n + 1)

end A253550

/-!
# A253551: Square array: A(row,col) = 2^(row-1) * 1+(2*A156552(col)) = A156552(A246278(row,col)), read by antidiagonals A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), ...

The programs for A253551, the canonical program `A253551.P17178228412685672112` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253551 has offset 1).

The definition of A253551 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253551.P1382982477278323385

`A156552(A246278(n+2))`
-/

namespace A253551.P1382982477278323385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A246278 (n + 2)).toNat

end

end A253551.P1382982477278323385

namespace A253551

/-- `A156552(A246278(n+2))` -/
def P1382982477278323385.Spec : Prop :=
  ∀ n, P1382982477278323385.a n = A253551 (n + 1)

end A253551

/-! ## A253551.P17178228412685672112

`A059268(n)*A156552(A212012(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A253551

/-- `A059268(n)*A156552(A212012(n+1))` -/
def P17178228412685672112.Spec : Prop :=
  ∀ n, P17178228412685672112.a n = A253551 (n + 1)

theorem P17178228412685672112.correct : P17178228412685672112.Spec := by
  intro n
  simp only [A253551, Nat.add_sub_cancel]

end A253551

/-! ## A253551.P2943366884892664318

`A269388(A255127(n+2))`
-/

namespace A253551.P2943366884892664318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269388 (A255127 (n + 2)).toNat

end

end A253551.P2943366884892664318

namespace A253551

/-- `A269388(A255127(n+2))` -/
def P2943366884892664318.Spec : Prop :=
  ∀ n, P2943366884892664318.a n = A253551 (n + 1)

end A253551

/-! ## A253551.P6361411770457338820

`A252754(A083221(n+2))`
-/

namespace A253551.P6361411770457338820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252754 (A083221 (n + 2)).toNat

end

end A253551.P6361411770457338820

namespace A253551

/-- `A252754(A083221(n+2))` -/
def P6361411770457338820.Spec : Prop :=
  ∀ n, P6361411770457338820.a n = A253551 (n + 1)

end A253551

/-! ## A253551.P1114397347924162158

`A252754(A249741(n+1)+1)`
-/

namespace A253551.P1114397347924162158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252754 (A249741 (n + 1) + 1).toNat

end

end A253551.P1114397347924162158

namespace A253551

/-- `A252754(A249741(n+1)+1)` -/
def P1114397347924162158.Spec : Prop :=
  ∀ n, P1114397347924162158.a n = A253551 (n + 1)

end A253551

/-! ## A253551.P916965602829038559

`A156552(A246275(n+1)+1)`
-/

namespace A253551.P916965602829038559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A246275 (n + 1) + 1).toNat

end

end A253551.P916965602829038559

namespace A253551

/-- `A156552(A246275(n+1)+1)` -/
def P916965602829038559.Spec : Prop :=
  ∀ n, P916965602829038559.a n = A253551 (n + 1)

end A253551

/-! ## A253551.P8096175095841393145

`A156552(A279336(A256997(n+2)))`
-/

namespace A253551.P8096175095841393145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A279336 (A256997 (n + 2)).toNat).toNat

end

end A253551.P8096175095841393145

namespace A253551

/-- `A156552(A279336(A256997(n+2)))` -/
def P8096175095841393145.Spec : Prop :=
  ∀ n, P8096175095841393145.a n = A253551 (n + 1)

end A253551

/-!
# A253552: Permutation of natural numbers: a(n) = A252752(A005940(n+1)) - 1.

The programs for A253552, the canonical program `A253552.P2775586370480243469` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253552 has offset 1).

The definition of A253552 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A252752, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A253552.P2775586370480243469

`A252752(A005940(n+2))-1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A253552

/-- `A252752(A005940(n+2))-1` -/
def P2775586370480243469.Spec : Prop :=
  ∀ n, P2775586370480243469.a n = A253552 (n + 1)

theorem P2775586370480243469.correct : P2775586370480243469.Spec := by
  intro n
  simp only [A253552, Nat.add_sub_cancel]

end A253552

/-! ## A253552.P17586107322122089967

`A246276(A005940(n+2)-1)`
-/

namespace A253552.P17586107322122089967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246276 (A005940 (n + 2) - 1).toNat

end

end A253552.P17586107322122089967

namespace A253552

/-- `A246276(A005940(n+2)-1)` -/
def P17586107322122089967.Spec : Prop :=
  ∀ n, P17586107322122089967.a n = A253552 (n + 1)

end A253552

/-! ## A253552.P157995791354996541

`A253562(A253563(n+1))-1`
-/

namespace A253552.P157995791354996541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253562 (A253563 (n + 1)).toNat - 1

end

end A253552.P157995791354996541

namespace A253552

/-- `A253562(A253563(n+1))-1` -/
def P157995791354996541.Spec : Prop :=
  ∀ n, P157995791354996541.a n = A253552 (n + 1)

theorem P157995791354996541.correct : P157995791354996541.Spec := by
  intro n
  simp only [A253552, Nat.add_sub_cancel, A253552.P157995791354996541.a, A253552.P2775586370480243469.a, A005940, A005940.P5942875842694471387.a, A252752, A252752.P263782589436442659.a, A253562, A253562.P855878760313902608.a, A253563, A253563.P8520361847049590329.a, A003557, A003557.P6364735403900941810.a, A028310, A028310.P18130301328277559831.a, A057335, A057335.P1378643245781663048.a, A057427, A057427.P17645173493419391152.a, A122111, A122111.P18124015185857335041.a, A246276, A246276.P6048941597672880664.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000120, A000120.P2816527436160941581.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A055396, A055396.P18305262754425103137.a, A064989, A064989.P13349672914146769936.a, A105560, A105560.P10934841406439867276.a, A246274, A246274.P518949399975886002.a, A246277, A246277.P3450750564944014413.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A005187, A005187.P3874015513960485494.a, A008578, A008578.P3639467937083264764.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A209268, A209268.P13650169059364209089.a, A243055, A243055.P2464886309294058059.a, A246675, A246675.P14039052850913045157.a, A348717, A348717.P703712104273003584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A253552

/-!
# A253553: a(1) = 1; for n>1, if A241917(n) = 0 [i.e., n is a term of A070003], a(n) = A052126(n), otherwise a(n) = A252462(n).

The programs for A253553, the canonical program `A253553.P5593197136438160867` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253553 has offset 1).

The definition of A253553 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, A252463, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A253553.P5593197136438160867

`A122111(A252463(A122111(n+1)))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A253553

/-- `A122111(A252463(A122111(n+1)))` -/
def P5593197136438160867.Spec : Prop :=
  ∀ n, P5593197136438160867.a n = A253553 (n + 1)

theorem P5593197136438160867.correct : P5593197136438160867.Spec := by
  intro n
  simp only [A253553, Nat.add_sub_cancel]

end A253553

/-! ## A253553.P17224400870818207594

`lcm(A052126(n+1), A053585(A252462(n+1)))`
-/

namespace A253553.P17224400870818207594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A052126 (n + 1)) (A053585 (A252462 (n + 1)).toNat)

end

end A253553.P17224400870818207594

namespace A253553

/-- `lcm(A052126(n+1), A053585(A252462(n+1)))` -/
def P17224400870818207594.Spec : Prop :=
  ∀ n, (P17224400870818207594.a n : ℤ) = A253553 (n + 1)

end A253553

/-! ## A253553.P6037772760690142550

`lcm(A217434(A252462(n+1)), A338669(n+1))`
-/

namespace A253553.P6037772760690142550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A217434 (A252462 (n + 1)).toNat) (A338669 (n + 1))

end

end A253553.P6037772760690142550

namespace A253553

/-- `lcm(A217434(A252462(n+1)), A338669(n+1))` -/
def P6037772760690142550.Spec : Prop :=
  ∀ n, (P6037772760690142550.a n : ℤ) = A253553 (n + 1)

end A253553

/-! ## A253553.P5617713484976188607

`A241916(∑{d}[A241916(n+1), A348045(#)])`
-/

namespace A253553.P5617713484976188607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241916 (∑ d ∈ Nat.divisors (f1 n).natAbs, A348045 d).toNat

end

end A253553.P5617713484976188607

namespace A253553

/-- `A241916(∑{d}[A241916(n+1), A348045(#)])` -/
def P5617713484976188607.Spec : Prop :=
  ∀ n, P5617713484976188607.a n = A253553 (n + 1)

end A253553

/-! ## A253553.P11897500289370692021

`A241916(A252463(A241916(n+1)))`
-/

namespace A253553.P11897500289370692021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241916 (A252463 (A241916 (n + 1)).toNat).toNat

end

end A253553.P11897500289370692021

namespace A253553

/-- `A241916(A252463(A241916(n+1)))` -/
def P11897500289370692021.Spec : Prop :=
  ∀ n, P11897500289370692021.a n = A253553 (n + 1)

end A253553

/-!
# A253554: a(1) = 1, a(2n) = n, a(2n+1) = A250470(2n+1).

The programs for A253554, there is no canonical definition to state claims against.
-/

/-! ## A253554.P5507340267682083621

`A152271(n)*A250470(A141310(n))`
-/

namespace A253554.P5507340267682083621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n * A250470 (A141310 n).toNat

end

end A253554.P5507340267682083621

/-! ## A253554.P9704036371767237225

`A152271(n)*A268674(A086112(n+1))`
-/

namespace A253554.P9704036371767237225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n * A268674 (A086112 (n + 1)).toNat

end

end A253554.P9704036371767237225

/-! ## A253554.P15242320057957325736

`A065033(A093178(n))*A268674(A141310(n))`
-/

namespace A253554.P15242320057957325736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A093178 n).toNat * A268674 (A141310 n).toNat

end

end A253554.P15242320057957325736

/-! ## A253554.P13024826589412561330

`A268674(n+1)+A152271(n)-A268674(A152271(n))`
-/

namespace A253554.P13024826589412561330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (n + 1) + (A152271 n - A268674 (A152271 n).toNat)

end

end A253554.P13024826589412561330

/-! ## A253554.P2044008596710315246

`A252463(A118759(A249818(n+1)))`
-/

namespace A253554.P2044008596710315246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A118759 (A249818 (n + 1)).toNat).toNat

end

end A253554.P2044008596710315246

/-! ## A253554.P598387195121322029

`A252463(A000188(A249818(n+1)²))`
-/

namespace A253554.P598387195121322029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A000188 (A249818 (n + 1) ^ 2).toNat).toNat

end

end A253554.P598387195121322029

/-! ## A253554.P594026017800033683

`A252463(A000196(A249818(n+1)²))`
-/

namespace A253554.P594026017800033683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A000196 (A249818 (n + 1) ^ 2).toNat).toNat

end

end A253554.P594026017800033683

/-! ## A253554.P6485693323805738917

`A252463(A004739(A249818(n+1)²))`
-/

namespace A253554.P6485693323805738917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A004739 (A249818 (n + 1) ^ 2).toNat).toNat

end

end A253554.P6485693323805738917

/-! ## A253554.P17779283654967953020

`A252463(A249818(n+1)%A096522(n+1))`
-/

namespace A253554.P17779283654967953020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (Int.tmod (A249818 (n + 1)) (A096522 (n + 1))).toNat

end

end A253554.P17779283654967953020

/-! ## A253554.P17987348514179824888

`A252753(floor(A252754(n+1)/2))`
-/

namespace A253554.P17987348514179824888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252753 ⌊(A252754 (n + 1) : ℚ) / 2⌋.toNat

end

end A253554.P17987348514179824888

/-!
# A253555: a(1) = 0, a(2n) = 1 + a(n), a(2n+1) = 1 + a(A250470(2n+1)); also binary width of terms of A252754 and A252756.

The programs for A253555, there is no canonical definition to state claims against.
-/

/-! ## A253555.P13607556869262138072

`1+a(A253554(n+1)-1)` with `a(0)=0`
-/

namespace A253555.P13607556869262138072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a (A253554 (n + 1) - 1).toNat

end

end A253555.P13607556869262138072

/-! ## A253555.P17515995481979698283

`A253556(n+1)+A253557(n+1)`
-/

namespace A253555.P17515995481979698283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253556 (n + 1) + A253557 (n + 1)

end

end A253555.P17515995481979698283

/-! ## A253555.P3879073575375866155

`A029837(1+A252754(n+1))`
-/

namespace A253555.P3879073575375866155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (1 + A252754 (n + 1)).toNat

end

end A253555.P3879073575375866155

/-! ## A253555.P3477364782778644219

`A029837(1+A252756(n+1))`
-/

namespace A253555.P3477364782778644219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (1 + A252756 (n + 1)).toNat

end

end A253555.P3477364782778644219

/-! ## A253555.P5846097388545609298

`A253559(2*(n+1))+A253556(n+1)`
-/

namespace A253555.P5846097388545609298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253559 (2 * (n + 1)) + A253556 (n + 1)

end

end A253555.P5846097388545609298

/-! ## A253555.P10186543668939595503

`A253558(n+1)+A253559(2*(n+1))-1`
-/

namespace A253555.P10186543668939595503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253558 (n + 1) + (A253559 (2 * (n + 1)) - 1)

end

end A253555.P10186543668939595503

/-! ## A253555.P9830785336520923018

`floor(log2(A252754(2*(n+1))))`
-/

namespace A253555.P9830785336520923018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A252754 (2 * (n + 1))).toNat

end

end A253555.P9830785336520923018

/-! ## A253555.P3101238362733989254

`floor(log2(A252756(2*(n+1))))`
-/

namespace A253555.P3101238362733989254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A252756 (2 * (n + 1))).toNat

end

end A253555.P3101238362733989254

/-! ## A253555.P15966610391915911576

`floor(log2(A269856(2*(n+1))))`
-/

namespace A253555.P15966610391915911576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A269856 (2 * (n + 1))).toNat

end

end A253555.P15966610391915911576

/-! ## A253555.P3580574545187507855

`floor(log2(A286556(2*(n+1))))`
-/

namespace A253555.P3580574545187507855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A286556 (2 * (n + 1))).toNat

end

end A253555.P3580574545187507855

/-! ## A253555.P16651381142316169348

`A252464(A250246(n+1))`
-/

namespace A253555.P16651381142316169348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (A250246 (n + 1)).toNat

end

end A253555.P16651381142316169348

/-!
# A253556: a(1) = 0; after which, a(2n) = a(n), a(2n+1) = 1 + a(A250470(n)).

The programs for A253556, there is no canonical definition to state claims against.
-/

/-! ## A253556.P276469181657882599

`A253558(n+1)-1`
-/

namespace A253556.P276469181657882599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253558 (n + 1) - 1

end

end A253556.P276469181657882599

/-! ## A253556.P14389061283993203874

`A253555(n+1)-A253557(n+1)`
-/

namespace A253556.P14389061283993203874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253555 (n + 1) - A253557 (n + 1)

end

end A253556.P14389061283993203874

/-! ## A253556.P184291312872626535

`A080791(A252754(n+1))`
-/

namespace A253556.P184291312872626535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A252754 (n + 1)).toNat

end

end A253556.P184291312872626535

/-! ## A253556.P8288381101114199393

`A023443(A253558(n+1))`
-/

namespace A253556.P8288381101114199393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A253558 (n + 1)).toNat

end

end A253556.P8288381101114199393

/-! ## A253556.P10582038476667389719

`(A253558(n+1)+A005408(n))%(n+1)`
-/

namespace A253556.P10582038476667389719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253558 (n + 1) + A005408 n) (n + 1 : ℤ)

end

end A253556.P10582038476667389719

/-! ## A253556.P2852355811710482534

`A253558(A268674(n+1))%((n+1)/and(n+1, -(n+1)))`
-/

namespace A253556.P2852355811710482534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253558 (A268674 (n + 1)).toNat) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)))

end

end A253556.P2852355811710482534

/-! ## A253556.P12293202735211644040

`A253555(A253554(n+1))-A253559(n+1)`
-/

namespace A253556.P12293202735211644040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253555 (A253554 (n + 1)).toNat - A253559 (n + 1)

end

end A253556.P12293202735211644040

/-! ## A253556.P1288220274686323830

`A253558(A268674(n+1))%A064989(n+1)`
-/

namespace A253556.P1288220274686323830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253558 (A268674 (n + 1)).toNat) (A064989 (n + 1))

end

end A253556.P1288220274686323830

/-! ## A253556.P11190805921806296389

`A253555(n+1)-A253559(2*(n+1))`
-/

namespace A253556.P11190805921806296389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253555 (n + 1) - A253559 (2 * (n + 1))

end

end A253556.P11190805921806296389

/-! ## A253556.P9693032353440467576

`A061395(A346486(2*(n+1)))-1`
-/

namespace A253556.P9693032353440467576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A346486 (2 * (n + 1))).toNat - 1

end

end A253556.P9693032353440467576

/-! ## A253556.P9983263428333299091

`A061395(lcm(2, A346486(n+1)))-1`
-/

namespace A253556.P9983263428333299091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A346486 (n + 1))) - 1

end

end A253556.P9983263428333299091

/-! ## A253556.P11274736746316780986

`A252735(A346486(n+1))`
-/

namespace A253556.P11274736746316780986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (A346486 (n + 1)).toNat

end

end A253556.P11274736746316780986

/-! ## A253556.P13093559152839030097

`A139169(A346486(2*n+2))-1`
-/

namespace A253556.P13093559152839030097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139169 (A346486 (2 * n + 2)).toNat - 1

end

end A253556.P13093559152839030097

/-! ## A253556.P5223873484366952496

`A061395(A250246(n+1))-A343639(A000120(n))`
-/

namespace A253556.P5223873484366952496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A250246 (n + 1)).toNat - A343639 (A000120 n).toNat

end

end A253556.P5223873484366952496

/-! ## A253556.P16695239801650582378

`A061395(A250246(2*(n+1)))-1`
-/

namespace A253556.P16695239801650582378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A250246 (2 * (n + 1))).toNat - 1

end

end A253556.P16695239801650582378

/-! ## A253556.P3131799838610055042

`A025581(2*A253558(n+1)²)`
-/

namespace A253556.P3131799838610055042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (2 * A253558 (n + 1) ^ 2).toNat

end

end A253556.P3131799838610055042

/-! ## A253556.P13981928912924331720

`A025581(2*A253558(n+1)*A253558(n+1))`
-/

namespace A253556.P13981928912924331720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (2 * A253558 (n + 1) * A253558 (n + 1)).toNat

end

end A253556.P13981928912924331720

/-! ## A253556.P5971507012477083700

`A252735(A250246(n+1))`
-/

namespace A253556.P5971507012477083700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (A250246 (n + 1)).toNat

end

end A253556.P5971507012477083700

/-! ## A253556.P6497387491584585835

`A243056(A250246(4*(n+1)))`
-/

namespace A253556.P6497387491584585835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243056 (A250246 (4 * (n + 1))).toNat

end

end A253556.P6497387491584585835

/-! ## A253556.P14376983787239951925

`A083800(n+1)%A253558(n+1)`
-/

namespace A253556.P14376983787239951925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A253558 (n + 1))

end

end A253556.P14376983787239951925

/-!
# A253557: a(1) = 0; after which, a(2n) = 1 + a(n), a(2n+1) = a(A268674(2n+1)).

The programs for A253557, there is no canonical definition to state claims against.
-/

/-! ## A253557.P8781274710900471947

`1+a(A302042(n+1)-1)` with `a(0)=0, a(1)=1`
-/

namespace A253557.P8781274710900471947
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a (A302042 (n + 1) - 1).toNat

end

end A253557.P8781274710900471947

/-! ## A253557.P9737845480511629350

`A253555(n+1)-A253556(n+1)`
-/

namespace A253557.P9737845480511629350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253555 (n + 1) - A253556 (n + 1)

end

end A253557.P9737845480511629350

/-! ## A253557.P4188346160307828589

`A001222(A250246(n+1))`
-/

namespace A253557.P4188346160307828589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A250246 (n + 1)).toNat

end

end A253557.P4188346160307828589

/-! ## A253557.P6363894323863656740

`A000120(A252754(n+1))`
-/

namespace A253557.P6363894323863656740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A252754 (n + 1)).toNat

end

end A253557.P6363894323863656740

/-! ## A253557.P7111292961445719431

`∑{e}[A278524(n+1), #]`
-/

namespace A253557.P7111292961445719431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278524 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A253557.P7111292961445719431

/-! ## A253557.P8960525757233569227

`ceil(A253559(n+1)+abs(sin(n)))`
-/

namespace A253557.P8960525757233569227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A253559 (n + 1) : ℝ) + |Real.sin (n : ℝ)|⌉

end

end A253557.P8960525757233569227

/-! ## A253557.P16100173011985058446

`a(A078898(n+1)-1)+1` with `a(0)=0`
-/

namespace A253557.P16100173011985058446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A078898 (n + 1) - 1).toNat + 1

end

end A253557.P16100173011985058446

/-! ## A253557.P31421085663500448

`A001222(A278524(n+1))`
-/

namespace A253557.P31421085663500448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278524 (n + 1)).toNat

end

end A253557.P31421085663500448

/-! ## A253557.P8925652344087226792

`A302037(A269171(n+1))`
-/

namespace A253557.P8925652344087226792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302037 (A269171 (n + 1)).toNat

end

end A253557.P8925652344087226792

/-! ## A253557.P11438686233746125346

`A253559(n+1)+A057427(n)`
-/

namespace A253557.P11438686233746125346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253559 (n + 1) + A057427 n

end

end A253557.P11438686233746125346

/-! ## A253557.P17500459433255746887

`A253559(n+1)-A057428(n)`
-/

namespace A253557.P17500459433255746887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253559 (n + 1) - A057428 n

end

end A253557.P17500459433255746887

/-! ## A253557.P6389904927145953161

`A326075(n+1)+A001222(n+1)`
-/

namespace A253557.P6389904927145953161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326075 (n + 1) + A001222 (n + 1)

end

end A253557.P6389904927145953161

/-! ## A253557.P13135442508566836698

`A253555(n+1)+1-A253558(n+1)`
-/

namespace A253557.P13135442508566836698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253555 (n + 1) + 1 - A253558 (n + 1)

end

end A253557.P13135442508566836698

/-! ## A253557.P15217388865226787659

`A253559(n+1)+A055396(2^ceil(log2(n+1)))`
-/

namespace A253557.P15217388865226787659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253559 (n + 1) + A055396 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))).toNat

end

end A253557.P15217388865226787659

/-! ## A253557.P9600670247435288624

`A302039(n+1)-A302039(A268674(n+1))`
-/

namespace A253557.P9600670247435288624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302039 (n + 1) - A302039 (A268674 (n + 1)).toNat

end

end A253557.P9600670247435288624

/-! ## A253557.P15617744677150734968

`A302039(A250469(n+1))-A302039(n+1)`
-/

namespace A253557.P15617744677150734968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302039 (A250469 (n + 1)).toNat - A302039 (n + 1)

end

end A253557.P15617744677150734968

/-! ## A253557.P11703939598958687988

`A253559(2*(n+1))`
-/

namespace A253557.P11703939598958687988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253559 (2 * (n + 1))

end

end A253557.P11703939598958687988

/-! ## A253557.P15220552634680691624

`A252736(2*A278524(n+1))`
-/

namespace A253557.P15220552634680691624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (2 * A278524 (n + 1)).toNat

end

end A253557.P15220552634680691624

/-! ## A253557.P5058123975416819260

`A302041(n+1)+A001222(A346487(n+1))`
-/

namespace A253557.P5058123975416819260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302041 (n + 1) + A001222 (A346487 (n + 1)).toNat

end

end A253557.P5058123975416819260

/-! ## A253557.P12234142582894572704

`∑{e}[A250246(n+1), #]`
-/

namespace A253557.P12234142582894572704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A253557.P12234142582894572704

/-!
# A253558: a(n) = A253556(n) + 1.

The programs for A253558, there is no canonical definition to state claims against.
-/

/-! ## A253558.P14831657365532197857

`A253556(n+1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A253558.P14831657365532197857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253556 (n + 1) + 1

end

end A253558.P14831657365532197857

/-! ## A253558.P5211246316334236912

`A080791(A252754(n+1))+1`
-/

namespace A253558.P5211246316334236912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A252754 (n + 1)).toNat + 1

end

end A253558.P5211246316334236912

/-! ## A253558.P5083081196534399887

`A253555(n+1)+1-A253557(n+1)`
-/

namespace A253558.P5083081196534399887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253555 (n + 1) + (1 - A253557 (n + 1))

end

end A253558.P5083081196534399887

/-! ## A253558.P6297454648437811102

`A253555(A253554(n+1))+1-A253559(n+1)`
-/

namespace A253558.P6297454648437811102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253555 (A253554 (n + 1)).toNat + (1 - A253559 (n + 1))

end

end A253558.P6297454648437811102

/-! ## A253558.P10717215329670305203

`A253555(n+1)+1-A253559(2*(n+1))`
-/

namespace A253558.P10717215329670305203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253555 (n + 1) + 1 - A253559 (2 * (n + 1))

end

end A253558.P10717215329670305203

/-! ## A253558.P12654015573717134605

`A061395(A346486(2*(n+1)))`
-/

namespace A253558.P12654015573717134605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A346486 (2 * (n + 1))).toNat

end

end A253558.P12654015573717134605

/-! ## A253558.P7611722460138566525

`A061395(lcm(2, A346486(n+1)))`
-/

namespace A253558.P7611722460138566525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A346486 (n + 1)))

end

end A253558.P7611722460138566525

/-! ## A253558.P15431281364346518817

`A139169(A346486(n+1))`
-/

namespace A253558.P15431281364346518817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139169 (A346486 (n + 1)).toNat

end

end A253558.P15431281364346518817

/-! ## A253558.P15371545391145440449

`A253556(Δ[3*n²])`
-/

namespace A253558.P15371545391145440449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253556 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A253558.P15371545391145440449

/-! ## A253558.P10711127131968674427

`A061395(A250246(2*(n+1)))`
-/

namespace A253558.P10711127131968674427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A250246 (2 * (n + 1))).toNat

end

end A253558.P10711127131968674427

/-! ## A253558.P2230896769287364601

`A252735(A250246(n+1))+1`
-/

namespace A253558.P2230896769287364601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (A250246 (n + 1)).toNat + 1

end

end A253558.P2230896769287364601

/-!
# A253559: a(1) = 0; for n>1: a(n) = A253557(n) - 1.

The programs for A253559, there is no canonical definition to state claims against.
-/

/-! ## A253559.P18283148687350577946

`A080791(A252756(n+1))`
-/

namespace A253559.P18283148687350577946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A252756 (n + 1)).toNat

end

end A253559.P18283148687350577946

/-! ## A253559.P2531884381982980022

`A253557(n+1)-ceil(abs(sin(n)))`
-/

namespace A253559.P2531884381982980022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253557 (n + 1) - ⌈|Real.sin (n : ℝ)|⌉

end

end A253559.P2531884381982980022

/-! ## A253559.P14848204145606815651

`A253557(A078898(n+1))`
-/

namespace A253559.P14848204145606815651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253557 (A078898 (n + 1)).toNat

end

end A253559.P14848204145606815651

/-! ## A253559.P8764625490272491275

`A253557(A302042(n+1))`
-/

namespace A253559.P8764625490272491275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253557 (A302042 (n + 1)).toNat

end

end A253559.P8764625490272491275

/-! ## A253559.P9639788977140944359

`A028310(A253557(n+1))-1`
-/

namespace A253559.P9639788977140944359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A253557 (n + 1)).toNat - 1

end

end A253559.P9639788977140944359

/-! ## A253559.P2017573806389530940

`A297167(2^A253557(n+1))`
-/

namespace A253559.P2017573806389530940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297167 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A253557 (n + 1) : ℤ))).toNat

end

end A253559.P2017573806389530940

/-! ## A253559.P4807814740216517525

`A253557(n+1)+A057428(n)`
-/

namespace A253559.P4807814740216517525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253557 (n + 1) + A057428 n

end

end A253559.P4807814740216517525

/-! ## A253559.P9193320980797218673

`A253557(n+1)-A057427(n)`
-/

namespace A253559.P9193320980797218673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253557 (n + 1) - A057427 n

end

end A253559.P9193320980797218673

/-! ## A253559.P17905713654002034499

`A326075(n+1)+A252736(n+1)`
-/

namespace A253559.P17905713654002034499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326075 (n + 1) + A252736 (n + 1)

end

end A253559.P17905713654002034499

/-! ## A253559.P18360388231055475252

`A253557(1-A302043(n+1)+n)`
-/

namespace A253559.P18360388231055475252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253557 (1 - A302043 (n + 1) + (n : ℤ)).toNat

end

end A253559.P18360388231055475252

/-! ## A253559.P11708346317291772534

`A253557(n+1)-A055396(2^ceil(log2(n+1)))`
-/

namespace A253559.P11708346317291772534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253557 (n + 1) - A055396 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))).toNat

end

end A253559.P11708346317291772534

/-! ## A253559.P12524456543483947739

`A326075(n+1)+A001222(A032742(n+1))`
-/

namespace A253559.P12524456543483947739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326075 (n + 1) + A001222 (A032742 (n + 1)).toNat

end

end A253559.P12524456543483947739

/-! ## A253559.P15775540823054478561

`A253557(n+1)-A253557(A020639(n+1))`
-/

namespace A253559.P15775540823054478561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253557 (n + 1) - A253557 (A020639 (n + 1)).toNat

end

end A253559.P15775540823054478561

/-! ## A253559.P1746050035693578980

`A253557(n+1)-A319679(A046523(n+1))`
-/

namespace A253559.P1746050035693578980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253557 (n + 1) - A319679 (A046523 (n + 1)).toNat

end

end A253559.P1746050035693578980

/-! ## A253559.P17352774488752927445

`A253555(A253554(n+1))-A253556(n+1)`
-/

namespace A253559.P17352774488752927445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253555 (A253554 (n + 1)).toNat - A253556 (n + 1)

end

end A253559.P17352774488752927445

/-! ## A253559.P662940097352032132

`A253557(n+1)-A302031(A272565(n+1))`
-/

namespace A253559.P662940097352032132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253557 (n + 1) - A302031 (A272565 (n + 1)).toNat

end

end A253559.P662940097352032132

/-! ## A253559.P16110872747017163663

`A001222(A032742(n+1))+A253557(n+1)-A001222(n+1)`
-/

namespace A253559.P16110872747017163663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A032742 (n + 1)).toNat + (A253557 (n + 1) - A001222 (n + 1))

end

end A253559.P16110872747017163663

/-! ## A253559.P1944324996873635827

`A253557(n+1)-A302041(A302040(n+1))`
-/

namespace A253559.P1944324996873635827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253557 (n + 1) - A302041 (A302040 (n + 1)).toNat

end

end A253559.P1944324996873635827

/-! ## A253559.P12813558925099058235

`A253557(n+1)-A302031(A302036(n+1))`
-/

namespace A253559.P12813558925099058235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253557 (n + 1) - A302031 (A302036 (n + 1)).toNat

end

end A253559.P12813558925099058235

/-! ## A253559.P16440966579819399205

`A252736(A278524(n+1))`
-/

namespace A253559.P16440966579819399205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A278524 (n + 1)).toNat

end

end A253559.P16440966579819399205

/-!
# A253560: Multiply n by its largest prime factor: a(n) = A006530(n) * n.

The programs for A253560, the canonical program `A253560.P6679352984908299498` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253560 has offset 1).

The definition of A253560 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A253560.P3670676527422787320

`(n+1)*A006530(n+1)`
-/

namespace A253560.P3670676527422787320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A006530 (n + 1)

end

end A253560.P3670676527422787320

namespace A253560

/-- `(n+1)*A006530(n+1)` -/
def P3670676527422787320.Spec : Prop :=
  ∀ n, P3670676527422787320.a n = A253560 (n + 1)

theorem P3670676527422787320.correct : P3670676527422787320.Spec := by
  intro n
  simp only [A253560, Nat.add_sub_cancel, A253560.P3670676527422787320.a, A253560.P6679352984908299498.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A253560

/-! ## A253560.P6679352984908299498

`A006530(n+1)*(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A253560

/-- `A006530(n+1)*(n+1)` -/
def P6679352984908299498.Spec : Prop :=
  ∀ n, P6679352984908299498.a n = A253560 (n + 1)

theorem P6679352984908299498.correct : P6679352984908299498.Spec := by
  intro n
  simp only [A253560, Nat.add_sub_cancel]

end A253560

/-! ## A253560.P5065537779968252348

`A129598(n+1)-floor(acot(n))`
-/

namespace A253560.P5065537779968252348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129598 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A253560.P5065537779968252348

namespace A253560

/-- `A129598(n+1)-floor(acot(n))` -/
def P5065537779968252348.Spec : Prop :=
  ∀ n, P5065537779968252348.a n = A253560 (n + 1)

end A253560

/-! ## A253560.P8373044862442445357

`(n+1)²/A052126(n+1)`
-/

namespace A253560.P8373044862442445357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A052126 (n + 1) : ℚ)

end

end A253560.P8373044862442445357

namespace A253560

/-- `(n+1)²/A052126(n+1)` -/
def P8373044862442445357.Spec : Prop :=
  ∀ n, P8373044862442445357.a n = (A253560 (n + 1) : ℚ)

end A253560

/-! ## A253560.P7766892956634747106

`(n+1)^3/A342768(n+1)`
-/

namespace A253560.P7766892956634747106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℚ) / (A342768 (n + 1) : ℚ)

end

end A253560.P7766892956634747106

namespace A253560

/-- `(n+1)^3/A342768(n+1)` -/
def P7766892956634747106.Spec : Prop :=
  ∀ n, P7766892956634747106.a n = (A253560 (n + 1) : ℚ)

end A253560

/-! ## A253560.P16636267629044967949

`(n+1)*A345941(∏{p}[n+1, #])`
-/

namespace A253560.P16636267629044967949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A345941 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A253560.P16636267629044967949

namespace A253560

/-- `(n+1)*A345941(∏{p}[n+1, #])` -/
def P16636267629044967949.Spec : Prop :=
  ∀ n, P16636267629044967949.a n = A253560 (n + 1)

end A253560

/-! ## A253560.P16897171599147666878

`(n+1)*(A070229(n+1)-(n+1))`
-/

namespace A253560.P16897171599147666878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A070229 (n + 1) - (n + 1 : ℤ))

end

end A253560.P16897171599147666878

namespace A253560

/-- `(n+1)*(A070229(n+1)-(n+1))` -/
def P16897171599147666878.Spec : Prop :=
  ∀ n, P16897171599147666878.a n = A253560 (n + 1)

theorem P16897171599147666878.correct : P16897171599147666878.Spec := by
  intro n
  simp only [A253560, Nat.add_sub_cancel, A253560.P16897171599147666878.a, A253560.P6679352984908299498.a, A006530, A006530.P13372528560459906635.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A253560

/-! ## A253560.P10192326540101594213

`A129598(n+1)-A000007(n)`
-/

namespace A253560.P10192326540101594213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129598 (n + 1) - A000007 n

end

end A253560.P10192326540101594213

namespace A253560

/-- `A129598(n+1)-A000007(n)` -/
def P10192326540101594213.Spec : Prop :=
  ∀ n, P10192326540101594213.a n = A253560 (n + 1)

end A253560

/-! ## A253560.P1859472860229267611

`A129598(n+1)/A054977(n)`
-/

namespace A253560.P1859472860229267611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129598 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A253560.P1859472860229267611

namespace A253560

/-- `A129598(n+1)/A054977(n)` -/
def P1859472860229267611.Spec : Prop :=
  ∀ n, P1859472860229267611.a n = (A253560 (n + 1) : ℚ)

end A253560

/-! ## A253560.P16727269994694942144

`gcd(A069779(n), A129598(n+1))`
-/

namespace A253560.P16727269994694942144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A069779 n) (A129598 (n + 1))

end

end A253560.P16727269994694942144

namespace A253560

/-- `gcd(A069779(n), A129598(n+1))` -/
def P16727269994694942144.Spec : Prop :=
  ∀ n, (P16727269994694942144.a n : ℤ) = A253560 (n + 1)

end A253560

/-! ## A253560.P7116439952158265397

`A129598(n+1)+A057427(n)-1`
-/

namespace A253560.P7116439952158265397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129598 (n + 1) + (A057427 n - 1)

end

end A253560.P7116439952158265397

namespace A253560

/-- `A129598(n+1)+A057427(n)-1` -/
def P7116439952158265397.Spec : Prop :=
  ∀ n, P7116439952158265397.a n = A253560 (n + 1)

end A253560

/-! ## A253560.P3304586852410278329

`(n+1)*A002034(A007947(n+1))`
-/

namespace A253560.P3304586852410278329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002034 (A007947 (n + 1)).toNat

end

end A253560.P3304586852410278329

namespace A253560

/-- `(n+1)*A002034(A007947(n+1))` -/
def P3304586852410278329.Spec : Prop :=
  ∀ n, P3304586852410278329.a n = A253560 (n + 1)

end A253560

/-! ## A253560.P16367661761655490125

`(n+1)*A020639(A053585(n+1))`
-/

namespace A253560.P16367661761655490125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A020639 (A053585 (n + 1)).toNat

end

end A253560.P16367661761655490125

namespace A253560

/-- `(n+1)*A020639(A053585(n+1))` -/
def P16367661761655490125.Spec : Prop :=
  ∀ n, P16367661761655490125.a n = A253560 (n + 1)

end A253560

/-! ## A253560.P1431983533904340937

`(n+1)*A002034(A088835(n+1))`
-/

namespace A253560.P1431983533904340937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002034 (A088835 (n + 1)).toNat

end

end A253560.P1431983533904340937

namespace A253560

/-- `(n+1)*A002034(A088835(n+1))` -/
def P1431983533904340937.Spec : Prop :=
  ∀ n, P1431983533904340937.a n = A253560 (n + 1)

end A253560

/-! ## A253560.P8962690801760389329

`A032742(n+1)*A066048(n+1)`
-/

namespace A253560.P8962690801760389329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) * A066048 (n + 1)

end

end A253560.P8962690801760389329

namespace A253560

/-- `A032742(n+1)*A066048(n+1)` -/
def P8962690801760389329.Spec : Prop :=
  ∀ n, P8962690801760389329.a n = A253560 (n + 1)

end A253560

/-! ## A253560.P4366718388921850305

`A020639(n+1)*A130064(n+1)`
-/

namespace A253560.P4366718388921850305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) * A130064 (n + 1)

end

end A253560.P4366718388921850305

namespace A253560

/-- `A020639(n+1)*A130064(n+1)` -/
def P4366718388921850305.Spec : Prop :=
  ∀ n, P4366718388921850305.a n = A253560 (n + 1)

end A253560

/-! ## A253560.P7263002240221191282

`(n+1)*A079068(A117366(n+1))`
-/

namespace A253560.P7263002240221191282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A079068 (A117366 (n + 1)).toNat

end

end A253560.P7263002240221191282

namespace A253560

/-- `(n+1)*A079068(A117366(n+1))` -/
def P7263002240221191282.Spec : Prop :=
  ∀ n, P7263002240221191282.a n = A253560 (n + 1)

end A253560

/-! ## A253560.P786268271687497534

`A007947(n+1)*A217434(n+1)`
-/

namespace A253560.P786268271687497534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A217434 (n + 1)

end

end A253560.P786268271687497534

namespace A253560

/-- `A007947(n+1)*A217434(n+1)` -/
def P786268271687497534.Spec : Prop :=
  ∀ n, P786268271687497534.a n = A253560 (n + 1)

end A253560

/-! ## A253560.P8479151753911180051

`(n+1)*A053585(A243074(n+1))`
-/

namespace A253560.P8479151753911180051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A053585 (A243074 (n + 1)).toNat

end

end A253560.P8479151753911180051

namespace A253560

/-- `(n+1)*A053585(A243074(n+1))` -/
def P8479151753911180051.Spec : Prop :=
  ∀ n, P8479151753911180051.a n = A253560 (n + 1)

end A253560

/-! ## A253560.P15379468537591847597

`(n+1)*A014963(A345941(n+1))`
-/

namespace A253560.P15379468537591847597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A014963 (A345941 (n + 1)).toNat

end

end A253560.P15379468537591847597

namespace A253560

/-- `(n+1)*A014963(A345941(n+1))` -/
def P15379468537591847597.Spec : Prop :=
  ∀ n, P15379468537591847597.a n = A253560 (n + 1)

end A253560

/-!
# A253561: Square array read by antidiagonals: A(row,col) = A122111(A246278(row,col)).

The programs for A253561, the canonical program `A253561.P16567728595898521275` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253561 has offset 2).

The definition of A253561 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253561.P12652960896823493613

`A122111(A246278(n+2))`
-/

namespace A253561.P12652960896823493613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A246278 (n + 2)).toNat

end

end A253561.P12652960896823493613

namespace A253561

/-- `A122111(A246278(n+2))` -/
def P12652960896823493613.Spec : Prop :=
  ∀ n, P12652960896823493613.a n = A253561 (n + 2)

end A253561

/-! ## A253561.P16567728595898521275

`A253563(A253551(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A253561

/-- `A253563(A253551(n+1))` -/
def P16567728595898521275.Spec : Prop :=
  ∀ n, P16567728595898521275.a n = A253561 (n + 2)

theorem P16567728595898521275.correct : P16567728595898521275.Spec := by
  intro n
  simp only [A253561, Nat.add_sub_cancel]

end A253561

/-! ## A253561.P1668439966148805637

`A279352(A083221(n+2))`
-/

namespace A253561.P1668439966148805637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279352 (A083221 (n + 2)).toNat

end

end A253561.P1668439966148805637

namespace A253561

/-- `A279352(A083221(n+2))` -/
def P1668439966148805637.Spec : Prop :=
  ∀ n, P1668439966148805637.a n = A253561 (n + 2)

end A253561

/-! ## A253561.P16642333273108724820

`A279352(A249741(n+1)+1)`
-/

namespace A253561.P16642333273108724820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279352 (A249741 (n + 1) + 1).toNat

end

end A253561.P16642333273108724820

namespace A253561

/-- `A279352(A249741(n+1)+1)` -/
def P16642333273108724820.Spec : Prop :=
  ∀ n, P16642333273108724820.a n = A253561 (n + 2)

end A253561

/-! ## A253561.P1314076494454801092

`A122111(A246275(n+1)+1)`
-/

namespace A253561.P1314076494454801092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A246275 (n + 1) + 1).toNat

end

end A253561.P1314076494454801092

namespace A253561

/-- `A122111(A246275(n+1)+1)` -/
def P1314076494454801092.Spec : Prop :=
  ∀ n, P1314076494454801092.a n = A253561 (n + 2)

end A253561

/-!
# A253562: Inverse permutation to A253561: a(n) = A252752(A122111(n)).

The programs for A253562, the canonical program `A253562.P855878760313902608` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253562 has offset 1).

The definition of A253562 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, A252752, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A253562.P855878760313902608

`A252752(A122111(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A253562

/-- `A252752(A122111(n+1))` -/
def P855878760313902608.Spec : Prop :=
  ∀ n, P855878760313902608.a n = A253562 (n + 1)

theorem P855878760313902608.correct : P855878760313902608.Spec := by
  intro n
  simp only [A253562, Nat.add_sub_cancel]

end A253562

/-! ## A253562.P16688109755994693780

`A252460(A279351(n+1))`
-/

namespace A253562.P16688109755994693780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252460 (A279351 (n + 1)).toNat

end

end A253562.P16688109755994693780

namespace A253562

/-- `A252460(A279351(n+1))` -/
def P16688109755994693780.Spec : Prop :=
  ∀ n, P16688109755994693780.a n = A253562 (n + 1)

end A253562

/-! ## A253562.P1052756500788534464

`A252752(∑{d}[n+1, A329034(#)])`
-/

namespace A253562.P1052756500788534464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252752 (∑ d ∈ Nat.divisors (f1 n), A329034 d).toNat

end

end A253562.P1052756500788534464

namespace A253562

/-- `A252752(∑{d}[n+1, A329034(#)])` -/
def P1052756500788534464.Spec : Prop :=
  ∀ n, P1052756500788534464.a n = A253562 (n + 1)

end A253562

/-! ## A253562.P18062721613546584184

`A252752(1-A352491(n+1)+n)`
-/

namespace A253562.P18062721613546584184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252752 (1 - A352491 (n + 1) + (n : ℤ)).toNat

end

end A253562.P18062721613546584184

namespace A253562

/-- `A252752(1-A352491(n+1)+n)` -/
def P18062721613546584184.Spec : Prop :=
  ∀ n, P18062721613546584184.a n = A253562 (n + 1)

end A253562

/-! ## A253562.P6597321213175846183

`A252752(A243070((n+1)²+n²))`
-/

namespace A253562.P6597321213175846183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252752 (A243070 ((n + 1) ^ 2 + n ^ 2)).toNat

end

end A253562.P6597321213175846183

namespace A253562

/-- `A252752(A243070((n+1)²+n²))` -/
def P6597321213175846183.Spec : Prop :=
  ∀ n, P6597321213175846183.a n = A253562 (n + 1)

end A253562

/-!
# A253563: Permutation of natural numbers: a(0) = 1, a(1) = 2; after which, a(2n) = A253560(a(n)), a(2n+1) = A253550(a(n)).

The programs for A253563, the canonical program `A253563.P8520361847049590329` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253563 has offset 0).

The definition of A253563 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253563.P6256253163256714306

`A122111(A005940(n+1))`
-/

namespace A253563.P6256253163256714306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A005940 (n + 1)).toNat

end

end A253563.P6256253163256714306

namespace A253563

/-- `A122111(A005940(n+1))` -/
def P6256253163256714306.Spec : Prop :=
  ∀ n, P6256253163256714306.a n = A253563 n

end A253563

/-! ## A253563.P8520361847049590329

`A003557(A057335(2*n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A253563

/-- `A003557(A057335(2*n))` -/
def P8520361847049590329.Spec : Prop :=
  ∀ n, P8520361847049590329.a n = A253563 n

theorem P8520361847049590329.correct : P8520361847049590329.Spec := by
  intro n
  simp only [A253563]

end A253563

/-! ## A253563.P3695549317124564486

`a(A025480(n))*A000040(A000120(n))` with `a(0)=1`
-/

namespace A253563.P3695549317124564486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A025480 n).toNat * A000040 (A000120 n).toNat

end

end A253563.P3695549317124564486

namespace A253563

/-- `a(A025480(n))*A000040(A000120(n))` -/
def P3695549317124564486.Spec : Prop :=
  ∀ n, P3695549317124564486.a n = A253563 n

end A253563

/-! ## A253563.P13709277377261148591

`A163511(A145342(n+1)-1)`
-/

namespace A253563.P13709277377261148591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (A145342 (n + 1) - 1).toNat

end

end A253563.P13709277377261148591

namespace A253563

/-- `A163511(A145342(n+1)-1)` -/
def P13709277377261148591.Spec : Prop :=
  ∀ n, P13709277377261148591.a n = A253563 n

end A253563

/-! ## A253563.P17354419371267868469

`A163511(A003188(A341916(n)))`
-/

namespace A253563.P17354419371267868469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (A003188 (A341916 n).toNat).toNat

end

end A253563.P17354419371267868469

namespace A253563

/-- `A163511(A003188(A341916(n)))` -/
def P17354419371267868469.Spec : Prop :=
  ∀ n, P17354419371267868469.a n = A253563 n

end A253563

/-! ## A253563.P7355474498224927195

`A057335(2*n)/A002110(A000120(n))`
-/

namespace A253563.P7355474498224927195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057335 (2 * n) : ℚ) / (A002110 (A000120 n).toNat : ℚ)

end

end A253563.P7355474498224927195

namespace A253563

/-- `A057335(2*n)/A002110(A000120(n))` -/
def P7355474498224927195.Spec : Prop :=
  ∀ n, P7355474498224927195.a n = (A253563 n : ℚ)

end A253563

/-! ## A253563.P5829479021502653349

`A163511(A030109(2*n+1))`
-/

namespace A253563.P5829479021502653349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (A030109 (2 * n + 1)).toNat

end

end A253563.P5829479021502653349

namespace A253563

/-- `A163511(A030109(2*n+1))` -/
def P5829479021502653349.Spec : Prop :=
  ∀ n, P5829479021502653349.a n = A253563 n

end A253563

/-! ## A253563.P6564123301420513639

`A163511(A049773(2*n+1)-1)`
-/

namespace A253563.P6564123301420513639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (A049773 (2 * n + 1) - 1).toNat

end

end A253563.P6564123301420513639

namespace A253563

/-- `A163511(A049773(2*n+1)-1)` -/
def P6564123301420513639.Spec : Prop :=
  ∀ n, P6564123301420513639.a n = A253563 n

end A253563

/-! ## A253563.P14470291000354374718

`A005940(A056539(2*n)/2+1)`
-/

namespace A253563.P14470291000354374718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (SequenceMachineLib.roundAway ((A056539 (2 * n) : ℚ) / 2 + 1)).toNat

end

end A253563.P14470291000354374718

namespace A253563

/-- `A005940(A056539(2*n)/2+1)` -/
def P14470291000354374718.Spec : Prop :=
  ∀ n, P14470291000354374718.a n = A253563 n

end A253563

/-! ## A253563.P7852853150996437124

`a(A025480(n))*A006530(A163511(n))` with `a(0)=1`
-/

namespace A253563.P7852853150996437124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A025480 n).toNat * A006530 (A163511 n).toNat

end

end A253563.P7852853150996437124

namespace A253563

/-- `a(A025480(n))*A006530(A163511(n))` -/
def P7852853150996437124.Spec : Prop :=
  ∀ n, P7852853150996437124.a n = A253563 n

end A253563

/-! ## A253563.P4560432116839849196

`A241916(A163511(n))`
-/

namespace A253563.P4560432116839849196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241916 (A163511 n).toNat

end

end A253563.P4560432116839849196

namespace A253563

/-- `A241916(A163511(n))` -/
def P4560432116839849196.Spec : Prop :=
  ∀ n, P4560432116839849196.a n = A253563 n

end A253563

/-! ## A253563.P17827730217162089745

`A241916(A364258(n)+n)`
-/

namespace A253563.P17827730217162089745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241916 (A364258 n + (n : ℤ)).toNat

end

end A253563.P17827730217162089745

namespace A253563

/-- `A241916(A364258(n)+n)` -/
def P17827730217162089745.Spec : Prop :=
  ∀ n, P17827730217162089745.a n = A253563 n

end A253563

/-! ## A253563.P187722042800088951

`A241916(A075157(A006068(n))+1)`
-/

namespace A253563.P187722042800088951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241916 (A075157 (A006068 n).toNat + 1).toNat

end

end A253563.P187722042800088951

namespace A253563

/-- `A241916(A075157(A006068(n))+1)` -/
def P187722042800088951.Spec : Prop :=
  ∀ n, P187722042800088951.a n = A253563 n

end A253563

/-! ## A253563.P5310994545320270853

`∑{d}[A005940(n+1), A329034(#)]`
-/

namespace A253563.P5310994545320270853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A329034 d

end

end A253563.P5310994545320270853

namespace A253563

/-- `∑{d}[A005940(n+1), A329034(#)]` -/
def P5310994545320270853.Spec : Prop :=
  ∀ n, P5310994545320270853.a n = A253563 n

end A253563

/-! ## A253563.P7352221453478752256

`A122111(A064216(A244154(n)))`
-/

namespace A253563.P7352221453478752256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A064216 (A244154 n).toNat).toNat

end

end A253563.P7352221453478752256

namespace A253563

/-- `A122111(A064216(A244154(n)))` -/
def P7352221453478752256.Spec : Prop :=
  ∀ n, P7352221453478752256.a n = A253563 n

end A253563

/-! ## A253563.P8535715655914901956

`A122111(A241916(A253565(n)))`
-/

namespace A253563.P8535715655914901956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A241916 (A253565 n).toNat).toNat

end

end A253563.P8535715655914901956

namespace A253563

/-- `A122111(A241916(A253565(n)))` -/
def P8535715655914901956.Spec : Prop :=
  ∀ n, P8535715655914901956.a n = A253563 n

end A253563

/-!
# A253564: Permutation of natural numbers: a(n) = A156552(A122111(n)).

The programs for A253564, the canonical program `A253564.P2152431909121566970` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253564 has offset 1).

The definition of A253564 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, A156552, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A253564.P2152431909121566970

`A156552(A122111(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A253564

/-- `A156552(A122111(n+1))` -/
def P2152431909121566970.Spec : Prop :=
  ∀ n, P2152431909121566970.a n = A253564 (n + 1)

theorem P2152431909121566970.correct : P2152431909121566970.Spec := by
  intro n
  simp only [A253564, Nat.add_sub_cancel]

end A253564

/-! ## A253564.P13847389491819748844

`∑{d}[n+1, A297172(#)]`
-/

namespace A253564.P13847389491819748844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A297172 d

end

end A253564.P13847389491819748844

namespace A253564

/-- `∑{d}[n+1, A297172(#)]` -/
def P13847389491819748844.Spec : Prop :=
  ∀ n, P13847389491819748844.a n = A253564 (n + 1)

end A253564

/-! ## A253564.P2890115639321777087

`A156552(n+1)+A243071(n+1)-A253566(n+1)`
-/

namespace A253564.P2890115639321777087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1) + (A243071 (n + 1) - A253566 (n + 1))

end

end A253564.P2890115639321777087

namespace A253564

/-- `A156552(n+1)+A243071(n+1)-A253566(n+1)` -/
def P2890115639321777087.Spec : Prop :=
  ∀ n, P2890115639321777087.a n = A253564 (n + 1)

end A253564

/-! ## A253564.P3898218957909449126

`∑{d}[n+1, A297171(#)]+A156552(n+1)-A253566(n+1)`
-/

namespace A253564.P3898218957909449126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A297171 d + (A156552 (n + 1) - A253566 (n + 1))

end

end A253564.P3898218957909449126

namespace A253564

/-- `∑{d}[n+1, A297171(#)]+A156552(n+1)-A253566(n+1)` -/
def P3898218957909449126.Spec : Prop :=
  ∀ n, P3898218957909449126.a n = A253564 (n + 1)

end A253564

/-! ## A253564.P12950529412492007572

`A332811(A108548(n+1))+A156552(n+1)-A253566(n+1)`
-/

namespace A253564.P12950529412492007572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332811 (A108548 (n + 1)).toNat + (A156552 (n + 1) - A253566 (n + 1))

end

end A253564.P12950529412492007572

namespace A253564

/-- `A332811(A108548(n+1))+A156552(n+1)-A253566(n+1)` -/
def P12950529412492007572.Spec : Prop :=
  ∀ n, P12950529412492007572.a n = A253564 (n + 1)

end A253564

/-! ## A253564.P10563973357054824692

`A332816(A108548(n+1))-(A253566(n+1)-A243071(n+1))`
-/

namespace A253564.P10563973357054824692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332816 (A108548 (n + 1)).toNat - (A253566 (n + 1) - A243071 (n + 1))

end

end A253564.P10563973357054824692

namespace A253564

/-- `A332816(A108548(n+1))-(A253566(n+1)-A243071(n+1))` -/
def P10563973357054824692.Spec : Prop :=
  ∀ n, P10563973357054824692.a n = A253564 (n + 1)

end A253564

/-! ## A253564.P18436782526852133375

`2*A324104(n+1)-A324103(n+1)-(A253566(n+1)-A243071(n+1))`
-/

namespace A253564.P18436782526852133375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A324104 (n + 1) - A324103 (n + 1) - (A253566 (n + 1) - A243071 (n + 1))

end

end A253564.P18436782526852133375

namespace A253564

/-- `2*A324104(n+1)-A324103(n+1)-(A253566(n+1)-A243071(n+1))` -/
def P18436782526852133375.Spec : Prop :=
  ∀ n, P18436782526852133375.a n = A253564 (n + 1)

end A253564

/-! ## A253564.P4679005511870520461

`A156552(n+1)+A245611(A243501(n+1)/2)-A253566(n+1)`
-/

namespace A253564.P4679005511870520461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1) + (A245611 (SequenceMachineLib.roundAway ((A243501 (n + 1) : ℚ) / 2)).toNat - A253566 (n + 1))

end

end A253564.P4679005511870520461

namespace A253564

/-- `A156552(n+1)+A245611(A243501(n+1)/2)-A253566(n+1)` -/
def P4679005511870520461.Spec : Prop :=
  ∀ n, P4679005511870520461.a n = A253564 (n + 1)

end A253564

/-! ## A253564.P4601397442785344604

`A243071(A241916(n+1))`
-/

namespace A253564.P4601397442785344604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (A241916 (n + 1)).toNat

end

end A253564.P4601397442785344604

namespace A253564

/-- `A243071(A241916(n+1))` -/
def P4601397442785344604.Spec : Prop :=
  ∀ n, P4601397442785344604.a n = A253564 (n + 1)

end A253564

/-!
# A253565: Permutation of natural numbers: a(0) = 1, a(1) = 2; after which, a(2n) = A253550(a(n)), a(2n+1) = A253560(a(n)).

The programs for A253565, the canonical program `A253565.P8574352921850595945` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253565 has offset 0).

The definition of A253565 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A253565.P8574352921850595945

`A122111(A163511(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A253565

/-- `A122111(A163511(n))` -/
def P8574352921850595945.Spec : Prop :=
  ∀ n, P8574352921850595945.a n = A253565 n

theorem P8574352921850595945.correct : P8574352921850595945.Spec := by
  intro n
  simp only [A253565]

end A253565

/-! ## A253565.P12641530648498804568

`A005940(A145342(n+1))`
-/

namespace A253565.P12641530648498804568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A145342 (n + 1)).toNat

end

end A253565.P12641530648498804568

namespace A253565

/-- `A005940(A145342(n+1))` -/
def P12641530648498804568.Spec : Prop :=
  ∀ n, P12641530648498804568.a n = A253565 n

end A253565

/-! ## A253565.P5914906416751650414

`A243353(A341916(n))`
-/

namespace A253565.P5914906416751650414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243353 (A341916 n).toNat

end

end A253565.P5914906416751650414

namespace A253565

/-- `A243353(A341916(n))` -/
def P5914906416751650414.Spec : Prop :=
  ∀ n, P5914906416751650414.a n = A253565 n

end A253565

/-! ## A253565.P3408206183706388936

`A005940(A030109(2*n+1)+1)`
-/

namespace A253565.P3408206183706388936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A030109 (2 * n + 1) + 1).toNat

end

end A253565.P3408206183706388936

namespace A253565

/-- `A005940(A030109(2*n+1)+1)` -/
def P3408206183706388936.Spec : Prop :=
  ∀ n, P3408206183706388936.a n = A253565 n

end A253565

/-! ## A253565.P13551875808173719624

`A005940(A030101(2*n+1)+1)/2`
-/

namespace A253565.P13551875808173719624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005940 (A030101 (2 * n + 1) + 1).toNat : ℚ) / 2

end

end A253565.P13551875808173719624

namespace A253565

/-- `A005940(A030101(2*n+1)+1)/2` -/
def P13551875808173719624.Spec : Prop :=
  ∀ n, P13551875808173719624.a n = (A253565 n : ℚ)

end A253565

/-! ## A253565.P11704887569361539264

`A005940(A057889(2*n+1)+1)/2`
-/

namespace A253565.P11704887569361539264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005940 (A057889 (2 * n + 1) + 1).toNat : ℚ) / 2

end

end A253565.P11704887569361539264

namespace A253565

/-- `A005940(A057889(2*n+1)+1)/2` -/
def P11704887569361539264.Spec : Prop :=
  ∀ n, P11704887569361539264.a n = (A253565 n : ℚ)

end A253565

/-! ## A253565.P18037219684193734251

`A005940(A160588(A030101(2*n+1)))`
-/

namespace A253565.P18037219684193734251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A160588 (A030101 (2 * n + 1)).toNat).toNat

end

end A253565.P18037219684193734251

namespace A253565

/-- `A005940(A160588(A030101(2*n+1)))` -/
def P18037219684193734251.Spec : Prop :=
  ∀ n, P18037219684193734251.a n = A253565 n

end A253565

/-! ## A253565.P16857481668191727570

`A005940(A153152(A153141(A059893(n+1))))`
-/

namespace A253565.P16857481668191727570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A153152 (A153141 (A059893 (n + 1)).toNat).toNat).toNat

end

end A253565.P16857481668191727570

namespace A253565

/-- `A005940(A153152(A153141(A059893(n+1))))` -/
def P16857481668191727570.Spec : Prop :=
  ∀ n, P16857481668191727570.a n = A253565 n

end A253565

/-! ## A253565.P12438482917131473523

`A005940(A059893(A153142(A153151(n+1))))`
-/

namespace A253565.P12438482917131473523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A059893 (A153142 (A153151 (n + 1)).toNat).toNat).toNat

end

end A253565.P12438482917131473523

namespace A253565

/-- `A005940(A059893(A153142(A153151(n+1))))` -/
def P12438482917131473523.Spec : Prop :=
  ∀ n, P12438482917131473523.a n = A253565 n

end A253565

/-! ## A253565.P12961803021872169134

`A241916(A005940(n+1))`
-/

namespace A253565.P12961803021872169134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241916 (A005940 (n + 1)).toNat

end

end A253565.P12961803021872169134

namespace A253565

/-- `A241916(A005940(n+1))` -/
def P12961803021872169134.Spec : Prop :=
  ∀ n, P12961803021872169134.a n = A253565 n

end A253565

/-! ## A253565.P12344761667185783265

`A293448(A005940(2*(n+1)))/2`
-/

namespace A253565.P12344761667185783265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293448 (A005940 (2 * (n + 1))).toNat : ℚ) / 2

end

end A253565.P12344761667185783265

namespace A253565

/-- `A293448(A005940(2*(n+1)))/2` -/
def P12344761667185783265.Spec : Prop :=
  ∀ n, P12344761667185783265.a n = (A253565 n : ℚ)

end A253565

/-!
# A253566: Permutation of natural numbers: a(n) = A243071(A122111(n)).

The programs for A253566, the canonical program `A253566.P9103107584596957047` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253566 has offset 1).

The definition of A253566 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1223 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253566.P11592795344160451591

`A336120(n+1)+A336125(n+1)`
-/

namespace A253566.P11592795344160451591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336120 (n + 1) + A336125 (n + 1)

end

end A253566.P11592795344160451591

namespace A253566

/-- `A336120(n+1)+A336125(n+1)` -/
def P11592795344160451591.Spec : Prop :=
  ∀ n, P11592795344160451591.a n = A253566 (n + 1)

end A253566

/-! ## A253566.P8431759041664400564

`A243071(A122111(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A253566.P8431759041664400564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (A122111 (n + 1)).toNat

end

end A253566.P8431759041664400564

namespace A253566

/-- `A243071(A122111(n+1))` -/
def P8431759041664400564.Spec : Prop :=
  ∀ n, P8431759041664400564.a n = A253566 (n + 1)

end A253566

/-! ## A253566.P9103107584596957047

`A055010(A252464(n+1))-A253564(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A253566

/-- `A055010(A252464(n+1))-A253564(n+1)` -/
def P9103107584596957047.Spec : Prop :=
  ∀ n, P9103107584596957047.a n = A253566 (n + 1)

theorem P9103107584596957047.correct : P9103107584596957047.Spec := by
  intro n
  simp only [A253566, Nat.add_sub_cancel]

end A253566

/-! ## A253566.P17222469674602099812

`A156552(n+1)+A243071(n+1)-A253564(n+1)`
-/

namespace A253566.P17222469674602099812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1) + (A243071 (n + 1) - A253564 (n + 1))

end

end A253566.P17222469674602099812

namespace A253566

/-- `A156552(n+1)+A243071(n+1)-A253564(n+1)` -/
def P17222469674602099812.Spec : Prop :=
  ∀ n, P17222469674602099812.a n = A253566 (n + 1)

end A253566

/-! ## A253566.P2572126084000724489

`A332816(A108548(n+1))-(A253564(n+1)-A243071(n+1))`
-/

namespace A253566.P2572126084000724489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332816 (A108548 (n + 1)).toNat - (A253564 (n + 1) - A243071 (n + 1))

end

end A253566.P2572126084000724489

namespace A253566

/-- `A332816(A108548(n+1))-(A253564(n+1)-A243071(n+1))` -/
def P2572126084000724489.Spec : Prop :=
  ∀ n, P2572126084000724489.a n = A253566 (n + 1)

end A253566

/-! ## A253566.P5123559910239202604

`2*A324104(n+1)-A324103(n+1)-(A253564(n+1)-A243071(n+1))`
-/

namespace A253566.P5123559910239202604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A324104 (n + 1) - A324103 (n + 1) - (A253564 (n + 1) - A243071 (n + 1))

end

end A253566.P5123559910239202604

namespace A253566

/-- `2*A324104(n+1)-A324103(n+1)-(A253564(n+1)-A243071(n+1))` -/
def P5123559910239202604.Spec : Prop :=
  ∀ n, P5123559910239202604.a n = A253566 (n + 1)

end A253566

/-! ## A253566.P15578471760679550222

`A329905(A361808(n+1))`
-/

namespace A253566.P15578471760679550222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329905 (A361808 (n + 1)).toNat

end

end A253566.P15578471760679550222

namespace A253566

/-- `A329905(A361808(n+1))` -/
def P15578471760679550222.Spec : Prop :=
  ∀ n, P15578471760679550222.a n = A253566 (n + 1)

end A253566

/-! ## A253566.P3966889664611594173

`A253564(2*(n+1))-A006257(A253564(2*(n+1)))`
-/

namespace A253566.P3966889664611594173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253564 (2 * (n + 1)) - A006257 (A253564 (2 * (n + 1))).toNat

end

end A253566.P3966889664611594173

namespace A253566

/-- `A253564(2*(n+1))-A006257(A253564(2*(n+1)))` -/
def P3966889664611594173.Spec : Prop :=
  ∀ n, P3966889664611594173.a n = A253566 (n + 1)

end A253566

/-! ## A253566.P15872574758627260730

`A156552(A241916(n+1))`
-/

namespace A253566.P15872574758627260730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A241916 (n + 1)).toNat

end

end A253566.P15872574758627260730

namespace A253566

/-- `A156552(A241916(n+1))` -/
def P15872574758627260730.Spec : Prop :=
  ∀ n, P15872574758627260730.a n = A253566 (n + 1)

end A253566

/-! ## A253566.P138129632891362647

`A156552(A293448(2*(n+1))/2)`
-/

namespace A253566.P138129632891362647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (SequenceMachineLib.roundAway ((A293448 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A253566.P138129632891362647

namespace A253566

/-- `A156552(A293448(2*(n+1))/2)` -/
def P138129632891362647.Spec : Prop :=
  ∀ n, P138129632891362647.a n = A253566 (n + 1)

end A253566

/-!
# A253567: Noncomposites together with such composites n = p_i * p_j * p_k * ... * p_u, p_i <= p_j <= p_k <= ... <= p_u, where there is at least one such pair of successive prime factors (when sorted into a nondecreasing order) that the square of the former is larger than the latter: (p_i)^2 > p_j or (p_j)^2 > p_k, etc.

The programs for A253567, there is no canonical definition to state claims against.
-/

/-! ## A253567.P6315155463581239971

`comp[A253569(n+1)-1]+1`
-/

namespace A253567.P6315155463581239971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253569 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A253567.P6315155463581239971

/-! ## A253567.P5345160589997600141

`comp[A253569(A032742(n+1))%((n+1)*Δ[n^3])]`
-/

namespace A253567.P5345160589997600141
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253569 (A032742 (n + 1)).toNat) ((n + 1 : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ)))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A253567.P5345160589997600141

/-! ## A253567.P7297812807654055691

`eq[char[A253569(n+1)], A000007(n)]`
-/

namespace A253567.P7297812807654055691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253569 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A253567.P7297812807654055691

/-! ## A253567.P13978950464489548626

`eq[char[A253569(n+1)], A000038(n)]`
-/

namespace A253567.P13978950464489548626
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253569 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A253567.P13978950464489548626

/-! ## A253567.P6693228390764791030

`eq[A000123(n)%2, char[A253569(n+1)]]`
-/

namespace A253567.P6693228390764791030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000123 n) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253569 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A253567.P6693228390764791030

/-! ## A253567.P8576695370015831838

`comp[A232009(n+1)]`
-/

namespace A253567.P8576695370015831838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A253567.P8576695370015831838

/-!
# A253568: Even bisection of A122111: a(n) = A122111(2*n).

The programs for A253568, the canonical program `A253568.P15723991707843801248` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253568 has offset 1).

The definition of A253568 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A253568.P15723991707843801248

`A122111(2*(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A253568

/-- `A122111(2*(n+1))` -/
def P15723991707843801248.Spec : Prop :=
  ∀ n, P15723991707843801248.a n = A253568 (n + 1)

theorem P15723991707843801248.correct : P15723991707843801248.Spec := by
  intro n
  simp only [A253568, Nat.add_sub_cancel]

end A253568

/-! ## A253568.P1230840355308865199

`∑{d}[2*(n+1), A329034(#)]`
-/

namespace A253568.P1230840355308865199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A329034 d

end

end A253568.P1230840355308865199

namespace A253568

/-- `∑{d}[2*(n+1), A329034(#)]` -/
def P1230840355308865199.Spec : Prop :=
  ∀ n, P1230840355308865199.a n = A253568 (n + 1)

end A253568

/-! ## A253568.P16410506274859212207

`A354867(2*(n+1))-A354866(2*(n+1))`
-/

namespace A253568.P16410506274859212207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354867 (2 * (n + 1)) - A354866 (2 * (n + 1))

end

end A253568.P16410506274859212207

namespace A253568

/-- `A354867(2*(n+1))-A354866(2*(n+1))` -/
def P16410506274859212207.Spec : Prop :=
  ∀ n, P16410506274859212207.a n = A253568 (n + 1)

end A253568

/-! ## A253568.P6752990078739923473

`A331595(2*(n+1))*A331598(2*(n+1))`
-/

namespace A253568.P6752990078739923473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331595 (2 * (n + 1)) * A331598 (2 * (n + 1))

end

end A253568.P6752990078739923473

namespace A253568

/-- `A331595(2*(n+1))*A331598(2*(n+1))` -/
def P6752990078739923473.Spec : Prop :=
  ∀ n, P6752990078739923473.a n = A253568 (n + 1)

end A253568

/-! ## A253568.P6598274853968104525

`A181821(2*(n+1))/A181821(A052126(2*(n+1)))`
-/

namespace A253568.P6598274853968104525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181821 (2 * (n + 1)) : ℚ) / (A181821 (A052126 (2 * (n + 1))).toNat : ℚ)

end

end A253568.P6598274853968104525

namespace A253568

/-- `A181821(2*(n+1))/A181821(A052126(2*(n+1)))` -/
def P6598274853968104525.Spec : Prop :=
  ∀ n, P6598274853968104525.a n = (A253568 (n + 1) : ℚ)

end A253568

/-! ## A253568.P13554601641541527512

`A000027(2*(n+1))-A352491(2*(n+1))`
-/

namespace A253568.P13554601641541527512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (2 * (n + 1)) - A352491 (2 * (n + 1))

end

end A253568.P13554601641541527512

namespace A253568

/-- `A000027(2*(n+1))-A352491(2*(n+1))` -/
def P13554601641541527512.Spec : Prop :=
  ∀ n, P13554601641541527512.a n = A253568 (n + 1)

theorem P13554601641541527512.correct : P13554601641541527512.Spec := by
  intro n
  simp only [A253568, Nat.add_sub_cancel, A253568.P13554601641541527512.a, A253568.P15723991707843801248.a, A000027, A000027.P10331202704469894836.a, A122111, A122111.P18124015185857335041.a, A352491, A352491.P13151427470145142033.a, A064989, A064989.P13349672914146769936.a, A105560, A105560.P10934841406439867276.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A008578, A008578.P3639467937083264764.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A006530, A006530.P13372528560459906635.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A253568

/-! ## A253568.P8849503108489762337

`A241909(2*(n+1))*A331598(2*(n+1))/A331599(2*(n+1))`
-/

namespace A253568.P8849503108489762337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241909 (2 * (n + 1)) * A331598 (2 * (n + 1)) : ℚ) / (A331599 (2 * (n + 1)) : ℚ)

end

end A253568.P8849503108489762337

namespace A253568

/-- `A241909(2*(n+1))*A331598(2*(n+1))/A331599(2*(n+1))` -/
def P8849503108489762337.Spec : Prop :=
  ∀ n, P8849503108489762337.a n = (A253568 (n + 1) : ℚ)

end A253568

/-! ## A253568.P4207267869610720867

`A279352(2*(n+1))`
-/

namespace A253568.P4207267869610720867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279352 (2 * (n + 1))

end

end A253568.P4207267869610720867

namespace A253568

/-- `A279352(2*(n+1))` -/
def P4207267869610720867.Spec : Prop :=
  ∀ n, P4207267869610720867.a n = A253568 (n + 1)

end A253568

/-! ## A253568.P16379665510295240654

`A122111(Δ[A002378(n)])%A003945(n+1)`
-/

namespace A253568.P16379665510295240654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122111 (f1 (n + 1) - f1 n).toNat) (A003945 (n + 1))

end

end A253568.P16379665510295240654

namespace A253568

/-- `A122111(Δ[A002378(n)])%A003945(n+1)` -/
def P16379665510295240654.Spec : Prop :=
  ∀ n, P16379665510295240654.a n = A253568 (n + 1)

end A253568

/-! ## A253568.P15159659223168572189

`A122111(Δ[A002378(n)])%A041128(n)`
-/

namespace A253568.P15159659223168572189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122111 (f1 (n + 1) - f1 n).toNat) (A041128 n)

end

end A253568.P15159659223168572189

namespace A253568

/-- `A122111(Δ[A002378(n)])%A041128(n)` -/
def P15159659223168572189.Spec : Prop :=
  ∀ n, P15159659223168572189.a n = A253568 (n + 1)

end A253568

/-! ## A253568.P11162385708308226222

`A181815(A361808(2*(n+1)))`
-/

namespace A253568.P11162385708308226222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181815 (A361808 (2 * (n + 1))).toNat

end

end A253568.P11162385708308226222

namespace A253568

/-- `A181815(A361808(2*(n+1)))` -/
def P11162385708308226222.Spec : Prop :=
  ∀ n, P11162385708308226222.a n = A253568 (n + 1)

end A253568

/-!
# A253569: Composite numbers n = p_i * p_j * p_k * ... * p_u, p_i <= p_j <= p_k <= ... <= p_u, where each successive prime factor (when sorted into a nondecreasing order) is greater than the square of the previous: (p_i)^2 < p_j, (p_j)^2 < p_k, etc.

The programs for A253569, there is no canonical definition to state claims against.
-/

/-! ## A253569.P4685942015108262199

`A020725(comp[A253567(n+1)-1])`
-/

namespace A253569.P4685942015108262199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253567 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A253569.P4685942015108262199

/-! ## A253569.P7154605477183496936

`A153152(comp[A253567(n+1)-1])`
-/

namespace A253569.P7154605477183496936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253567 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A253569.P7154605477183496936

/-!
# A253571: Total number of even outdegree nodes among all labeled rooted trees on n nodes.

The programs for A253571, there is no canonical definition to state claims against.
-/

/-! ## A253571.P12597459640050918996

`(n+1)*((n+1)^n+(n-1)^n)/2`
-/

namespace A253571.P12597459640050918996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((((n + 1) ^ n : ℤ) + ((n : ℤ) - 1) ^ n : ℚ) / 2)

end

end A253571.P12597459640050918996

/-! ## A253571.P8272710712360099226

`A062024(n)+n*A062024(n)`
-/

namespace A253571.P8272710712360099226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062024 n + (n : ℤ) * A062024 n

end

end A253571.P8272710712360099226

/-! ## A253571.P5101838993036179506

`lcm(n+1, (n+1)*A084061(A034856(n+1)))`
-/

namespace A253571.P5101838993036179506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) ((n + 1 : ℤ) * A084061 (A034856 (n + 1)).toNat)

end

end A253571.P5101838993036179506

/-! ## A253571.P1414827285978622762

`A281596(n+1)+A065440(n)+A007778(n)`
-/

namespace A253571.P1414827285978622762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281596 (n + 1) + (A065440 n + A007778 n)

end

end A253571.P1414827285978622762

/-! ## A253571.P8233110355731004032

`A065440(n+1)+A281596(n+1)+A065440(n)`
-/

namespace A253571.P8233110355731004032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065440 (n + 1) + (A281596 (n + 1) + A065440 n)

end

end A253571.P8233110355731004032

/-! ## A253571.P4150131363849046406

`A278105(A018252(n+2))+(n+1)*A084061(A034856(n+1))`
-/

namespace A253571.P4150131363849046406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278105 (A018252 (n + 2)).toNat + (n + 1 : ℤ) * A084061 (A034856 (n + 1)).toNat

end

end A253571.P4150131363849046406

/-! ## A253571.P3941538565759065125

`A278105(A017425(n+4))+(n+1)*A084061(A034856(n+1))`
-/

namespace A253571.P3941538565759065125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278105 (A017425 (n + 4)).toNat + (n + 1 : ℤ) * A084061 (A034856 (n + 1)).toNat

end

end A253571.P3941538565759065125

/-!
# A253572: Rectangular array A read by upward antidiagonals in which row A(n) is the sequence of all numbers divisible by no prime exceeding prime(n).

The programs for A253572, there is no canonical definition to state claims against.
-/

/-! ## A253572.P10376342261424557667

`A052126(A125624(n+1))`
-/

namespace A253572.P10376342261424557667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A125624 (n + 1)).toNat

end

end A253572.P10376342261424557667

/-! ## A253572.P14886848906941753231

`A125624(n+1)/A104887(n+1)`
-/

namespace A253572.P14886848906941753231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125624 (n + 1) : ℚ) / (A104887 (n + 1) : ℚ)

end

end A253572.P14886848906941753231

/-! ## A253572.P138099556051171239

`A125624(n+1)/A000040(A004736(n+1))`
-/

namespace A253572.P138099556051171239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125624 (n + 1) : ℚ) / (A000040 (A004736 (n + 1)).toNat : ℚ)

end

end A253572.P138099556051171239

/-! ## A253572.P17305798129032014278

`A125624(n+1)/A000040(A025581(n)+1)`
-/

namespace A253572.P17305798129032014278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125624 (n + 1) : ℚ) / (A000040 (A025581 n + 1).toNat : ℚ)

end

end A253572.P17305798129032014278

/-! ## A253572.P17335873104939057095

`A125624(n+1)/A006530(A257252(n+1))`
-/

namespace A253572.P17335873104939057095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125624 (n + 1) : ℚ) / (A006530 (A257252 (n + 1)).toNat : ℚ)

end

end A253572.P17335873104939057095

/-! ## A253572.P14703525449145362835

`A125624(n+1)/A020639(A083140(n+2))`
-/

namespace A253572.P14703525449145362835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125624 (n + 1) : ℚ) / (A020639 (A083140 (n + 2)).toNat : ℚ)

end

end A253572.P14703525449145362835

/-! ## A253572.P4764746913271783361

`A125624(n+1)/A006530(2*A125624(n+1))`
-/

namespace A253572.P4764746913271783361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125624 (n + 1) : ℚ) / (A006530 (2 * A125624 (n + 1)).toNat : ℚ)

end

end A253572.P4764746913271783361

/-! ## A253572.P11822390861843340411

`A125624(n+1)/A000040(A001511(A054582(n)))`
-/

namespace A253572.P11822390861843340411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125624 (n + 1) : ℚ) / (A000040 (A001511 (A054582 n).toNat).toNat : ℚ)

end

end A253572.P11822390861843340411

/-!
# A253573: Rectangular array a(n,k) read by upwards antidiagonals: row A(n) is the result of applying the function defined in A098550 to the set comprising row n of A253572, for n >= 2.

The programs for A253573, there is no canonical definition to state claims against.
-/

/-! ## A253573.P2635292629091570700

`A098293(A002260(n+1)%Δ[A141214(n)])`
-/

namespace A253573.P2635292629091570700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098293 (Int.tmod (A002260 (n + 1)) (f1 (n + 1) - f1 n)).toNat

end

end A253573.P2635292629091570700

/-! ## A253573.P3336286016987385463

`A098293(A002260(n+1))*A298917(∑[n+1])`
-/

namespace A253573.P3336286016987385463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098293 (A002260 (n + 1)).toNat * A298917 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A253573.P3336286016987385463

/-! ## A253573.P5881574262733885633

`A001222(A101218(n+1))*A098293(A002260(n+1))`
-/

namespace A253573.P5881574262733885633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A101218 (n + 1)).toNat * A098293 (A002260 (n + 1)).toNat

end

end A253573.P5881574262733885633

/-! ## A253573.P5862178361872050492

`A040019(A306190(n+1))*A098293(A002260(n+1))`
-/

namespace A253573.P5862178361872050492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040019 (A306190 (n + 1)).toNat * A098293 (A002260 (n + 1)).toNat

end

end A253573.P5862178361872050492

/-! ## A253573.P9506258324464795650

`A098293(A002260(n+1))%A177695(n)`
-/

namespace A253573.P9506258324464795650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098293 (A002260 (n + 1)).toNat) (A177695 n)

end

end A253573.P9506258324464795650

/-!
# A253574: Primes p such that digits of p do not appear in p^4.

The programs for A253574, there is no canonical definition to state claims against.
-/

/-! ## A253574.P14546905763196218593

`p?[A111116(n+1)]`
-/

namespace A253574.P14546905763196218593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A253574.P14546905763196218593

/-! ## A253574.P2680298454919932693

`record[p?[A111116(A052938(n))]]`
-/

namespace A253574.P2680298454919932693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111116 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253574.P2680298454919932693

/-! ## A253574.P5740240515054366005

`filter[A111116(n+1), A010051(#)]`
-/

namespace A253574.P5740240515054366005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A253574.P5740240515054366005

/-! ## A253574.P2244730215537465154

`record[A020639(root(A113316(n+1), 4))]`
-/

namespace A253574.P2244730215537465154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A113316 (n + 1) : ℝ) ^ (1 / (4 : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253574.P2244730215537465154

/-!
# A253576: Primes p such that digits of p do not appear in p^7.

The programs for A253576, there is no canonical definition to state claims against.
-/

/-! ## A253576.P9627881561781169749

`p?[A281678(n+1)]`
-/

namespace A253576.P9627881561781169749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281678 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A253576.P9627881561781169749

/-!
# A253577: Primes p such that digits of p do not appear in p^8.

The programs for A253577, there is no canonical definition to state claims against.
-/

/-! ## A253577.P1118731703661628689

`p?[A253606(n+1)]`
-/

namespace A253577.P1118731703661628689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A253577.P1118731703661628689

/-!
# A253579: Centered pentagonal numbers (A005891) which are also centered octagonal numbers (A016754).

The programs for A253579, there is no canonical definition to state claims against.
-/

/-! ## A253579.P11499819896372288929

`(1-2*A253411(n+1))²`
-/

namespace A253579.P11499819896372288929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - 2 * A253411 (n + 1)) ^ 2

end

end A253579.P11499819896372288929

/-! ## A253579.P5215705592758287132

`A254333(A014601(n)+1)`
-/

namespace A253579.P5215705592758287132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254333 (A014601 n + 1).toNat

end

end A253579.P5215705592758287132

/-! ## A253579.P2187409202226695826

`A254333(A042948(n+1))`
-/

namespace A253579.P2187409202226695826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254333 (A042948 (n + 1)).toNat

end

end A253579.P2187409202226695826

/-! ## A253579.P9524900933040385934

`A254333(A338062(n+1))`
-/

namespace A253579.P9524900933040385934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254333 (A338062 (n + 1)).toNat

end

end A253579.P9524900933040385934

/-! ## A253579.P4947202607199275181

`A254333(∑[gcd(3, A000051(n))])`
-/

namespace A253579.P4947202607199275181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A000051 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254333 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A253579.P4947202607199275181

/-!
# A253580: A fractal tree, read by rows: for n > 1: T(n,0) = T(n-1,0)+2, T(n,2*n) = T(n-1,0)+3, and for k=1..2*n-1: T(n,k) = T(n-1,k-1).

The programs for A253580, the canonical program `A253580.P15714201682578060032` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253580 has offset 0).

The definition of A253580 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253580.P15714201682578060032

`A004741(n+1)-1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A253580

/-- `A004741(n+1)-1` -/
def P15714201682578060032.Spec : Prop :=
  ∀ n, P15714201682578060032.a n = A253580 n

theorem P15714201682578060032.correct : P15714201682578060032.Spec := by
  intro n
  simp only [A253580]

end A253580

/-! ## A253580.P4989627058642139405

`A170949(n+1)-floor(sqrt(n))²-1`
-/

namespace A253580.P4989627058642139405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170949 (n + 1) - (Nat.sqrt n ^ 2 : ℤ) - 1

end

end A253580.P4989627058642139405

namespace A253580

/-- `A170949(n+1)-floor(sqrt(n))²-1` -/
def P4989627058642139405.Spec : Prop :=
  ∀ n, P4989627058642139405.a n = A253580 n

end A253580

/-! ## A253580.P17204638313265250776

`∑[A253607(n)]-A253607(n)`
-/

namespace A253580.P17204638313265250776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A253607 n

end

end A253580.P17204638313265250776

namespace A253580

/-- `∑[A253607(n)]-A253607(n)` -/
def P17204638313265250776.Spec : Prop :=
  ∀ n, P17204638313265250776.a n = A253580 n

end A253580

/-! ## A253580.P3256253651771354690

`A071797(A170949(n+1))-1`
-/

namespace A253580.P3256253651771354690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (A170949 (n + 1)).toNat - 1

end

end A253580.P3256253651771354690

namespace A253580

/-- `A071797(A170949(n+1))-1` -/
def P3256253651771354690.Spec : Prop :=
  ∀ n, P3256253651771354690.a n = A253580 n

end A253580

/-! ## A253580.P8920475218465625801

`A004739(n+1)+A053615(n)-1`
-/

namespace A253580.P8920475218465625801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (n + 1) + (A053615 n - 1)

end

end A253580.P8920475218465625801

namespace A253580

/-- `A004739(n+1)+A053615(n)-1` -/
def P8920475218465625801.Spec : Prop :=
  ∀ n, P8920475218465625801.a n = A253580 n

theorem P8920475218465625801.correct : P8920475218465625801.Spec := by
  intro n
  simp only [A253580, Nat.add_sub_cancel, A253580.P8920475218465625801.a, A253580.P15714201682578060032.a, A004739, A004739.P530599446870545718.a, A004741, A004741.P8751127324978194226.a, A053615, A053615.P2131948520812356575.a, A004737, A004737.P12416270940268694316.a, A028391, A028391.P17198271841435315725.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A253580

/-! ## A253580.P9658918182109287145

`A170949(n+1)-(A048760(n)+1)`
-/

namespace A253580.P9658918182109287145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170949 (n + 1) - (A048760 n + 1)

end

end A253580.P9658918182109287145

namespace A253580

/-- `A170949(n+1)-(A048760(n)+1)` -/
def P9658918182109287145.Spec : Prop :=
  ∀ n, P9658918182109287145.a n = A253580 n

theorem P9658918182109287145.correct : P9658918182109287145.Spec := by
  intro n
  simp only [A253580, Nat.add_sub_cancel, A253580.P9658918182109287145.a, A253580.P15714201682578060032.a, A004741, A004741.P8751127324978194226.a, A048760, A048760.P9900115946027900201.a, A170949, A170949.P7834340339358711823.a, A000196, A000196.P15434771586934192083.a, A000290, A000290.P12206242496348924484.a, A004739, A004739.P530599446870545718.a, A053615, A053615.P2131948520812356575.a, A004737, A004737.P12416270940268694316.a, A028391, A028391.P17198271841435315725.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A253580

/-! ## A253580.P6700803835478932765

`2*A053615(n)-A079813(n+1)`
-/

namespace A253580.P6700803835478932765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053615 n - A079813 (n + 1)

end

end A253580.P6700803835478932765

namespace A253580

/-- `2*A053615(n)-A079813(n+1)` -/
def P6700803835478932765.Spec : Prop :=
  ∀ n, P6700803835478932765.a n = A253580 n

end A253580

/-! ## A253580.P11853089490800048312

`A004738(n+1)+A004739(n+1)-2`
-/

namespace A253580.P11853089490800048312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004738 (n + 1) + (A004739 (n + 1) - 2)

end

end A253580.P11853089490800048312

namespace A253580

/-- `A004738(n+1)+A004739(n+1)-2` -/
def P11853089490800048312.Spec : Prop :=
  ∀ n, P11853089490800048312.a n = A253580 n

end A253580

/-! ## A253580.P14471403359361261680

`(A004741(n+1)%A000040(n+1)+n)%(n+1)`
-/

namespace A253580.P14471403359361261680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A004741 (n + 1)) (A000040 (n + 1)) + (n : ℤ)) (n + 1 : ℤ)

end

end A253580.P14471403359361261680

namespace A253580

/-- `(A004741(n+1)%A000040(n+1)+n)%(n+1)` -/
def P14471403359361261680.Spec : Prop :=
  ∀ n, P14471403359361261680.a n = A253580 n

end A253580

/-! ## A253580.P3274063183571444402

`A053615(n)+A053188(A056847(n+1))`
-/

namespace A253580.P3274063183571444402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 n + A053188 (A056847 (n + 1)).toNat

end

end A253580.P3274063183571444402

namespace A253580

/-- `A053615(n)+A053188(A056847(n+1))` -/
def P3274063183571444402.Spec : Prop :=
  ∀ n, P3274063183571444402.a n = A253580 n

end A253580

/-! ## A253580.P17273952524966808339

`A053615(n-A055086(n))+A053615(n)`
-/

namespace A253580.P17273952524966808339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 ((n : ℤ) - A055086 n).toNat + A053615 n

end

end A253580.P17273952524966808339

namespace A253580

/-- `A053615(n-A055086(n))+A053615(n)` -/
def P17273952524966808339.Spec : Prop :=
  ∀ n, P17273952524966808339.a n = A253580 n

end A253580

/-! ## A253580.P1772150026124404876

`A053615(A079813(n+1)+n)+A053615(n)`
-/

namespace A253580.P1772150026124404876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A079813 (n + 1) + (n : ℤ)).toNat + A053615 n

end

end A253580.P1772150026124404876

namespace A253580

/-- `A053615(A079813(n+1)+n)+A053615(n)` -/
def P1772150026124404876.Spec : Prop :=
  ∀ n, P1772150026124404876.a n = A253580 n

end A253580

/-! ## A253580.P9098239643220961990

`A065359(A020639(lcm(2, n+1)))+A004741(n+1)`
-/

namespace A253580.P9098239643220961990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A020639 (Nat.lcm 2 (n + 1))).toNat + A004741 (n + 1)

end

end A253580.P9098239643220961990

namespace A253580

/-- `A065359(A020639(lcm(2, n+1)))+A004741(n+1)` -/
def P9098239643220961990.Spec : Prop :=
  ∀ n, P9098239643220961990.a n = A253580 n

end A253580

/-! ## A253580.P1490952397686943111

`A053615(A049068(n+1))+A053615(n)-1`
-/

namespace A253580.P1490952397686943111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A049068 (n + 1)).toNat + (A053615 n - 1)

end

end A253580.P1490952397686943111

namespace A253580

/-- `A053615(A049068(n+1))+A053615(n)-1` -/
def P1490952397686943111.Spec : Prop :=
  ∀ n, P1490952397686943111.a n = A253580 n

end A253580

/-! ## A253580.P9040511814508129104

`A004739(n+1)+A004739(A049068(n+1))-2`
-/

namespace A253580.P9040511814508129104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (n + 1) + (A004739 (A049068 (n + 1)).toNat - 2)

end

end A253580.P9040511814508129104

namespace A253580

/-- `A004739(n+1)+A004739(A049068(n+1))-2` -/
def P9040511814508129104.Spec : Prop :=
  ∀ n, P9040511814508129104.a n = A253580 n

end A253580

/-! ## A253580.P14457213775811539822

`A003056(C(A004741(n+1), 2))`
-/

namespace A253580.P14457213775811539822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Nat.choose (A004741 (n + 1)).toNat 2)

end

end A253580.P14457213775811539822

namespace A253580

/-- `A003056(C(A004741(n+1), 2))` -/
def P14457213775811539822.Spec : Prop :=
  ∀ n, P14457213775811539822.a n = A253580 n

end A253580

/-! ## A253580.P5245747646260066968

`A057554(4*n-A055086(n)+1)`
-/

namespace A253580.P5245747646260066968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 ((4 * n : ℤ) - A055086 n + 1).toNat

end

end A253580.P5245747646260066968

namespace A253580

/-- `A057554(4*n-A055086(n)+1)` -/
def P5245747646260066968.Spec : Prop :=
  ∀ n, P5245747646260066968.a n = A253580 n

end A253580

/-! ## A253580.P14920678358031071760

`A003056(A004741(n+1)*A053615(n))`
-/

namespace A253580.P14920678358031071760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A004741 (n + 1) * A053615 n).toNat

end

end A253580.P14920678358031071760

namespace A253580

/-- `A003056(A004741(n+1)*A053615(n))` -/
def P14920678358031071760.Spec : Prop :=
  ∀ n, P14920678358031071760.a n = A253580 n

end A253580

/-! ## A253580.P10934078666282477919

`A220073(A007606(n+1))-1`
-/

namespace A253580.P10934078666282477919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220073 (A007606 (n + 1)).toNat - 1

end

end A253580.P10934078666282477919

namespace A253580

/-- `A220073(A007606(n+1))-1` -/
def P10934078666282477919.Spec : Prop :=
  ∀ n, P10934078666282477919.a n = A253580 n

end A253580

/-! ## A253580.P9170145363520499781

`A049581(A002378(A000194(n+1))+n)-1`
-/

namespace A253580.P9170145363520499781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 (A002378 (A000194 (n + 1)).toNat + (n : ℤ)).toNat - 1

end

end A253580.P9170145363520499781

namespace A253580

/-- `A049581(A002378(A000194(n+1))+n)-1` -/
def P9170145363520499781.Spec : Prop :=
  ∀ n, P9170145363520499781.a n = A253580 n

end A253580

/-!
# A253581: a(n) = A252867(n) AND A252867(n+2).

The programs for A253581, there is no canonical definition to state claims against.
-/

/-! ## A253581.P3690641935603792746

`and(A252867(n+2), A252867(n))`
-/

namespace A253581.P3690641935603792746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A252867 (n + 2)) (A252867 n)

end

end A253581.P3690641935603792746

/-! ## A253581.P14546881780486965451

`A157230(A289892(n)+A318275(n+1)²)`
-/

namespace A253581.P14546881780486965451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157230 (A289892 n + A318275 (n + 1) ^ 2).toNat

end

end A253581.P14546881780486965451

/-!
# A253582: a(n) = A252867(n) OR A252867(n+1).

The programs for A253582, there is no canonical definition to state claims against.
-/

/-! ## A253582.P155269235063418193

`A252867(n+1)+A252867(n)`
-/

namespace A253582.P155269235063418193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252867 (n + 1) + A252867 n

end

end A253582.P155269235063418193

/-! ## A253582.P18198236869050811130

`xor(A252867(n-log2(1/2)), A252867(n))`
-/

namespace A253582.P18198236869050811130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A252867 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat) (A252867 n)

end

end A253582.P18198236869050811130

/-! ## A253582.P2068818227715499766

`or(A252867(ϕ²-(ϕ-n)), A252867(n))`
-/

namespace A253582.P2068818227715499766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A252867 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat) (A252867 n)

end

end A253582.P2068818227715499766

/-! ## A253582.P3257070878795035918

`A048675(A252868(n+1))+A048675(A252868(n+2))`
-/

namespace A253582.P3257070878795035918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A252868 (n + 1)).toNat + A048675 (A252868 (n + 2)).toNat

end

end A253582.P3257070878795035918

/-!
# A253584: Distinct terms in A253443.

The programs for A253584, there is no canonical definition to state claims against.
-/

/-! ## A253584.P6692458291681765984

`record[A253443(or(4, A002620(n)))]`
-/

namespace A253584.P6692458291681765984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253443 (Int.lor 4 (A002620 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253584.P6692458291681765984

/-! ## A253584.P17348522290867195503

`record[A253443(A019554(n+2)+2)]`
-/

namespace A253584.P17348522290867195503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253443 (A019554 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253584.P17348522290867195503

/-! ## A253584.P18210673175903657053

`A253443(A109736(a(n-1))+1)` with `a(0)=4`
-/

namespace A253584.P18210673175903657053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A253443 (A109736 (a (n - 1)).toNat + 1).toNat

end

end A253584.P18210673175903657053

/-! ## A253584.P10213846634776029308

`record[A253443(A008574(A029579(n)))]`
-/

namespace A253584.P10213846634776029308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253443 (A008574 (A029579 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253584.P10213846634776029308

/-! ## A253584.P10803693013807317406

`record[A253443(A059558(A019554(n+1)))]`
-/

namespace A253584.P10803693013807317406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253443 (A059558 (A019554 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253584.P10803693013807317406

/-!
# A253585: Numbers whose binary expansion equals the first n digits of the binary sequence A252488 whose run lengths are given by A001511 (the ruler function).

The programs for A253585, there is no canonical definition to state claims against.
-/

/-! ## A253585.P7703358180658313545

`char[A120738(n)]+2*a(n-1)` with `a(0)=1`
-/

namespace A253585.P7703358180658313545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120738 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 2 * a (n - 1)

end

end A253585.P7703358180658313545

/-! ## A253585.P8142587113352406833

`A252488(n+1)+2*a(n-1)` with `a(0)=1`
-/

namespace A253585.P8142587113352406833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A252488 (n + 1) + 2 * a (n - 1)

end

end A253585.P8142587113352406833

/-! ## A253585.P2323400059243065399

`char[A327492(2*n)]+2*a(n-1)` with `a(0)=1`
-/

namespace A253585.P2323400059243065399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327492 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 2 * a (n - 1)

end

end A253585.P2323400059243065399

/-! ## A253585.P8051834300401790112

`or(2*a(n-1), char[A005187(2*n)])` with `a(0)=1`
-/

namespace A253585.P8051834300401790112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (2 * a (n - 1)) (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A253585.P8051834300401790112

/-! ## A253585.P18099461372554224184

`a(n-1)+or(a(n-1), char[A011371(n)])` with `a(0)=1`
-/

namespace A253585.P18099461372554224184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.lor (a (n - 1)) (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A253585.P18099461372554224184

/-!
# A253586: The sum of the i-th ternary digits of n, k, and A(n,k) equals 0 (mod 3) for each i>=0 (leading zeros included); square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A253586, there is no canonical definition to state claims against.
-/

/-! ## A253586.P7589304867191345711

`A004488(A004489(n))`
-/

namespace A253586.P7589304867191345711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A004489 n).toNat

end

end A253586.P7589304867191345711

/-! ## A253586.P2759331985251759475

`A163325((A163330(n)+A163328(n))/2)`
-/

namespace A253586.P2759331985251759475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163325 (SequenceMachineLib.roundAway ((A163330 n + A163328 n : ℚ) / 2)).toNat

end

end A253586.P2759331985251759475

/-! ## A253586.P8235101012912617491

`A004489(2*A002378(A004489(n)))`
-/

namespace A253586.P8235101012912617491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004489 (2 * A002378 (A004489 n).toNat).toNat

end

end A253586.P8235101012912617491

/-! ## A253586.P15206880322936685722

`A004489(4*A000217(A004489(n)))`
-/

namespace A253586.P15206880322936685722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004489 (4 * A000217 (A004489 n).toNat).toNat

end

end A253586.P15206880322936685722

/-! ## A253586.P9495029006104797722

`A004489(2*(A004489(n)+A004489(n)²))`
-/

namespace A253586.P9495029006104797722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004489 (2 * (A004489 n + A004489 n ^ 2)).toNat

end

end A253586.P9495029006104797722

/-!
# A253587: The sum of the i-th ternary digits of n, k, and T(n,k) equals 0 (mod 3) for each i>=0 (leading zeros included); triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A253587, there is no canonical definition to state claims against.
-/

/-! ## A253587.P18030447922551372052

`A253586(A245300(n))`
-/

namespace A253587.P18030447922551372052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253586 (A245300 n).toNat

end

end A253587.P18030447922551372052

/-!
# A253588: Upward antidiagonals of array of all multiples of primorial(n), for each n>0.

The programs for A253588, the canonical program `A253588.P1990290581636288616` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253588 has offset 1).

The definition of A253588 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253588.P1990290581636288616

`(col(n)+1)*A002110(row(n)-col(n)+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A253588

/-- `(col(n)+1)*A002110(row(n)-col(n)+1)` -/
def P1990290581636288616.Spec : Prop :=
  ∀ n, P1990290581636288616.a n = A253588 (n + 1)

theorem P1990290581636288616.correct : P1990290581636288616.Spec := by
  intro n
  simp only [A253588, Nat.add_sub_cancel]

end A253588

/-! ## A253588.P3686977392748811232

`(1-C(∑[char[∑[n]]], 2)+n)*A002110(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A253588.P3686977392748811232
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A002110 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A253588.P3686977392748811232

namespace A253588

/-- `(1-C(∑[char[∑[n]]], 2)+n)*A002110(C(comp[∑[n]]-n, 2)-n)` -/
def P3686977392748811232.Spec : Prop :=
  ∀ n, P3686977392748811232.a n = A253588 (n + 1)

end A253588

/-! ## A253588.P3679462220615558475

`A277021(A043569(n+1))`
-/

namespace A253588.P3679462220615558475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277021 (A043569 (n + 1)).toNat

end

end A253588.P3679462220615558475

namespace A253588

/-- `A277021(A043569(n+1))` -/
def P3679462220615558475.Spec : Prop :=
  ∀ n, P3679462220615558475.a n = A253588 (n + 1)

end A253588

/-! ## A253588.P1585386816361653177

`A277021(A043756(n+1))`
-/

namespace A253588.P1585386816361653177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277021 (A043756 (n + 1)).toNat

end

end A253588.P1585386816361653177

namespace A253588

/-- `A277021(A043756(n+1))` -/
def P1585386816361653177.Spec : Prop :=
  ∀ n, P1585386816361653177.a n = A253588 (n + 1)

end A253588

/-! ## A253588.P11585120194558035228

`A277021(A043765(n+1))`
-/

namespace A253588.P11585120194558035228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277021 (A043765 (n + 1)).toNat

end

end A253588.P11585120194558035228

namespace A253588

/-- `A277021(A043765(n+1))` -/
def P11585120194558035228.Spec : Prop :=
  ∀ n, P11585120194558035228.a n = A253588 (n + 1)

end A253588

/-!
# A253589: Binary weight of A252867(n).

The programs for A253589, there is no canonical definition to state claims against.
-/

/-! ## A253589.P2137382796503560036

`∑{digits}[A303596(n), #]`
-/

namespace A253589.P2137382796503560036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303596 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A253589.P2137382796503560036

/-! ## A253589.P10446842330732619537

`∑{d}[A001316(A252867(n)), A000265(#)]-1`
-/

namespace A253589.P10446842330732619537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A252867 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000265 d - 1

end

end A253589.P10446842330732619537

/-! ## A253589.P17959745368618794630

`A000120(A252867(n))`
-/

namespace A253589.P17959745368618794630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A252867 n).toNat

end

end A253589.P17959745368618794630

/-! ## A253589.P13043872909124488189

`∑{e}[A252868(n+1), #]`
-/

namespace A253589.P13043872909124488189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252868 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A253589.P13043872909124488189

/-! ## A253589.P3188365606043819239

`∑{p}[A252868(n+1), A001221(#)]`
-/

namespace A253589.P3188365606043819239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 p

end

end A253589.P3188365606043819239

/-! ## A253589.P9746502692046656104

`∑{p}[A252868(n+1), A001511(2*#+1)]`
-/

namespace A253589.P9746502692046656104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001511 (2 * p + 1)

end

end A253589.P9746502692046656104

/-! ## A253589.P10017574151209940384

`∑{p}[A252868(n+1), A011782(A049084(#²))]`
-/

namespace A253589.P10017574151209940384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A011782 (A049084 (p ^ 2)).toNat

end

end A253589.P10017574151209940384

/-! ## A253589.P12565141908691145259

`∑{p}[A019565(A252867(n)), A001511(2*#+1)]`
-/

namespace A253589.P12565141908691145259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A252867 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001511 (2 * p + 1)

end

end A253589.P12565141908691145259

/-! ## A253589.P5977703266765848148

`A001221(A252868(n+1))`
-/

namespace A253589.P5977703266765848148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A252868 (n + 1)).toNat

end

end A253589.P5977703266765848148

/-! ## A253589.P2183143303735594001

`∑{p}[A252868(n+1), A061395(A011782(#))]`
-/

namespace A253589.P2183143303735594001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A061395 (A011782 p).toNat

end

end A253589.P2183143303735594001

/-!
# A253590: Indices of the primorial numbers in A098550.

The programs for A253590, there is no canonical definition to state claims against.
-/

/-! ## A253590.P18188526276966657892

`A098551(A002110(n))`
-/

namespace A253590.P18188526276966657892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (A002110 n).toNat

end

end A253590.P18188526276966657892

/-! ## A253590.P3939472973674060831

`A098551(A335069(n+1))`
-/

namespace A253590.P3939472973674060831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (A335069 (n + 1)).toNat

end

end A253590.P3939472973674060831

/-!
# A253591: a(n) is the largest prime occurring (as a factor) in all terms up to A098550(n).

The programs for A253591, there is no canonical definition to state claims against.
-/

/-! ## A253591.P7827741692285087784

`A006530(a(n-1)*A098550(n+2))` with `a(0)=2`
-/

namespace A253591.P7827741692285087784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A006530 (a (n - 1) * A098550 (n + 2)).toNat

end

end A253591.P7827741692285087784

/-! ## A253591.P2635775325714841736

`A006530(a(n-1)*A251089(n+2))` with `a(0)=2`
-/

namespace A253591.P2635775325714841736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A006530 (a (n - 1) * A251089 (n + 2)).toNat

end

end A253591.P2635775325714841736

/-!
# A253592: Primes p such that the polynomial x^2 + x + p generates only primes for x=1..12.

The programs for A253592, there is no canonical definition to state claims against.
-/

/-! ## A253592.P12367124731362570824

`A191458(A080208(n)*A080222(n+1))`
-/

namespace A253592.P12367124731362570824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191458 (A080208 n * A080222 (n + 1)).toNat

end

end A253592.P12367124731362570824

/-!
# A253594: Numbers n that have more than one palindromic representation in bases 2 <= b <= n-2.

The programs for A253594, there is no canonical definition to state claims against.
-/

/-! ## A253594.P11268848141880038655

`lt[2, A135551(n)]`
-/

namespace A253594.P11268848141880038655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135551 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A253594.P11268848141880038655

/-! ## A253594.P7287178449666078296

`eq[1, A171624(A135551(n)+2)]`
-/

namespace A253594.P7287178449666078296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171624 (A135551 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A253594.P7287178449666078296

/-! ## A253594.P5625935261307889372

`lt[1, A135549(n)]`
-/

namespace A253594.P5625935261307889372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135549 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A253594.P5625935261307889372

/-! ## A253594.P2649609791075610560

`eq[1, A157928(A135549(n)²)]`
-/

namespace A253594.P2649609791075610560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (A135549 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A253594.P2649609791075610560

/-! ## A253594.P16011286090938013719

`eq[A000038(n), A094497(A135551(n))]`
-/

namespace A253594.P16011286090938013719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094497 (A135551 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A253594.P16011286090938013719

/-! ## A253594.P17202709322447135580

`eq[2, A157928(A135549(n))+A157928(n)]`
-/

namespace A253594.P17202709322447135580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (A135549 n).toNat + A157928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A253594.P17202709322447135580

/-! ## A253594.P1961562973838185867

`eq[1, A157928(A135549(n)*A157928(n))]`
-/

namespace A253594.P1961562973838185867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (A135549 n * A157928 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A253594.P1961562973838185867

/-! ## A253594.P11867444915671022393

`eq[1, A014963(A224532(A135549(n)+2)+3)]`
-/

namespace A253594.P11867444915671022393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A224532 (A135549 n + 2).toNat + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A253594.P11867444915671022393

/-! ## A253594.P11779256888516478494

`lt[3, A126071(n+5)]+5`
-/

namespace A253594.P11779256888516478494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126071 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 5

end

end A253594.P11779256888516478494

/-! ## A253594.P15607095286646698174

`eq[2, A020639(A135549(n)!)]`
-/

namespace A253594.P15607095286646698174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.factorial (A135549 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A253594.P15607095286646698174

/-!
# A253595: Least Carmichael number that is divisible by the n-th cyclic number A003277(n), or 0 if no such number exists.

The programs for A253595, there is no canonical definition to state claims against.
-/

/-! ## A253595.P18441403874470180584

`A002997(gcd(A000408(n+1), A250684(n+1)))`
-/

namespace A253595.P18441403874470180584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (Int.gcd (A000408 (n + 1)) (A250684 (n + 1)))

end

end A253595.P18441403874470180584

/-! ## A253595.P22535727845402802

`A002997(gcd(A282346(n+1), A340215(n+1)))`
-/

namespace A253595.P22535727845402802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (Int.gcd (A282346 (n + 1)) (A340215 (n + 1)))

end

end A253595.P22535727845402802

/-!
# A253596: Numbers k such that A002313(m) is the greatest prime divisor of k^2 + 1 and A002313(m+1) is the greatest prime divisor of (k+1)^2 + 1 for some m.

The programs for A253596, there is no canonical definition to state claims against.
-/

/-! ## A253596.P5769881700107552444

`A071542(A000203(n+1)*A101370(n+1))`
-/

namespace A253596.P5769881700107552444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071542 (A000203 (n + 1) * A101370 (n + 1)).toNat

end

end A253596.P5769881700107552444

/-!
# A253597: Least Lucas-Carmichael number divisible by the n-th prime.

The programs for A253597, there is no canonical definition to state claims against.
-/

/-! ## A253597.P7559324070286648629

`A253598(A245794(n+2)+A032555(n+2))`
-/

namespace A253597.P7559324070286648629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253598 (A245794 (n + 2) + A032555 (n + 2)).toNat

end

end A253597.P7559324070286648629

/-! ## A253597.P13947849780249015880

`A253598(n+2)+A000007(A003168(n))`
-/

namespace A253597.P13947849780249015880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253598 (n + 2) + A000007 (A003168 n).toNat

end

end A253597.P13947849780249015880

/-! ## A253597.P11492956710761653556

`A253598(n+2)+A037214(A000302(n))`
-/

namespace A253597.P11492956710761653556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253598 (n + 2) + A037214 (A000302 n).toNat

end

end A253597.P11492956710761653556

/-!
# A253598: a(n) = least Lucas-Carmichael number which is divisible by b(n), where {b(n)} (A255602) is the list of all numbers which could be a divisor of a Lucas-Carmichael number.

The programs for A253598, there is no canonical definition to state claims against.
-/

/-! ## A253598.P12866077414356569583

`A253597(A063524(∏[n+1])+1+n)`
-/

namespace A253598.P12866077414356569583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253597 (A063524 (∏ j ∈ Finset.range (n + 1), f1 j) + 1 + (n : ℤ)).toNat

end

end A253598.P12866077414356569583

/-! ## A253598.P13109874110517237435

`A006972(gcd(A059905(n), A118187(n)))`
-/

namespace A253598.P13109874110517237435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006972 (Int.gcd (A059905 n) (A118187 n))

end

end A253598.P13109874110517237435

/-! ## A253598.P11358960109685923260

`A253597(A141702(A006972(n+1))+n+1)`
-/

namespace A253598.P11358960109685923260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253597 (A141702 (A006972 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A253598.P11358960109685923260

/-! ## A253598.P3832972005597686244

`A006972(gcd(A038104(n+1), A178412(n+1)))`
-/

namespace A253598.P3832972005597686244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006972 (Int.gcd (A038104 (n + 1)) (A178412 (n + 1)))

end

end A253598.P3832972005597686244

/-!
# A253599: Centered square numbers (A001844) which are also centered heptagonal numbers (A069099).

The programs for A253599, there is no canonical definition to state claims against.
-/

/-! ## A253599.P6250482093108877115

`ceil(A294972(2*n)²/2)`
-/

namespace A253599.P6250482093108877115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A294972 (2 * n) ^ 2 : ℚ) / 2⌉

end

end A253599.P6250482093108877115

