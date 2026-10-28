import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C002
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C001
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

/-!
# A399200: Numbers k such that (cos(k))^k sets a new record low.

The programs for A399200, there is no canonical definition to state claims against.
-/

/-! ## A399200.P198026094258644358

`A215775(A109787(n))`
-/

namespace A399200.P198026094258644358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215775 (A109787 n).toNat

end

end A399200.P198026094258644358

/-!
# A399201: Number of terms of A003714 that are less than n.

The programs for A399201, there is no canonical definition to state claims against.
-/

/-! ## A399201.P10133105910203288177

`∑[C(2, and(n-1, 2*(n-1))²)]`
-/

namespace A399201.P10133105910203288177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Int.land ((n : ℤ) - 1) (2 * ((n : ℤ) - 1)) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399201.P10133105910203288177

/-! ## A399201.P564252303866717262

`A324965(4*n)`
-/

namespace A399201.P564252303866717262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324965 (4 * n)

end

end A399201.P564252303866717262

/-!
# A399204: Number of permutations that give the minimum number of comparisons for sorting n elements by binary insertion.

The programs for A399204, the canonical program `A399204.P11534051387213006384` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399204 has offset 0).

The definition of A399204 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399204.P11534051387213006384

`a(n-1)*A080079(n)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A399204

/-- `a(n-1)*A080079(n)` -/
def P11534051387213006384.Spec : Prop :=
  ∀ n, P11534051387213006384.a n = A399204 n

theorem P11534051387213006384.correct : P11534051387213006384.Spec := by
  intro n
  simp only [A399204]

end A399204

/-! ## A399204.P8670845755062591146

`∏[A327489(∑[n+1])]`
-/

namespace A399204.P8670845755062591146
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327489 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A399204.P8670845755062591146

namespace A399204

/-- `∏[A327489(∑[n+1])]` -/
def P8670845755062591146.Spec : Prop :=
  ∀ n, P8670845755062591146.a n = A399204 n

end A399204

/-! ## A399204.P10981990481318524653

`∏[A327490(∑[n+1])]`
-/

namespace A399204.P10981990481318524653
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327490 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A399204.P10981990481318524653

namespace A399204

/-- `∏[A327490(∑[n+1])]` -/
def P10981990481318524653.Spec : Prop :=
  ∀ n, P10981990481318524653.a n = A399204 n

end A399204

/-!
# A399205: Number of Pillai primes (A063980) less than 2^n.

The programs for A399205, there is no canonical definition to state claims against.
-/

/-! ## A399205.P11890908912420624404

`A233918(A289600(n))`
-/

namespace A399205.P11890908912420624404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233918 (A289600 n).toNat

end

end A399205.P11890908912420624404

/-! ## A399205.P5191566693544508405

`A239497(A093115(n))`
-/

namespace A399205.P5191566693544508405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239497 (A093115 n).toNat

end

end A399205.P5191566693544508405

/-! ## A399205.P2290619148250743644

`A254688(A192680(n+1))`
-/

namespace A399205.P2290619148250743644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254688 (A192680 (n + 1)).toNat

end

end A399205.P2290619148250743644

/-! ## A399205.P15167626735479087178

`A362813(A344492(n+1))`
-/

namespace A399205.P15167626735479087178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362813 (A344492 (n + 1)).toNat

end

end A399205.P15167626735479087178

/-! ## A399205.P8130344655186766354

`A237050(A000127(n+2))`
-/

namespace A399205.P8130344655186766354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237050 (A000127 (n + 2)).toNat

end

end A399205.P8130344655186766354

/-!
# A399206: Number of permutations p of [n] such that the n-1 products p(i)*p(i+1) (i=1,2,...n-1) are all distinct.

The programs for A399206, there is no canonical definition to state claims against.
-/

/-! ## A399206.P4745091912856596795

`A138398(A080135(n))`
-/

namespace A399206.P4745091912856596795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138398 (A080135 n).toNat

end

end A399206.P4745091912856596795

/-! ## A399206.P3714757051565376374

`A138398(A108469(n))`
-/

namespace A399206.P3714757051565376374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138398 (A108469 n).toNat

end

end A399206.P3714757051565376374

/-! ## A399206.P627293140976019218

`A138398(A167750(n))`
-/

namespace A399206.P627293140976019218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138398 (A167750 n).toNat

end

end A399206.P627293140976019218

/-!
# A399211: Number of solutions to x^2 + 8*y^2 = n in positive integers x and y.

The programs for A399211, the canonical program `A399211.P11167665216086603082` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399211 has offset 0).

The definition of A399211 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399211.P11167665216086603082

`A002265(A226225(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A399211

/-- `A002265(A226225(n))` -/
def P11167665216086603082.Spec : Prop :=
  ∀ n, P11167665216086603082.a n = A399211 n

theorem P11167665216086603082.correct : P11167665216086603082.Spec := by
  intro n
  simp only [A399211]

end A399211

/-! ## A399211.P12458394315619108705

`A216278(n*A133872(n))`
-/

namespace A399211.P12458394315619108705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216278 ((n : ℤ) * A133872 n).toNat

end

end A399211.P12458394315619108705

namespace A399211

/-- `A216278(n*A133872(n))` -/
def P12458394315619108705.Spec : Prop :=
  ∀ n, P12458394315619108705.a n = A399211 n

end A399211

/-! ## A399211.P14719206686063517878

`A216278(lcm(n, A128130(n)))`
-/

namespace A399211.P14719206686063517878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216278 (Int.lcm (n : ℤ) (A128130 n))

end

end A399211.P14719206686063517878

namespace A399211

/-- `A216278(lcm(n, A128130(n)))` -/
def P14719206686063517878.Spec : Prop :=
  ∀ n, P14719206686063517878.a n = A399211 n

end A399211

/-! ## A399211.P8329572407451621440

`A216278(A047481(n+1))`
-/

namespace A399211.P8329572407451621440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216278 (A047481 (n + 1)).toNat

end

end A399211.P8329572407451621440

namespace A399211

/-- `A216278(A047481(n+1))` -/
def P8329572407451621440.Spec : Prop :=
  ∀ n, P8329572407451621440.a n = A399211 n

end A399211

/-! ## A399211.P9887920707116687057

`and(A216278(n), A279867(n+1))`
-/

namespace A399211.P9887920707116687057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A216278 n) (A279867 (n + 1))

end

end A399211.P9887920707116687057

namespace A399211

/-- `and(A216278(n), A279867(n+1))` -/
def P9887920707116687057.Spec : Prop :=
  ∀ n, P9887920707116687057.a n = A399211 n

end A399211

/-!
# A399212: Number of solutions to x^2 + 9*y^2 = n in positive integers x and y.

The programs for A399212, there is no canonical definition to state claims against.
-/

/-! ## A399212.P11694612048168726440

`and(A025426(n), A121367(n+1))`
-/

namespace A399212.P11694612048168726440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025426 n) (A121367 (n + 1))

end

end A399212.P11694612048168726440

/-! ## A399212.P17302748215847053469

`and(A025426(n), A231874(n+1))`
-/

namespace A399212.P17302748215847053469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025426 n) (A231874 (n + 1))

end

end A399212.P17302748215847053469

/-! ## A399212.P7840265969982821268

`and(A025426(n), A191792(n))`
-/

namespace A399212.P7840265969982821268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025426 n) (A191792 n)

end

end A399212.P7840265969982821268

/-! ## A399212.P3217021049817298290

`and(A279210(n), A335569(n))`
-/

namespace A399212.P3217021049817298290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A279210 n) (A335569 n)

end

end A399212.P3217021049817298290

/-! ## A399212.P15572676190737154402

`and(A025426(n), A091838(n+1))`
-/

namespace A399212.P15572676190737154402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025426 n) (A091838 (n + 1))

end

end A399212.P15572676190737154402

/-!
# A399213: a(n) is the smallest nonnegative integer k where exactly n pairs of positive integers (x, y) exist such that x^2 + 8*y^2 = k.

The programs for A399213, there is no canonical definition to state claims against.
-/

/-! ## A399213.P3611051450507342747

`A191356(A315354(n))`
-/

namespace A399213.P3611051450507342747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191356 (A315354 n).toNat

end

end A399213.P3611051450507342747

/-!
# A399227: a(n) = (2*n-1)*2^(w(2*n-1)-1) where w(m) = v_2(usigma(m)) = A007814(A034448(m)) for odd m.

The programs for A399227, the canonical program `A399227.P5856305221868028917` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399227 has offset 2).

The definition of A399227 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A399227.P5856305221868028917

`(2*(n+2)-1)*2^(val(A034448(2*(n+2)-1), 2)-1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A399227

/-- `(2*(n+2)-1)*2^(val(A034448(2*(n+2)-1), 2)-1)` -/
def P5856305221868028917.Spec : Prop :=
  ∀ n, P5856305221868028917.a n = (A399227 (n + 2) : ℚ)

end A399227

/-!
# A399228: a(n) = Sum_{k=0..n} (-1)^k*(n - k)!*(n + k)!.

The programs for A399228, the canonical program `A399228.P7510221602356486404` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399228 has offset 0).

The definition of A399228 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^#*(n-#)!*(n+#)!]` (program `A399228.P7510221602356486404`, by `A399228.P7510221602356486404.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A399228.P7510221602356486404

`∑{#}[n, (-1)^#*(n-#)!*(n+#)!]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A399228

/-- `∑{#}[n, (-1)^#*(n-#)!*(n+#)!]` -/
def P7510221602356486404.Spec : Prop :=
  ∀ n, P7510221602356486404.a n = A399228 n

theorem P7510221602356486404.correct : P7510221602356486404.Spec := by
  intro n
  simp only [A399228]

end A399228

/-! ## A399228.P10518270298455312962

`(n!²+(-1)^n*(2*n+1)!/(n+1))/2`
-/

namespace A399228.P10518270298455312962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n ^ 2 : ℚ) + ((-1) ^ n * (Nat.factorial (2 * n + 1) : ℤ) : ℚ) / (n + 1 : ℚ)) / 2

end

end A399228.P10518270298455312962

namespace A399228

/-- `(n!²+(-1)^n*(2*n+1)!/(n+1))/2` -/
def P10518270298455312962.Spec : Prop :=
  ∀ n, P10518270298455312962.a n = (A399228 n : ℚ)

end A399228

/-! ## A399228.P10516581918171885972

`(A001044(n)+(-1)^n*A110468(n))/2`
-/

namespace A399228.P10516581918171885972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001044 n + (-1) ^ n * A110468 n : ℚ) / 2

end

end A399228.P10516581918171885972

namespace A399228

/-- `(A001044(n)+(-1)^n*A110468(n))/2` -/
def P10516581918171885972.Spec : Prop :=
  ∀ n, P10516581918171885972.a n = (A399228 n : ℚ)

end A399228

/-!
# A399232: a(n) = Sum_{k=1..4*n+2} (k^(4*n+1) mod (2*n+1)).

The programs for A399232, the canonical program `A399232.P4777266106439279644` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399232 has offset 1).

The definition of A399232 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399232.P4777266106439279644

`2*A340806(2*n+3)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A399232

/-- `2*A340806(2*n+3)` -/
def P4777266106439279644.Spec : Prop :=
  ∀ n, P4777266106439279644.a n = A399232 (n + 1)

theorem P4777266106439279644.correct : P4777266106439279644.Spec := by
  intro n
  simp only [A399232, Nat.add_sub_cancel]

end A399232

/-! ## A399232.P7972265362123888357

`A010848((2*n+3)²)`
-/

namespace A399232.P7972265362123888357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010848 ((2 * n + 3) ^ 2)

end

end A399232.P7972265362123888357

namespace A399232

/-- `A010848((2*n+3)²)` -/
def P7972265362123888357.Spec : Prop :=
  ∀ n, P7972265362123888357.a n = A399232 (n + 1)

end A399232

/-!
# A399233: Number of minimal connected dominating sets in the n-antiprism graph.

The programs for A399233, the canonical program `A399233.P5330481548219971955` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399233 has offset 3).

The definition of A399233 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399233.P5330481548219971955

`ogf((12-24x+16x^2-4x^3+2x^4)/(1-4x+6x^2-6x^3+5x^4-2x^5+x^6))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A399233

/-- `ogf((12-24x+16x^2-4x^3+2x^4)/(1-4x+6x^2-6x^3+5x^4-2x^5+x^6))` -/
def P5330481548219971955.Spec : Prop :=
  ∀ n, P5330481548219971955.a n = A399233 (n + 3)

theorem P5330481548219971955.correct : P5330481548219971955.Spec := by
  intro n
  simp only [A399233, Nat.add_sub_cancel]

end A399233

/-! ## A399233.P15254959426045847455

`2*(n+3)*A137495(n)`
-/

namespace A399233.P15254959426045847455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 3) : ℤ) * A137495 n

end

end A399233.P15254959426045847455

namespace A399233

/-- `2*(n+3)*A137495(n)` -/
def P15254959426045847455.Spec : Prop :=
  ∀ n, P15254959426045847455.a n = A399233 (n + 3)

end A399233

/-!
# A399236: Squares visited by knight moves on a diagonally numbered Q1 board and always taking the available unvisited square with the shortest distance to the origin, while in the case of a tie the square with smaller row index is preferred. Starting square is labeled 1.

The programs for A399236, there is no canonical definition to state claims against.
-/

/-! ## A399236.P12959316950542378037

`A400771(A043318(n+1))`
-/

namespace A399236.P12959316950542378037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400771 (A043318 (n + 1)).toNat

end

end A399236.P12959316950542378037

/-! ## A399236.P7296004335515976816

`A400771(A044915(n+1))`
-/

namespace A399236.P7296004335515976816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400771 (A044915 (n + 1)).toNat

end

end A399236.P7296004335515976816

/-! ## A399236.P1572072973817813506

`A090106(A400771(n+1))`
-/

namespace A399236.P1572072973817813506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090106 (A400771 (n + 1)).toNat

end

end A399236.P1572072973817813506

/-! ## A399236.P4590770795510452803

`A400771(A161951(n+1))`
-/

namespace A399236.P4590770795510452803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400771 (A161951 (n + 1)).toNat

end

end A399236.P4590770795510452803

/-! ## A399236.P1227452090758009705

`A400771(A043317(n+1))`
-/

namespace A399236.P1227452090758009705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400771 (A043317 (n + 1)).toNat

end

end A399236.P1227452090758009705

/-!
# A399238: a(n) = Sum_{k=0..n} binomial(n, k) * T(k), where T(n) = A000081(n) for n >= 1, T(0) = 1.

The programs for A399238, there is no canonical definition to state claims against.
-/

/-! ## A399238.P15286727550268527994

`A399339(∑[n])`
-/

namespace A399238.P15286727550268527994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399339 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A399238.P15286727550268527994

/-! ## A399238.P7295410153069537173

`record[A399339(n)]`
-/

namespace A399238.P7295410153069537173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399339 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A399238.P7295410153069537173

/-! ## A399238.P13906986318087959361

`A108141(A292617(n))`
-/

namespace A399238.P13906986318087959361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108141 (A292617 n).toNat

end

end A399238.P13906986318087959361

/-!
# A399239: a(n) = Sum_{k=0..n} (-1)^(n-k) * binomial(n, k) * T(k), where T(n) = A000081(n) for n >= 1, T(0) = 1.

The programs for A399239, there is no canonical definition to state claims against.
-/

/-! ## A399239.P6873726475099429827

`A399339(∑[n]+n)`
-/

namespace A399239.P6873726475099429827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399339 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A399239.P6873726475099429827

/-!
# A399241: Number of isomorphism classes of asymmetric maximal intersecting families of subsets of an n-element set.

The programs for A399241, there is no canonical definition to state claims against.
-/

/-! ## A399241.P5653913951975560823

`A093949(A060930(n))`
-/

namespace A399241.P5653913951975560823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093949 (A060930 n).toNat

end

end A399241.P5653913951975560823

/-! ## A399241.P13029986961894464005

`A073253(A098590(n))`
-/

namespace A399241.P13029986961894464005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073253 (A098590 n).toNat

end

end A399241.P13029986961894464005

/-! ## A399241.P12338294766894425124

`A076948(A150643(n))`
-/

namespace A399241.P12338294766894425124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076948 (A150643 n).toNat

end

end A399241.P12338294766894425124

/-!
# A399245: Rectangular array read by descending antidiagonals: c(n, k) = 1 if floor(k*x^n) = floor(m*x) for some positive integer m, where x = (1 + sqrt(5))/2, and c(n, k) = 0 otherwise.

The programs for A399245, there is no canonical definition to state claims against.
-/

/-! ## A399245.P11692749135970159791

`A096270(A128440(n+1))`
-/

namespace A399245.P11692749135970159791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (A128440 (n + 1)).toNat

end

end A399245.P11692749135970159791

/-! ## A399245.P18044601520025837970

`A254651(A333509(n+1))`
-/

namespace A399245.P18044601520025837970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254651 (A333509 (n + 1)).toNat

end

end A399245.P18044601520025837970

/-! ## A399245.P13550221165177860916

`A036988(A213280(n+1))`
-/

namespace A399245.P13550221165177860916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036988 (A213280 (n + 1)).toNat

end

end A399245.P13550221165177860916

/-! ## A399245.P15711067457090939798

`A075802(A025617(n+1))`
-/

namespace A399245.P15711067457090939798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075802 (A025617 (n + 1)).toNat

end

end A399245.P15711067457090939798

/-! ## A399245.P14049331492614346379

`A100810(A210561(n+1))`
-/

namespace A399245.P14049331492614346379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100810 (A210561 (n + 1)).toNat

end

end A399245.P14049331492614346379

/-!
# A399247: Rectangular array read by descending antidiagonals: c(n, k) = 1 if floor(k*x^n) = floor(m*x) for some positive integer m, where x = 1+sqrt(2), and c(n, k) = 0 otherwise.

The programs for A399247, there is no canonical definition to state claims against.
-/

/-! ## A399247.P4555408858481842525

`A157423(A193630(n))`
-/

namespace A399247.P4555408858481842525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157423 (A193630 n).toNat

end

end A399247.P4555408858481842525

/-! ## A399247.P6546381041964451475

`A155029(A334165(n))`
-/

namespace A399247.P6546381041964451475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155029 (A334165 n).toNat

end

end A399247.P6546381041964451475

/-! ## A399247.P813780934117519540

`A288855(A361839(n))`
-/

namespace A399247.P813780934117519540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288855 (A361839 n).toNat

end

end A399247.P813780934117519540

/-! ## A399247.P15855617724492839513

`A143222(A094250(n))`
-/

namespace A399247.P15855617724492839513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143222 (A094250 n).toNat

end

end A399247.P15855617724492839513

/-! ## A399247.P607293466823018231

`A153638(A261763(n))`
-/

namespace A399247.P607293466823018231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153638 (A261763 n).toNat

end

end A399247.P607293466823018231

/-!
# A399248: Rectangular array read by descending antidiagonals: r(n, k) = floor(k*x^n), where x = 1+sqrt(3).

The programs for A399248, there is no canonical definition to state claims against.
-/

/-! ## A399248.P5141322106562045808

`A399256(A032555(n+1))`
-/

namespace A399248.P5141322106562045808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399256 (A032555 (n + 1)).toNat

end

end A399248.P5141322106562045808

/-! ## A399248.P5858644949852003051

`A399256(A032559(n+1))`
-/

namespace A399248.P5858644949852003051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399256 (A032559 (n + 1)).toNat

end

end A399248.P5858644949852003051

/-! ## A399248.P2321981334886146374

`A399256(A077739(n+1))`
-/

namespace A399248.P2321981334886146374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399256 (A077739 (n + 1)).toNat

end

end A399248.P2321981334886146374

/-! ## A399248.P1358578337340248760

`A399256(A078213(n+1))`
-/

namespace A399248.P1358578337340248760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399256 (A078213 (n + 1)).toNat

end

end A399248.P1358578337340248760

/-! ## A399248.P9648649343604676239

`A399256(A082217(n+1))`
-/

namespace A399248.P9648649343604676239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399256 (A082217 (n + 1)).toNat

end

end A399248.P9648649343604676239

/-!
# A399249: Rectangular array read by descending antidiagonals: c(n, k) = 1 if floor(k*x^n) = floor(m*x) for some positive integer m, where x = 1+sqrt(3), and c(n, k) = 0 otherwise.

The programs for A399249, there is no canonical definition to state claims against.
-/

/-! ## A399249.P1393863141653909752

`A359349(A176253(n+1))`
-/

namespace A399249.P1393863141653909752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359349 (A176253 (n + 1)).toNat

end

end A399249.P1393863141653909752

/-! ## A399249.P11270847500574031810

`A065828(A089337(n+2))`
-/

namespace A399249.P11270847500574031810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065828 (A089337 (n + 2)).toNat

end

end A399249.P11270847500574031810

/-! ## A399249.P7133682573896502548

`A285414(A355793(n))`
-/

namespace A399249.P7133682573896502548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285414 (A355793 n).toNat

end

end A399249.P7133682573896502548

/-! ## A399249.P9430212665601776554

`A321081(A355721(n))`
-/

namespace A399249.P9430212665601776554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321081 (A355721 n).toNat

end

end A399249.P9430212665601776554

/-! ## A399249.P12023509491662612497

`A100672(A020473(n+1))`
-/

namespace A399249.P12023509491662612497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100672 (A020473 (n + 1)).toNat

end

end A399249.P12023509491662612497

/-!
# A399250: Product of the x- and y-coordinates of a point moving in a square spiral.

The programs for A399250, the canonical program `A399250.P11468596376330613414` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399250 has offset 1).

The definition of A399250 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399250.P11468596376330613414

`A174344(n+1)*A274923(n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A399250

/-- `A174344(n+1)*A274923(n+1)` -/
def P11468596376330613414.Spec : Prop :=
  ∀ n, P11468596376330613414.a n = A399250 (n + 1)

theorem P11468596376330613414.correct : P11468596376330613414.Spec := by
  intro n
  simp only [A399250, Nat.add_sub_cancel]

end A399250

/-! ## A399250.P13696398866295850475

`A174344(n+1)*A296030(2*(n+1))`
-/

namespace A399250.P13696398866295850475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (n + 1) * A296030 (2 * (n + 1))

end

end A399250.P13696398866295850475

namespace A399250

/-- `A174344(n+1)*A296030(2*(n+1))` -/
def P13696398866295850475.Spec : Prop :=
  ∀ n, P13696398866295850475.a n = A399250 (n + 1)

end A399250

/-! ## A399250.P6319431511854335486

`A274923(n+1)*A296030(2*n+1)`
-/

namespace A399250.P6319431511854335486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (n + 1) * A296030 (2 * n + 1)

end

end A399250.P6319431511854335486

namespace A399250

/-- `A274923(n+1)*A296030(2*n+1)` -/
def P6319431511854335486.Spec : Prop :=
  ∀ n, P6319431511854335486.a n = A399250 (n + 1)

end A399250

/-! ## A399250.P645566277129605941

`A296030(2*n+1)*A296030(2*(n+1))`
-/

namespace A399250.P645566277129605941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296030 (2 * n + 1) * A296030 (2 * (n + 1))

end

end A399250.P645566277129605941

namespace A399250

/-- `A296030(2*n+1)*A296030(2*(n+1))` -/
def P645566277129605941.Spec : Prop :=
  ∀ n, P645566277129605941.a n = A399250 (n + 1)

end A399250

/-! ## A399250.P16968490134180700272

`A174344(n+1)*A305576(A308081(n+1))`
-/

namespace A399250.P16968490134180700272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (n + 1) * A305576 (A308081 (n + 1)).toNat

end

end A399250.P16968490134180700272

namespace A399250

/-- `A174344(n+1)*A305576(A308081(n+1))` -/
def P16968490134180700272.Spec : Prop :=
  ∀ n, P16968490134180700272.a n = A399250 (n + 1)

end A399250

/-! ## A399250.P8561645797130124691

`A274923(n+1)*A305575(A308081(n+1))`
-/

namespace A399250.P8561645797130124691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (n + 1) * A305575 (A308081 (n + 1)).toNat

end

end A399250.P8561645797130124691

namespace A399250

/-- `A274923(n+1)*A305575(A308081(n+1))` -/
def P8561645797130124691.Spec : Prop :=
  ∀ n, P8561645797130124691.a n = A399250 (n + 1)

end A399250

/-! ## A399250.P3230105241063783988

`(A329116(n)+A274923(n+1))*A274923(n+1)`
-/

namespace A399250.P3230105241063783988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A329116 n + A274923 (n + 1)) * A274923 (n + 1)

end

end A399250.P3230105241063783988

namespace A399250

/-- `(A329116(n)+A274923(n+1))*A274923(n+1)` -/
def P3230105241063783988.Spec : Prop :=
  ∀ n, P3230105241063783988.a n = A399250 (n + 1)

end A399250

/-! ## A399250.P11543505748195631224

`(A180714(n)-A174344(n+1))*A174344(n+1)`
-/

namespace A399250.P11543505748195631224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A180714 n - A174344 (n + 1)) * A174344 (n + 1)

end

end A399250.P11543505748195631224

namespace A399250

/-- `(A180714(n)-A174344(n+1))*A174344(n+1)` -/
def P11543505748195631224.Spec : Prop :=
  ∀ n, P11543505748195631224.a n = A399250 (n + 1)

end A399250

/-! ## A399250.P1615815399029631088

`(A180714(n)-A274923(n+1))*A274923(n+1)`
-/

namespace A399250.P1615815399029631088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A180714 n - A274923 (n + 1)) * A274923 (n + 1)

end

end A399250.P1615815399029631088

namespace A399250

/-- `(A180714(n)-A274923(n+1))*A274923(n+1)` -/
def P1615815399029631088.Spec : Prop :=
  ∀ n, P1615815399029631088.a n = A399250 (n + 1)

end A399250

/-! ## A399250.P17820113621225853488

`(A268038(n+1)-A329116(n))*A268038(n+1)`
-/

namespace A399250.P17820113621225853488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A268038 (n + 1) - A329116 n) * A268038 (n + 1)

end

end A399250.P17820113621225853488

namespace A399250

/-- `(A268038(n+1)-A329116(n))*A268038(n+1)` -/
def P17820113621225853488.Spec : Prop :=
  ∀ n, P17820113621225853488.a n = A399250 (n + 1)

end A399250

/-!
# A399251: a(n) = x^2 - y^2, where (x, y) are the coordinates of the n-th point of the square counterclockwise spiral with n=1 at the origin.

The programs for A399251, the canonical program `A399251.P6576249541322394034` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399251 has offset 1).

The definition of A399251 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399251.P6576249541322394034

`A174344(n+1)²-A274923(n+1)²`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A399251

/-- `A174344(n+1)²-A274923(n+1)²` -/
def P6576249541322394034.Spec : Prop :=
  ∀ n, P6576249541322394034.a n = A399251 (n + 1)

theorem P6576249541322394034.correct : P6576249541322394034.Spec := by
  intro n
  simp only [A399251, Nat.add_sub_cancel]

end A399251

/-! ## A399251.P9612601722916312767

`A180714(n)*A329116(n)`
-/

namespace A399251.P9612601722916312767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180714 n * A329116 n

end

end A399251.P9612601722916312767

namespace A399251

/-- `A180714(n)*A329116(n)` -/
def P9612601722916312767.Spec : Prop :=
  ∀ n, P9612601722916312767.a n = A399251 (n + 1)

end A399251

/-! ## A399251.P1238455504370327501

`(A174344(n+1)-A274923(n+1))*A180714(n)`
-/

namespace A399251.P1238455504370327501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A174344 (n + 1) - A274923 (n + 1)) * A180714 n

end

end A399251.P1238455504370327501

namespace A399251

/-- `(A174344(n+1)-A274923(n+1))*A180714(n)` -/
def P1238455504370327501.Spec : Prop :=
  ∀ n, P1238455504370327501.a n = A399251 (n + 1)

end A399251

/-! ## A399251.P14067474894166629336

`A180714(n)*A359216(2*n)`
-/

namespace A399251.P14067474894166629336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180714 n * A359216 (2 * n)

end

end A399251.P14067474894166629336

namespace A399251

/-- `A180714(n)*A359216(2*n)` -/
def P14067474894166629336.Spec : Prop :=
  ∀ n, P14067474894166629336.a n = A399251 (n + 1)

end A399251

/-! ## A399251.P17061015604208767484

`A329116(n)*A359217(2*n)`
-/

namespace A399251.P17061015604208767484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329116 n * A359217 (2 * n)

end

end A399251.P17061015604208767484

namespace A399251

/-- `A329116(n)*A359217(2*n)` -/
def P17061015604208767484.Spec : Prop :=
  ∀ n, P17061015604208767484.a n = A399251 (n + 1)

end A399251

/-! ## A399251.P8188264648803484245

`A359216(2*n)*A359217(2*n)`
-/

namespace A399251.P8188264648803484245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359216 (2 * n) * A359217 (2 * n)

end

end A399251.P8188264648803484245

namespace A399251

/-- `A359216(2*n)*A359217(2*n)` -/
def P8188264648803484245.Spec : Prop :=
  ∀ n, P8188264648803484245.a n = A399251 (n + 1)

end A399251

/-! ## A399251.P17851918653204567373

`A399250(A316884(n+1))`
-/

namespace A399251.P17851918653204567373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399250 (A316884 (n + 1)).toNat

end

end A399251.P17851918653204567373

namespace A399251

/-- `A399250(A316884(n+1))` -/
def P17851918653204567373.Spec : Prop :=
  ∀ n, P17851918653204567373.a n = A399251 (n + 1)

end A399251

/-!
# A399252: Rectangular array read by descending antidiagonals: r(n, k) = floor(k*x^n), where x = -1+sqrt(5).

The programs for A399252, there is no canonical definition to state claims against.
-/

/-! ## A399252.P14341731254726720185

`A110592(A038280(n))`
-/

namespace A399252.P14341731254726720185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 (A038280 n).toNat

end

end A399252.P14341731254726720185

/-! ## A399252.P18138199492946111711

`A390764(A038304(n))`
-/

namespace A399252.P18138199492946111711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390764 (A038304 n).toNat

end

end A399252.P18138199492946111711

/-!
# A399253: Rectangular array read by descending antidiagonals: c(n, k) = 1 if floor(k*x^n) = floor(m*x) for some positive integer m, where x = -1+sqrt(5), and c(n, k) = 0 otherwise.

The programs for A399253, there is no canonical definition to state claims against.
-/

/-! ## A399253.P15669102603518415532

`A243566(A228939(n+2))`
-/

namespace A399253.P15669102603518415532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243566 (A228939 (n + 2)).toNat

end

end A399253.P15669102603518415532

/-! ## A399253.P6667670720020817243

`A319102(A117433(n))`
-/

namespace A399253.P6667670720020817243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319102 (A117433 n).toNat

end

end A399253.P6667670720020817243

/-! ## A399253.P15329438706442697331

`A071026(A039848(n+1))`
-/

namespace A399253.P15329438706442697331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071026 (A039848 (n + 1)).toNat

end

end A399253.P15329438706442697331

/-! ## A399253.P14048255310768200697

`A123927(A370380(n+1))`
-/

namespace A399253.P14048255310768200697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123927 (A370380 (n + 1)).toNat

end

end A399253.P14048255310768200697

/-! ## A399253.P8787299873294613182

`A095792(A324901(A261076(n+2)²))`
-/

namespace A399253.P8787299873294613182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095792 (A324901 (A261076 (n + 2) ^ 2).toNat).toNat

end

end A399253.P8787299873294613182

/-!
# A399255: Rectangular array read by descending antidiagonals: c(n, k) = 1 if floor(k*x^n) = floor(m*x) for some positive integer m, where x = 2+sqrt(2), and c(n, k) = 0 otherwise.

The programs for A399255, there is no canonical definition to state claims against.
-/

/-! ## A399255.P17888403885778773110

`A171588(A399254(n+1))`
-/

namespace A399255.P17888403885778773110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171588 (A399254 (n + 1)).toNat

end

end A399255.P17888403885778773110

/-! ## A399255.P1661863540276274252

`A165191(A144299(n))`
-/

namespace A399255.P1661863540276274252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165191 (A144299 n).toNat

end

end A399255.P1661863540276274252

/-! ## A399255.P14196651038268742470

`A341591(A055236(n))`
-/

namespace A399255.P14196651038268742470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341591 (A055236 n).toNat

end

end A399255.P14196651038268742470

/-! ## A399255.P1305855552284180770

`A080545(A394080(n))`
-/

namespace A399255.P1305855552284180770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080545 (A394080 n).toNat

end

end A399255.P1305855552284180770

/-! ## A399255.P11054600249399752994

`A192082(A384742(n))`
-/

namespace A399255.P11054600249399752994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192082 (A384742 n).toNat

end

end A399255.P11054600249399752994

/-!
# A399257: Rectangular array read by descending antidiagonals: c(n, k) = 1 if floor(k*x^n) = floor(m*x) for some positive integer m, where x = e (the Euler constant), and c(n, k) = 0 otherwise.

The programs for A399257, there is no canonical definition to state claims against.
-/

/-! ## A399257.P13451272896625346949

`A286487(A348561(n+2))`
-/

namespace A399257.P13451272896625346949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286487 (A348561 (n + 2)).toNat

end

end A399257.P13451272896625346949

/-! ## A399257.P9765677852780734775

`A176405(A161380(n))`
-/

namespace A399257.P9765677852780734775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176405 (A161380 n).toNat

end

end A399257.P9765677852780734775

/-! ## A399257.P16205512267379674393

`A371689(A395428(n+1))`
-/

namespace A399257.P16205512267379674393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371689 (A395428 (n + 1)).toNat

end

end A399257.P16205512267379674393

/-! ## A399257.P11268325952318225653

`A030190(A118248(A118248(A190784(A118248(n+1)))))`
-/

namespace A399257.P11268325952318225653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (A118248 (A118248 (A190784 (A118248 (n + 1)).toNat).toNat).toNat).toNat

end

end A399257.P11268325952318225653

/-! ## A399257.P14548714710705433169

`A140074(A090556(n+1))`
-/

namespace A399257.P14548714710705433169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140074 (A090556 (n + 1)).toNat

end

end A399257.P14548714710705433169

/-!
# A399258: Rectangular array (r(n, k)), read by descending antidiagonals: r(n, k) = floor(k*Pi^n).

The programs for A399258, the canonical program `A399258.P9139943054962240312` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399258 has offset 1).

The definition of A399258 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((row(n)-col(n)+1)*π^(col(n)+1))` (program `A399258.P9139943054962240312`, by `A399258.P9139943054962240312.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A399258.P9139943054962240312

`floor((row(n)-col(n)+1)*π^(col(n)+1))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A399258

/-- `floor((row(n)-col(n)+1)*π^(col(n)+1))` -/
def P9139943054962240312.Spec : Prop :=
  ∀ n, P9139943054962240312.a n = A399258 (n + 1)

theorem P9139943054962240312.correct : P9139943054962240312.Spec := by
  intro n
  simp only [A399258, Nat.add_sub_cancel]

end A399258

/-!
# A399259: Rectangular array (c(n, k)), read by descending antidiagonals: c(n, k) = 1 if floor(k*Pi^n) = floor(m*Pi) for some positive integer m, and c(n, k) = 0 otherwise.

The programs for A399259, there is no canonical definition to state claims against.
-/

/-! ## A399259.P15544576398097009600

`A065828(A363419(n))`
-/

namespace A399259.P15544576398097009600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065828 (A363419 n).toNat

end

end A399259.P15544576398097009600

/-! ## A399259.P15112543073270153326

`A266892(A092369(n))`
-/

namespace A399259.P15112543073270153326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266892 (A092369 n).toNat

end

end A399259.P15112543073270153326

/-! ## A399259.P15793701769458084097

`A128174(A128177(A004736(A002623(A276609(n+1)))))`
-/

namespace A399259.P15793701769458084097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (A128177 (A004736 (A002623 (A276609 (n + 1)).toNat).toNat).toNat).toNat

end

end A399259.P15793701769458084097

/-! ## A399259.P2008504182474872718

`A104107(A313510(n))`
-/

namespace A399259.P2008504182474872718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104107 (A313510 n).toNat

end

end A399259.P2008504182474872718

/-! ## A399259.P9222065507104554294

`A104107(A314841(n))`
-/

namespace A399259.P9222065507104554294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104107 (A314841 n).toNat

end

end A399259.P9222065507104554294

/-!
# A399260: Order of the general semilinear group GammaL_2(K), where K is the finite field with q = A246655(n) elements.

The programs for A399260, there is no canonical definition to state claims against.
-/

/-! ## A399260.P13815765318959402185

`A246655(n+1)*A352807(n+1)-A352807(n+1)`
-/

namespace A399260.P13815765318959402185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1) * A352807 (n + 1) - A352807 (n + 1)

end

end A399260.P13815765318959402185

/-! ## A399260.P367810554081687119

`A000961(n+2)*A352807(n+1)-A352807(n+1)`
-/

namespace A399260.P367810554081687119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 2) * A352807 (n + 1) - A352807 (n + 1)

end

end A399260.P367810554081687119

/-! ## A399260.P10895886556389973377

`A059238(n+1)*A352807(n+1)/A329119(n+1)`
-/

namespace A399260.P10895886556389973377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059238 (n + 1) * A352807 (n + 1) : ℚ) / (A329119 (n + 1) : ℚ)

end

end A399260.P10895886556389973377

/-! ## A399260.P12287678458074907631

`A059238(n+1)*A399261(n+1)/A352806(n+1)`
-/

namespace A399260.P12287678458074907631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059238 (n + 1) * A399261 (n + 1) : ℚ) / (A352806 (n + 1) : ℚ)

end

end A399260.P12287678458074907631

/-!
# A399261: Order of the projective special semilinear group PSigmaL_2(K), where K is the finite field with q = A246655(n) elements.

The programs for A399261, there is no canonical definition to state claims against.
-/

/-! ## A399261.P2515843321662470675

`A352806(n+1)*A352807(n+1)/A329119(n+1)`
-/

namespace A399261.P2515843321662470675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352806 (n + 1) * A352807 (n + 1) : ℚ) / (A329119 (n + 1) : ℚ)

end

end A399261.P2515843321662470675

/-!
# A399262: Triangle read by rows: row n gives the n consecutive integers centered at n^2, excluding n^2 if n is even.

The programs for A399262, the canonical program `A399262.P9814319546926637261` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399262 has offset 1).

The definition of A399262 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399262.P9814319546926637261

`A183301(n+1)+A057944(n)`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A399262

/-- `A183301(n+1)+A057944(n)` -/
def P9814319546926637261.Spec : Prop :=
  ∀ n, P9814319546926637261.a n = A399262 (n + 1)

theorem P9814319546926637261.correct : P9814319546926637261.Spec := by
  intro n
  simp only [A399262, Nat.add_sub_cancel]

end A399262

/-! ## A399262.P3018505155224712097

`A339183(n)+A004201(n+1)`
-/

namespace A399262.P3018505155224712097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339183 n + A004201 (n + 1)

end

end A399262.P3018505155224712097

namespace A399262

/-- `A339183(n)+A004201(n+1)` -/
def P3018505155224712097.Spec : Prop :=
  ∀ n, P3018505155224712097.a n = A399262 (n + 1)

end A399262

/-!
# A399265: Numbers having two factor pairs whose absolute pairwise differences form the legs of a primitive Pythagorean triple.

The programs for A399265, there is no canonical definition to state claims against.
-/

/-! ## A399265.P984261827933386177

`A319078(A234134(n+1))`
-/

namespace A399265.P984261827933386177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319078 (A234134 (n + 1)).toNat

end

end A399265.P984261827933386177

/-!
# A399266: Number of nonnegative integer solutions to the equation x^2 + 8*y^2 = n.

The programs for A399266, there is no canonical definition to state claims against.
-/

/-! ## A399266.P14439041621273339190

`A147645(A022397(n+1))`
-/

namespace A399266.P14439041621273339190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147645 (A022397 (n + 1)).toNat

end

end A399266.P14439041621273339190

/-! ## A399266.P11608970703128500472

`A082115(A212765(n+1))`
-/

namespace A399266.P11608970703128500472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082115 (A212765 (n + 1)).toNat

end

end A399266.P11608970703128500472

/-! ## A399266.P3621113174651556883

`A292374(A257055(n+1))`
-/

namespace A399266.P3621113174651556883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292374 (A257055 (n + 1)).toNat

end

end A399266.P3621113174651556883

/-! ## A399266.P8051787255340003966

`A067109(A121709(n+2))`
-/

namespace A399266.P8051787255340003966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067109 (A121709 (n + 2)).toNat

end

end A399266.P8051787255340003966

/-! ## A399266.P7249289297623018306

`A035186(A297439(n+2))`
-/

namespace A399266.P7249289297623018306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035186 (A297439 (n + 2)).toNat

end

end A399266.P7249289297623018306

/-!
# A399268: Number of equivalence classes under rotations and reflections of n-step self-avoiding walks on the 6-dimensional hypercubic lattice that use all six coordinate axes and have no pair of nonconsecutive vertices that are adjacent in the lattice.

The programs for A399268, there is no canonical definition to state claims against.
-/

/-! ## A399268.P3858764746284874870

`A379303(A392405(n))`
-/

namespace A399268.P3858764746284874870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379303 (A392405 n).toNat

end

end A399268.P3858764746284874870

/-!
# A399270: Number of nonnegative integer solutions to the equation x^2 + 9*y^2 = n.

The programs for A399270, there is no canonical definition to state claims against.
-/

/-! ## A399270.P110972827194890645

`A010872(A045852(n))`
-/

namespace A399270.P110972827194890645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A045852 n).toNat

end

end A399270.P110972827194890645

/-! ## A399270.P13538192360765882936

`A086071(A227970(n))`
-/

namespace A399270.P13538192360765882936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086071 (A227970 n).toNat

end

end A399270.P13538192360765882936

/-!
# A399276: Number of ways writing the n-th semiprime as a sum of two primes.

The programs for A399276, the canonical program `A399276.P15390692254121348607` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399276 has offset 1).

The definition of A399276 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A399276.P15390692254121348607

`A061358(A001358(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A399276

/-- `A061358(A001358(n+1))` -/
def P15390692254121348607.Spec : Prop :=
  ∀ n, P15390692254121348607.a n = A399276 (n + 1)

theorem P15390692254121348607.correct : P15390692254121348607.Spec := by
  intro n
  simp only [A399276, Nat.add_sub_cancel]

end A399276

/-! ## A399276.P16085238771468287058

`A061358(A176540(n+2))`
-/

namespace A399276.P16085238771468287058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (A176540 (n + 2)).toNat

end

end A399276.P16085238771468287058

namespace A399276

/-- `A061358(A176540(n+2))` -/
def P16085238771468287058.Spec : Prop :=
  ∀ n, P16085238771468287058.a n = A399276 (n + 1)

end A399276

/-! ## A399276.P4814899057961765266

`A087942(A115024(n+2))`
-/

namespace A399276.P4814899057961765266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087942 (A115024 (n + 2)).toNat

end

end A399276.P4814899057961765266

namespace A399276

/-- `A087942(A115024(n+2))` -/
def P4814899057961765266.Spec : Prop :=
  ∀ n, P4814899057961765266.a n = A399276 (n + 1)

end A399276

/-! ## A399276.P16622372440985118932

`A087942(A129336(n+1))`
-/

namespace A399276.P16622372440985118932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087942 (A129336 (n + 1)).toNat

end

end A399276.P16622372440985118932

namespace A399276

/-- `A087942(A129336(n+1))` -/
def P16622372440985118932.Spec : Prop :=
  ∀ n, P16622372440985118932.a n = A399276 (n + 1)

end A399276

/-!
# A399287: Primes p such that if p < q < r are consecutive primes, p + 2*q*r, q + 2*p*r, and r + 2*p*q are all primes.

The programs for A399287, there is no canonical definition to state claims against.
-/

/-! ## A399287.P13119838938734575626

`A123988(A183156(n))`
-/

namespace A399287.P13119838938734575626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123988 (A183156 n).toNat

end

end A399287.P13119838938734575626

/-!
# A399288: a(n) = tau_{n}(n!) = number of ordered n-factorizations of n!.

The programs for A399288, there is no canonical definition to state claims against.
-/

/-! ## A399288.P10852204939813137580

`∏{e}[(n+1)!, C(#+n, n)]`
-/

namespace A399288.P10852204939813137580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (Nat.factorization (f1 n) p + n) n

end

end A399288.P10852204939813137580

/-!
# A399291: Number T(n,k) of n X n upper triangular binary matrices with row sums and column sums in {0, 2} and exactly k zero rows; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A399291, there is no canonical definition to state claims against.
-/

/-! ## A399291.P128052447525651831

`A353846(A355257(n+1))`
-/

namespace A399291.P128052447525651831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353846 (A355257 (n + 1)).toNat

end

end A399291.P128052447525651831

/-! ## A399291.P9323889663041010209

`A387880(A003114(A052337(n))+n+1)`
-/

namespace A399291.P9323889663041010209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387880 (A003114 (A052337 n).toNat + (n + 1 : ℤ)).toNat

end

end A399291.P9323889663041010209

/-!
# A399299: Numbers that cannot be obtained by removing the first and last digits of a square.

The programs for A399299, there is no canonical definition to state claims against.
-/

/-! ## A399299.P4541048760763251796

`comp[A398629(n+1)]`
-/

namespace A399299.P4541048760763251796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A399299.P4541048760763251796

