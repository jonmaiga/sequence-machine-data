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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C025
import Seq.Opaque.C026

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A002301: a(n) = n! / 3.

The programs for A002301, there is no canonical definition to state claims against.
-/

/-! ## A002301.P5318442015039989702

`2/3*∏[n+3]`
-/

namespace A002301.P5318442015039989702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A002301.P5318442015039989702

/-! ## A002301.P9450744520259077104

`∏[ceil(n/sin(8))+2]`
-/

namespace A002301.P9450744520259077104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.sin (8 : ℝ)⌉ + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A002301.P9450744520259077104

/-! ## A002301.P1528891020864671769

`∏[ceil(tanh(n)+2+n)]`
-/

namespace A002301.P1528891020864671769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tanh (n : ℝ) + 2 + (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A002301.P1528891020864671769

/-! ## A002301.P4668796550826926717

`∏[round(tanh(n)+2+n)]`
-/

namespace A002301.P4668796550826926717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tanh (n : ℝ) + 2 + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A002301.P4668796550826926717

/-! ## A002301.P16896125503542621014

`∏[n+3-floor(acot(n))]`
-/

namespace A002301.P16896125503542621014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A002301.P16896125503542621014

/-! ## A002301.P1213182117678776262

`∏[ceil(n+3-acot(n))]`
-/

namespace A002301.P1213182117678776262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 3 : ℝ) - SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A002301.P1213182117678776262

/-! ## A002301.P967536507763202593

`∏[xor(n+3, floor(acot(n)))]`
-/

namespace A002301.P967536507763202593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 3 : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A002301.P967536507763202593

/-! ## A002301.P3829245996870467440

`∏[round(log(∑[cosh(n+3)]))]`
-/

namespace A002301.P3829245996870467440
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (n + 3 : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A002301.P3829245996870467440

/-! ## A002301.P9618723817744474153

`∏[round(log(∑[sinh(n+3)]))]`
-/

namespace A002301.P9618723817744474153
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sinh (n + 3 : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A002301.P9618723817744474153

/-! ## A002301.P5960310544731356136

`∏[a(n-1)+1]` with `a(0)=2, a(1)=4`
-/

namespace A002301.P5960310544731356136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A002301.P5960310544731356136

/-!
# A002302: Generalized tangent numbers.

The programs for A002302, there is no canonical definition to state claims against.
-/

/-! ## A002302.P14164457845704843323

`A107729(A052905(n+1))`
-/

namespace A002302.P14164457845704843323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107729 (A052905 (n + 1)).toNat

end

end A002302.P14164457845704843323

/-! ## A002302.P623377229872734772

`A155100(A052905(n+2))`
-/

namespace A002302.P623377229872734772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155100 (A052905 (n + 2)).toNat

end

end A002302.P623377229872734772

/-! ## A002302.P4508341079691699728

`A155100(eq[4, A025581(n)])`
-/

namespace A002302.P4508341079691699728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A002302.P4508341079691699728

/-! ## A002302.P3975375679726936667

`A350970(eq[4, A025581(n)])`
-/

namespace A002302.P3975375679726936667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350970 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A002302.P3975375679726936667

/-! ## A002302.P3256533004801755295

`A155100(eq[9, A099375(n)])`
-/

namespace A002302.P3256533004801755295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A002302.P3256533004801755295

/-! ## A002302.P5647440305913266103

`A155100(A046691(n+3)-1)`
-/

namespace A002302.P5647440305913266103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155100 (A046691 (n + 3) - 1).toNat

end

end A002302.P5647440305913266103

/-! ## A002302.P3355140222567443731

`A155100(A000217(n+5)-5)`
-/

namespace A002302.P3355140222567443731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155100 (A000217 (n + 5) - 5).toNat

end

end A002302.P3355140222567443731

/-! ## A002302.P11289748116815712193

`A350970(A000217(n+5)-5)`
-/

namespace A002302.P11289748116815712193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350970 (A000217 (n + 5) - 5).toNat

end

end A002302.P11289748116815712193

/-! ## A002302.P6796401245328529077

`A155100(eq[5, A004736(n+1)])`
-/

namespace A002302.P6796401245328529077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A002302.P6796401245328529077

/-! ## A002302.P11617838934862027567

`A155100(Δ[A023545(n+1)]-1)`
-/

namespace A002302.P11617838934862027567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155100 (f1 (n + 1) - f1 n - 1).toNat

end

end A002302.P11617838934862027567

/-!
# A002303: Generalized tangent numbers.

The programs for A002303, there is no canonical definition to state claims against.
-/

/-! ## A002303.P18251056151461007321

`A155100(eq[6, A025581(n)])`
-/

namespace A002303.P18251056151461007321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A002303.P18251056151461007321

/-! ## A002303.P7789395178575586087

`A350970(eq[6, A025581(n)])`
-/

namespace A002303.P7789395178575586087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350970 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A002303.P7789395178575586087

/-! ## A002303.P4811359169251884717

`A350970(eq[64, A130321(n)])`
-/

namespace A002303.P4811359169251884717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350970 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A002303.P4811359169251884717

/-! ## A002303.P5843680376626430421

`A155100(eq[7, A004736(n+1)])`
-/

namespace A002303.P5843680376626430421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A002303.P5843680376626430421

/-! ## A002303.P2303561142030442492

`A350970(eq[7, A004736(n+1)])`
-/

namespace A002303.P2303561142030442492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350970 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A002303.P2303561142030442492

/-!
# A002308: Consecutive quadratic nonresidues mod p.

The programs for A002308, there is no canonical definition to state claims against.
-/

/-! ## A002308.P9377583561118605159

`A248222(Δ[A007504(n)])-1`
-/

namespace A002308.P9377583561118605159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248222 (f1 (n + 1) - f1 n).toNat - 1

end

end A002308.P9377583561118605159

/-! ## A002308.P6849729359804446916

`A248222(A000040(n+1))-1`
-/

namespace A002308.P6849729359804446916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248222 (A000040 (n + 1)).toNat - 1

end

end A002308.P6849729359804446916

/-! ## A002308.P18000623663208968912

`A248222(record[A134735(n+1)])-1`
-/

namespace A002308.P18000623663208968912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A002308.P18000623663208968912

/-! ## A002308.P1553199307961498997

`A248222(p?[A207790(n+1)])-1`
-/

namespace A002308.P1553199307961498997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248222 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A002308.P1553199307961498997

/-! ## A002308.P10705313251147289394

`A248222(A134735(2*n+1))-1`
-/

namespace A002308.P10705313251147289394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248222 (A134735 (2 * n + 1)).toNat - 1

end

end A002308.P10705313251147289394

/-! ## A002308.P2551297964520911294

`A248222(A207790(2*(n+1)))-1`
-/

namespace A002308.P2551297964520911294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248222 (A207790 (2 * (n + 1))).toNat - 1

end

end A002308.P2551297964520911294

/-! ## A002308.P9228769712476883265

`A248222(A088192(n+1)+A088190(n+1))-1`
-/

namespace A002308.P9228769712476883265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248222 (A088192 (n + 1) + A088190 (n + 1)).toNat - 1

end

end A002308.P9228769712476883265

/-!
# A002309: Sum of fourth powers of first n odd numbers.

The programs for A002309, the canonical program `A002309.P3329761955655065509` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002309 has offset 1).

The definition of A002309 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002309.P3329761955655065509

`∑[Δ[n²]^4]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002309

/-- `∑[Δ[n²]^4]` -/
def P3329761955655065509.Spec : Prop :=
  ∀ n, P3329761955655065509.a n = A002309 (n + 1)

theorem P3329761955655065509.correct : P3329761955655065509.Spec := by
  intro n
  simp only [A002309, Nat.add_sub_cancel]

end A002309

/-! ## A002309.P15893565181269988284

`a(n-1)+Δ[n²]^4` with `a(0)=1`
-/

namespace A002309.P15893565181269988284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 4

end

end A002309.P15893565181269988284

namespace A002309

/-- `a(n-1)+Δ[n²]^4` -/
def P15893565181269988284.Spec : Prop :=
  ∀ n, P15893565181269988284.a n = A002309 (n + 1)

end A002309

/-! ## A002309.P10753300564118675088

`∑[lcm(2, (2*n+1)^4)]/2`
-/

namespace A002309.P10753300564118675088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 ((2 * n + 1) ^ 4)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A002309.P10753300564118675088

namespace A002309

/-- `∑[lcm(2, (2*n+1)^4)]/2` -/
def P10753300564118675088.Spec : Prop :=
  ∀ n, P10753300564118675088.a n = (A002309 (n + 1) : ℚ)

end A002309

/-! ## A002309.P13057375236732658010

`-∑[or(1, -(2*n+1)^4)]`
-/

namespace A002309.P13057375236732658010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-((2 * n + 1) ^ 4 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002309.P13057375236732658010

namespace A002309

/-- `-∑[or(1, -(2*n+1)^4)]` -/
def P13057375236732658010.Spec : Prop :=
  ∀ n, P13057375236732658010.a n = A002309 (n + 1)

end A002309

/-! ## A002309.P17909404382598846666

`-∑[xor(-2, (2*n+1)^4)]`
-/

namespace A002309.P17909404382598846666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-2) ((2 * n + 1) ^ 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002309.P17909404382598846666

namespace A002309

/-- `-∑[xor(-2, (2*n+1)^4)]` -/
def P17909404382598846666.Spec : Prop :=
  ∀ n, P17909404382598846666.a n = A002309 (n + 1)

end A002309

/-! ## A002309.P7066771105049365237

`xor(1, xor(1, ∑[(2*n+1)²²]))`
-/

namespace A002309.P7066771105049365237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A002309.P7066771105049365237

namespace A002309

/-- `xor(1, xor(1, ∑[(2*n+1)²²]))` -/
def P7066771105049365237.Spec : Prop :=
  ∀ n, (P7066771105049365237.a n : ℤ) = A002309 (n + 1)

theorem P7066771105049365237.correct : P7066771105049365237.Spec := by
  intro n
  simp only [A002309, Nat.add_sub_cancel, A002309.P7066771105049365237.f1, A002309.P7066771105049365237.a, A002309.P3329761955655065509.f2, A002309.P3329761955655065509.f1, A002309.P3329761955655065509.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A002309

/-! ## A002309.P10744139135112064435

`floor(∑[∑[a(n-1)+8]²])` with `a(0)=1, a(1)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A002309.P10744139135112064435
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002309.P10744139135112064435

namespace A002309

/-- `floor(∑[∑[a(n-1)+8]²])` -/
def P10744139135112064435.Spec : Prop :=
  ∀ n, (P10744139135112064435.a n : ℤ) = A002309 (n + 1)

end A002309

/-! ## A002309.P9256286125240677375

`floor(a(n-1)+Δ[n²]²²)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A002309.P9256286125240677375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2

end

end A002309.P9256286125240677375

namespace A002309

/-- `floor(a(n-1)+Δ[n²]²²)` -/
def P9256286125240677375.Spec : Prop :=
  ∀ n, P9256286125240677375.a n = A002309 (n + 1)

end A002309

/-! ## A002309.P14778919623905059768

`(2*n+1)^4+a(n-1)` with `a(0)=1`
-/

namespace A002309.P14778919623905059768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n + 1) ^ 4 + a (n - 1)

end

end A002309.P14778919623905059768

namespace A002309

/-- `(2*n+1)^4+a(n-1)` -/
def P14778919623905059768.Spec : Prop :=
  ∀ n, (P14778919623905059768.a n : ℤ) = A002309 (n + 1)

end A002309

/-! ## A002309.P659822014383804549

`∑[(2*n+1)²²]+and(2, n²)`
-/

namespace A002309.P659822014383804549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.land 2 (n ^ 2)

end

end A002309.P659822014383804549

namespace A002309

/-- `∑[(2*n+1)²²]+and(2, n²)` -/
def P659822014383804549.Spec : Prop :=
  ∀ n, (P659822014383804549.a n : ℤ) = A002309 (n + 1)

end A002309

/-! ## A002309.P8537310605286090519

`lcm(ϕ-ϕ², ∑[(2*n+1)²²])`
-/

namespace A002309.P8537310605286090519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (Real.goldenRatio - Real.goldenRatio ^ 2)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A002309.P8537310605286090519

namespace A002309

/-- `lcm(ϕ-ϕ², ∑[(2*n+1)²²])` -/
def P8537310605286090519.Spec : Prop :=
  ∀ n, (P8537310605286090519.a n : ℤ) = A002309 (n + 1)

end A002309

/-! ## A002309.P10185902526082754510

`C(∑[(2*n+1)²²], ϕ²-ϕ)`
-/

namespace A002309.P10185902526082754510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - Real.goldenRatio)).toNat

end

end A002309.P10185902526082754510

namespace A002309

/-- `C(∑[(2*n+1)²²], ϕ²-ϕ)` -/
def P10185902526082754510.Spec : Prop :=
  ∀ n, (P10185902526082754510.a n : ℤ) = A002309 (n + 1)

end A002309

/-! ## A002309.P4157926667194613644

`∑[xor(1, (2*n+1)^4)]+n+1`
-/

namespace A002309.P4157926667194613644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((2 * n + 1) ^ 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A002309.P4157926667194613644

namespace A002309

/-- `∑[xor(1, (2*n+1)^4)]+n+1` -/
def P4157926667194613644.Spec : Prop :=
  ∀ n, (P4157926667194613644.a n : ℤ) = A002309 (n + 1)

end A002309

/-! ## A002309.P3846024226211525281

`∑[(2*n+1)^4]+C(2, n+3)`
-/

namespace A002309.P3846024226211525281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose 2 (n + 3)

end

end A002309.P3846024226211525281

namespace A002309

/-- `∑[(2*n+1)^4]+C(2, n+3)` -/
def P3846024226211525281.Spec : Prop :=
  ∀ n, (P3846024226211525281.a n : ℤ) = A002309 (n + 1)

end A002309

/-! ## A002309.P8633582213069148269

`(2*n+1)²²+abs(a(n-1))` with `a(0)=1`
-/

namespace A002309.P8633582213069148269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ((2 * n + 1) ^ 2) ^ 2 + a (n - 1)

end

end A002309.P8633582213069148269

namespace A002309

/-- `(2*n+1)²²+abs(a(n-1))` -/
def P8633582213069148269.Spec : Prop :=
  ∀ n, (P8633582213069148269.a n : ℤ) = A002309 (n + 1)

end A002309

/-! ## A002309.P8967360974842979394

`gcd(n, n+1)*∑[(2*n+1)^4]`
-/

namespace A002309.P8967360974842979394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002309.P8967360974842979394

namespace A002309

/-- `gcd(n, n+1)*∑[(2*n+1)^4]` -/
def P8967360974842979394.Spec : Prop :=
  ∀ n, (P8967360974842979394.a n : ℤ) = A002309 (n + 1)

theorem P8967360974842979394.correct : P8967360974842979394.Spec := by
  intro n
  simp only [A002309, Nat.add_sub_cancel, A002309.P8967360974842979394.f1, A002309.P8967360974842979394.a, A002309.P3329761955655065509.f2, A002309.P3329761955655065509.f1, A002309.P3329761955655065509.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A002309

/-! ## A002309.P1190976001295982901

`floor(a(n-1))+(2*n+1)²²` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A002309.P1190976001295982901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((2 * n + 1) ^ 2) ^ 2

end

end A002309.P1190976001295982901

namespace A002309

/-- `floor(a(n-1))+(2*n+1)²²` -/
def P1190976001295982901.Spec : Prop :=
  ∀ n, (P1190976001295982901.a n : ℤ) = A002309 (n + 1)

end A002309

/-! ## A002309.P9244604397120594284

`ceil(a(n-1)+(2*n+1)²²)` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A002309.P9244604397120594284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((2 * n + 1) ^ 2) ^ 2

end

end A002309.P9244604397120594284

namespace A002309

/-- `ceil(a(n-1)+(2*n+1)²²)` -/
def P9244604397120594284.Spec : Prop :=
  ∀ n, (P9244604397120594284.a n : ℤ) = A002309 (n + 1)

end A002309

/-! ## A002309.P6160104481459068215

`round(a(n-1)+(2*n+1)²²)` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A002309.P6160104481459068215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((2 * n + 1) ^ 2) ^ 2

end

end A002309.P6160104481459068215

namespace A002309

/-- `round(a(n-1)+(2*n+1)²²)` -/
def P6160104481459068215.Spec : Prop :=
  ∀ n, (P6160104481459068215.a n : ℤ) = A002309 (n + 1)

end A002309

/-! ## A002309.P6175077916599632395

`gcd(C(2, n+2), ∑[(2*n+1)²²])`
-/

namespace A002309.P6175077916599632395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.choose 2 (n + 2)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002309.P6175077916599632395

namespace A002309

/-- `gcd(C(2, n+2), ∑[(2*n+1)²²])` -/
def P6175077916599632395.Spec : Prop :=
  ∀ n, (P6175077916599632395.a n : ℤ) = A002309 (n + 1)

end A002309

/-!
# A002310: a(n) = 5*a(n-1) - a(n-2), with a(0) = 1 and a(1) = 2.

The programs for A002310, the canonical program `A002310.P4789822154461070856` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002310 has offset 0).

The definition of A002310 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)-a(n-2)` (program `A002310.P4789822154461070856`, by `A002310.P4789822154461070856.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002310.P4789822154461070856

`5*a(n-1)-a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002310

/-- `5*a(n-1)-a(n-2)` -/
def P4789822154461070856.Spec : Prop :=
  ∀ n, P4789822154461070856.a n = A002310 n

theorem P4789822154461070856.correct : P4789822154461070856.Spec := by
  intro n
  simp only [A002310]

end A002310

/-! ## A002310.P1689575759352011087

`lcm(5, a(n-1))-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A002310.P1689575759352011087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (Int.lcm 5 (a (n - 1)) : ℤ) - a (n - 2)

end

end A002310.P1689575759352011087

namespace A002310

/-- `lcm(5, a(n-1))-a(n-2)` -/
def P1689575759352011087.Spec : Prop :=
  ∀ n, P1689575759352011087.a n = A002310 n

end A002310

/-! ## A002310.P10886475043632320049

`Δ[A107402(2*n)]`
-/

namespace A002310.P10886475043632320049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107402 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002310.P10886475043632320049

namespace A002310

/-- `Δ[A107402(2*n)]` -/
def P10886475043632320049.Spec : Prop :=
  ∀ n, P10886475043632320049.a n = A002310 n

end A002310

/-! ## A002310.P4818041462677227974

`A217787(3*n+1)`
-/

namespace A002310.P4818041462677227974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217787 (3 * n + 1)

end

end A002310.P4818041462677227974

namespace A002310

/-- `A217787(3*n+1)` -/
def P4818041462677227974.Spec : Prop :=
  ∀ n, P4818041462677227974.a n = A002310 n

end A002310

/-! ## A002310.P7336155536008157840

`record[A237254(n+1)^(n%2)]`
-/

namespace A002310.P7336155536008157840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237254 (n + 1) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002310.P7336155536008157840

namespace A002310

/-- `record[A237254(n+1)^(n%2)]` -/
def P7336155536008157840.Spec : Prop :=
  ∀ n, P7336155536008157840.a n = A002310 n

end A002310

/-! ## A002310.P8830645493163277001

`A055271(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A002310.P8830645493163277001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055271 (n - 1) + a (n - 1)

end

end A002310.P8830645493163277001

namespace A002310

/-- `A055271(n-1)+a(n-1)` -/
def P8830645493163277001.Spec : Prop :=
  ∀ n, P8830645493163277001.a n = A002310 n

end A002310

/-! ## A002310.P14395334818388181297

`A237254(A004277(n))`
-/

namespace A002310.P14395334818388181297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237254 (A004277 n).toNat

end

end A002310.P14395334818388181297

namespace A002310

/-- `A237254(A004277(n))` -/
def P14395334818388181297.Spec : Prop :=
  ∀ n, P14395334818388181297.a n = A002310 n

end A002310

/-! ## A002310.P8685473645302316936

`A237254(A004275(n+1))`
-/

namespace A002310.P8685473645302316936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237254 (A004275 (n + 1)).toNat

end

end A002310.P8685473645302316936

namespace A002310

/-- `A237254(A004275(n+1))` -/
def P8685473645302316936.Spec : Prop :=
  ∀ n, P8685473645302316936.a n = A002310 n

end A002310

/-! ## A002310.P4811831189027642652

`A237254(A004273(n)+1)`
-/

namespace A002310.P4811831189027642652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237254 (A004273 n + 1).toNat

end

end A002310.P4811831189027642652

namespace A002310

/-- `A237254(A004273(n)+1)` -/
def P4811831189027642652.Spec : Prop :=
  ∀ n, P4811831189027642652.a n = A002310 n

end A002310

/-! ## A002310.P1501050392779024745

`A002320(n)-A004254(n)`
-/

namespace A002310.P1501050392779024745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002320 n - A004254 n

end

end A002310.P1501050392779024745

namespace A002310

/-- `A002320(n)-A004254(n)` -/
def P1501050392779024745.Spec : Prop :=
  ∀ n, P1501050392779024745.a n = A002310 n

end A002310

/-! ## A002310.P9438094790123275350

`A101368(n+1)+∑[A004254(n)]`
-/

namespace A002310.P9438094790123275350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101368 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002310.P9438094790123275350

namespace A002310

/-- `A101368(n+1)+∑[A004254(n)]` -/
def P9438094790123275350.Spec : Prop :=
  ∀ n, P9438094790123275350.a n = A002310 n

end A002310

/-! ## A002310.P6996714245163380505

`A004253(n+1)-2*A004254(n)`
-/

namespace A002310.P6996714245163380505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004253 (n + 1) - 2 * A004254 n

end

end A002310.P6996714245163380505

namespace A002310

/-- `A004253(n+1)-2*A004254(n)` -/
def P6996714245163380505.Spec : Prop :=
  ∀ n, P6996714245163380505.a n = A002310 n

end A002310

/-! ## A002310.P2318942152812659534

`(A164582(n+1)+A004254(n))/2`
-/

namespace A002310.P2318942152812659534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164582 (n + 1) + A004254 n : ℚ) / 2

end

end A002310.P2318942152812659534

namespace A002310

/-- `(A164582(n+1)+A004254(n))/2` -/
def P2318942152812659534.Spec : Prop :=
  ∀ n, P2318942152812659534.a n = (A002310 n : ℚ)

end A002310

/-! ## A002310.P4859326081080974505

`A237254(2*n+1)-A004254(n)`
-/

namespace A002310.P4859326081080974505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237254 (2 * n + 1) - A004254 n

end

end A002310.P4859326081080974505

namespace A002310

/-- `A237254(2*n+1)-A004254(n)` -/
def P4859326081080974505.Spec : Prop :=
  ∀ n, P4859326081080974505.a n = A002310 n

end A002310

/-! ## A002310.P16823344036555213069

`A004253(n+1)-Δ[A101368(n+1)]`
-/

namespace A002310.P16823344036555213069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004253 (n + 1) - (f1 (n + 1) - f1 n)

end

end A002310.P16823344036555213069

namespace A002310

/-- `A004253(n+1)-Δ[A101368(n+1)]` -/
def P16823344036555213069.Spec : Prop :=
  ∀ n, P16823344036555213069.a n = A002310 n

end A002310

/-! ## A002310.P16635976013870560039

`A002320(n)-Δ[A101368(n+1)/2]`
-/

namespace A002310.P16635976013870560039
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101368 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002320 n : ℚ) - (f1 (n + 1) - f1 n)

end

end A002310.P16635976013870560039

namespace A002310

/-- `A002320(n)-Δ[A101368(n+1)/2]` -/
def P16635976013870560039.Spec : Prop :=
  ∀ n, P16635976013870560039.a n = (A002310 n : ℚ)

end A002310

/-! ## A002310.P7943817159537379358

`record[A237254(n+1)/(A142150(n)+1)]`
-/

namespace A002310.P7943817159537379358
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237254 (n + 1) : ℚ) / (A142150 n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002310.P7943817159537379358

namespace A002310

/-- `record[A237254(n+1)/(A142150(n)+1)]` -/
def P7943817159537379358.Spec : Prop :=
  ∀ n, P7943817159537379358.a n = (A002310 n : ℚ)

end A002310

/-! ## A002310.P5037023071405026936

`A107402(2*(n+1))-A107402(2*n)`
-/

namespace A002310.P5037023071405026936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107402 (2 * (n + 1)) - A107402 (2 * n)

end

end A002310.P5037023071405026936

namespace A002310

/-- `A107402(2*(n+1))-A107402(2*n)` -/
def P5037023071405026936.Spec : Prop :=
  ∀ n, P5037023071405026936.a n = A002310 n

end A002310

/-! ## A002310.P5543375312705088231

`A004254(n)+A004253(A028310(n))`
-/

namespace A002310.P5543375312705088231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004254 n + A004253 (A028310 n).toNat

end

end A002310.P5543375312705088231

namespace A002310

/-- `A004254(n)+A004253(A028310(n))` -/
def P5543375312705088231.Spec : Prop :=
  ∀ n, P5543375312705088231.a n = A002310 n

end A002310

/-!
# A002311: Numbers k such that the k-th tetrahedral number is the sum of 2 tetrahedral numbers.

The programs for A002311, there is no canonical definition to state claims against.
-/

/-! ## A002311.P15023270656055787257

`A010330(n+1)-2`
-/

namespace A002311.P15023270656055787257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010330 (n + 1) - 2

end

end A002311.P15023270656055787257

/-! ## A002311.P18180140525547012248

`A280560(2*n+1)+A010330(n+1)`
-/

namespace A002311.P18180140525547012248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 (2 * n + 1) + A010330 (n + 1)

end

end A002311.P18180140525547012248

/-! ## A002311.P10715445097772825271

`A118824(A000265(n+1))+A010330(n+1)`
-/

namespace A002311.P10715445097772825271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118824 (A000265 (n + 1)).toNat + A010330 (n + 1)

end

end A002311.P10715445097772825271

/-! ## A002311.P5159039977525436239

`A118824(A051417(n+1))+A010330(n+1)`
-/

namespace A002311.P5159039977525436239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118824 (A051417 (n + 1)).toNat + A010330 (n + 1)

end

end A002311.P5159039977525436239

/-! ## A002311.P9902226433853627551

`A118824(A216822(n+1))+A010330(n+1)`
-/

namespace A002311.P9902226433853627551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118824 (A216822 (n + 1)).toNat + A010330 (n + 1)

end

end A002311.P9902226433853627551

/-! ## A002311.P5047295593411433801

`A118824(A284621(n+1))+A010330(n+1)`
-/

namespace A002311.P5047295593411433801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118824 (A284621 (n + 1)).toNat + A010330 (n + 1)

end

end A002311.P5047295593411433801

/-! ## A002311.P10634884706290642687

`(A010330(n+1)+log2(1/4))%A000578(A000040(n+1))`
-/

namespace A002311.P10634884706290642687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A010330 (n + 1) : ℝ) + Real.logb 2 ((1 : ℚ) / 4 : ℝ))) (A000578 (A000040 (n + 1)).toNat)

end

end A002311.P10634884706290642687

/-! ## A002311.P8654851672497494349

`A168330(A276983(n+1))+A010330(n+1)`
-/

namespace A002311.P8654851672497494349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168330 (A276983 (n + 1)).toNat + A010330 (n + 1)

end

end A002311.P8654851672497494349

/-! ## A002311.P7196367646931811941

`A118824(A003215(n))+A010330(n+1)`
-/

namespace A002311.P7196367646931811941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118824 (A003215 n).toNat + A010330 (n + 1)

end

end A002311.P7196367646931811941

/-! ## A002311.P13590693149400368820

`A023444(A010330(n+1))`
-/

namespace A002311.P13590693149400368820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A010330 (n + 1)).toNat

end

end A002311.P13590693149400368820

/-!
# A002312: Arc-cotangent reducible numbers or non-Størmer numbers: largest prime factor of k^2 + 1 is less than 2*k.

The programs for A002312, there is no canonical definition to state claims against.
-/

/-! ## A002312.P12201464814083723501

`∪[A120416(n+1), A252496(n+1)]`
-/

namespace A002312.P12201464814083723501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A002312.P12201464814083723501

/-! ## A002312.P17308306916371057737

`∪[A252496(n+1), A256011(n+1)]`
-/

namespace A002312.P17308306916371057737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A002312.P17308306916371057737

/-! ## A002312.P93384270876894412

`lt[A281793(n), 2*n]`
-/

namespace A002312.P93384270876894412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281793 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A002312.P93384270876894412

/-! ## A002312.P7563620108605649247

`eq[0, A249066(n+1)]+1`
-/

namespace A002312.P7563620108605649247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249066 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A002312.P7563620108605649247

/-! ## A002312.P8522976676809133327

`lt[1, A242012(n+1)]+1`
-/

namespace A002312.P8522976676809133327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242012 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A002312.P8522976676809133327

/-! ## A002312.P17527189831066422405

`lt[1, A252890(n+1)]+1`
-/

namespace A002312.P17527189831066422405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252890 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A002312.P17527189831066422405

/-! ## A002312.P1322618378149194107

`lt[1, A242012(A028310(n))]`
-/

namespace A002312.P1322618378149194107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242012 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A002312.P1322618378149194107

/-! ## A002312.P9320331714715863896

`A262564(lt[1, A252890(n+1)])`
-/

namespace A002312.P9320331714715863896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262564 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A002312.P9320331714715863896

/-! ## A002312.P8059083094717991790

`eq[0, A249066(A000038(n)+n)]`
-/

namespace A002312.P8059083094717991790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249066 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002312.P8059083094717991790

/-! ## A002312.P2344627305541804841

`A184985(lt[A281793(n)-n, n])`
-/

namespace A002312.P2344627305541804841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281793 n - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184985 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A002312.P2344627305541804841

/-! ## A002312.P13339413389401809187

`A065475(lt[A014442(n+1), A065475(n+1)+n])`
-/

namespace A002312.P13339413389401809187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A002312.P13339413389401809187

/-! ## A002312.P1610688183413978701

`A262564(lt[A014442(n+1), A262564(n+1)+n])`
-/

namespace A002312.P1610688183413978701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262564 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262564 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A002312.P1610688183413978701

/-! ## A002312.P13648206887790329366

`lt[A014442(A028310(n)), A028310(2*n)]`
-/

namespace A002312.P13648206887790329366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A002312.P13648206887790329366

/-! ## A002312.P16493368234199864804

`eq[0, A249066(A233583(n+1))]`
-/

namespace A002312.P16493368234199864804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249066 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002312.P16493368234199864804

/-!
# A002313: Primes congruent to 1 or 2 modulo 4; or, primes of form x^2 + y^2; or, -1 is a square mod p.

The programs for A002313, the canonical program `A002313.P17357540179589081173` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002313 has offset 1).

The definition of A002313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002313.P17357540179589081173

`p?[or(2, 3*n)-1]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002313

/-- `p?[or(2, 3*n)-1]` -/
def P17357540179589081173.Spec : Prop :=
  ∀ n, P17357540179589081173.a n = A002313 (n + 1)

theorem P17357540179589081173.correct : P17357540179589081173.Spec := by
  intro n
  simp only [A002313, Nat.add_sub_cancel]

end A002313

/-! ## A002313.P9814133188434823149

`p?[ceil(2/acot(2*n))]`
-/

namespace A002313.P9814133188434823149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (2 * n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A002313.P9814133188434823149

namespace A002313

/-- `p?[ceil(2/acot(2*n))]` -/
def P9814133188434823149.Spec : Prop :=
  ∀ n, P9814133188434823149.a n = A002313 (n + 1)

end A002313

/-! ## A002313.P1663350393213498669

`p?[a(n-1)+4]` with `a(0)=2, a(1)=1`
-/

namespace A002313.P1663350393213498669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A002313.P1663350393213498669

namespace A002313

/-- `p?[a(n-1)+4]` -/
def P1663350393213498669.Spec : Prop :=
  ∀ n, (P1663350393213498669.a n : ℤ) = A002313 (n + 1)

end A002313

/-! ## A002313.P13903849103761127155

`floor(A294091(n+1)/2)`
-/

namespace A002313.P13903849103761127155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A294091 (n + 1) : ℚ) / 2⌋

end

end A002313.P13903849103761127155

namespace A002313

/-- `floor(A294091(n+1)/2)` -/
def P13903849103761127155.Spec : Prop :=
  ∀ n, P13903849103761127155.a n = A002313 (n + 1)

end A002313

/-! ## A002313.P6638496823069748389

`A280084(n+1)+A000007(n)`
-/

namespace A002313.P6638496823069748389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1) + A000007 n

end

end A002313.P6638496823069748389

namespace A002313

/-- `A280084(n+1)+A000007(n)` -/
def P6638496823069748389.Spec : Prop :=
  ∀ n, P6638496823069748389.a n = A002313 (n + 1)

end A002313

/-! ## A002313.P18257890658785436273

`A054977(n)*A280084(n+1)`
-/

namespace A002313.P18257890658785436273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A280084 (n + 1)

end

end A002313.P18257890658785436273

namespace A002313

/-- `A054977(n)*A280084(n+1)` -/
def P18257890658785436273.Spec : Prop :=
  ∀ n, P18257890658785436273.a n = A002313 (n + 1)

end A002313

/-! ## A002313.P493582750186512908

`∪[A002144(n+1), A061351(n)]`
-/

namespace A002313.P493582750186512908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061351 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A002313.P493582750186512908

namespace A002313

/-- `∪[A002144(n+1), A061351(n)]` -/
def P493582750186512908.Spec : Prop :=
  ∀ n, (P493582750186512908.a n : ℤ) = A002313 (n + 1)

end A002313

/-! ## A002313.P6698711177445305650

`A002331(n+1)²+A002330(n+1)²`
-/

namespace A002313.P6698711177445305650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002331 (n + 1) ^ 2 + A002330 (n + 1) ^ 2

end

end A002313.P6698711177445305650

namespace A002313

/-- `A002331(n+1)²+A002330(n+1)²` -/
def P6698711177445305650.Spec : Prop :=
  ∀ n, P6698711177445305650.a n = A002313 (n + 1)

end A002313

/-! ## A002313.P4391330055383755046

`A280084(n+1)+A008578(n+2)-A006005(n+1)`
-/

namespace A002313.P4391330055383755046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1) + (A008578 (n + 2) - A006005 (n + 1))

end

end A002313.P4391330055383755046

namespace A002313

/-- `A280084(n+1)+A008578(n+2)-A006005(n+1)` -/
def P4391330055383755046.Spec : Prop :=
  ∀ n, P4391330055383755046.a n = A002313 (n + 1)

end A002313

/-! ## A002313.P6276169622748964181

`p?[A055025(n+1)]`
-/

namespace A002313.P6276169622748964181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A002313.P6276169622748964181

namespace A002313

/-- `p?[A055025(n+1)]` -/
def P6276169622748964181.Spec : Prop :=
  ∀ n, P6276169622748964181.a n = A002313 (n + 1)

end A002313

/-! ## A002313.P17415684291728196535

`p?[∑[A185271(n+1)]+2-A185271(n+1)]`
-/

namespace A002313.P17415684291728196535
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185271 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (2 - A185271 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A002313.P17415684291728196535

namespace A002313

/-- `p?[∑[A185271(n+1)]+2-A185271(n+1)]` -/
def P17415684291728196535.Spec : Prop :=
  ∀ n, P17415684291728196535.a n = A002313 (n + 1)

end A002313

/-! ## A002313.P15907061088669853362

`A332806(A332807(A332807(2*n+1)))`
-/

namespace A002313.P15907061088669853362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332806 (A332807 (A332807 (2 * n + 1)).toNat).toNat

end

end A002313.P15907061088669853362

namespace A002313

/-- `A332806(A332807(A332807(2*n+1)))` -/
def P15907061088669853362.Spec : Prop :=
  ∀ n, P15907061088669853362.a n = A002313 (n + 1)

end A002313

/-! ## A002313.P6058215261529295750

`p?[lcm(2, 1-n)+n]`
-/

namespace A002313.P6058215261529295750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (1 - (n : ℤ)) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A002313.P6058215261529295750

namespace A002313

/-- `p?[lcm(2, 1-n)+n]` -/
def P6058215261529295750.Spec : Prop :=
  ∀ n, (P6058215261529295750.a n : ℤ) = A002313 (n + 1)

end A002313

/-! ## A002313.P17006878876271351813

`p?[n*gcd(2, n)+1]`
-/

namespace A002313.P17006878876271351813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A002313.P17006878876271351813

namespace A002313

/-- `p?[n*gcd(2, n)+1]` -/
def P17006878876271351813.Spec : Prop :=
  ∀ n, (P17006878876271351813.a n : ℤ) = A002313 (n + 1)

end A002313

/-! ## A002313.P5132065959879476253

`p?[n-or(1, 3-n)]`
-/

namespace A002313.P5132065959879476253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.lor 1 (3 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A002313.P5132065959879476253

namespace A002313

/-- `p?[n-or(1, 3-n)]` -/
def P5132065959879476253.Spec : Prop :=
  ∀ n, P5132065959879476253.a n = A002313 (n + 1)

end A002313

/-! ## A002313.P10689712906675136332

`p?[and(n, n-1)+n]`
-/

namespace A002313.P10689712906675136332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A002313.P10689712906675136332

namespace A002313

/-- `p?[and(n, n-1)+n]` -/
def P10689712906675136332.Spec : Prop :=
  ∀ n, P10689712906675136332.a n = A002313 (n + 1)

end A002313

/-! ## A002313.P4913062778300790985

`p?[(n+1)%2+2*n]`
-/

namespace A002313.P4913062778300790985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2 + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A002313.P4913062778300790985

namespace A002313

/-- `p?[(n+1)%2+2*n]` -/
def P4913062778300790985.Spec : Prop :=
  ∀ n, (P4913062778300790985.a n : ℤ) = A002313 (n + 1)

end A002313

/-! ## A002313.P259664371949052485

`p?[xor(2*n, and(1, n+1))]`
-/

namespace A002313.P259664371949052485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * n) (Nat.land 1 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A002313.P259664371949052485

namespace A002313

/-- `p?[xor(2*n, and(1, n+1))]` -/
def P259664371949052485.Spec : Prop :=
  ∀ n, (P259664371949052485.a n : ℤ) = A002313 (n + 1)

end A002313

/-! ## A002313.P6751314094220200139

`p?[∪[2*n+2*n+1, 2*n]]`
-/

namespace A002313.P6751314094220200139
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (2 * n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A002313.P6751314094220200139

namespace A002313

/-- `p?[∪[2*n+2*n+1, 2*n]]` -/
def P6751314094220200139.Spec : Prop :=
  ∀ n, (P6751314094220200139.a n : ℤ) = A002313 (n + 1)

end A002313

/-!
# A002314: Minimal integer square root of -1 modulo p, where p is the n-th prime of the form 4k+1.

The programs for A002314, there is no canonical definition to state claims against.
-/

/-! ## A002314.P6088127233787280337

`A002144(n+1)-A152676(n+1)`
-/

namespace A002314.P6088127233787280337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) - A152676 (n + 1)

end

end A002314.P6088127233787280337

/-! ## A002314.P15206427139770923706

`A055131(n)/3-A152676(n+1)`
-/

namespace A002314.P15206427139770923706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055131 n : ℚ) / 3 - (A152676 (n + 1) : ℚ)

end

end A002314.P15206427139770923706

/-! ## A002314.P2706507683208008155

`sqrt(A080109(n+1))-A152676(n+1)`
-/

namespace A002314.P2706507683208008155
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A080109 (n + 1) : ℝ) - (A152676 (n + 1) : ℝ)

end

end A002314.P2706507683208008155

/-! ## A002314.P14753555615388719999

`A152680(n+1)+1-A152676(n+1)`
-/

namespace A002314.P14753555615388719999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152680 (n + 1) + (1 - A152676 (n + 1))

end

end A002314.P14753555615388719999

/-! ## A002314.P5507132061695285064

`4*A005098(n+1)+1-A152676(n+1)`
-/

namespace A002314.P5507132061695285064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A005098 (n + 1) + 1 - A152676 (n + 1)

end

end A002314.P5507132061695285064

/-! ## A002314.P14797819532914437218

`gcd(A048628(n+1), A055131(n))-A152676(n+1)`
-/

namespace A002314.P14797819532914437218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A048628 (n + 1)) (A055131 n) : ℤ) - A152676 (n + 1)

end

end A002314.P14797819532914437218

/-! ## A002314.P11930726265945403476

`A002145(n+1)+A102261(n+1)-A152676(n+1)`
-/

namespace A002314.P11930726265945403476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1) + (A102261 (n + 1) - A152676 (n + 1))

end

end A002314.P11930726265945403476

/-! ## A002314.P9393394118566804506

`A002313(n+2)-A152676(n+1)`
-/

namespace A002314.P9393394118566804506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2) - A152676 (n + 1)

end

end A002314.P9393394118566804506

/-! ## A002314.P5824670699645486850

`A280084(n+2)-A152676(n+1)`
-/

namespace A002314.P5824670699645486850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 2) - A152676 (n + 1)

end

end A002314.P5824670699645486850

/-! ## A002314.P16053277876172664067

`(A002313(n+2)%A152676(n+1))%A002145(n+1)`
-/

namespace A002314.P16053277876172664067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A002313 (n + 2)) (A152676 (n + 1))) (A002145 (n + 1))

end

end A002314.P16053277876172664067

/-! ## A002314.P9182758696149125151

`A070669(A002144(n+1))`
-/

namespace A002314.P9182758696149125151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070669 (A002144 (n + 1)).toNat

end

end A002314.P9182758696149125151

/-! ## A002314.P5096665896805108716

`A070669(A002313(n+2))`
-/

namespace A002314.P5096665896805108716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070669 (A002313 (n + 2)).toNat

end

end A002314.P5096665896805108716

/-! ## A002314.P1677186583038029835

`A070669(A280084(n+2))`
-/

namespace A002314.P1677186583038029835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070669 (A280084 (n + 2)).toNat

end

end A002314.P1677186583038029835

/-! ## A002314.P8214829689326540456

`A070669(p?[A131452(n+2)])`
-/

namespace A002314.P8214829689326540456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131452 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070669 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A002314.P8214829689326540456

/-! ## A002314.P335772938939460755

`A070669(p?[A103832(2*n)])`
-/

namespace A002314.P335772938939460755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103832 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070669 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A002314.P335772938939460755

/-! ## A002314.P2161394311110608468

`A070669(2*A104636(n+1)+1)`
-/

namespace A002314.P2161394311110608468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070669 (2 * A104636 (n + 1) + 1).toNat

end

end A002314.P2161394311110608468

/-! ## A002314.P10054613468339975542

`A070669(A104636(n+1)+A104636(n+1)+1)`
-/

namespace A002314.P10054613468339975542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070669 (A104636 (n + 1) + (A104636 (n + 1) + 1)).toNat

end

end A002314.P10054613468339975542

/-!
# A002315: NSW numbers: a(n) = 6*a(n-1) - a(n-2); also a(n)^2 - 2*b(n)^2 = -1 with b(n) = A001653(n+1).

The programs for A002315, the canonical program `A002315.P5084403563182278193` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002315 has offset 0).

The definition of A002315 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-a(n-2)` (program `A002315.P5084403563182278193`, by `A002315.P5084403563182278193.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002315.P5084403563182278193

`6*a(n-1)-a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002315

/-- `6*a(n-1)-a(n-2)` -/
def P5084403563182278193.Spec : Prop :=
  ∀ n, P5084403563182278193.a n = A002315 n

theorem P5084403563182278193.correct : P5084403563182278193.Spec := by
  intro n
  simp only [A002315]

end A002315

/-! ## A002315.P7075418996281718503

`A001333(2*n+1)`
-/

namespace A002315.P7075418996281718503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (2 * n + 1)

end

end A002315.P7075418996281718503

namespace A002315

/-- `A001333(2*n+1)` -/
def P7075418996281718503.Spec : Prop :=
  ∀ n, P7075418996281718503.a n = A002315 n

end A002315

/-! ## A002315.P15054138211716987857

`2*A001652(n)+1`
-/

namespace A002315.P15054138211716987857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001652 n + 1

end

end A002315.P15054138211716987857

namespace A002315

/-- `2*A001652(n)+1` -/
def P15054138211716987857.Spec : Prop :=
  ∀ n, P15054138211716987857.a n = A002315 n

end A002315

/-! ## A002315.P583294669612945209

`2*A046090(n)-1`
-/

namespace A002315.P583294669612945209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046090 n - 1

end

end A002315.P583294669612945209

namespace A002315

/-- `2*A046090(n)-1` -/
def P583294669612945209.Spec : Prop :=
  ∀ n, P583294669612945209.a n = A002315 n

end A002315

/-! ## A002315.P9680243731451500262

`A077444(n+1)/2`
-/

namespace A002315.P9680243731451500262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077444 (n + 1) : ℚ) / 2

end

end A002315.P9680243731451500262

namespace A002315

/-- `A077444(n+1)/2` -/
def P9680243731451500262.Spec : Prop :=
  ∀ n, P9680243731451500262.a n = (A002315 n : ℚ)

end A002315

/-! ## A002315.P9390850363343287883

`a(n-1)+A003499(n)` with `a(0)=1`
-/

namespace A002315.P9390850363343287883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A003499 n

end

end A002315.P9390850363343287883

namespace A002315

/-- `a(n-1)+A003499(n)` -/
def P9390850363343287883.Spec : Prop :=
  ∀ n, P9390850363343287883.a n = A002315 n

end A002315

/-! ## A002315.P8048843455911417276

`2*A046729(n)+(-1)^n`
-/

namespace A002315.P8048843455911417276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046729 n + (-1) ^ n

end

end A002315.P8048843455911417276

namespace A002315

/-- `2*A046729(n)+(-1)^n` -/
def P8048843455911417276.Spec : Prop :=
  ∀ n, P8048843455911417276.a n = A002315 n

end A002315

/-! ## A002315.P10067212668846247655

`A001652(n)+A046090(n)`
-/

namespace A002315.P10067212668846247655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001652 n + A046090 n

end

end A002315.P10067212668846247655

namespace A002315

/-- `A001652(n)+A046090(n)` -/
def P10067212668846247655.Spec : Prop :=
  ∀ n, P10067212668846247655.a n = A002315 n

end A002315

/-! ## A002315.P14070014704460018733

`A001109(n)+A001109(n+1)`
-/

namespace A002315.P14070014704460018733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n + A001109 (n + 1)

end

end A002315.P14070014704460018733

namespace A002315

/-- `A001109(n)+A001109(n+1)` -/
def P14070014704460018733.Spec : Prop :=
  ∀ n, P14070014704460018733.a n = A002315 n

end A002315

/-! ## A002315.P7968793127251860266

`A001541(n)+2*A001542(n)`
-/

namespace A002315.P7968793127251860266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 n + 2 * A001542 n

end

end A002315.P7968793127251860266

namespace A002315

/-- `A001541(n)+2*A001542(n)` -/
def P7968793127251860266.Spec : Prop :=
  ∀ n, P7968793127251860266.a n = A002315 n

end A002315

/-!
# A002316: Related to Bernoulli numbers.

The programs for A002316, the canonical program `A002316.P12039242515376573810` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002316 has offset 0).

The definition of A002316 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002316.P12039242515376573810

`6*a(n-1)-11*a(n-2)-6*a(n-3)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=26, a(3)=97`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002316

/-- `6*a(n-1)-11*a(n-2)-6*a(n-3)-a(n-4)` -/
def P12039242515376573810.Spec : Prop :=
  ∀ n, P12039242515376573810.a n = A002316 n

theorem P12039242515376573810.correct : P12039242515376573810.Spec := by
  intro n
  simp only [A002316]

end A002316

/-! ## A002316.P18146642815352280262

`(-1)^n*A131039(2*n)`
-/

namespace A002316.P18146642815352280262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A131039 (2 * n)

end

end A002316.P18146642815352280262

namespace A002316

/-- `(-1)^n*A131039(2*n)` -/
def P18146642815352280262.Spec : Prop :=
  ∀ n, P18146642815352280262.a n = A002316 n

end A002316

/-! ## A002316.P13306259735464026755

`-A033999(n+1)*A131039(2*n)`
-/

namespace A002316.P13306259735464026755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A033999 (n + 1) * A131039 (2 * n))

end

end A002316.P13306259735464026755

namespace A002316

/-- `-A033999(n+1)*A131039(2*n)` -/
def P13306259735464026755.Spec : Prop :=
  ∀ n, P13306259735464026755.a n = A002316 n

end A002316

/-! ## A002316.P1454557816430961430

`A131039(A005843(n))/A033999(n)`
-/

namespace A002316.P1454557816430961430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131039 (A005843 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A002316.P1454557816430961430

namespace A002316

/-- `A131039(A005843(n))/A033999(n)` -/
def P1454557816430961430.Spec : Prop :=
  ∀ n, P1454557816430961430.a n = (A002316 n : ℚ)

end A002316

/-! ## A002316.P3134298539663336251

`A033999(n)*A131039(2*n)*A057427(2*n+3)`
-/

namespace A002316.P3134298539663336251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A131039 (2 * n) * A057427 (2 * n + 3)

end

end A002316.P3134298539663336251

namespace A002316

/-- `A033999(n)*A131039(2*n)*A057427(2*n+3)` -/
def P3134298539663336251.Spec : Prop :=
  ∀ n, P3134298539663336251.a n = A002316 n

end A002316

/-!
# A002317: Related to Genocchi numbers.

The programs for A002317, there is no canonical definition to state claims against.
-/

/-! ## A002317.P13781806506204411444

`∑[A260343(2*n+1)]-∑[floor(7^(n-1))]`
-/

namespace A002317.P13781806506204411444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260343 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(7 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A002317.P13781806506204411444

/-!
# A002318: Expansion of (1/theta_4(q)^2 -1)/4 in powers of q.

The programs for A002318, there is no canonical definition to state claims against.
-/

/-! ## A002318.P7416624645422029073

`A001934(n+1)/4`
-/

namespace A002318.P7416624645422029073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001934 (n + 1) : ℚ) / 4

end

end A002318.P7416624645422029073

/-! ## A002318.P7574309332821397656

`abs(A004403(n+1)/4)`
-/

namespace A002318.P7574309332821397656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A004403 (n + 1) : ℚ) / 4|

end

end A002318.P7574309332821397656

/-! ## A002318.P11871534824907769162

`Δ[∑[A001934(n)/2]/2]`
-/

namespace A002318.P11871534824907769162
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001934 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002318.P11871534824907769162

/-! ## A002318.P5684516530643219556

`A288515(A155212(n)+5)/4`
-/

namespace A002318.P5684516530643219556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288515 (A155212 n + 5).toNat : ℚ) / 4

end

end A002318.P5684516530643219556

/-! ## A002318.P16824943570340677548

`A288515(A167614(n+1)+A005408(n))/4`
-/

namespace A002318.P16824943570340677548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288515 (A167614 (n + 1) + A005408 n).toNat : ℚ) / 4

end

end A002318.P16824943570340677548

/-!
# A002319: Order of largest (finite) group with n conjugacy classes.

The programs for A002319, there is no canonical definition to state claims against.
-/

/-! ## A002319.P11868910131375521436

`record[A014963(A056610(n+1))*A045948(n+1)]`
-/

namespace A002319.P11868910131375521436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A056610 (n + 1)).toNat * A045948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002319.P11868910131375521436

/-! ## A002319.P4781681758806969888

`A273691(a(n-3))` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A002319.P4781681758806969888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  A273691 (a (n - 3)).toNat

end

end A002319.P4781681758806969888

/-! ## A002319.P3969688771419402199

`A008480(∏[Δ[A303431(2*n+3)]])`
-/

namespace A002319.P3969688771419402199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303431 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A002319.P3969688771419402199

/-!
# A002320: a(n) = 5*a(n-1) - a(n-2).

The programs for A002320, the canonical program `A002320.P8791001297357457200` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002320 has offset 0).

The definition of A002320 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)-a(n-2)` (program `A002320.P8791001297357457200`, by `A002320.P8791001297357457200.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002320.P8791001297357457200

`5*a(n-1)-a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002320

/-- `5*a(n-1)-a(n-2)` -/
def P8791001297357457200.Spec : Prop :=
  ∀ n, P8791001297357457200.a n = A002320 n

theorem P8791001297357457200.correct : P8791001297357457200.Spec := by
  intro n
  simp only [A002320]

end A002320

/-! ## A002320.P10157348666491739235

`lcm(5, a(n-1))-a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A002320.P10157348666491739235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (Int.lcm 5 (a (n - 1)) : ℤ) - a (n - 2)

end

end A002320.P10157348666491739235

namespace A002320

/-- `lcm(5, a(n-1))-a(n-2)` -/
def P10157348666491739235.Spec : Prop :=
  ∀ n, P10157348666491739235.a n = A002320 n

end A002320

/-! ## A002320.P14872746188587361381

`A237254(Δ[n²])`
-/

namespace A002320.P14872746188587361381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237254 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A002320.P14872746188587361381

namespace A002320

/-- `A237254(Δ[n²])` -/
def P14872746188587361381.Spec : Prop :=
  ∀ n, P14872746188587361381.a n = A002320 n

end A002320

/-! ## A002320.P14231656529967529295

`A217787(3*n+2)`
-/

namespace A002320.P14231656529967529295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217787 (3 * n + 2)

end

end A002320.P14231656529967529295

namespace A002320

/-- `A217787(3*n+2)` -/
def P14231656529967529295.Spec : Prop :=
  ∀ n, P14231656529967529295.a n = A002320 n

end A002320

/-! ## A002320.P11226040605594554956

`record[(-1)^n*A237254(n+1)]`
-/

namespace A002320.P11226040605594554956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A237254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002320.P11226040605594554956

namespace A002320

/-- `record[(-1)^n*A237254(n+1)]` -/
def P11226040605594554956.Spec : Prop :=
  ∀ n, P11226040605594554956.a n = A002320 n

end A002320

/-! ## A002320.P4007226607860927204

`A004254(n)+A002310(n)`
-/

namespace A002320.P4007226607860927204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004254 n + A002310 n

end

end A002320.P4007226607860927204

namespace A002320

/-- `A004254(n)+A002310(n)` -/
def P4007226607860927204.Spec : Prop :=
  ∀ n, P4007226607860927204.a n = A002320 n

end A002320

/-! ## A002320.P4041864201851039312

`A004253(n+1)-A004254(n)`
-/

namespace A002320.P4041864201851039312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004253 (n + 1) - A004254 n

end

end A002320.P4041864201851039312

namespace A002320

/-- `A004253(n+1)-A004254(n)` -/
def P4041864201851039312.Spec : Prop :=
  ∀ n, P4041864201851039312.a n = A002320 n

end A002320

/-! ## A002320.P3534713924907585601

`A136210(2*n+1)-A004254(n)`
-/

namespace A002320.P3534713924907585601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136210 (2 * n + 1) - A004254 n

end

end A002320.P3534713924907585601

namespace A002320

/-- `A136210(2*n+1)-A004254(n)` -/
def P3534713924907585601.Spec : Prop :=
  ∀ n, P3534713924907585601.a n = A002320 n

end A002320

/-! ## A002320.P14552259561405437211

`A002310(n)+Δ[A101368(n+1)/2]`
-/

namespace A002320.P14552259561405437211
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101368 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002310 n : ℚ) + (f1 (n + 1) - f1 n)

end

end A002320.P14552259561405437211

namespace A002320

/-- `A002310(n)+Δ[A101368(n+1)/2]` -/
def P14552259561405437211.Spec : Prop :=
  ∀ n, P14552259561405437211.a n = (A002320 n : ℚ)

end A002320

/-! ## A002320.P3678951406110424156

`A107402(2*n+1)+A107402(2*n)`
-/

namespace A002320.P3678951406110424156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107402 (2 * n + 1) + A107402 (2 * n)

end

end A002320.P3678951406110424156

namespace A002320

/-- `A107402(2*n+1)+A107402(2*n)` -/
def P3678951406110424156.Spec : Prop :=
  ∀ n, P3678951406110424156.a n = A002320 n

end A002320

/-! ## A002320.P5397967408706549741

`2*A002310(n)-A217787(A008486(n))`
-/

namespace A002320.P5397967408706549741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002310 n - A217787 (A008486 n).toNat

end

end A002320.P5397967408706549741

namespace A002320

/-- `2*A002310(n)-A217787(A008486(n))` -/
def P5397967408706549741.Spec : Prop :=
  ∀ n, P5397967408706549741.a n = A002320 n

end A002320

/-! ## A002320.P471182186385031598

`2*A002310(n)-A217787(A008585(n))`
-/

namespace A002320.P471182186385031598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002310 n - A217787 (A008585 n).toNat

end

end A002320.P471182186385031598

namespace A002320

/-- `2*A002310(n)-A217787(A008585(n))` -/
def P471182186385031598.Spec : Prop :=
  ∀ n, P471182186385031598.a n = A002320 n

end A002320

/-! ## A002320.P16460583177461872083

`A101368(n+1)+A004254(n)+∑[A004254(n)]`
-/

namespace A002320.P16460583177461872083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101368 (n + 1) + (A004254 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002320.P16460583177461872083

namespace A002320

/-- `A101368(n+1)+A004254(n)+∑[A004254(n)]` -/
def P16460583177461872083.Spec : Prop :=
  ∀ n, P16460583177461872083.a n = A002320 n

end A002320

/-! ## A002320.P14214927105839697771

`A003501(n)-A002310(n)`
-/

namespace A002320.P14214927105839697771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003501 n - A002310 n

end

end A002320.P14214927105839697771

namespace A002320

/-- `A003501(n)-A002310(n)` -/
def P14214927105839697771.Spec : Prop :=
  ∀ n, P14214927105839697771.a n = A002320 n

end A002320

/-! ## A002320.P5783259739904366126

`(A004254(n)+A003501(n))/2`
-/

namespace A002320.P5783259739904366126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004254 n + A003501 n : ℚ) / 2

end

end A002320.P5783259739904366126

namespace A002320

/-- `(A004254(n)+A003501(n))/2` -/
def P5783259739904366126.Spec : Prop :=
  ∀ n, P5783259739904366126.a n = (A002320 n : ℚ)

end A002320

/-! ## A002320.P3083080181249741466

`A290902(n)-2*A030221(n)`
-/

namespace A002320.P3083080181249741466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290902 n - 2 * A030221 n

end

end A002320.P3083080181249741466

namespace A002320

/-- `A290902(n)-2*A030221(n)` -/
def P3083080181249741466.Spec : Prop :=
  ∀ n, P3083080181249741466.a n = A002320 n

end A002320

/-! ## A002320.P3800215076014310988

`(A290902(n)-A099867(n))/2`
-/

namespace A002320.P3800215076014310988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290902 n - A099867 n : ℚ) / 2

end

end A002320.P3800215076014310988

namespace A002320

/-- `(A290902(n)-A099867(n))/2` -/
def P3800215076014310988.Spec : Prop :=
  ∀ n, P3800215076014310988.a n = (A002320 n : ℚ)

end A002320

/-! ## A002320.P1918263717234611321

`Δ[A101368(n+2)-A002310(n)]`
-/

namespace A002320.P1918263717234611321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101368 (n + 2) - A002310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002320.P1918263717234611321

namespace A002320

/-- `Δ[A101368(n+2)-A002310(n)]` -/
def P1918263717234611321.Spec : Prop :=
  ∀ n, P1918263717234611321.a n = A002320 n

end A002320

/-! ## A002320.P14338851901780171749

`(A004253(n+1)+A002310(n))/2`
-/

namespace A002320.P14338851901780171749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004253 (n + 1) + A002310 n : ℚ) / 2

end

end A002320.P14338851901780171749

namespace A002320

/-- `(A004253(n+1)+A002310(n))/2` -/
def P14338851901780171749.Spec : Prop :=
  ∀ n, P14338851901780171749.a n = (A002320 n : ℚ)

end A002320

/-!
# A002321: Mertens's function: Sum_{k=1..n} mu(k), where mu is the Moebius function A008683.

The programs for A002321, the canonical program `A002321.P574617781515155943` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002321 has offset 1).

The definition of A002321 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002321.P574617781515155943

`∑[round(∏{p}[n+1, -#]/Δ[n²])]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002321

/-- `∑[round(∏{p}[n+1, -#]/Δ[n²])]` -/
def P574617781515155943.Spec : Prop :=
  ∀ n, P574617781515155943.a n = A002321 (n + 1)

theorem P574617781515155943.correct : P574617781515155943.Spec := by
  intro n
  simp only [A002321, Nat.add_sub_cancel]

end A002321

/-! ## A002321.P12812745268096594380

`1-∑[round(-∏{p}[n+1, -#]/(n+3))]`
-/

namespace A002321.P12812745268096594380
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (-(((∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ)) : ℤ) : ℚ) / (n + 3 : ℚ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002321.P12812745268096594380

namespace A002321

/-- `1-∑[round(-∏{p}[n+1, -#]/(n+3))]` -/
def P12812745268096594380.Spec : Prop :=
  ∀ n, P12812745268096594380.a n = A002321 (n + 1)

end A002321

/-! ## A002321.P6274071396422560498

`∑[A008683(n+1)]`
-/

namespace A002321.P6274071396422560498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002321.P6274071396422560498

namespace A002321

/-- `∑[A008683(n+1)]` -/
def P6274071396422560498.Spec : Prop :=
  ∀ n, P6274071396422560498.a n = A002321 (n + 1)

end A002321

/-! ## A002321.P4122652094157274117

`∑[A007423(n+1)-1]`
-/

namespace A002321.P4122652094157274117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002321.P4122652094157274117

namespace A002321

/-- `∑[A007423(n+1)-1]` -/
def P4122652094157274117.Spec : Prop :=
  ∀ n, P4122652094157274117.a n = A002321 (n + 1)

end A002321

/-! ## A002321.P15954663463868076793

`1-∑[A157658(n+1)]`
-/

namespace A002321.P15954663463868076793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002321.P15954663463868076793

namespace A002321

/-- `1-∑[A157658(n+1)]` -/
def P15954663463868076793.Spec : Prop :=
  ∀ n, P15954663463868076793.a n = A002321 (n + 1)

end A002321

/-! ## A002321.P1042191608740199289

`∑[A080847(n+1)-2]`
-/

namespace A002321.P1042191608740199289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080847 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002321.P1042191608740199289

namespace A002321

/-- `∑[A080847(n+1)-2]` -/
def P1042191608740199289.Spec : Prop :=
  ∀ n, P1042191608740199289.a n = A002321 (n + 1)

end A002321

/-! ## A002321.P13117123917608481144

`∑[2-A129979(n+1)]`
-/

namespace A002321.P13117123917608481144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A129979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002321.P13117123917608481144

namespace A002321

/-- `∑[2-A129979(n+1)]` -/
def P13117123917608481144.Spec : Prop :=
  ∀ n, P13117123917608481144.a n = A002321 (n + 1)

end A002321

/-! ## A002321.P5078658890460483271

`2-∑[A157657(n+1)]`
-/

namespace A002321.P5078658890460483271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002321.P5078658890460483271

namespace A002321

/-- `2-∑[A157657(n+1)]` -/
def P5078658890460483271.Spec : Prop :=
  ∀ n, P5078658890460483271.a n = A002321 (n + 1)

end A002321

/-! ## A002321.P8446954702103864817

`∑[A231821(n+1)-3]`
-/

namespace A002321.P8446954702103864817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231821 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002321.P8446954702103864817

namespace A002321

/-- `∑[A231821(n+1)-3]` -/
def P8446954702103864817.Spec : Prop :=
  ∀ n, P8446954702103864817.a n = A002321 (n + 1)

end A002321

/-! ## A002321.P18136309255034213208

`∑[A162512(n+1)%2]`
-/

namespace A002321.P18136309255034213208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162512 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002321.P18136309255034213208

namespace A002321

/-- `∑[A162512(n+1)%2]` -/
def P18136309255034213208.Spec : Prop :=
  ∀ n, P18136309255034213208.a n = A002321 (n + 1)

end A002321

/-! ## A002321.P13774306837502156167

`A143443(n+1)/(n+1)`
-/

namespace A002321.P13774306837502156167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143443 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A002321.P13774306837502156167

namespace A002321

/-- `A143443(n+1)/(n+1)` -/
def P13774306837502156167.Spec : Prop :=
  ∀ n, P13774306837502156167.a n = (A002321 (n + 1) : ℚ)

end A002321

/-! ## A002321.P10303229255398833574

`∑[floor(A262804(n+1)/2)]`
-/

namespace A002321.P10303229255398833574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A262804 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002321.P10303229255398833574

namespace A002321

/-- `∑[floor(A262804(n+1)/2)]` -/
def P10303229255398833574.Spec : Prop :=
  ∀ n, P10303229255398833574.a n = A002321 (n + 1)

end A002321

/-! ## A002321.P13468263723212045368

`∑[A076369(n+1)-(n+1)]`
-/

namespace A002321.P13468263723212045368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076369 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002321.P13468263723212045368

namespace A002321

/-- `∑[A076369(n+1)-(n+1)]` -/
def P13468263723212045368.Spec : Prop :=
  ∀ n, P13468263723212045368.a n = A002321 (n + 1)

end A002321

/-! ## A002321.P17203213852083083911

`∑[A055615(n+1)/(n+1)]`
-/

namespace A002321.P17203213852083083911
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055615 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002321.P17203213852083083911

namespace A002321

/-- `∑[A055615(n+1)/(n+1)]` -/
def P17203213852083083911.Spec : Prop :=
  ∀ n, P17203213852083083911.a n = (A002321 (n + 1) : ℚ)

end A002321

/-! ## A002321.P14360475836104112715

`∑[A008683(comp[2*n]-n)%2]`
-/

namespace A002321.P14360475836104112715
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008683 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n - n)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002321.P14360475836104112715

namespace A002321

/-- `∑[A008683(comp[2*n]-n)%2]` -/
def P14360475836104112715.Spec : Prop :=
  ∀ n, P14360475836104112715.a n = A002321 (n + 1)

end A002321

/-! ## A002321.P5363473497688648118

`∑[A008683(2*n-(n-1))^3]`
-/

namespace A002321.P5363473497688648118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002321.P5363473497688648118

namespace A002321

/-- `∑[A008683(2*n-(n-1))^3]` -/
def P5363473497688648118.Spec : Prop :=
  ∀ n, P5363473497688648118.a n = A002321 (n + 1)

end A002321

/-! ## A002321.P2215915432704213036

`A008683(C(n+1, n))+a(n-1)` with `a(0)=1`
-/

namespace A002321.P2215915432704213036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008683 (Nat.choose (n + 1) n) + a (n - 1)

end

end A002321.P2215915432704213036

namespace A002321

/-- `A008683(C(n+1, n))+a(n-1)` -/
def P2215915432704213036.Spec : Prop :=
  ∀ n, P2215915432704213036.a n = A002321 (n + 1)

end A002321

/-! ## A002321.P9985002534173182269

`A008683(Δ[n²]-n)+a(n-1)` with `a(0)=1`
-/

namespace A002321.P9985002534173182269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008683 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat + a (n - 1)

end

end A002321.P9985002534173182269

namespace A002321

/-- `A008683(Δ[n²]-n)+a(n-1)` -/
def P9985002534173182269.Spec : Prop :=
  ∀ n, P9985002534173182269.a n = A002321 (n + 1)

end A002321

/-! ## A002321.P14464624328438405431

`∑[A004718(A074823(n+1))]`
-/

namespace A002321.P14464624328438405431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A074823 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002321.P14464624328438405431

namespace A002321

/-- `∑[A004718(A074823(n+1))]` -/
def P14464624328438405431.Spec : Prop :=
  ∀ n, P14464624328438405431.a n = A002321 (n + 1)

end A002321

/-! ## A002321.P11213826736550233561

`∑[A154271(A145501(n+1))]`
-/

namespace A002321.P11213826736550233561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154271 (A145501 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002321.P11213826736550233561

namespace A002321

/-- `∑[A154271(A145501(n+1))]` -/
def P11213826736550233561.Spec : Prop :=
  ∀ n, P11213826736550233561.a n = A002321 (n + 1)

end A002321

/-!
# A002322: Reduced totient function psi(n): least k such that x^k == 1 (mod n) for all x prime to n; also known as the Carmichael lambda function (exponent of unit group mod n); also called the universal exponent of n.

The programs for A002322, there is no canonical definition to state claims against.
-/

/-! ## A002322.P12924696280919840648

`A263027(n+1)-1`
-/

namespace A002322.P12924696280919840648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263027 (n + 1) - 1

end

end A002322.P12924696280919840648

/-! ## A002322.P13001465005036765628

`∑{d}[n+1, A369700(#)]`
-/

namespace A002322.P13001465005036765628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A369700 d

end

end A002322.P13001465005036765628

/-! ## A002322.P7920352942829998201

`1-A277127(n+1)+n`
-/

namespace A002322.P7920352942829998201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A277127 (n + 1) + (n : ℤ)

end

end A002322.P7920352942829998201

/-! ## A002322.P5173880927595754402

`A023443(A263027(n+1))`
-/

namespace A002322.P5173880927595754402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A263027 (n + 1)).toNat

end

end A002322.P5173880927595754402

/-! ## A002322.P13864111668909953131

`A000010(n+1)-A104194(n+1)`
-/

namespace A002322.P13864111668909953131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A104194 (n + 1)

end

end A002322.P13864111668909953131

/-! ## A002322.P839252581407527113

`A000040(n+1)-A104193(n+1)`
-/

namespace A002322.P839252581407527113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A104193 (n + 1)

end

end A002322.P839252581407527113

/-! ## A002322.P17656078002287910882

`A134198(n+1)-A051903(n+1)`
-/

namespace A002322.P17656078002287910882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134198 (n + 1) - A051903 (n + 1)

end

end A002322.P17656078002287910882

/-! ## A002322.P2922289916280843974

`A104192(n+1)-A104195(n+1)`
-/

namespace A002322.P2922289916280843974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104192 (n + 1) - A104195 (n + 1)

end

end A002322.P2922289916280843974

/-! ## A002322.P16841976112505304248

`A000010(n+1)/A034380(n+1)`
-/

namespace A002322.P16841976112505304248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A034380 (n + 1) : ℚ)

end

end A002322.P16841976112505304248

/-! ## A002322.P12715634017895639231

`A007434(n+1)/A220345(n+1)`
-/

namespace A002322.P12715634017895639231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007434 (n + 1) : ℚ) / (A220345 (n + 1) : ℚ)

end

end A002322.P12715634017895639231

/-! ## A002322.P13599086879636515231

`gcd(A011773(n+1), A104194(n+1))`
-/

namespace A002322.P13599086879636515231
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A011773 (n + 1)) (A104194 (n + 1))

end

end A002322.P13599086879636515231

/-! ## A002322.P6831021678277302131

`A008864(n+1)-(A104193(n+1)+1)`
-/

namespace A002322.P6831021678277302131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - (A104193 (n + 1) + 1)

end

end A002322.P6831021678277302131

/-! ## A002322.P13803840329593629061

`A039649(n+1)-(A104194(n+1)+1)`
-/

namespace A002322.P13803840329593629061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - (A104194 (n + 1) + 1)

end

end A002322.P13803840329593629061

/-! ## A002322.P3346492907915667524

`(A109606(n+1)+1)/A034380(n+1)`
-/

namespace A002322.P3346492907915667524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1 : ℚ) / (A034380 (n + 1) : ℚ)

end

end A002322.P3346492907915667524

/-! ## A002322.P13511497119631449680

`(A039649(n+1)-1)/A034380(n+1)`
-/

namespace A002322.P13511497119631449680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039649 (n + 1) - 1 : ℚ) / (A034380 (n + 1) : ℚ)

end

end A002322.P13511497119631449680

/-! ## A002322.P4005767830849676705

`(n-A219428(n+1))/A034380(n+1)`
-/

namespace A002322.P4005767830849676705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A219428 (n + 1) : ℚ) / (A034380 (n + 1) : ℚ)

end

end A002322.P4005767830849676705

/-! ## A002322.P5785647595032065039

`(1-A051953(n+1)+n)/A034380(n+1)`
-/

namespace A002322.P5785647595032065039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A051953 (n + 1) + (n : ℤ) : ℚ) / (A034380 (n + 1) : ℚ)

end

end A002322.P5785647595032065039

/-! ## A002322.P14428054802842849791

`∑{d}[n+1, A008683(#)*A141258((n+1)/#)]`
-/

namespace A002322.P14428054802842849791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A141258 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A002322.P14428054802842849791

/-! ## A002322.P8531883786283335017

`∑{d}[n+1, A055615(#)*A331314((n+1)/#)]`
-/

namespace A002322.P8531883786283335017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A331314 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A002322.P8531883786283335017

/-! ## A002322.P9606317771046220510

`∑{d}[n+1, A023900(#)*A369601((n+1)/#)]`
-/

namespace A002322.P9606317771046220510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A369601 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A002322.P9606317771046220510

/-!
# A002323: ((2^m - 1) / p) mod p, where p = prime(n) and m = ord(2,p).

The programs for A002323, there is no canonical definition to state claims against.
-/

/-! ## A002323.P9537988424099971626

`A352232(n+2)%p?[A257088(n)]`
-/

namespace A002323.P9537988424099971626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352232 (n + 2)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A002323.P9537988424099971626

/-! ## A002323.P10406576422681473733

`A165781(A130290(n+2))%p?[A005408(n)]`
-/

namespace A002323.P10406576422681473733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165781 (A130290 (n + 2)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A002323.P10406576422681473733

/-! ## A002323.P3723270738417167552

`A165781(A005097(n+1))%A045344(n+1)`
-/

namespace A002323.P3723270738417167552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165781 (A005097 (n + 1)).toNat) (A045344 (n + 1))

end

end A002323.P3723270738417167552

/-! ## A002323.P10830555394833893622

`(A000034(2*n)*A352232(n+2))%A006005(n+2)`
-/

namespace A002323.P10830555394833893622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000034 (2 * n) * A352232 (n + 2)) (A006005 (n + 2))

end

end A002323.P10830555394833893622

/-!
# A002324: Number of divisors of n == 1 (mod 3) minus number of divisors of n == 2 (mod 3).

The programs for A002324, the canonical program `A002324.P17421748272452344756` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002324 has offset 1).

The definition of A002324 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001817, A001822, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A002324.P17421748272452344756

`A001817(n+1)-A001822(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A002324

/-- `A001817(n+1)-A001822(n+1)` -/
def P17421748272452344756.Spec : Prop :=
  ∀ n, P17421748272452344756.a n = A002324 (n + 1)

theorem P17421748272452344756.correct : P17421748272452344756.Spec := by
  intro n
  simp only [A002324, Nat.add_sub_cancel]

end A002324

/-! ## A002324.P13859915625949078586

`A004016(n+1)/6`
-/

namespace A002324.P13859915625949078586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004016 (n + 1) : ℚ) / 6

end

end A002324.P13859915625949078586

namespace A002324

/-- `A004016(n+1)/6` -/
def P13859915625949078586.Spec : Prop :=
  ∀ n, P13859915625949078586.a n = (A002324 (n + 1) : ℚ)

end A002324

/-! ## A002324.P1375213798636652628

`A131099(n+1)/(n+1)`
-/

namespace A002324.P1375213798636652628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131099 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A002324.P1375213798636652628

namespace A002324

/-- `A131099(n+1)/(n+1)` -/
def P1375213798636652628.Spec : Prop :=
  ∀ n, P1375213798636652628.a n = (A002324 (n + 1) : ℚ)

end A002324

/-! ## A002324.P8976615711512346541

`∑{d}[n+1, A049347(#-1)]`
-/

namespace A002324.P8976615711512346541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A049347 (d - 1)

end

end A002324.P8976615711512346541

namespace A002324

/-- `∑{d}[n+1, A049347(#-1)]` -/
def P8976615711512346541.Spec : Prop :=
  ∀ n, P8976615711512346541.a n = A002324 (n + 1)

end A002324

/-! ## A002324.P16618965353707018777

`A008615(A004016(n+1))`
-/

namespace A002324.P16618965353707018777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A004016 (n + 1)).toNat

end

end A002324.P16618965353707018777

namespace A002324

/-- `A008615(A004016(n+1))` -/
def P16618965353707018777.Spec : Prop :=
  ∀ n, P16618965353707018777.a n = A002324 (n + 1)

end A002324

/-! ## A002324.P12611875289391551530

`A045833(A038502(n+1))`
-/

namespace A002324.P12611875289391551530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045833 (A038502 (n + 1)).toNat

end

end A002324.P12611875289391551530

namespace A002324

/-- `A045833(A038502(n+1))` -/
def P12611875289391551530.Spec : Prop :=
  ∀ n, P12611875289391551530.a n = A002324 (n + 1)

end A002324

/-! ## A002324.P16459259357067877779

`A096936(A065883(n+1))`
-/

namespace A002324.P16459259357067877779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096936 (A065883 (n + 1)).toNat

end

end A002324.P16459259357067877779

namespace A002324

/-- `A096936(A065883(n+1))` -/
def P16459259357067877779.Spec : Prop :=
  ∀ n, P16459259357067877779.a n = A002324 (n + 1)

end A002324

/-! ## A002324.P9995404818158944194

`A293899(n+1)+A049347(n)`
-/

namespace A002324.P9995404818158944194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293899 (n + 1) + A049347 n

end

end A002324.P9995404818158944194

namespace A002324

/-- `A293899(n+1)+A049347(n)` -/
def P9995404818158944194.Spec : Prop :=
  ∀ n, P9995404818158944194.a n = A002324 (n + 1)

end A002324

/-! ## A002324.P7679882830293468528

`A096936(n+1)/A010684(n)`
-/

namespace A002324.P7679882830293468528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096936 (n + 1) : ℚ) / (A010684 n : ℚ)

end

end A002324.P7679882830293468528

namespace A002324

/-- `A096936(n+1)/A010684(n)` -/
def P7679882830293468528.Spec : Prop :=
  ∀ n, P7679882830293468528.a n = (A002324 (n + 1) : ℚ)

end A002324

/-! ## A002324.P17320339487937202352

`A096936(n+1)/A093148(n)`
-/

namespace A002324.P17320339487937202352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096936 (n + 1) : ℚ) / (A093148 n : ℚ)

end

end A002324.P17320339487937202352

namespace A002324

/-- `A096936(n+1)/A093148(n)` -/
def P17320339487937202352.Spec : Prop :=
  ∀ n, P17320339487937202352.a n = (A002324 (n + 1) : ℚ)

end A002324

/-! ## A002324.P15544931804436984149

`A096936(n+1)/A130974(n)`
-/

namespace A002324.P15544931804436984149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096936 (n + 1) : ℚ) / (A130974 n : ℚ)

end

end A002324.P15544931804436984149

namespace A002324

/-- `A096936(n+1)/A130974(n)` -/
def P15544931804436984149.Spec : Prop :=
  ∀ n, P15544931804436984149.a n = (A002324 (n + 1) : ℚ)

end A002324

/-! ## A002324.P15349348588579054125

`A113063(n+1)/A130196(n)`
-/

namespace A002324.P15349348588579054125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113063 (n + 1) : ℚ) / (A130196 n : ℚ)

end

end A002324.P15349348588579054125

namespace A002324

/-- `A113063(n+1)/A130196(n)` -/
def P15349348588579054125.Spec : Prop :=
  ∀ n, P15349348588579054125.a n = (A002324 (n + 1) : ℚ)

end A002324

/-! ## A002324.P7995490076823944217

`A113063(n+1)/A130784(n)`
-/

namespace A002324.P7995490076823944217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113063 (n + 1) : ℚ) / (A130784 n : ℚ)

end

end A002324.P7995490076823944217

namespace A002324

/-- `A113063(n+1)/A130784(n)` -/
def P7995490076823944217.Spec : Prop :=
  ∀ n, P7995490076823944217.a n = (A002324 (n + 1) : ℚ)

end A002324

/-! ## A002324.P16367054738281919885

`A113063(n+1)/A153727(n)`
-/

namespace A002324.P16367054738281919885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113063 (n + 1) : ℚ) / (A153727 n : ℚ)

end

end A002324.P16367054738281919885

namespace A002324

/-- `A113063(n+1)/A153727(n)` -/
def P16367054738281919885.Spec : Prop :=
  ∀ n, P16367054738281919885.a n = (A002324 (n + 1) : ℚ)

end A002324

/-! ## A002324.P4471666298346195525

`A113063(n+1)/A177702(n)`
-/

namespace A002324.P4471666298346195525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113063 (n + 1) : ℚ) / (A177702 n : ℚ)

end

end A002324.P4471666298346195525

namespace A002324

/-- `A113063(n+1)/A177702(n)` -/
def P4471666298346195525.Spec : Prop :=
  ∀ n, P4471666298346195525.a n = (A002324 (n + 1) : ℚ)

end A002324

/-! ## A002324.P15062576752891581289

`A113063(n+1)/A280048(n)`
-/

namespace A002324.P15062576752891581289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113063 (n + 1) : ℚ) / (A280048 n : ℚ)

end

end A002324.P15062576752891581289

namespace A002324

/-- `A113063(n+1)/A280048(n)` -/
def P15062576752891581289.Spec : Prop :=
  ∀ n, P15062576752891581289.a n = (A002324 (n + 1) : ℚ)

end A002324

/-! ## A002324.P18365528413162126829

`A051724(abs(2*A180318(n+1)))`
-/

namespace A002324.P18365528413162126829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 |2 * A180318 (n + 1)|.toNat

end

end A002324.P18365528413162126829

namespace A002324

/-- `A051724(abs(2*A180318(n+1)))` -/
def P18365528413162126829.Spec : Prop :=
  ∀ n, P18365528413162126829.a n = A002324 (n + 1)

end A002324

/-! ## A002324.P13619441746816301163

`A364204(n+1)+A364014(n+1)`
-/

namespace A002324.P13619441746816301163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364204 (n + 1) + A364014 (n + 1)

end

end A002324.P13619441746816301163

namespace A002324

/-- `A364204(n+1)+A364014(n+1)` -/
def P13619441746816301163.Spec : Prop :=
  ∀ n, P13619441746816301163.a n = A002324 (n + 1)

end A002324

/-! ## A002324.P1983327916028818147

`A326394(n+1)-A326395(n+1)`
-/

namespace A002324.P1983327916028818147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326394 (n + 1) - A326395 (n + 1)

end

end A002324.P1983327916028818147

namespace A002324

/-- `A326394(n+1)-A326395(n+1)` -/
def P1983327916028818147.Spec : Prop :=
  ∀ n, P1983327916028818147.a n = A002324 (n + 1)

end A002324

/-! ## A002324.P11486688359582594080

`A364011(n+1)-A364205(n+1)`
-/

namespace A002324.P11486688359582594080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364011 (n + 1) - A364205 (n + 1)

end

end A002324.P11486688359582594080

namespace A002324

/-- `A364011(n+1)-A364205(n+1)` -/
def P11486688359582594080.Spec : Prop :=
  ∀ n, P11486688359582594080.a n = A002324 (n + 1)

end A002324

/-!
# A002325: Glaisher's J numbers.

The programs for A002325, the canonical program `A002325.P14825616568919519912` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002325 has offset 1).

The definition of A002325 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A188169, A188170, A188171, A188172, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A002325.P14825616568919519912

`A188169(n+1)+A188170(n+1)-A188171(n+1)-A188172(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A002325

/-- `A188169(n+1)+A188170(n+1)-A188171(n+1)-A188172(n+1)` -/
def P14825616568919519912.Spec : Prop :=
  ∀ n, P14825616568919519912.a n = A002325 (n + 1)

theorem P14825616568919519912.correct : P14825616568919519912.Spec := by
  intro n
  simp only [A002325, Nat.add_sub_cancel]

end A002325

/-! ## A002325.P3198410778722285062

`abs(A133693(n+1))`
-/

namespace A002325.P3198410778722285062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A133693 (n + 1)|

end

end A002325.P3198410778722285062

namespace A002325

/-- `abs(A133693(n+1))` -/
def P3198410778722285062.Spec : Prop :=
  ∀ n, P3198410778722285062.a n = A002325 (n + 1)

end A002325

/-! ## A002325.P2413386754685042618

`A033715(n+1)/2`
-/

namespace A002325.P2413386754685042618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033715 (n + 1) : ℚ) / 2

end

end A002325.P2413386754685042618

namespace A002325

/-- `A033715(n+1)/2` -/
def P2413386754685042618.Spec : Prop :=
  ∀ n, P2413386754685042618.a n = (A002325 (n + 1) : ℚ)

end A002325

/-! ## A002325.P14087751782238265395

`abs(A139093(n+1)/2)`
-/

namespace A002325.P14087751782238265395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A139093 (n + 1) : ℚ) / 2|

end

end A002325.P14087751782238265395

namespace A002325

/-- `abs(A139093(n+1)/2)` -/
def P14087751782238265395.Spec : Prop :=
  ∀ n, P14087751782238265395.a n = (A002325 (n + 1) : ℚ)

end A002325

/-! ## A002325.P3010218503394732773

`∑[round(Δ[A033715(n)/2])]`
-/

namespace A002325.P3010218503394732773
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033715 n : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002325.P3010218503394732773

namespace A002325

/-- `∑[round(Δ[A033715(n)/2])]` -/
def P3010218503394732773.Spec : Prop :=
  ∀ n, P3010218503394732773.a n = A002325 (n + 1)

end A002325

/-! ## A002325.P16806152981509554548

`A113411(A025480(n))`
-/

namespace A002325.P16806152981509554548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113411 (A025480 n).toNat

end

end A002325.P16806152981509554548

namespace A002325

/-- `A113411(A025480(n))` -/
def P16806152981509554548.Spec : Prop :=
  ∀ n, P16806152981509554548.a n = A002325 (n + 1)

end A002325

/-! ## A002325.P2826384311644370362

`A001281(A033715(n+1))`
-/

namespace A002325.P2826384311644370362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A033715 (n + 1)).toNat

end

end A002325.P2826384311644370362

namespace A002325

/-- `A001281(A033715(n+1))` -/
def P2826384311644370362.Spec : Prop :=
  ∀ n, P2826384311644370362.a n = A002325 (n + 1)

end A002325

/-! ## A002325.P1378341373809490024

`A125096(A000265(n+1))`
-/

namespace A002325.P1378341373809490024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125096 (A000265 (n + 1)).toNat

end

end A002325.P1378341373809490024

namespace A002325

/-- `A125096(A000265(n+1))` -/
def P1378341373809490024.Spec : Prop :=
  ∀ n, P1378341373809490024.a n = A002325 (n + 1)

end A002325

/-! ## A002325.P16804631620976251998

`A123108(A033715(n+1)+1)`
-/

namespace A002325.P16804631620976251998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A033715 (n + 1) + 1).toNat

end

end A002325.P16804631620976251998

namespace A002325

/-- `A123108(A033715(n+1)+1)` -/
def P16804631620976251998.Spec : Prop :=
  ∀ n, P16804631620976251998.a n = A002325 (n + 1)

end A002325

/-! ## A002325.P4557022458570079597

`A002265(2*A033715(n+1))`
-/

namespace A002325.P4557022458570079597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A033715 (n + 1)).toNat

end

end A002325.P4557022458570079597

namespace A002325

/-- `A002265(2*A033715(n+1))` -/
def P4557022458570079597.Spec : Prop :=
  ∀ n, P4557022458570079597.a n = A002325 (n + 1)

end A002325

/-! ## A002325.P1759225144154091452

`A110655(2*A033715(n+1))`
-/

namespace A002325.P1759225144154091452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (2 * A033715 (n + 1)).toNat

end

end A002325.P1759225144154091452

namespace A002325

/-- `A110655(2*A033715(n+1))` -/
def P1759225144154091452.Spec : Prop :=
  ∀ n, P1759225144154091452.a n = A002325 (n + 1)

end A002325

/-! ## A002325.P3572415702804906225

`A131508(2*A033715(n+1))`
-/

namespace A002325.P3572415702804906225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131508 (2 * A033715 (n + 1)).toNat

end

end A002325.P3572415702804906225

namespace A002325

/-- `A131508(2*A033715(n+1))` -/
def P3572415702804906225.Spec : Prop :=
  ∀ n, P3572415702804906225.a n = A002325 (n + 1)

end A002325

/-! ## A002325.P1938852031374672264

`A255589(2*A033715(n+1))`
-/

namespace A002325.P1938852031374672264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255589 (2 * A033715 (n + 1)).toNat

end

end A002325.P1938852031374672264

namespace A002325

/-- `A255589(2*A033715(n+1))` -/
def P1938852031374672264.Spec : Prop :=
  ∀ n, P1938852031374672264.a n = A002325 (n + 1)

end A002325

/-! ## A002325.P5412579181195635395

`A300763(2*A033715(n+1))`
-/

namespace A002325.P5412579181195635395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 (2 * A033715 (n + 1)).toNat

end

end A002325.P5412579181195635395

namespace A002325

/-- `A300763(2*A033715(n+1))` -/
def P5412579181195635395.Spec : Prop :=
  ∀ n, P5412579181195635395.a n = A002325 (n + 1)

end A002325

/-! ## A002325.P7837791973987357105

`A004525(lcm(2, A139093(n+1)))`
-/

namespace A002325.P7837791973987357105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.lcm 2 (A139093 (n + 1)))

end

end A002325.P7837791973987357105

namespace A002325

/-- `A004525(lcm(2, A139093(n+1)))` -/
def P7837791973987357105.Spec : Prop :=
  ∀ n, P7837791973987357105.a n = A002325 (n + 1)

end A002325

/-! ## A002325.P4975670671257839235

`A033999(n)*A133693(n+1)`
-/

namespace A002325.P4975670671257839235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A133693 (n + 1)

end

end A002325.P4975670671257839235

namespace A002325

/-- `A033999(n)*A133693(n+1)` -/
def P4975670671257839235.Spec : Prop :=
  ∀ n, P4975670671257839235.a n = A002325 (n + 1)

end A002325

/-! ## A002325.P723451142911342827

`gcd(A127802(n), A133693(n+1))`
-/

namespace A002325.P723451142911342827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127802 n) (A133693 (n + 1))

end

end A002325.P723451142911342827

namespace A002325

/-- `gcd(A127802(n), A133693(n+1))` -/
def P723451142911342827.Spec : Prop :=
  ∀ n, (P723451142911342827.a n : ℤ) = A002325 (n + 1)

end A002325

/-! ## A002325.P4922534084578426549

`lcm(A020985(n), A133693(n+1))`
-/

namespace A002325.P4922534084578426549
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A133693 (n + 1))

end

end A002325.P4922534084578426549

namespace A002325

/-- `lcm(A020985(n), A133693(n+1))` -/
def P4922534084578426549.Spec : Prop :=
  ∀ n, (P4922534084578426549.a n : ℤ) = A002325 (n + 1)

end A002325

/-! ## A002325.P7673107391397687434

`A364032(n+1)+A363037(n+1)`
-/

namespace A002325.P7673107391397687434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364032 (n + 1) + A363037 (n + 1)

end

end A002325.P7673107391397687434

namespace A002325

/-- `A364032(n+1)+A363037(n+1)` -/
def P7673107391397687434.Spec : Prop :=
  ∀ n, P7673107391397687434.a n = A002325 (n + 1)

end A002325

/-! ## A002325.P8512816752857493749

`A105673(n+1)-A244554(n+1)`
-/

namespace A002325.P8512816752857493749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105673 (n + 1) - A244554 (n + 1)

end

end A002325.P8512816752857493749

namespace A002325

/-- `A105673(n+1)-A244554(n+1)` -/
def P8512816752857493749.Spec : Prop :=
  ∀ n, P8512816752857493749.a n = A002325 (n + 1)

end A002325

/-!
# A002326: Multiplicative order of 2 mod 2n+1.

The programs for A002326, there is no canonical definition to state claims against.
-/

/-! ## A002326.P14188826662446224026

`A007733(2*n+1)`
-/

namespace A002326.P14188826662446224026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (2 * n + 1)

end

end A002326.P14188826662446224026

/-! ## A002326.P9368917227528188558

`A037225(n)/A037226(n)`
-/

namespace A002326.P9368917227528188558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037225 n : ℚ) / (A037226 n : ℚ)

end

end A002326.P9368917227528188558

/-! ## A002326.P15001921342272544667

`lcm(A003558(n), A053451(n))`
-/

namespace A002326.P15001921342272544667
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003558 n) (A053451 n)

end

end A002326.P15001921342272544667

/-! ## A002326.P9584598708838164900

`A000010(2*n+1)/A037226(n)`
-/

namespace A002326.P9584598708838164900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (2 * n + 1) : ℚ) / (A037226 n : ℚ)

end

end A002326.P9584598708838164900

/-! ## A002326.P14789013451996296049

`A062570(2*n+1)/A037226(n)`
-/

namespace A002326.P14789013451996296049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062570 (2 * n + 1) : ℚ) / (A037226 n : ℚ)

end

end A002326.P14789013451996296049

/-! ## A002326.P9287462929244338989

`A336843(A064216(n+1))`
-/

namespace A002326.P9287462929244338989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336843 (A064216 (n + 1)).toNat

end

end A002326.P9287462929244338989

/-! ## A002326.P16915940641667312572

`A336843(A243502(n+1)/2)`
-/

namespace A002326.P16915940641667312572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336843 (SequenceMachineLib.roundAway ((A243502 (n + 1) : ℚ) / 2)).toNat

end

end A002326.P16915940641667312572

/-! ## A002326.P3722808546512121790

`A054703(Δ[n²])`
-/

namespace A002326.P3722808546512121790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054703 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A002326.P3722808546512121790

/-! ## A002326.P3992277073703310085

`A024222(2*(n+1))`
-/

namespace A002326.P3992277073703310085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024222 (2 * (n + 1))

end

end A002326.P3992277073703310085

/-! ## A002326.P14026732165184929300

`A385989(2*n+1)-(2*n+1)`
-/

namespace A002326.P14026732165184929300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385989 (2 * n + 1) - (2 * n + 1 : ℤ)

end

end A002326.P14026732165184929300

/-! ## A002326.P17314533446540656797

`A336843(A064989(2*n+1))`
-/

namespace A002326.P17314533446540656797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336843 (A064989 (2 * n + 1)).toNat

end

end A002326.P17314533446540656797

/-! ## A002326.P6866166636952805021

`A325596(2*n+1)/A037226(n)`
-/

namespace A002326.P6866166636952805021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325596 (2 * n + 1) : ℚ) / (A037226 n : ℚ)

end

end A002326.P6866166636952805021

/-! ## A002326.P6486588826109326985

`A000010(2*n+1)/A318622(2*n+1)`
-/

namespace A002326.P6486588826109326985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (2 * n + 1) : ℚ) / (A318622 (2 * n + 1) : ℚ)

end

end A002326.P6486588826109326985

/-! ## A002326.P7163374566369162143

`lcm(A007735(2*n+1), A007739(2*n+1))`
-/

namespace A002326.P7163374566369162143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007735 (2 * n + 1)) (A007739 (2 * n + 1))

end

end A002326.P7163374566369162143

/-! ## A002326.P15877477060282793548

`A007732(2*n+1)/A007736(2*n+1)*A334487(2*n+1)`
-/

namespace A002326.P15877477060282793548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007732 (2 * n + 1) : ℚ) / (A007736 (2 * n + 1) : ℚ) * (A334487 (2 * n + 1) : ℚ)

end

end A002326.P15877477060282793548

/-! ## A002326.P10102508382301073079

`A007814(A004273(n+1))+A007733(A004273(n+1))`
-/

namespace A002326.P10102508382301073079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A004273 (n + 1)).toNat + A007733 (A004273 (n + 1)).toNat

end

end A002326.P10102508382301073079

/-! ## A002326.P7843211648125534315

`A165783(n+1)-A179382(n+1)`
-/

namespace A002326.P7843211648125534315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165783 (n + 1) - A179382 (n + 1)

end

end A002326.P7843211648125534315

/-! ## A002326.P15675723799013557574

`A204987(Δ[n²])-1`
-/

namespace A002326.P15675723799013557574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204987 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A002326.P15675723799013557574

/-! ## A002326.P13840873058549226462

`A204979(Δ[n²])-1`
-/

namespace A002326.P13840873058549226462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204979 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A002326.P13840873058549226462

/-! ## A002326.P3850091322754695164

`log2(A352217(n+1))`
-/

namespace A002326.P3850091322754695164
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A352217 (n + 1) : ℝ)

end

end A002326.P3850091322754695164

/-!
# A002327: Primes of the form k^2 - k - 1.

The programs for A002327, there is no canonical definition to state claims against.
-/

/-! ## A002327.P3017181007185702082

`(A110013(n+1)-5)/4`
-/

namespace A002327.P3017181007185702082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110013 (n + 1) - 5 : ℚ) / 4

end

end A002327.P3017181007185702082

/-! ## A002327.P15039084655283318910

`A002328(n+1)²-A002328(n+1)-1`
-/

namespace A002327.P15039084655283318910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1) ^ 2 - A002328 (n + 1) - 1

end

end A002327.P15039084655283318910

/-! ## A002327.P17291573772296173319

`A045546(n+1)+A002328(n+1)*A094210(n+1)`
-/

namespace A002327.P17291573772296173319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 1) + A002328 (n + 1) * A094210 (n + 1)

end

end A002327.P17291573772296173319

/-! ## A002327.P15049621474559084507

`A045546(n+1)*A089362(n+1)-A088502(n+1)`
-/

namespace A002327.P15049621474559084507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 1) * A089362 (n + 1) - A088502 (n + 1)

end

end A002327.P15049621474559084507

/-! ## A002327.P12833233913579275508

`record[A108151(n+1)]`
-/

namespace A002327.P12833233913579275508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002327.P12833233913579275508

/-! ## A002327.P17157463165198528949

`record[A209188(n+2)]`
-/

namespace A002327.P17157463165198528949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209188 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002327.P17157463165198528949

/-! ## A002327.P13134133084483042451

`A108151(A094210(2*n+1-n))`
-/

namespace A002327.P13134133084483042451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108151 (A094210 (2 * n + 1 - n)).toNat

end

end A002327.P13134133084483042451

/-! ## A002327.P16123803820397482395

`record[A356247(n+3)]`
-/

namespace A002327.P16123803820397482395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356247 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002327.P16123803820397482395

/-! ## A002327.P98248780332144498

`A028387(A094210(n+1))`
-/

namespace A002327.P98248780332144498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 (A094210 (n + 1)).toNat

end

end A002327.P98248780332144498

/-! ## A002327.P5182191007901621726

`A165900(A002328(n+1))`
-/

namespace A002327.P5182191007901621726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165900 (A002328 (n + 1)).toNat

end

end A002327.P5182191007901621726

/-! ## A002327.P6242322666591023401

`A161550(A045546(n+1))`
-/

namespace A002327.P6242322666591023401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161550 (A045546 (n + 1)).toNat

end

end A002327.P6242322666591023401

/-! ## A002327.P5210200715271441299

`A028387(A045546(n+1)-1)`
-/

namespace A002327.P5210200715271441299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 (A045546 (n + 1) - 1).toNat

end

end A002327.P5210200715271441299

/-! ## A002327.P16171292968900710433

`A028387(A002328(n+1)-2)`
-/

namespace A002327.P16171292968900710433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 (A002328 (n + 1) - 2).toNat

end

end A002327.P16171292968900710433

/-! ## A002327.P3591410237791524091

`∩[A084720(n+1), A028387(n)]`
-/

namespace A002327.P3591410237791524091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002327.P3591410237791524091

/-! ## A002327.P17711210675767779731

`∩[A161550(n+1), A028387(n)]`
-/

namespace A002327.P17711210675767779731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002327.P17711210675767779731

/-! ## A002327.P12658802920736114091

`∩[A179273(n+1), A028387(n)]`
-/

namespace A002327.P12658802920736114091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002327.P12658802920736114091

/-! ## A002327.P16897131628720293774

`∩[A239709(n+1), A028387(n)]`
-/

namespace A002327.P16897131628720293774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002327.P16897131628720293774

/-! ## A002327.P15337958726928643772

`A078126(A088502(n+1))`
-/

namespace A002327.P15337958726928643772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078126 (A088502 (n + 1)).toNat

end

end A002327.P15337958726928643772

/-! ## A002327.P11794765715001118267

`∩[A084720(n+1), A264754(n)]`
-/

namespace A002327.P11794765715001118267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264754 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002327.P11794765715001118267

/-! ## A002327.P286886166554795984

`∩[A161550(n+1), A264754(n)]`
-/

namespace A002327.P286886166554795984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264754 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002327.P286886166554795984

/-!
# A002328: Numbers k such that k^2 - k - 1 is prime.

The programs for A002328, there is no canonical definition to state claims against.
-/

/-! ## A002328.P4797411865772029333

`A094210(n+1)+2`
-/

namespace A002328.P4797411865772029333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094210 (n + 1) + 2

end

end A002328.P4797411865772029333

/-! ## A002328.P1415106655578998409

`(A088502(n+1)+1)/2`
-/

namespace A002328.P1415106655578998409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088502 (n + 1) + 1 : ℚ) / 2

end

end A002328.P1415106655578998409

/-! ## A002328.P3788988775920062523

`A045546(n+1)+1`
-/

namespace A002328.P3788988775920062523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 1) + 1

end

end A002328.P3788988775920062523

/-! ## A002328.P171809737322719464

`A076597(n+1)-1`
-/

namespace A002328.P171809737322719464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076597 (n + 1) - 1

end

end A002328.P171809737322719464

/-! ## A002328.P13002091562046713283

`A089362(n+1)-2`
-/

namespace A002328.P13002091562046713283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089362 (n + 1) - 2

end

end A002328.P13002091562046713283

/-! ## A002328.P3847750597876125789

`ceil(sqrt(A002327(n+1)))`
-/

namespace A002328.P3847750597876125789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A002327 (n + 1) : ℝ)⌉

end

end A002328.P3847750597876125789

/-! ## A002328.P5154061712213001677

`ceil(A088502(n+1)/2)`
-/

namespace A002328.P5154061712213001677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A088502 (n + 1) : ℚ) / 2⌉

end

end A002328.P5154061712213001677

/-! ## A002328.P3414197753822667834

`round(sqrt(A110013(n+1))/2)`
-/

namespace A002328.P3414197753822667834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A110013 (n + 1) : ℝ) / 2)

end

end A002328.P3414197753822667834

/-! ## A002328.P11770320792626157064

`A014682(A088502(n+1)+1)`
-/

namespace A002328.P11770320792626157064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A088502 (n + 1) + 1).toNat

end

end A002328.P11770320792626157064

/-! ## A002328.P11970865238450018863

`A009056(A094210(n+1))`
-/

namespace A002328.P11970865238450018863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A094210 (n + 1)).toNat

end

end A002328.P11970865238450018863

/-! ## A002328.P16322575780669705944

`eq[2, A278247(n)]+2`
-/

namespace A002328.P16322575780669705944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278247 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A002328.P16322575780669705944

/-! ## A002328.P1215167320210744405

`eq[1, A289357(n+1)]+2`
-/

namespace A002328.P1215167320210744405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289357 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A002328.P1215167320210744405

/-! ## A002328.P15839076243342955522

`lt[A272903(n+2), 2]+2`
-/

namespace A002328.P15839076243342955522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272903 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A002328.P15839076243342955522

/-! ## A002328.P8648184354518324856

`A020725(A045546(n+1))`
-/

namespace A002328.P8648184354518324856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A045546 (n + 1)).toNat

end

end A002328.P8648184354518324856

/-! ## A002328.P6444802452969261611

`A023443(A076597(n+1))`
-/

namespace A002328.P6444802452969261611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A076597 (n + 1)).toNat

end

end A002328.P6444802452969261611

/-! ## A002328.P120677646661233766

`A023444(A089362(n+1))`
-/

namespace A002328.P120677646661233766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A089362 (n + 1)).toNat

end

end A002328.P120677646661233766

/-! ## A002328.P6171865059646964932

`A009056(eq[2, A278247(n)])`
-/

namespace A002328.P6171865059646964932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A002328.P6171865059646964932

/-! ## A002328.P3965733557014581331

`A023444(A076597(n+1)+1)`
-/

namespace A002328.P3965733557014581331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A076597 (n + 1) + 1).toNat

end

end A002328.P3965733557014581331

/-! ## A002328.P4003476471788900553

`A023445(A089362(n+1)+1)`
-/

namespace A002328.P4003476471788900553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A089362 (n + 1) + 1).toNat

end

end A002328.P4003476471788900553

/-! ## A002328.P506476034842332132

`A023445(A076597(n+1)+2)`
-/

namespace A002328.P506476034842332132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A076597 (n + 1) + 2).toNat

end

end A002328.P506476034842332132

/-!
# A002329: Periods of reciprocals of integers prime to 10.

The programs for A002329, there is no canonical definition to state claims against.
-/

/-! ## A002329.P14896088141384861211

`A007732(A045572(n+1))`
-/

namespace A002329.P14896088141384861211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (A045572 (n + 1)).toNat

end

end A002329.P14896088141384861211

/-! ## A002329.P4072369171450377260

`A054710(record[A078268(n+1)])`
-/

namespace A002329.P4072369171450377260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054710 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A002329.P4072369171450377260

/-! ## A002329.P17914625477146371685

`A007732(record[A132740(n+1)])`
-/

namespace A002329.P17914625477146371685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A002329.P17914625477146371685

/-! ## A002329.P16064767039782646410

`A054710(record[A132740(n+1)])`
-/

namespace A002329.P16064767039782646410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054710 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A002329.P16064767039782646410

/-! ## A002329.P4228045061711502891

`A084680(or(1, A045572(n+1)))`
-/

namespace A002329.P4228045061711502891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084680 (Int.lor 1 (A045572 (n + 1))).toNat

end

end A002329.P4228045061711502891

/-! ## A002329.P7024672914223304439

`A084680(A045572(2*n+1-n))`
-/

namespace A002329.P7024672914223304439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084680 (A045572 (2 * n + 1 - n)).toNat

end

end A002329.P7024672914223304439

/-! ## A002329.P14083184664176760666

`A084680(A045572(n+1)%(n+2)²)`
-/

namespace A002329.P14083184664176760666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084680 (Int.tmod (A045572 (n + 1)) ((n + 2) ^ 2 : ℤ)).toNat

end

end A002329.P14083184664176760666

/-! ## A002329.P1925704144725889514

`A007732(eq[n+1, A132740(n+1)]+1)`
-/

namespace A002329.P1925704144725889514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A002329.P1925704144725889514

/-! ## A002329.P11666222180647830650

`A051626(lt[5*n, lcm(10, n)])+A000007(n)`
-/

namespace A002329.P11666222180647830650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 10 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n) + A000007 n

end

end A002329.P11666222180647830650

/-! ## A002329.P14351732841374027183

`A051626(eq[gcd(10, n)+n, n+1])+A000007(n)`
-/

namespace A002329.P14351732841374027183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 10 n + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) + A000007 n

end

end A002329.P14351732841374027183

/-! ## A002329.P15793678695661914730

`A051626(record[2*(n+1)-gcd(5, 2-n)])+A000007(n)`
-/

namespace A002329.P15793678695661914730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - (Int.gcd 5 (2 - (n : ℤ)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A000007 n

end

end A002329.P15793678695661914730

/-! ## A002329.P15685001806840515263

`A051626(record[(2*n+1)/(val(n+3, 5)+1)])+A000007(n)`
-/

namespace A002329.P15685001806840515263
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (SequenceMachineLib.valuation (n + 3) 5 + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat + A000007 n

end

end A002329.P15685001806840515263

/-! ## A002329.P3745226188884505724

`A051626(A045572(n+1))+A000007(n)`
-/

namespace A002329.P3745226188884505724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (A045572 (n + 1)).toNat + A000007 n

end

end A002329.P3745226188884505724

/-! ## A002329.P10548436681549266167

`A099894(2*n)+A051626(A045572(n+1))`
-/

namespace A002329.P10548436681549266167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 (2 * n) + A051626 (A045572 (n + 1)).toNat

end

end A002329.P10548436681549266167

/-! ## A002329.P14059730676024091735

`A007732(eq[A007732(n+1), A084680(n+1)]+1)`
-/

namespace A002329.P14059730676024091735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A002329.P14059730676024091735

/-!
# A002330: Value of y in the solution to p = x^2 + y^2, x <= y, with prime p = A002313(n).

The programs for A002330, there is no canonical definition to state claims against.
-/

/-! ## A002330.P7179286542176007298

`A145019(n)/A002331(n+1)`
-/

namespace A002330.P7179286542176007298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145019 n : ℚ) / (A002331 (n + 1) : ℚ)

end

end A002330.P7179286542176007298

/-! ## A002330.P7188624559216427677

`root(A002313(n+1)-A002331(n+1)², 2)`
-/

namespace A002330.P7188624559216427677
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A002313 (n + 1) - A002331 (n + 1) ^ 2 : ℝ) ^ (1 / (2 : ℝ))

end

end A002330.P7188624559216427677

/-! ## A002330.P10063720273687046492

`A103432(eq[A103431(n+2), A103432(n+1)]+1)`
-/

namespace A002330.P10063720273687046492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103431 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103432 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A002330.P10063720273687046492

/-! ## A002330.P6828827158221803224

`A262689(p?[floor(4*n/3)])`
-/

namespace A002330.P6828827158221803224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * ((n : ℚ) / 3)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A002330.P6828827158221803224

/-! ## A002330.P15020533535210539253

`A262689(A002313(n+1))`
-/

namespace A002330.P15020533535210539253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A002313 (n + 1)).toNat

end

end A002330.P15020533535210539253

/-! ## A002330.P4694845832502957234

`A133388(A280084(n+1))`
-/

namespace A002330.P4694845832502957234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133388 (A280084 (n + 1)).toNat

end

end A002330.P4694845832502957234

/-! ## A002330.P11927448069973938628

`A133388(p?[A001481(n+1)])`
-/

namespace A002330.P11927448069973938628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133388 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A002330.P11927448069973938628

/-! ## A002330.P7051184169738289570

`A133388(p?[A055025(n+1)])`
-/

namespace A002330.P7051184169738289570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133388 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A002330.P7051184169738289570

/-! ## A002330.P2819887681425301407

`A133388(p?[A125022(n+1)])`
-/

namespace A002330.P2819887681425301407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125022 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133388 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A002330.P2819887681425301407

/-! ## A002330.P2358426695495139247

`A133388(p?[A166687(n+1)-1])`
-/

namespace A002330.P2358426695495139247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166687 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133388 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A002330.P2358426695495139247

/-! ## A002330.P14937646905505301047

`A099379(A002313(n+1))-A002331(n+1)`
-/

namespace A002330.P14937646905505301047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099379 (A002313 (n + 1)).toNat - A002331 (n + 1)

end

end A002330.P14937646905505301047

/-!
# A002331: Values of x in the solution to p = x^2 + y^2, x <= y, with prime p = A002313(n).

The programs for A002331, there is no canonical definition to state claims against.
-/

/-! ## A002331.P14813837408673230722

`A145019(n)/A002330(n+1)`
-/

namespace A002331.P14813837408673230722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145019 n : ℚ) / (A002330 (n + 1) : ℚ)

end

end A002331.P14813837408673230722

/-! ## A002331.P8594719331760460042

`sqrt(A002313(n+1)-A002330(n+1)²)`
-/

namespace A002331.P8594719331760460042
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A002313 (n + 1) - A002330 (n + 1) ^ 2 : ℝ)

end

end A002331.P8594719331760460042

/-! ## A002331.P7040319998087283585

`A300588(lt[1, A300588(n+1)+1]+1)`
-/

namespace A002331.P7040319998087283585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300588 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300588 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A002331.P7040319998087283585

/-! ## A002331.P14193519602197718968

`A103431(eq[A103431(n+2), A103432(n+1)]+1)`
-/

namespace A002331.P14193519602197718968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103431 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103431 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A002331.P14193519602197718968

/-! ## A002331.P6358281073728434421

`sqrt(p?[A008784(n+1)]-A002330(n+1)²)`
-/

namespace A002331.P6358281073728434421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A002330 (n + 1) ^ 2 : ℝ)

end

end A002331.P6358281073728434421

/-! ## A002331.P9356010010066813864

`sqrt(p?[A057129(n+1)]-A002330(n+1)²)`
-/

namespace A002331.P9356010010066813864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057129 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A002330 (n + 1) ^ 2 : ℝ)

end

end A002331.P9356010010066813864

/-! ## A002331.P1738238109127098631

`sqrt(p?[A000404(n+1)]-A002330(n+1)²)`
-/

namespace A002331.P1738238109127098631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A002330 (n + 1) ^ 2 : ℝ)

end

end A002331.P1738238109127098631

/-! ## A002331.P5732514565156998376

`sqrt(p?[A001481(n+1)]-A002330(n+1)²)`
-/

namespace A002331.P5732514565156998376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A002330 (n + 1) ^ 2 : ℝ)

end

end A002331.P5732514565156998376

/-! ## A002331.P16995724207644066019

`A064875(A002313(n+1))`
-/

namespace A002331.P16995724207644066019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064875 (A002313 (n + 1)).toNat

end

end A002331.P16995724207644066019

/-! ## A002331.P8187544024898781615

`A205790(A280084(n+1))`
-/

namespace A002331.P8187544024898781615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205790 (A280084 (n + 1)).toNat

end

end A002331.P8187544024898781615

/-! ## A002331.P15408586562772101050

`A205790(p?[A004525(2*n+1)+n])`
-/

namespace A002331.P15408586562772101050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205790 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A002331.P15408586562772101050

/-! ## A002331.P18072398650387819147

`A099379(A002313(n+1))-A002330(n+1)`
-/

namespace A002331.P18072398650387819147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099379 (A002313 (n + 1)).toNat - A002330 (n + 1)

end

end A002331.P18072398650387819147

/-!
# A002332: Numbers x such that p = x^2 + 2y^2, with prime p = A033203(n).

The programs for A002332, there is no canonical definition to state claims against.
-/

/-! ## A002332.P4608132174314111239

`A355748(A394795(n+1))-A057077(n)`
-/

namespace A002332.P4608132174314111239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355748 (A394795 (n + 1)).toNat - A057077 n

end

end A002332.P4608132174314111239

/-!
# A002333: Numbers y such that p = x^2 + 2y^2, with prime p = A033203(n).

The programs for A002333, there is no canonical definition to state claims against.
-/

/-! ## A002333.P2363781661217452214

`A002260(A033203(n+1)-A002332(n+1)²)`
-/

namespace A002333.P2363781661217452214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A033203 (n + 1) - A002332 (n + 1) ^ 2).toNat

end

end A002333.P2363781661217452214

/-! ## A002333.P15010440504486247923

`A127093(A033203(n+1)-A002332(n+1)²)`
-/

namespace A002333.P15010440504486247923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (A033203 (n + 1) - A002332 (n + 1) ^ 2).toNat

end

end A002333.P15010440504486247923

/-! ## A002333.P2354236746014848702

`A026729(A033203(n+1)-A002332(n+1)²)`
-/

namespace A002333.P2354236746014848702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 (A033203 (n + 1) - A002332 (n + 1) ^ 2).toNat

end

end A002333.P2354236746014848702

/-! ## A002333.P1630650455411168120

`A089688(A033203(n+1)-A002332(n+1)²)`
-/

namespace A002333.P1630650455411168120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089688 (A033203 (n + 1) - A002332 (n + 1) ^ 2).toNat

end

end A002333.P1630650455411168120

/-!
# A002334: Least positive integer x such that prime A038873(n) = x^2 - 2y^2 for some y.

The programs for A002334, there is no canonical definition to state claims against.
-/

/-! ## A002334.P133077097268580750

`2*A255246(n+1)-A255235(n+1)`
-/

namespace A002334.P133077097268580750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255246 (n + 1) - A255235 (n + 1)

end

end A002334.P133077097268580750

/-! ## A002334.P3868724482501069479

`lcm(2, A255246(n+1)+A002335(n+1))/2`
-/

namespace A002334.P3868724482501069479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A255246 (n + 1) + A002335 (n + 1)) : ℚ) / 2

end

end A002334.P3868724482501069479

/-! ## A002334.P10738432180990118155

`A026741(A255246(n+1)+A002335(n+1))`
-/

namespace A002334.P10738432180990118155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A255246 (n + 1) + A002335 (n + 1)).toNat

end

end A002334.P10738432180990118155

/-! ## A002334.P57978146963423975

`A186646(A255246(n+1)+A002335(n+1))`
-/

namespace A002334.P57978146963423975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186646 (A255246 (n + 1) + A002335 (n + 1)).toNat

end

end A002334.P57978146963423975

/-! ## A002334.P9505758230139762806

`A004277(A255246(n+1))-A255235(n+1)`
-/

namespace A002334.P9505758230139762806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A255246 (n + 1)).toNat - A255235 (n + 1)

end

end A002334.P9505758230139762806

/-! ## A002334.P16457984800696210639

`A002335(n+1)+A255246(n+1)%A017089(n)`
-/

namespace A002334.P16457984800696210639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002335 (n + 1) + Int.tmod (A255246 (n + 1)) (A017089 n)

end

end A002334.P16457984800696210639

/-!
# A002335: Least positive integer y such that A038873(n) = x^2 - 2y^2 for some x.

The programs for A002335, there is no canonical definition to state claims against.
-/

/-! ## A002335.P10769665280561295445

`A002260(A002334(n+1)²-A038873(n+1))`
-/

namespace A002335.P10769665280561295445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A002334 (n + 1) ^ 2 - A038873 (n + 1)).toNat

end

end A002335.P10769665280561295445

/-! ## A002335.P4566741533202153532

`abs(A002334(n+1)-A255246(n+1))`
-/

namespace A002335.P4566741533202153532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002334 (n + 1) - A255246 (n + 1)|

end

end A002335.P4566741533202153532

/-! ## A002335.P5190711108086637456

`abs(A255235(n+1)-A255246(n+1))`
-/

namespace A002335.P5190711108086637456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A255235 (n + 1) - A255246 (n + 1)|

end

end A002335.P5190711108086637456

/-! ## A002335.P18201002639380132514

`abs((A002334(n+1)-A255235(n+1))/2)`
-/

namespace A002335.P18201002639380132514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A002334 (n + 1) - A255235 (n + 1) : ℚ) / 2|

end

end A002335.P18201002639380132514

/-! ## A002335.P3771681021090579524

`A004525(abs(A002334(n+1)-A255235(n+1)))`
-/

namespace A002335.P3771681021090579524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 |A002334 (n + 1) - A255235 (n + 1)|.toNat

end

end A002335.P3771681021090579524

/-! ## A002335.P720482274894927952

`A065033(abs(A002334(n+1)-A255235(n+1)))`
-/

namespace A002335.P720482274894927952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 |A002334 (n + 1) - A255235 (n + 1)|.toNat

end

end A002335.P720482274894927952

/-! ## A002335.P16130235649728157633

`A002334(n+1)-A255246(n+1)%A017089(n)`
-/

namespace A002335.P16130235649728157633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002334 (n + 1) - Int.tmod (A255246 (n + 1)) (A017089 n)

end

end A002335.P16130235649728157633

/-! ## A002335.P565069580263664670

`A255247(A028310(n))-A255248(A028310(n))`
-/

namespace A002335.P565069580263664670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255247 (A028310 n).toNat - A255248 (A028310 n).toNat

end

end A002335.P565069580263664670

/-!
# A002336: Maximal kissing number of n-dimensional laminated lattice.

The programs for A002336, there is no canonical definition to state claims against.
-/

/-! ## A002336.P9895216602137639592

`2*A028924(n)`
-/

namespace A002336.P9895216602137639592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028924 n

end

end A002336.P9895216602137639592

/-! ## A002336.P13512249843544134523

`A005843(A028924(n))`
-/

namespace A002336.P13512249843544134523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A028924 n).toNat

end

end A002336.P13512249843544134523

/-! ## A002336.P10213897240483448383

`A001116(n)`
-/

namespace A002336.P10213897240483448383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001116 n

end

end A002336.P10213897240483448383

/-! ## A002336.P4176479457238027930

`A259343(n)-1`
-/

namespace A002336.P4176479457238027930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259343 n - 1

end

end A002336.P4176479457238027930

/-! ## A002336.P3355730026448334194

`record[xor(1, A259343(∑{digits}[n, #]))]`
-/

namespace A002336.P3355730026448334194
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A259343 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002336.P3355730026448334194

/-!
# A002338: x such that p = (x^2 + 27*y^2)/4, where p is the n-th prime of the form 3*k+1.

The programs for A002338, there is no canonical definition to state claims against.
-/

/-! ## A002338.P18440496145934060517

`abs(A282610(A002476(n+1))/3)`
-/

namespace A002338.P18440496145934060517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A282610 (A002476 (n + 1)).toNat : ℚ) / 3|

end

end A002338.P18440496145934060517

/-! ## A002338.P11629357742196190216

`lcm(A282610(A002476(n+1))/3, A033999(n))`
-/

namespace A002338.P11629357742196190216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A282610 (A002476 (n + 1)).toNat : ℚ) / 3)) (A033999 n)

end

end A002338.P11629357742196190216

/-! ## A002338.P10069733837088767720

`∑{d}[A282610(A002476(n+1))/3, A000010(#)]`
-/

namespace A002338.P10069733837088767720
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282610 (A002476 (n + 1)).toNat : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A000010 d

end

end A002338.P10069733837088767720

/-! ## A002338.P8394834669760647733

`gcd(A282610(A002476(n+1))/3, A073097(2*n))`
-/

namespace A002338.P8394834669760647733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A282610 (A002476 (n + 1)).toNat : ℚ) / 3)) (A073097 (2 * n))

end

end A002338.P8394834669760647733

/-! ## A002338.P12312356687768554105

`gcd(-A282610(A002476(n+1))/3, A057635(2*n+1))`
-/

namespace A002338.P12312356687768554105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (-((A282610 (A002476 (n + 1)).toNat : ℚ) / 3))) (A057635 (2 * n + 1))

end

end A002338.P12312356687768554105

/-! ## A002338.P10954010319961614546

`abs(A123489(n+1))`
-/

namespace A002338.P10954010319961614546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123489 (n + 1)|

end

end A002338.P10954010319961614546

/-! ## A002338.P12385793286726052147

`A178786(A123489(n+1)²)`
-/

namespace A002338.P12385793286726052147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178786 (A123489 (n + 1) ^ 2).toNat

end

end A002338.P12385793286726052147

/-! ## A002338.P16870590499748379206

`gcd(A000038(n), A123489(n+1))`
-/

namespace A002338.P16870590499748379206
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A123489 (n + 1))

end

end A002338.P16870590499748379206

/-! ## A002338.P1106811903309152731

`lcm(A020985(n), A123489(n+1))`
-/

namespace A002338.P1106811903309152731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A123489 (n + 1))

end

end A002338.P1106811903309152731

/-! ## A002338.P1991661228785105326

`∑{d}[A123489(n+1), A000010(#)]`
-/

namespace A002338.P1991661228785105326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123489 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A002338.P1991661228785105326

/-!
# A002339: Positive y such that p = (x^2 + 27*y^2)/4 where p is the n-th prime of the form 6*k+1.

The programs for A002339, there is no canonical definition to state claims against.
-/

/-! ## A002339.P10984223401840709676

`A136176(or(n-A032741(n+1), A252383(n+1)))`
-/

namespace A002339.P10984223401840709676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136176 (Int.lor ((n : ℤ) - A032741 (n + 1)) (A252383 (n + 1))).toNat

end

end A002339.P10984223401840709676

/-! ## A002339.P7776271034460260216

`gcd(A007887(A067804(n)²), A194258(n+1))`
-/

namespace A002339.P7776271034460260216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007887 (A067804 n ^ 2).toNat) (A194258 (n + 1))

end

end A002339.P7776271034460260216

/-! ## A002339.P10367950268927301689

`A374997(A033097(3*n+4)+A001097(n+1))`
-/

namespace A002339.P10367950268927301689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374997 (A033097 (3 * n + 4) + A001097 (n + 1)).toNat

end

end A002339.P10367950268927301689

/-!
# A002341: Numbers y such that p = x^2 - 5y^2, where p = 0, 1, or 4 (mod 5).

The programs for A002341, there is no canonical definition to state claims against.
-/

/-! ## A002341.P1331043935501467701

`A138530(A110751(n+2)^A334549(n))`
-/

namespace A002341.P1331043935501467701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138530 (SequenceMachineLib.roundAway ((A110751 (n + 2) : ℚ) ^ (A334549 n : ℤ))).toNat

end

end A002341.P1331043935501467701

/-!
# A002343: Least positive integer y such that p = (x^2 - 5*y^2)/4 where p is the n-th odd prime such that 5 is a square mod p.

The programs for A002343, there is no canonical definition to state claims against.
-/

/-! ## A002343.P7938085831980180755

`gcd(A022054(n), A086251(A054352(n)))`
-/

namespace A002343.P7938085831980180755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A022054 n) (A086251 (A054352 n).toNat)

end

end A002343.P7938085831980180755

/-! ## A002343.P14479717833464948132

`A270650(C(A087794(n+1), A057356(n)))`
-/

namespace A002343.P14479717833464948132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270650 (Nat.choose (A087794 (n + 1)).toNat (A057356 n).toNat)

end

end A002343.P14479717833464948132

/-! ## A002343.P7290599138265103775

`A329359(A121832(n+1))`
-/

namespace A002343.P7290599138265103775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329359 (A121832 (n + 1)).toNat

end

end A002343.P7290599138265103775

/-! ## A002343.P2591035978260454329

`A115583(A001097(n+1)-1)`
-/

namespace A002343.P2591035978260454329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115583 (A001097 (n + 1) - 1).toNat

end

end A002343.P2591035978260454329

/-! ## A002343.P1743388725921497038

`A115583(xor(1, A001097(n+1)))`
-/

namespace A002343.P1743388725921497038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115583 (Int.xor 1 (A001097 (n + 1))).toNat

end

end A002343.P1743388725921497038

/-!
# A002345: Numbers y such that p = x^2 + 7y^2, with prime p = A033207(n).

The programs for A002345, there is no canonical definition to state claims against.
-/

/-! ## A002345.P14083430314569793307

`A342749(A333574(n+1)-A007094(n))`
-/

namespace A002345.P14083430314569793307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342749 (A333574 (n + 1) - A007094 n).toNat

end

end A002345.P14083430314569793307

/-! ## A002345.P9959928691646722609

`A001221(xor(A000081(n), A035470(n+5)))`
-/

namespace A002345.P9959928691646722609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.xor (A000081 n) (A035470 (n + 5))).toNat

end

end A002345.P9959928691646722609

/-! ## A002345.P13781959036384927603

`A000194(and(A187829(n+1), A216108(n+1)))`
-/

namespace A002345.P13781959036384927603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (Int.land (A187829 (n + 1)) (A216108 (n + 1))).toNat

end

end A002345.P13781959036384927603

/-! ## A002345.P15691845431830294381

`A008621(and(A187829(n+1), A216108(n+1)))`
-/

namespace A002345.P15691845431830294381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (Int.land (A187829 (n + 1)) (A216108 (n + 1))).toNat

end

end A002345.P15691845431830294381

/-! ## A002345.P7376030419984824140

`A384157(A315432(n+1))`
-/

namespace A002345.P7376030419984824140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384157 (A315432 (n + 1)).toNat

end

end A002345.P7376030419984824140

/-!
# A002347: Consider all primes of form p = (x^2 + 11y^2 )/4; sequence gives values of y.

The programs for A002347, there is no canonical definition to state claims against.
-/

/-! ## A002347.P10845350903476136907

`A004737(record[A166597(A233074(n+1))])`
-/

namespace A002347.P10845350903476136907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (A233074 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A002347.P10845350903476136907

/-! ## A002347.P14904776241517648206

`A220073(comp[∑[a(n-1)-2]]+1)` with `a(0)=2, a(1)=5`
-/

namespace A002347.P14904776241517648206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n f2 =>
  f2 (n - 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220073 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A002347.P14904776241517648206

/-! ## A002347.P16217837893686686035

`A020650(∑[∑{p}[n+1, gcd(n, #)]]^A193512(2*n+1))`
-/

namespace A002347.P16217837893686686035
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.gcd n p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020650 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (A193512 (2 * n + 1) : ℤ))).toNat

end

end A002347.P16217837893686686035

/-! ## A002347.P7628147716956991244

`A244231(A000079(n+3)-A002061(n))`
-/

namespace A002347.P7628147716956991244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244231 (A000079 (n + 3) - A002061 n).toNat

end

end A002347.P7628147716956991244

/-!
# A002348: Degree of rational Poncelet porism of n-gon.

The programs for A002348, the canonical program `A002348.P6030905944385713737` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002348 has offset 3).

The definition of A002348 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002348.P6030905944385713737

`A115000(2*(n+3))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A002348

/-- `A115000(2*(n+3))` -/
def P6030905944385713737.Spec : Prop :=
  ∀ n, P6030905944385713737.a n = A002348 (n + 3)

theorem P6030905944385713737.correct : P6030905944385713737.Spec := by
  intro n
  simp only [A002348, Nat.add_sub_cancel]

end A002348

/-! ## A002348.P11953822364933378828

`lcm(A033999(n), A115000(A005843(n+3)))`
-/

namespace A002348.P11953822364933378828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A115000 (A005843 (n + 3)).toNat)

end

end A002348.P11953822364933378828

namespace A002348

/-- `lcm(A033999(n), A115000(A005843(n+3)))` -/
def P11953822364933378828.Spec : Prop :=
  ∀ n, (P11953822364933378828.a n : ℤ) = A002348 (n + 3)

end A002348

/-! ## A002348.P6641668279609369639

`A115000(A005843(n+3))%A016028(n+2)`
-/

namespace A002348.P6641668279609369639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115000 (A005843 (n + 3)).toNat) (A016028 (n + 2))

end

end A002348.P6641668279609369639

namespace A002348

/-- `A115000(A005843(n+3))%A016028(n+2)` -/
def P6641668279609369639.Spec : Prop :=
  ∀ n, P6641668279609369639.a n = A002348 (n + 3)

end A002348

/-! ## A002348.P4428605507916055926

`A033999(A005843(n))+A115000(A005843(n+3))-1`
-/

namespace A002348.P4428605507916055926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A005843 n).toNat + (A115000 (A005843 (n + 3)).toNat - 1)

end

end A002348.P4428605507916055926

namespace A002348

/-- `A033999(A005843(n))+A115000(A005843(n+3))-1` -/
def P4428605507916055926.Spec : Prop :=
  ∀ n, P4428605507916055926.a n = A002348 (n + 3)

end A002348

/-! ## A002348.P15273344693770199302

`A023023(2*(n+3))/2`
-/

namespace A002348.P15273344693770199302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023023 (2 * (n + 3)) : ℚ) / 2

end

end A002348.P15273344693770199302

namespace A002348

/-- `A023023(2*(n+3))/2` -/
def P15273344693770199302.Spec : Prop :=
  ∀ n, P15273344693770199302.a n = (A002348 (n + 3) : ℚ)

end A002348

/-! ## A002348.P18263891176735938988

`A007434(2*(n+3))/24`
-/

namespace A002348.P18263891176735938988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007434 (2 * (n + 3)) : ℚ) / 24

end

end A002348.P18263891176735938988

namespace A002348

/-- `A007434(2*(n+3))/24` -/
def P18263891176735938988.Spec : Prop :=
  ∀ n, P18263891176735938988.a n = (A002348 (n + 3) : ℚ)

end A002348

/-! ## A002348.P17150436833035796252

`A004526(A023023(2*(n+3)))`
-/

namespace A002348.P17150436833035796252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A023023 (2 * (n + 3))).toNat

end

end A002348.P17150436833035796252

namespace A002348

/-- `A004526(A023023(2*(n+3)))` -/
def P17150436833035796252.Spec : Prop :=
  ∀ n, P17150436833035796252.a n = A002348 (n + 3)

end A002348

/-! ## A002348.P11781133472675494069

`A008619(A023023(2*(n+3))-1)`
-/

namespace A002348.P11781133472675494069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A023023 (2 * (n + 3)) - 1).toNat

end

end A002348.P11781133472675494069

namespace A002348

/-- `A008619(A023023(2*(n+3))-1)` -/
def P11781133472675494069.Spec : Prop :=
  ∀ n, P11781133472675494069.a n = A002348 (n + 3)

end A002348

/-!
# A002349: Take solution to Pellian equation x^2 - n*y^2 = 1 with smallest positive y and x >= 0; sequence gives a(n) = y, or 0 if n is a square. A002350 gives values of x.

The programs for A002349, there is no canonical definition to state claims against.
-/

/-! ## A002349.P11588085323876126225

`sqrt(A069018(n+1))`
-/

namespace A002349.P11588085323876126225
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A069018 (n + 1) : ℝ)

end

end A002349.P11588085323876126225

/-! ## A002349.P9835489019594735870

`A069018(n+1)^(A008486(n)/A008458(n))`
-/

namespace A002349.P9835489019594735870
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A069018 (n + 1) : ℝ) ^ ((A008486 n : ℚ) / (A008458 n : ℚ) : ℝ)

end

end A002349.P9835489019594735870

/-! ## A002349.P9880203105312898690

`A069018(n+1)^(A005408(n)/A016825(n))`
-/

namespace A002349.P9880203105312898690
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A069018 (n + 1) : ℝ) ^ ((A005408 n : ℚ) / (A016825 n : ℚ) : ℝ)

end

end A002349.P9880203105312898690

/-! ## A002349.P15529061791880487587

`A069018(n+1)^(A033313(n+1)/A180495(n+2))`
-/

namespace A002349.P15529061791880487587
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A069018 (n + 1) : ℝ) ^ ((A033313 (n + 1) : ℚ) / (A180495 (n + 2) : ℚ) : ℝ)

end

end A002349.P15529061791880487587

/-!
# A002350: Take solution to Pellian equation x^2 - n*y^2 = 1 with smallest positive y and x >= 0; sequence gives a(n) = x, or 1 if n is a square. A002349 gives values of y.

The programs for A002350, there is no canonical definition to state claims against.
-/

/-! ## A002350.P13857339439205996831

`A006702((n+1)*(A068716(n+1)+1)²)`
-/

namespace A002350.P13857339439205996831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006702 ((n + 1 : ℤ) * (A068716 (n + 1) + 1) ^ 2).toNat

end

end A002350.P13857339439205996831

/-! ## A002350.P3218897116999450271

`sqrt((n+1)*A069018(n+1)+1)`
-/

namespace A002350.P3218897116999450271
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n + 1 : ℤ) * A069018 (n + 1) + 1 : ℝ)

end

end A002350.P3218897116999450271

/-! ## A002350.P8063401508278308630

`A091015(n+1)/ratio[A214080(n)]`
-/

namespace A002350.P8063401508278308630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214080 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091015 (n + 1) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A002350.P8063401508278308630

/-! ## A002350.P13895179712458252847

`A091015(n+1)^Δ[A028391(n)]`
-/

namespace A002350.P13895179712458252847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091015 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A002350.P13895179712458252847

/-! ## A002350.P10169622773044534056

`gcd(Δ[A000196(n)], A091015(n+1))`
-/

namespace A002350.P10169622773044534056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A091015 (n + 1))

end

end A002350.P10169622773044534056

/-! ## A002350.P14647595927717896171

`A091015(n+1)/A056926(n+1)`
-/

namespace A002350.P14647595927717896171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091015 (n + 1) : ℚ) / (A056926 (n + 1) : ℚ)

end

end A002350.P14647595927717896171

/-! ## A002350.P17135898321648184999

`A091015(n+1)^and(1, A000005(4*(n+1))+1)`
-/

namespace A002350.P17135898321648184999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091015 (n + 1) : ℚ) ^ (Int.land 1 (A000005 (4 * (n + 1)) + 1) : ℤ)

end

end A002350.P17135898321648184999

/-! ## A002350.P8334452865412719059

`A091015(n+1)^C(2, A020639(A000005(n+1)+2))`
-/

namespace A002350.P8334452865412719059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091015 (n + 1) ^ Nat.choose 2 (A020639 (A000005 (n + 1) + 2).toNat).toNat

end

end A002350.P8334452865412719059

/-! ## A002350.P14321946914339354803

`A091015(n+1)^A008683((-1)^A000005(n+1)+5)`
-/

namespace A002350.P14321946914339354803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091015 (n + 1) : ℚ) ^ (A008683 (SequenceMachineLib.roundAway ((-1 : ℚ) ^ (A000005 (n + 1) : ℤ) + 5)).toNat : ℤ)

end

end A002350.P14321946914339354803

/-!
# A002353: Denominators of convergents to cube root of 3.

The programs for A002353, there is no canonical definition to state claims against.
-/

/-! ## A002353.P5583643071541930538

`A248227(A002354(n))`
-/

namespace A002353.P5583643071541930538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A002354 n).toNat

end

end A002353.P5583643071541930538

/-!
# A002355: Denominators of convergents to cube root of 4.

The programs for A002355, there is no canonical definition to state claims against.
-/

/-! ## A002355.P2867448378252426613

`A051162(A322141(n+1)+A138292(n))`
-/

namespace A002355.P2867448378252426613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (A322141 (n + 1) + A138292 n).toNat

end

end A002355.P2867448378252426613

/-!
# A002357: Denominators of convergents to cube root of 5.

The programs for A002357, there is no canonical definition to state claims against.
-/

/-! ## A002357.P10925120818413488163

`Δ[A228431(∑[A104350(n+1)])]`
-/

namespace A002357.P10925120818413488163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104350 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228431 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002357.P10925120818413488163

/-! ## A002357.P14410539048849457023

`A242511(n)+A213725(A052841(n))`
-/

namespace A002357.P14410539048849457023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242511 n + A213725 (A052841 n).toNat

end

end A002357.P14410539048849457023

/-!
# A002358: Numerators of convergents to cube root of 5.

The programs for A002358, there is no canonical definition to state claims against.
-/

/-! ## A002358.P7108518005258665372

`A328803(A063074(n)+1)`
-/

namespace A002358.P7108518005258665372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328803 (A063074 n + 1).toNat

end

end A002358.P7108518005258665372

/-! ## A002358.P212405410332754110

`A316997(or(n, A006134(n)))`
-/

namespace A002358.P212405410332754110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316997 (Int.lor (n : ℤ) (A006134 n)).toNat

end

end A002358.P212405410332754110

/-!
# A002359: Denominators of continued fraction convergents to cube root of 6.

The programs for A002359, there is no canonical definition to state claims against.
-/

/-! ## A002359.P3542685417665076084

`A100679(A002360(n))`
-/

namespace A002359.P3542685417665076084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100679 (A002360 n).toNat

end

end A002359.P3542685417665076084

/-! ## A002359.P11715708784895263373

`A135941(C(A000040(n+1), n))`
-/

namespace A002359.P11715708784895263373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135941 (Nat.choose (A000040 (n + 1)).toNat n)

end

end A002359.P11715708784895263373

/-!
# A002360: Numerators of continued fraction convergents to cube root of 6.

The programs for A002360, there is no canonical definition to state claims against.
-/

/-! ## A002360.P12751262170843130418

`A088242(Δ[∏[Δ[n²]]])`
-/

namespace A002360.P12751262170843130418
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088242 (f1 (n + 1) - f1 n).toNat

end

end A002360.P12751262170843130418

/-!
# A002363: Denominators of continued fraction convergents to fifth root of 5.

The programs for A002363, there is no canonical definition to state claims against.
-/

/-! ## A002363.P3355729246047498179

`A005375(A002364(n))`
-/

namespace A002363.P3355729246047498179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005375 (A002364 n).toNat

end

end A002363.P3355729246047498179

/-!
# A002364: Numerators of continued fraction convergents to fifth root of 5.

The programs for A002364, there is no canonical definition to state claims against.
-/

/-! ## A002364.P16224186697959200210

`A071766(∑[∏[A028326(n)]])`
-/

namespace A002364.P16224186697959200210
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A002364.P16224186697959200210

/-!
# A002365: Numbers y such that p^2 = x^2 + y^2, 0 < x < y, p = A002144(n).

The programs for A002365, there is no canonical definition to state claims against.
-/

/-! ## A002365.P7068222580725791572

`sqrt(A002144(n+1)²-A002366(n+1)²)`
-/

namespace A002365.P7068222580725791572
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A002144 (n + 1) ^ 2 - A002366 (n + 1) ^ 2 : ℝ)

end

end A002365.P7068222580725791572

/-! ## A002365.P15221145425372907404

`A070079(n+1)+A145046(n)-A002366(n+1)`
-/

namespace A002365.P15221145425372907404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070079 (n + 1) + (A145046 n - A002366 (n + 1))

end

end A002365.P15221145425372907404

/-! ## A002365.P18018594315037295710

`sqrt(A002313(n+2)²-A002366(n+1)²)`
-/

namespace A002365.P18018594315037295710
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A002313 (n + 2) ^ 2 - A002366 (n + 1) ^ 2 : ℝ)

end

end A002365.P18018594315037295710

/-! ## A002365.P9112623370252599344

`2/A002366(n+1)*A145010(n+1)`
-/

namespace A002365.P9112623370252599344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A002366 (n + 1) : ℚ) * (A145010 (n + 1) : ℚ)

end

end A002365.P9112623370252599344

/-! ## A002365.P7999133531895282801

`A139794(3*n+2)`
-/

namespace A002365.P7999133531895282801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139794 (3 * n + 2)

end

end A002365.P7999133531895282801

/-! ## A002365.P12392004922440732753

`A108708(A002144(n+1))`
-/

namespace A002365.P12392004922440732753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108708 (A002144 (n + 1)).toNat

end

end A002365.P12392004922440732753

/-! ## A002365.P3797906253471843940

`A108708(A002313(n+2))`
-/

namespace A002365.P3797906253471843940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108708 (A002313 (n + 2)).toNat

end

end A002365.P3797906253471843940

/-! ## A002365.P10571626812233241698

`A108708(A280084(n+2))`
-/

namespace A002365.P10571626812233241698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108708 (A280084 (n + 2)).toNat

end

end A002365.P10571626812233241698

/-!
# A002366: Numbers x such that x^2 + y^2 = p^2 = A002144(n)^2, x < y.

The programs for A002366, there is no canonical definition to state claims against.
-/

/-! ## A002366.P6656351499821942199

`sqrt(A002144(n+1)²-A002365(n+1)²)`
-/

namespace A002366.P6656351499821942199
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A002144 (n + 1) ^ 2 - A002365 (n + 1) ^ 2 : ℝ)

end

end A002366.P6656351499821942199

/-! ## A002366.P7793789631083708464

`A070079(n+1)+A145046(n)-A002365(n+1)`
-/

namespace A002366.P7793789631083708464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070079 (n + 1) + (A145046 n - A002365 (n + 1))

end

end A002366.P7793789631083708464

/-! ## A002366.P16935238368588685719

`sqrt(A002313(n+2)²-A002365(n+1)²)`
-/

namespace A002366.P16935238368588685719
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A002313 (n + 2) ^ 2 - A002365 (n + 1) ^ 2 : ℝ)

end

end A002366.P16935238368588685719

/-! ## A002366.P7766733303906469221

`2/A002365(n+1)*A145010(n+1)`
-/

namespace A002366.P7766733303906469221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A002365 (n + 1) : ℚ) * (A145010 (n + 1) : ℚ)

end

end A002366.P7766733303906469221

/-! ## A002366.P10727597522965570254

`A139794(3*n+1)`
-/

namespace A002366.P10727597522965570254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139794 (3 * n + 1)

end

end A002366.P10727597522965570254

/-! ## A002366.P10864081109348521038

`A055525(A002144(n+1))`
-/

namespace A002366.P10864081109348521038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055525 (A002144 (n + 1)).toNat

end

end A002366.P10864081109348521038

/-! ## A002366.P10677502785391574941

`A055525(A002313(n+2))`
-/

namespace A002366.P10677502785391574941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055525 (A002313 (n + 2)).toNat

end

end A002366.P10677502785391574941

/-! ## A002366.P13143641686659512398

`A055525(A280084(n+2))`
-/

namespace A002366.P13143641686659512398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055525 (A280084 (n + 2)).toNat

end

end A002366.P13143641686659512398

/-!
# A002368: Let p = A007645(n) be the n-th generalized cuban prime and write p^2 = x^2 + 3*y^2 with y > 0; a(n) = y.

The programs for A002368, there is no canonical definition to state claims against.
-/

/-! ## A002368.P14553571875522271608

`2*A001479(n+2)*A001480(n+2)`
-/

namespace A002368.P14553571875522271608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001479 (n + 2) * A001480 (n + 2))

end

end A002368.P14553571875522271608

/-!
# A002369: Number of ways of folding a strip of n rectangular stamps.

The programs for A002369, there is no canonical definition to state claims against.
-/

/-! ## A002369.P7538821869378688567

`A100196(or(n, A150179(n)))`
-/

namespace A002369.P7538821869378688567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (Int.lor (n : ℤ) (A150179 n)).toNat

end

end A002369.P7538821869378688567

/-! ## A002369.P990295140265711580

`A100196(A150179(n)+A073200(n))`
-/

namespace A002369.P990295140265711580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A150179 n + A073200 n).toNat

end

end A002369.P990295140265711580

/-! ## A002369.P17835711295246906125

`A100196(A150179(n)+A100196(n)²)`
-/

namespace A002369.P17835711295246906125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A150179 n + A100196 n ^ 2).toNat

end

end A002369.P17835711295246906125

/-! ## A002369.P10929734072643882399

`A100196(A150179(n)+A127094(n+1))`
-/

namespace A002369.P10929734072643882399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A150179 n + A127094 (n + 1)).toNat

end

end A002369.P10929734072643882399

/-!
# A002370: a(n) = (2*n-1)^2 * a(n-1) - 3*C(2*n-1,3) * a(n-2) for n>1; a(0) = a(1) = 1.

The programs for A002370, there is no canonical definition to state claims against.
-/

/-! ## A002370.P12331518568164738463

`A001147(n)*A002801(n)`
-/

namespace A002370.P12331518568164738463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 n * A002801 n

end

end A002370.P12331518568164738463

/-! ## A002370.P11688402899873223471

`A167028(2*(A000007(n)+n))`
-/

namespace A002370.P11688402899873223471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167028 (2 * (A000007 n + (n : ℤ))).toNat

end

end A002370.P11688402899873223471

/-! ## A002370.P12996408679413460650

`A167028(2*(A112316(n)+n))`
-/

namespace A002370.P12996408679413460650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167028 (2 * (A112316 n + (n : ℤ))).toNat

end

end A002370.P12996408679413460650

/-! ## A002370.P8792191876494711227

`A000007(n)+record[A167028(n+1)]`
-/

namespace A002370.P8792191876494711227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002370.P8792191876494711227

/-! ## A002370.P8764435824324911875

`A112316(n)+record[A167028(n+1)]`
-/

namespace A002370.P8764435824324911875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112316 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002370.P8764435824324911875

/-!
# A002371: Period of decimal expansion of 1/(n-th prime) (0 by convention for the primes 2 and 5).

The programs for A002371, there is no canonical definition to state claims against.
-/

/-! ## A002371.P8244525024392564469

`A071126(n+1)/A261143(n)`
-/

namespace A002371.P8244525024392564469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071126 (n + 1) : ℚ) / (A261143 n : ℚ)

end

end A002371.P8244525024392564469

/-! ## A002371.P11096689812509824900

`and(A071126(n+1), A134824(n))`
-/

namespace A002371.P11096689812509824900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A071126 (n + 1)) (A134824 n)

end

end A002371.P11096689812509824900

/-! ## A002371.P150217554209022631

`and(A071126(n+1), A260196(n))`
-/

namespace A002371.P150217554209022631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A071126 (n + 1)) (A260196 n)

end

end A002371.P150217554209022631

/-! ## A002371.P1418549046417133038

`A048595(n+1)-A154272(n+1)`
-/

namespace A002371.P1418549046417133038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048595 (n + 1) - A154272 (n + 1)

end

end A002371.P1418549046417133038

/-! ## A002371.P1385803692384564449

`A071126(n+1)/(A130713(n)+1)`
-/

namespace A002371.P1385803692384564449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071126 (n + 1) : ℚ) / (A130713 n + 1 : ℚ)

end

end A002371.P1385803692384564449

/-! ## A002371.P6041858233438119335

`lcm(A048595(n+1), A072860(n+1))`
-/

namespace A002371.P6041858233438119335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A048595 (n + 1)) (A072860 (n + 1))

end

end A002371.P6041858233438119335

/-! ## A002371.P14656200840101841570

`A006093(n+1)/A060370(n+1)-A154272(n+1)`
-/

namespace A002371.P14656200840101841570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) : ℚ) / (A060370 (n + 1) : ℚ) - (A154272 (n + 1) : ℚ)

end

end A002371.P14656200840101841570

/-! ## A002371.P7665044825883984266

`(A000040(n+1)-1)/A060370(n+1)-A154272(n+1)`
-/

namespace A002371.P7665044825883984266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) - 1 : ℚ) / (A060370 (n + 1) : ℚ) - (A154272 (n + 1) : ℚ)

end

end A002371.P7665044825883984266

/-! ## A002371.P4010720116514952465

`A071126(n+1)%A000070(n)`
-/

namespace A002371.P4010720116514952465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071126 (n + 1)) (A000070 n)

end

end A002371.P4010720116514952465

/-! ## A002371.P8768996125468063799

`A051626(p?[comp[n²]])`
-/

namespace A002371.P8768996125468063799
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A002371.P8768996125468063799

/-! ## A002371.P16642404908201626191

`A051626(Δ[A007504(n)])`
-/

namespace A002371.P16642404908201626191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (f1 (n + 1) - f1 n).toNat

end

end A002371.P16642404908201626191

/-! ## A002371.P264353178502638663

`A051626(A000040(n+1))`
-/

namespace A002371.P264353178502638663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (A000040 (n + 1)).toNat

end

end A002371.P264353178502638663

/-! ## A002371.P11216762006851471580

`A051626(A006005(n+1))`
-/

namespace A002371.P11216762006851471580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (A006005 (n + 1)).toNat

end

end A002371.P11216762006851471580

/-! ## A002371.P1501125309538231266

`A051626(A161847(n+1))`
-/

namespace A002371.P1501125309538231266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (A161847 (n + 1)).toNat

end

end A002371.P1501125309538231266

/-! ## A002371.P12117199177565264249

`A051626(A008578(n+2))`
-/

namespace A002371.P12117199177565264249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (A008578 (n + 2)).toNat

end

end A002371.P12117199177565264249

/-! ## A002371.P11885582323942663017

`A051626(record[A006530(n+2)])`
-/

namespace A002371.P11885582323942663017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A002371.P11885582323942663017

/-! ## A002371.P12696771586062426026

`A051626(record[A014963(n+2)])`
-/

namespace A002371.P12696771586062426026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A002371.P12696771586062426026

/-! ## A002371.P15247510993548242827

`A051626(record[A020639(n+2)])`
-/

namespace A002371.P15247510993548242827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A002371.P15247510993548242827

/-! ## A002371.P8133814475688888181

`A051626(A006093(n+1)+1)`
-/

namespace A002371.P8133814475688888181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (A006093 (n + 1) + 1).toNat

end

end A002371.P8133814475688888181

/-! ## A002371.P137193706494507619

`A051626(A040976(n+1)+2)`
-/

namespace A002371.P137193706494507619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (A040976 (n + 1) + 2).toNat

end

end A002371.P137193706494507619

/-!
# A002372: Goldbach conjecture: number of decompositions of 2n into ordered sums of two odd primes.

The programs for A002372, there is no canonical definition to state claims against.
-/

/-! ## A002372.P10139033680066891412

`A035026(n+1)-char[1]`
-/

namespace A002372.P10139033680066891412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035026 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A002372.P10139033680066891412

/-! ## A002372.P4018651741811705935

`A035026(A060576(n)+n)`
-/

namespace A002372.P4018651741811705935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035026 (A060576 n + (n : ℤ)).toNat

end

end A002372.P4018651741811705935

/-! ## A002372.P8970886022947493307

`A035026(A105812(n)²+n)`
-/

namespace A002372.P8970886022947493307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035026 (A105812 n ^ 2 + (n : ℤ)).toNat

end

end A002372.P8970886022947493307

/-! ## A002372.P10028332889978245016

`A035026(A159075(n)+1+n)`
-/

namespace A002372.P10028332889978245016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035026 (A159075 n + 1 + (n : ℤ)).toNat

end

end A002372.P10028332889978245016

/-! ## A002372.P14788197287964519631

`A035026(1-A063524(n)+n)`
-/

namespace A002372.P14788197287964519631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035026 (1 - A063524 n + (n : ℤ)).toNat

end

end A002372.P14788197287964519631

/-! ## A002372.P170520636767373793

`A035026(A140139(n+1)-n)`
-/

namespace A002372.P170520636767373793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035026 (A140139 (n + 1) - (n : ℤ)).toNat

end

end A002372.P170520636767373793

/-! ## A002372.P15298933861730785608

`A035026(1-(A063524(n)-n))`
-/

namespace A002372.P15298933861730785608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035026 (1 - (A063524 n - (n : ℤ))).toNat

end

end A002372.P15298933861730785608

/-! ## A002372.P5099183140730549706

`A035026(n+1)*A157928(n)`
-/

namespace A002372.P5099183140730549706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035026 (n + 1) * A157928 n

end

end A002372.P5099183140730549706

/-! ## A002372.P17942325821137313614

`lcm(A035026(n+1), A105812(n))`
-/

namespace A002372.P17942325821137313614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A035026 (n + 1)) (A105812 n)

end

end A002372.P17942325821137313614

/-! ## A002372.P12748664789676881548

`A035026(xor(1, A063524(n))+n)`
-/

namespace A002372.P12748664789676881548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035026 (Int.xor 1 (A063524 n) + (n : ℤ)).toNat

end

end A002372.P12748664789676881548

/-! ## A002372.P15972942832664878935

`A035026(A134323(n+1)²+n)`
-/

namespace A002372.P15972942832664878935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035026 (A134323 (n + 1) ^ 2 + (n : ℤ)).toNat

end

end A002372.P15972942832664878935

/-! ## A002372.P444563408858487597

`A061357(n+1)+A002375(n+1)`
-/

namespace A002372.P444563408858487597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (n + 1) + A002375 (n + 1)

end

end A002372.P444563408858487597

/-! ## A002372.P764109181506861280

`A112773(n+1)%2*A035026(n+1)`
-/

namespace A002372.P764109181506861280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112773 (n + 1)) 2 * A035026 (n + 1)

end

end A002372.P764109181506861280

/-! ## A002372.P14623533093943605566

`∑{d}[n+1, A008683(#)*A245642((n+1)/#)]`
-/

namespace A002372.P14623533093943605566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A245642 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A002372.P14623533093943605566

/-! ## A002372.P12932467950473905602

`A035026(A227065(n+1)+A002375(n+1))`
-/

namespace A002372.P12932467950473905602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035026 (A227065 (n + 1) + A002375 (n + 1)).toNat

end

end A002372.P12932467950473905602

/-! ## A002372.P2051199191575565052

`A002375(n+1)+A279794(n+1)+A279792(n+1)`
-/

namespace A002372.P2051199191575565052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (n + 1) + (A279794 (n + 1) + A279792 (n + 1))

end

end A002372.P2051199191575565052

/-! ## A002372.P9806831359453839796

`A002375(n+1)+A045917(n+1)-A010051(n+1)`
-/

namespace A002372.P9806831359453839796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (n + 1) + (A045917 (n + 1) - A010051 (n + 1))

end

end A002372.P9806831359453839796

/-! ## A002372.P13111497804780133957

`A002375(n+1)+A035026(n+1)-A045917(n+1)`
-/

namespace A002372.P13111497804780133957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (n + 1) + (A035026 (n + 1) - A045917 (n + 1))

end

end A002372.P13111497804780133957

/-!
# A002373: Smallest prime in decomposition of 2n into sum of two odd primes.

The programs for A002373, there is no canonical definition to state claims against.
-/

/-! ## A002373.P14524685820327208324

`A020481(n+3)`
-/

namespace A002373.P14524685820327208324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020481 (n + 3)

end

end A002373.P14524685820327208324

/-! ## A002373.P7953183699982255692

`2*A255274(n+1)+1`
-/

namespace A002373.P7953183699982255692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255274 (n + 1) + 1

end

end A002373.P7953183699982255692

/-! ## A002373.P4484124301693966510

`2*(n+3)-A020482(n+3)`
-/

namespace A002373.P4484124301693966510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 3) : ℤ) - A020482 (n + 3)

end

end A002373.P4484124301693966510

/-! ## A002373.P3298593261504426899

`A060264(A255274(n+1))`
-/

namespace A002373.P3298593261504426899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 (A255274 (n + 1)).toNat

end

end A002373.P3298593261504426899

/-! ## A002373.P2415815998326127498

`A060265(A255274(n+1)+1)`
-/

namespace A002373.P2415815998326127498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060265 (A255274 (n + 1) + 1).toNat

end

end A002373.P2415815998326127498

/-! ## A002373.P8246054052611343840

`A060308(A255274(n+1)+1)`
-/

namespace A002373.P8246054052611343840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (A255274 (n + 1) + 1).toNat

end

end A002373.P8246054052611343840

/-! ## A002373.P1582193577668745920

`A020482(A255274(n+1)+2)`
-/

namespace A002373.P1582193577668745920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (A255274 (n + 1) + 2).toNat

end

end A002373.P1582193577668745920

/-! ## A002373.P12726123046970362417

`A000265(A255274(n+1)+A255274(n+1)+1)`
-/

namespace A002373.P12726123046970362417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A255274 (n + 1) + (A255274 (n + 1) + 1)).toNat

end

end A002373.P12726123046970362417

/-! ## A002373.P2695570871133819638

`A006530(A255274(n+1)+A255274(n+1)+1)`
-/

namespace A002373.P2695570871133819638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A255274 (n + 1) + (A255274 (n + 1) + 1)).toNat

end

end A002373.P2695570871133819638

/-! ## A002373.P7931988060085188932

`A327938(A255274(n+1)+A255274(n+1)+1)`
-/

namespace A002373.P7931988060085188932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327938 (A255274 (n + 1) + (A255274 (n + 1) + 1)).toNat

end

end A002373.P7931988060085188932

/-! ## A002373.P4611427936153334261

`Δ[A380545(n+2)]`
-/

namespace A002373.P4611427936153334261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002373.P4611427936153334261

/-! ## A002373.P2390786465529923856

`3-A047949(n+3)+n`
-/

namespace A002373.P2390786465529923856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A047949 (n + 3) + (n : ℤ)

end

end A002373.P2390786465529923856

/-! ## A002373.P13058219829278439182

`n-A023445(A047949(n+3))`
-/

namespace A002373.P13058219829278439182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023445 (A047949 (n + 3)).toNat

end

end A002373.P13058219829278439182

/-! ## A002373.P4323873064151619745

`A380545(n+3)-A380545(n+2)`
-/

namespace A002373.P4323873064151619745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380545 (n + 3) - A380545 (n + 2)

end

end A002373.P4323873064151619745

/-! ## A002373.P14372606982061400357

`A002374(n+3)-A112824(n+3)`
-/

namespace A002373.P14372606982061400357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002374 (n + 3) - A112824 (n + 3)

end

end A002373.P14372606982061400357

/-! ## A002373.P16499794717913446916

`A112823(n+3)-A112824(n+3)`
-/

namespace A002373.P16499794717913446916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112823 (n + 3) - A112824 (n + 3)

end

end A002373.P16499794717913446916

/-! ## A002373.P18253192799836988168

`A073046(n+3)/A020482(n+3)`
-/

namespace A002373.P18253192799836988168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073046 (n + 3) : ℚ) / (A020482 (n + 3) : ℚ)

end

end A002373.P18253192799836988168

/-! ## A002373.P1332348482354076482

`A112823(n+3)+A234345(n+3)-A020482(n+3)`
-/

namespace A002373.P1332348482354076482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112823 (n + 3) + (A234345 (n + 3) - A020482 (n + 3))

end

end A002373.P1332348482354076482

/-! ## A002373.P12347508773927578826

`n+3-A303603(n+3)/2`
-/

namespace A002373.P12347508773927578826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) - (A303603 (n + 3) : ℚ) / 2

end

end A002373.P12347508773927578826

/-! ## A002373.P17300930947148536341

`A000040(A377758(n+3))`
-/

namespace A002373.P17300930947148536341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A377758 (n + 3)).toNat

end

end A002373.P17300930947148536341

/-!
# A002374: Largest prime <= n in any decomposition of 2n into a sum of two odd primes.

The programs for A002374, there is no canonical definition to state claims against.
-/

/-! ## A002374.P12784508593434580228

`A112823(n+3)`
-/

namespace A002374.P12784508593434580228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112823 (n + 3)

end

end A002374.P12784508593434580228

/-! ## A002374.P17409776795892872679

`3-A047160(n+3)+n`
-/

namespace A002374.P17409776795892872679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A047160 (n + 3) + (n : ℤ)

end

end A002374.P17409776795892872679

/-! ## A002374.P11146094922656872474

`2*(n+3)-A234345(n+3)`
-/

namespace A002374.P11146094922656872474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 3) : ℤ) - A234345 (n + 3)

end

end A002374.P11146094922656872474

/-! ## A002374.P13052116429388796470

`n+3-A066285(n+3)/2`
-/

namespace A002374.P13052116429388796470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) - (A066285 (n + 3) : ℚ) / 2

end

end A002374.P13052116429388796470

/-! ## A002374.P6950661381740556414

`A112824(n+3)+A002373(n+3)`
-/

namespace A002374.P6950661381740556414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112824 (n + 3) + A002373 (n + 3)

end

end A002374.P6950661381740556414

/-! ## A002374.P2801628545453050093

`A112824(n+3)+A020481(n+3)`
-/

namespace A002374.P2801628545453050093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112824 (n + 3) + A020481 (n + 3)

end

end A002374.P2801628545453050093

/-! ## A002374.P15305513554042869410

`A234345(n+3)-A066285(n+3)`
-/

namespace A002374.P15305513554042869410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234345 (n + 3) - A066285 (n + 3)

end

end A002374.P15305513554042869410

/-! ## A002374.P8826953188073783978

`3-A325142(n+3)+n`
-/

namespace A002374.P8826953188073783978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A325142 (n + 3) + (n : ℤ)

end

end A002374.P8826953188073783978

/-! ## A002374.P11114292394904691952

`A331634(2*(n+3))`
-/

namespace A002374.P11114292394904691952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331634 (2 * (n + 3))

end

end A002374.P11114292394904691952

/-! ## A002374.P4396997729392678348

`A184995(A045919(n+3)+1)`
-/

namespace A002374.P4396997729392678348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184995 (A045919 (n + 3) + 1).toNat

end

end A002374.P4396997729392678348

/-! ## A002374.P97396529396668520

`A184995(A045922(n+3)+2)`
-/

namespace A002374.P97396529396668520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184995 (A045922 (n + 3) + 2).toNat

end

end A002374.P97396529396668520

/-! ## A002374.P14078643772728041538

`A355250(2*(n+4))`
-/

namespace A002374.P14078643772728041538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355250 (2 * (n + 4))

end

end A002374.P14078643772728041538

/-! ## A002374.P5119750122252644222

`A020639(A102084(n+3))`
-/

namespace A002374.P5119750122252644222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A102084 (n + 3)).toNat

end

end A002374.P5119750122252644222

/-! ## A002374.P742723176900599025

`A020639(A099303(2*(n+3)))`
-/

namespace A002374.P742723176900599025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A099303 (2 * (n + 3))).toNat

end

end A002374.P742723176900599025

/-!
# A002375: From Goldbach conjecture: number of decompositions of 2n into an unordered sum of two odd primes.

The programs for A002375, there is no canonical definition to state claims against.
-/

/-! ## A002375.P12597412754433005688

`ceil(A002372(n+1)/2)`
-/

namespace A002375.P12597412754433005688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002372 (n + 1) : ℚ) / 2⌉

end

end A002375.P12597412754433005688

/-! ## A002375.P8553882528353394615

`A190353(2*(n+1))`
-/

namespace A002375.P8553882528353394615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190353 (2 * (n + 1))

end

end A002375.P8553882528353394615

/-! ## A002375.P11958456965278024771

`A045917(1-char[1]+n)`
-/

namespace A002375.P11958456965278024771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat

end

end A002375.P11958456965278024771

/-! ## A002375.P5853386926123154164

`xor(char[1], A045917(n+1))`
-/

namespace A002375.P5853386926123154164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A045917 (n + 1))

end

end A002375.P5853386926123154164

/-! ## A002375.P8527519245919586140

`(n+1)%A227065(n+1)`
-/

namespace A002375.P8527519245919586140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A227065 (n + 1))

end

end A002375.P8527519245919586140

/-! ## A002375.P4374879564652536909

`A280008(n)+a(n-1)` with `a(0)=0`
-/

namespace A002375.P4374879564652536909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A280008 n + a (n - 1)

end

end A002375.P4374879564652536909

/-! ## A002375.P17946361392784115730

`A110654(A002372(n+1))`
-/

namespace A002375.P17946361392784115730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A002372 (n + 1)).toNat

end

end A002375.P17946361392784115730

/-! ## A002375.P16868388598153973133

`A004526(A002372(n+1)+1)`
-/

namespace A002375.P16868388598153973133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A002372 (n + 1) + 1).toNat

end

end A002375.P16868388598153973133

/-! ## A002375.P14524348140338122972

`A159075(n)+A045917(n+1)`
-/

namespace A002375.P14524348140338122972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A045917 (n + 1)

end

end A002375.P14524348140338122972

/-! ## A002375.P13959794468435380526

`A001031(n+1)-A101808(n)`
-/

namespace A002375.P13959794468435380526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001031 (n + 1) - A101808 n

end

end A002375.P13959794468435380526

/-! ## A002375.P6336701742305682087

`A045917(n+1)-A063524(n)`
-/

namespace A002375.P6336701742305682087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (n + 1) - A063524 n

end

end A002375.P6336701742305682087

/-! ## A002375.P9958906010985169517

`A045917(n+1)*A060576(n)`
-/

namespace A002375.P9958906010985169517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (n + 1) * A060576 n

end

end A002375.P9958906010985169517

/-! ## A002375.P10311504710016565347

`A045917(n+1)*A157928(n)`
-/

namespace A002375.P10311504710016565347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (n + 1) * A157928 n

end

end A002375.P10311504710016565347

/-! ## A002375.P11409055334259187463

`A045917(n+1)%A000008(n)`
-/

namespace A002375.P11409055334259187463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045917 (n + 1)) (A000008 n)

end

end A002375.P11409055334259187463

/-! ## A002375.P14721781220563428189

`A226237(n+1)%A223134(n)`
-/

namespace A002375.P14721781220563428189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226237 (n + 1)) (A223134 n)

end

end A002375.P14721781220563428189

/-! ## A002375.P1975332962096115178

`lcm(A045917(n+1), A105812(n))`
-/

namespace A002375.P1975332962096115178
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A045917 (n + 1)) (A105812 n)

end

end A002375.P1975332962096115178

/-! ## A002375.P8371631191830564341

`A008619(A002372(n+1)+1)-1`
-/

namespace A002375.P8371631191830564341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A002372 (n + 1) + 1).toNat - 1

end

end A002375.P8371631191830564341

/-! ## A002375.P18347097864209329543

`A002372(n+1)-A061357(n+1)`
-/

namespace A002375.P18347097864209329543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002372 (n + 1) - A061357 (n + 1)

end

end A002375.P18347097864209329543

/-! ## A002375.P9158708053307339205

`A045917(n+1)-A257000(2*n)`
-/

namespace A002375.P9158708053307339205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (n + 1) - A257000 (2 * n)

end

end A002375.P9158708053307339205

/-!
# A002376: Least number of positive cubes needed to sum to n.

The programs for A002376, there is no canonical definition to state claims against.
-/

/-! ## A002376.P17047053049374567361

`A055401(or(n+1, A185255(n)))`
-/

namespace A002376.P17047053049374567361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055401 (Int.lor (n + 1 : ℤ) (A185255 n)).toNat

end

end A002376.P17047053049374567361

/-! ## A002376.P17416058426253059259

`A055401(∑[A034497(n+1)!])`
-/

namespace A002376.P17416058426253059259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A034497 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055401 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002376.P17416058426253059259

/-! ## A002376.P8611685880203553875

`A055401(∑[5^A034565(n+1)])`
-/

namespace A002376.P8611685880203553875
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A034565 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055401 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A002376.P8611685880203553875

/-! ## A002376.P5939174355771719332

`dr(A000433(∑[A034497(n+1)!]))`
-/

namespace A002376.P5939174355771719332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A034497 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000433 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A002376.P5939174355771719332

/-! ## A002376.P3470811842611161707

`A055401((n+1)^A034565(n+1)!)`
-/

namespace A002376.P3470811842611161707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055401 ((n + 1) ^ Nat.factorial (A034565 (n + 1)).toNat)

end

end A002376.P3470811842611161707

/-!
# A002377: Least number of 4th powers needed to represent n.

The programs for A002377, there is no canonical definition to state claims against.
-/

/-! ## A002377.P11794847924053851412

`∑[2-∏{e}[n+1, floor(#/4)+1]^(gcd(n, n%2)+1)²]`
-/

namespace A002377.P11794847924053851412
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (∏ p ∈ Nat.primeFactors (f2 n), (⌊(Nat.factorization (f2 n) p : ℚ) / 4⌋ + 1)) ^ (Nat.gcd n (n % 2) + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002377.P11794847924053851412

/-! ## A002377.P4382000559373124859

`∑[1-A347361(A300909(n+1))]`
-/

namespace A002377.P4382000559373124859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A347361 (A300909 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002377.P4382000559373124859

/-! ## A002377.P7404765447341828057

`∑[2-A116447(2*A008835(n+1))]`
-/

namespace A002377.P7404765447341828057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A116447 (2 * A008835 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002377.P7404765447341828057

/-! ## A002377.P17621815627155034850

`A053836(n+1)%A359948(2*(n+1))`
-/

namespace A002377.P17621815627155034850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053836 (n + 1)) (A359948 (2 * (n + 1)))

end

end A002377.P17621815627155034850

/-! ## A002377.P10484881554987592246

`A053836(n+1)%A141833(A317764(n+1))`
-/

namespace A002377.P10484881554987592246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053836 (n + 1)) (A141833 (A317764 (n + 1)).toNat)

end

end A002377.P10484881554987592246

/-! ## A002377.P7300799599770930713

`A001222(A075580(n))*A053836(n+1)`
-/

namespace A002377.P7300799599770930713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A075580 n).toNat * A053836 (n + 1)

end

end A002377.P7300799599770930713

/-! ## A002377.P18402381266270087467

`A053836(n+1)+A037213(A001196(n+1))`
-/

namespace A002377.P18402381266270087467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053836 (n + 1) + A037213 (A001196 (n + 1)).toNat

end

end A002377.P18402381266270087467

/-! ## A002377.P6817025481297764831

`lcm(A008683(A284003(n+1)), A053836(n+1))`
-/

namespace A002377.P6817025481297764831
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A284003 (n + 1)).toNat) (A053836 (n + 1))

end

end A002377.P6817025481297764831

/-! ## A002377.P947894573331585520

`A001222(A002496(n+2))*A053836(n+1)`
-/

namespace A002377.P947894573331585520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002496 (n + 2)).toNat * A053836 (n + 1)

end

end A002377.P947894573331585520

/-!
# A002378: Oblong (or promic, pronic, or heteromecic) numbers: a(n) = n*(n+1).

The programs for A002378, the canonical program `A002378.P13541573934119374444` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002378 has offset 0).

The definition of A002378 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002378.P13541573934119374444

`(n+1)*n`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002378

/-- `(n+1)*n` -/
def P13541573934119374444.Spec : Prop :=
  ∀ n, (P13541573934119374444.a n : ℤ) = A002378 n

theorem P13541573934119374444.correct : P13541573934119374444.Spec := by
  intro n
  simp only [A002378]

end A002378

/-!
# A002379: a(n) = floor(3^n / 2^n).

The programs for A002379, the canonical program `A002379.P9705169431772742673` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002379 has offset 0).

The definition of A002379 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(3^n/2^n)` (program `A002379.P9705169431772742673`, by `A002379.P9705169431772742673.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002379.P9705169431772742673

`floor(3^n/2^n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002379

/-- `floor(3^n/2^n)` -/
def P9705169431772742673.Spec : Prop :=
  ∀ n, P9705169431772742673.a n = A002379 n

theorem P9705169431772742673.correct : P9705169431772742673.Spec := by
  intro n
  simp only [A002379]

end A002379

/-! ## A002379.P14533998578933981350

`A014215(2*n)`
-/

namespace A002379.P14533998578933981350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014215 (2 * n)

end

end A002379.P14533998578933981350

namespace A002379

/-- `A014215(2*n)` -/
def P14533998578933981350.Spec : Prop :=
  ∀ n, P14533998578933981350.a n = A002379 n

end A002379

/-! ## A002379.P13688118851507066424

`A259796(floor(acot(n)+n))-2`
-/

namespace A002379.P13688118851507066424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259796 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat - 2

end

end A002379.P13688118851507066424

namespace A002379

/-- `A259796(floor(acot(n)+n))-2` -/
def P13688118851507066424.Spec : Prop :=
  ∀ n, P13688118851507066424.a n = A002379 n

end A002379

/-! ## A002379.P17636933294197978300

`round(A083313(n)/2^n)`
-/

namespace A002379.P17636933294197978300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A083313 n : ℚ) / (2 ^ n : ℚ))

end

end A002379.P17636933294197978300

namespace A002379

/-- `round(A083313(n)/2^n)` -/
def P17636933294197978300.Spec : Prop :=
  ∀ n, P17636933294197978300.a n = A002379 n

end A002379

/-! ## A002379.P16342418786123013685

`ceil(A083323(n)/A000079(n))`
-/

namespace A002379.P16342418786123013685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A083323 n : ℚ) / (A000079 n : ℚ)⌉

end

end A002379.P16342418786123013685

namespace A002379

/-- `ceil(A083323(n)/A000079(n))` -/
def P16342418786123013685.Spec : Prop :=
  ∀ n, P16342418786123013685.a n = A002379 n

end A002379

/-! ## A002379.P5629214655311101770

`floor(A001047(n)/A000079(n))+1`
-/

namespace A002379.P5629214655311101770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001047 n : ℚ) / (A000079 n : ℚ)⌋ + 1

end

end A002379.P5629214655311101770

namespace A002379

/-- `floor(A001047(n)/A000079(n))+1` -/
def P5629214655311101770.Spec : Prop :=
  ∀ n, P5629214655311101770.a n = A002379 n

end A002379

/-! ## A002379.P16526309305940830076

`(A000244(n)-A002380(n))/A000079(n)`
-/

namespace A002379.P16526309305940830076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n - A002380 n : ℚ) / (A000079 n : ℚ)

end

end A002379.P16526309305940830076

namespace A002379

/-- `(A000244(n)-A002380(n))/A000079(n)` -/
def P16526309305940830076.Spec : Prop :=
  ∀ n, P16526309305940830076.a n = (A002379 n : ℚ)

end A002379

/-! ## A002379.P12044641012727552757

`ceil(A002783(n)/A126646(n))`
-/

namespace A002379.P12044641012727552757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002783 n : ℚ) / (A126646 n : ℚ)⌉

end

end A002379.P12044641012727552757

namespace A002379

/-- `ceil(A002783(n)/A126646(n))` -/
def P12044641012727552757.Spec : Prop :=
  ∀ n, P12044641012727552757.a n = A002379 n

end A002379

/-! ## A002379.P13618470036242021530

`round(A027649(n)/A126646(n))`
-/

namespace A002379.P13618470036242021530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A027649 n : ℚ) / (A126646 n : ℚ))

end

end A002379.P13618470036242021530

namespace A002379

/-- `round(A027649(n)/A126646(n))` -/
def P13618470036242021530.Spec : Prop :=
  ∀ n, P13618470036242021530.a n = A002379 n

end A002379

/-! ## A002379.P8470951755648616482

`ceil(A002783(n)/∑[A000079(n)])`
-/

namespace A002379.P8470951755648616482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002783 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌉

end

end A002379.P8470951755648616482

namespace A002379

/-- `ceil(A002783(n)/∑[A000079(n)])` -/
def P8470951755648616482.Spec : Prop :=
  ∀ n, P8470951755648616482.a n = A002379 n

end A002379

/-! ## A002379.P14961912239024936522

`round(A027649(n)/∑[A000079(n)])`
-/

namespace A002379.P14961912239024936522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A027649 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ))

end

end A002379.P14961912239024936522

namespace A002379

/-- `round(A027649(n)/∑[A000079(n)])` -/
def P14961912239024936522.Spec : Prop :=
  ∀ n, P14961912239024936522.a n = A002379 n

end A002379

/-! ## A002379.P3400542847752800650

`ceil(A002783(n)/Δ[A048578(n)])`
-/

namespace A002379.P3400542847752800650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002783 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌉

end

end A002379.P3400542847752800650

namespace A002379

/-- `ceil(A002783(n)/Δ[A048578(n)])` -/
def P3400542847752800650.Spec : Prop :=
  ∀ n, P3400542847752800650.a n = A002379 n

end A002379

/-! ## A002379.P6673830637695103696

`ceil(A002783(n)/A000079(n+1))`
-/

namespace A002379.P6673830637695103696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002783 n : ℚ) / (A000079 (n + 1) : ℚ)⌉

end

end A002379.P6673830637695103696

namespace A002379

/-- `ceil(A002783(n)/A000079(n+1))` -/
def P6673830637695103696.Spec : Prop :=
  ∀ n, P6673830637695103696.a n = A002379 n

end A002379

/-! ## A002379.P14816205331417607443

`ceil(A169650(n+1)/A020737(n))`
-/

namespace A002379.P14816205331417607443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A169650 (n + 1) : ℚ) / (A020737 n : ℚ)⌉

end

end A002379.P14816205331417607443

namespace A002379

/-- `ceil(A169650(n+1)/A020737(n))` -/
def P14816205331417607443.Spec : Prop :=
  ∀ n, P14816205331417607443.a n = A002379 n

end A002379

/-! ## A002379.P12302518674329468331

`round(A027649(n)/A000079(n+1))`
-/

namespace A002379.P12302518674329468331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A027649 n : ℚ) / (A000079 (n + 1) : ℚ))

end

end A002379.P12302518674329468331

namespace A002379

/-- `round(A027649(n)/A000079(n+1))` -/
def P12302518674329468331.Spec : Prop :=
  ∀ n, P12302518674329468331.a n = A002379 n

end A002379

/-! ## A002379.P14061127510430858470

`round(A081626(n)/A171476(n))`
-/

namespace A002379.P14061127510430858470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A081626 n : ℚ) / (A171476 n : ℚ))

end

end A002379.P14061127510430858470

namespace A002379

/-- `round(A081626(n)/A171476(n))` -/
def P14061127510430858470.Spec : Prop :=
  ∀ n, P14061127510430858470.a n = A002379 n

end A002379

/-!
# A002380: a(n) = 3^n reduced modulo 2^n.

The programs for A002380, the canonical program `A002380.P14215614673449155160` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002380 has offset 0).

The definition of A002380 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002380.P14215614673449155160

`A056577(n)%(2^n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A002380

/-- `A056577(n)%(2^n)` -/
def P14215614673449155160.Spec : Prop :=
  ∀ n, P14215614673449155160.a n = A002380 n

theorem P14215614673449155160.correct : P14215614673449155160.Spec := by
  intro n
  simp only [A002380]

end A002380

/-! ## A002380.P16559619654456438418

`and(A000225(n), A056577(n))`
-/

namespace A002380.P16559619654456438418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A056577 n)

end

end A002380.P16559619654456438418

namespace A002380

/-- `and(A000225(n), A056577(n))` -/
def P16559619654456438418.Spec : Prop :=
  ∀ n, P16559619654456438418.a n = A002380 n

end A002380

/-! ## A002380.P6703425991400363258

`and(A056577(n), A168616(n))`
-/

namespace A002380.P6703425991400363258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056577 n) (A168616 n)

end

end A002380.P6703425991400363258

namespace A002380

/-- `and(A056577(n), A168616(n))` -/
def P6703425991400363258.Spec : Prop :=
  ∀ n, P6703425991400363258.a n = A002380 n

end A002380

/-! ## A002380.P15963216841429789815

`and(A056577(n), A255047(n))`
-/

namespace A002380.P15963216841429789815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056577 n) (A255047 n)

end

end A002380.P15963216841429789815

namespace A002380

/-- `and(A056577(n), A255047(n))` -/
def P15963216841429789815.Spec : Prop :=
  ∀ n, P15963216841429789815.a n = A002380 n

end A002380

/-! ## A002380.P3492188502225563564

`(3^n)%(2^n)`
-/

namespace A002380.P3492188502225563564
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n % 2 ^ n

end

end A002380.P3492188502225563564

namespace A002380

/-- `(3^n)%(2^n)` -/
def P3492188502225563564.Spec : Prop :=
  ∀ n, (P3492188502225563564.a n : ℤ) = A002380 n

end A002380

/-! ## A002380.P8182303950625370598

`and(3^n, Δ[A000295(n)])`
-/

namespace A002380.P8182303950625370598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 ^ n : ℤ) (f1 (n + 1) - f1 n)

end

end A002380.P8182303950625370598

namespace A002380

/-- `and(3^n, Δ[A000295(n)])` -/
def P8182303950625370598.Spec : Prop :=
  ∀ n, P8182303950625370598.a n = A002380 n

end A002380

/-! ## A002380.P2753743475831642239

`and(A052944(n)-n, 3^n)`
-/

namespace A002380.P2753743475831642239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052944 n - (n : ℤ)) (3 ^ n : ℤ)

end

end A002380.P2753743475831642239

namespace A002380

/-- `and(A052944(n)-n, 3^n)` -/
def P2753743475831642239.Spec : Prop :=
  ∀ n, P2753743475831642239.a n = A002380 n

end A002380

/-! ## A002380.P4119243759140828177

`and(A000225(n), A000244(n))`
-/

namespace A002380.P4119243759140828177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A000244 n)

end

end A002380.P4119243759140828177

namespace A002380

/-- `and(A000225(n), A000244(n))` -/
def P4119243759140828177.Spec : Prop :=
  ∀ n, P4119243759140828177.a n = A002380 n

end A002380

/-! ## A002380.P12186507084869898255

`and(A000225(n), A001047(n))`
-/

namespace A002380.P12186507084869898255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A001047 n)

end

end A002380.P12186507084869898255

namespace A002380

/-- `and(A000225(n), A001047(n))` -/
def P12186507084869898255.Spec : Prop :=
  ∀ n, P12186507084869898255.a n = A002380 n

end A002380

/-! ## A002380.P10233691732225877989

`and(A000225(n), A007689(n))`
-/

namespace A002380.P10233691732225877989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A007689 n)

end

end A002380.P10233691732225877989

namespace A002380

/-- `and(A000225(n), A007689(n))` -/
def P10233691732225877989.Spec : Prop :=
  ∀ n, P10233691732225877989.a n = A002380 n

end A002380

/-! ## A002380.P14469620210485903134

`and(A000225(n), A087451(n))`
-/

namespace A002380.P14469620210485903134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A087451 n)

end

end A002380.P14469620210485903134

namespace A002380

/-- `and(A000225(n), A087451(n))` -/
def P14469620210485903134.Spec : Prop :=
  ∀ n, P14469620210485903134.a n = A002380 n

end A002380

/-! ## A002380.P4659644370203945613

`and(A000225(n), A214091(n))`
-/

namespace A002380.P4659644370203945613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A214091 n)

end

end A002380.P4659644370203945613

namespace A002380

/-- `and(A000225(n), A214091(n))` -/
def P4659644370203945613.Spec : Prop :=
  ∀ n, P4659644370203945613.a n = A002380 n

end A002380

/-! ## A002380.P4020279330077213456

`and(A001047(n), A255047(n))`
-/

namespace A002380.P4020279330077213456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001047 n) (A255047 n)

end

end A002380.P4020279330077213456

namespace A002380

/-- `and(A001047(n), A255047(n))` -/
def P4020279330077213456.Spec : Prop :=
  ∀ n, P4020279330077213456.a n = A002380 n

end A002380

/-! ## A002380.P3517590910238060589

`and(A007689(n), A255047(n))`
-/

namespace A002380.P3517590910238060589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007689 n) (A255047 n)

end

end A002380.P3517590910238060589

namespace A002380

/-- `and(A007689(n), A255047(n))` -/
def P3517590910238060589.Spec : Prop :=
  ∀ n, P3517590910238060589.a n = A002380 n

end A002380

/-! ## A002380.P12214810652895230039

`and(A094729(n), A168616(n))`
-/

namespace A002380.P12214810652895230039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094729 n) (A168616 n)

end

end A002380.P12214810652895230039

namespace A002380

/-- `and(A094729(n), A168616(n))` -/
def P12214810652895230039.Spec : Prop :=
  ∀ n, P12214810652895230039.a n = A002380 n

end A002380

/-! ## A002380.P14348404701311280784

`and(A087451(n), A255047(n))`
-/

namespace A002380.P14348404701311280784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087451 n) (A255047 n)

end

end A002380.P14348404701311280784

namespace A002380

/-- `and(A087451(n), A255047(n))` -/
def P14348404701311280784.Spec : Prop :=
  ∀ n, P14348404701311280784.a n = A002380 n

end A002380

/-! ## A002380.P14465272936082321186

`and(Δ[A007051(n)], A000225(n))`
-/

namespace A002380.P14465272936082321186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A000225 n)

end

end A002380.P14465272936082321186

namespace A002380

/-- `and(Δ[A007051(n)], A000225(n))` -/
def P14465272936082321186.Spec : Prop :=
  ∀ n, P14465272936082321186.a n = A002380 n

end A002380

/-! ## A002380.P2840732654955339536

`and(A000225(n), A003063(n+1))`
-/

namespace A002380.P2840732654955339536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A003063 (n + 1))

end

end A002380.P2840732654955339536

namespace A002380

/-- `and(A000225(n), A003063(n+1))` -/
def P2840732654955339536.Spec : Prop :=
  ∀ n, P2840732654955339536.a n = A002380 n

end A002380

/-! ## A002380.P16619935012553077728

`and(A000225(n), A085279(n+1))`
-/

namespace A002380.P16619935012553077728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A085279 (n + 1))

end

end A002380.P16619935012553077728

namespace A002380

/-- `and(A000225(n), A085279(n+1))` -/
def P16619935012553077728.Spec : Prop :=
  ∀ n, P16619935012553077728.a n = A002380 n

end A002380

/-! ## A002380.P3828930233141602014

`and(A000079(n)-1, A000244(n))`
-/

namespace A002380.P3828930233141602014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000079 n - 1) (A000244 n)

end

end A002380.P3828930233141602014

namespace A002380

/-- `and(A000079(n)-1, A000244(n))` -/
def P3828930233141602014.Spec : Prop :=
  ∀ n, P3828930233141602014.a n = A002380 n

end A002380

/-!
# A002381: Numbers of the form (p^2 - 1)/120 where p is 1 or prime.

The programs for A002381, the canonical program `A002381.P9042523861047841473` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002381 has offset 1).

The definition of A002381 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002381.P9042523861047841473

`floor(ceil(A038872(n+1)²/20)/6)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A002381

/-- `floor(ceil(A038872(n+1)²/20)/6)` -/
def P9042523861047841473.Spec : Prop :=
  ∀ n, P9042523861047841473.a n = A002381 (n + 1)

theorem P9042523861047841473.correct : P9042523861047841473.Spec := by
  intro n
  simp only [A002381, Nat.add_sub_cancel]

end A002381

/-! ## A002381.P4120805276887505215

`record[A089034(n+4)%A024702(n+4)]`
-/

namespace A002381.P4120805276887505215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089034 (n + 4)) (A024702 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002381.P4120805276887505215

namespace A002381

/-- `record[A089034(n+4)%A024702(n+4)]` -/
def P4120805276887505215.Spec : Prop :=
  ∀ n, P4120805276887505215.a n = A002381 (n + 1)

end A002381

/-! ## A002381.P12611995595577199428

`A008724(A064739(n+1))/10`
-/

namespace A002381.P12611995595577199428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008724 (A064739 (n + 1)).toNat : ℚ) / 10

end

end A002381.P12611995595577199428

namespace A002381

/-- `A008724(A064739(n+1))/10` -/
def P12611995595577199428.Spec : Prop :=
  ∀ n, P12611995595577199428.a n = (A002381 (n + 1) : ℚ)

end A002381

/-! ## A002381.P7793916343698216052

`A011883(A110654(p?[a(n-2)+5]))` with `a(0)=2, a(1)=1, a(2)=4`
-/

namespace A002381.P7793916343698216052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 4] fun n f1 =>
  f1 (n - 2) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011883 (A110654 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A002381.P7793916343698216052

namespace A002381

/-- `A011883(A110654(p?[a(n-2)+5]))` -/
def P7793916343698216052.Spec : Prop :=
  ∀ n, P7793916343698216052.a n = A002381 (n + 1)

end A002381

/-! ## A002381.P4530162435064237606

`eq[A006530(A128470(4*n))², A128470(4*n)]`
-/

namespace A002381.P4530162435064237606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A128470 (4 * n)).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002381.P4530162435064237606

namespace A002381

/-- `eq[A006530(A128470(4*n))², A128470(4*n)]` -/
def P4530162435064237606.Spec : Prop :=
  ∀ n, (P4530162435064237606.a n : ℤ) = A002381 (n + 1)

end A002381

/-!
# A002382: Numbers of the form (p^2 - 49)/120 where p is prime.

The programs for A002382, there is no canonical definition to state claims against.
-/

/-! ## A002382.P1422729964018372282

`eq[3, A000005(A227863(2*(n+1)))]`
-/

namespace A002382.P1422729964018372282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A227863 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002382.P1422729964018372282

/-! ## A002382.P3526833278188969294

`eq[4, A071364(A227863(2*n+2))]`
-/

namespace A002382.P3526833278188969294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (A227863 (2 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002382.P3526833278188969294

/-! ## A002382.P572789173464754011

`eq[3, A000005(A156376(A016813(n)))]`
-/

namespace A002382.P572789173464754011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A156376 (A016813 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002382.P572789173464754011

/-! ## A002382.P17496927086817265652

`record[A002265(A078898(A066885(n+2)))]`
-/

namespace A002382.P17496927086817265652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A078898 (A066885 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002382.P17496927086817265652

/-! ## A002382.P14144242092978489772

`A214429(A108611(A315748(n)))`
-/

namespace A002382.P14144242092978489772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214429 (A108611 (A315748 n).toNat).toNat

end

end A002382.P14144242092978489772

/-!
# A002383: Primes of form k^2 + k + 1.

The programs for A002383, there is no canonical definition to state claims against.
-/

/-! ## A002383.P10095703579295438466

`(A110284(n+1)+3)/4`
-/

namespace A002383.P10095703579295438466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110284 (n + 1) + 3 : ℚ) / 4

end

end A002383.P10095703579295438466

/-! ## A002383.P2074432149558001820

`A002384(n+1)²+A002384(n+1)+1`
-/

namespace A002383.P2074432149558001820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1) ^ 2 + A002384 (n + 1) + 1

end

end A002383.P2074432149558001820

/-! ## A002383.P9980060934938034072

`A107317(n+1)/2`
-/

namespace A002383.P9980060934938034072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107317 (n + 1) : ℚ) / 2

end

end A002383.P9980060934938034072

/-! ## A002383.P1698847243837676337

`ceil(A110284(n+1)/4)`
-/

namespace A002383.P1698847243837676337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A110284 (n + 1) : ℚ) / 4⌉

end

end A002383.P1698847243837676337

/-! ## A002383.P17372262903000513356

`ceil((A088503(n+1)/2)²)`
-/

namespace A002383.P17372262903000513356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A088503 (n + 1) : ℚ) / 2) ^ 2⌉

end

end A002383.P17372262903000513356

/-! ## A002383.P5103210651738626809

`A055494(n+1)+A002384(n+1)²`
-/

namespace A002383.P5103210651738626809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (n + 1) + A002384 (n + 1) ^ 2

end

end A002383.P5103210651738626809

/-! ## A002383.P10644256999063304195

`∩[A059055(n+1), A172979(n+1)]`
-/

namespace A002383.P10644256999063304195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172979 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002383.P10644256999063304195

/-! ## A002383.P13940897279347431630

`∩[A172979(n+1), A173295(n+1)]`
-/

namespace A002383.P13940897279347431630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172979 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002383.P13940897279347431630

/-! ## A002383.P8202168446360814843

`∩[A172979(n+1), A206946(n+1)]`
-/

namespace A002383.P8202168446360814843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172979 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002383.P8202168446360814843

/-! ## A002383.P8550689282728894914

`∩[A172979(n+1), A346156(n+1)]`
-/

namespace A002383.P8550689282728894914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172979 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002383.P8550689282728894914

/-! ## A002383.P7893364081886885370

`∩[A059055(n+1), A262587(n+1)]`
-/

namespace A002383.P7893364081886885370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002383.P7893364081886885370

/-! ## A002383.P14895540893656240623

`∩[A173295(n+1), A262587(n+1)]`
-/

namespace A002383.P14895540893656240623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173295 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002383.P14895540893656240623

/-! ## A002383.P2947440807743232068

`∩[A206946(n+1), A262587(n+1)]`
-/

namespace A002383.P2947440807743232068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002383.P2947440807743232068

/-! ## A002383.P16538328395199151550

`∩[A262587(n+1), A346156(n+1)]`
-/

namespace A002383.P16538328395199151550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002383.P16538328395199151550

/-! ## A002383.P7103066417068397569

`∩[A059055(n+1), A353887(n+1)]`
-/

namespace A002383.P7103066417068397569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002383.P7103066417068397569

/-! ## A002383.P3948114978373639415

`∩[A172979(n+1), A353887(n+1)]`
-/

namespace A002383.P3948114978373639415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172979 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002383.P3948114978373639415

/-! ## A002383.P13325531389178225303

`∩[A206864(n+1), A353887(n+1)]`
-/

namespace A002383.P13325531389178225303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002383.P13325531389178225303

/-! ## A002383.P7104384198256099996

`∩[A206946(n+1), A353887(n+1)]`
-/

namespace A002383.P7104384198256099996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002383.P7104384198256099996

/-! ## A002383.P12128365782269006976

`∩[A262587(n+1), A353887(n+1)]`
-/

namespace A002383.P12128365782269006976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002383.P12128365782269006976

/-! ## A002383.P4976460652316829765

`∩[A346156(n+1), A353887(n+1)]`
-/

namespace A002383.P4976460652316829765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002383.P4976460652316829765

/-!
# A002384: Numbers m such that m^2 + m + 1 is prime.

The programs for A002384, there is no canonical definition to state claims against.
-/

/-! ## A002384.P10000193931255403695

`(A088503(n+1)-1)/2`
-/

namespace A002384.P10000193931255403695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088503 (n + 1) - 1 : ℚ) / 2

end

end A002384.P10000193931255403695

/-! ## A002384.P11735022867532441807

`A055494(n+1)-1`
-/

namespace A002384.P11735022867532441807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (n + 1) - 1

end

end A002384.P11735022867532441807

/-! ## A002384.P393735659930119384

`A089358(n+1)-2`
-/

namespace A002384.P393735659930119384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089358 (n + 1) - 2

end

end A002384.P393735659930119384

/-! ## A002384.P12511442885495126150

`floor(sqrt(A002383(n+1)))`
-/

namespace A002384.P12511442885495126150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A002383 (n + 1))

end

end A002384.P12511442885495126150

/-! ## A002384.P18322646489472877527

`floor(A088503(n+1)/2)`
-/

namespace A002384.P18322646489472877527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A088503 (n + 1) : ℚ) / 2⌋

end

end A002384.P18322646489472877527

/-! ## A002384.P15075585057248677628

`(sqrt(A110284(n+1))-1)/2`
-/

namespace A002384.P15075585057248677628
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A110284 (n + 1) : ℝ) - 1) / 2

end

end A002384.P15075585057248677628

/-! ## A002384.P9745437980760039588

`A088503(n+1)%A055494(n+1)`
-/

namespace A002384.P9745437980760039588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088503 (n + 1)) (A055494 (n + 1))

end

end A002384.P9745437980760039588

/-! ## A002384.P16435850277340143518

`eq[1, A289356(n)]`
-/

namespace A002384.P16435850277340143518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289356 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002384.P16435850277340143518

/-! ## A002384.P6011388595518502776

`record[A214059(n+1)]`
-/

namespace A002384.P6011388595518502776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002384.P6011388595518502776

/-! ## A002384.P14437329283987176724

`lt[0, A108154(n+1)]`
-/

namespace A002384.P14437329283987176724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108154 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A002384.P14437329283987176724

/-! ## A002384.P13794522640354955173

`eq[1, A182047(n)%(n+1)]+2-4/2`
-/

namespace A002384.P13794522640354955173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182047 n) (n + 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2 : ℚ) - (4 : ℚ) / 2

end

end A002384.P13794522640354955173

/-! ## A002384.P5524001598760415581

`eq[A002378(n), A066791(n)]`
-/

namespace A002384.P5524001598760415581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066791 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002384.P5524001598760415581

/-! ## A002384.P15308926884990844586

`eq[A108154(n+1), A182047(n)]`
-/

namespace A002384.P15308926884990844586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182047 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002384.P15308926884990844586

/-! ## A002384.P13538431164324480993

`eq[A081256(n+1), A108154(n+1)]`
-/

namespace A002384.P13538431164324480993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108154 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002384.P13538431164324480993

/-! ## A002384.P2910424482320525422

`eq[2, A278251(n+1)]`
-/

namespace A002384.P2910424482320525422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278251 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002384.P2910424482320525422

/-! ## A002384.P4013636103427033756

`eq[2, A278251(n)]-1`
-/

namespace A002384.P4013636103427033756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A002384.P4013636103427033756

/-! ## A002384.P13491611209584696283

`A023443(A055494(n+1))`
-/

namespace A002384.P13491611209584696283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A055494 (n + 1)).toNat

end

end A002384.P13491611209584696283

/-! ## A002384.P13627056031007653821

`A023444(A089358(n+1))`
-/

namespace A002384.P13627056031007653821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A089358 (n + 1)).toNat

end

end A002384.P13627056031007653821

/-! ## A002384.P7969659009207100637

`A023444(A055494(n+1)+1)`
-/

namespace A002384.P7969659009207100637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A055494 (n + 1) + 1).toNat

end

end A002384.P7969659009207100637

/-! ## A002384.P3135255562419024561

`A023445(A089358(n+1)+1)`
-/

namespace A002384.P3135255562419024561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A089358 (n + 1) + 1).toNat

end

end A002384.P3135255562419024561

/-!
# A002385: Palindromic primes: prime numbers whose decimal expansion is a palindrome.

The programs for A002385, there is no canonical definition to state claims against.
-/

/-! ## A002385.P9352239007020694172

`A037010(n)+a(n-1)` with `a(0)=2`
-/

namespace A002385.P9352239007020694172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A037010 n + a (n - 1)

end

end A002385.P9352239007020694172

/-! ## A002385.P14797811588087838649

`∪[A050786(n+1), A050784(n+1)]`
-/

namespace A002385.P14797811588087838649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A002385.P14797811588087838649

/-! ## A002385.P14625242109750535625

`∑[A037010(n+1)]+2-A037010(n+1)`
-/

namespace A002385.P14625242109750535625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A037010 (n + 1))

end

end A002385.P14625242109750535625

/-! ## A002385.P2323543451595623135

`∩[A062687(n+1), A072299(n+1)]`
-/

namespace A002385.P2323543451595623135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002385.P2323543451595623135

/-! ## A002385.P16774956321631265066

`∩[A072299(n+1), A083137(n+1)]`
-/

namespace A002385.P16774956321631265066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002385.P16774956321631265066

/-! ## A002385.P4500864821643065147

`∩[A265641(n+1), A072299(n+1)]`
-/

namespace A002385.P4500864821643065147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002385.P4500864821643065147

/-! ## A002385.P12109311970739786924

`∩[A072299(n+1), A169829(n+1)]`
-/

namespace A002385.P12109311970739786924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002385.P12109311970739786924

/-! ## A002385.P4016145623120637836

`∩[A350836(n+1), A169829(n+2)]`
-/

namespace A002385.P4016145623120637836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169829 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002385.P4016145623120637836

/-! ## A002385.P4015705236996425399

`∩[A075800(n+1), A083137(n+1)]`
-/

namespace A002385.P4015705236996425399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002385.P4015705236996425399

/-! ## A002385.P6221094257906206958

`∩[A075800(n+1), A265641(n+1)]`
-/

namespace A002385.P6221094257906206958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002385.P6221094257906206958

/-! ## A002385.P8478457181750124920

`∩[A072299(n+1), A075800(n+1)]`
-/

namespace A002385.P8478457181750124920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002385.P8478457181750124920

/-! ## A002385.P2542516544384244541

`∩[A072299(n+1), A083136(n+1)]`
-/

namespace A002385.P2542516544384244541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002385.P2542516544384244541

/-! ## A002385.P8739584593836864412

`∩[A232183(n+1), A062687(n+1)]`
-/

namespace A002385.P8739584593836864412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002385.P8739584593836864412

/-! ## A002385.P117037865041035358

`∩[A072299(n+1), A084092(n+1)]`
-/

namespace A002385.P117037865041035358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002385.P117037865041035358

/-! ## A002385.P16317382516182506896

`∩[A072299(n+1), A324988(n+1)]`
-/

namespace A002385.P16317382516182506896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002385.P16317382516182506896

/-! ## A002385.P15108324148162085226

`∩[A071251(n+1), A072299(n+1)]`
-/

namespace A002385.P15108324148162085226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002385.P15108324148162085226

/-! ## A002385.P13349380398524852071

`∩[A072299(n+1), A098897(n+1)]`
-/

namespace A002385.P13349380398524852071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002385.P13349380398524852071

/-! ## A002385.P2780048016239092632

`A002113(eq[A002113(n+1), A195294(n+1)]+1)`
-/

namespace A002385.P2780048016239092632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A002385.P2780048016239092632

/-!
# A002386: Primes (lower end) with record gaps to the next consecutive prime: primes p(k) where p(k+1) - p(k) exceeds p(j+1) - p(j) for all j < k.

The programs for A002386, there is no canonical definition to state claims against.
-/

/-! ## A002386.P12539363356623977256

`A000101(n+1)-A005250(n+1)`
-/

namespace A002386.P12539363356623977256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000101 (n + 1) - A005250 (n + 1)

end

end A002386.P12539363356623977256

/-! ## A002386.P6223318008479060554

`A000101(n+1)-record[A014320(n+1)]`
-/

namespace A002386.P6223318008479060554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000101 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002386.P6223318008479060554

/-! ## A002386.P16674657112532312298

`A114058(n+1)/2`
-/

namespace A002386.P16674657112532312298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114058 (n + 1) : ℚ) / 2

end

end A002386.P16674657112532312298

/-! ## A002386.P9961541647026377460

`A000101(n+1)+A246777(n+1)-A246789(n+1)`
-/

namespace A002386.P9961541647026377460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000101 (n + 1) + (A246777 (n + 1) - A246789 (n + 1))

end

end A002386.P9961541647026377460

/-! ## A002386.P8083089036091142579

`A000230(floor(A005250(n+1)/2))`
-/

namespace A002386.P8083089036091142579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 ⌊(A005250 (n + 1) : ℚ) / 2⌋.toNat

end

end A002386.P8083089036091142579

/-! ## A002386.P15993267699286616540

`record[A104138(A026741(n))]`
-/

namespace A002386.P15993267699286616540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104138 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002386.P15993267699286616540

/-! ## A002386.P10433922835091733076

`record[A104138(n-A008437(n))]`
-/

namespace A002386.P10433922835091733076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104138 ((n : ℤ) - A008437 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002386.P10433922835091733076

/-! ## A002386.P4588002840693779170

`record[A104138(n-A001222(n+1))]`
-/

namespace A002386.P4588002840693779170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104138 ((n : ℤ) - A001222 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002386.P4588002840693779170

/-! ## A002386.P4597238724911883533

`record[A104138(n*A104106(n+2))]`
-/

namespace A002386.P4597238724911883533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104138 ((n : ℤ) * A104106 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002386.P4597238724911883533

/-! ## A002386.P13492938773928078747

`A104138(A005250(n+1)-1)`
-/

namespace A002386.P13492938773928078747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104138 (A005250 (n + 1) - 1).toNat

end

end A002386.P13492938773928078747

/-!
# A002387: Least k such that H(k) > n, where H(k) is the harmonic number Sum_{i=1..k} 1/i.

The programs for A002387, the canonical program `A002387.P4168426540261931131` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002387 has offset 0).

The definition of A002387 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002387.P4168426540261931131

`round(exp(n-γ))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002387

/-- `round(exp(n-γ))` -/
def P4168426540261931131.Spec : Prop :=
  ∀ n, P4168426540261931131.a n = A002387 n

theorem P4168426540261931131.correct : P4168426540261931131.Spec := by
  intro n
  simp only [A002387]

end A002387

/-! ## A002387.P4827468488938511787

`A004080(n)+char[1-n²]`
-/

namespace A002387.P4827468488938511787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n ^ 2 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004080 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A002387.P4827468488938511787

namespace A002387

/-- `A004080(n)+char[1-n²]` -/
def P4827468488938511787.Spec : Prop :=
  ∀ n, P4827468488938511787.a n = A002387 n

end A002387

/-! ## A002387.P397072417608362416

`xor(A004080(n), A169585(n))`
-/

namespace A002387.P397072417608362416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004080 n) (A169585 n)

end

end A002387.P397072417608362416

namespace A002387

/-- `xor(A004080(n), A169585(n))` -/
def P397072417608362416.Spec : Prop :=
  ∀ n, P397072417608362416.a n = A002387 n

end A002387

/-! ## A002387.P16311384006567040801

`A019590(n+1)+A004080(n)`
-/

namespace A002387.P16311384006567040801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1) + A004080 n

end

end A002387.P16311384006567040801

namespace A002387

/-- `A019590(n+1)+A004080(n)` -/
def P16311384006567040801.Spec : Prop :=
  ∀ n, P16311384006567040801.a n = A002387 n

end A002387

/-! ## A002387.P15910260853037373574

`A010054(A008818(n))+A004080(n)`
-/

namespace A002387.P15910260853037373574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A008818 n).toNat + A004080 n

end

end A002387.P15910260853037373574

namespace A002387

/-- `A010054(A008818(n))+A004080(n)` -/
def P15910260853037373574.Spec : Prop :=
  ∀ n, P15910260853037373574.a n = A002387 n

end A002387

/-! ## A002387.P18427131787008214871

`A010054(∑[A039653(n)])+A004080(n)`
-/

namespace A002387.P18427131787008214871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A004080 n

end

end A002387.P18427131787008214871

namespace A002387

/-- `A010054(∑[A039653(n)])+A004080(n)` -/
def P18427131787008214871.Spec : Prop :=
  ∀ n, P18427131787008214871.a n = A002387 n

end A002387

/-!
# A002389: Decimal expansion of -log(gamma), where gamma is Euler's constant A001620.

The programs for A002389, there is no canonical definition to state claims against.
-/

/-! ## A002389.P9158606147480395939

`9-A213440(n)`
-/

namespace A002389.P9158606147480395939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A213440 n

end

end A002389.P9158606147480395939

/-!
# A002396: Inverse of reduced totient function.

The programs for A002396, there is no canonical definition to state claims against.
-/

/-! ## A002396.P6086764193963931896

`A141162(A002174(n+1))`
-/

namespace A002396.P6086764193963931896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141162 (A002174 (n + 1)).toNat

end

end A002396.P6086764193963931896

/-! ## A002396.P2271084960177356101

`filter[A141162(n+1), A097325(#)]`
-/

namespace A002396.P2271084960177356101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141162 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A002396.P2271084960177356101

/-! ## A002396.P10332755985870257139

`filter[A141162(n+1), A168184(#)]`
-/

namespace A002396.P10332755985870257139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141162 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A002396.P10332755985870257139

/-! ## A002396.P1537423423414070137

`filter[A141162(n+1), A168185(#)]`
-/

namespace A002396.P1537423423414070137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141162 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A002396.P1537423423414070137

/-! ## A002396.P4689355439822392963

`A141162(lt[0, A141162(n+1)]+1)`
-/

namespace A002396.P4689355439822392963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141162 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141162 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A002396.P4689355439822392963

/-!
# A002397: a(n) = n! * lcm({1, 2, ..., n+1}).

The programs for A002397, the canonical program `A002397.P1083806925330987603` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002397 has offset 0).

The definition of A002397 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002397.P1083806925330987603

`n!*A003418(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A002397

/-- `n!*A003418(n+1)` -/
def P1083806925330987603.Spec : Prop :=
  ∀ n, P1083806925330987603.a n = A002397 n

theorem P1083806925330987603.correct : P1083806925330987603.Spec := by
  intro n
  simp only [A002397]

end A002397

/-! ## A002397.P1651328671014038185

`n*lcm((n+1)!, a(n-1))` with `a(0)=1`
-/

namespace A002397.P1651328671014038185
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * Nat.lcm (Nat.factorial (n + 1)) (a (n - 1))

end

end A002397.P1651328671014038185

namespace A002397

/-- `n*lcm((n+1)!, a(n-1))` -/
def P1651328671014038185.Spec : Prop :=
  ∀ n, (P1651328671014038185.a n : ℤ) = A002397 n

end A002397

/-! ## A002397.P7433565861117374874

`lcm(n*a(n-1), ∏[n+1])` with `a(0)=1`
-/

namespace A002397.P7433565861117374874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (n * a (n - 1)) (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A002397.P7433565861117374874

namespace A002397

/-- `lcm(n*a(n-1), ∏[n+1])` -/
def P7433565861117374874.Spec : Prop :=
  ∀ n, (P7433565861117374874.a n : ℤ) = A002397 n

end A002397

/-! ## A002397.P3210809960590073085

`lcm(a(n-1)/n^(-1), ∏[a(n-1)+1])` with `a(0)=1`
-/

namespace A002397.P3210809960590073085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (n : ℚ) ^ (-1 : ℤ))) ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A002397.P3210809960590073085

namespace A002397

/-- `lcm(a(n-1)/n^(-1), ∏[a(n-1)+1])` -/
def P3210809960590073085.Spec : Prop :=
  ∀ n, (P3210809960590073085.a n : ℤ) = A002397 n

end A002397

/-! ## A002397.P408224688960233637

`n!*∏[ceil((n+1)/∏{p}[n+1, (n+1)/#])]`
-/

namespace A002397.P408224688960233637
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A002397.P408224688960233637

namespace A002397

/-- `n!*∏[ceil((n+1)/∏{p}[n+1, (n+1)/#])]` -/
def P408224688960233637.Spec : Prop :=
  ∀ n, P408224688960233637.a n = A002397 n

end A002397

/-! ## A002397.P10362181050304074016

`n!*Δ[A173185(n)]`
-/

namespace A002397.P10362181050304074016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A002397.P10362181050304074016

namespace A002397

/-- `n!*Δ[A173185(n)]` -/
def P10362181050304074016.Spec : Prop :=
  ∀ n, P10362181050304074016.a n = A002397 n

end A002397

/-! ## A002397.P2089864495740771982

`n!*∏[A014963(n+1)]`
-/

namespace A002397.P2089864495740771982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A002397.P2089864495740771982

namespace A002397

/-- `n!*∏[A014963(n+1)]` -/
def P2089864495740771982.Spec : Prop :=
  ∀ n, P2089864495740771982.a n = A002397 n

end A002397

/-! ## A002397.P3464418508862417907

`n*a(n-1)*A014963(C(n+1, n))` with `a(0)=1`
-/

namespace A002397.P3464418508862417907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) * A014963 (Nat.choose (n + 1) n)

end

end A002397.P3464418508862417907

namespace A002397

/-- `n*a(n-1)*A014963(C(n+1, n))` -/
def P3464418508862417907.Spec : Prop :=
  ∀ n, P3464418508862417907.a n = A002397 n

end A002397

/-! ## A002397.P9529960539078169788

`n*a(n-1)*A014963(Δ[n²]-n)` with `a(0)=1`
-/

namespace A002397.P9529960539078169788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) * A014963 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A002397.P9529960539078169788

namespace A002397

/-- `n*a(n-1)*A014963(Δ[n²]-n)` -/
def P9529960539078169788.Spec : Prop :=
  ∀ n, P9529960539078169788.a n = A002397 n

end A002397

/-! ## A002397.P1114154078660631727

`n*A014963(∑[2*n+1])*a(n-1)` with `a(0)=1`
-/

namespace A002397.P1114154078660631727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A014963 (∑ j ∈ Finset.range (n + 1), f1 j) * a (n - 1)

end

end A002397.P1114154078660631727

namespace A002397

/-- `n*A014963(∑[2*n+1])*a(n-1)` -/
def P1114154078660631727.Spec : Prop :=
  ∀ n, P1114154078660631727.a n = A002397 n

end A002397

/-!
# A002398: Coefficients for step-by-step integration.

The programs for A002398, there is no canonical definition to state claims against.
-/

/-! ## A002398.P16051129559384197613

`A002401(n)+n*ratio[A003418(n)]*a(n-1)` with `a(0)=1`
-/

namespace A002398.P16051129559384197613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A002401 n : ℚ) + (n : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ)) * a (n - 1)

end

end A002398.P16051129559384197613

/-! ## A002398.P1351175211495232110

`A002401(n)+n*A014963(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A002398.P1351175211495232110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002401 n + (n : ℤ) * A014963 (n + 1) * a (n - 1)

end

end A002398.P1351175211495232110

/-! ## A002398.P13790997153602021637

`A027486(n+1)/A025527(n+1)`
-/

namespace A002398.P13790997153602021637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027486 (n + 1) : ℚ) / (A025527 (n + 1) : ℚ)

end

end A002398.P13790997153602021637

/-! ## A002398.P15400503789985388578

`record[A027477(n+1)*A145677(n)]/A025527(n+1)`
-/

namespace A002398.P15400503789985388578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027477 (n + 1) * A145677 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A025527 (n + 1) : ℚ)

end

end A002398.P15400503789985388578

/-! ## A002398.P6751101997599723050

`record[A027477(n+1)/A007318(n)]/A025527(n+1)`
-/

namespace A002398.P6751101997599723050
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027477 (n + 1) : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) / (A025527 (n + 1) : ℚ)

end

end A002398.P6751101997599723050

/-!
# A002399: Coefficients for step-by-step integration.

The programs for A002399, there is no canonical definition to state claims against.
-/

/-! ## A002399.P14155139864259164755

`record[-A260780(A260720(n))]`
-/

namespace A002399.P14155139864259164755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A260780 (A260720 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002399.P14155139864259164755

