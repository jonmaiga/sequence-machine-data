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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C048
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
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
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
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A160102: Multiplicative function, one-to-one and onto the squarefree numbers.

The programs for A160102, there is no canonical definition to state claims against.
-/

/-! ## A160102.P15394331817601417473

`A019565(A052331(n+1))`
-/

namespace A160102.P15394331817601417473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A052331 (n + 1)).toNat

end

end A160102.P15394331817601417473

/-! ## A160102.P14670895152373211409

`A332462(A302024(n+1))`
-/

namespace A160102.P14670895152373211409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332462 (A302024 (n + 1)).toNat

end

end A160102.P14670895152373211409

/-! ## A160102.P6328529652394636400

`A303760(A303772(n+1))`
-/

namespace A160102.P6328529652394636400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303760 (A303772 (n + 1)).toNat

end

end A160102.P6328529652394636400

/-! ## A160102.P7491858190156319594

`A304087(A304086(n+1))`
-/

namespace A160102.P7491858190156319594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304087 (A304086 (n + 1)).toNat

end

end A160102.P7491858190156319594

/-! ## A160102.P17690945689834120074

`A019565(A064358(n+1)-1)`
-/

namespace A160102.P17690945689834120074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A064358 (n + 1) - 1).toNat

end

end A160102.P17690945689834120074

/-!
# A160108: Lodumo_8 of Fibonacci numbers.

The programs for A160108, the canonical program `A160108.P17124100150057596400` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160108 has offset 0).

The definition of A160108 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160108.P17124100150057596400

`ogf((x+9x^2+2x^3+3x^4+5x^5+8x^6+11x^7+3x^8+6x^9+x^10+7x^11)/(1-2x^6+x^12))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A160108

/-- `ogf((x+9x^2+2x^3+3x^4+5x^5+8x^6+11x^7+3x^8+6x^9+x^10+7x^11)/(1-2x^6+x^12))` -/
def P17124100150057596400.Spec : Prop :=
  ∀ n, P17124100150057596400.a n = A160108 n

theorem P17124100150057596400.correct : P17124100150057596400.Spec := by
  intro n
  simp only [A160108]

end A160108

/-!
# A160109: Numbers k with the property that k^2 uses only nonsquare decimal digits (2,3,5,6,7,8).

The programs for A160109, there is no canonical definition to state claims against.
-/

/-! ## A160109.P12722871921088090212

`sqrt(A077437(n+1))`
-/

namespace A160109.P12722871921088090212
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A077437 (n + 1) : ℝ)

end

end A160109.P12722871921088090212

/-! ## A160109.P13620818122086114346

`root(A077437(floor(acot(n))!+n), 2)`
-/

namespace A160109.P13620818122086114346
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A077437 (Nat.factorial ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat + n) : ℝ) ^ (1 / (2 : ℝ))

end

end A160109.P13620818122086114346

/-! ## A160109.P2746715203290339517

`root(A077437(n+1), 2)%A016898(n)`
-/

namespace A160109.P2746715203290339517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A077437 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A016898 n)

end

end A160109.P2746715203290339517

/-! ## A160109.P8626402907691425106

`root(A077437(n+1), 2%A017377(n))`
-/

namespace A160109.P8626402907691425106
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A077437 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A017377 n) : ℝ))

end

end A160109.P8626402907691425106

/-! ## A160109.P3033844722257509388

`root(A077437(n+1), A020639(10*(n+1)))`
-/

namespace A160109.P3033844722257509388
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A077437 (n + 1) : ℝ) ^ (1 / (A020639 (10 * (n + 1)) : ℝ))

end

end A160109.P3033844722257509388

/-! ## A160109.P11479886348663355514

`A000027(root(A077437(n+1), 2))`
-/

namespace A160109.P11479886348663355514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A077437 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A160109.P11479886348663355514

/-! ## A160109.P4525992383832078975

`A004525(2*root(A077437(n+1), 2))`
-/

namespace A160109.P4525992383832078975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.roundAway (2 * (A077437 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A160109.P4525992383832078975

/-!
# A160110: Numerators of |Bernoulli(n)*Gould(n)| for even n, (Gould A001316).

The programs for A160110, there is no canonical definition to state claims against.
-/

/-! ## A160110.P17010960033406539504

`lcm(A000005(A093659(n)), A000367(n))`
-/

namespace A160110.P17010960033406539504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (A093659 n).toNat) (A000367 n)

end

end A160110.P17010960033406539504

/-! ## A160110.P3635124084800905655

`abs(A000367(n)*A011782(A000120(n)))`
-/

namespace A160110.P3635124084800905655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000367 n * A011782 (A000120 n).toNat|

end

end A160110.P3635124084800905655

/-! ## A160110.P12834330299411280438

`lcm(A004525(A001316(n)), A027641(2*n))`
-/

namespace A160110.P12834330299411280438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004525 (A001316 n).toNat) (A027641 (2 * n))

end

end A160110.P12834330299411280438

/-! ## A160110.P3140488206736264557

`lcm(A000010(A001316(n)), A051716(2*n))`
-/

namespace A160110.P3140488206736264557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000010 (A001316 n).toNat) (A051716 (2 * n))

end

end A160110.P3140488206736264557

/-! ## A160110.P3059989016715860104

`lcm(A006949(A001316(n)), A051716(2*n+1))`
-/

namespace A160110.P3059989016715860104
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006949 (A001316 n).toNat) (A051716 (2 * n + 1))

end

end A160110.P3059989016715860104

/-!
# A160112: Number of cubefree integers not exceeding 10^n.

The programs for A160112, the canonical program `A160112.P8391759629587007238` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160112 has offset 0).

The definition of A160112 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160112.P8391759629587007238

`∑{#}[floor(10^(n/3))-1, A008683(#+1)*floor(10^n/(#+1)^3)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A160112

/-- `∑{#}[floor(10^(n/3))-1, A008683(#+1)*floor(10^n/(#+1)^3)]` -/
def P8391759629587007238.Spec : Prop :=
  ∀ n, P8391759629587007238.a n = A160112 n

theorem P8391759629587007238.correct : P8391759629587007238.Spec := by
  intro n
  simp only [A160112]

end A160112

/-!
# A160113: Number of cubefree integers not exceeding 2^n.

The programs for A160113, there is no canonical definition to state claims against.
-/

/-! ## A160113.P1485939384673161494

`A060431(2^n)`
-/

namespace A160113.P1485939384673161494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060431 (2 ^ n)

end

end A160113.P1485939384673161494

/-! ## A160113.P7229024473068331533

`record[A060431(A232089(n))]`
-/

namespace A160113.P7229024473068331533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060431 (A232089 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160113.P7229024473068331533

/-! ## A160113.P2496551008219459859

`record[A060431(A119436(n+1))]`
-/

namespace A160113.P2496551008219459859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060431 (A119436 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160113.P2496551008219459859

/-! ## A160113.P6169328422182698233

`record[A060431(A122111(n+1))]`
-/

namespace A160113.P6169328422182698233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060431 (A122111 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160113.P6169328422182698233

/-! ## A160113.P18290497952180609312

`and(or(1, -n)%2, A060431(A017981(3*n)))`
-/

namespace A160113.P18290497952180609312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.tmod (Int.lor 1 (-(n : ℤ))) 2) (A060431 (A017981 (3 * n)).toNat)

end

end A160113.P18290497952180609312

/-!
# A160115: Fluctuations of the number of cubefree integers not exceeding 2^n.

The programs for A160115, there is no canonical definition to state claims against.
-/

/-! ## A160115.P843614638825582328

`A000120(n+3)-A328048(A000040(A328047(n+9)))`
-/

namespace A160115.P843614638825582328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 3) - A328048 (A000040 (A328047 (n + 9)).toNat).toNat

end

end A160115.P843614638825582328

/-!
# A160117: Number of "ON" cells after n-th stage in simple 2-dimensional cellular automaton (see Comments for precise definition).

The programs for A160117, the canonical program `A160117.P12038202967932099068` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160117 has offset 0).

The definition of A160117 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160117.P12038202967932099068

`ogf((x+8x^2+2x^3+12x^4+x^5+4x^6)/(1-x-2x^2+2x^3+x^4-x^5))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A160117

/-- `ogf((x+8x^2+2x^3+12x^4+x^5+4x^6)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P12038202967932099068.Spec : Prop :=
  ∀ n, P12038202967932099068.a n = A160117 n

theorem P12038202967932099068.correct : P12038202967932099068.Spec := by
  intro n
  simp only [A160117]

end A160117

/-! ## A160117.P14095845487667351200

`A160411(n)+a(n-1)` with `a(0)=0`
-/

namespace A160117.P14095845487667351200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A160411 n + a (n - 1)

end

end A160117.P14095845487667351200

namespace A160117

/-- `A160411(n)+a(n-1)` -/
def P14095845487667351200.Spec : Prop :=
  ∀ n, P14095845487667351200.a n = A160117 n

end A160117

/-! ## A160117.P8270946226699203760

`∑[A160411(A028310(n))]-1`
-/

namespace A160117.P8270946226699203760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160411 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A160117.P8270946226699203760

namespace A160117

/-- `∑[A160411(A028310(n))]-1` -/
def P8270946226699203760.Spec : Prop :=
  ∀ n, P8270946226699203760.a n = A160117 n

end A160117

/-! ## A160117.P15293254630328520488

`∑[A160411(n+1)]-A160411(n+1)`
-/

namespace A160117.P15293254630328520488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A160411 (n + 1)

end

end A160117.P15293254630328520488

namespace A160117

/-- `∑[A160411(n+1)]-A160411(n+1)` -/
def P15293254630328520488.Spec : Prop :=
  ∀ n, P15293254630328520488.a n = A160117 n

end A160117

/-! ## A160117.P16075268810961864655

`∑[A057427(n)*A160411(A028310(n))]`
-/

namespace A160117.P16075268810961864655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A160411 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160117.P16075268810961864655

namespace A160117

/-- `∑[A057427(n)*A160411(A028310(n))]` -/
def P16075268810961864655.Spec : Prop :=
  ∀ n, P16075268810961864655.a n = A160117 n

end A160117

/-! ## A160117.P18349250028179678527

`∑[A160411(A028310(n))%A001249(n)]`
-/

namespace A160117.P18349250028179678527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160411 (A028310 n).toNat) (A001249 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160117.P18349250028179678527

namespace A160117

/-- `∑[A160411(A028310(n))%A001249(n)]` -/
def P18349250028179678527.Spec : Prop :=
  ∀ n, P18349250028179678527.a n = A160117 n

end A160117

/-! ## A160117.P12664278286265207178

`A164660(2*(n+1))+∑[A160411(A028310(n))]`
-/

namespace A160117.P12664278286265207178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160411 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164660 (2 * (n + 1)) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160117.P12664278286265207178

namespace A160117

/-- `A164660(2*(n+1))+∑[A160411(A028310(n))]` -/
def P12664278286265207178.Spec : Prop :=
  ∀ n, P12664278286265207178.a n = A160117 n

end A160117

/-!
# A160118: Number of "ON" cells at n-th stage in simple 2-dimensional cellular automaton (see Comments for precise definition).

The programs for A160118, there is no canonical definition to state claims against.
-/

/-! ## A160118.P9280431129960794037

`∑[A173457(comp[3*(n+1)])]`
-/

namespace A160118.P9280431129960794037
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173457 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160118.P9280431129960794037

/-! ## A160118.P73560869738132162

`∑[A160415(A028310(n))]-1`
-/

namespace A160118.P73560869738132162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160415 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A160118.P73560869738132162

/-! ## A160118.P16684407755396301077

`∑[A160415(A004277(n)-n)]-1`
-/

namespace A160118.P16684407755396301077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160415 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A160118.P16684407755396301077

/-! ## A160118.P6360644852549263015

`∑[A160415(n+1)]-A160415(n+1)`
-/

namespace A160118.P6360644852549263015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A160415 (n + 1)

end

end A160118.P6360644852549263015

/-! ## A160118.P2365358907671338574

`∑[A160415(A028310(n))%A060883(n)]`
-/

namespace A160118.P2365358907671338574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160415 (A028310 n).toNat) (A060883 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160118.P2365358907671338574

/-! ## A160118.P15501012078645557987

`∑[A160415(A151878(n)+n)]-1`
-/

namespace A160118.P15501012078645557987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160415 (A151878 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A160118.P15501012078645557987

/-! ## A160118.P1911952711775902183

`∑[A160415(A151878(n)+n)%A005897(n)]`
-/

namespace A160118.P1911952711775902183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160415 (A151878 n + (n : ℤ)).toNat) (A005897 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160118.P1911952711775902183

/-! ## A160118.P5703096493380109188

`A107750(A160796(n))`
-/

namespace A160118.P5703096493380109188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 (A160796 n).toNat

end

end A160118.P5703096493380109188

/-!
# A160119: A three-dimensional version of the cellular automaton A160118, using cubes.

The programs for A160119, there is no canonical definition to state claims against.
-/

/-! ## A160119.P8917084613256966316

`∑[A163987(n+1)]-A163987(n+1)`
-/

namespace A160119.P8917084613256966316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A163987 (n + 1)

end

end A160119.P8917084613256966316

/-! ## A160119.P3650055685144040789

`∑[∑{e}[A000079(n), A163987(#)]]`
-/

namespace A160119.P3650055685144040789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, A163987 (Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160119.P3650055685144040789

/-!
# A160120: Y-toothpick sequence (see Comments lines for definition).

The programs for A160120, there is no canonical definition to state claims against.
-/

/-! ## A160120.P1910923610260226684

`A160121(n)+a(n-1)` with `a(0)=0`
-/

namespace A160120.P1910923610260226684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A160121 n + a (n - 1)

end

end A160120.P1910923610260226684

/-! ## A160120.P13948737105693380460

`∑[A160121(A028310(n))]-1`
-/

namespace A160120.P13948737105693380460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160121 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A160120.P13948737105693380460

/-! ## A160120.P2855624168785711066

`∑[A160121(A000038(n)+n)]-3`
-/

namespace A160120.P2855624168785711066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160121 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A160120.P2855624168785711066

/-! ## A160120.P9747077587341128915

`∑[A160121(A000007(n)+n)%A103220(n+1)]`
-/

namespace A160120.P9747077587341128915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160121 (A000007 n + (n : ℤ)).toNat) (A103220 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160120.P9747077587341128915

/-! ## A160120.P8724469628899838930

`∑[A160121(n+1)]-A160121(n+1)`
-/

namespace A160120.P8724469628899838930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A160121 (n + 1)

end

end A160120.P8724469628899838930

/-! ## A160120.P17081646898630419639

`A014682(A299776(n))/2`
-/

namespace A160120.P17081646898630419639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014682 (A299776 n).toNat : ℚ) / 2

end

end A160120.P17081646898630419639

/-! ## A160120.P16721221439915876304

`A014682(A014682(A299776(n)))`
-/

namespace A160120.P16721221439915876304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A014682 (A299776 n).toNat).toNat

end

end A160120.P16721221439915876304

/-! ## A160120.P13583319186676797345

`∑[A160121(A028310(n))%A002219(n+1)]`
-/

namespace A160120.P13583319186676797345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160121 (A028310 n).toNat) (A002219 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160120.P13583319186676797345

/-! ## A160120.P18341026780905049231

`A006368(A299776(n))`
-/

namespace A160120.P18341026780905049231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A299776 n).toNat

end

end A160120.P18341026780905049231

/-! ## A160120.P18008444346554701616

`A057353(A299776(n)+1)`
-/

namespace A160120.P18008444346554701616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A299776 n + 1).toNat

end

end A160120.P18008444346554701616

/-! ## A160120.P5021367724193637031

`A057353(lcm(2, A014681(A299776(n))))`
-/

namespace A160120.P5021367724193637031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (Int.lcm 2 (A014681 (A299776 n).toNat))

end

end A160120.P5021367724193637031

/-! ## A160120.P7910511439212891836

`A299776(n)-A002265(A299776(n)+1)`
-/

namespace A160120.P7910511439212891836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299776 n - A002265 (A299776 n + 1).toNat

end

end A160120.P7910511439212891836

/-!
# A160121: First differences of A160120.

The programs for A160121, there is no canonical definition to state claims against.
-/

/-! ## A160121.P9023477906137364309

`Δ[A160120(n)]`
-/

namespace A160121.P9023477906137364309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160121.P9023477906137364309

/-! ## A160121.P15111358819757335017

`A160120(n+1)-A160120(n)`
-/

namespace A160121.P15111358819757335017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160120 (n + 1) - A160120 n

end

end A160121.P15111358819757335017

/-! ## A160121.P16451210974816499060

`record[A160120(A028242(n))]-A160120(n)`
-/

namespace A160121.P16451210974816499060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160120 (A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A160120 n

end

end A160121.P16451210974816499060

/-! ## A160121.P18338450251058209326

`record[A160120(A291769(n))]-A160120(n)`
-/

namespace A160121.P18338450251058209326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160120 (A291769 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A160120 n

end

end A160121.P18338450251058209326

/-! ## A160121.P16369571295885189268

`Δ[A014682(A299776(n))/2]`
-/

namespace A160121.P16369571295885189268
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014682 (A299776 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160121.P16369571295885189268

/-! ## A160121.P12884157186893784100

`Δ[A006368(A299776(n))]`
-/

namespace A160121.P12884157186893784100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A299776 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160121.P12884157186893784100

/-! ## A160121.P13016543338653603511

`A048883(n)-A173451(n+1)`
-/

namespace A160121.P13016543338653603511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 n - A173451 (n + 1)

end

end A160121.P13016543338653603511

/-! ## A160121.P1675540096409207509

`A147610(2*(n+1))-A173451(n+1)`
-/

namespace A160121.P1675540096409207509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147610 (2 * (n + 1)) - A173451 (n + 1)

end

end A160121.P1675540096409207509

/-! ## A160121.P17705352752125999055

`Δ[A160167(n)/3]`
-/

namespace A160121.P17705352752125999055
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160167 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160121.P17705352752125999055

/-! ## A160121.P17156517450274584623

`A253771(n+1)/6`
-/

namespace A160121.P17156517450274584623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253771 (n + 1) : ℚ) / 6

end

end A160121.P17156517450274584623

/-!
# A160122: a(n) = A160121(n+1)*2/3.

The programs for A160122, there is no canonical definition to state claims against.
-/

/-! ## A160122.P7615946163450761137

`A160121(n+2)*2/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A160122.P7615946163450761137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160121 (n + 2) * 2 : ℚ) / 3

end

end A160122.P7615946163450761137

/-! ## A160122.P10187315892499380122

`2*A160123(n+1)`
-/

namespace A160122.P10187315892499380122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160123 (n + 1)

end

end A160122.P10187315892499380122

/-! ## A160122.P9483111032448603005

`Δ[A299776(n+1)/2]`
-/

namespace A160122.P9483111032448603005
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299776 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160122.P9483111032448603005

/-! ## A160122.P3144158149866683467

`Δ[2/3*A160120(n+1)]`
-/

namespace A160122.P3144158149866683467
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A160120 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160122.P3144158149866683467

/-! ## A160122.P8128015598168213402

`lcm(2, A160123((n+2+n)/2))`
-/

namespace A160122.P8128015598168213402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A160123 (SequenceMachineLib.roundAway ((n + 2 + n : ℚ) / 2)).toNat)

end

end A160122.P8128015598168213402

/-! ## A160122.P269460462005429443

`a(n-1)*ratio[A160121(n+1)]` with `a(0)=2`
-/

namespace A160122.P269460462005429443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160121 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A160122.P269460462005429443

/-! ## A160122.P11389571959824924841

`A004277(A160123(n+1))`
-/

namespace A160122.P11389571959824924841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A160123 (n + 1)).toNat

end

end A160122.P11389571959824924841

/-! ## A160122.P1943897801214239167

`A004396(A160121(n+2))`
-/

namespace A160122.P1943897801214239167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A160121 (n + 2)).toNat

end

end A160122.P1943897801214239167

/-! ## A160122.P15756748967225148804

`A004525(Δ[A299776(n+1)])`
-/

namespace A160122.P15756748967225148804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (n + 1) - f1 n).toNat

end

end A160122.P15756748967225148804

/-! ## A160122.P5291484952589582680

`A160121(n+2)-A160123(n+1)`
-/

namespace A160122.P5291484952589582680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160121 (n + 2) - A160123 (n + 1)

end

end A160122.P5291484952589582680

/-!
# A160123: a(n) = A160121(n+1)/3.

The programs for A160123, there is no canonical definition to state claims against.
-/

/-! ## A160123.P82239039815978212

`A160121(n+2)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A160123.P82239039815978212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160121 (n + 2) : ℚ) / 3

end

end A160123.P82239039815978212

/-! ## A160123.P16319858593214539082

`Δ[A160120(n+1)/3]`
-/

namespace A160123.P16319858593214539082
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160120 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160123.P16319858593214539082

/-! ## A160123.P13972405041435280420

`Δ[A299776(n+1)/4]`
-/

namespace A160123.P13972405041435280420
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299776 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160123.P13972405041435280420

/-! ## A160123.P10847447790623302156

`a(n-1)*ratio[A160121(n+1)]` with `a(0)=1`
-/

namespace A160123.P10847447790623302156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160121 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A160123.P10847447790623302156

/-! ## A160123.P5819694323031994172

`A002264(A160121(n+2))`
-/

namespace A160123.P5819694323031994172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A160121 (n + 2)).toNat

end

end A160123.P5819694323031994172

/-! ## A160123.P6556722032677158363

`A002264(Δ[A160120(n+1)])`
-/

namespace A160123.P6556722032677158363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (f1 (n + 1) - f1 n).toNat

end

end A160123.P6556722032677158363

/-! ## A160123.P8761721185677008767

`A006083(Δ[A160120(n+1)])`
-/

namespace A160123.P8761721185677008767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006083 (f1 (n + 1) - f1 n).toNat

end

end A160123.P8761721185677008767

/-! ## A160123.P12022549977634497419

`A051724(Δ[A160120(n+1)])`
-/

namespace A160123.P12022549977634497419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (f1 (n + 1) - f1 n).toNat

end

end A160123.P12022549977634497419

/-! ## A160123.P3823677545120533089

`A075861(Δ[A160120(n+1)])`
-/

namespace A160123.P3823677545120533089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075861 (f1 (n + 1) - f1 n).toNat

end

end A160123.P3823677545120533089

/-! ## A160123.P4837641422801058985

`A008620(A160121(n+2)-1)`
-/

namespace A160123.P4837641422801058985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A160121 (n + 2) - 1).toNat

end

end A160123.P4837641422801058985

/-!
# A160124: Total number of squares and rectangles after n stages in the toothpick structure of A139250.

The programs for A160124, there is no canonical definition to state claims against.
-/

/-! ## A160124.P8889255835434283418

`2*A160126(n)`
-/

namespace A160124.P8889255835434283418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160126 n

end

end A160124.P8889255835434283418

/-! ## A160124.P6726183574427450458

`∑[A160125(round(acot(n)+n))]`
-/

namespace A160124.P6726183574427450458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160125 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160124.P6726183574427450458

/-! ## A160124.P13091018600267721164

`A160125(n)+a(n-1)` with `a(0)=0`
-/

namespace A160124.P13091018600267721164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A160125 n + a (n - 1)

end

end A160124.P13091018600267721164

/-! ## A160124.P1457917228483174902

`∑[A160125(abs(1-n)+1)]`
-/

namespace A160124.P1457917228483174902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160125 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160124.P1457917228483174902

/-! ## A160124.P15506354681077167977

`∑[2*A160127(floor(acot(n)+n))]`
-/

namespace A160124.P15506354681077167977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160127 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160124.P15506354681077167977

/-! ## A160124.P11775678947550484363

`∑[2*A160127(round(acot(n)+n))]`
-/

namespace A160124.P11775678947550484363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160127 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160124.P11775678947550484363

/-! ## A160124.P1053010478685870842

`A005843(A160126(n))`
-/

namespace A160124.P1053010478685870842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A160126 n).toNat

end

end A160124.P1053010478685870842

/-! ## A160124.P16739121457299204781

`A139250(n)-A139252(n)`
-/

namespace A160124.P16739121457299204781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n - A139252 n

end

end A160124.P16739121457299204781

/-! ## A160124.P7618427525744032335

`A160164(n)/2-A139252(n)`
-/

namespace A160124.P7618427525744032335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160164 n : ℚ) / 2 - (A139252 n : ℚ)

end

end A160124.P7618427525744032335

/-! ## A160124.P2536189394274201946

`A266530(Δ[n²])-A139252(n)`
-/

namespace A160124.P2536189394274201946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266530 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A139252 n

end

end A160124.P2536189394274201946

/-!
# A160125: Number of squares and rectangles that are created at the n-th stage in the toothpick structure (see A139250).

The programs for A160125, there is no canonical definition to state claims against.
-/

/-! ## A160125.P17546679690954631720

`Δ[A139250(n)-A139252(n)]`
-/

namespace A160125.P17546679690954631720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n - A139252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160125.P17546679690954631720

/-! ## A160125.P10903238178893768953

`A139251(n+1)-Δ[A139252(n)]`
-/

namespace A160125.P10903238178893768953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (n + 1) - (f1 (n + 1) - f1 n)

end

end A160125.P10903238178893768953

/-! ## A160125.P14142367632300619937

`Δ[A160164(n)/2-A139252(n)]`
-/

namespace A160125.P14142367632300619937
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160164 n : ℚ) / 2 - (A139252 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160125.P14142367632300619937

/-! ## A160125.P560797444743315720

`Δ[A266530(2*n+1)-A139252(n)]`
-/

namespace A160125.P560797444743315720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266530 (2 * n + 1) - A139252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160125.P560797444743315720

/-! ## A160125.P13353222525728616294

`Δ[A187220(n+1)/2-A139252(n)]`
-/

namespace A160125.P13353222525728616294
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187220 (n + 1) : ℚ) / 2 - (A139252 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160125.P13353222525728616294

/-! ## A160125.P894646367018098320

`Δ[A001281(A160164(n))-A139252(n)]`
-/

namespace A160125.P894646367018098320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A160164 n).toNat - A139252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160125.P894646367018098320

/-! ## A160125.P8646403543460655682

`Δ[A160164(n)%A004442(A147614(n))]`
-/

namespace A160125.P8646403543460655682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160164 n) (A004442 (A147614 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160125.P8646403543460655682

/-! ## A160125.P4317875839183795316

`Δ[A173454(n)+A173522(n)-A139252(n)]`
-/

namespace A160125.P4317875839183795316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173454 n + (A173522 n - A139252 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160125.P4317875839183795316

/-! ## A160125.P16789509710507070778

`Δ[A139250(n)+A057428(n)*A139252(n)]`
-/

namespace A160125.P16789509710507070778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n + A057428 n * A139252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160125.P16789509710507070778

/-! ## A160125.P6399558748154530556

`A139251(n+1)+A139252(n)-A139252(n+1)`
-/

namespace A160125.P6399558748154530556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (n + 1) + (A139252 n - A139252 (n + 1))

end

end A160125.P6399558748154530556

/-!
# A160126: Total number of squares and rectangles in the toothpick structure after n stages, divided by 2. (See A139250).

The programs for A160126, there is no canonical definition to state claims against.
-/

/-! ## A160126.P13398361434508566043

`A160124(n)/2`
-/

namespace A160126.P13398361434508566043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160124 n : ℚ) / 2

end

end A160126.P13398361434508566043

/-! ## A160126.P8221752631139532737

`∑[A160127(floor(acot(n)+n))]`
-/

namespace A160126.P8221752631139532737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160127 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160126.P8221752631139532737

/-! ## A160126.P12169407519606101225

`∑[A160127(round(acot(n)+n))]`
-/

namespace A160126.P12169407519606101225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160127 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160126.P12169407519606101225

/-! ## A160126.P13071900949277667637

`A160127(n)+a(n-1)` with `a(0)=0`
-/

namespace A160126.P13071900949277667637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A160127 n + a (n - 1)

end

end A160126.P13071900949277667637

/-! ## A160126.P1263652651523357589

`∑[A160127(abs(1-n)+1)]`
-/

namespace A160126.P1263652651523357589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160127 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160126.P1263652651523357589

/-! ## A160126.P1796877226053874706

`∑[A160125(round(acot(n)+n))]/2`
-/

namespace A160126.P1796877226053874706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160125 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A160126.P1796877226053874706

/-! ## A160126.P10222242427425605706

`∑[A160125(C(2, n+2)+n)]/2`
-/

namespace A160126.P10222242427425605706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160125 (Nat.choose 2 (n + 2) + n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A160126.P10222242427425605706

/-! ## A160126.P10160952421110936943

`A001281(A160124(n))`
-/

namespace A160126.P10160952421110936943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A160124 n).toNat

end

end A160126.P10160952421110936943

/-! ## A160126.P12659933234530292696

`A004524(A160124(n)+1)`
-/

namespace A160126.P12659933234530292696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A160124 n + 1).toNat

end

end A160126.P12659933234530292696

/-! ## A160126.P6920980262930464167

`A004526(A160124(n)+1)`
-/

namespace A160126.P6920980262930464167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A160124 n + 1).toNat

end

end A160126.P6920980262930464167

/-!
# A160127: First differences of A160126.

The programs for A160127, there is no canonical definition to state claims against.
-/

/-! ## A160127.P16441027286258706862

`Δ[A160126(n)]`
-/

namespace A160127.P16441027286258706862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160127.P16441027286258706862

/-! ## A160127.P5875278439008917713

`Δ[A160124(n)/2]`
-/

namespace A160127.P5875278439008917713
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160124 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160127.P5875278439008917713

/-! ## A160127.P8172507846560273699

`A160125(n+1)/2`
-/

namespace A160127.P8172507846560273699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160125 (n + 1) : ℚ) / 2

end

end A160127.P8172507846560273699

/-! ## A160127.P10970078699080590641

`A001281(Δ[A160124(n)])`
-/

namespace A160127.P10970078699080590641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (f1 (n + 1) - f1 n).toNat

end

end A160127.P10970078699080590641

/-! ## A160127.P13650881340067319759

`A004525(Δ[A160124(n)])`
-/

namespace A160127.P13650881340067319759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (n + 1) - f1 n).toNat

end

end A160127.P13650881340067319759

/-! ## A160127.P13562076095143770650

`A004526(Δ[A160124(n)])`
-/

namespace A160127.P13562076095143770650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n).toNat

end

end A160127.P13562076095143770650

/-! ## A160127.P3708863898420731840

`A001281(A160125(n+1))`
-/

namespace A160127.P3708863898420731840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A160125 (n + 1)).toNat

end

end A160127.P3708863898420731840

/-! ## A160127.P11018458689673095262

`abs(A001057(Δ[A160124(n)]))`
-/

namespace A160127.P11018458689673095262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 (f1 (n + 1) - f1 n).toNat|

end

end A160127.P11018458689673095262

/-! ## A160127.P16597644339299197489

`Δ[A000463(A160124(n)+1)]`
-/

namespace A160127.P16597644339299197489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A160124 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160127.P16597644339299197489

/-! ## A160127.P412030568180389864

`Δ[A001057(A160124(n)+1)]`
-/

namespace A160127.P412030568180389864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A160124 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160127.P412030568180389864

/-!
# A160128: a(n) = number of grid points that are covered after (2^n)th stage of A139250.

The programs for A160128, the canonical program `A160128.P3272899355290045142` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160128 has offset 0).

The definition of A160128 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160128.P2309522214049037685

`ogf((3-11x+4x^2)/(1-6x+9x^2-4x^3))`
-/

namespace A160128.P2309522214049037685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -11, 4] [1, -6, 9, -4] n

end

end A160128.P2309522214049037685

namespace A160128

/-- `ogf((3-11x+4x^2)/(1-6x+9x^2-4x^3))` -/
def P2309522214049037685.Spec : Prop :=
  ∀ n, P2309522214049037685.a n = A160128 n

end A160128

/-! ## A160128.P3272899355290045142

`6*a(n-1)-9*a(n-2)+4*a(n-3)` with `a(0)=3, a(1)=7, a(2)=19`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A160128

/-- `6*a(n-1)-9*a(n-2)+4*a(n-3)` -/
def P3272899355290045142.Spec : Prop :=
  ∀ n, P3272899355290045142.a n = A160128 n

theorem P3272899355290045142.correct : P3272899355290045142.Spec := by
  intro n
  simp only [A160128]

end A160128

/-! ## A160128.P3272333671909584179

`1/9*(2^(2*n+3)+12*n+19)`
-/

namespace A160128.P3272333671909584179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 9 * (2 ^ (2 * n + 3) + 12 * n + 19 : ℚ)

end

end A160128.P3272333671909584179

namespace A160128

/-- `1/9*(2^(2*n+3)+12*n+19)` -/
def P3272333671909584179.Spec : Prop :=
  ∀ n, P3272333671909584179.a n = (A160128 n : ℚ)

theorem P3272333671909584179.correct : P3272333671909584179.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A160128, Nat.add_sub_cancel, A160128.P3272333671909584179.a, A160128.P3272899355290045142.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A160128, Nat.add_sub_cancel, A160128.P3272333671909584179.a, A160128.P3272899355290045142.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A160128

/-! ## A160128.P9360168980451457588

`A147614(A000079(n))`
-/

namespace A160128.P9360168980451457588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147614 (A000079 n).toNat

end

end A160128.P9360168980451457588

namespace A160128

/-- `A147614(A000079(n))` -/
def P9360168980451457588.Spec : Prop :=
  ∀ n, P9360168980451457588.a n = A160128 n

end A160128

/-! ## A160128.P17095225609463634296

`∑[lcm(4, 1-a(n-1))]` with `a(0)=3`
-/

namespace A160128.P17095225609463634296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  Int.lcm 4 (1 - (f1 (n - 1) : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160128.P17095225609463634296

namespace A160128

/-- `∑[lcm(4, 1-a(n-1))]` -/
def P17095225609463634296.Spec : Prop :=
  ∀ n, (P17095225609463634296.a n : ℤ) = A160128 n

end A160128

/-! ## A160128.P2263518864733512409

`∑[4*(a(n-1)-1)]` with `a(0)=3, a(1)=4`
-/

namespace A160128.P2263518864733512409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n f1 =>
  4 * (f1 (n - 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160128.P2263518864733512409

namespace A160128

/-- `∑[4*(a(n-1)-1)]` -/
def P2263518864733512409.Spec : Prop :=
  ∀ n, P2263518864733512409.a n = A160128 n

end A160128

/-! ## A160128.P4507616027410626743

`4*(a(n-1)-n)-1` with `a(0)=3`
-/

namespace A160128.P4507616027410626743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  4 * (a (n - 1) - (n : ℤ)) - 1

end

end A160128.P4507616027410626743

namespace A160128

/-- `4*(a(n-1)-n)-1` -/
def P4507616027410626743.Spec : Prop :=
  ∀ n, P4507616027410626743.a n = A160128 n

end A160128

/-! ## A160128.P7039665164448910109

`∑[a(n-1)+4^n/2]` with `a(0)=3, a(1)=4`
-/

namespace A160128.P7039665164448910109
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3, 4] fun n f1 =>
  f1 (n - 1) + (4 ^ n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160128.P7039665164448910109

namespace A160128

/-- `∑[a(n-1)+4^n/2]` -/
def P7039665164448910109.Spec : Prop :=
  ∀ n, P7039665164448910109.a n = (A160128 n : ℚ)

end A160128

/-! ## A160128.P13431001502954665089

`A210985(n+1)`
-/

namespace A160128.P13431001502954665089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210985 (n + 1)

end

end A160128.P13431001502954665089

namespace A160128

/-- `A210985(n+1)` -/
def P13431001502954665089.Spec : Prop :=
  ∀ n, P13431001502954665089.a n = A160128 n

end A160128

/-! ## A160128.P965454213235700176

`∑[A321358(n)]-n`
-/

namespace A160128.P965454213235700176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321358 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A160128.P965454213235700176

namespace A160128

/-- `∑[A321358(n)]-n` -/
def P965454213235700176.Spec : Prop :=
  ∀ n, P965454213235700176.a n = A160128 n

end A160128

/-! ## A160128.P8603646736632175848

`2*A073724(n)+1`
-/

namespace A160128.P8603646736632175848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073724 n + 1

end

end A160128.P8603646736632175848

namespace A160128

/-- `2*A073724(n)+1` -/
def P8603646736632175848.Spec : Prop :=
  ∀ n, P8603646736632175848.a n = A160128 n

end A160128

/-! ## A160128.P14439132864292917608

`A166753(2*n)+2`
-/

namespace A160128.P14439132864292917608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166753 (2 * n) + 2

end

end A160128.P14439132864292917608

namespace A160128

/-- `A166753(2*n)+2` -/
def P14439132864292917608.Spec : Prop :=
  ∀ n, P14439132864292917608.a n = A160128 n

end A160128

/-! ## A160128.P16362919794478201781

`4*A350717(n)-1`
-/

namespace A160128.P16362919794478201781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A350717 n - 1

end

end A160128.P16362919794478201781

namespace A160128

/-- `4*A350717(n)-1` -/
def P16362919794478201781.Spec : Prop :=
  ∀ n, P16362919794478201781.a n = A160128 n

end A160128

/-! ## A160128.P8022824388126606016

`A160156(n)+2+n`
-/

namespace A160128.P8022824388126606016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160156 n + 2 + (n : ℤ)

end

end A160128.P8022824388126606016

namespace A160128

/-- `A160156(n)+2+n` -/
def P8022824388126606016.Spec : Prop :=
  ∀ n, P8022824388126606016.a n = A160128 n

end A160128

/-! ## A160128.P14465575239143116981

`A095342(Δ[n²])+2`
-/

namespace A160128.P14465575239143116981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095342 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A160128.P14465575239143116981

namespace A160128

/-- `A095342(Δ[n²])+2` -/
def P14465575239143116981.Spec : Prop :=
  ∀ n, P14465575239143116981.a n = A160128 n

end A160128

/-! ## A160128.P16872220166733511899

`record[A210985(abs(1-n))]`
-/

namespace A160128.P16872220166733511899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210985 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160128.P16872220166733511899

namespace A160128

/-- `record[A210985(abs(1-n))]` -/
def P16872220166733511899.Spec : Prop :=
  ∀ n, P16872220166733511899.a n = A160128 n

end A160128

/-! ## A160128.P6590896327754269410

`record[-A140962(n+3)]`
-/

namespace A160128.P6590896327754269410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A140962 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160128.P6590896327754269410

namespace A160128

/-- `record[-A140962(n+3)]` -/
def P6590896327754269410.Spec : Prop :=
  ∀ n, P6590896327754269410.a n = A160128 n

end A160128

/-! ## A160128.P17136104604553968051

`∑[record[A078052(n)+2]]`
-/

namespace A160128.P17136104604553968051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078052 n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160128.P17136104604553968051

namespace A160128

/-- `∑[record[A078052(n)+2]]` -/
def P17136104604553968051.Spec : Prop :=
  ∀ n, P17136104604553968051.a n = A160128 n

end A160128

/-! ## A160128.P1930031933066416713

`∑[record[A112691(n)+2]]`
-/

namespace A160128.P1930031933066416713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112691 n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160128.P1930031933066416713

namespace A160128

/-- `∑[record[A112691(n)+2]]` -/
def P1930031933066416713.Spec : Prop :=
  ∀ n, P1930031933066416713.a n = A160128 n

end A160128

/-! ## A160128.P2127495604555527994

`∑[record[A167193(n)+2]]`
-/

namespace A160128.P2127495604555527994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167193 n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160128.P2127495604555527994

namespace A160128

/-- `∑[record[A167193(n)+2]]` -/
def P2127495604555527994.Spec : Prop :=
  ∀ n, P2127495604555527994.a n = A160128 n

end A160128

/-!
# A160129: a(n) = least prime p such that both p-+6*n are prime.

The programs for A160129, there is no canonical definition to state claims against.
-/

/-! ## A160129.P10990780304298154465

`A240233(n+1)+6*(n+1)`
-/

namespace A160129.P10990780304298154465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240233 (n + 1) + (6 * (n + 1) : ℤ)

end

end A160129.P10990780304298154465

/-! ## A160129.P1812871423211261946

`1+A240233(n+1)+A016969(n)`
-/

namespace A160129.P1812871423211261946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + (A240233 (n + 1) + A016969 n)

end

end A160129.P1812871423211261946

/-! ## A160129.P8148684700936306832

`A290838(A240233(n+1)+A016969(n))`
-/

namespace A160129.P8148684700936306832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290838 (A240233 (n + 1) + A016969 n).toNat

end

end A160129.P8148684700936306832

/-! ## A160129.P10499055034292623233

`A076605(A240233(n+1)+A016969(n))`
-/

namespace A160129.P10499055034292623233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (A240233 (n + 1) + A016969 n).toNat

end

end A160129.P10499055034292623233

/-! ## A160129.P7696485869156826334

`A109613(A240233(n+1)+A016969(n))`
-/

namespace A160129.P7696485869156826334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A240233 (n + 1) + A016969 n).toNat

end

end A160129.P7696485869156826334

/-! ## A160129.P1695885760189402277

`A153152(A240233(n+1)+A016969(n))`
-/

namespace A160129.P1695885760189402277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (A240233 (n + 1) + A016969 n).toNat

end

end A160129.P1695885760189402277

/-!
# A160130: 2 x 2 inner (dot) products taken on corresponding digits in Pi and e.

The programs for A160130, there is no canonical definition to state claims against.
-/

/-! ## A160130.P9261098570116721959

`A073177(n)+Δ[A197562(n)]`
-/

namespace A160130.P9261098570116721959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073177 n + (f1 (n + 1) - f1 n)

end

end A160130.P9261098570116721959

/-! ## A160130.P16378682736521202416

`A073177(n+1)+A073177(n)`
-/

namespace A160130.P16378682736521202416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073177 (n + 1) + A073177 n

end

end A160130.P16378682736521202416

/-! ## A160130.P14290130889833642094

`Δ[A197562(n)]+A000796(n)*A001113(n)`
-/

namespace A160130.P14290130889833642094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A000796 (n + 1) * A001113 (n + 1)

end

end A160130.P14290130889833642094

/-! ## A160130.P14421451957410093409

`Δ[A197562(n)]+(9-A030644(n))*A001113(n)`
-/

namespace A160130.P14421451957410093409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (9 - A030644 (n + 1)) * A001113 (n + 1)

end

end A160130.P14421451957410093409

/-! ## A160130.P476663335227198564

`Δ[A197562(n)]+(9-A121239(n))*A000796(n)`
-/

namespace A160130.P476663335227198564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (9 - A121239 (n + 1)) * A000796 (n + 1)

end

end A160130.P476663335227198564

/-! ## A160130.P982918952860614480

`Δ[A197562(n)]+A228239(n+1)*A231325(n+1)`
-/

namespace A160130.P982918952860614480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A228239 (n + 1) * A231325 (n + 1)

end

end A160130.P982918952860614480

/-! ## A160130.P11556932275247561687

`Δ[A197562(n)]+A000796(n)*A001355(2*(n+1))`
-/

namespace A160130.P11556932275247561687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A000796 (n + 1) * A001355 (2 * (n + 1))

end

end A160130.P11556932275247561687

/-! ## A160130.P444483764128779320

`Δ[A197562(n)]+A001113(n)*A110766(2*n+1)`
-/

namespace A160130.P444483764128779320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A001113 (n + 1) * A110766 (2 * n + 1)

end

end A160130.P444483764128779320

/-! ## A160130.P15100857149172410426

`Δ[A197562(n)]+A001355(2*n+1)*A001355(2*(n+1))`
-/

namespace A160130.P15100857149172410426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A001355 (2 * n + 1) * A001355 (2 * (n + 1))

end

end A160130.P15100857149172410426

/-!
# A160133: Values k such that A001065(x) = k has more than one solution.

The programs for A160133, there is no canonical definition to state claims against.
-/

/-! ## A160133.P17959564213114287797

`lt[3, A135561(a(A048138(n))+1)]` with `a(0)=2, a(1)=4`
-/

namespace A160133.P17959564213114287797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n f2 =>
  A135561 (f2 (A048138 n).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A160133.P17959564213114287797

/-!
# A160134: Nonprimitive e-perfect numbers.

The programs for A160134, there is no canonical definition to state claims against.
-/

/-! ## A160134.P12470667417755197113

`∩[A054979(n+1), A393947(n+1)]`
-/

namespace A160134.P12470667417755197113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054979 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160134.P12470667417755197113

/-! ## A160134.P18000828691290918032

`filter[A054979(n+1), A389905(#)]`
-/

namespace A160134.P18000828691290918032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A160134.P18000828691290918032

/-! ## A160134.P7960794738213776985

`filter[A307958(n+2), A104106(#)]`
-/

namespace A160134.P7960794738213776985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307958 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A104106 (f1 j).toNat = 1) n)

end

end A160134.P7960794738213776985

/-! ## A160134.P16342648605156015048

`filter[A307958(n+2), A130198(#)]`
-/

namespace A160134.P16342648605156015048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307958 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A130198 (f1 j).toNat = 1) n)

end

end A160134.P16342648605156015048

/-! ## A160134.P13452567311164141693

`filter[A307958(n+2), A131078(#)]`
-/

namespace A160134.P13452567311164141693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307958 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131078 (f1 j).toNat = 1) n)

end

end A160134.P13452567311164141693

/-! ## A160134.P6148657777996804162

`filter[A307958(n+2), A165211(#)]`
-/

namespace A160134.P6148657777996804162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307958 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A165211 (f1 j).toNat = 1) n)

end

end A160134.P6148657777996804162

/-! ## A160134.P4447465300332431406

`filter[A347892(n+2), A130198(#)]`
-/

namespace A160134.P4447465300332431406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347892 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A130198 (f1 j).toNat = 1) n)

end

end A160134.P4447465300332431406

/-! ## A160134.P7881248944247379544

`filter[A347892(n+2), A131078(#)]`
-/

namespace A160134.P7881248944247379544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347892 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131078 (f1 j).toNat = 1) n)

end

end A160134.P7881248944247379544

/-!
# A160135: Sum of non-exponential divisors of n.

The programs for A160135, there is no canonical definition to state claims against.
-/

/-! ## A160135.P10373306309534916147

`A173455(n+1)-A126164(n+1)`
-/

namespace A160135.P10373306309534916147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173455 (n + 1) - A126164 (n + 1)

end

end A160135.P10373306309534916147

/-! ## A160135.P7468591359279715421

`A048050(n+1)+1-A126164(n+1)`
-/

namespace A160135.P7468591359279715421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 1) + (1 - A126164 (n + 1))

end

end A160135.P7468591359279715421

/-! ## A160135.P6096804021581998724

`A173455(n+1)+n+1-A051377(n+1)`
-/

namespace A160135.P6096804021581998724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173455 (n + 1) + ((n + 1 : ℤ) - A051377 (n + 1))

end

end A160135.P6096804021581998724

/-! ## A160135.P5638686150269390096

`A000203(n+1)-A051377(n+1)%A000203(n+1)`
-/

namespace A160135.P5638686150269390096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - Int.tmod (A051377 (n + 1)) (A000203 (n + 1))

end

end A160135.P5638686150269390096

/-! ## A160135.P6454020692562160598

`A048050(n+1)+A024000(A126164(n+1))`
-/

namespace A160135.P6454020692562160598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 1) + A024000 (A126164 (n + 1)).toNat

end

end A160135.P6454020692562160598

/-! ## A160135.P9113611102192309162

`A028310(A000203(n+1)-A051377(n+1))`
-/

namespace A160135.P9113611102192309162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A000203 (n + 1) - A051377 (n + 1)).toNat

end

end A160135.P9113611102192309162

/-! ## A160135.P6409199645251603482

`A028310(A001065(n+1)-A126164(n+1))`
-/

namespace A160135.P6409199645251603482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A001065 (n + 1) - A126164 (n + 1)).toNat

end

end A160135.P6409199645251603482

/-! ## A160135.P12088411084868666792

`A000203(n+1)-A051377(n+1)%A000716(n)`
-/

namespace A160135.P12088411084868666792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - Int.tmod (A051377 (n + 1)) (A000716 n)

end

end A160135.P12088411084868666792

/-! ## A160135.P8283022825122215261

`A233583(A088580(n+1))-A051377(n+1)`
-/

namespace A160135.P8283022825122215261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A088580 (n + 1)).toNat - A051377 (n + 1)

end

end A160135.P8283022825122215261

/-!
# A160143: a(n) = Numerator((-1)^n*Euler(2*n)*(2*n+1)/(4^(2*n+1)-2^(2*n+1))), where Euler(n) = A122045(n).

The programs for A160143, there is no canonical definition to state claims against.
-/

/-! ## A160143.P7474303094912389467

`record[A193472(n)]`
-/

namespace A160143.P7474303094912389467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193472 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160143.P7474303094912389467

/-! ## A160143.P8252820442386148762

`A193472(Δ[n²])`
-/

namespace A160143.P8252820442386148762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193472 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A160143.P8252820442386148762

/-! ## A160143.P16111717094304277379

`or(1, A193472(A005408(n)))`
-/

namespace A160143.P16111717094304277379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A193472 (A005408 n).toNat)

end

end A160143.P16111717094304277379

/-! ## A160143.P11141416123342720225

`A000364(n)*A160144(n)`
-/

namespace A160143.P11141416123342720225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000364 n * A160144 n

end

end A160143.P11141416123342720225

/-! ## A160143.P17150126494880789489

`A125053(n²)*A160144(n)`
-/

namespace A160143.P17150126494880789489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125053 (n ^ 2) * A160144 n

end

end A160143.P17150126494880789489

/-!
# A160144: Numerator of (2*n+1)/(2^(2*n+1)-1).

The programs for A160144, the canonical program `A160144.P6080785552484719942` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160144 has offset 0).

The definition of A160144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160144.P683512783180678070

`Δ[n²]-A160145(n)`
-/

namespace A160144.P683512783180678070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A160145 n

end

end A160144.P683512783180678070

namespace A160144

/-- `Δ[n²]-A160145(n)` -/
def P683512783180678070.Spec : Prop :=
  ∀ n, P683512783180678070.a n = A160144 n

end A160144

/-! ## A160144.P18354917111051425419

`n+1-A160145(n%(n+1))+n`
-/

namespace A160144.P18354917111051425419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A160145 (n % (n + 1)) + (n : ℤ)

end

end A160144.P18354917111051425419

namespace A160144

/-- `n+1-A160145(n%(n+1))+n` -/
def P18354917111051425419.Spec : Prop :=
  ∀ n, P18354917111051425419.a n = A160144 n

end A160144

/-! ## A160144.P6102623900418279655

`gcd(A157142(n), A160145(n))`
-/

namespace A160144.P6102623900418279655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A157142 n) (A160145 n)

end

end A160144.P6102623900418279655

namespace A160144

/-- `gcd(A157142(n), A160145(n))` -/
def P6102623900418279655.Spec : Prop :=
  ∀ n, (P6102623900418279655.a n : ℤ) = A160144 n

end A160144

/-! ## A160144.P16928837361187732509

`A005843(n)+1-A160145(n)`
-/

namespace A160144.P16928837361187732509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (1 - A160145 n)

end

end A160144.P16928837361187732509

namespace A160144

/-- `A005843(n)+1-A160145(n)` -/
def P16928837361187732509.Spec : Prop :=
  ∀ n, P16928837361187732509.a n = A160144 n

end A160144

/-! ## A160144.P6080785552484719942

`(2*n+1)/A014491(2*n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A160144

/-- `(2*n+1)/A014491(2*n+1)` -/
def P6080785552484719942.Spec : Prop :=
  ∀ n, P6080785552484719942.a n = (A160144 n : ℚ)

end A160144

/-! ## A160144.P15963203087048717660

`A022998(2*n+1-A160145(n))`
-/

namespace A160144.P15963203087048717660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 ((2 * n + 1 : ℤ) - A160145 n).toNat

end

end A160144.P15963203087048717660

namespace A160144

/-- `A022998(2*n+1-A160145(n))` -/
def P15963203087048717660.Spec : Prop :=
  ∀ n, P15963203087048717660.a n = A160144 n

end A160144

/-! ## A160144.P4089300041548495548

`(2*n+1)/gcd(2*n+1, A126646(2*n))`
-/

namespace A160144.P4089300041548495548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (Int.gcd (2 * n + 1 : ℤ) (A126646 (2 * n)) : ℚ)

end

end A160144.P4089300041548495548

namespace A160144

/-- `(2*n+1)/gcd(2*n+1, A126646(2*n))` -/
def P4089300041548495548.Spec : Prop :=
  ∀ n, P4089300041548495548.a n = (A160144 n : ℚ)

end A160144

/-! ## A160144.P1685307764856704766

`(4*n+2)/gcd(4*n+2, A095121(2*n+1))`
-/

namespace A160144.P1685307764856704766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * n + 2 : ℚ) / (Int.gcd (4 * n + 2 : ℤ) (A095121 (2 * n + 1)) : ℚ)

end

end A160144.P1685307764856704766

namespace A160144

/-- `(4*n+2)/gcd(4*n+2, A095121(2*n+1))` -/
def P1685307764856704766.Spec : Prop :=
  ∀ n, P1685307764856704766.a n = (A160144 n : ℚ)

end A160144

/-! ## A160144.P14248336487800995657

`(2*n+1)/A000225(2*n+1)*A090633(2*n+1)`
-/

namespace A160144.P14248336487800995657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (A000225 (2 * n + 1) : ℚ) * (A090633 (2 * n + 1) : ℚ)

end

end A160144.P14248336487800995657

namespace A160144

/-- `(2*n+1)/A000225(2*n+1)*A090633(2*n+1)` -/
def P14248336487800995657.Spec : Prop :=
  ∀ n, P14248336487800995657.a n = (A160144 n : ℚ)

end A160144

/-! ## A160144.P3653130889139507500

`A079097(2*n)/gcd(A079097(2*n), A084634(2*n))`
-/

namespace A160144.P3653130889139507500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079097 (2 * n) : ℚ) / (Int.gcd (A079097 (2 * n)) (A084634 (2 * n)) : ℚ)

end

end A160144.P3653130889139507500

namespace A160144

/-- `A079097(2*n)/gcd(A079097(2*n), A084634(2*n))` -/
def P3653130889139507500.Spec : Prop :=
  ∀ n, P3653130889139507500.a n = (A160144 n : ℚ)

end A160144

/-! ## A160144.P10136183417628524973

`A109613(2*n)/gcd(A109613(2*n), A134067(2*n))`
-/

namespace A160144.P10136183417628524973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109613 (2 * n) : ℚ) / (Int.gcd (A109613 (2 * n)) (A134067 (2 * n)) : ℚ)

end

end A160144.P10136183417628524973

namespace A160144

/-- `A109613(2*n)/gcd(A109613(2*n), A134067(2*n))` -/
def P10136183417628524973.Spec : Prop :=
  ∀ n, P10136183417628524973.a n = (A160144 n : ℚ)

end A160144

/-! ## A160144.P410772551651060061

`A026741(2*n+1)/gcd(A000225(2*n+1), A026741(2*n+1))`
-/

namespace A160144.P410772551651060061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026741 (2 * n + 1) : ℚ) / (Int.gcd (A000225 (2 * n + 1)) (A026741 (2 * n + 1)) : ℚ)

end

end A160144.P410772551651060061

namespace A160144

/-- `A026741(2*n+1)/gcd(A000225(2*n+1), A026741(2*n+1))` -/
def P410772551651060061.Spec : Prop :=
  ∀ n, P410772551651060061.a n = (A160144 n : ℚ)

end A160144

/-! ## A160144.P2690508493536463528

`A000027(2*n+1)/gcd(A000027(2*n+1), A159741(2*n+1))`
-/

namespace A160144.P2690508493536463528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (2 * n + 1) : ℚ) / (Int.gcd (A000027 (2 * n + 1)) (A159741 (2 * n + 1)) : ℚ)

end

end A160144.P2690508493536463528

namespace A160144

/-- `A000027(2*n+1)/gcd(A000027(2*n+1), A159741(2*n+1))` -/
def P2690508493536463528.Spec : Prop :=
  ∀ n, P2690508493536463528.a n = (A160144 n : ℚ)

end A160144

/-! ## A160144.P12009110049521408673

`A028310(2*n+1)/gcd(A028310(2*n+1), A175166(2*n+1))`
-/

namespace A160144.P12009110049521408673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 (2 * n + 1) : ℚ) / (Int.gcd (A028310 (2 * n + 1)) (A175166 (2 * n + 1)) : ℚ)

end

end A160144.P12009110049521408673

namespace A160144

/-- `A028310(2*n+1)/gcd(A028310(2*n+1), A175166(2*n+1))` -/
def P12009110049521408673.Spec : Prop :=
  ∀ n, P12009110049521408673.a n = (A160144 n : ℚ)

end A160144

/-! ## A160144.P15207007205263060723

`gcd(2*n+1, A090634(2*n+1))`
-/

namespace A160144.P15207007205263060723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n + 1 : ℤ) (A090634 (2 * n + 1))

end

end A160144.P15207007205263060723

namespace A160144

/-- `gcd(2*n+1, A090634(2*n+1))` -/
def P15207007205263060723.Spec : Prop :=
  ∀ n, (P15207007205263060723.a n : ℤ) = A160144 n

end A160144

/-! ## A160144.P13031337151058691190

`A090634(2*n+1)/A000079(n)²`
-/

namespace A160144.P13031337151058691190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090634 (2 * n + 1) : ℚ) / (A000079 n ^ 2 : ℚ)

end

end A160144.P13031337151058691190

namespace A160144

/-- `A090634(2*n+1)/A000079(n)²` -/
def P13031337151058691190.Spec : Prop :=
  ∀ n, P13031337151058691190.a n = (A160144 n : ℚ)

end A160144

/-! ## A160144.P7560279956253825539

`A090634(2*n+1)/A000079(2*n)`
-/

namespace A160144.P7560279956253825539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090634 (2 * n + 1) : ℚ) / (A000079 (2 * n) : ℚ)

end

end A160144.P7560279956253825539

namespace A160144

/-- `A090634(2*n+1)/A000079(2*n)` -/
def P7560279956253825539.Spec : Prop :=
  ∀ n, P7560279956253825539.a n = (A160144 n : ℚ)

end A160144

/-! ## A160144.P17118062141742331695

`A131135(2*n+1)/A000079(2*n+1)`
-/

namespace A160144.P17118062141742331695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131135 (2 * n + 1) : ℚ) / (A000079 (2 * n + 1) : ℚ)

end

end A160144.P17118062141742331695

namespace A160144

/-- `A131135(2*n+1)/A000079(2*n+1)` -/
def P17118062141742331695.Spec : Prop :=
  ∀ n, P17118062141742331695.a n = (A160144 n : ℚ)

end A160144

/-! ## A160144.P16755906157800061847

`gcd(2*n+1, A114721(n+1))`
-/

namespace A160144.P16755906157800061847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n + 1 : ℤ) (A114721 (n + 1))

end

end A160144.P16755906157800061847

namespace A160144

/-- `gcd(2*n+1, A114721(n+1))` -/
def P16755906157800061847.Spec : Prop :=
  ∀ n, (P16755906157800061847.a n : ℤ) = A160144 n

end A160144

/-!
# A160145: a(n) = the odd number 2n+1 minus the numerator of (2n+1)/(2^(2n+1)-1).

The programs for A160145, the canonical program `A160145.P11156095965020808624` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160145 has offset 0).

The definition of A160145 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160144, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A160145.P11156095965020808624

`A005408(n)-A160144(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A160145

/-- `A005408(n)-A160144(n)` -/
def P11156095965020808624.Spec : Prop :=
  ∀ n, P11156095965020808624.a n = A160145 n

theorem P11156095965020808624.correct : P11156095965020808624.Spec := by
  intro n
  simp only [A160145]

end A160145

/-! ## A160145.P6714765334552854338

`Δ[n²]-A160144(n)`
-/

namespace A160145.P6714765334552854338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A160144 n

end

end A160145.P6714765334552854338

namespace A160145

/-- `Δ[n²]-A160144(n)` -/
def P6714765334552854338.Spec : Prop :=
  ∀ n, P6714765334552854338.a n = A160145 n

theorem P6714765334552854338.correct : P6714765334552854338.Spec := by
  intro n
  simp only [A160145, Nat.add_sub_cancel, A160145.P6714765334552854338.f1, A160145.P6714765334552854338.a, A160145.P11156095965020808624.a, A005408, A005408.P17437947328870227736.a, A160144, A160144.P6080785552484719942.a, A014491, A014491.P13671895498974125134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A160145

/-! ## A160145.P6222843675642905606

`n+1-A160144(n%(n+1))+n`
-/

namespace A160145.P6222843675642905606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A160144 (n % (n + 1)) + (n : ℤ)

end

end A160145.P6222843675642905606

namespace A160145

/-- `n+1-A160144(n%(n+1))+n` -/
def P6222843675642905606.Spec : Prop :=
  ∀ n, P6222843675642905606.a n = A160145 n

end A160145

/-! ## A160145.P3895641620295485036

`A000290(n+1)-(A160144(n)+A000290(n))`
-/

namespace A160145.P3895641620295485036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) - (A160144 n + A000290 n)

end

end A160145.P3895641620295485036

namespace A160145

/-- `A000290(n+1)-(A160144(n)+A000290(n))` -/
def P3895641620295485036.Spec : Prop :=
  ∀ n, P3895641620295485036.a n = A160145 n

theorem P3895641620295485036.correct : P3895641620295485036.Spec := by
  intro n
  simp only [A160145, Nat.add_sub_cancel, A160145.P3895641620295485036.a, A160145.P11156095965020808624.a, A000290, A000290.P12206242496348924484.a, A005408, A005408.P17437947328870227736.a, A160144, A160144.P6080785552484719942.a, A014491, A014491.P13671895498974125134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A160145

/-! ## A160145.P16731987881234125139

`A002522(n+1)-(A160144(n)+A002522(n))`
-/

namespace A160145.P16731987881234125139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (n + 1) - (A160144 n + A002522 n)

end

end A160145.P16731987881234125139

namespace A160145

/-- `A002522(n+1)-(A160144(n)+A002522(n))` -/
def P16731987881234125139.Spec : Prop :=
  ∀ n, P16731987881234125139.a n = A160145 n

theorem P16731987881234125139.correct : P16731987881234125139.Spec := by
  intro n
  simp only [A160145, Nat.add_sub_cancel, A160145.P16731987881234125139.a, A160145.P11156095965020808624.a, A002522, A002522.P3778392011853271743.a, A005408, A005408.P17437947328870227736.a, A160144, A160144.P6080785552484719942.a, A014491, A014491.P13671895498974125134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A160145

/-! ## A160145.P13788179502019433195

`2*n+1-(2*n+1)/A014491(2*n+1)`
-/

namespace A160145.P13788179502019433195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) - (2 * n + 1 : ℚ) / (A014491 (2 * n + 1) : ℚ)

end

end A160145.P13788179502019433195

namespace A160145

/-- `2*n+1-(2*n+1)/A014491(2*n+1)` -/
def P13788179502019433195.Spec : Prop :=
  ∀ n, P13788179502019433195.a n = (A160145 n : ℚ)

end A160145

/-!
# A160154: 10^n-9n for n>=1.

The programs for A160154, the canonical program `A160154.P5663550707097827206` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160154 has offset 0).

The definition of A160154 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160154.P5663550707097827206

`and(-2, 10^n)-9*n`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A160154

/-- `and(-2, 10^n)-9*n` -/
def P5663550707097827206.Spec : Prop :=
  ∀ n, P5663550707097827206.a n = A160154 n

theorem P5663550707097827206.correct : P5663550707097827206.Spec := by
  intro n
  simp only [A160154]

end A160154

/-! ## A160154.P15302761408535228605

`10^n-(9*n)^ceil(abs(sin(n)))`
-/

namespace A160154.P15302761408535228605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℚ) - (9 * n : ℚ) ^ (⌈|Real.sin (n : ℝ)|⌉ : ℤ)

end

end A160154.P15302761408535228605

namespace A160154

/-- `10^n-(9*n)^ceil(abs(sin(n)))` -/
def P15302761408535228605.Spec : Prop :=
  ∀ n, P15302761408535228605.a n = (A160154 n : ℚ)

end A160154

/-! ## A160154.P17297744857425746215

`A178500(n)-9*n`
-/

namespace A160154.P17297744857425746215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178500 n - (9 * n : ℤ)

end

end A160154.P17297744857425746215

namespace A160154

/-- `A178500(n)-9*n` -/
def P17297744857425746215.Spec : Prop :=
  ∀ n, P17297744857425746215.a n = A160154 n

end A160154

/-! ## A160154.P9825941717678228910

`A017934(2*n)-A314829(2*n)`
-/

namespace A160154.P9825941717678228910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017934 (2 * n) - A314829 (2 * n)

end

end A160154.P9825941717678228910

namespace A160154

/-- `A017934(2*n)-A314829(2*n)` -/
def P9825941717678228910.Spec : Prop :=
  ∀ n, P9825941717678228910.a n = A160154 n

end A160154

/-! ## A160154.P15311220994581080250

`or(1, 10^n)-(9*n+1)`
-/

namespace A160154.P15311220994581080250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (10 ^ n) : ℤ) - (9 * n + 1 : ℤ)

end

end A160154.P15311220994581080250

namespace A160154

/-- `or(1, 10^n)-(9*n+1)` -/
def P15311220994581080250.Spec : Prop :=
  ∀ n, P15311220994581080250.a n = A160154 n

end A160154

/-! ## A160154.P4744413932853177961

`or(1, 10^n)-9*n-1`
-/

namespace A160154.P4744413932853177961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (10 ^ n) : ℤ) - (9 * n : ℤ) - 1

end

end A160154.P4744413932853177961

namespace A160154

/-- `or(1, 10^n)-9*n-1` -/
def P4744413932853177961.Spec : Prop :=
  ∀ n, P4744413932853177961.a n = A160154 n

end A160154

/-!
# A160156: Partial sums of A007583.

The programs for A160156, the canonical program `A160156.P5560240215093798645` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160156 has offset 0).

The definition of A160156 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160156.P12316386829937229897

`ogf((1-2x)/(1-6x+9x^2-4x^3))`
-/

namespace A160156.P12316386829937229897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -6, 9, -4] n

end

end A160156.P12316386829937229897

namespace A160156

/-- `ogf((1-2x)/(1-6x+9x^2-4x^3))` -/
def P12316386829937229897.Spec : Prop :=
  ∀ n, P12316386829937229897.a n = A160156 n

end A160156

/-! ## A160156.P5560240215093798645

`5*a(n-1)-4*a(n-2)-1` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A160156

/-- `5*a(n-1)-4*a(n-2)-1` -/
def P5560240215093798645.Spec : Prop :=
  ∀ n, P5560240215093798645.a n = A160156 n

theorem P5560240215093798645.correct : P5560240215093798645.Spec := by
  intro n
  simp only [A160156]

end A160156

/-! ## A160156.P13877392724925363397

`A034299(2*n)`
-/

namespace A160156.P13877392724925363397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034299 (2 * n)

end

end A160156.P13877392724925363397

namespace A160156

/-- `A034299(2*n)` -/
def P13877392724925363397.Spec : Prop :=
  ∀ n, P13877392724925363397.a n = A160156 n

end A160156

/-! ## A160156.P2003485195444931089

`A350717(n+1)-1`
-/

namespace A160156.P2003485195444931089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350717 (n + 1) - 1

end

end A160156.P2003485195444931089

namespace A160156

/-- `A350717(n+1)-1` -/
def P2003485195444931089.Spec : Prop :=
  ∀ n, P2003485195444931089.a n = A160156 n

end A160156

/-! ## A160156.P3114107332232850041

`(2^(2*n+3)+3*n+1)/9`
-/

namespace A160156.P3114107332232850041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ (2 * n + 3) + 3 * n + 1 : ℚ) / 9

end

end A160156.P3114107332232850041

namespace A160156

/-- `(2^(2*n+3)+3*n+1)/9` -/
def P3114107332232850041.Spec : Prop :=
  ∀ n, P3114107332232850041.a n = (A160156 n : ℚ)

theorem P3114107332232850041.correct : P3114107332232850041.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A160156, Nat.add_sub_cancel, A160156.P3114107332232850041.a, A160156.P5560240215093798645.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A160156, Nat.add_sub_cancel, A160156.P3114107332232850041.a, A160156.P5560240215093798645.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A160156

/-! ## A160156.P9844166820730695738

`∑[record[∑[(-2)^n]]]`
-/

namespace A160156.P9844166820730695738
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160156.P9844166820730695738

namespace A160156

/-- `∑[record[∑[(-2)^n]]]` -/
def P9844166820730695738.Spec : Prop :=
  ∀ n, P9844166820730695738.a n = A160156 n

end A160156

/-! ## A160156.P13140980413084234982

`∑[ogf((1-2x)/(1-5x+4x^2))]`
-/

namespace A160156.P13140980413084234982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -5, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160156.P13140980413084234982

namespace A160156

/-- `∑[ogf((1-2x)/(1-5x+4x^2))]` -/
def P13140980413084234982.Spec : Prop :=
  ∀ n, P13140980413084234982.a n = A160156 n

end A160156

/-! ## A160156.P2120068114765701028

`∑[∑[lcm(2, 4^n)/2]]`
-/

namespace A160156.P2120068114765701028
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (4 ^ n) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160156.P2120068114765701028

namespace A160156

/-- `∑[∑[lcm(2, 4^n)/2]]` -/
def P2120068114765701028.Spec : Prop :=
  ∀ n, P2120068114765701028.a n = (A160156 n : ℚ)

end A160156

/-! ## A160156.P2728727436570920048

`∑[4*a(n-1)-1]` with `a(0)=1`
-/

namespace A160156.P2728727436570920048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  4 * f1 (n - 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160156.P2728727436570920048

namespace A160156

/-- `∑[4*a(n-1)-1]` -/
def P2728727436570920048.Spec : Prop :=
  ∀ n, P2728727436570920048.a n = A160156 n

end A160156

/-! ## A160156.P5100477242751248751

`4*a(n-1)+1-n` with `a(0)=1`
-/

namespace A160156.P5100477242751248751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) + (1 - (n : ℤ))

end

end A160156.P5100477242751248751

namespace A160156

/-- `4*a(n-1)+1-n` -/
def P5100477242751248751.Spec : Prop :=
  ∀ n, P5100477242751248751.a n = A160156 n

end A160156

/-! ## A160156.P13288781710621052496

`1-(n-4*a(n-1))` with `a(0)=1`
-/

namespace A160156.P13288781710621052496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - ((n : ℤ) - 4 * a (n - 1))

end

end A160156.P13288781710621052496

namespace A160156

/-- `1-(n-4*a(n-1))` -/
def P13288781710621052496.Spec : Prop :=
  ∀ n, P13288781710621052496.a n = A160156 n

end A160156

/-! ## A160156.P9382247977420307989

`∑[a(n-1)/(1/2)²-1]` with `a(0)=1`
-/

namespace A160156.P9382247977420307989
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) / ((1 : ℚ) / 2) ^ 2 - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160156.P9382247977420307989

namespace A160156

/-- `∑[a(n-1)/(1/2)²-1]` -/
def P9382247977420307989.Spec : Prop :=
  ∀ n, P9382247977420307989.a n = (A160156 n : ℚ)

end A160156

/-! ## A160156.P5751162874351723550

`4^n+(n-a(n-1))/2` with `a(0)=1`
-/

namespace A160156.P5751162874351723550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (4 ^ n : ℚ) + ((n : ℚ) - a (n - 1)) / 2

end

end A160156.P5751162874351723550

namespace A160156

/-- `4^n+(n-a(n-1))/2` -/
def P5751162874351723550.Spec : Prop :=
  ∀ n, P5751162874351723550.a n = (A160156 n : ℚ)

end A160156

/-! ## A160156.P984878272521199013

`4^n-(a(n-1)-n)/2` with `a(0)=1`
-/

namespace A160156.P984878272521199013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (4 ^ n : ℚ) - (a (n - 1) - (n : ℚ)) / 2

end

end A160156.P984878272521199013

namespace A160156

/-- `4^n-(a(n-1)-n)/2` -/
def P984878272521199013.Spec : Prop :=
  ∀ n, P984878272521199013.a n = (A160156 n : ℚ)

end A160156

/-! ## A160156.P696864928744369129

`a(n-1)/(1/2)²-(n-1)` with `a(0)=1`
-/

namespace A160156.P696864928744369129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2 - ((n : ℤ) - 1 : ℚ)

end

end A160156.P696864928744369129

namespace A160156

/-- `a(n-1)/(1/2)²-(n-1)` -/
def P696864928744369129.Spec : Prop :=
  ∀ n, P696864928744369129.a n = (A160156 n : ℚ)

end A160156

/-! ## A160156.P12343823609019660643

`a(n-1)+1+a(n-1)+a(n-1)+a(n-1)-n` with `a(0)=1`
-/

namespace A160156.P12343823609019660643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 1 + (a (n - 1) + (a (n - 1) + (a (n - 1) - (n : ℤ))))

end

end A160156.P12343823609019660643

namespace A160156

/-- `a(n-1)+1+a(n-1)+a(n-1)+a(n-1)-n` -/
def P12343823609019660643.Spec : Prop :=
  ∀ n, P12343823609019660643.a n = A160156 n

end A160156

/-! ## A160156.P4582390314726382705

`1-(n-a(n-1)-a(n-1)-a(n-1)-a(n-1))` with `a(0)=1`
-/

namespace A160156.P4582390314726382705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - ((n : ℤ) - a (n - 1) - a (n - 1) - a (n - 1) - a (n - 1))

end

end A160156.P4582390314726382705

namespace A160156

/-- `1-(n-a(n-1)-a(n-1)-a(n-1)-a(n-1))` -/
def P4582390314726382705.Spec : Prop :=
  ∀ n, P4582390314726382705.a n = A160156 n

end A160156

/-! ## A160156.P4705145421433982059

`∑[A007583(n)]`
-/

namespace A160156.P4705145421433982059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007583 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160156.P4705145421433982059

namespace A160156

/-- `∑[A007583(n)]` -/
def P4705145421433982059.Spec : Prop :=
  ∀ n, P4705145421433982059.a n = A160156 n

end A160156

/-! ## A160156.P13425695987228633079

`∑[∑[A081294(n)]]`
-/

namespace A160156.P13425695987228633079
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160156.P13425695987228633079

namespace A160156

/-- `∑[∑[A081294(n)]]` -/
def P13425695987228633079.Spec : Prop :=
  ∀ n, P13425695987228633079.a n = A160156 n

end A160156

/-! ## A160156.P7794065500725209819

`∑[A020988(n)+1]`
-/

namespace A160156.P7794065500725209819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020988 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160156.P7794065500725209819

namespace A160156

/-- `∑[A020988(n)+1]` -/
def P7794065500725209819.Spec : Prop :=
  ∀ n, P7794065500725209819.a n = A160156 n

end A160156

/-!
# A160157: a(n) = 2*A160120(n).

The programs for A160157, there is no canonical definition to state claims against.
-/

/-! ## A160157.P17656409233126260840

`2*A160120(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A160157.P17656409233126260840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160120 n

end

end A160157.P17656409233126260840

/-! ## A160157.P12566784260667339358

`A253770(n)/3`
-/

namespace A160157.P12566784260667339358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253770 n : ℚ) / 3

end

end A160157.P12566784260667339358

/-! ## A160157.P9325171375226589868

`∑[A253771(n)/3]`
-/

namespace A160157.P9325171375226589868
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253771 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160157.P9325171375226589868

/-! ## A160157.P11214741299984980885

`2/3*A160167(n)`
-/

namespace A160157.P11214741299984980885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A160167 n : ℚ)

end

end A160157.P11214741299984980885

/-! ## A160157.P2806971385803074715

`2*(∑[A160121(ceil(abs(γ-n)))]-1)`
-/

namespace A160157.P2806971385803074715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160121 ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A160157.P2806971385803074715

/-!
# A160158: Toothpick sequence starting from a segment of length 4 formed by two toothpicks.

The programs for A160158, there is no canonical definition to state claims against.
-/

/-! ## A160158.P7665242016005991885

`2*A160162(n)`
-/

namespace A160158.P7665242016005991885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160162 n

end

end A160158.P7665242016005991885

/-! ## A160158.P17290886360032551910

`A160159(n)+a(n-1)` with `a(0)=0`
-/

namespace A160158.P17290886360032551910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A160159 n + a (n - 1)

end

end A160158.P17290886360032551910

/-! ## A160158.P4735764410806916091

`2*(∑[A160163(abs(1-n)+1)]-1)`
-/

namespace A160158.P4735764410806916091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160163 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A160158.P4735764410806916091

/-! ## A160158.P7550499826166429525

`A005843(A160162(n))`
-/

namespace A160158.P7550499826166429525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A160162 n).toNat

end

end A160158.P7550499826166429525

/-! ## A160158.P674692474524020630

`2*A160732(n)-A160740(n)`
-/

namespace A160158.P674692474524020630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160732 n - A160740 n

end

end A160158.P674692474524020630

/-! ## A160158.P12621583666867444051

`2*(A160732(n)-2*A160406(n))`
-/

namespace A160158.P12621583666867444051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A160732 n - 2 * A160406 n)

end

end A160158.P12621583666867444051

/-! ## A160158.P13267240209665273618

`∑[A160159(n+1)]-A160159(n+1)`
-/

namespace A160158.P13267240209665273618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A160159 (n + 1)

end

end A160158.P13267240209665273618

/-! ## A160158.P218255930613614107

`A005843(A160732(n))-A160740(n)`
-/

namespace A160158.P218255930613614107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A160732 n).toNat - A160740 n

end

end A160158.P218255930613614107

/-! ## A160158.P15815341174176501638

`2*(A160732(n)-A005843(A160406(n)))`
-/

namespace A160158.P15815341174176501638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A160732 n - A005843 (A160406 n).toNat)

end

end A160158.P15815341174176501638

/-!
# A160159: First differences of A160158.

The programs for A160159, there is no canonical definition to state claims against.
-/

/-! ## A160159.P14758979596278062665

`and(A160552(n+3)+A160552(n), -2)`
-/

namespace A160159.P14758979596278062665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A160552 (n + 3) + A160552 n) (-2)

end

end A160159.P14758979596278062665

/-! ## A160159.P16836174959795594350

`A004524(A151568(n+3)+A151568(n))`
-/

namespace A160159.P16836174959795594350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A151568 (n + 3) + A151568 n).toNat

end

end A160159.P16836174959795594350

/-! ## A160159.P8126412571396552092

`A052928(A160552(n+3)+A160552(n))`
-/

namespace A160159.P8126412571396552092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A160552 (n + 3) + A160552 n).toNat

end

end A160159.P8126412571396552092

/-! ## A160159.P17089856093939665005

`2*A004525(A160552(n+3)+A160552(n))`
-/

namespace A160159.P17089856093939665005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004525 (A160552 (n + 3) + A160552 n).toNat

end

end A160159.P17089856093939665005

/-! ## A160159.P7991354169524922098

`2*A004526(A160552(n+3)+A160552(n))`
-/

namespace A160159.P7991354169524922098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004526 (A160552 (n + 3) + A160552 n).toNat

end

end A160159.P7991354169524922098

/-! ## A160159.P11181094171725584397

`A160552(n+3)+A160552(n)-A000007(n)`
-/

namespace A160159.P11181094171725584397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 (n + 3) + A160552 n - A000007 n

end

end A160159.P11181094171725584397

/-! ## A160159.P978341272793828117

`A160552(n+3)+A160552(n)-A000045(C(2, n+2))`
-/

namespace A160159.P978341272793828117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 (n + 3) + A160552 n - A000045 (Nat.choose 2 (n + 2))

end

end A160159.P978341272793828117

/-! ## A160159.P10762484705181861299

`A160552(n+3)+A160552(n)-floor(1/A005117(n+1))`
-/

namespace A160159.P10762484705181861299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 (n + 3) + A160552 n - ⌊1 / (A005117 (n + 1) : ℚ)⌋

end

end A160159.P10762484705181861299

/-! ## A160159.P6637340488195637416

`A000040(n+1)%2-1+A160552(n+3)+A160552(n)`
-/

namespace A160159.P6637340488195637416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 - 1 + (A160552 (n + 3) + A160552 n)

end

end A160159.P6637340488195637416

/-! ## A160159.P17304741182844906880

`A000032(C(2, n+2))-(2-(A160552(n+3)+A160552(n)))`
-/

namespace A160159.P17304741182844906880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose 2 (n + 2)) - (2 - (A160552 (n + 3) + A160552 n))

end

end A160159.P17304741182844906880

/-!
# A160160: Toothpick sequence in the three-dimensional grid.

The programs for A160160, there is no canonical definition to state claims against.
-/

/-! ## A160160.P19336608127052085

`∑[A160161(n)]`
-/

namespace A160160.P19336608127052085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160160.P19336608127052085

/-! ## A160160.P14538171460435001177

`A160161(n)+a(A023443(n))` with `a(0)=0`
-/

namespace A160160.P14538171460435001177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A160161 n + a (A023443 n).toNat

end

end A160160.P14538171460435001177

/-! ## A160160.P8926878094830029435

`A160161(n)+a(A028310(n)-1)` with `a(0)=0`
-/

namespace A160160.P8926878094830029435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A160161 n + a (A028310 n - 1).toNat

end

end A160160.P8926878094830029435

/-! ## A160160.P14056711691633476890

`A160161(n)+a(A000027(n+1)-2)` with `a(0)=0`
-/

namespace A160160.P14056711691633476890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A160161 n + a (A000027 (n + 1) - 2).toNat

end

end A160160.P14056711691633476890

/-! ## A160160.P470663338909282589

`A160161(n)+a(A213582(A000217(n))-1)` with `a(0)=0`
-/

namespace A160160.P470663338909282589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A160161 n + a (A213582 (A000217 n).toNat - 1).toNat

end

end A160160.P470663338909282589

/-!
# A160161: First differences of the 3D toothpick numbers A160160.

The programs for A160161, there is no canonical definition to state claims against.
-/

/-! ## A160161.P9613469102883960147

`Δ[A160160(A004273(n)-n)]`
-/

namespace A160161.P9613469102883960147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160160 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160161.P9613469102883960147

/-! ## A160161.P7650025113940768762

`Δ[A160160(A004524(A004273(n)))]`
-/

namespace A160161.P7650025113940768762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160160 (A004524 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160161.P7650025113940768762

/-! ## A160161.P14481502915133067672

`A160160(n)-A160160(A004273(n)-n)`
-/

namespace A160161.P14481502915133067672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160160 n - A160160 (A004273 n - (n : ℤ)).toNat

end

end A160161.P14481502915133067672

/-! ## A160161.P11083746758110873190

`A160160(n)-A160160(A267874(n+1)%(n+1))`
-/

namespace A160161.P11083746758110873190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160160 n - A160160 (Int.tmod (A267874 (n + 1)) (n + 1 : ℤ)).toNat

end

end A160161.P11083746758110873190

/-! ## A160161.P2406043978978967390

`A160160(n)-A160160(A004526(A004273(n)))`
-/

namespace A160161.P2406043978978967390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160160 n - A160160 (A004526 (A004273 n).toNat).toNat

end

end A160161.P2406043978978967390

/-! ## A160161.P6606167128335081831

`A160160(n)-A160160(log2(A011782(n)))`
-/

namespace A160161.P6606167128335081831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160160 n - A160160 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A160161.P6606167128335081831

/-! ## A160161.P6439381338868684008

`Δ[A160160(log2(A011782(n)))]`
-/

namespace A160161.P6439381338868684008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160160 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160161.P6439381338868684008

/-! ## A160161.P3182619005099049210

`Δ[A160160(A003056(A161680(n)))]`
-/

namespace A160161.P3182619005099049210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160160 (A003056 (A161680 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160161.P3182619005099049210

/-! ## A160161.P5463003421850344738

`Δ[A160160(A002262(A027379(n)))]`
-/

namespace A160161.P5463003421850344738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160160 (A002262 (A027379 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160161.P5463003421850344738

/-!
# A160162: a(n) = A160158(n)/2.

The programs for A160162, there is no canonical definition to state claims against.
-/

/-! ## A160162.P3798772587450102620

`A160158(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A160162.P3798772587450102620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160158 n : ℚ) / 2

end

end A160162.P3798772587450102620

/-! ## A160162.P8724920241877047835

`A160163(n)+a(n-1)` with `a(0)=0`
-/

namespace A160162.P8724920241877047835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A160163 n + a (n - 1)

end

end A160162.P8724920241877047835

/-! ## A160162.P2162157340650139222

`∑[A160163(abs(1-n)+1)]-1`
-/

namespace A160162.P2162157340650139222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160163 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A160162.P2162157340650139222

/-! ## A160162.P947899281671408778

`A160732(n)-2*A160406(n)`
-/

namespace A160162.P947899281671408778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160732 n - 2 * A160406 n

end

end A160162.P947899281671408778

/-! ## A160162.P17446692336333555130

`∑[A160163(a(A151935(n))+n)]` with `a(0)=0`
-/

namespace A160162.P17446692336333555130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A160163 (f1 (A151935 n).toNat + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160162.P17446692336333555130

/-! ## A160162.P9231053326718086337

`(∑[A160159(n+1)]-A160159(n+1))/2`
-/

namespace A160162.P9231053326718086337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160159 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A160159 (n + 1) : ℤ) : ℚ) / 2

end

end A160162.P9231053326718086337

/-! ## A160162.P2711436000310667997

`A152998(n)+Δ[A162777(n)]-n²%(n+1)`
-/

namespace A160162.P2711436000310667997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152998 n + (f1 (n + 1) - f1 n) - ((n ^ 2 % (n + 1) : ℕ) : ℤ)

end

end A160162.P2711436000310667997

/-! ## A160162.P13857456682353359314

`A160732(n)-A005843(A160406(n))`
-/

namespace A160162.P13857456682353359314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160732 n - A005843 (A160406 n).toNat

end

end A160162.P13857456682353359314

/-! ## A160162.P5229668584903315724

`∑[A160163(A028310(n))%A000032(n+1)]`
-/

namespace A160162.P5229668584903315724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160163 (A028310 n).toNat) (A000032 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160162.P5229668584903315724

/-! ## A160162.P12702808612403367513

`∑[A000040(n+1)%2*A160163(A028310(n))]`
-/

namespace A160162.P12702808612403367513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A160163 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160162.P12702808612403367513

/-!
# A160163: First differences of A160162.

The programs for A160163, there is no canonical definition to state claims against.
-/

/-! ## A160163.P1007584700320345760

`A160159(n+1)/2`
-/

namespace A160163.P1007584700320345760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160159 (n + 1) : ℚ) / 2

end

end A160163.P1007584700320345760

/-! ## A160163.P12132060068415275084

`Δ[A160162(n)]`
-/

namespace A160163.P12132060068415275084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160162 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160163.P12132060068415275084

/-! ## A160163.P1511843239638036958

`A001281(A160159(n+1))`
-/

namespace A160163.P1511843239638036958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A160159 (n + 1)).toNat

end

end A160163.P1511843239638036958

/-! ## A160163.P3186777559270647552

`A274923(A160159(n+1)²)`
-/

namespace A160163.P3186777559270647552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A160159 (n + 1) ^ 2).toNat

end

end A160163.P3186777559270647552

/-! ## A160163.P1278001048110828695

`A004524(A160159(n+1)+1)`
-/

namespace A160163.P1278001048110828695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A160159 (n + 1) + 1).toNat

end

end A160163.P1278001048110828695

/-! ## A160163.P10384464322922173222

`A004526(A160159(n+1)+1)`
-/

namespace A160163.P10384464322922173222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A160159 (n + 1) + 1).toNat

end

end A160163.P10384464322922173222

/-! ## A160163.P9432134703800553678

`A028242(A160159(n+1)+1)`
-/

namespace A160163.P9432134703800553678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A160159 (n + 1) + 1).toNat

end

end A160163.P9432134703800553678

/-! ## A160163.P6178582210092465445

`A000463(A160159(n+1)-1)`
-/

namespace A160163.P6178582210092465445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A160159 (n + 1) - 1).toNat

end

end A160163.P6178582210092465445

/-! ## A160163.P10386678745422008576

`A001057(A160159(n+1)-1)`
-/

namespace A160163.P10386678745422008576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A160159 (n + 1) - 1).toNat

end

end A160163.P10386678745422008576

/-! ## A160163.P10781977932776818173

`A008619(A160159(n+1)-1)`
-/

namespace A160163.P10781977932776818173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A160159 (n + 1) - 1).toNat

end

end A160163.P10781977932776818173

/-!
# A160164: Number of toothpicks after n-th stage in the I-toothpick structure of A139250.

The programs for A160164, there is no canonical definition to state claims against.
-/

/-! ## A160164.P109320941368900862

`2*A139250(n)`
-/

namespace A160164.P109320941368900862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139250 n

end

end A160164.P109320941368900862

/-! ## A160164.P13841777702398230034

`A187220(n+1)-1`
-/

namespace A160164.P13841777702398230034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187220 (n + 1) - 1

end

end A160164.P13841777702398230034

/-! ## A160164.P7736008985545538158

`∑[2*A139251(n)]`
-/

namespace A160164.P7736008985545538158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160164.P7736008985545538158

/-! ## A160164.P6926696133856127904

`∑[2*Δ[floor(A187220(n)/2)]]`
-/

namespace A160164.P6926696133856127904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A187220 n : ℚ) / 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160164.P6926696133856127904

/-! ## A160164.P12404229260266064072

`A139250(n)+∑[A139251(n)]`
-/

namespace A160164.P12404229260266064072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160164.P12404229260266064072

/-! ## A160164.P10499910622802519381

`2*(A173522(n)+A173454(n))`
-/

namespace A160164.P10499910622802519381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A173522 n + A173454 n)

end

end A160164.P10499910622802519381

/-! ## A160164.P1818421522111562998

`A139250(A005843(n)/2)+A139250(n)`
-/

namespace A160164.P1818421522111562998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A139250 n

end

end A160164.P1818421522111562998

/-! ## A160164.P7005444530039705719

`A139250(n)+A173522(n)+A173454(n)`
-/

namespace A160164.P7005444530039705719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n + (A173522 n + A173454 n)

end

end A160164.P7005444530039705719

/-! ## A160164.P14267131287304293319

`A246336(n)+A255747(n)-A151548(n)`
-/

namespace A160164.P14267131287304293319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246336 n + (A255747 n - A151548 n)

end

end A160164.P14267131287304293319

/-! ## A160164.P13820469356514344717

`A139250(n+1)+A139250(n)-A139251(n+1)`
-/

namespace A160164.P13820469356514344717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 (n + 1) + (A139250 n - A139251 (n + 1))

end

end A160164.P13820469356514344717

/-! ## A160164.P13847206179523780988

`A139250(n)+A139250(n)/A000120(A001316(n))`
-/

namespace A160164.P13847206179523780988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139250 n : ℚ) + (A139250 n : ℚ) / (A000120 (A001316 n).toNat : ℚ)

end

end A160164.P13847206179523780988

/-! ## A160164.P8889700337362099685

`Δ[∑[A187220(n)]-n]`
-/

namespace A160164.P8889700337362099685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187220 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160164.P8889700337362099685

/-! ## A160164.P12866673423409422658

`A255166(n)+A147562(n)`
-/

namespace A160164.P12866673423409422658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255166 n + A147562 n

end

end A160164.P12866673423409422658

/-! ## A160164.P3213449049964154313

`A194811(n)-A139250(n+1)`
-/

namespace A160164.P3213449049964154313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194811 n - A139250 (n + 1)

end

end A160164.P3213449049964154313

/-! ## A160164.P13813813580529171875

`2*(A159793(n)-A152998(n))`
-/

namespace A160164.P13813813580529171875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A159793 n - A152998 n)

end

end A160164.P13813813580529171875

/-! ## A160164.P6552535083444458679

`A194811(n)+A255747(n)-A246336(n)`
-/

namespace A160164.P6552535083444458679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194811 n + (A255747 n - A246336 n)

end

end A160164.P6552535083444458679

/-! ## A160164.P17546908946948678722

`A194811(n)-(A255747(n+1)+A255747(n))`
-/

namespace A160164.P17546908946948678722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194811 n - (A255747 (n + 1) + A255747 n)

end

end A160164.P17546908946948678722

/-! ## A160164.P4833366269977154290

`2*A266530(Δ[n²])`
-/

namespace A160164.P4833366269977154290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A266530 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A160164.P4833366269977154290

/-! ## A160164.P12604130143666097063

`record[lcm(2, A266530(n+1))]`
-/

namespace A160164.P12604130143666097063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A266530 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160164.P12604130143666097063

/-!
# A160165: a(n) = A000969(n) minus toothpick number A139250(n+1).

The programs for A160165, there is no canonical definition to state claims against.
-/

/-! ## A160165.P13482513388263504944

`A000969(n)-A139250(n+1)`
-/

namespace A160165.P13482513388263504944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000969 n - A139250 (n + 1)

end

end A160165.P13482513388263504944

/-! ## A160165.P4014615326514256311

`∑[∑[(n%3)!]]-Δ[A160424(n)]`
-/

namespace A160165.P4014615326514256311
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n % 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (f3 (n + 1) - f3 n)

end

end A160165.P4014615326514256311

/-! ## A160165.P18396633871751786908

`A000969(n)-Δ[A160424(n)]`
-/

namespace A160165.P18396633871751786908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000969 n - (f1 (n + 1) - f1 n)

end

end A160165.P18396633871751786908

/-! ## A160165.P14651481149646666586

`A000969(n)-∑[A139251(n+1)]`
-/

namespace A160165.P14651481149646666586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000969 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160165.P14651481149646666586

/-! ## A160165.P3300972927758647372

`∑[A004773(n+1)]-A139250(n+1)`
-/

namespace A160165.P3300972927758647372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A139250 (n + 1)

end

end A160165.P3300972927758647372

/-! ## A160165.P5305415809112082163

`A001840(2*n+1)-A139250(n+1)`
-/

namespace A160165.P5305415809112082163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 (2 * n + 1) - A139250 (n + 1)

end

end A160165.P5305415809112082163

/-! ## A160165.P12197341719402000205

`A000969(n)-A005408(A152998(n))`
-/

namespace A160165.P12197341719402000205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000969 n - A005408 (A152998 n).toNat

end

end A160165.P12197341719402000205

/-! ## A160165.P14656664969079446212

`A002264(∑[n])-A159790(n+1)`
-/

namespace A160165.P14656664969079446212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (∑ j ∈ Finset.range (n + 1), f1 j) - A159790 (n + 1)

end

end A160165.P14656664969079446212

/-! ## A160165.P3427791935160611431

`A000969(n)-(A159790(n+1)+A000217(n+1))`
-/

namespace A160165.P3427791935160611431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000969 n - (A159790 (n + 1) + A000217 (n + 1))

end

end A160165.P3427791935160611431

/-!
# A160166: Toothpick number A153006(n) minus generalized pentagonal number A001318(n).

The programs for A160166, there is no canonical definition to state claims against.
-/

/-! ## A160166.P3439393109998286488

`A153006(n)-A001318(n)`
-/

namespace A160166.P3439393109998286488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153006 n - A001318 n

end

end A160166.P3439393109998286488

/-! ## A160166.P3420976818500992409

`A153006(n)-∑[A026741(n)]`
-/

namespace A160166.P3420976818500992409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153006 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160166.P3420976818500992409

/-! ## A160166.P13147158473652555580

`A153006(n)-Δ[A034828(n)]`
-/

namespace A160166.P13147158473652555580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153006 n - (f1 (n + 1) - f1 n)

end

end A160166.P13147158473652555580

/-! ## A160166.P8497863325909701590

`A153006(n)-∑[A004526(lcm(2, n))]`
-/

namespace A160166.P8497863325909701590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Nat.lcm 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153006 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160166.P8497863325909701590

/-! ## A160166.P11262155084380663241

`∑[n]-(A153007(n)+A001318(n))`
-/

namespace A160166.P11262155084380663241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (A153007 n + A001318 n)

end

end A160166.P11262155084380663241

/-! ## A160166.P12407734428304514691

`A000217(n)-A001318(n)-A153007(n)`
-/

namespace A160166.P12407734428304514691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - A001318 n - A153007 n

end

end A160166.P12407734428304514691

/-! ## A160166.P7106923665700434435

`A153006(n)-A004526(∑[lcm(2, n)])`
-/

namespace A160166.P7106923665700434435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153006 n - A004526 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A160166.P7106923665700434435

/-!
# A160167: Total number of single toothpicks after n-th stage in the Y-toothpick structure of A160120.

The programs for A160167, there is no canonical definition to state claims against.
-/

/-! ## A160167.P10070392311824542251

`3*A160120(n)`
-/

namespace A160167.P10070392311824542251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A160120 n

end

end A160167.P10070392311824542251

/-! ## A160167.P4787597858205834745

`A253770(n)/2`
-/

namespace A160167.P4787597858205834745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253770 n : ℚ) / 2

end

end A160167.P4787597858205834745

/-! ## A160167.P15330489739885520808

`3*A160157(n)/2`
-/

namespace A160167.P15330489739885520808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A160157 n : ℚ) / 2

end

end A160167.P15330489739885520808

/-! ## A160167.P11969003554578439422

`∑[A253771(n)/2]`
-/

namespace A160167.P11969003554578439422
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253771 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160167.P11969003554578439422

/-! ## A160167.P18439657313097538692

`A008585(A160120(n))`
-/

namespace A160167.P18439657313097538692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A160120 n).toNat

end

end A160167.P18439657313097538692

/-! ## A160167.P14462728498431772834

`A001281(∑[A253771(n)])`
-/

namespace A160167.P14462728498431772834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A160167.P14462728498431772834

/-! ## A160167.P7826308652428466289

`A004525(∑[A253771(n)])`
-/

namespace A160167.P7826308652428466289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A160167.P7826308652428466289

/-! ## A160167.P6739318325570531486

`A014682(∑[A253771(n)])`
-/

namespace A160167.P6739318325570531486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A160167.P6739318325570531486

/-! ## A160167.P18057442664125307844

`lcm(A040007(n), A160120(n))`
-/

namespace A160167.P18057442664125307844
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040007 n) (A160120 n)

end

end A160167.P18057442664125307844

/-! ## A160167.P66775541014721327

`lcm(3, A160120(log2(A000079(n))))`
-/

namespace A160167.P66775541014721327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A160120 (SequenceMachineLib.roundAway (Real.logb 2 (A000079 n : ℝ))).toNat)

end

end A160167.P66775541014721327

/-!
# A160168: Lodumo_3 of Lucas numbers .

The programs for A160168, the canonical program `A160168.P14061397746526903188` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160168 has offset 0).

The definition of A160168 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9994 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160168.P14061397746526903188

`A160079(n+6)-6`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A160168

/-- `A160079(n+6)-6` -/
def P14061397746526903188.Spec : Prop :=
  ∀ n, P14061397746526903188.a n = A160168 n

theorem P14061397746526903188.correct : P14061397746526903188.Spec := by
  intro n
  simp only [A160168]

end A160168

/-!
# A160170: X-toothpick sequence on Z^3 lattice (see Comments for precise definition).

The programs for A160170, there is no canonical definition to state claims against.
-/

/-! ## A160170.P16739937795128418308

`∑[A160171(n)]`
-/

namespace A160170.P16739937795128418308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160171 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160170.P16739937795128418308

/-! ## A160170.P9807122501507527146

`record[A078371(n)%A256009(n)]`
-/

namespace A160170.P9807122501507527146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078371 n) (A256009 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160170.P9807122501507527146

/-! ## A160170.P4647273903575742637

`eq[A085863(n), A177245(A245327(n+1))]`
-/

namespace A160170.P4647273903575742637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085863 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177245 (A245327 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A160170.P4647273903575742637

/-! ## A160170.P11035076434671891101

`lt[A049820(n+1), A351568(A317935(n+3))]`
-/

namespace A160170.P11035076434671891101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351568 (A317935 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A160170.P11035076434671891101

/-!
# A160171: First differences of X-toothpicks numbers A160170.

The programs for A160171, there is no canonical definition to state claims against.
-/

/-! ## A160171.P17207173052430480099

`Δ[A160170(log2(ceil(2^(n-1))))]`
-/

namespace A160171.P17207173052430480099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160170 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160171.P17207173052430480099

/-! ## A160171.P13514059790090760401

`A160170(n)-A160170(log2(A011782(n)))`
-/

namespace A160171.P13514059790090760401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160170 n - A160170 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A160171.P13514059790090760401

/-!
# A160172: T-toothpick sequence (see Comments lines for definition).

The programs for A160172, there is no canonical definition to state claims against.
-/

/-! ## A160172.P5719457774312332525

`∑[A160173(n)]`
-/

namespace A160172.P5719457774312332525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160173 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160172.P5719457774312332525

/-! ## A160172.P2894258911511912991

`A147562(n)+n-A183061(n)`
-/

namespace A160172.P2894258911511912991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147562 n + ((n : ℤ) - A183061 n)

end

end A160172.P2894258911511912991

/-! ## A160172.P11092328476019453985

`A160173(n)+a(A028310(n)-1)` with `a(0)=0`
-/

namespace A160172.P11092328476019453985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A160173 n + a (A028310 n - 1).toNat

end

end A160172.P11092328476019453985

/-! ## A160172.P14122599520174349390

`A160173(n)+a(A000007(n)-1+n)` with `a(0)=0`
-/

namespace A160172.P14122599520174349390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A160173 n + a (A000007 n - 1 + (n : ℤ)).toNat

end

end A160172.P14122599520174349390

/-! ## A160172.P13536659380184662468

`A160173(n)+a(A005408(n)-n-2)` with `a(0)=0`
-/

namespace A160172.P13536659380184662468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A160173 n + a (A005408 n - (n : ℤ) - 2).toNat

end

end A160172.P13536659380184662468

/-! ## A160172.P5928299525975930381

`A160173(n)+a(n-1)%A037237(n)` with `a(0)=0`
-/

namespace A160172.P5928299525975930381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A160173 n + Int.tmod (a (n - 1)) (A037237 n)

end

end A160172.P5928299525975930381

/-! ## A160172.P2120206142481070504

`A160173(n)+A151935(n)!*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A160172.P2120206142481070504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A160173 n + (Nat.factorial (A151935 n).toNat : ℤ) * a (n - 1)

end

end A160172.P2120206142481070504

/-! ## A160172.P16429145325246990527

`A160173(n)+A212159(n+2)²*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A160172.P16429145325246990527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A160173 n + A212159 (n + 2) ^ 2 * a (n - 1)

end

end A160172.P16429145325246990527

/-! ## A160172.P7506694538455657397

`A183060(log2(A011782(n)))+A151917(n)`
-/

namespace A160172.P7506694538455657397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183060 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat + A151917 n

end

end A160172.P7506694538455657397

/-!
# A160173: Number of T-toothpicks added at n-th stage to the T-toothpick structure of A160172.

The programs for A160173, there is no canonical definition to state claims against.
-/

/-! ## A160173.P9350960809076844651

`Δ[A160172(log2(ceil(2^(n-1))))]`
-/

namespace A160173.P9350960809076844651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160172 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160173.P9350960809076844651

/-!
# A160174: a(n) = (2*n - 1)*(24*n^2 - 42*n + 19).

The programs for A160174, the canonical program `A160174.P15396951745529520894` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160174 has offset 1).

The definition of A160174 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*(n+1)-1)*(24*(n+1)²-42*(n+1)+19)` (program `A160174.P15396951745529520894`, by `A160174.P15396951745529520894.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A160174.P17958011576924867494

`ogf((1+89x+179x^2+19x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A160174.P17958011576924867494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 89, 179, 19] [1, -4, 6, -4, 1] n

end

end A160174.P17958011576924867494

namespace A160174

/-- `ogf((1+89x+179x^2+19x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P17958011576924867494.Spec : Prop :=
  ∀ n, P17958011576924867494.a n = A160174 (n + 1)

end A160174

/-! ## A160174.P15396951745529520894

`(2*(n+1)-1)*(24*(n+1)²-42*(n+1)+19)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A160174

/-- `(2*(n+1)-1)*(24*(n+1)²-42*(n+1)+19)` -/
def P15396951745529520894.Spec : Prop :=
  ∀ n, P15396951745529520894.a n = A160174 (n + 1)

theorem P15396951745529520894.correct : P15396951745529520894.Spec := by
  intro n
  simp only [A160174, Nat.add_sub_cancel]

end A160174

/-! ## A160174.P17023472861165913792

`4*A191745(n)+1`
-/

namespace A160174.P17023472861165913792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A191745 n + 1

end

end A160174.P17023472861165913792

namespace A160174

/-- `4*A191745(n)+1` -/
def P17023472861165913792.Spec : Prop :=
  ∀ n, P17023472861165913792.a n = A160174 (n + 1)

theorem P17023472861165913792.correct : P17023472861165913792.Spec := by
  intro n
  simp only [A160174, Nat.add_sub_cancel, A160174.P17023472861165913792.a, A160174.P15396951745529520894.a, A191745, A191745.P10900827607197799470.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A160174

/-! ## A160174.P4496109674906005376

`4*n*(A014641(n)+1+n)+1`
-/

namespace A160174.P4496109674906005376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n : ℤ) * (A014641 n + 1 + (n : ℤ))) + 1

end

end A160174.P4496109674906005376

namespace A160174

/-- `4*n*(A014641(n)+1+n)+1` -/
def P4496109674906005376.Spec : Prop :=
  ∀ n, P4496109674906005376.a n = A160174 (n + 1)

theorem P4496109674906005376.correct : P4496109674906005376.Spec := by
  intro n
  simp only [A160174, Nat.add_sub_cancel, A160174.P4496109674906005376.a, A160174.P15396951745529520894.a, A014641, A014641.P17401664217162026339.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A160174

/-! ## A160174.P10535776744070864967

`lcm(A157142(n), A381424(n))`
-/

namespace A160174.P10535776744070864967
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A157142 n) (A381424 n)

end

end A160174.P10535776744070864967

namespace A160174

/-- `lcm(A157142(n), A381424(n))` -/
def P10535776744070864967.Spec : Prop :=
  ∀ n, (P10535776744070864967.a n : ℤ) = A160174 (n + 1)

end A160174

/-! ## A160174.P1486034032163498161

`2*(3*n*A000217(4*n+1)+n)+1`
-/

namespace A160174.P1486034032163498161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((3 * n : ℤ) * A000217 (4 * n + 1) + (n : ℤ)) + 1

end

end A160174.P1486034032163498161

namespace A160174

/-- `2*(3*n*A000217(4*n+1)+n)+1` -/
def P1486034032163498161.Spec : Prop :=
  ∀ n, P1486034032163498161.a n = A160174 (n + 1)

theorem P1486034032163498161.correct : P1486034032163498161.Spec := by
  intro n
  simp only [A160174, Nat.add_sub_cancel, A160174.P1486034032163498161.a, A160174.P15396951745529520894.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A160174

/-! ## A160174.P762201302493102188

`A169711(Δ[n²])`
-/

namespace A160174.P762201302493102188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169711 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A160174.P762201302493102188

namespace A160174

/-- `A169711(Δ[n²])` -/
def P762201302493102188.Spec : Prop :=
  ∀ n, P762201302493102188.a n = A160174 (n + 1)

end A160174

/-! ## A160174.P7414597479045910877

`2*A248575(2*n)+1`
-/

namespace A160174.P7414597479045910877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A248575 (2 * n) + 1

end

end A160174.P7414597479045910877

namespace A160174

/-- `2*A248575(2*n)+1` -/
def P7414597479045910877.Spec : Prop :=
  ∀ n, P7414597479045910877.a n = A160174 (n + 1)

end A160174

/-! ## A160174.P7428746530566202048

`ceil(A193228(2*n+1)/2)`
-/

namespace A160174.P7428746530566202048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A193228 (2 * n + 1) : ℚ) / 2⌉

end

end A160174.P7428746530566202048

namespace A160174

/-- `ceil(A193228(2*n+1)/2)` -/
def P7428746530566202048.Spec : Prop :=
  ∀ n, P7428746530566202048.a n = A160174 (n + 1)

end A160174

/-! ## A160174.P7618929287009902614

`A193218(2*n+1)-2*n`
-/

namespace A160174.P7618929287009902614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193218 (2 * n + 1) - (2 * n : ℤ)

end

end A160174.P7618929287009902614

namespace A160174

/-- `A193218(2*n+1)-2*n` -/
def P7618929287009902614.Spec : Prop :=
  ∀ n, P7618929287009902614.a n = A160174 (n + 1)

theorem P7618929287009902614.correct : P7618929287009902614.Spec := by
  intro n
  simp only [A160174, Nat.add_sub_cancel, A160174.P7618929287009902614.a, A160174.P15396951745529520894.a, A193218, A193218.P10662141217646071315.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A160174

/-! ## A160174.P7216010028742158958

`lcm(2*n+1, A169711(2*n+1))`
-/

namespace A160174.P7216010028742158958
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) (A169711 (2 * n + 1))

end

end A160174.P7216010028742158958

namespace A160174

/-- `lcm(2*n+1, A169711(2*n+1))` -/
def P7216010028742158958.Spec : Prop :=
  ∀ n, (P7216010028742158958.a n : ℤ) = A160174 (n + 1)

end A160174

/-! ## A160174.P4529106744509388115

`(2*n+1)²+A033594(2*n+1)+(2*n)²`
-/

namespace A160174.P4529106744509388115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) + (A033594 (2 * n + 1) + ((2 * n) ^ 2 : ℤ))

end

end A160174.P4529106744509388115

namespace A160174

/-- `(2*n+1)²+A033594(2*n+1)+(2*n)²` -/
def P4529106744509388115.Spec : Prop :=
  ∀ n, P4529106744509388115.a n = A160174 (n + 1)

theorem P4529106744509388115.correct : P4529106744509388115.Spec := by
  intro n
  simp only [A160174, Nat.add_sub_cancel, A160174.P4529106744509388115.a, A160174.P15396951745529520894.a, A033594, A033594.P11868201467419113890.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A160174

/-! ## A160174.P5037022144089138573

`A272378(2*n+1)-A002943(n)`
-/

namespace A160174.P5037022144089138573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272378 (2 * n + 1) - A002943 n

end

end A160174.P5037022144089138573

namespace A160174

/-- `A272378(2*n+1)-A002943(n)` -/
def P5037022144089138573.Spec : Prop :=
  ∀ n, P5037022144089138573.a n = A160174 (n + 1)

theorem P5037022144089138573.correct : P5037022144089138573.Spec := by
  intro n
  simp only [A160174, Nat.add_sub_cancel, A160174.P5037022144089138573.a, A160174.P15396951745529520894.a, A002943, A002943.P6554007946647441496.a, A272378, A272378.P16915162997693216737.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A160174

/-! ## A160174.P12767819033046994035

`A304659(2*n)+A220084(2*n)`
-/

namespace A160174.P12767819033046994035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304659 (2 * n) + A220084 (2 * n)

end

end A160174.P12767819033046994035

namespace A160174

/-- `A304659(2*n)+A220084(2*n)` -/
def P12767819033046994035.Spec : Prop :=
  ∀ n, P12767819033046994035.a n = A160174 (n + 1)

end A160174

/-! ## A160174.P8348849425277501977

`A011199(2*n)-A046092(2*n)`
-/

namespace A160174.P8348849425277501977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011199 (2 * n) - A046092 (2 * n)

end

end A160174.P8348849425277501977

namespace A160174

/-- `A011199(2*n)-A046092(2*n)` -/
def P8348849425277501977.Spec : Prop :=
  ∀ n, P8348849425277501977.a n = A160174 (n + 1)

theorem P8348849425277501977.correct : P8348849425277501977.Spec := by
  intro n
  simp only [A160174, Nat.add_sub_cancel, A160174.P8348849425277501977.a, A160174.P15396951745529520894.a, A011199, A011199.P5039899721906082050.a, A046092, A046092.P16411658895297056450.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A160174

/-! ## A160174.P9777384373333154010

`A079588(2*n)-A163815(2*n)`
-/

namespace A160174.P9777384373333154010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079588 (2 * n) - A163815 (2 * n)

end

end A160174.P9777384373333154010

namespace A160174

/-- `A079588(2*n)-A163815(2*n)` -/
def P9777384373333154010.Spec : Prop :=
  ∀ n, P9777384373333154010.a n = A160174 (n + 1)

end A160174

/-! ## A160174.P9896334441769028322

`A169711(2*n+1)+A000007(n+1)`
-/

namespace A160174.P9896334441769028322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169711 (2 * n + 1) + A000007 (n + 1)

end

end A160174.P9896334441769028322

namespace A160174

/-- `A169711(2*n+1)+A000007(n+1)` -/
def P9896334441769028322.Spec : Prop :=
  ∀ n, P9896334441769028322.a n = A160174 (n + 1)

theorem P9896334441769028322.correct : P9896334441769028322.Spec := by
  intro n
  simp only [A160174, Nat.add_sub_cancel, A160174.P9896334441769028322.a, A160174.P15396951745529520894.a, A000007, A000007.P6599383543502402472.a, A169711, A169711.P3852952923090487921.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A160174

/-! ## A160174.P3172964245872484302

`A055112(2*n)+A050492(2*n+1)`
-/

namespace A160174.P3172964245872484302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055112 (2 * n) + A050492 (2 * n + 1)

end

end A160174.P3172964245872484302

namespace A160174

/-- `A055112(2*n)+A050492(2*n+1)` -/
def P3172964245872484302.Spec : Prop :=
  ∀ n, P3172964245872484302.a n = A160174 (n + 1)

theorem P3172964245872484302.correct : P3172964245872484302.Spec := by
  intro n
  simp only [A160174, Nat.add_sub_cancel, A160174.P3172964245872484302.a, A160174.P15396951745529520894.a, A050492, A050492.P6544951122689102902.a, A055112, A055112.P15553195109781773626.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A160174

/-! ## A160174.P2011511985805894610

`A109613(2*n)+2*A220443(2*n)`
-/

namespace A160174.P2011511985805894610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (2 * n) + 2 * A220443 (2 * n)

end

end A160174.P2011511985805894610

namespace A160174

/-- `A109613(2*n)+2*A220443(2*n)` -/
def P2011511985805894610.Spec : Prop :=
  ∀ n, P2011511985805894610.a n = A160174 (n + 1)

end A160174

/-!
# A160175: Expansion of 1/(1 - 2*x - 2*x^2 - 2*x^3 - 2*x^4).

The programs for A160175, the canonical program `A160175.P10111999593251949944` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160175 has offset 0).

The definition of A160175 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x-2x^2-2x^3-2x^4))` (program `A160175.P10111999593251949944`, by `A160175.P10111999593251949944.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A160175.P10111999593251949944

`ogf(1/(1-2x-2x^2-2x^3-2x^4))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A160175

/-- `ogf(1/(1-2x-2x^2-2x^3-2x^4))` -/
def P10111999593251949944.Spec : Prop :=
  ∀ n, P10111999593251949944.a n = A160175 n

theorem P10111999593251949944.correct : P10111999593251949944.Spec := by
  intro n
  simp only [A160175]

end A160175

/-! ## A160175.P4776576806734613483

`2*(a(n-1)+a(n-2)+a(n-3)+a(n-4))` with `a(0)=1, a(1)=2, a(2)=6, a(3)=18`
-/

namespace A160175.P4776576806734613483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 6, 18] fun n a =>
  2 * (a (n - 1) + a (n - 2) + a (n - 3) + a (n - 4))

end

end A160175.P4776576806734613483

namespace A160175

/-- `2*(a(n-1)+a(n-2)+a(n-3)+a(n-4))` -/
def P4776576806734613483.Spec : Prop :=
  ∀ n, (P4776576806734613483.a n : ℤ) = A160175 n

end A160175

/-! ## A160175.P5135751114005168932

`A248875(n)+A000120(A006139(n))`
-/

namespace A160175.P5135751114005168932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248875 n + A000120 (A006139 n).toNat

end

end A160175.P5135751114005168932

namespace A160175

/-- `A248875(n)+A000120(A006139(n))` -/
def P5135751114005168932.Spec : Prop :=
  ∀ n, P5135751114005168932.a n = A160175 n

end A160175

/-!
# A160179: a(1)=2. a(n) equals the product of the previous terms divided by the (n-1)st prime gap.

The programs for A160179, there is no canonical definition to state claims against.
-/

/-! ## A160179.P17780432771931902306

`a(n-2)²*a(n-1)` with `a(0)=2, a(1)=2, a(2)=2, a(3)=4, a(4)=8`
-/

namespace A160179.P17780432771931902306
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 2, 4, 8] fun n a =>
  a (n - 2) ^ 2 * a (n - 1)

end

end A160179.P17780432771931902306

/-! ## A160179.P9915374633384336713

`a(n-1)*A085960(a(n-2))` with `a(0)=2, a(1)=2, a(2)=2`
-/

namespace A160179.P9915374633384336713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 2] fun n a =>
  a (n - 1) * A085960 (a (n - 2)).toNat

end

end A160179.P9915374633384336713

/-! ## A160179.P17612401816966797415

`a(n-1)*A326578(a(n-2))` with `a(0)=2, a(1)=2, a(2)=2`
-/

namespace A160179.P17612401816966797415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 2] fun n a =>
  a (n - 1) * A326578 (a (n - 2)).toNat

end

end A160179.P17612401816966797415

/-! ## A160179.P14304606252419716363

`A368043(A287901(n))`
-/

namespace A160179.P14304606252419716363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368043 (A287901 n).toNat

end

end A160179.P14304606252419716363

/-! ## A160179.P15022356607123008203

`2^A005378(A001045(n))`
-/

namespace A160179.P15022356607123008203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A005378 (A001045 n).toNat : ℤ)

end

end A160179.P15022356607123008203

/-!
# A160180: Largest proper divisor of the n-th composite number.

The programs for A160180, the canonical program `A160180.P16392280111837385942` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160180 has offset 1).

The definition of A160180 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032742, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A160180.P4276090811274830912

`A002808(n+1)/A056608(n+1)`
-/

namespace A160180.P4276090811274830912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002808 (n + 1) : ℚ) / (A056608 (n + 1) : ℚ)

end

end A160180.P4276090811274830912

namespace A160180

/-- `A002808(n+1)/A056608(n+1)` -/
def P4276090811274830912.Spec : Prop :=
  ∀ n, P4276090811274830912.a n = (A160180 (n + 1) : ℚ)

end A160180

/-! ## A160180.P16392280111837385942

`A032742(A002808(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A160180

/-- `A032742(A002808(n+1))` -/
def P16392280111837385942.Spec : Prop :=
  ∀ n, P16392280111837385942.a n = A160180 (n + 1)

theorem P16392280111837385942.correct : P16392280111837385942.Spec := by
  intro n
  simp only [A160180, Nat.add_sub_cancel]

end A160180

/-! ## A160180.P17596425024464799034

`Δ[A053767(n)]/A056608(n+1)`
-/

namespace A160180.P17596425024464799034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A056608 (n + 1) : ℚ)

end

end A160180.P17596425024464799034

namespace A160180

/-- `Δ[A053767(n)]/A056608(n+1)` -/
def P17596425024464799034.Spec : Prop :=
  ∀ n, P17596425024464799034.a n = (A160180 (n + 1) : ℚ)

end A160180

/-! ## A160180.P16776960360975413240

`A002808(n+1)/p?[A107286(n)]`
-/

namespace A160180.P16776960360975413240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002808 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A160180.P16776960360975413240

namespace A160180

/-- `A002808(n+1)/p?[A107286(n)]` -/
def P16776960360975413240.Spec : Prop :=
  ∀ n, P16776960360975413240.a n = (A160180 (n + 1) : ℚ)

end A160180

/-! ## A160180.P16346875830070548632

`A018252(n+2)/p?[A107286(n)]`
-/

namespace A160180.P16346875830070548632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018252 (n + 2) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A160180.P16346875830070548632

namespace A160180

/-- `A018252(n+2)/p?[A107286(n)]` -/
def P16346875830070548632.Spec : Prop :=
  ∀ n, P16346875830070548632.a n = (A160180 (n + 1) : ℚ)

end A160180

/-! ## A160180.P10681148058832608965

`A273777(n+1)-A056608(n+1)`
-/

namespace A160180.P10681148058832608965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273777 (n + 1) - A056608 (n + 1)

end

end A160180.P10681148058832608965

namespace A160180

/-- `A273777(n+1)-A056608(n+1)` -/
def P10681148058832608965.Spec : Prop :=
  ∀ n, P10681148058832608965.a n = A160180 (n + 1)

theorem P10681148058832608965.correct : P10681148058832608965.Spec := by
  intro n
  simp only [A160180, Nat.add_sub_cancel, A160180.P10681148058832608965.a, A160180.P16392280111837385942.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A032742, A032742.P14489579072839730134.a, A056608, A056608.P12256704911818935102.a, A273777, A273777.P13108395424534032028.a, A000005, A000005.P16091521709108585461.a, A020639, A020639.P7578813688609615429.a, A008578, A008578.P3639467937083264764.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A055396, A055396.P18305262754425103137.a, A061395, A061395.P8431317036300486107.a, A158611, A158611.P9275629407611603775.a, A243055, A243055.P2464886309294058059.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A160180

/-! ## A160180.P8336762295801993669

`A018252(n+2)/A056608(n+1)`
-/

namespace A160180.P8336762295801993669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018252 (n + 2) : ℚ) / (A056608 (n + 1) : ℚ)

end

end A160180.P8336762295801993669

namespace A160180

/-- `A018252(n+2)/A056608(n+1)` -/
def P8336762295801993669.Spec : Prop :=
  ∀ n, P8336762295801993669.a n = (A160180 (n + 1) : ℚ)

end A160180

/-! ## A160180.P15958986029905459375

`A141468(n+3)/A056608(n+1)`
-/

namespace A160180.P15958986029905459375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141468 (n + 3) : ℚ) / (A056608 (n + 1) : ℚ)

end

end A160180.P15958986029905459375

namespace A160180

/-- `A141468(n+3)/A056608(n+1)` -/
def P15958986029905459375.Spec : Prop :=
  ∀ n, P15958986029905459375.a n = (A160180 (n + 1) : ℚ)

end A160180

/-! ## A160180.P15084868431710789236

`A322982(lt[A322982(n+1), n]+1)`
-/

namespace A160180.P15084868431710789236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322982 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322982 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A160180.P15084868431710789236

namespace A160180

/-- `A322982(lt[A322982(n+1), n]+1)` -/
def P15084868431710789236.Spec : Prop :=
  ∀ n, P15084868431710789236.a n = A160180 (n + 1)

end A160180

/-! ## A160180.P4070426202093966308

`A002808(n+1)/p?[A074828(n+1)]`
-/

namespace A160180.P4070426202093966308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002808 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A160180.P4070426202093966308

namespace A160180

/-- `A002808(n+1)/p?[A074828(n+1)]` -/
def P4070426202093966308.Spec : Prop :=
  ∀ n, P4070426202093966308.a n = (A160180 (n + 1) : ℚ)

end A160180

/-! ## A160180.P2022599277844386629

`(A072668(n+1)+1)/A056608(n+1)`
-/

namespace A160180.P2022599277844386629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072668 (n + 1) + 1 : ℚ) / (A056608 (n + 1) : ℚ)

end

end A160180.P2022599277844386629

namespace A160180

/-- `(A072668(n+1)+1)/A056608(n+1)` -/
def P2022599277844386629.Spec : Prop :=
  ∀ n, P2022599277844386629.a n = (A160180 (n + 1) : ℚ)

end A160180

/-! ## A160180.P14863554531640055223

`A079772(n+1)/A056608(n+1)-1`
-/

namespace A160180.P14863554531640055223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079772 (n + 1) : ℚ) / (A056608 (n + 1) : ℚ) - 1

end

end A160180.P14863554531640055223

namespace A160180

/-- `A079772(n+1)/A056608(n+1)-1` -/
def P14863554531640055223.Spec : Prop :=
  ∀ n, P14863554531640055223.a n = (A160180 (n + 1) : ℚ)

end A160180

/-! ## A160180.P7235930493740410504

`A282671(n+1)/(2*A056608(n+1))`
-/

namespace A160180.P7235930493740410504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282671 (n + 1) : ℚ) / (2 * A056608 (n + 1) : ℚ)

end

end A160180.P7235930493740410504

namespace A160180

/-- `A282671(n+1)/(2*A056608(n+1))` -/
def P7235930493740410504.Spec : Prop :=
  ∀ n, P7235930493740410504.a n = (A160180 (n + 1) : ℚ)

end A160180

/-! ## A160180.P16726210168119982327

`comp[C(A020639(n+1), n)]/A056608(n+1)`
-/

namespace A160180.P16726210168119982327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 1)).toNat n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) / (A056608 (n + 1) : ℚ)

end

end A160180.P16726210168119982327

namespace A160180

/-- `comp[C(A020639(n+1), n)]/A056608(n+1)` -/
def P16726210168119982327.Spec : Prop :=
  ∀ n, P16726210168119982327.a n = (A160180 (n + 1) : ℚ)

end A160180

/-! ## A160180.P11869425515547579671

`A273777(n+1)-A020639(A002808(n+1))`
-/

namespace A160180.P11869425515547579671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273777 (n + 1) - A020639 (A002808 (n + 1)).toNat

end

end A160180.P11869425515547579671

namespace A160180

/-- `A273777(n+1)-A020639(A002808(n+1))` -/
def P11869425515547579671.Spec : Prop :=
  ∀ n, P11869425515547579671.a n = A160180 (n + 1)

theorem P11869425515547579671.correct : P11869425515547579671.Spec := by
  intro n
  simp only [A160180, Nat.add_sub_cancel, A160180.P11869425515547579671.a, A160180.P16392280111837385942.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A020639, A020639.P7578813688609615429.a, A032742, A032742.P14489579072839730134.a, A273777, A273777.P13108395424534032028.a, A000005, A000005.P16091521709108585461.a, A008578, A008578.P3639467937083264764.a, A055396, A055396.P18305262754425103137.a, A056608, A056608.P12256704911818935102.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A061395, A061395.P8431317036300486107.a, A158611, A158611.P9275629407611603775.a, A243055, A243055.P2464886309294058059.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A117371, A117371.P12406732587805932156.a, A297155, A297155.P1611206963555320167.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A160180

/-! ## A160180.P5044440349454578705

`lt[1, A328847(n)]/A020639(A002808(n+1))`
-/

namespace A160180.P5044440349454578705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328847 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℚ) / (A020639 (A002808 (n + 1)).toNat : ℚ)

end

end A160180.P5044440349454578705

namespace A160180

/-- `lt[1, A328847(n)]/A020639(A002808(n+1))` -/
def P5044440349454578705.Spec : Prop :=
  ∀ n, P5044440349454578705.a n = (A160180 (n + 1) : ℚ)

end A160180

/-! ## A160180.P5454141464836154996

`(lt[1, A001222(n+1)]+1)/A020639(A002808(n+1))`
-/

namespace A160180.P5454141464836154996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℚ) / (A020639 (A002808 (n + 1)).toNat : ℚ)

end

end A160180.P5454141464836154996

namespace A160180

/-- `(lt[1, A001222(n+1)]+1)/A020639(A002808(n+1))` -/
def P5454141464836154996.Spec : Prop :=
  ∀ n, P5454141464836154996.a n = (A160180 (n + 1) : ℚ)

end A160180

/-! ## A160180.P15904729401451015305

`(lt[2, A000005(n+1)]+1)/A020639(A002808(n+1))`
-/

namespace A160180.P15904729401451015305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℚ) / (A020639 (A002808 (n + 1)).toNat : ℚ)

end

end A160180.P15904729401451015305

namespace A160180

/-- `(lt[2, A000005(n+1)]+1)/A020639(A002808(n+1))` -/
def P15904729401451015305.Spec : Prop :=
  ∀ n, P15904729401451015305.a n = (A160180 (n + 1) : ℚ)

end A160180

/-! ## A160180.P8753614488017348786

`(A085271(n+1)+A056608(n+1))/A056608(n+1)`
-/

namespace A160180.P8753614488017348786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085271 (n + 1) + A056608 (n + 1) : ℚ) / (A056608 (n + 1) : ℚ)

end

end A160180.P8753614488017348786

namespace A160180

/-- `(A085271(n+1)+A056608(n+1))/A056608(n+1)` -/
def P8753614488017348786.Spec : Prop :=
  ∀ n, P8753614488017348786.a n = (A160180 (n + 1) : ℚ)

end A160180

/-! ## A160180.P14017348809973759307

`A002808(n+1)/(A079772(n+1)-A002808(n+1))`
-/

namespace A160180.P14017348809973759307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002808 (n + 1) : ℚ) / (A079772 (n + 1) - A002808 (n + 1) : ℚ)

end

end A160180.P14017348809973759307

namespace A160180

/-- `A002808(n+1)/(A079772(n+1)-A002808(n+1))` -/
def P14017348809973759307.Spec : Prop :=
  ∀ n, P14017348809973759307.a n = (A160180 (n + 1) : ℚ)

end A160180

/-!
# A160181: Number of partitions of sets containing from 0 to n elements into blocks of at least 2 elements.

The programs for A160181, there is no canonical definition to state claims against.
-/

/-! ## A160181.P966642321981004068

`∑[A000296(n)]`
-/

namespace A160181.P966642321981004068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000296 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160181.P966642321981004068

/-! ## A160181.P8266442111803320950

`∑[A106436(∑[n])]`
-/

namespace A160181.P8266442111803320950
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106436 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160181.P8266442111803320950

/-! ## A160181.P4328909101825539172

`∑[A124323(∑[n])]`
-/

namespace A160181.P4328909101825539172
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124323 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160181.P4328909101825539172

/-! ## A160181.P17984367989768291903

`∑[A261137(∑[n]+n)]`
-/

namespace A160181.P17984367989768291903
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261137 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160181.P17984367989768291903

/-! ## A160181.P3728129196642459600

`A005001(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A160181.P3728129196642459600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005001 n + (1 - a (n - 1))

end

end A160181.P3728129196642459600

/-! ## A160181.P3254889860103263190

`A000110(n-1)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A160181.P3254889860103263190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000110 (n - 1) + a (n - 2)

end

end A160181.P3254889860103263190

/-! ## A160181.P8881259841877054013

`A205574(∑[n]+1)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A160181.P8881259841877054013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A205574 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + a (n - 2)

end

end A160181.P8881259841877054013

/-! ## A160181.P16851551727426879867

`∑[A247491(n)+A005043(n)]`
-/

namespace A160181.P16851551727426879867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247491 n + A005043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160181.P16851551727426879867

/-! ## A160181.P15220466987275926200

`∑[A182930(∑[n+1])]`
-/

namespace A160181.P15220466987275926200
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182930 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160181.P15220466987275926200

/-! ## A160181.P16752085030143826432

`∑[A293024(A000217(n+2)-2)]`
-/

namespace A160181.P16752085030143826432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293024 (A000217 (n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160181.P16752085030143826432

/-!
# A160182: Triangle read by rows, 1 / ((-1)*A129184 * A051731 + I), I = Identity matrix.

The programs for A160182, there is no canonical definition to state claims against.
-/

/-! ## A160182.P15024042649902727818

`A160183(A309945(n+1)+1)`
-/

namespace A160182.P15024042649902727818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160183 (A309945 (n + 1) + 1).toNat

end

end A160182.P15024042649902727818

/-! ## A160182.P12592318206262517865

`A160183(1-A172471(n)+n)`
-/

namespace A160182.P12592318206262517865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160183 (1 - A172471 n + (n : ℤ)).toNat

end

end A160182.P12592318206262517865

/-! ## A160182.P9851821879935333074

`A160183(1-(A172471(n)-n))`
-/

namespace A160182.P9851821879935333074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160183 (1 - (A172471 n - (n : ℤ))).toNat

end

end A160182.P9851821879935333074

/-! ## A160182.P9194669097185360044

`A098824(n)-A098804(A098824(n)+1)`
-/

namespace A160182.P9194669097185360044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098824 n - A098804 (A098824 n + 1).toNat

end

end A160182.P9194669097185360044

/-! ## A160182.P6011403668664970263

`A090003(A176088(n))`
-/

namespace A160182.P6011403668664970263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090003 (A176088 n).toNat

end

end A160182.P6011403668664970263

/-!
# A160183: Triangle, read by rows, obtained by dropping right diagonal from A160182.

The programs for A160183, there is no canonical definition to state claims against.
-/

/-! ## A160183.P13041015612898512429

`A160182(comp[∑[n]])`
-/

namespace A160183.P13041015612898512429
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160182 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A160183.P13041015612898512429

/-! ## A160183.P14026303839381300629

`A026807(n+1)-A185118(A026794(n+1)!)`
-/

namespace A160183.P14026303839381300629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026807 (n + 1) - A185118 (Nat.factorial (A026794 (n + 1)).toNat)

end

end A160183.P14026303839381300629

/-! ## A160183.P7273877247598421824

`A276625(A010766(n+1)^A336698(n+1))`
-/

namespace A160183.P7273877247598421824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276625 (SequenceMachineLib.roundAway ((A010766 (n + 1) : ℚ) ^ (A336698 (n + 1) : ℤ))).toNat

end

end A160183.P7273877247598421824

/-! ## A160183.P506432420448454175

`A035959(A010766(n+1)%A268660(n+1))`
-/

namespace A160183.P506432420448454175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035959 (Int.tmod (A010766 (n + 1)) (A268660 (n + 1))).toNat

end

end A160183.P506432420448454175

/-! ## A160183.P674091438601768367

`A035959(A010766(n+1))%A346132(2*(n+2))`
-/

namespace A160183.P674091438601768367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035959 (A010766 (n + 1)).toNat) (A346132 (2 * (n + 2)))

end

end A160183.P674091438601768367

/-!
# A160185: Triangle read by rows, (1 / ((-1)*A129184 * A007318 + I)) - I, I = Identity matrix.

The programs for A160185, there is no canonical definition to state claims against.
-/

/-! ## A160185.P11653284485762569616

`A186020(comp[∑[n-1]])`
-/

namespace A160185.P11653284485762569616
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186020 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A160185.P11653284485762569616

/-! ## A160185.P9061739773393224301

`A121207(2*(C(comp[∑[n]]-n, 2)-n)+n)`
-/

namespace A160185.P9061739773393224301
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121207 (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) + (n : ℤ)).toNat

end

end A160185.P9061739773393224301

/-! ## A160185.P5191812740041185255

`A121207(A380649(n+1)+1)`
-/

namespace A160185.P5191812740041185255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121207 (A380649 (n + 1) + 1).toNat

end

end A160185.P5191812740041185255

/-! ## A160185.P11973801671384561270

`A121207(A099375(n)+1+n)`
-/

namespace A160185.P11973801671384561270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121207 (A099375 n + 1 + (n : ℤ)).toNat

end

end A160185.P11973801671384561270

/-! ## A160185.P7729911146138129436

`A121207(A212012(n+1)+n)`
-/

namespace A160185.P7729911146138129436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121207 (A212012 (n + 1) + (n : ℤ)).toNat

end

end A160185.P7729911146138129436

/-! ## A160185.P3401644130000096879

`A121207(A061579(comp[∑[n]])+1)`
-/

namespace A160185.P3401644130000096879
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121207 (A061579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1).toNat

end

end A160185.P3401644130000096879

/-! ## A160185.P351599659463620734

`A121207(A061579(comp[∑[n-1]]))`
-/

namespace A160185.P351599659463620734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121207 (A061579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat

end

end A160185.P351599659463620734

/-! ## A160185.P1834902144975096764

`A121207(2*A004736(n+1)+n)`
-/

namespace A160185.P1834902144975096764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121207 (2 * A004736 (n + 1) + (n : ℤ)).toNat

end

end A160185.P1834902144975096764

/-! ## A160185.P3548873841147857794

`A121207(2*A025581(n)+n+2)`
-/

namespace A160185.P3548873841147857794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121207 (2 * A025581 n + (n + 2 : ℤ)).toNat

end

end A160185.P3548873841147857794

/-! ## A160185.P429610648305373378

`A007318(∑[n])*A186020(A007401(n+1))`
-/

namespace A160185.P429610648305373378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A186020 (A007401 (n + 1)).toNat

end

end A160185.P429610648305373378

/-!
# A160186: Lodumo_5 of Lucas numbers.

The programs for A160186, the canonical program `A160186.P9018551225574034062` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160186 has offset 0).

The definition of A160186 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160186.P9018551225574034062

`a(n-4)+5` with `a(0)=2, a(1)=1, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A160186

/-- `a(n-4)+5` -/
def P9018551225574034062.Spec : Prop :=
  ∀ n, (P9018551225574034062.a n : ℤ) = A160186 n

theorem P9018551225574034062.correct : P9018551225574034062.Spec := by
  intro n
  simp only [A160186]

end A160186

/-! ## A160186.P10758383377737961401

`round(or(n, gcd(2, n))+n/4)`
-/

namespace A160186.P10758383377737961401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor n (Nat.gcd 2 n) : ℚ) + (n : ℚ) / 4)

end

end A160186.P10758383377737961401

namespace A160186

/-- `round(or(n, gcd(2, n))+n/4)` -/
def P10758383377737961401.Spec : Prop :=
  ∀ n, P10758383377737961401.a n = A160186 n

end A160186

/-! ## A160186.P12210507147573762157

`comp[5*n]+round(cos(exp(n%4)))`
-/

namespace A160186.P12210507147573762157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + SequenceMachineLib.roundAway (Real.cos (Real.exp ((n % 4 : ℕ) : ℝ)))

end

end A160186.P12210507147573762157

namespace A160186

/-- `comp[5*n]+round(cos(exp(n%4)))` -/
def P12210507147573762157.Spec : Prop :=
  ∀ n, P12210507147573762157.a n = A160186 n

end A160186

/-! ## A160186.P9903366451466100099

`∑[floor(a(n-4))]` with `a(0)=2, a(1)=-1, a(2)=2, a(3)=1, a(4)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A160186.P9903366451466100099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, -1, 2, 1, 3] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160186.P9903366451466100099

namespace A160186

/-- `∑[floor(a(n-4))]` -/
def P9903366451466100099.Spec : Prop :=
  ∀ n, P9903366451466100099.a n = A160186 n

end A160186

/-! ## A160186.P10580718278645374215

`5-floor(-a(n-4))` with `a(0)=2, a(1)=1, a(2)=3, a(3)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A160186.P10580718278645374215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 3, 4] fun n a =>
  5 - (-a (n - 4))

end

end A160186.P10580718278645374215

namespace A160186

/-- `5-floor(-a(n-4))` -/
def P10580718278645374215.Spec : Prop :=
  ∀ n, P10580718278645374215.a n = A160186 n

end A160186

/-! ## A160186.P6172647477516968171

`ceil(xor(1, n)+xor(3, n+1)/4)`
-/

namespace A160186.P6172647477516968171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 n : ℚ) + (Nat.xor 3 (n + 1) : ℚ) / 4⌉

end

end A160186.P6172647477516968171

namespace A160186

/-- `ceil(xor(1, n)+xor(3, n+1)/4)` -/
def P6172647477516968171.Spec : Prop :=
  ∀ n, P6172647477516968171.a n = A160186 n

end A160186

/-! ## A160186.P13319849989905300361

`5*floor(n/2)-a(n-2)` with `a(0)=2, a(1)=1`
-/

namespace A160186.P13319849989905300361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  5 * ⌊(n : ℚ) / 2⌋ - a (n - 2)

end

end A160186.P13319849989905300361

namespace A160186

/-- `5*floor(n/2)-a(n-2)` -/
def P13319849989905300361.Spec : Prop :=
  ∀ n, P13319849989905300361.a n = A160186 n

end A160186

/-! ## A160186.P11986142692046707235

`5-(a(n-3)%5-a(n-2))` with `a(0)=2, a(1)=1, a(2)=3`
-/

namespace A160186.P11986142692046707235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 3] fun n a =>
  5 - (Int.tmod (a (n - 3)) 5 - a (n - 2))

end

end A160186.P11986142692046707235

namespace A160186

/-- `5-(a(n-3)%5-a(n-2))` -/
def P11986142692046707235.Spec : Prop :=
  ∀ n, P11986142692046707235.a n = A160186 n

end A160186

/-! ## A160186.P654170655882200202

`∑[a(n-4)^a(n-1)²]` with `a(0)=2, a(1)=-1, a(2)=2, a(3)=1, a(4)=3`
-/

namespace A160186.P654170655882200202
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [2, -1, 2, 1, 3] fun n f1 =>
  f1 (n - 4) ^ (f1 (n - 1) ^ 2)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160186.P654170655882200202

namespace A160186

/-- `∑[a(n-4)^a(n-1)²]` -/
def P654170655882200202.Spec : Prop :=
  ∀ n, P654170655882200202.a n = (A160186 n : ℝ)

end A160186

/-! ## A160186.P2373312147001010215

`A219977(n)+A047201(n+1)`
-/

namespace A160186.P2373312147001010215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 n + A047201 (n + 1)

end

end A160186.P2373312147001010215

namespace A160186

/-- `A219977(n)+A047201(n+1)` -/
def P2373312147001010215.Spec : Prop :=
  ∀ n, P2373312147001010215.a n = A160186 n

end A160186

/-! ## A160186.P108931786047571022

`A187321(n)+A162330(n+1)`
-/

namespace A160186.P108931786047571022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187321 n + A162330 (n + 1)

end

end A160186.P108931786047571022

namespace A160186

/-- `A187321(n)+A162330(n+1)` -/
def P108931786047571022.Spec : Prop :=
  ∀ n, P108931786047571022.a n = A160186 n

end A160186

/-! ## A160186.P1720377794508528908

`A168199(n+1)-A226577(n)`
-/

namespace A160186.P1720377794508528908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168199 (n + 1) - A226577 n

end

end A160186.P1720377794508528908

namespace A160186

/-- `A168199(n+1)-A226577(n)` -/
def P1720377794508528908.Spec : Prop :=
  ∀ n, P1720377794508528908.a n = A160186 n

end A160186

/-! ## A160186.P16522878348687644707

`A047235(n+1)-A047328(n+1)`
-/

namespace A160186.P16522878348687644707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047235 (n + 1) - A047328 (n + 1)

end

end A160186.P16522878348687644707

namespace A160186

/-- `A047235(n+1)-A047328(n+1)` -/
def P16522878348687644707.Spec : Prop :=
  ∀ n, P16522878348687644707.a n = A160186 n

end A160186

/-! ## A160186.P1701065528571510117

`A080460(n+1)-A047283(n+1)`
-/

namespace A160186.P1701065528571510117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080460 (n + 1) - A047283 (n + 1)

end

end A160186.P1701065528571510117

namespace A160186

/-- `A080460(n+1)-A047283(n+1)` -/
def P1701065528571510117.Spec : Prop :=
  ∀ n, P1701065528571510117.a n = A160186 n

end A160186

/-! ## A160186.P10940335869573595171

`A298364(A116966(n))+A004526(A004526(n))`
-/

namespace A160186.P10940335869573595171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298364 (A116966 n).toNat + A004526 (A004526 n).toNat

end

end A160186.P10940335869573595171

namespace A160186

/-- `A298364(A116966(n))+A004526(A004526(n))` -/
def P10940335869573595171.Spec : Prop :=
  ∀ n, P10940335869573595171.a n = A160186 n

end A160186

/-! ## A160186.P3343095262168022741

`A047201(A080412(n+1))`
-/

namespace A160186.P3343095262168022741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (A080412 (n + 1)).toNat

end

end A160186.P3343095262168022741

namespace A160186

/-- `A047201(A080412(n+1))` -/
def P3343095262168022741.Spec : Prop :=
  ∀ n, P3343095262168022741.a n = A160186 n

end A160186

/-! ## A160186.P4921126837830861331

`A047203(n+1)+A138191(n+2)*A219977(n)`
-/

namespace A160186.P4921126837830861331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047203 (n + 1) + A138191 (n + 2) * A219977 n

end

end A160186.P4921126837830861331

namespace A160186

/-- `A047203(n+1)+A138191(n+2)*A219977(n)` -/
def P4921126837830861331.Spec : Prop :=
  ∀ n, P4921126837830861331.a n = A160186 n

end A160186

/-! ## A160186.P8383346527879050791

`A113790(A001068(n+1))`
-/

namespace A160186.P8383346527879050791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113790 (A001068 (n + 1)).toNat

end

end A160186.P8383346527879050791

namespace A160186

/-- `A113790(A001068(n+1))` -/
def P8383346527879050791.Spec : Prop :=
  ∀ n, P8383346527879050791.a n = A160186 n

end A160186

/-! ## A160186.P10480614937868634301

`filter[A113790(n+1), A011558(#)]`
-/

namespace A160186.P10480614937868634301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A160186.P10480614937868634301

namespace A160186

/-- `filter[A113790(n+1), A011558(#)]` -/
def P10480614937868634301.Spec : Prop :=
  ∀ n, P10480614937868634301.a n = A160186 n

end A160186

/-! ## A160186.P10111881009864605502

`A004526(A116966(A260181(A298364(A116966(n)))))`
-/

namespace A160186.P10111881009864605502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A116966 (A260181 (A298364 (A116966 n).toNat).toNat).toNat).toNat

end

end A160186.P10111881009864605502

namespace A160186

/-- `A004526(A116966(A260181(A298364(A116966(n)))))` -/
def P10111881009864605502.Spec : Prop :=
  ∀ n, P10111881009864605502.a n = A160186 n

end A160186

/-!
# A160189: Prime terms subtracted from Fibonacci terms (ignoring first two terms of Fibonacci sequence).

The programs for A160189, the canonical program `A160189.P12959122928704125879` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160189 has offset 1).

The definition of A160189 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160189.P12959122928704125879

`A000045(n+3)-A000040(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A160189

/-- `A000045(n+3)-A000040(n+1)` -/
def P12959122928704125879.Spec : Prop :=
  ∀ n, P12959122928704125879.a n = A160189 (n + 1)

theorem P12959122928704125879.correct : P12959122928704125879.Spec := by
  intro n
  simp only [A160189, Nat.add_sub_cancel]

end A160189

/-! ## A160189.P605877765157411926

`A020695(n)-Δ[A007504(n)]`
-/

namespace A160189.P605877765157411926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n - (f1 (n + 1) - f1 n)

end

end A160189.P605877765157411926

namespace A160189

/-- `A020695(n)-Δ[A007504(n)]` -/
def P605877765157411926.Spec : Prop :=
  ∀ n, P605877765157411926.a n = A160189 (n + 1)

end A160189

/-! ## A160189.P17763358345723942006

`A020695(n)-p?[A001057(n)]`
-/

namespace A160189.P17763358345723942006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A160189.P17763358345723942006

namespace A160189

/-- `A020695(n)-p?[A001057(n)]` -/
def P17763358345723942006.Spec : Prop :=
  ∀ n, P17763358345723942006.a n = A160189 (n + 1)

end A160189

/-! ## A160189.P6277968951052786511

`A020695(n)-A000040(n+1)`
-/

namespace A160189.P6277968951052786511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n - A000040 (n + 1)

end

end A160189.P6277968951052786511

namespace A160189

/-- `A020695(n)-A000040(n+1)` -/
def P6277968951052786511.Spec : Prop :=
  ∀ n, P6277968951052786511.a n = A160189 (n + 1)

end A160189

/-! ## A160189.P15882160077369195013

`A001911(n)-A040976(n+1)`
-/

namespace A160189.P15882160077369195013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n - A040976 (n + 1)

end

end A160189.P15882160077369195013

namespace A160189

/-- `A001911(n)-A040976(n+1)` -/
def P15882160077369195013.Spec : Prop :=
  ∀ n, P15882160077369195013.a n = A160189 (n + 1)

theorem P15882160077369195013.correct : P15882160077369195013.Spec := by
  intro n
  simp only [A160189, Nat.add_sub_cancel, A160189.P15882160077369195013.a, A160189.P12959122928704125879.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000045, A000045.P11838749114346432762.a, A001911, A001911.P2299546665043418976.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A160189

/-! ## A160189.P11496196002883421829

`A048577(n)-A008864(n+1)`
-/

namespace A160189.P11496196002883421829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048577 n - A008864 (n + 1)

end

end A160189.P11496196002883421829

namespace A160189

/-- `A048577(n)-A008864(n+1)` -/
def P11496196002883421829.Spec : Prop :=
  ∀ n, P11496196002883421829.a n = A160189 (n + 1)

end A160189

/-! ## A160189.P13836203723564489263

`A018910(n)-A052147(n+1)`
-/

namespace A160189.P13836203723564489263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018910 n - A052147 (n + 1)

end

end A160189.P13836203723564489263

namespace A160189

/-- `A018910(n)-A052147(n+1)` -/
def P13836203723564489263.Spec : Prop :=
  ∀ n, P13836203723564489263.a n = A160189 (n + 1)

end A160189

/-! ## A160189.P860870267893555990

`A020695(n)-A008578(n+2)`
-/

namespace A160189.P860870267893555990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n - A008578 (n + 2)

end

end A160189.P860870267893555990

namespace A160189

/-- `A020695(n)-A008578(n+2)` -/
def P860870267893555990.Spec : Prop :=
  ∀ n, P860870267893555990.a n = A160189 (n + 1)

end A160189

/-! ## A160189.P10548649486547047123

`A048577(n)-(A000040(n+1)+1)`
-/

namespace A160189.P10548649486547047123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048577 n - (A000040 (n + 1) + 1)

end

end A160189.P10548649486547047123

namespace A160189

/-- `A048577(n)-(A000040(n+1)+1)` -/
def P10548649486547047123.Spec : Prop :=
  ∀ n, P10548649486547047123.a n = A160189 (n + 1)

end A160189

/-! ## A160189.P5029885915627033559

`A071679(n+1)-A006005(n+1)`
-/

namespace A160189.P5029885915627033559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071679 (n + 1) - A006005 (n + 1)

end

end A160189.P5029885915627033559

namespace A160189

/-- `A071679(n+1)-A006005(n+1)` -/
def P5029885915627033559.Spec : Prop :=
  ∀ n, P5029885915627033559.a n = A160189 (n + 1)

end A160189

/-! ## A160189.P7283502890711587430

`A100700(n+1)+A000045(n+2)`
-/

namespace A160189.P7283502890711587430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100700 (n + 1) + A000045 (n + 2)

end

end A160189.P7283502890711587430

namespace A160189

/-- `A100700(n+1)+A000045(n+2)` -/
def P7283502890711587430.Spec : Prop :=
  ∀ n, P7283502890711587430.a n = A160189 (n + 1)

end A160189

/-! ## A160189.P2788563802368701096

`A004399(n+1)-A100484(n+1)`
-/

namespace A160189.P2788563802368701096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004399 (n + 1) - A100484 (n + 1)

end

end A160189.P2788563802368701096

namespace A160189

/-- `A004399(n+1)-A100484(n+1)` -/
def P2788563802368701096.Spec : Prop :=
  ∀ n, P2788563802368701096.a n = A160189 (n + 1)

theorem P2788563802368701096.correct : P2788563802368701096.Spec := by
  intro n
  simp only [A160189, Nat.add_sub_cancel, A160189.P2788563802368701096.a, A160189.P12959122928704125879.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000045, A000045.P11838749114346432762.a, A004399, A004399.P16642943363448830783.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A160189

/-! ## A160189.P15115807746454893587

`A226271(n+1)-A055670(n+1)`
-/

namespace A160189.P15115807746454893587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226271 (n + 1) - A055670 (n + 1)

end

end A160189.P15115807746454893587

namespace A160189

/-- `A226271(n+1)-A055670(n+1)` -/
def P15115807746454893587.Spec : Prop :=
  ∀ n, P15115807746454893587.a n = A160189 (n + 1)

end A160189

/-! ## A160189.P7295987674109012822

`A169622(n+1)-A113935(n+1)`
-/

namespace A160189.P7295987674109012822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169622 (n + 1) - A113935 (n + 1)

end

end A160189.P7295987674109012822

namespace A160189

/-- `A169622(n+1)-A113935(n+1)` -/
def P7295987674109012822.Spec : Prop :=
  ∀ n, P7295987674109012822.a n = A160189 (n + 1)

end A160189

/-! ## A160189.P230645004039252942

`A001911(n)+2-A000040(n+1)`
-/

namespace A160189.P230645004039252942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n + (2 - A000040 (n + 1))

end

end A160189.P230645004039252942

namespace A160189

/-- `A001911(n)+2-A000040(n+1)` -/
def P230645004039252942.Spec : Prop :=
  ∀ n, P230645004039252942.a n = A160189 (n + 1)

theorem P230645004039252942.correct : P230645004039252942.Spec := by
  intro n
  simp only [A160189, Nat.add_sub_cancel, A160189.P230645004039252942.a, A160189.P12959122928704125879.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000045, A000045.P11838749114346432762.a, A001911, A001911.P2299546665043418976.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A160189

/-! ## A160189.P1088266132832867787

`A018910(n)-(A000040(n+1)+2)`
-/

namespace A160189.P1088266132832867787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018910 n - (A000040 (n + 1) + 2)

end

end A160189.P1088266132832867787

namespace A160189

/-- `A018910(n)-(A000040(n+1)+2)` -/
def P1088266132832867787.Spec : Prop :=
  ∀ n, P1088266132832867787.a n = A160189 (n + 1)

end A160189

/-! ## A160189.P2286375272145548367

`A048577(n)-(A006093(n+1)+2)`
-/

namespace A160189.P2286375272145548367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048577 n - (A006093 (n + 1) + 2)

end

end A160189.P2286375272145548367

namespace A160189

/-- `A048577(n)-(A006093(n+1)+2)` -/
def P2286375272145548367.Spec : Prop :=
  ∀ n, P2286375272145548367.a n = A160189 (n + 1)

end A160189

/-! ## A160189.P16350350371517183683

`A000045(n+3)-record[A006530(n+2)]`
-/

namespace A160189.P16350350371517183683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 3) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160189.P16350350371517183683

namespace A160189

/-- `A000045(n+3)-record[A006530(n+2)]` -/
def P16350350371517183683.Spec : Prop :=
  ∀ n, P16350350371517183683.a n = A160189 (n + 1)

end A160189

/-! ## A160189.P9323182106996609513

`A000045(n+3)-record[A014963(n+2)]`
-/

namespace A160189.P9323182106996609513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 3) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160189.P9323182106996609513

namespace A160189

/-- `A000045(n+3)-record[A014963(n+2)]` -/
def P9323182106996609513.Spec : Prop :=
  ∀ n, P9323182106996609513.a n = A160189 (n + 1)

end A160189

/-! ## A160189.P7529429038203884736

`A000045(n+3)-record[A020639(n+2)]`
-/

namespace A160189.P7529429038203884736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 3) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160189.P7529429038203884736

namespace A160189

/-- `A000045(n+3)-record[A020639(n+2)]` -/
def P7529429038203884736.Spec : Prop :=
  ∀ n, P7529429038203884736.a n = A160189 (n + 1)

end A160189

/-!
# A160190: Prime terms multiplied by Fibonacci terms (omitting first two terms of Fibonacci sequence).

The programs for A160190, there is no canonical definition to state claims against.
-/

/-! ## A160190.P12785222677762221236

`p?[xor(1, n)+1]*A020695(n)`
-/

namespace A160190.P12785222677762221236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) * A020695 n

end

end A160190.P12785222677762221236

/-! ## A160190.P4218139258711658980

`p?[xor(1, n)+1]*A000045(n+3)`
-/

namespace A160190.P4218139258711658980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) * A000045 (n + 3)

end

end A160190.P4218139258711658980

/-! ## A160190.P13070908757758648927

`Δ[A000045(n+4)]*p?[n%3+n]`
-/

namespace A160190.P13070908757758648927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

end

end A160190.P13070908757758648927

/-! ## A160190.P12520275670481067656

`Δ[floor(ϕ*a(n-1))]*A000040(n+1)` with `a(0)=4`
-/

namespace A160190.P12520275670481067656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  ⌊Real.goldenRatio * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000040 (n + 1)

end

end A160190.P12520275670481067656

/-! ## A160190.P10726546220598980054

`Δ[A007504(n)]*A020695(n)`
-/

namespace A160190.P10726546220598980054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A020695 n

end

end A160190.P10726546220598980054

/-!
# A160191: Lodumo_8 of Lucas numbers.

The programs for A160191, the canonical program `A160191.P929671129231223444` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160191 has offset 0).

The definition of A160191 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160191.P929671129231223444

`ogf((2+x+3x^2+4x^3+7x^4+11x^5+6x^6+3x^7+9x^8+4x^9+5x^10+x^11)/(1-2x^6+x^12))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A160191

/-- `ogf((2+x+3x^2+4x^3+7x^4+11x^5+6x^6+3x^7+9x^8+4x^9+5x^10+x^11)/(1-2x^6+x^12))` -/
def P929671129231223444.Spec : Prop :=
  ∀ n, P929671129231223444.a n = A160191 n

theorem P929671129231223444.correct : P929671129231223444.Spec := by
  intro n
  simp only [A160191]

end A160191

/-!
# A160198: a(n) = min(A122458(n), A159885(n)).

The programs for A160198, there is no canonical definition to state claims against.
-/

/-! ## A160198.P94138104390451945

`A319430(gcd(A008585(n+2), A373676(2*(n+1))))`
-/

namespace A160198.P94138104390451945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319430 (Int.gcd (A008585 (n + 2)) (A373676 (2 * (n + 1))))

end

end A160198.P94138104390451945

/-! ## A160198.P11765581599916486672

`A328835(A275966(A005940(n+1)²))`
-/

namespace A160198.P11765581599916486672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328835 (A275966 (A005940 (n + 1) ^ 2).toNat).toNat

end

end A160198.P11765581599916486672

/-! ## A160198.P16940285311209677637

`A001511(gcd(A103391(n+3), A151691(3*(n+1))))`
-/

namespace A160198.P16940285311209677637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (Int.gcd (A103391 (n + 3)) (A151691 (3 * (n + 1))))

end

end A160198.P16940285311209677637

/-! ## A160198.P15136013623738029640

`A001511(or(A103391(n+3), A151691(3*(n+1))))`
-/

namespace A160198.P15136013623738029640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (Int.lor (A103391 (n + 3)) (A151691 (3 * (n + 1)))).toNat

end

end A160198.P15136013623738029640

/-! ## A160198.P14593636966598876901

`A159885(∏{p}[n+1, #]%A237641(n+3))`
-/

namespace A160198.P14593636966598876901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159885 (Int.tmod ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) (A237641 (n + 3))).toNat

end

end A160198.P14593636966598876901

/-!
# A160199: Product of non-exponential divisors of n.

The programs for A160199, there is no canonical definition to state claims against.
-/

/-! ## A160199.P10812685740507737673

`A007955(n+1)/A157488(n+1)`
-/

namespace A160199.P10812685740507737673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A157488 (n + 1) : ℚ)

end

end A160199.P10812685740507737673

/-! ## A160199.P144727772857976625

`(n+1)*A007956(n+1)/A157488(n+1)`
-/

namespace A160199.P144727772857976625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A007956 (n + 1) : ℚ) / (A157488 (n + 1) : ℚ))

end

end A160199.P144727772857976625

/-! ## A160199.P18215060815522805103

`sqrt(n+1)^A000005(n+1)/A157488(n+1)`
-/

namespace A160199.P18215060815522805103
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n + 1 : ℝ) ^ (A000005 (n + 1) : ℤ) / (A157488 (n + 1) : ℝ)

end

end A160199.P18215060815522805103

/-! ## A160199.P14111333842582484357

`(n+1)^(A000005(2*n+1-n)/2)/A157488(n+1)`
-/

namespace A160199.P14111333842582484357
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((A000005 (2 * n + 1 - n) : ℚ) / 2 : ℝ) / (A157488 (n + 1) : ℝ)

end

end A160199.P14111333842582484357

/-! ## A160199.P5251297518801400286

`A056925(n+1)*A056926(n+1)/A157488(n+1)`
-/

namespace A160199.P5251297518801400286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056925 (n + 1) * A056926 (n + 1) : ℚ) / (A157488 (n + 1) : ℚ)

end

end A160199.P5251297518801400286

/-! ## A160199.P10202344861584303036

`sqrt(A062758(n+1))/A157488(n+1)`
-/

namespace A160199.P10202344861584303036
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062758 (n + 1) : ℝ) / (A157488 (n + 1) : ℝ)

end

end A160199.P10202344861584303036

/-! ## A160199.P16808668781703412473

`A324981(n+1)/(A157488(n+1)*A266265(n+1))`
-/

namespace A160199.P16808668781703412473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324981 (n + 1) : ℚ) / (A157488 (n + 1) * A266265 (n + 1) : ℚ)

end

end A160199.P16808668781703412473

